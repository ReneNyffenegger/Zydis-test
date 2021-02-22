STATIC_EXPORT=-DZYCORE_STATIC_DEFINE -DZYDIS_STATIC_DEFINE

zydis-test.exe: test.o  Decoder.o DecoderData.o SharedData.o Register.o Formatter.o FormatterBase.o FormatterBuffer.o String.o Utils.o FormatterIntel.o FormatterATT.o Mnemonic.o
	gcc $^ -o zydis-test.exe

test.o: test.c
	gcc $(STATIC_EXPORT)  -Izydis/include -Izydis/dependencies/zycore/include -Izydis/msvc -c $<

Decoder.o: zydis/src/Decoder.c
	gcc $(STATIC_EXPORT)  -Izydis/include -Izydis/dependencies/zycore/include -Izydis/msvc -c $<

Utils.o: zydis/src/Utils.c
	gcc $(STATIC_EXPORT)  -Izydis/include -Izydis/dependencies/zycore/include -Izydis/msvc -c $<

DecoderData.o: zydis/src/DecoderData.c
	gcc $(STATIC_EXPORT)  -Izydis/include -Izydis/dependencies/zycore/include -Izydis/msvc -Izydis/src -c $<

SharedData.o: zydis/src/SharedData.c
	gcc $(STATIC_EXPORT)  -Izydis/include -Izydis/dependencies/zycore/include -Izydis/msvc -Izydis/src -c $<

Register.o: zydis/src/Register.c
	gcc $(STATIC_EXPORT)  -Izydis/include -Izydis/dependencies/zycore/include -Izydis/msvc -Izydis/src -c $<

Formatter.o: zydis/src/Formatter.c
	gcc $(STATIC_EXPORT)  -Izydis/include -Izydis/dependencies/zycore/include -Izydis/msvc -Izydis/src -c $<

FormatterBase.o: zydis/src/FormatterBase.c
	gcc $(STATIC_EXPORT)  -Izydis/include -Izydis/dependencies/zycore/include -Izydis/msvc -Izydis/src -c $<

FormatterBuffer.o: zydis/src/FormatterBuffer.c
	gcc $(STATIC_EXPORT)  -Izydis/include -Izydis/dependencies/zycore/include -Izydis/msvc -Izydis/src -c $<

String.o: zydis/src/String.c
	gcc $(STATIC_EXPORT)  -Izydis/include -Izydis/dependencies/zycore/include -Izydis/msvc -Izydis/src -c $<

FormatterIntel.o: zydis/src/FormatterIntel.c
	gcc $(STATIC_EXPORT)  -Izydis/include -Izydis/dependencies/zycore/include -Izydis/msvc -Izydis/src -c $<

FormatterATT.o: zydis/src/FormatterATT.c
	gcc $(STATIC_EXPORT)  -Izydis/include -Izydis/dependencies/zycore/include -Izydis/msvc -Izydis/src -c $<

Mnemonic.o: zydis/src/Mnemonic.c
	gcc $(STATIC_EXPORT)  -Izydis/include -Izydis/dependencies/zycore/include -Izydis/msvc -Izydis/src -c $<
