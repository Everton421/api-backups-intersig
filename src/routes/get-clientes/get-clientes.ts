import { type FastifyPluginAsyncZod } from "fastify-type-provider-zod";
import { db } from "../../database/client.ts";
import { clientes } from "../../database/schema.ts";
import { and, asc, eq, ilike, like, or, SQL, sql } from "drizzle-orm";
import z from "zod";

export const getClientes : FastifyPluginAsyncZod= async (server)=>{
    server.get('/clientes', {
        schema:{ 
            tags:['clientes'],
            summary:'listar clientes',
            querystring: z.object({
              search: z.string().optional(),
              orderBy: z.enum(['codigo', 'nomeFantasia','razaoSocial']).optional().default('codigo'),
              groupBy: z.enum(['codigo', 'ip', 'host']).default('codigo'),
              page: z.coerce.number().optional().default(1),
              host: z.string().optional(),
            }),
            /*
            response:{
            200: z.object({
                clients: z.array(
                    z.object({
                        codigo: z.number(),
                         codMatriz:  z.number(),
                         atendente: z.string(),
                         contrato: z.string().nullable(),
                         acesso: z.string(),
                         dataLiberacao: z.string(),
                         diasUso:  z.number(),
                         dataAcesso: z.string(),
                         razaoSocial: z.string(),
                         nomeFantasia: z.string(),
                         nomeReduz: z.string(),
                         ip: z.string(),
                         cnpj: z.string(),
                         inscricao: z.string(),
                         cep: z.string(),
                         endereco: z.string(),
                         numero: z.string(),
                         complemento: z.string(),
                         bairro: z.string(),
                         cidade: z.string(),
                         estado: z.string(),
                         email: z.string(),
                         telefone: z.string(),
                         fax: z.string(),
                         sistema: z.string(),
                         empresa: z.string(),
                         qtdeFiliais:  z.number(),
                         qtdeTerminais:  z.number(),
                         host: z.string(),
                         portaTs:z.number(),
                         usuarioTs: z.string(),
                         senhaTs: z.string(),
                         senhaRootTs: z.string(),
                         portaSsh: z.number(),
                         usuarioSsh: z.string(),
                         senhaSsh: z.string(),
                         senhaRootSsh: z.string(),
                         portaVnc:  z.number(),
                         senhaVnc: z.string(),
                         portaMysql:  z.number(),
                         usuarioMysql:  z.string(),
                         senhaMysql: z.string(),
                         senhaRootMysql: z.string(),
                         idTeamviewer:  z.number(),
                         senhaTeamviewer: z.string(),
                         emailCont: z.string(),
                         versaoFinanceiro:  z.number(),
                         versaoVendas:  z.number(),
                         versaoContabil:  z.number(),
                         versaoPcp:  z.number(),
                         versaoShopping:  z.number(),
                         versaoTelevendas: z.number(),
                         dataCadastro: z.string(),
                         contato: z.boolean().nullable(),
                         nomeRadmin: z.string().nullable(),
                         senhaRadmin: z.string().nullable(),
                         nomeBanco: z.string().nullable(),
                         ativo: z.string(),
                         caminhoBkp: z.string().nullable(),
                         observacao:z.string().nullable(),
                         dataModificacao:z.string().nullable(),
                         arquivoMaisRecente: z.string().nullable(),
                         nomeCertificado: z.string().nullable(),
                         senhaCertificado: z.string().nullable(),
                         dataAtualizacao: z.string(),
                         latitude: z.string().nullable(),
                         longitude: z.string().nullable(),
                         tipoVersao:z.string().nullable(),
                         atualizar: z.string(),
                    })
                )
            }) 
            }
            */

        }

    }, async ( request, reply)=>{
       
        const { orderBy, page, search, groupBy, host } = request.query
        
        const conditions:SQL[] =[] 


        if( search && !host ){
              conditions.push( like(clientes.nomeFantasia,`%${search}%` ))
               conditions.push(like(clientes.razaoSocial, `%${search}%`))
              conditions.push(like(clientes.cnpj, `%${search}%`))
              conditions.push(like(clientes.ip,`%${search}%` ) )
              conditions.push(like(clientes.host,`%${search}%` ) )
                     
        }

         if( host && !search){
             conditions.push(eq(clientes.host,`${host}` ) )        
          }
            if( host && search  ){
             conditions.push(eq(clientes.host,`${host}`  )   )        
            }
      

            //conditions.push( eq(clientes.ativo, 'S'))

      const clients:any = await 
        db.select()
        .from(clientes)
         .where( or(...conditions) )
        .groupBy( clientes[groupBy] )
        .orderBy( asc( clientes[orderBy]))


        if( clients.length > 0 ){
           return reply.send( clients );
        }
    })
}