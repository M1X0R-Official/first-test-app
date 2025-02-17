const express = require('express');
const path = require('path');
const app = express();
const port = 2443;

// Serve static files from the 'public' directory
app.use(express.static('public'));

// Route all requests to index.html
app.get('*', (req, res) => {
    res.sendFile(path.join(__dirname, 'public', 'index.html'));
});

app.listen(port, () => {
    console.log(`Server running at http://localhost:${port}`);
});
