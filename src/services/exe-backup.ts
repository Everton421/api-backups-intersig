import fs from 'fs'
import { execFile , spawn} from 'child_process';
import path, { dirname } from 'path'
import { fileURLToPath } from 'url'; // Importe para usar o import.meta.url
import { dumpDatabase } from './dump-database.ts';
import { zipBackup } from './zip.ts';
import { limparArquivosSql } from './delete-arquivos.ts';
import { dateHook } from '../hooks/data-hook.ts';


    export type mysqlConfig = {
        host:string,
        porta:string,
        usuario:string,
        senha:string
    }


 

export async function  execBackup (config:mysqlConfig, databases:string[] ){

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
                 return { erro:true, msg: `erro ao tentar  executar o dump ${err}`  }

                    });
                }
                
         }else{
                 return { erro:true, msg:'nenhum banco de dados disponivel para backup!'    }
 
         }

       zipBackup(zipPath)
    .then(() =>  {    return { erro:false, msg: `Backup realizado com sucesso!` }})
    .catch(err => {    return { erro:true, msg:`erro ao tentar  executar o zip dos arquivos ${err}`   }} );

        limparArquivosSql()

    }catch(e){
        return { erro:true, msg: ` erro ao tentar executar o backup ${e} `  }
    }



}

   