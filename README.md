# Reliable and secure memristor-based chaotic communication against eavesdroppers and untrusted foundries </br>
This repository consists of various components related to the research paper and source code.  </br>

# Contents </br>
* `paper`: publihsed papers based on the source code.  </br>
* `src/LTSpice`: files to simulate metristor based chaotic communication along with memristor model (memristor.subckt). </br>
* `src/NI Multisim`: multisim version of the memristive chaotic communication. </br>
* `src/Simulink`: directory contains MATLAB SIMULINK files. These files enable the simulation of the chaotic circuit based on Chua's equation. Additionally, the directory includes files for hardware co-simulation using Xilinx System Generator, allowing for a combination of software-based simulation and hardware implementation using Xilinx FPGAs. </br>
* `src/vivado-boards`: provides files specifically designed for the Artix-7 FPGA board. These files should be copied to the appropriate folder in the simulation environment to ensure compatibility with the Artix-7 FPGA board. </br>

# FPGA Board </br>
* [Arty A7-100T: Artix-7 FPGA Development Board](https://digilent.com/shop/arty-a7-100t-artix-7-fpga-development-board/)
# Software Version </br>
* MathWorks MATLAB® and Simulink®: R2020a </br>
* Vivado: 2020.1 </br>
* LTSpice for Windows x64: 17.1.8 </br>
* NI Multisim: 14.3 </br>

# Usage </br>
## 1. LTSpice model of memristor based chaotic communication. </br>
1. Copy the `memristor.subckt` from `src/LTSpice/memristor.subckt` to specific directory on local system. You can use the steps as mentioned [here](https://spiceman.net/ltspice-subcircuit-model-add/). </br>
2. Open the memristor based chau chaotic transmitter and receiver in LTSpice and run the program. </br>
3. You will observe the Double scroll attractor for the circuit. Furthermore, you can also observe the input and output signals. </br>

## 2. NI Multisim files for chaotic communication. </br>
1. Open the specific NI Multisim files from the directory `src/NI Multisim` to generate the output specific to the Figures in the research paper. </br>
   
## 3. Simulink model of chua based chaotic circuit. </br>
The folder contains the simulink based simulation for various chaotic circuits.  </br>
1. Use the file `fx_v_TxRx_n7_imprv_final.slx` to run the simulation using Xilinx System Generator. make use you have already integrated XSG with Matlab (refer this [tutorial](https://docs.xilinx.com/r/en-US/ug897-vivado-sysgen-user/Installation). </br>
2. This will create a Library for hardware co-simulation.
3. Connect the FPGA Board with the System and run the file `fx_v_n7_working.slx`. This will simulate the Tx and Rx with the FPGA board (hardware co-simulation).
4. validate the input and output signals. 

# Citation
```
@ARTICLE{Chaos-Journal-2023,
  title={Reliable and Secure Memristor-based Chaotic Communication Against Eavesdroppers and Untrusted Foundries},
  author={Vishwakarma, Rahul and Monani, Ravi and Hedayatipour, Ava and Rezaei, Amin},
  journal={Discover Internet of Things},
  volume={3},
  number={1},
  pages={2},
  year={2023},
  publisher={Springer}
  doi={10.1007/s43926-023-00029-2}
}

@INPROCEEDINGS{Chaos-Conference-2023,
  title={Attacks on Continuous Chaos Communication and Remedies for Resource Limited Devices},
  author={Vishwakarma, Rahul and Monani, Ravi and Rezaei, Amin and Sayadi, Hossein and Aliasgari, Mehrdad and Hedayatipour, Ava},
  booktitle={2023 24th International Symposium on Quality Electronic Design (ISQED)},   
  year={2023},
  volume={},
  number={},
  pages={1-8},
  doi={10.1109/ISQED57927.2023.10129355}}


@proceedings{vishwakarma_rahul_2022_7972950,
  title        = {{Power of Chaos: Long-term Security for Post-quantum Era}},
  year         = 2022,
  publisher    = {Zenodo},
  month        = sep,
  doi          = {10.5281/zenodo.7972950},
  url          = {https://doi.org/10.5281/zenodo.7972950}
}
```

