import Fastify from 'fastify'
import mysql from 'mysql2/promise'

const app = Fastify()

const dbConfig = {
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'bd_restaurante'
}
  
const connection = await mysql.createConnection(dbConfig)

app.get('/consulta-mesas-disponiveis', async (request, reply) => {
    try {
        const [rows] = await connection.query('SELECT COUNT(*) AS quantidade_mesas_disponiveis FROM mesas WHERE status = "disponível"')
        
        return reply.send(rows)
    } catch (error) {
        return reply.status(500).send({ error: 'Ocorreu um erro na consulta' })
    }
})

app.post('/cadastrar-cliente', async (request, reply) => {}) // fazer

app.post('/realizar-pedido', async (request, reply) => {
    // verificar se existe mesa
    // verificar se existe funcionario
    // verificar se existe cliente
    // inserir pedido
})

app.listen({ port: 3000 }).then(() => console.log('rodando'))
await connection.end();
