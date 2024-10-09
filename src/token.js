import jwt, { decode } from "jsonwebtoken";

const secretToken = "MYSECRET@123"

function CreateJWT(id_usuario){
    const token = jwt.sign({id_usuario}, secretToken, {expiresIn: 99999});

    return token;
}

function ValidateJWT(req, res, next){
    const authToken = req.headers.authorization;

    if (!authToken){
        return res.status(401).send({error: "Token não fornecido"});
    }

    const [aux, token] = authToken.split(" ");

    jwt.verify(token, secretToken, (err, decode) => {
        if (err)
            return res.status(401).send({error: "Token inválido"});
    })

    req.id_usuario = decode.id_usuario;

    next();
}


export default {CreateJWT, ValidateJWT}