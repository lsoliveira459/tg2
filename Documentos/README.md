### Documentos da Xilinx
#### Data Sheet (DS), Product Specification
1. [DS080] **System ACE CompactFlash Solution** (v2.00): Explica o funcionamento do controlador do System ACE.
1. [DS123] **Platform Flash In-System Programmable Configuration PROMs** (v2.18)
2. [DS176] **7 Series FPGAs Memory Interface Solutions (v2.0)** (v2.00): Descreve os controladores gerados pelo MIS.
3. [DS180] **7 Series FPGAs Overview** (v1.14): Descreve os recursos das FPGAs da família 7.
4. [DS182] **Kintex-7 FPGAs Data Sheet: DC and AC Switching Characteristics** (v2.05): Descreve condições das entradas e saídas, inclusive de PLL.
5. [DS575] **LogiCORE IP XPS Multi-channel External Memory Controller (XPS MCH EMC)** (v3.1a): Descreve um IP de controlador para as interfaces MCH e PLB.
6. [DS583] **XPS SYSACE (System ACE) Interface Controller** (v1.1a): Explica o SysACE.
6. [DS765] **LogiCORE IP AXI4-Lite IPIF** (v1.1a): Explica como acessar o AXI Interconnect através do AXI4-Lite IPIF.
7. [DS817] **LogiCORE IP AXI HWICAP** (v2.3a): Explica como funciona o ICAP e ICAPE2 através da AXI4-Lite.
8. [DS843] **LogiCORE IP AXI Quad Serial Peripheral Interface (AXI Quad SPI)** (v2.0a): Explica como funciona o acesso a QSPI Flash através da AXI4-Lite.

#### Application Note (XAPP)
1. [XAPP058] **Xilinx In-System Programming Using an Embedded Microcontroller** (v4.01): Explica o processo de programar a FPGA usando um microcontrolador embarcado.
1. [XAPP290] **Difference-Based Partial Reconfiguration** (v2.00): Possível modificação. _**Acrescentar na conclusão**_!
2. [XAPP463] **Using Block RAM in Spartan-3 Generation FPGAs** (v2.00): Explica como funcionam as _Block Rams_ em baixo nível.
3. [XAPP468] **Fail-Safe MultiBoot Reference Design** (v1.01): Explica os campos do arquivo de dados.
3. [XAPP482] **MicroBlaze Platform Flash/PROM Boot Loader and User Data Storage** (v2.00): Descreve em baixo nível e em _software_ como carregar dados da memória Flash, seja código, dados de usuário ou informação de configuração.
4. [XAPP501] **Configuration Quick Start Guidelines** (v1.05): Explica os diversos processos de programação da FPGA.
4. [XAPP502] **Using a Microprocessor to Configure Xilinx FPGAs via Slave Serial or SelectMAP Mode** (v1.6.1): Explica a interface SelectMAP de uma forma +/- legal.
5. [XAPP583] **Using a Microprocessor to Configure 7 Series FPGAs via Slave Serial or Slave SelectMAP Mode** (v1.00): Discute a programação de uma FPGA através de um microcontrolador usando uma interface Slave Serial ou Slave SelectMap.
5. [XAPP586] **Using SPI Flash with 7 Series FPGAs** (v1.01): Explica como funciona a memória SPI Flash, inclusive como calcular sua frequência de operação. Também ensina como forçar o uso da interface SPI x4 através do "-g spi_buswidth: 1|2|4".
6. [XAPP694] **Reading User Data from Configuration PROMs** (v1.1.1): Explica como programar PROMs (SPI Flash, BPI Flash, etc) com dados arbitrários. Parece muito interessante!
5. [XAPP739] **AXI Multi-Ported Memory Controller** (v1.00): Explica como funciona o MPMC, usado quando muitos elementos precisam usar a mesma memória (DDR3). Demonstra como criar um DDR3 MPMC.
6. [XAPP789] **7 Series FPGAs AXI Multi-Port Memory Controller Using the Vivado Tools** (v1.00): Explica como funciona o MPMC, usado quando muitos elementos precisam usar a mesma memória (DDR3). Demonstra como criar um DDR3 MPMC.
6. [XAPP800] **Configuring Xilinx FPGAs with SPI Flash Memories Using CoolRunner-II CPLDs** (v1.1.1): Uma boa explicação de "_SPI Memory as FPGA User Space_".
7. [XAPP883] **Fast Configuration of PCI Express Technology through Partial Reconfiguration** (v1.00): Explica a metodologia para construção de um Fast PCIe Configuration Module (FPC), ou seja, uma configuração inicial e configurações customizáveis subsequentes.
8. [XAPP887] **PRC/EPRC: Data Integrity and Security Controller for Partial Reconfiguration** (v1.01): Descreve um controlador de verificação da integridade de dados. Interessante fazer esse CRC antes de passar os dados pro ICAP.
8. [XAPP951] **Configuring Xilinx FPGAs with SPI Serial Flash** (v1.03): Explica passo-a-passo e em baixo nível como programar a FPGA a partir da SPI Flash.
9. [XAPP963] **Using and Creating Flash Files for the MicroBlaze Development Kit - Spartan-3E Edition** (v1.01): Descreve como programar a memória Flash para ser usada pelo MicroBlaze.
10. [XAPP978] **FPGA Configuration from Flash PROMs on the Spartan-3E 1600E Board** (v1.2): Descreve os diferentes modos de configuração usando a memória Flash: BPI Up, BPI Down, SPI. Mostra o passo-a-passo de como _bootload_ um programa (_software_) da memória.
11. [XAPP1100] **MultiBoot with Virtex-5 FPGAs and Platform Flash XL** (v1.00): Mostra como configurar e reconfigurar a FPGA pelo ICAP.
12. [XAPP1176] **Execute-in-Place (XIP) with AXI Quad SPI Using Vivado IP Integrator** (v1.00)

