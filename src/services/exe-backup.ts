import fs from 'fs'
import { execFile , spawn} from 'child_process';
import path, { dirname } from 'path'
import { fileURLToPath } from 'url'; // Importe para usar o import.meta.url
import { dumpDatabase } from './dump-database';


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

async function  execBackup (config:mysqlConfig, databases:string[]){


 


 const __filename = fileURLToPath("file:///C:/Users/usuario/Desktop/apps/api-backup/src/services/exec-backup.ts");
 const __dirname = path.dirname(__filename);
 

    const pathTemp = path.resolve(__dirname,'../../temp/ajuste.sql')  
    try{
        if( databases.length > 0 ){
            dumpDatabase(config,'hipertruck_teste_publico').then(result => {
                        console.log(result);
                    }).catch(err => {
                        console.error(err);
            });
        }else{
            console.log('nenhum banco de dados disponivel para backup!')
        }
      
    }catch(e){
        console.log("erro ao tentar executar o backup")
    }



}

  execBackup (conf, [ 'hipertruck_teste_publico'])