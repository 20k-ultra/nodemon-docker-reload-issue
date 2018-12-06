import http from 'http'
import express from 'express'
import { version } from '../package.json'

// EXPRESS INSTANCE
let apiService = express()
apiService.server = http.createServer(apiService)

// API INFO
apiService.get('/', (req, res) => {
  res.json({ version })
})

apiService.server.listen('8080', () => {
  console.log(`Started on port ${apiService.server.address().port}`)
})

export default apiService
