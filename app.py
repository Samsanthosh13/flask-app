from flask import Flask, render_template

# Create a Flask application instance
app = Flask(__name__)

# Define a route for the root URL ("/")
@app.route('/')
def hello_world():
    return "Hello, World!"

# Start the Flask development server
if __name__ == '__main__':
    app.run(debug=True)
