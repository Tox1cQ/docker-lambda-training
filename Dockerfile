FROM public.ecr.aws/lambda/python:3.12

COPY app/addition.py ${LAMBDA_TASK_ROOT}/app/addition.py

CMD ["app.addition.lambda_handler"]
