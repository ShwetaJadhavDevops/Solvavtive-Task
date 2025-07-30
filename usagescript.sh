#!/bin/bash


echo "------ Top 5 CPU Consuming Processes ------"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -6


echo "------ Top 5 Memory Consuming Processes ------"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -6

