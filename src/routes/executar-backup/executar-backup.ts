import { type FastifyPluginAsyncZod } from "fastify-type-provider-zod";
import z from "zod";
import { db } from "../../database/client.ts";
import { clientes } from "../../database/schema.ts";
import { eq } from "drizzle-orm";


export const executarBackup: FastifyPluginAsyncZod = async ( server ) =>{
    server.post('/executar-backup/:codigo', {
        schema:{
            tags: ["executar-backup"],
            summary:'Executar backup do cliente',
            params : z.object({
                codigo:z.string().describe('codigo do cliente a ser executado o backup')
            })
        }
    }, 
    async ( request, reply )=>{
             const { codigo } = request.params
     
        const selectedClientBackup = await db.select().from(clientes).where( eq(clientes.codigo, Number(codigo) ))
                if( selectedClientBackup.length > 0  ){

                    return reply.send(selectedClientBackup);
                }

            }  
    )
}