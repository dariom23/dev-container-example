from flask import Flask, jsonify
import mysql.connector


app = Flask(__name__)


def movies_data():
    config = {
        'user': 'root',
        'password': 'root',
        'host': 'db',
        'port': '3306',
        'database': 'movies'
    }
    connection = mysql.connector.connect(**config)
    cursor = connection.cursor(dictionary=True)
    cursor.execute('SELECT Title, Genre FROM movies_data')
    results = cursor.fetchall()
    cursor.close()
    connection.close()
    return results


@app.route('/')
def index():
    return jsonify({'Movies': movies_data()})


if __name__ == '__main__':
    app.run(host='0.0.0.0')