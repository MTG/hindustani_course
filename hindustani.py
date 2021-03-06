from flask import Flask, send_from_directory

app = Flask(__name__)

@app.route("/")
def index():
    return send_from_directory("source", "index.html")

@app.route("/<path:path>")
def catch_all(path):
    return send_from_directory("source", path)

if __name__ == "__main__":
    app.run()
