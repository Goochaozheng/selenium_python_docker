FROM python:3.8

USER root

# install chromedriver & chrome
# using chrome version 78
RUN python --version
	&& cd ~
	&& wget https://chromedriver.storage.googleapis.com/78.0.3904.70/chromedriver_linux64.zip
	&& unzip chromedriver_linux64.zip -d /usr/bin/
	&& rm chromedriver_linux64.zip
	&& mkdir ~/app/chrome_78
	&& cd ~/chrome_78
	&& wget http://dl.google.com/linux/chrome/deb/pool/main/g/google-chrome-stable/google-chrome-stable_78.0.3904.70-1_amd64.deb
	&& dpkg -i google-chrome-stable_78.0.3904.70-1_amd64.deb
	&& rm google-chrome-stable_78.0.3904.70-1_amd64.deb
	&& pip install selenium
