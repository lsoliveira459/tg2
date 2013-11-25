# Documentos da Xilinx
## Data Sheet (DS), Product Specification 
1. [DS123] **Platform Flash In-System Programmable Configuration PROMs** (v2.18)
2. [DS176] **7 Series FPGAs Memory Interface Solutions (v2.0)** (v2.00): Descreve os controladores gerados pelo MIS.
3. [DS180] **7 Series FPGAs Overview** (v1.14): Descreve os recursos das FPGAs da família 7.
4. [DS182] **Kintex-7 FPGAs Data Sheet: DC and AC Switching Characteristics** (v2.05): Descreve condições das entradas e saídas, inclusive de PLL.
5. [DS575] **LogiCORE IP XPS Multi-channel External Memory Controller (XPS MCH EMC)** (v3.1a): Descreve um IP de controlador para as interfaces MCH e PLB.
6. [DS583] **XPS SYSACE (System ACE) Interface Controller** (v1.1a): Explica o SysACE.
7. [DS817] **LogiCORE IP AXI HWICAP** (v2.3a): Explica como funciona o ICAP e ICAPE2 através da AXI4-Lite.
8. [DS843] **LogiCORE IP AXI Quad Serial Peripheral Interface (AXI Quad SPI)** (v2.0a): Explica como funciona o acesso a QSPI Flash através da AXI4-Lite.

## White Paper (WP)
1. [WP374] **Partial Reconfiguration of Xilinx FPGAs Using ISE Design Suite** (v1.02): Explica porque fazer reconfiguração dinâmica. Contém alguma informação por alto de como fazê-la e muitas imagens legais.
2. [WP375] **High Performance Computing Using FPGAs** (v1.00): Explica vantagens de se usar FPGAs.
2. [WP383] **Achieving High Performance DDR3 Data Rates** (v1.02): Descreve a implementação de um controlador DDR3 de alta performance.
2. [WP394] **Advancing the Use of FPGA Co-Processors through Platforms and High-Level Design Flows** (v1.00): Descreve as vantagens da aceleração de sistemas por FPGAs.

## Application Note (XAPP)
1. [XAPP058] **Xilinx In-System Programming Using an Embedded Microcontroller** (v4.01): Explica o processo de programar a FPGA usando um microcontrolador embarcado.
2. [XAPP463] **Using Block RAM in Spartan-3 Generation FPGAs** (v2.00): Explica como funcionam as _Block Rams_ em baixo nível.
3. [XAPP482] **MicroBlaze Platform Flash/PROM Boot Loader and User Data Storage** (v2.00): Descreve em baixo nível e em _software_ como carregar dados da memória Flash, seja código, dados de usuário ou informação de configuração.
4. [XAPP501] **Configuration Quick Start Guidelines** (v1.05): Explica os diversos processos de programação da FPGA.
5. [XAPP583] **Using a Microprocessor to Configure 7 Series FPGAs via Slave Serial or Slave SelectMAP Mode** (v1.00): Discute a programação de uma FPGA através de um microcontrolador usando uma interface Slave Serial ou Slave SelectMap.
5. [XAPP739] **AXI Multi-Ported Memory Controller** (v1.00): Explica como funciona o MPMC, usado quando muitos elementos precisam usar a mesma memória (DDR3). Demonstra como criar um DDR3 MPMC.
6. [XAPP789] **7 Series FPGAs AXI Multi-Port Memory Controller Using the Vivado Tools** (v1.00): Explica como funciona o MPMC, usado quando muitos elementos precisam usar a mesma memória (DDR3). Demonstra como criar um DDR3 MPMC.
7. [XAPP883] **Fast Configuration of PCI Express Technology through Partial Reconfiguration** (v1.00): Explica a metodologia para construção de um Fast PCIe Configuration Module (FPC), ou seja, uma configuração inicial e configurações customizáveis subsequentes.
8. [XAPP887] **PRC/EPRC: Data Integrity and Security Controller for Partial Reconfiguration** (v1.01): Descreve um controlador de verificação da integridade de dados. Interessante fazer esse CRC antes de passar os dados pro ICAP.
8. [XAPP951] **Configuring Xilinx FPGAs with SPI Serial Flash** (v1.03): Explica passo-a-passo e em baixo nível como programar a FPGA a partir da SPI Flash.
9. [XAPP963] **Using and Creating Flash Files for the MicroBlaze Development Kit - Spartan-3E Edition** (v1.01): Descreve como programar a memória Flash para ser usada pelo MicroBlaze.
10. [XAPP978] **FPGA Configuration from Flash PROMs on the Spartan-3E 1600E Board** (v1.2): Descreve os diferentes modos de configuração usando a memória Flash: BPI Up, BPI Down, SPI. Mostra o passo-a-passo de como _bootload_ um programa (_software_) da memória.
11. [XAPP1100] **MultiBoot with Virtex-5 FPGAs and Platform Flash XL** (v1.00): Mostra como configurar e reconfigurar a FPGA pelo ICAP.

## Product Guide (PG)
1. [PG100] **LogiCORE IP AXI EMC v2.0 - Product Guide for Vivado Design Suite** (v2.00)
2. [PG134] **LogiCORE IP AXI HWICAP v3.0 - Product Guide for Vivado Design Suite** (v3.0)

