#!/bin/bash
var1=apple
var2=mango

echo $0 is being executed with variable1 value = $var1 and varianble2 = $var2
export var1
./export2.sh
echo $0 is being executed with variable1 value = $var1 and varianble2 = $var2

