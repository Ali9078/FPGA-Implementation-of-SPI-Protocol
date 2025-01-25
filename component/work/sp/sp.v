//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Mon Nov  4 21:04:18 2024
// Version: 2023.2 2023.2.0.8
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// sp
module sp(
    // Inputs
    clock_in,
    miso,
    rs,
    // Outputs
    cs,
    mosi,
    sclk
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  clock_in;
input  miso;
input  rs;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output cs;
output mosi;
output sclk;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   clock_in;
wire   cs_net_0;
wire   miso;
wire   mosi_net_0;
wire   rs;
wire   sclk_net_0;
wire   cs_net_1;
wire   mosi_net_1;
wire   sclk_net_1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign cs_net_1   = cs_net_0;
assign cs         = cs_net_1;
assign mosi_net_1 = mosi_net_0;
assign mosi       = mosi_net_1;
assign sclk_net_1 = sclk_net_0;
assign sclk       = sclk_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------spi_master
spi_master spi_master_0(
        // Inputs
        .miso     ( miso ),
        .clock_in ( clock_in ),
        .rs       ( rs ),
        // Outputs
        .sclk     ( sclk_net_0 ),
        .mosi     ( mosi_net_0 ),
        .cs       ( cs_net_0 ) 
        );


endmodule
