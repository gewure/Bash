# get the current time, use it  to name files
_now=$(date +"%m_%d_%Y")
touch “someFileName_$_now”

# NC as a port-scanner
while(true); do nc localhost $a; let a=a+1;sleep 1; done;

# simple loop to get some jsondata from somewhere with colored counter
while(true); do curl -i https://btc-e.com/api/3/depth/btc_usd; let a=a+1; echo "$(tput setaf 1) Orderbook Number: $a";tput setaf 0; done;

#same with apache benchmark tools (dangerous, DOS!!)
ab -n requests https://btc-e.com/api/3/depth/btc_usd 

# all occurrences of something are subtituted with anything in all files .java 
# from this directory 
perl -p -i -e 's/something/anything/g' `find ./ -name *.java`

#rename all .JPGs filenames ‘what’ withthis
rename 's/what/withthis/' *.JPG

# count lines of code from all files who are .java from this directory on
find ./ -name "*.java" -exec wc -l  {} \;

# count lines of code from al files who are .c and summarize the lines
find ./ -name "*.c" | xargs wc -l

# start something automatically
root@localhost:/etc/init.d# cd /etc/init.d/
root@localhost:/etc/init.d# update-rc.d wildfly defaults 

# find a special section in man pages
man -P 'less -p "   -O"' gcc

#show only 10 lines from this file
cat somefile | perl -ne '$. <= 10 && print

# digg INPUT and OUTPUT hole for port 80 into firewall
sudo iptables -A INPUT -p tcp --dport 80 -j ACCEPT
sudo iptables -A OUTPUT -p tcp --dport 80 -j ACCEPT

#kill process containing someString in name
kill $(ps aux | awk '/someString/ { print $2}' | sed -n '1p')

#get restfullservice result in a json-file
 curl -i localhost/path/to/webservice/matchID > result.json
