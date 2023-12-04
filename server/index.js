const express = require('express')

const app = express();
app.use(express.json());

app.get('/', (req, res) => {
    res.send('<p> </p>')
  })

const PORT = 3001;
app.listen(PORT, () => {
  console.log(`Server running on http://localhost:${PORT}/`);
});