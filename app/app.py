from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return "AI-Assisted DevOps Platform Running Successfully"

@app.route('/health')
def health():
    return {
        "status": "healthy",
        "application": "AI-Assisted DevOps Platform"
    }

@app.route('/version')
def version():
    return {
        "version": "1.0",
        "environment": "production"
    }

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)