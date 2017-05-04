# Licenze Environment - Docker Container

Repository used during build of a simple Ruby Docker Container and some Ruby gems already installed and ready to use. It also includes Java, Oracle Instant Client (ruby oci-8 gem) and Rmagick (rmagick gem).

GitHub: https://github.com/felipedemacedo/licenze
DockerHub: https://hub.docker.com/r/felipederodrigues/licenze/

Ruby **1.8.7** (2014-01-28 patchlevel 376) [x86_64-linux]

Rails **2.3.5**

GEM  | Version(s)
------------- | -------------
actionmailer  | (2.3.11, 2.3.5, 1.3.6)
actionpack  | (2.3.11, 2.3.5, 1.13.6)
actionwebservice | (1.2.6)
activerecord | (2.3.5, 1.15.6)
activerecord-oracle_enhanced-adapter | (1.3.0)
activeresource | (2.3.5)
activesupport | (2.3.11, 2.3.5, 1.4.4)
afm | (0.2.0)
ansel_iconv | (1.1.6)
Ascii85 | (1.0.1)
cgi_multipart_eof_fix | (2.5.0)
choice | (0.1.4)
fastercsv | (1.5.4)
ffi | (0.6.3)
gem_plugin | (0.2.3)
gruff | (0.3.7)
hashery | (2.1.0)
htmldoc | (0.2.3)
log4r | (1.1.9)
mail | (2.5.4)
mime-types | (1.25)
mongrel | (1.1.5)
mongrel_service | (0.4.0)
mysql | (2.8.1)
nokogiri | (1.5.0)
oauth | (0.4.5)
pdf-reader | (1.1.1)
polyglot | (0.3.3)
prawn | (1.0.0.rc2)
rack | (1.1.0, 1.0.1)
rails | (2.3.5, 1.2.6)
rake | (0.8.7)
rgl | (0.4.0)
rmagick | (2.12.0)
roo | (1.10.3)
ruby-oci8 | (1.0.2)
ruby-ole | (1.2.11.2)
ruby-rc4 | (0.1.5)
rubyzip | (0.9.4)
spreadsheet | (0.6.5.9)
sqlite3-ruby | (1.3.1)
stream | (0.5)
todonotes | (0.1.0)
treetop | (1.4.15)
ttfunk | (1.0.3)
tzinfo | (0.3.29)

## Usage example

To start the rails app contained in c:/path/in/host
```console
docker run --rm -ti \
-v /c/path/in/host:/rails \
--name licenze_container \
-p 3009:3000 \
felipederodrigues/licenze:stable /bin/sh -c "cd /rails && ruby script/server webrick"
```
Output should be similar to:
```console
NOTE: Gem.cache is deprecated, use Gem::source_index. It will be removed on or after 2011-08-01.
Gem.cache called from ./script/../config/boot.rb:20
.
./script/../config/boot.rb:20:Warning: Gem::SourceIndex#search support for String patterns is deprecated, use #find_name
=> Booting WEBrick...
=> Rails application started on http://0.0.0.0:3000
=> Ctrl-C to shutdown server; call with --help for options
[2017-05-04 17:40:14] INFO  WEBrick 1.3.1
[2017-05-04 17:40:14] INFO  ruby 1.8.7 (2012-06-29) [x86_64-linux]
[2017-05-04 17:40:14] INFO  WEBrick::HTTPServer#start: pid=5 port=3000
```
