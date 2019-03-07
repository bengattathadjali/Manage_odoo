Install requirements :

    - $ bash requirements.sh 
To run the container:

    - $ docker-compose run -d
To stop the container:

    - $ docker-compose stop $(docker ps -aq)
To remove the container :

    - $ docker-compose rm $(docker ps -aq)
