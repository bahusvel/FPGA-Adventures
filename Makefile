MODULES=seg_driver

clean:
	rm $(MODULES) || true
	rm *.vcd || true

%: %.v %_tb.v
	iverilog $^ -o $@
	./$@

compile: clean $(MODULES)
