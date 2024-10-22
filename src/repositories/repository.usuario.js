import { execute } from '../database/sqlite.js';

async function Favoritos(id_usuario) {
    const sql = `select f.*, e.NOME, e.ICONE, e.ENDERECO, e.COMPLEMENTO, e.BAIRRO, e.CIDADE, e.UF from USUARIO_FAVORITO f
    join empresa e on (e.ID_EMPRESA = f.ID_EMPRESA)
    where f.ID_USUARIO = ?`;
    
    const favoritos = await execute(sql, [id_usuario]);

    return favoritos;
}

async function Inserir(nome, email, senha, endereco, complemento, bairro, cidade, uf, cep) {
    const sql = `insert into usuario(nome, email, senha, endereco, complemento, bairro, cidade, uf, cep, dt_cadastro)
    values(?, ?, ?, ?, ?, ?, ?, ?, ?, CURRENT_TIMESTAMP)
    returning id_usuario`;
    
    const usuario = await execute(sql, [nome, email, senha, endereco, complemento, bairro, cidade, uf, cep]);

    return usuario[0];
}

async function ListarByEmail(email) {
    const sql = `select id_usuario, senha, nome, email, endereco, complemento, bairro, cidade, uf, cep, dt_cadastro from usuario
    where email = ?`;
    
    const usuario = await execute(sql, [email]);

    if (usuario.length == 0)
        return [];
    else
        return usuario[0];
}

export default {Favoritos, Inserir, ListarByEmail};