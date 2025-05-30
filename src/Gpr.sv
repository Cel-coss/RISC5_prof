// Generated by CIRCT firtool-1.62.0
module Gpr(
  input         clock,
  input  [3:0]  io_b_read_0_addr,
  output [31:0] io_b_read_0_data,
  input  [3:0]  io_b_read_1_addr,
  output [31:0] io_b_read_1_data,
  input         io_b_write_en,
  input  [3:0]  io_b_write_addr,
  input  [31:0] io_b_write_data
);

  reg  [31:0]       r_gpr_0;
  reg  [31:0]       r_gpr_1;
  reg  [31:0]       r_gpr_2;
  reg  [31:0]       r_gpr_3;
  reg  [31:0]       r_gpr_4;
  reg  [31:0]       r_gpr_5;
  reg  [31:0]       r_gpr_6;
  reg  [31:0]       r_gpr_7;
  reg  [31:0]       r_gpr_8;
  reg  [31:0]       r_gpr_9;
  reg  [31:0]       r_gpr_10;
  reg  [31:0]       r_gpr_11;
  reg  [31:0]       r_gpr_12;
  reg  [31:0]       r_gpr_13;
  reg  [31:0]       r_gpr_14;
  reg  [31:0]       r_gpr_15;
  wire [15:0][31:0] _GEN =
    {{r_gpr_15},
     {r_gpr_14},
     {r_gpr_13},
     {r_gpr_12},
     {r_gpr_11},
     {r_gpr_10},
     {r_gpr_9},
     {r_gpr_8},
     {r_gpr_7},
     {r_gpr_6},
     {r_gpr_5},
     {r_gpr_4},
     {r_gpr_3},
     {r_gpr_2},
     {r_gpr_1},
     {r_gpr_0}};
  always @(posedge clock) begin
    r_gpr_0 <= 32'h0;
    if (io_b_write_en & io_b_write_addr == 4'h1)
      r_gpr_1 <= io_b_write_data;
    if (io_b_write_en & io_b_write_addr == 4'h2)
      r_gpr_2 <= io_b_write_data;
    if (io_b_write_en & io_b_write_addr == 4'h3)
      r_gpr_3 <= io_b_write_data;
    if (io_b_write_en & io_b_write_addr == 4'h4)
      r_gpr_4 <= io_b_write_data;
    if (io_b_write_en & io_b_write_addr == 4'h5)
      r_gpr_5 <= io_b_write_data;
    if (io_b_write_en & io_b_write_addr == 4'h6)
      r_gpr_6 <= io_b_write_data;
    if (io_b_write_en & io_b_write_addr == 4'h7)
      r_gpr_7 <= io_b_write_data;
    if (io_b_write_en & io_b_write_addr == 4'h8)
      r_gpr_8 <= io_b_write_data;
    if (io_b_write_en & io_b_write_addr == 4'h9)
      r_gpr_9 <= io_b_write_data;
    if (io_b_write_en & io_b_write_addr == 4'hA)
      r_gpr_10 <= io_b_write_data;
    if (io_b_write_en & io_b_write_addr == 4'hB)
      r_gpr_11 <= io_b_write_data;
    if (io_b_write_en & io_b_write_addr == 4'hC)
      r_gpr_12 <= io_b_write_data;
    if (io_b_write_en & io_b_write_addr == 4'hD)
      r_gpr_13 <= io_b_write_data;
    if (io_b_write_en & io_b_write_addr == 4'hE)
      r_gpr_14 <= io_b_write_data;
    if (io_b_write_en & (&io_b_write_addr))
      r_gpr_15 <= io_b_write_data;
  end // always @(posedge)
  assign io_b_read_0_data = (|io_b_read_0_addr) ? _GEN[io_b_read_0_addr] : 32'h0;
  assign io_b_read_1_data = (|io_b_read_1_addr) ? _GEN[io_b_read_1_addr] : 32'h0;
endmodule