#### Product Guide (PG)
1. [PG100] **LogiCORE IP AXI EMC v2.0 - Product Guide for Vivado Design Suite** (v2.00)
2. [PG134] **LogiCORE IP AXI HWICAP v3.0 - Product Guide for Vivado Design Suite** (v3.0)

#### User Guide (UG)
1. [UG081] **MicroBlaze Processor Reference Guide - Embedded Development Kit EDK 14.6** (v14.6): Informações de memória e registradores da interface AXI4.
1. [UG111] **Embedded System Tools Reference Manual (EDK)** (v14.6): Explica os comandos e programas auxiliares do EDK.
1. [UG161] **Platform Flash PROM User Guide** (v1.05): Explica como criar um arquivo de PROM para carregar para a memória SPI Flash.
2. [UG257] **MicroBlaze Development Kit Spartan-3E 1600E Edition User Guide** (v1.01): Mostra os recursos e configurações da Spartan-3E 1600E.
3. [UG258] **Getting Started with the MicroBlaze Development Kit - Spartan-3E 1600E Edition** (v1.03)
1. [UG470] **7 Series FPGAs Configuration User Guide** (v1.07): Explica as interfaces de configuração, inclusive a SelectMAP, que é similar a ICAP.
1. [UG473] **7 Series FPGAs Memory Resources User Guide** (v1.09): Explica a Block RAM.
1. [UG586] **7 Series FPGAs Memory Interface Solutions v1.9 and v1.9a User Guide** (v1.09):  
2. [UG625] **Constraints Guide** (v13.4): Explica alguns tipos de arquivos de restrições (UCF, etc).
2. [UG628] **Command Line Tools User Guide** (v14.5): Explica o comando BitGen.
3. [UG631] **ISE Design Suite 14: Release Notes, Installation, and Licensing** (v14.6):
3. [UG658] **Data2MEM User Guide** (v2012.4): Como inicializar as block rams do processador com um arquivo elf (binário do SDK) para gerar um bitfile final.
4. [UG687] **XST User Guide for Virtex-6, Spartan-6, and 7 Series Devices** (v14.5): Explica o XST.
3. [UG695] **ISE In-Depth Tutorial** (v14.1):
3. [UG702] **Partial Reconfiguration User Guide** (v14.5): Explica tudo sobre reconfiguração parcial e muita coisa sobre reconfiguração dinâmica. Possui o _Design Flow_ e informações sobre a configuração de _bitstreams_ parciais.
3. [UG743] **Partial Reconfiguration Tutorial - PlanAhead Design Tool** (v14.6): Exemplo muito bom de reconfiguração dinâmica. Usa Virtex-6, mas é fácil adaptar.
4. [UG744] **Partial Reconfiguration of a Processor Tutorial** (v14.6): Tutorial mostrando como fazer um processador com um periférico reconfigurável.
3. [UG748] **Hierarchical Design Methodology Guide** (v14.5): Explica porque usar "-iobuf NO". Também apresenta muitas informações sobre partições e 
4. [UG761] **AXI Reference Guide** (v14.3): Explica a interface AXI.
5. [UG768] **Xilinx 7 Series FPGA and Zynq-7000 All Programmable SoC Libraries Guide for HDL Designs** (v14.6): Contém todos os macros e primitivas, inclusive o ICAP.
5. [UG789] **PlanAhead Tcl Command Reference Guide** (v14.6): Como usar o iMPACT por linha de comando.
6. [UG810] **KC705 Evaluation Board for the Kintex-7 FPGA User Guide** (v1.04): Explica os diversos componentes da KC705, inclusive os clocks, dando informação sobre os pinos e etc.

