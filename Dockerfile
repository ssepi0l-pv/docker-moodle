# NOT FULLY DEVELOPED. DO NOT USE!!!


#########################################################################################################
# developed by ssepi0l-pv. designed by ssepi0l-pv.							#
# this is a kinda first version of this dockerfile.							#
# it's not the best dockerfile, at least not for now, but i'll try to be \n				#
# updating it to be better with the pass of time. if you don't like it, \n				#
# don't use it :)											#
#													#
# there will be some configuration files in the future in this repo, but idk \n				#
# if i'm capable of doing that now. let's see what happens in the future.				#
# have a nice day.								  			#
# ssepi0l-pv									  			#
#########################################################################################################

FROM php:7.4.15-apache-buster
RUN apt-get install git
RUN apt-get install wget
RUN git clone https://github.com/moodle/moodle.git
RUN mkdir /$HOME/public_html
RUN mv moodle /$HOME/public_html/
RUN mkdir /$HOME/moodledata
RUN git clone https://github.com/trema-tech/moodle-theme_trema trema
RUN mv trema /$HOME/public_html/moodle/theme/
# Using HTTP? Use 80. Using HTTPS? Use 443. Just comment the one you don't need.
EXPOSE 80
#EXPOSE 443

# Comment the mysql:8.0.23 if you want the latest versions of MySQL, and uncomment the mysql:latest.
FROM mysql:8.0.23
#FROM mysql:latest
EXPOSE 3306
