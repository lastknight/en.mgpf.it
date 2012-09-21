name = ARGV[0]
link = ARGV[1]
timestamp = Time.now.strftime("%Y-%m-%d")
nameurl = name.scan(/[a-zA-Z ]/).join.to_s.downcase.gsub(" ", "-")
file = "./_posts/#{timestamp}-#{nameurl}.markdown"
puts name
puts nameurl
puts timestamp
puts file

content = "
--- 
published: true
layout: post
title: \"#{name}\"
meta: {}
tags: 
- censura
- darknet
- religione
- startup
- whistle-blowing
- digital-freedom
- p0wned
- business
- security
- weird
- politics
- talk
- hacking
- the-fool
- social-media
- about-me
- evil-ideas
- google
- awesome
- paranoia
- eventi
- hope
- politica
- ip
- seo
- forensic
- progetti
- cercasi
- privacy
- globaleaks
- radio24
- cyberwarfare
- lifehacking
- develop
- intelligence
- malware
---

XXX

Per maggiori info:

* <#{link}>

Estote parati.

[1]: #{link}
[2]: 
[3]: 
[4]: 
[5]: 
"
File.open(file, 'w') {|f| f.write(content) }
`mate #{file}`


