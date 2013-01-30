CC    =      gcc
AR    =      ar
RM    =      rm
CP    =      cp
#然后设置我们的参数变量
INCLUDES   = -I./mylib
CFLAGS   += -O2 $(INCLUDES)
LKFLAGS   += -L./mylib
#定义我们需要的各种局部变量
LIBS            = -lYUER
OBJS          = main.o com1.o com2.o com3.o com4.o
TARGET     = myapp
INSTALLDIR = /user/bin/PName
#利用我们准备好的各种变量定义规则
all:$(TARGET)
$(TARGET):$(OBJS) $(LIBS)
        $(CC) $(LKFLAGS) $(OBJS) $(LIBS) -o $@
mylib/libmylib.a::
        $(MAKE) -C mylib
%.o:%.c
        $(CC) -c $(CFLAGS) $< -o $@
#安装程序到指定的目录
install:
        $(CP) $(TARGET) $(INSTALLDIR)
#不要忘记清除中间文件，目标文件，子目录文件哦
clean:$(SUBDIR_CLEAN)
      -$(RM) *.o $(TARGET)
$(SUBDIR_CLEAN):
      $(RM) -C mylib clean