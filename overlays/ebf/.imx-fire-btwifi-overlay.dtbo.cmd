cmd_overlays/ebf/imx-fire-btwifi-overlay.dtbo = cpp -Wp,-MD,overlays/ebf/.imx-fire-btwifi-overlay.dtbo.d.pre.tmp -nostdinc -Iinclude -Ioverlays/ebf -Ioverlays -Itestcase-data -undef -D__DTS__ -x assembler-with-cpp -o overlays/ebf/.imx-fire-btwifi-overlay.dtbo.dts.tmp overlays/ebf/imx-fire-btwifi-overlay.dts ; dtc -O dtb -o overlays/ebf/imx-fire-btwifi-overlay.dtbo -b 0 -@ -i overlays/ebf -Wno-unit_address_vs_reg -Wno-dmas_property -Wno-gpios_property -Wno-pwms_property -Wno-interrupts_property -d overlays/ebf/.imx-fire-btwifi-overlay.dtbo.d.dtc.tmp overlays/ebf/.imx-fire-btwifi-overlay.dtbo.dts.tmp ; cat overlays/ebf/.imx-fire-btwifi-overlay.dtbo.d.pre.tmp overlays/ebf/.imx-fire-btwifi-overlay.dtbo.d.dtc.tmp > overlays/ebf/.imx-fire-btwifi-overlay.dtbo.d
imx-fire-btwifi-overlay.o: overlays/ebf/imx-fire-btwifi-overlay.dts \
 include/imx6ul-pinfunc.h include/imx6ull-pinfunc-snvs.h \
 include/dt-bindings/input/linux-event-codes.h \
 include/dt-bindings/gpio/gpio.h
overlays/ebf/imx-fire-btwifi-overlay.dtbo: overlays/ebf/.imx-fire-btwifi-overlay.dtbo.dts.tmp
