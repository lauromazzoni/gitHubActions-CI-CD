const express = require('express')
const app = express()

const port = 3000

app.get('/', (req, res) => {
  res.send('Primeiro commit <br/> Feature XPTO <br/> Feature 1234 <br/> Funfou!!!')
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})