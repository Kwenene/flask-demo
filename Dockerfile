FROM jcdemo/flaskapp

LABEL MAINTAINER = "T Kwenene"

CMD ["echo", "Hellow World"]

ENTRYPOINT ["python", "/script/hello_script.sh"]
