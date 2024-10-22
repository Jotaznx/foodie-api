import repositoryUsuario from "../repositories/repository.usuario.js";
import bcrypt from "bcrypt";
import jwt from "../token.js"

async function Favoritos(id_usuario) {

    const favoritos = await repositoryUsuario.Favoritos(id_usuario);

    return favoritos;
}

async function Inserir(nome, email, senha, endereco, complemento, bairro, cidade, uf, cep) {

    const hashSenha = await bcrypt.hash(senha, 10);

    const usuario = await repositoryUsuario.Inserir(nome, email, hashSenha, endereco, complemento, bairro, cidade, uf, cep);

    usuario.token = jwt.CreateJWT(usuario.id_usuario);

    return usuario;
}

async function Login(email, senha) {

    const usuario = await repositoryUsuario.ListarByEmail(email);
    // console.log(usuario);

    if (usuario.length == 0) {
        return [];
    }
    else {
        if (await bcrypt.compare(senha, usuario.senha)) {      

            delete usuario.senha;    
            
            usuario.token = jwt.CreateJWT(usuario.id_usuario);
            
            return usuario;
        }
        else
            return [];
    }
}

async function Perfil(id_usuario) {
    const favoritos = await repositoryUsuario.ListarById(id_usuario);
    return favoritos;
}


export default { Favoritos, Inserir, Login, Perfil };