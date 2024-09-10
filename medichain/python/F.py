from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/coordinates', methods=['POST'])
def receive_coordinates():
    try:
        # Retrieve the JSON payload
        data = request.get_json()

        # Check if both latitude and longitude are present
        if 'latitude' not in data or 'longitude' not in data:
            return jsonify({"error": "Latitude and Longitude are required"}), 400

        latitude = data['latitude']
        longitude = data['longitude']

        # Process the coordinates (for demonstration, just echo them back)
        response = {
            'message': 'Coordinates received successfully!',
            'latitude': latitude,
            'longitude': longitude
        }
        print(latitude,longitude)
        return jsonify(response), 200

    except Exception as e:
        return jsonify({"error": str(e)}), 500

if __name__ == '__main__':
    app.run(debug=True)
