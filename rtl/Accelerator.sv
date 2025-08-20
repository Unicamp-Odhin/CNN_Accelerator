module Accelerator #(
    parameter DATA_WIDTH = 256,
    parameter ADDR_WIDTH = 32,
    parameter CTRL_WIDTH = 32
) (
    input  logic                     clk,
    input  logic                     rst_n,

    // Control port
    input  logic                     control_cyc_o,
    input  logic                     control_stb_o,
    input  logic                     control_we_o,
    output logic                     control_ack_i,
    input  logic [ADDR_WIDTH - 1: 0] control_addr_o,
    input  logic [CTRL_WIDTH - 1: 0] control_mosi_o,
    output logic [CTRL_WIDTH - 1: 0] control_miso_i,

    output logic done_interrupt_o,

    // Cache port
    output logic                     cache_cyc_o,
    output logic                     cache_stb_o,
    output logic                     cache_we_o,
    input  logic                     cache_ack_i,
    output logic [ADDR_WIDTH - 1: 0] cache_addr_o,
    output logic [DATA_WIDTH - 1: 0] cache_mosi_o,
    input  logic [DATA_WIDTH - 1: 0] cache_miso_i,
    output logic               [2:0] cache_cti_o,
    output logic               [1:0] cache_bte_o,

    // Samples Buffer port
    output logic                     samples_cyc_o,
    output logic                     samples_stb_o,
    output logic                     samples_we_o,
    input  logic                     samples_ack_i,
    output logic [ADDR_WIDTH - 1: 0] samples_addr_o,
    output logic [DATA_WIDTH - 1: 0] samples_mosi_o,
    input  logic [DATA_WIDTH - 1: 0] samples_miso_i,
    output logic               [2:0] samples_cti_o,
    output logic               [1:0] samples_bte_o
);
    
endmodule
