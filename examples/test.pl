#!/usr/bin/env perl 
use strict;
use warnings;
use Carp;

use lib "../lib";

use Sys::Prctl qw(prctl_name);

$0 = "helloworld";
system("ps aux|grep helloworld");
system("killall helloworld");
print "---------------------\n";
prctl_name("helloworld");
system("ps aux|grep helloworld");
system("killall helloworld");
