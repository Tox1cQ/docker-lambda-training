def lambda_handler(event, context):
    num1 = float(event["num1"])
    num2 = float(event["num2"])

    result = num1 + num2

    print(f"Adding {num1} + {num2} = {result}")

    return {
        "statusCode": 200,
        "body": {
            "num1": num1,
            "num2": num2,
            "result": result
        }
    }
