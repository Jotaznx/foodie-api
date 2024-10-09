import { execute } from '../database/sqlite.js';

async function Listar() {
    const sql = `select p.*, e.NOME, e.ICONE from pedido p
    left join empresa e on (e.ID_EMPRESA = p.ID_EMPRESA)
    order by id_pedido desc`;
    
    const pedidos = await execute(sql, []);

    return pedidos;
}

async function ListarId(id_pedido) {

    const sql = `select p.*, e.NOME, e.ICONE from pedido p
    left join empresa e on (e.ID_EMPRESA = p.ID_EMPRESA)
    where p.ID_PEDIDO = ?
    order by id_pedido desc`;

    const sqlitens = `select i.*, p.nome, p.descricao, p.ICONE from pedido_item i
    join produto p on (p.ID_PRODUTO = i.ID_PRODUTO)
    where i.ID_PEDIDO = ?
    order by i.ID_ITEM`;
    
    const pedido = await execute(sql, [id_pedido]);
    const itens = await execute(sqlitens, [id_pedido]);

    pedido[0].itens = itens;
    return pedido[0];
}

export default {Listar, ListarId};