## User Guide (UG)
1. [UG111] **Embedded System Tools Reference Manual (EDK)** (v14.6): Explica os comandos e programas auxiliares do EDK.
2. [UG257] **MicroBlaze Development Kit Spartan-3E 1600E Edition User Guide** (v1.01): Mostra os recursos e configurações da Spartan-3E 1600E.
3. [UG258] **Getting Started with the MicroBlaze Development Kit - Spartan-3E 1600E Edition** (v1.03)
1. [UG470] **7 Series FPGAs Configuration User Guide** (v1.07): Explica as interfaces de configuração, inclusive a SelectMAP, que é similar a ICAP.
2. [UG625] **Constraints Guide** (v13.4): Explica alguns tipos de arquivos de restrições (UCF, etc).
3. [UG702] **Partial Reconfiguration User Guide** (v14.5): Explica tudo sobre reconfiguração parcial e muita coisa sobre reconfiguração dinâmica. Possui o _Design Flow_ e informações sobre a configuração de _bitstreams_ parciais.
3. [UG743] **Partial Reconfiguration Tutorial - PlanAhead Design Tool** (v14.6): Exemplo muito bom de reconfiguração dinâmica. Usa Virtex-6, mas é fácil adaptar.
4. [UG744] **Partial Reconfiguration of a Processor Tutorial** (v14.6): Tutorial mostrando como fazer um processador com um periférico reconfigurável.
3. [UG748] **Hierarchical Design Methodology Guide** (v14.5): Explica porque usar "-iobuf NO". Também apresenta muitas informações sobre partições e 
5. [UG768] **Xilinx 7 Series FPGA and Zynq-7000 All Programmable SoC Libraries Guide for HDL Designs** (v14.6): Contém todos os macros e primitivas, inclusive o ICAP.
6. [UG810] **KC705 Evaluation Board for the Kintex-7 FPGA User Guide** (v1.04): Explica os diversos componentes da KC705, inclusive os clocks, dando informação sobre os pinos e etc.
 
## Slides
1. [01_PR_Intro] **Introduction to Partial Reconfiguration Methodology**
2. [04_PR_Design] **Partial Reconfiguration Design Considerations**
3. [10_Driving] **Driving ICAP Resource**

# Artigos
1. [fpt09lai] **ICAP-I: A Reusable Interface for the Internal Reconfiguration of Xilinx FPGAs**
2. [fpt12vipin] **A High Speed Open Source Controller for FPGA Partial Reconﬁguration**: Artigo muito interessante, que descreve uma forma mais rápida de se realizar a autoreconfiguração. Ele usa DMA e ICAP para isso.

# Tutoriais
1. [microblaze_tutorial] **MicroBlaze Tutorial Creating a Simple Embedded System and Adding Custom Peripherals Using Xilinx EDK Software Tools**: Ensina basicamente como criar um sistema MicroBlaze.
2. [Bootloader] **SPI Flash Bootloader**: Tutorial um pouco confuso sobre como gerar o _bitstream_ para um _bootloader_ de configurações.

[DS123]: ./xilinx/ds/ds123.pdf
[DS176]: ./xilinx/ds/ds176.pdf
[DS180]: ./xilinx/ds/ds180.pdf
[DS182]: ./xilinx/ds/ds182.pdf
[DS575]: ./xilinx/ds/ds575.pdf
[DS583]: ./xilinx/ds/ds583.pdf
[DS817]: ./xilinx/ds/ds817.pdf
[DS843]: ./xilinx/ds/ds843.pdf

[WP374]: ./xilinx/wp/wp374.pdf
[WP375]: ./xilinx/wp/wp375.pdf
[WP383]: ./xilinx/wp/wp383.pdf
[WP394]: ./xilinx/wp/wp394.pdf

[XAPP058]: ./xilinx/xapp/xapp058.pdf
[XAPP463]: ./xilinx/xapp/xapp463.pdf
[XAPP482]: ./xilinx/xapp/xapp482.pdf
[XAPP501]: ./xilinx/xapp/xapp501.pdf
[XAPP583]: ./xilinx/xapp/xapp583.pdf
[XAPP739]: ./xilinx/xapp/xapp739.pdf
[XAPP789]: ./xilinx/xapp/xapp789.pdf
[XAPP883]: ./xilinx/xapp/xapp883.pdf
[XAPP887]: ./xilinx/xapp/xapp887.pdf
[XAPP951]: ./xilinx/xapp/xapp951.pdf
[XAPP963]: ./xilinx/xapp/xapp963.pdf
[XAPP978]: ./xilinx/xapp/xapp978.pdf
[XAPP1100]: ./xilinx/xapp/xapp1100.pdf

[PG100]: ./xilinx/pg/pg100.pdf
[PG134]: ./xilinx/pg/pg134.pdf

[UG111]: ./xilinx/ug/ug111.pdf
[UG257]: ./xilinx/ug/ug257.pdf
[UG258]: ./xilinx/ug/ug258.pdf
[UG470]: ./xilinx/ug/ug470.pdf
[UG625]: ./xilinx/ug/ug625.pdf
[UG702]: ./xilinx/ug/ug702.pdf
[UG743]: ./xilinx/ug/ug743.pdf
[UG748]: ./xilinx/ug/ug748.pdf
[UG744]: ./xilinx/ug/ug744.pdf
[UG768]: ./xilinx/ug/ug768.pdf
[UG810]: ./xilinx/ug/ug810.pdf

[01_PR_Intro]: 	./xilinx/others/01_PR_Intro.pdf
[04_PR_Design]: ./xilinx/others/04_PR_Design.pdf
[10_Driving]: 	./xilinx/others/10_Driving.pdf

[fpt09lai]: 	./Artigos/fpt09lai.pdf
[fpt12vipin]: 	./Artigos/fpt12vipin.pdf

[microblaze_tutorial]: 	./Tutoriais/microblaze_tutorial.pdf
[Bootloader]: 			./Tutoriais/Bootloader.pdf