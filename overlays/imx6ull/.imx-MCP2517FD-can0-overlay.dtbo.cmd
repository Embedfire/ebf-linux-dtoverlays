cmd_overlays/imx6ull/imx-MCP2517FD-can0-overlay.dtbo = cpp -Wp,-MD,overlays/imx6ull/.imx-MCP2517FD-can0-overlay.dtbo.d.pre.tmp -nostdinc -Iinclude -Ioverlays/imx6ull -Ioverlays -Itestcase-data -undef -D__DTS__ -x assembler-with-cpp -o overlays/imx6ull/.imx-MCP2517FD-can0-overlay.dtbo.dts.tmp overlays/imx6ull/imx-MCP2517FD-can0-overlay.dts ; dtc -O dtb -o overlays/imx6ull/imx-MCP2517FD-can0-overlay.dtbo -b 0 -@ -i overlays/imx6ull -Wno-unit_address_vs_reg -Wno-dmas_property -Wno-gpios_property -Wno-pwms_property -Wno-interrupts_property -d overlays/imx6ull/.imx-MCP2517FD-can0-overlay.dtbo.d.dtc.tmp overlays/imx6ull/.imx-MCP2517FD-can0-overlay.dtbo.dts.tmp ; cat overlays/imx6ull/.imx-MCP2517FD-can0-overlay.dtbo.d.pre.tmp overlays/imx6ull/.imx-MCP2517FD-can0-overlay.dtbo.d.dtc.tmp > overlays/imx6ull/.imx-MCP2517FD-can0-overlay.dtbo.d
imx-MCP2517FD-can0-overlay.o: \
 overlays/imx6ull/imx-MCP2517FD-can0-overlay.dts include/imx6ul-pinfunc.h \
 include/imx6ull-pinfunc-snvs.h \
 include/dt-bindings/interrupt-controller/irq.h \
 include/dt-bindings/gpio/gpio.h
overlays/imx6ull/imx-MCP2517FD-can0-overlay.dtbo: overlays/imx6ull/.imx-MCP2517FD-can0-overlay.dtbo.dts.tmp
