## INSTALLATION AND USE OF THE SCRIPT

## GIT INSTALLATION
```
$ git clone https://github.com/righnix/slowHTTPtest.git

$ cd slowHTTPtest

$ chmod +x *

$ ./slowtest.sh
```
## HOW TO USE 
```
# USE "show options" TO SEE AVAILABLE OPTIONS 
# USE "help" TO VIEW A HELP MENU
```

**START ATTACK**
```
(~) > set URL http://domain.com
(~) > set TIME 10
(~) > set C 65000
(~) > run
```
## HOW DOES IT WORK

The url parameter defines the url of the attack 
The TIME parameter defines the time between connections 
Parameter C defines the total number of connections, the maximum is 65000, keep that in mind
And to locate the attack the run or go parameter is used


## MAKE SURE YOU HAVE SLOWHTTPTEST INSTALLED ON YOUR TERMINAL OTHERWISE IF YOU ARE USING LINUX YOU CAN USE:
```
$ sudo apt-get install slowhttptest
```
YOU CAN DO A MANUAL INSTALLATION WITH THE FOLLOWING COMMANDS MAKE SURE YOU HAVE AND INSTALL THE NECESSARY MODULES:

```
$ sudo apt-get update

$ sudo apt-get install wget tar gcc make

$ wget https://github.com/shekyan/slowhttptest/archive/refs/tags/v1.9.0.tar.gz

$ tar -xzvf slowhttptest-x.x.tar.gz

$ cd slowhttptest-1.9.0/

$ chmod +x *

$ ./configure --prefix=$PREFIX

$ make

$ sudo make install
```


## SlowHTTPTest: What it is and how it works

SlowHTTPTest is an open-source stress testing tool used to detect vulnerabilities in HTTP and HTTPS web servers. It uses denial-of-service (DoS) attack techniques to send slow and prolonged HTTP requests to the target server. The intention is to exhaust the server's resources, which can result in a website crash or slow response.

## DoS Attack with SlowHTTPTest

The DoS attack with SlowHTTPTest focuses on a single server. The tool sends incomplete and slow HTTP requests to the server, which causes the server to wait for the requests to complete before responding. These incomplete requests are sent over multiple parallel connections, which exhaust the server's resources and may cause a service disruption.

## DDoS Attack with SlowHTTPTest

The DDoS attack with SlowHTTPTest is similar to the DoS attack, but involves multiple servers sending incomplete and slow HTTP requests to the target. The tool is run on each attacking server and sends requests through multiple parallel connections. This type of attack is much harder to detect and prevent, as it originates from different locations and is difficult to distinguish between legitimate and malicious traffic.

## How to prevent a SlowHTTPTest attack?

To prevent a SlowHTTPTest attack, server administrators should be vigilant of any suspicious behavior in their logs. It is recommended to use a network monitoring tool to detect any abnormal activity. Additionally, security configurations can be applied on the server to limit the number of parallel connections allowed and limit the timeout for HTTP requests.

In summary, SlowHTTPTest is a powerful stress testing tool that can be used to detect vulnerabilities in web servers. DoS and DDoS attacks with SlowHTTPTest can be devastating to a server's web service. It is important for server administrators to be vigilant of any suspicious activity and take preventive measures to protect their servers against these types of attacks.
