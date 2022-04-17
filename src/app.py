from flask import Flask
from flask import request
from flask import make_response
from flask import redirect
from prometheus_flask_exporter import PrometheusMetrics
import platform


app = Flask(__name__)
metrics = PrometheusMetrics(app)

@app.route('/')
def Main():
    """
        Prints the main API response
        Return
        ------
        String
            The Inserts the pod hostname to the welcome message
        """
    hostname = platform.uname()[1]
    return 'My flask api running on {}'.format(platform.uname()[1])

if __name__ == "__main__":
    app.run(debug = True, host = "0.0.0.0", port = 8080)