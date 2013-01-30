rm bin/hello.o
ar crv 


ar -crv libmyhello.a /Users/sang/Downloads/pbxproject-master/examples/aaaa/build/Helloworld.build/Debug-iphonesimulator/Helloworld.build/Objects-normal/i386/Test.o



/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang -x objective-c -arch i386 -fmessage-length=0 -std=gnu99 -Wno-trigraphs -fpascal-strings -O0 -Wno-missing-field-initializers -Wno-missing-prototypes -Wreturn-type -Wno-implicit-atomic-properties -Wno-receiver-is-weak -Wduplicate-method-match -Wformat -Wno-missing-braces -Wparentheses -Wswitch -Wno-unused-function -Wno-unused-label -Wno-unused-parameter -Wunused-variable -Wunused-value -Wempty-body -Wuninitialized -Wno-unknown-pragmas -Wno-shadow -Wno-four-char-constants -Wno-conversion -Wno-shorten-64-to-32 -Wpointer-sign -Wno-newline-eof -Wno-selector -Wno-strict-selector-match -Wno-undeclared-selector -Wno-deprecated-implementations -DDEBUG=1 hello.m libmyhello.a -o hello && ./hello
/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang -x objective-c -arch i386 hello.m libmyhello.a -o hello && ./hello
gcc hello.m  -lobjc libmyhello.a -o hello  -framework Foundation && ./hello


# /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/
export PATH=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin:$PATH
export SDK=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS6.0.sdk 

CC="gcc -arch armv7 --sysroot=$SDK" 
CXX="g++ -arch armv7 --sysroot=$SDK"
export CC; 
export CXX;
export LD_LIBRARY_PATH=/Applications/Xcode.app/Contents/Developer/lib:
export LDFLAGS="-Wl,-syslibroot,$SDK"
./configure \
--host=arm-apple-darwin --prefix=${HOME}/opencore-amr-iphone \
--disable-shared

make clean;make


CC="gcc -arch armv7 --sysroot=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS6.0.sdk" 
CXX="g++ -arch armv7 --sysroot=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS6.0.sdk"
export CC; 
export CXX;
export LD_LIBRARY_PATH=/Applications/Xcode.app/Contents/Developer/lib:
export LDFLAGS="-Wl,-syslibroot,/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS6.0.sdk"
./configure \
--host=arm-apple-darwin --prefix=${HOME}/opencore-amr-iphone \
--disable-shared

make clean;make



gcc -arch armv7 -sysroot=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS6.0.sdk hello.m libmyhello.a -o hello && ./hello
gcc  -framework Foundation   -arch i386 -isysroot=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator6.0.sdk hello.m libmyhello.a -o hello && ./hello

gcc  -framework Foundation  -arch i386 -isysroot=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator6.0.sdk h1.m libmyhello.a -o hello && ./hello
gcc  -lobjc  -arch i386 -isysroot=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator6.0.sdk h1.m libmyhello.a -o hello && ./hello


/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/usr/bin

gcc  -lobjc  -arch i386 -isysroot=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator6.0.sdk h1.m  -static -L. -lmyhello -o hello && ./hello

-isysroot=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator6.0.sdk 

gcc  -lobjc  -arch i386 h1.m  -static -L. -lmyhello -o hello && ./hello   


Foundation/Foundation.h: No such file or directory


# /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang -x objective-c -arch i386 -fmessage-length=0 -std=gnu99 -Wno-trigraphs -fpascal-strings -O0 -Wno-missing-field-initializers -Wno-missing-prototypes -Wreturn-type -Wno-implicit-atomic-properties -Wno-receiver-is-weak -Wduplicate-method-match -Wformat -Wno-missing-braces -Wparentheses -Wswitch -Wno-unused-function -Wno-unused-label -Wno-unused-parameter -Wunused-variable -Wunused-value -Wempty-body -Wuninitialized -Wno-unknown-pragmas -Wno-shadow -Wno-four-char-constants -Wno-conversion -Wno-shorten-64-to-32 -Wpointer-sign -Wno-newline-eof -Wno-selector -Wno-strict-selector-match -Wno-undeclared-selector -Wno-deprecated-implementations -DDEBUG=1 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator6.0.sdk -fexceptions -fasm-blocks -Wprotocol -Wdeprecated-declarations -g -Wno-sign-conversion -fobjc-abi-version=2 -fobjc-legacy-dispatch "-DIBOutlet=__attribute__((iboutlet))" "-DIBOutletCollection(ClassName)=__attribute__((iboutletcollection(ClassName)))" "-DIBAction=void)__attribute__((ibaction)" -mios-simulator-version-min=6.0 -iquote /Users/sang/Downloads/pbxproject-master/examples/aaaa/build/Helloworld.build/Debug-iphonesimulator/Helloworld.build/Helloworld-generated-files.hmap -I/Users/sang/Downloads/pbxproject-master/examples/aaaa/build/Helloworld.build/Debug-iphonesimulator/Helloworld.build/Helloworld-own-target-headers.hmap -I/Users/sang/Downloads/pbxproject-master/examples/aaaa/build/Helloworld.build/Debug-iphonesimulator/Helloworld.build/Helloworld-all-target-headers.hmap -iquote /Users/sang/Downloads/pbxproject-master/examples/aaaa/build/Helloworld.build/Debug-iphonesimulator/Helloworld.build/Helloworld-project-headers.hmap -I/Users/sang/Downloads/pbxproject-master/examples/aaaa/build/Debug-iphonesimulator/include -I/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include -I/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include -I/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include -I/Users/sang/Downloads/pbxproject-master/examples/aaaa/build/Helloworld.build/Debug-iphonesimulator/Helloworld.build/DerivedSources/i386 -I/Users/sang/Downloads/pbxproject-master/examples/aaaa/build/Helloworld.build/Debug-iphonesimulator/Helloworld.build/DerivedSources -F/Users/sang/Downloads/pbxproject-master/examples/aaaa/build/Debug-iphonesimulator -include /var/folders/nb/8x3xwk8101bftl1lj1ht25080000gn/C/com.apple.Xcode.501/SharedPrecompiledHeaders/Helloworld-Prefix-ggszqngmjneywjhcubovcvmsszdk/Helloworld-Prefix.pch -MMD -MT dependencies -MF /Users/sang/Downloads/pbxproject-master/examples/aaaa/build/Helloworld.build/Debug-iphonesimulator/Helloworld.build/Objects-normal/i386/Test.d --serialize-diagnostics /Users/sang/Downloads/pbxproject-master/examples/aaaa/build/Helloworld.build/Debug-iphonesimulator/Helloworld.build/Objects-normal/i386/Test.dia -c hello.m -o bin/hello.o

chmod +x bin/hello.o 
./bin/hello.o





gcc  -framework Foundation  -arch i386 h1.m   -o hello -isysroot=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator6.0.sdk
gcc  -framework Foundation  -arch i386 h1.m   -o hello --sysroot=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator6.0.sdk
gcc  -framework Foundation  -arch i386 h1.m   -o hello -sysroot=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator6.0.sdk
 && ./hello 



gcc  -framework Foundation  -arch i386 hello.m   -o hello --sysroot=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator6.0.sdk

 gcc   -framework Foundation  -arch i386 hello.m  -static -L. -lmyhello -o hello && ./hello
 
 