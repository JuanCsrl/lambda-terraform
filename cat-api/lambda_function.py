import requests
import json


def lambda_handler(event, context):
    r = requests.get('https://aws.random.cat/meow')
    return {
        'statusCode': 200,
        'body': json.dumps(r.json),
        
    }
