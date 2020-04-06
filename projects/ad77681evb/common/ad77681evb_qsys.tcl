  # dma

  add_instance axi_dmac_0 axi_dmac
  set_instance_parameter_value axi_dmac_0 {DMA_DATA_WIDTH_SRC} {32}
  set_instance_parameter_value axi_dmac_0 {DMA_DATA_WIDTH_DEST} {64}
  set_instance_parameter_value axi_dmac_0 {DMA_2D_TRANSFER} {0}
  set_instance_parameter_value axi_dmac_0 {DMA_LENGTH_WIDTH} {24}
  set_instance_parameter_value axi_dmac_0 {AXI_SLICE_DEST} {0}
  set_instance_parameter_value axi_dmac_0 {AXI_SLICE_SRC} {0}
  set_instance_parameter_value axi_dmac_0 {SYNC_TRANSFER_START} {0}
  set_instance_parameter_value axi_dmac_0 {CYCLIC} {1}
  set_instance_parameter_value axi_dmac_0 {DMA_TYPE_DEST} {0}
  set_instance_parameter_value axi_dmac_0 {DMA_TYPE_SRC} {1}
  set_instance_parameter_value axi_dmac_0 {FIFO_SIZE} {8}
  set_instance_parameter_value axi_dmac_0 {HAS_AXIS_TLAST} {0}

  add_connection axi_dmac_0.m_dest_axi sys_hps.f2h_sdram0_data
  add_connection sys_clk.clk axi_dmac_0.if_s_axis_aclk
  add_connection sys_clk.clk axi_dmac_0.s_axi_clock
  add_connection sys_clk.clk_reset axi_dmac_0.m_dest_axi_reset
  add_connection sys_clk.clk_reset axi_dmac_0.s_axi_reset
  add_connection sys_dma_clk.clk axi_dmac_0.m_dest_axi_clock
  add_connection sys_dma_clk.clk_reset axi_dmac_0.m_dest_axi_reset
  set_interface_property s_axis EXPORT_OF axi_dmac_0.s_axis

  # cpu interconnects
  
  ad_cpu_interconnect 0x00020000 axi_dmac_0.s_axi
  
  #interrupts
 
  ad_cpu_interrupt 3 axi_dmac_0.interrupt_sender
                   

