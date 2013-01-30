CC=clang # or gcc 

FRAMEWORKS:= -framework Foundation
	 # \
	 # 	 -framework CoreFoundation\
	 # 	 -framework UIKit 
	 # 	 
LIBRARIES:= -lobjc 

FFFF:= -F/System/Library/Frameworks\
	-F/Library/Frameworks\
	-F/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator6.0.sdk/System/Library/Frameworks
SOURCE=main.m 

INCLUDE:=-I/Users/dudan/work/git/rb.pbxproj/examples/aaaa/build/Helloworld.build/Release-iphonesimulator/Helloworld.build/Helloworld-own-target-headers.hmap -I/Users/dudan/work/git/rb.pbxproj/examples/aaaa/build/Helloworld.build/Release-iphonesimulator/Helloworld.build/Helloworld-all-target-headers.hmap -iquote /Users/dudan/work/git/rb.pbxproj/examples/aaaa/build/Helloworld.build/Release-iphonesimulator/Helloworld.build/Helloworld-project-headers.hmap -I/Users/dudan/work/git/rb.pbxproj/examples/aaaa/build/Release-iphonesimulator/include -I/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include -I/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include -I/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include -I/Users/dudan/work/git/rb.pbxproj/examples/aaaa/build/Helloworld.build/Release-iphonesimulator/Helloworld.build/DerivedSources/i386 -I/Users/dudan/work/git/rb.pbxproj/examples/aaaa/build/Helloworld.build/Release-iphonesimulator/Helloworld.build/DerivedSources -F/Users/dudan/work/git/rb.pbxproj/examples/aaaa/build/Release-iphonesimulator\
	-I/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator6.0.sdk/usr/include
	
# CFLAGS=-Wall -Werror -g -v $(SOURCE) 
CFLAGS=-Wall -Werror -arch i386  -I/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator6.0.sdk/usr/include $(FFFF) -v $(SOURCE) 
LDFLAGS=$(LIBRARIES) $(FRAMEWORKS)  
OUT=-o main 

all: 
	export PATH=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin:$PATH
	export SDK=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS6.0.sdk 

	# CC="gcc -arch armv7 --sysroot=$SDK" 
	# CXX="g++ -arch armv7 --sysroot=$SDK"
	# export CC; 
	# export CXX;
	export LD_LIBRARY_PATH=/Applications/Xcode.app/Contents/Developer/lib:
	export LDFLAGS="-Wl,-syslibroot,$SDK"
	
	$(CC) $(CFLAGS) $(LDFLAGS) $(OUT)
	
do:
	./main
	
del:
	rm -f main