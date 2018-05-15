for f in `find ./ -name Makefile`
do
sed -i 's|-m32 -fno-stack-protector|-m32 -fno-stack-protector -g|' $f
sed -i 's|-s -Ttext $(ENTRYPOINT)|-Ttext $(ENTRYPOINT) -m elf_i386|' $f
sed -i 's|-Ttext $(ENTRYPOINT)|-Ttext $(ENTRYPOINT) -m elf_i386|' $f
done

for f in `find ./ -name bochsrc`
do
sed -i 's|keyboard_mapping: enabled=1, map=/usr/share/bochs/keymaps/x11-pc-us.map|keyboard:keymap=/usr/local/share/bochs/keymaps/x11-pc-de.map|' $f
echo 'gdbstub: enabled=1, port=1234, text_base=0, data_base=0, bss_base=0' >> $f
done
