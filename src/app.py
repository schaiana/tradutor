
from flask import Flask, jsonify
import tradutor
import re


app = Flask(__name__)


@app.route('/<string:algarismo>', methods = ['GET'])
def entrada(algarismo):

    if (tradutor.valida_algarismo(algarismo) == False):
        return jsonify({'erro': 'Formato inválido'}), 400
    else:
        extenso = tradutor.obtem_extenso(int(algarismo))
        return jsonify({'extenso': extenso}), 200

@app.route('/', methods = ['GET'])
def inicio():
    return "Digite um número após a barra para realizar a tradução. Ex: localhost:3000/1933", 200

if __name__ == '__main__':
	app.debug = True
	app.run(host = '0.0.0.0', port = 3000)
    