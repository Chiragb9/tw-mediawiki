FROM ubuntu:latest

COPY ./get_files_dep.sh .
RUN chmod +x get_files_dep.sh
RUN ./get_files_dep.sh

EXPOSE 80
CMD [ "apachectl", "-D", "FOREGROUND" ]