#### White Paper (WP)
1. [WP374] **Partial Reconfiguration of Xilinx FPGAs Using ISE Design Suite** (v1.02): Explica porque fazer reconfiguração dinâmica. Contém alguma informação por alto de como fazê-la e muitas imagens legais.
2. [WP375] **High Performance Computing Using FPGAs** (v1.00): Explica vantagens de se usar FPGAs.
2. [WP377] **Xilinx 7 Series FPGAs Embedded Memory Advantages** (v1.01): Explica vantagens de se usar FPGAs.
2. [WP383] **Achieving High Performance DDR3 Data Rates** (v1.02): Descreve a implementação de um controlador DDR3 de alta performance.
2. [WP394] **Advancing the Use of FPGA Co-Processors through Platforms and High-Level Design Flows** (v1.00): Descreve as vantagens da aceleração de sistemas por FPGAs.
3. [WP417] **Maximize System Performance Using Xilinx Based AXI4 Interconnects** (v1.01): Como otimizar a AXI4.
 
#### Slides
1. [01_PR_Intro] **Introduction to Partial Reconfiguration Methodology**
2. [04_PR_Design] **Partial Reconfiguration Design Considerations**
3. [10_Driving] **Driving ICAP Resource**

#### Outros
1. [XTP025] **IP Release Notes Guide** (v4.03): Release note dos diferente IP Cores.
2. [XTP104] **KC705 MultiBoot Design** v(14.2): Explica alguns detalhes do MultiBoot e do mapeamento de ELF em BMM através do BitGen.

