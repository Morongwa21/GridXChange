const express = require('express');
const bodyParser = require('body-parser');
const app = express();


app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

// Simulated database (for demo purposes)
const cunsumer = [];

// Serve HTML file for registration page
app.get('/registration', (req, res) => {
  res.sendFile(__dirname + '/registration.html');
});

// API endpoint for user registration
app.post('/api/register', (req, res) => {
  const {consumer_id, Firstname, Email, phone, password } = req.body;


  // Basic input validation (you should add more robust validation)
  if (!consumer_id || !FirstName || !LastName || !Email || !Phone || !Password) {
    return res.status(400).json({ message: 'All fields are required' });
  }

  // Check if the user already exists (using email as a unique identifier)
  if (consumers.some(consumers => consumers.email === email)) {
    return res.status(409).json({ message: 'Email already registered' });
  }

  // Store the user in the "database" (simulated array)
  users.push({ consumer_id, Firstname, Email, phone, password  });

  return res.status(201).json({ message: 'Registration successful' });
});

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
