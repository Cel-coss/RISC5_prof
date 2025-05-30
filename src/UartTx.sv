// Generated by CIRCT firtool-1.62.0
module UartTx(
  input         clock,
                reset,
  input  [15:0] io_i_ncycle,
  output        io_o_ready,
  input         io_i_valid,
  input  [7:0]  io_i_data,
  output        io_o_tx
);

  reg  [1:0]       r_cstate;
  reg  [7:0]       r_data;
  reg  [2:0]       r_bit_cnt;
  reg  [15:0]      r_cycle_cnt;
  reg              r_tx;
  wire             io_o_ready_0 = r_cstate == 2'h0;
  wire             _GEN = r_cstate == 2'h1;
  wire             _GEN_0 = r_cycle_cnt == io_i_ncycle;
  wire             _GEN_1 = r_cstate == 2'h2;
  wire             _GEN_2 = _GEN_1 & _GEN_0;
  wire [3:0][1:0]  _GEN_3 =
    {{(&r_cstate) & _GEN_0 ? 2'h0 : r_cstate},
     {_GEN_0 & (&r_bit_cnt) ? 2'h3 : r_cstate},
     {_GEN_0 ? 2'h2 : r_cstate},
     {io_i_valid ? 2'h1 : r_cstate}};
  wire [3:0][15:0] _GEN_4 =
    {{_GEN_0 ? 16'h0 : r_cycle_cnt + 16'h1},
     {_GEN_0 ? 16'h0 : r_cycle_cnt + 16'h1},
     {_GEN_0 ? 16'h0 : r_cycle_cnt + 16'h1},
     {16'h0}};
  always @(posedge clock) begin
    if (reset) begin
      r_cstate <= 2'h0;
      r_tx <= 1'h1;
    end
    else begin
      r_cstate <= _GEN_3[r_cstate];
      r_tx <= io_o_ready_0 | ~_GEN & (_GEN_1 ? r_data[0] : (&r_cstate) | r_tx);
    end
    if (io_o_ready_0)
      r_data <= io_i_data;
    else if (_GEN | ~_GEN_2) begin
    end
    else
      r_data <= {1'h0, r_data[7:1]};
    if (io_o_ready_0 | _GEN)
      r_bit_cnt <= 3'h0;
    else if (_GEN_2) begin
      if (&r_bit_cnt)
        r_bit_cnt <= 3'h0;
      else
        r_bit_cnt <= r_bit_cnt + 3'h1;
    end
    r_cycle_cnt <= _GEN_4[r_cstate];
  end // always @(posedge)
  assign io_o_ready = io_o_ready_0;
  assign io_o_tx = r_tx;
endmodule

