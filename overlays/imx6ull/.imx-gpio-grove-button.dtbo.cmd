cmd_overlays/imx6ull/imx-gpio-grove-button.dtbo = cpp -Wp,-MD,overlays/imx6ull/.imx-gpio-grove-button.dtbo.d.pre.tmp -nostdinc -Iinclude -Ioverlays/imx6ull -Ioverlays -Itestcase-data -undef -D__DTS__ -x assembler-with-cpp -o overlays/imx6ull/.imx-gpio-grove-button.dtbo.dts.tmp overlays/imx6ull/imx-gpio-grove-button.dts ; dtc -O dtb -o overlays/imx6ull/imx-gpio-grove-button.dtbo -b 0 -@ -i overlays/imx6ull -Wno-unit_address_vs_reg -Wno-dmas_property -Wno-gpios_property -Wno-pwms_property -Wno-interrupts_property -d overlays/imx6ull/.imx-gpio-grove-button.dtbo.d.dtc.tmp overlays/imx6ull/.imx-gpio-grove-button.dtbo.dts.tmp ; cat overlays/imx6ull/.imx-gpio-grove-button.dtbo.d.pre.tmp overlays/imx6ull/.imx-gpio-grove-button.dtbo.d.dtc.tmp > overlays/imx6ull/.imx-gpio-grove-button.dtbo.d
imx-gpio-grove-button.o: overlays/imx6ull/imx-gpio-grove-button.dts \
 include/imx6ul-pinfunc.h include/imx6ull-pinfunc-snvs.h \
 include/dt-bindings/interrupt-controller/irq.h \
 include/dt-bindings/gpio/gpio.h
overlays/imx6ull/imx-gpio-grove-button.dtbo: overlays/imx6ull/.imx-gpio-grove-button.dtbo.dts.tmp
