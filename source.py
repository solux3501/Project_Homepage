from flask import Flask

app = Flask(__name__)

@app.route('/')
def home() :
    return 'Hello, flask! 서버 실행 성공'

if __name__ == '__main__':
    app.run(debug=True)