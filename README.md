```
git clone https://github.com/skaji/carton-issue219

cd carton-issue219

docker build --no-cache -t carton-issue219 .

docker run carton-issue219
```

```
> docker build --no-cache -t carton-issue219 .
Sending build context to Docker daemon  59.9 kB
Step 1 : FROM perl:5
 ---> 9e4b9ea89028
Step 2 : RUN cpanm Carton
 ---> Running in a9263742f384
--> Working on Carton
Fetching http://www.cpan.org/authors/id/M/MI/MIYAGAWA/Carton-v1.0.28.tar.gz ... OK
Configuring Carton-v1.0.28 ... OK
==> Found dependencies: Try::Tiny, JSON, Module::CPANfile, Module::Reader, Path::Tiny, Class::Tiny
--> Working on Try::Tiny
Fetching http://www.cpan.org/authors/id/E/ET/ETHER/Try-Tiny-0.27.tar.gz ... OK
Configuring Try-Tiny-0.27 ... OK
Building and testing Try-Tiny-0.27 ... OK
Successfully installed Try-Tiny-0.27
--> Working on JSON
Fetching http://www.cpan.org/authors/id/M/MA/MAKAMAKA/JSON-2.90.tar.gz ... OK
Configuring JSON-2.90 ... OK
Building and testing JSON-2.90 ... OK
Successfully installed JSON-2.90
--> Working on Module::CPANfile
Fetching http://www.cpan.org/authors/id/M/MI/MIYAGAWA/Module-CPANfile-1.1002.tar.gz ... OK
Configuring Module-CPANfile-1.1002 ... OK
Building and testing Module-CPANfile-1.1002 ... OK
Successfully installed Module-CPANfile-1.1002
--> Working on Module::Reader
Fetching http://www.cpan.org/authors/id/H/HA/HAARG/Module-Reader-0.003002.tar.gz ... OK
Configuring Module-Reader-0.003002 ... OK
Building and testing Module-Reader-0.003002 ... OK
Successfully installed Module-Reader-0.003002
--> Working on Path::Tiny
Fetching http://www.cpan.org/authors/id/D/DA/DAGOLDEN/Path-Tiny-0.098.tar.gz ... OK
Configuring Path-Tiny-0.098 ... OK
Building and testing Path-Tiny-0.098 ... OK
Successfully installed Path-Tiny-0.098
--> Working on Class::Tiny
Fetching http://www.cpan.org/authors/id/D/DA/DAGOLDEN/Class-Tiny-1.006.tar.gz ... OK
Configuring Class-Tiny-1.006 ... OK
Building and testing Class-Tiny-1.006 ... OK
Successfully installed Class-Tiny-1.006
Building and testing Carton-v1.0.28 ... OK
Successfully installed Carton-v1.0.28
7 distributions installed
 ---> 3d84f1d9b572
Removing intermediate container a9263742f384
Step 3 : WORKDIR /usr/src/fetcher
 ---> Running in db7d75a09a7b
 ---> d595b5a8a857
Removing intermediate container db7d75a09a7b
Step 4 : COPY cpanfile* /usr/src/fetcher/
 ---> 2faf78cd6a92
Removing intermediate container 9dfdcd90c89f
Step 5 : COPY bin /usr/src/fetcher/bin
 ---> 905c5f067eaa
Removing intermediate container 9cba77559e31
Step 6 : COPY lib /usr/src/fetcher/lib
 ---> 61a98883c558
Removing intermediate container b213d20b05fe
Step 7 : RUN carton install
 ---> Running in 078ad22704c0
Installing modules using /usr/src/fetcher/cpanfile
Successfully installed Module-Build-0.4220
Successfully installed Module-Runtime-0.014
Successfully installed Dist-CheckConflicts-0.11
Successfully installed Eval-Closure-0.14
Successfully installed Role-Tiny-2.000005
Successfully installed Try-Tiny-0.27
Successfully installed Test-Fatal-0.014
Successfully installed MRO-Compat-0.12
Successfully installed Devel-StackTrace-2.02
Successfully installed Specio-0.31
Successfully installed Sub-Identify-0.12
Successfully installed Variable-Magic-0.60
Successfully installed Sub-Exporter-Progressive-0.001013
Successfully installed Module-Implementation-0.09
Successfully installed B-Hooks-EndOfScope-0.21
Successfully installed Package-Stash-XS-0.28
Successfully installed Package-Stash-0.37
Successfully installed namespace-clean-0.27
Successfully installed namespace-autoclean-0.28
Successfully installed Scalar-List-Utils-1.47 (upgraded from 1.42_02)
Successfully installed Class-Data-Inheritable-0.08
Successfully installed Exception-Class-1.41
Successfully installed Params-ValidationCompiler-0.21
Successfully installed DateTime-Locale-1.11
Successfully installed Class-Singleton-1.5
Successfully installed DateTime-TimeZone-2.09
Successfully installed DateTime-1.41
Successfully installed URI-1.71
Successfully installed LWP-MediaTypes-6.02
Successfully installed HTTP-Date-6.02
Successfully installed IO-HTML-1.001
Successfully installed Encode-Locale-1.05
Successfully installed HTTP-Message-6.11
Successfully installed HTML-Tagset-3.20
Successfully installed HTML-Parser-3.72
Successfully installed HTTP-Daemon-6.01
Successfully installed Net-HTTP-6.09
Successfully installed WWW-RobotRules-6.02
Successfully installed HTTP-Negotiate-6.01
Successfully installed File-Listing-6.04
Successfully installed HTTP-Cookies-6.01
Successfully installed libwww-perl-6.15
Successfully installed HTML-Tree-5.03
Successfully installed HTML-Form-6.03
Successfully installed WWW-Mechanize-1.83
Successfully installed WWW-Mechanize-Sleepy-0.7
Successfully installed Mozilla-CA-20160104
Successfully installed Net-SSLeay-1.78
Successfully installed IO-Socket-SSL-2.040
Successfully installed LWP-Protocol-https-6.06
Successfully installed REST-Client-273
Successfully installed Log-Log4perl-1.48
Successfully installed URI-Encode-v1.1.1
53 distributions installed
Complete! Modules were installed into /usr/src/fetcher/local
 ---> d10b7be42305
Removing intermediate container 078ad22704c0
Step 8 : CMD carton exec ./bin/fetcher.pl
 ---> Running in a58852c0fe01
 ---> bb0351022d95
Removing intermediate container a58852c0fe01
Successfully built bb0351022d95


> docker run carton-issue219
We have DateTime 1.41
```
