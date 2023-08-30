# Secure and Reliable Memristor-based Chaotic Communication </br>
This repository contains various components related to the research papers and source codes of memristor-based chaotic communication against eavesdroppers and untrusted foundries.  </br>
Rahul Vishwakarma & Amin Rezaei </br>


# Contents </br>
* `paper`: publihsed papers based on the source code.  </br>
* `src/LTSpice`: files to simulate metristor-based chaotic communication along with memristor model (memristor.subckt). </br>
* `src/NI Multisim`: multisim version of the memristive chaotic communication. </br>
* `src/Simulink`: directory contains MATLAB SIMULINK files. These files enable the simulation of the chaotic circuit based on Chua's equation. Additionally, the directory includes files for hardware co-simulation using Xilinx System Generator, allowing for a combination of software-based simulation and hardware implementation using Xilinx FPGAs. </br>
* `src/vivado-boards`: provides files specifically designed for the Nexys A7 FPGA board. These files should be copied to the appropriate folder in the simulation environment to ensure compatibility with the Nexys A7 FPGA board. </br>

# FPGA Board </br>
* [Nexys A7: FPGA Trainer Board](https://digilent.com/shop/nexys-a7-fpga-trainer-board-recommended-for-ece-curriculum/)
# Software Version </br>
* MathWorks MATLAB® and Simulink®: R2020a </br>
* Vivado: 2020.1 </br>
* LTSpice for Windows x64: 17.1.8 </br>
* NI Multisim: 14.3 </br>

# Usage </br>
## 1. LTSpice model of memristor based chaotic communication. </br>
1. Copy the `memristor.subckt` from `src/LTSpice/memristor.subckt` to specific directory on local system. You can use the steps as mentioned [here](https://spiceman.net/ltspice-subcircuit-model-add/). </br>
2. Open the memristor-based Chua's chaotic transmitter and receiver in LTSpice and run the program. </br>
3. You will observe the double scroll attractor for the circuit. Furthermore, you can also observe the input and output signals. </br>

## 2. NI Multisim files for chaotic communication. </br>
1. Open the specific NI Multisim files from the directory `src/NI Multisim` to generate the output specific to the Figures in the research paper. </br>
   
## 3. Simulink model of Chua based chaotic circuit. </br>
The folder contains the simulink based simulation for various chaotic circuits.  </br>
1. Use the file `fx_v_TxRx_n7_imprv_final.slx` to run the simulation using Xilinx System Generator. make use you have already integrated XSG with Matlab (refer this [tutorial](https://docs.xilinx.com/r/en-US/ug897-vivado-sysgen-user/Installation)). </br>
2. This will create a Library for hardware co-simulation.
3. Connect the FPGA Board with the System and run the file `fx_v_n7_working.slx`. This will simulate the Tx and Rx with the FPGA board (hardware co-simulation).
4. Validate the input and output signals. 

# Citation
Journal Article:
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
```
Conference Article:
```
@INPROCEEDINGS{Chaos-Conference-2023,
  title={Attacks on Continuous Chaos Communication and Remedies for Resource Limited Devices},
  author={Vishwakarma, Rahul and Monani, Ravi and Rezaei, Amin and Sayadi, Hossein and Aliasgari, Mehrdad and Hedayatipour, Ava},
  booktitle={2023 24th International Symposium on Quality Electronic Design (ISQED)},   
  volume={},
  number={},
  pages={1-8},
  year={2023},
  doi={10.1109/ISQED57927.2023.10129355}
}
````
Related Talk:
```
@INPROCEEDINGS{Chaos-Talk-2022,
  title        = {Power of Chaos: Long-term Security for Post-quantum Era},
  year         = {2022},
  publisher    = {Zenodo},
  doi          = {10.5281/zenodo.7972950},
  url          = {https://doi.org/10.5281/zenodo.7972950}
}
```

