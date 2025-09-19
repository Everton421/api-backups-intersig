import { execFile , spawn} from 'child_process';
 
import { fileURLToPath } from 'url'; // Importe para usar o import.meta.url
import path, { dirname } from 'path'

/**
 * 
 * @param zipName nome do arquivo compactado
 * @param sourceDir diretorio a ser salvo
 * @returns 
 */
export function zipBackup(zipName:string,  sourceDir:string )    {

const __filename = fileURLToPath("file:///C:/Users/usuario/Desktop/apps/api-backup/src/services/zip.ts");
const __dirname = path.dirname(__filename);
  const zipPath = path.resolve(__dirname,'../../backups')

  return new Promise((resolve, reject) => {
    // Comando para adicionar todos os arquivos do diretório DESTINO_BACKUP ao arquivo zip
    execFile(
      zipPath,
      ['a', '-tzip', zipName, path.join(sourceDir, '*')], // Adiciona todos os arquivos do diretório
      (error, stdout, stderr) => {
        if (error) {
          console.error('Erro ao compactar o backup:', error);
          console.error('Stderr:', stderr);
          return reject({erro:true, msg: 'Erro ao compactar o backup:', error });
        }
        console.log('Backup compactado com sucesso.');
        resolve( { erro:false, msg:'Backup compactado com sucesso.'});
      }
    );
  });
}
