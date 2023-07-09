const express = require('express');
const app = express();

// ... autres routes et configurations ...

app.get('/',(req,resp)=>{
    resp.status(200).sendFile('./IHM/index.html',{root:__dirname})
})

app.listen(3000, () => {
  console.log('Application running on port 3000');
})