#!/bin/bash
mkdir -p /home/vagrant/htmlfiles
cd /home/vagrant/htmlfiles
for i in {1..5}
do
	touch "t$i.html"
done
