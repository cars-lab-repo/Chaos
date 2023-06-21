addpath([getenv('XILINX_VIVADO') '/scripts/sysgen/matlab']);

xilinx.environment.setBoardFileRepos({'C:\Xilinx\Vivado\2020.2\data\boards\board_files\'});
xilinx.environment.getboardpartinfo({'C:\Xilinx\Vivado\2020.2\data\boards\board_parts\artix7\basys3\1.1'});