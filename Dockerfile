FROM python:3.7-alpine

WORKDIR /usr/src/app

COPY ./skill-sample-python-fact/lambda/py/requirements.txt ./
RUN pip install virtualenv                          &&\
    virtualenv env                                  &&\        
    source env/bin/activate                         &&\
    pip install --no-cache-dir -r requirements.txt
#COPY ./skill-sample-python-fact/lambda/py/lambda_function.py ./

COPY . .

#CMD [ "python", "./lambda_function.py" ]
CMD [ "python", "./skill-sample-python-fact/lambda/py/lambda_function.py" ]
