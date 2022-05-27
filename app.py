from flask import Flask, jsonify, abort, request
import pprint

app = Flask(__name__)
app.config["JSON_AS_ASCII"] = False


@app.route("/hello", methods=["GET"])
def hello():
    return "hello"

@app.route("/", methods=["POST"])
def check():
    data = request.get_json()
    return data



if __name__ == "__main__":
    app.run(
        debug=True
    )