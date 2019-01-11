cd skill-sample-python-fact/lambda/py/
zip -g ../../../skill.zip lambda_function.py 
cd ../../..
aws lambda update-function-code --function-name 291487326213:function:rollTheDice --zip-file fileb://skill.zip

