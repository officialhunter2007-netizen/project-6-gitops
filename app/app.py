from flask import Flask, jsonify
import os
import boto3
import json


app = Flask(__name__)


def get_secret():
    client = boto3.client("secretsmanager", region_name=os.environ.get("AWS_REGION", "eu-west-1"))
    response = client.get_secret_value(SecretId="project-6/app-secret")
    return json.loads(response["SecretString"])


@app.route("/")
def home():
    return jsonify({
        "status": "live",
        "project": "project-6-gitops",
        "engineer": "amr"
    })


@app.route("/health")
def health():
    return jsonify({"status": "healthy"}), 200


if __name__ == "__main__":
    port = int(os.environ.get("PORT", 5000))
    app.run(host="0.0.0.0", port=port)
