
import fs from 'fs'
import { execFile , spawn} from 'child_process';
import path, { dirname } from 'path'
import { fileURLToPath } from 'url'; // Importe para usar o import.meta.url

type resultDeleteFiles = {
    erro : boolean,
    msg:string
}

export function limparArquivosSql() : resultDeleteFiles | void {
    
    const __filename = fileURLToPath("file:///C:/Users/usuario/Desktop/apps/api-backup/src/services/delete-arquivos.ts");
    const __dirname = path.dirname(__filename);
    const tempPath  = path.resolve(__dirname,'../../temp')
    
  fs.readdir(tempPath, (err, files) => {
    if (err) {
      console.error('Erro ao ler o diretório temp:', err);

      return { erro: true, msg: 'Erro ao ler o diretório temp:', err}

    }

    files.forEach(file => {
      if (path.extname(file) === '.sql') {
        const filePath = path.join(tempPath, file);
        fs.unlink(filePath, (unlinkErr) => {
          if (unlinkErr) {
            console.error(`Erro ao excluir o arquivo ${file}:`, unlinkErr);
            return { erro: true, msg: `Erro ao excluir o arquivo ${file}:`, unlinkErr}
          } else {
            console.log(`Arquivo ${file} excluído com sucesso.`);
            return  { erro:false, msg: `Arquivo ${file} excluído com sucesso.`}
          }
        });
      }
    });
  });
}