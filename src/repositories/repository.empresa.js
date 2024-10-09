import { execute } from '../database/sqlite.js';

async function Destaques() {
    const sql = `select e.*, 'N' as favorito from destaque d
    left join empresa e on (d.ID_EMPRESA = e.ID_EMPRESA)
    order by d.ordem`;
    
    const empresas = await execute(sql, []);

    return empresas;
}

export default {Destaques};