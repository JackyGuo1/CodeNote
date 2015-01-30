#list specific url
lynx --dump --listonly http://i.youku.com/u/UNTEzNTY1OTgw | awk '{print $2}' |grep v.youku.com |grep html

#download all url with you-get(in python3)
lynx --dump --listonly http://i.youku.com/u/UNTEzNTY1OTgw | awk '{print $2}' |grep v.youku.com |grep html|xargs you-get

for i in `lynx --dump --listonly http://i.youku.com/u/UNTEzNTY1OTgw | awk '{print $2}' |grep v.youku.com |grep html`;
do
	#echo item: $i
	you-get $i
done
	

