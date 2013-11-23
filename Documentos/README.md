# Documentos da Xilinx
## Data Sheet (DS), Product Specification 
1. [DS123] (v2.18) **Platform Flash In-System Programmable Configuration PROMs**
2. [DS176] (v2.00) **7 Series FPGAs Memory Interface Solutions (v2.0)**: Descreve os controladores gerados pelo MIS.
3. [DS180] (v1.14) **7 Series FPGAs Overview**: Descreve os recursos das FPGAs da família 7.
4. [DS182] (v2.05) **Kintex-7 FPGAs Data Sheet: DC and AC Switching Characteristics**: Descreve condições das entradas e saídas, inclusive de PLL.
5. [DS575] (v3.1a) **LogiCORE IP XPS Multi-channel External Memory Controller (XPS MCH EMC)**: Descreve um IP de controlador para as interfaces MCH e PLB.
6. [DS583] (v1.1a) **XPS SYSACE (System ACE) Interface Controller**: Explica o SysACE.
7. [DS817] (v2.3a) **LogiCORE IP AXI HWICAP**: Explica como funciona o ICAP e ICAPE2 através da AXI4-Lite.
8. [DS843] (c2.0a) **LogiCORE IP AXI Quad Serial Peripheral Interface (AXI Quad SPI)**: Explica como funciona o acesso a QSPI Flash através da AXI4-Lite.

## White Paper (WP)
1. [WP374] (v1.02) **Partial Reconfiguration of Xilinx FPGAs Using ISE Design Suite**: Explica porque fazer reconfiguração dinâmica. Contém alguma informação por alto de como fazê-la e muitas imagens legais.
2. [WP383] (v1.02) **Achieving High Performance DDR3 Data Rates**: Descreve a implementação de um controlador DDR3 de alta performance.

## Application Note (XAPP)
1. [XAPP058] (v4.01) **Xilinx In-System Programming Using an Embedded Microcontroller**: Explica o processo de programar a FPGA usando um microcontrolador embarcado.
2. [XAPP463] (v2.00) **Using Block RAM in Spartan-3 Generation FPGAs**: Explica como funcionam as _Block Rams_ em baixo nível.
3. [XAPP482] (v2.00) **MicroBlaze Platform Flash/PROM Boot Loader and User Data Storage**: Descreve em baixo nível e em _software_ como carregar dados da memória Flash, seja código, dados de usuário ou informação de configuração.
4. [XAPP501] (v1.05) **Configuration Quick Start Guidelines**: Explica os diversos processos de programação da FPGA.
5. [XAPP583] (v1.00) **Using a Microprocessor to Configure 7 Series FPGAs via Slave Serial or Slave SelectMAP Mode**: Discute a programação de uma FPGA através de um microcontrolador usando uma interface Slave Serial ou Slave SelectMap.
5. [XAPP739] (v1.00) **AXI Multi-Ported Memory Controller**: Explica como funciona o MPMC, usado quando muitos elementos precisam usar a mesma memória (DDR3). Demonstra como criar um DDR3 MPMC.
6. [XAPP789] (v1.00) **7 Series FPGAs AXI Multi-Port Memory Controller Using the Vivado Tools**: Explica como funciona o MPMC, usado quando muitos elementos precisam usar a mesma memória (DDR3). Demonstra como criar um DDR3 MPMC.
7. [XAPP883] (v1.00) **Fast Configuration of PCI Express Technology through Partial Reconfiguration**: Explica a metodologia para construção de um Fast PCIe Configuration Module (FPC), ou seja, uma configuração inicial e configurações customizáveis subsequentes.
8. [XAPP887] (v1.01) **PRC/EPRC: Data Integrity and Security Controller for Partial Reconfiguration**: Descreve um controlador de verificação da integridade de dados. Interessante fazer esse CRC antes de passar os dados pro ICAP.
8. [XAPP951] (v1.03) **Configuring Xilinx FPGAs with SPI Serial Flash**: Explica passo-a-passo e em baixo nível como programar a FPGA a partir da SPI Flash.
9. [XAPP963] (v1.01) **Using and Creating Flash Files for the MicroBlaze Development Kit - Spartan-3E Edition**: Descreve como programar a memória Flash para ser usada pelo MicroBlaze.
10. [XAPP978] (v1.2) **FPGA Configuration from Flash PROMs on the Spartan-3E 1600E Board**: Descreve os diferentes modos de configuração usando a memória Flash: BPI Up, BPI Down, SPI. Mostra o passo-a-passo de como _bootload_ um programa (_software_) da memória.

## Product Guide (PG)
1. [PG100] (v2.00) **LogiCORE IP AXI EMC v2.0 - Product Guide for Vivado Design Suite**
2. [PG134] (v3.0) **LogiCORE IP AXI HWICAP v3.0 - Product Guide for Vivado Design Suite**

## User Guide (UG)
- [UG470] (v1.07) **7 Series FPGAs Configuration User Guide**: Explica as interfaces de configuração, inclusive a SelectMAP, que é similar a ICAP.
- [UG625] (v13.4) **Constraints Guide**: Explica alguns tipos de arquivos de restrições (UCF, etc).
- [UG702] (v14.5) **Partial Reconfiguration User Guide**: Explica tudo sobre reconfiguração parcial e muita coisa sobre reconfiguração dinâmica. Possui o _Design Flow_ e informações sobre a configuração de _bitstreams_ parciais.
- [UG744] (v14.6) **Partial Reconfiguration of a Processor Tutorial**: Tutorial mostrando como fazer um processador com um periférico reconfigurável.
- [UG768] (v14.6) **Xilinx 7 Series FPGA and Zynq-7000 All Programmable SoC Libraries Guide for HDL Designs**: Contém todos os macros e primitivas, inclusive o ICAP.
 

# Artigos
1. [ftp09lai](./Artigos/ftp09lai.pdf) **ICAP-I: A Reusable Interface for the Internal Reconfiguration of Xilinx FPGAs**: Artigo muito interessante, que descreve uma forma mais rápida de se realizar a autoreconfiguração. Ele usa DMA e ICAP para isso.
