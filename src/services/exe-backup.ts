import fs from 'fs'
import { execFile , spawn} from 'child_process';
import path, { dirname } from 'path'
import { fileURLToPath } from 'url'; // Importe para usar o import.meta.url
import { dumpDatabase } from './dump-database';
import { zipBackup } from './zip';
import { limparArquivosSql } from './delete-arquivos';
import { dateHook } from '../hooks/data-hook';


    type mysqlConfig = {
        host:string,
        porta:string,
        usuario:string,
        senha:string
    }


   const conf:mysqlConfig = {
    host:'192.168.100.106',
    porta:'3306',
    senha:'Nileduz',
    usuario:"intersig"
 } 

async function  execBackup (config:mysqlConfig, databases:string[] ){

        const dateService = dateHook();
        const {  data, hora} = dateService.getDataHora()

 const __filename = fileURLToPath("file:///C:/Users/usuario/Desktop/apps/api-backup/src/services/exec-backup.ts");
 const __dirname = path.dirname(__filename);
 
  const zipPath = path.resolve(__dirname,'../../backups', `Bkp_${data}_${hora}.zip`)

    try{
         if( databases.length > 0 ){
             for( const  database  of databases ){
            await dumpDatabase(config, database ).then(result => {
                         console.log(result);
                     }).catch(err => {
                         console.error(err);
                 });
             }
         }else{
             console.log('nenhum banco de dados disponivel para backup!')
         }

       zipBackup(zipPath)
    .then(() => console.log('Backup realizado com sucesso!'))
    .catch(err => console.error('Falha ao realizar o backup:', err));

        limparArquivosSql()

    }catch(e){
        console.log("erro ao tentar executar o backup")
    }



}

  execBackup (conf, [ 'hipertruck_teste_publico', 'hipertruck_teste_estoque'])