#### SW Manuals
1. [Project Files](http://www.xilinx.com/support/documentation/sw_manuals/xilinx14_6/platform_studio/ps_r_gst_project_files.htm) **XPS Project Files** (v14.6): Explica onde mudar as informações do BitGen mesmo no XPS.

### Artigos
1. [fpt09lai] **ICAP-I: A Reusable Interface for the Internal Reconfiguration of Xilinx FPGAs**
2. [fpt12vipin] **A High Speed Open Source Controller for FPGA Partial Reconﬁguration**: Artigo muito interessante, que descreve uma forma mais rápida de se realizar a autoreconfiguração. Ele usa DMA e ICAP para isso.

### Tutoriais
1. [microblaze_tutorial] **MicroBlaze Tutorial Creating a Simple Embedded System and Adding Custom Peripherals Using Xilinx EDK Software Tools**: Ensina basicamente como criar um sistema MicroBlaze.
2. [Bootloader] **SPI Flash Bootloader**: Tutorial um pouco confuso sobre como gerar o _bitstream_ para um _bootloader_ de configurações.
3. [fmt_xilinxbit] **Xilinx BIT bitstream files**: Explica muito grosseiramente o que compõe o cabeçalho do bitstream da Xilinx.
4. [kc705_qspi_flash_bootload] **QSPI Flash Memory Bootloading In Standard SPI Mode with KC705 Platform**: Tutorial um pouco esclarecedor sobre a programação de memórias QSPI Flash.

### Datasheets
1. [N25Q128] **N25Q128: 128-Mbit 3 V, multiple I/O, 4-Kbyte subsector erase on boot sectors, XiP enabled, serial flash memory with 108 MHz SPI bus interface**: Datasheet da memória SPI Flash.

[DS080]: ./Xilinx/ds/ds080.pdf
[DS123]: ./Xilinx/ds/ds123.pdf
[DS176]: ./Xilinx/ds/ds176.pdf
[DS180]: ./Xilinx/ds/ds180.pdf
[DS182]: ./Xilinx/ds/ds182.pdf
[DS575]: ./Xilinx/ds/ds575.pdf
[DS583]: ./Xilinx/ds/ds583.pdf
[DS765]: ./Xilinx/ds/ds765.pdf
[DS817]: ./Xilinx/ds/ds817.pdf
[DS843]: ./Xilinx/ds/ds843.pdf

[WP374]: ./Xilinx/wp/wp374.pdf
[WP375]: ./Xilinx/wp/wp375.pdf
[WP377]: ./Xilinx/wp/wp377.pdf
[WP383]: ./Xilinx/wp/wp383.pdf
[WP394]: ./Xilinx/wp/wp394.pdf
[WP417]: ./Xilinx/wp/wp417.pdf

[XAPP058]: ./Xilinx/xapp/xapp058.pdf
[XAPP290]: ./Xilinx/xapp/xapp290.pdf
[XAPP463]: ./Xilinx/xapp/xapp463.pdf
[XAPP468]: ./Xilinx/xapp/xapp468.pdf
[XAPP482]: ./Xilinx/xapp/xapp482.pdf
[XAPP501]: ./Xilinx/xapp/xapp501.pdf
[XAPP502]: ./Xilinx/xapp/xapp502.pdf
[XAPP583]: ./Xilinx/xapp/xapp583.pdf
[XAPP586]: ./Xilinx/xapp/xapp586.pdf
[XAPP694]: ./Xilinx/xapp/xapp694.pdf
[XAPP739]: ./Xilinx/xapp/xapp739.pdf
[XAPP789]: ./Xilinx/xapp/xapp789.pdf
[XAPP800]: ./Xilinx/xapp/xapp800.pdf
[XAPP883]: ./Xilinx/xapp/xapp883.pdf
[XAPP887]: ./Xilinx/xapp/xapp887.pdf
[XAPP951]: ./Xilinx/xapp/xapp951.pdf
[XAPP963]: ./Xilinx/xapp/xapp963.pdf
[XAPP978]: ./Xilinx/xapp/xapp978.pdf
[XAPP1100]: ./Xilinx/xapp/xapp1100.pdf
[XAPP1176]: ./Xilinx/xapp/xapp1176.pdf

[PG100]: ./Xilinx/pg/pg100.pdf
[PG134]: ./Xilinx/pg/pg134.pdf

[UG081]: ./Xilinx/ug/ug081.pdf
[UG111]: ./Xilinx/ug/ug111.pdf
[UG161]: ./Xilinx/ug/ug161.pdf
[UG257]: ./Xilinx/ug/ug257.pdf
[UG258]: ./Xilinx/ug/ug258.pdf
[UG470]: ./Xilinx/ug/ug470.pdf
[UG473]: ./Xilinx/ug/ug473.pdf
[UG586]: ./Xilinx/ug/ug586.pdf
[UG625]: ./Xilinx/ug/ug625.pdf
[UG628]: ./Xilinx/ug/ug628.pdf
[UG631]: ./Xilinx/ug/ug631.pdf
[UG658]: ./Xilinx/ug/ug658.pdf
[UG687]: ./Xilinx/ug/ug687.pdf
[UG695]: ./Xilinx/ug/ug695.pdf
[UG702]: ./Xilinx/ug/ug702.pdf
[UG743]: ./Xilinx/ug/ug743.pdf
[UG744]: ./Xilinx/ug/ug744.pdf
[UG748]: ./Xilinx/ug/ug748.pdf
[UG761]: ./Xilinx/ug/ug761.pdf
[UG768]: ./Xilinx/ug/ug768.pdf
[UG789]: ./Xilinx/ug/ug789.pdf
[UG810]: ./Xilinx/ug/ug810.pdf

[01_PR_Intro]: 	./Xilinx/others/01_PR_Intro.pdf
[04_PR_Design]: ./Xilinx/others/04_PR_Design.pdf
[10_Driving]: 	./Xilinx/others/10_Driving.pdf

[XTP025]: ./Xilinx/xtp/xtp025.pdf
[XTP104]: ./Xilinx/xtp/xtp104.pdf

[fpt09lai]: 	./Artigos/fpt09lai.pdf
[fpt12vipin]: 	./Artigos/fpt12vipin.pdf

[microblaze_tutorial]: 	./Tutoriais/microblaze_tutorial.pdf
[Bootloader]: 			./Tutoriais/Bootloader.pdf
[fmt_xilinxbit]:		./Tutoriais/fmt_xilinxbit.pdf
[kc705_qspi_flash_bootload]: ./Tutoriais/kc705_qspi_flash_bootload.pdf

[N25Q128]:		./Datasheet/N25Q128.pdf

