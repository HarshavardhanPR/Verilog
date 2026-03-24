`timescale 1ns / 1ps
module tb_ram_sp_sr_sw;
    // -------------------------------------------------------
    // Parameters
    // -------------------------------------------------------
    localparam DATA_WIDTH = 8;
    localparam ADDR_WIDTH = 8;
    localparam RAM_DEPTH  = 1 << ADDR_WIDTH;
    // -------------------------------------------------------
    // Testbench signals
    // -------------------------------------------------------
    reg                     clk;
    reg [ADDR_WIDTH-1:0]    address;
    reg                     cs;
    reg                     we;
    reg                     oe;
    // Tri‑state data bus
    wire [DATA_WIDTH-1:0]   data;
    reg  [DATA_WIDTH-1:0]   tb_data_drv;     // drives data bus during writes
    assign data = (we && cs) ? tb_data_drv : {DATA_WIDTH{1'bz}};
    // -------------------------------------------------------
    // DUT instantiation
    // -------------------------------------------------------
    ram_sp_sr_sw #(
        .DATA_WIDTH(DATA_WIDTH),
        .ADDR_WIDTH(ADDR_WIDTH)
    ) dut (
        .clk(clk),
        .address(address),
        .data(data),
        .cs(cs),
        .we(we),
        .oe(oe)
    );
    // -------------------------------------------------------
    // Clock generation
    // -------------------------------------------------------
    initial clk = 0;
    always #5 clk = ~clk;       // 100 MHz clock
    // -------------------------------------------------------
    // Main stimulus
    // -------------------------------------------------------
    initial begin
        $display("----- STARTING RAM TEST -----");
        // Initial conditions
        cs = 0;
        we = 0;
        oe = 0;
        tb_data_drv = 8'hZZ;
        address = 0;
        @(posedge clk);
        // -------------------------------
        // Write to RAM: address 10 = 0xA5
        // -------------------------------
        @(negedge clk);
        cs = 1;
        we = 1;     // write mode
        oe = 0;
        address = 8'd10;
        tb_data_drv = 8'hA5;
        @(posedge clk);   // write happens here
        // Stop driving data after write
        @(negedge clk);
        we = 0;
        tb_data_drv = 8'hZZ;
        // -------------------------------
        // Read from address 10
        // -------------------------------
        @(negedge clk);
        oe = 1;     // enable output
        @(posedge clk);   // read happens here
        #1;
        $display("READ @10 -> %h (expected A5)", data);
        // -------------------------------
        // More writes
        // -------------------------------
        @(negedge clk);
        we = 1; oe = 0;
        address = 8'd20;
        tb_data_drv = 8'h3C;
        @(posedge clk);
        @(negedge clk);
        we = 0;
        tb_data_drv = 8'hZZ;
        oe = 1;
        @(posedge clk);   // read 20
        #1;
        $display("READ @20 -> %h (expected 3C)", data);
        // -------------------------------
        // Finish simulation
        // -------------------------------
        #20;
        $display("----- RAM TEST COMPLETE -----");
        $finish;
    end
    // -------------------------------------------------------
    // Dump waves
    // -------------------------------------------------------
    initial begin
        $dumpfile("ram_sp_sr_sw_tb.vcd");
        $dumpvars(0, tb_ram_sp_sr_sw);
    end
endmodule
