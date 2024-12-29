# Node.js Rest APIs with Express $ MySQL for Tutorials

This project implements a REST API for managing tutorials using Express.js and MySQL database. The API allows users to create, retrieve, update, delete, and search for tutorials.

### Getting Started

1.  **Prerequisites:**

* Node.js and npm (or yarn) installed on your system.
* A MySQL database server running.

2. **Clone the repository:**

```bash
git clone https://github.com/abrahamof2016/Express_tutorial.git
```
3. **Install dependencies:**

``` bash
cd Express_tutorial
cd nodejs-express-mysql
npm install
```

4. **Configure database connection:**

Create a file named db.config.js in the directory app/config and add your MySQL database connection details:

``` bash
DB_HOST=localhost
DB_USER=your_username
DB_PASSWORD=your_password
DB_NAME=your_database_name
```

5. **Start the server:**

``` bash
npm start
(or yarn start)
```
This will start the Express server and make the API endpoints available.

## API Endpoints

The API provides the following endpoints for managing tutorials:

```Markdown

| Method | URL | Description |
| ---- |
| GET | | /api/tutorials | | Description |
| GET | | /api/tutorials/:id | | Get a tutorial by its ID |
| POST | | /api/tutorials | | Create a new tutorial |
| PUT | | /api/tutorials/:id | | Update a tutorial by its ID |
| DELETE | | /api/tutorials/:id | | Delete a tutorial by its ID |
| DELETE | | /api/tutorials | |Delete all tutorials(use with caution!) |
| GET | | /api/tutorials/published | | Get all published tutorials |
| GET | | /api/tutorials?title=[kw] | | Find all tutorials where the title contains the keyword kw |
```

Note: The /api/tutorials endpoint without an ID always returns an array of tutorials. The endpoint with an ID expects a numeric ID expects a numeric ID and returns a single tutorial object or an error message if the tutorial is not found.

## Testing the API

You can use a tool like Postman to test the API endpoints. Here are some examples:

* Get all tutorials:

``` bash
GET http://localhost:3000/api/tutorials
```

* Get a tutorial by ID:

``` bash
GET http://localhost:3000/api/tutorials/1
```

* Create a new tutorial

``` bash
POST http://localhost:3000/api/tutorials
Content-Type: application/json

{
	"title": "Introduction to Node.js",
	"description": "This tutorial teaches you the basic of Node.js",
	"published": true
}
```

* Update a tutorial

``` bash
PUT http://localhost:3000/api/tutorials/1
Content-Type: application/json

{
	"title": "Introduction to Node.js and Express.js",
	"description": "This tutorial teaches you the basics of Node.js and Express.js"
}
```

* Delete a tutorial

``` bash
DELETE http://localhost:3000/api/tutorials/1
```

Remeber to replace http://localhost:3000 with the actual URL of your server if it's running on a different port


 



