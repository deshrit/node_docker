const express = require('express');
const app = express();

app.use("/", (req, res) => {
    res.send({message: "Hello from node container app 🚀"}); // insert unicode [ ctr+shift+u u<code> enter ]
});

app.listen(process.env.PORT || 3000, () => {
    console.log(`Listening on port ${process.env.PORT}...`);
})