
# coding=utf-8
from PIL import Image,ImageFont,ImageDraw

image = Image.new("RGB", (256,128), (255,255,255))
usr_font = ImageFont.truetype("./wqy-zenhei.ttc",20,encoding="unic" )
d_usr = ImageDraw.Draw(image)
d_usr = d_usr.text((20,20), u"汉",(0,0,0), font=usr_font)
image.save('image.jpg')
