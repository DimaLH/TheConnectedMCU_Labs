# 1 "../../../Source/portable/MPLAB/PIC32MZ/port_asm.S"
# 1 "<command-line>"
# 1 "../../../Source/portable/MPLAB/PIC32MZ/port_asm.S"
# 29 "../../../Source/portable/MPLAB/PIC32MZ/port_asm.S"
# 1 "c:\\program files (x86)\\microchip\\xc32\\v1.44\\pic32mx\\include\\xc.h" 1 3
# 38 "c:\\program files (x86)\\microchip\\xc32\\v1.44\\pic32mx\\include\\xc.h" 3
       
# 572 "c:\\program files (x86)\\microchip\\xc32\\v1.44\\pic32mx\\include\\xc.h" 3
# 1 "c:\\program files (x86)\\microchip\\xc32\\v1.44\\pic32mx\\include\\proc\\p32mz2048efg100.h" 1 3
# 38 "c:\\program files (x86)\\microchip\\xc32\\v1.44\\pic32mx\\include\\proc\\p32mz2048efg100.h" 3
       
# 18923 "c:\\program files (x86)\\microchip\\xc32\\v1.44\\pic32mx\\include\\proc\\p32mz2048efg100.h" 3
  .extern CFGCON
  .extern DEVID
  .extern SYSKEY
  .extern PMD1
  .extern PMD1CLR
  .extern PMD1SET
  .extern PMD1INV
  .extern PMD2
  .extern PMD2CLR
  .extern PMD2SET
  .extern PMD2INV
  .extern PMD3
  .extern PMD3CLR
  .extern PMD3SET
  .extern PMD3INV
  .extern PMD4
  .extern PMD4CLR
  .extern PMD4SET
  .extern PMD4INV
  .extern PMD5
  .extern PMD5CLR
  .extern PMD5SET
  .extern PMD5INV
  .extern PMD6
  .extern PMD6CLR
  .extern PMD6SET
  .extern PMD6INV
  .extern PMD7
  .extern PMD7CLR
  .extern PMD7SET
  .extern PMD7INV
  .extern CFGEBIA
  .extern CFGEBIACLR
  .extern CFGEBIASET
  .extern CFGEBIAINV
  .extern CFGEBIC
  .extern CFGEBICCLR
  .extern CFGEBICSET
  .extern CFGEBICINV
  .extern CFGPG
  .extern NVMCON
  .extern NVMCONCLR
  .extern NVMCONSET
  .extern NVMCONINV
  .extern NVMKEY
  .extern NVMADDR
  .extern NVMADDRCLR
  .extern NVMADDRSET
  .extern NVMADDRINV
  .extern NVMDATA0
  .extern NVMDATA0CLR
  .extern NVMDATA0SET
  .extern NVMDATA0INV
  .extern NVMDATA1
  .extern NVMDATA1CLR
  .extern NVMDATA1SET
  .extern NVMDATA1INV
  .extern NVMDATA2
  .extern NVMDATA2CLR
  .extern NVMDATA2SET
  .extern NVMDATA2INV
  .extern NVMDATA3
  .extern NVMDATA3CLR
  .extern NVMDATA3SET
  .extern NVMDATA3INV
  .extern NVMSRCADDR
  .extern NVMSRCADDRCLR
  .extern NVMSRCADDRSET
  .extern NVMSRCADDRINV
  .extern NVMPWP
  .extern NVMPWPCLR
  .extern NVMPWPSET
  .extern NVMPWPINV
  .extern NVMBWP
  .extern NVMBWPCLR
  .extern NVMBWPSET
  .extern NVMBWPINV
  .extern NVMCON2
  .extern NVMCON2CLR
  .extern NVMCON2SET
  .extern NVMCON2INV
  .extern WDTCON
  .extern WDTCONCLR
  .extern WDTCONSET
  .extern WDTCONINV
  .extern DMTCON
  .extern DMTPRECLR
  .extern DMTCLR
  .extern DMTSTAT
  .extern DMTCNT
  .extern DMTPSCNT
  .extern DMTPSINTV
  .extern RTCCON
  .extern RTCCONCLR
  .extern RTCCONSET
  .extern RTCCONINV
  .extern RTCALRM
  .extern RTCALRMCLR
  .extern RTCALRMSET
  .extern RTCALRMINV
  .extern RTCTIME
  .extern RTCTIMECLR
  .extern RTCTIMESET
  .extern RTCTIMEINV
  .extern RTCDATE
  .extern RTCDATECLR
  .extern RTCDATESET
  .extern RTCDATEINV
  .extern ALRMTIME
  .extern ALRMTIMECLR
  .extern ALRMTIMESET
  .extern ALRMTIMEINV
  .extern ALRMDATE
  .extern ALRMDATECLR
  .extern ALRMDATESET
  .extern ALRMDATEINV
  .extern CVRCON
  .extern CVRCONCLR
  .extern CVRCONSET
  .extern CVRCONINV
  .extern _ICDCON
  .extern _ICDSTAT
  .extern OSCCON
  .extern OSCCONCLR
  .extern OSCCONSET
  .extern OSCCONINV
  .extern OSCTUN
  .extern OSCTUNCLR
  .extern OSCTUNSET
  .extern OSCTUNINV
  .extern SPLLCON
  .extern SPLLCONCLR
  .extern SPLLCONSET
  .extern SPLLCONINV
  .extern RCON
  .extern RCONCLR
  .extern RCONSET
  .extern RCONINV
  .extern RSWRST
  .extern RSWRSTCLR
  .extern RSWRSTSET
  .extern RSWRSTINV
  .extern RNMICON
  .extern RNMICONCLR
  .extern RNMICONSET
  .extern RNMICONINV
  .extern PWRCON
  .extern PWRCONCLR
  .extern PWRCONSET
  .extern PWRCONINV
  .extern REFO1CON
  .extern REFO1CONCLR
  .extern REFO1CONSET
  .extern REFO1CONINV
  .extern REFO1TRIM
  .extern REFO1TRIMCLR
  .extern REFO1TRIMSET
  .extern REFO1TRIMINV
  .extern REFO2CON
  .extern REFO2CONCLR
  .extern REFO2CONSET
  .extern REFO2CONINV
  .extern REFO2TRIM
  .extern REFO2TRIMCLR
  .extern REFO2TRIMSET
  .extern REFO2TRIMINV
  .extern REFO3CON
  .extern REFO3CONCLR
  .extern REFO3CONSET
  .extern REFO3CONINV
  .extern REFO3TRIM
  .extern REFO3TRIMCLR
  .extern REFO3TRIMSET
  .extern REFO3TRIMINV
  .extern REFO4CON
  .extern REFO4CONCLR
  .extern REFO4CONSET
  .extern REFO4CONINV
  .extern REFO4TRIM
  .extern REFO4TRIMCLR
  .extern REFO4TRIMSET
  .extern REFO4TRIMINV
  .extern PB1DIV
  .extern PB1DIVCLR
  .extern PB1DIVSET
  .extern PB1DIVINV
  .extern PB2DIV
  .extern PB2DIVCLR
  .extern PB2DIVSET
  .extern PB2DIVINV
  .extern PB3DIV
  .extern PB3DIVCLR
  .extern PB3DIVSET
  .extern PB3DIVINV
  .extern PB4DIV
  .extern PB4DIVCLR
  .extern PB4DIVSET
  .extern PB4DIVINV
  .extern PB5DIV
  .extern PB5DIVCLR
  .extern PB5DIVSET
  .extern PB5DIVINV
  .extern PB7DIV
  .extern PB7DIVCLR
  .extern PB7DIVSET
  .extern PB7DIVINV
  .extern PB8DIV
  .extern PB8DIVCLR
  .extern PB8DIVSET
  .extern PB8DIVINV
  .extern SLEWCON
  .extern SLEWCONCLR
  .extern SLEWCONSET
  .extern SLEWCONINV
  .extern CLKSTAT
  .extern CLKSTATCLR
  .extern CLKSTATSET
  .extern CLKSTATINV
  .extern INT1R
  .extern INT2R
  .extern INT3R
  .extern INT4R
  .extern T2CKR
  .extern T3CKR
  .extern T4CKR
  .extern T5CKR
  .extern T6CKR
  .extern T7CKR
  .extern T8CKR
  .extern T9CKR
  .extern IC1R
  .extern IC2R
  .extern IC3R
  .extern IC4R
  .extern IC5R
  .extern IC6R
  .extern IC7R
  .extern IC8R
  .extern IC9R
  .extern OCFAR
  .extern U1RXR
  .extern U1CTSR
  .extern U2RXR
  .extern U2CTSR
  .extern U3RXR
  .extern U3CTSR
  .extern U4RXR
  .extern U4CTSR
  .extern U5RXR
  .extern U5CTSR
  .extern U6RXR
  .extern U6CTSR
  .extern SDI1R
  .extern SS1R
  .extern SDI2R
  .extern SS2R
  .extern SDI3R
  .extern SS3R
  .extern SDI4R
  .extern SS4R
  .extern SDI5R
  .extern SS5R
  .extern SDI6R
  .extern SS6R
  .extern REFCLKI1R
  .extern REFCLKI3R
  .extern REFCLKI4R
  .extern RPA14R
  .extern RPA15R
  .extern RPB0R
  .extern RPB1R
  .extern RPB2R
  .extern RPB3R
  .extern RPB5R
  .extern RPB6R
  .extern RPB7R
  .extern RPB8R
  .extern RPB9R
  .extern RPB10R
  .extern RPB14R
  .extern RPB15R
  .extern RPC1R
  .extern RPC2R
  .extern RPC3R
  .extern RPC4R
  .extern RPC13R
  .extern RPC14R
  .extern RPD0R
  .extern RPD1R
  .extern RPD2R
  .extern RPD3R
  .extern RPD4R
  .extern RPD5R
  .extern RPD9R
  .extern RPD10R
  .extern RPD11R
  .extern RPD12R
  .extern RPD14R
  .extern RPD15R
  .extern RPE3R
  .extern RPE5R
  .extern RPE8R
  .extern RPE9R
  .extern RPF0R
  .extern RPF1R
  .extern RPF2R
  .extern RPF3R
  .extern RPF4R
  .extern RPF5R
  .extern RPF8R
  .extern RPF12R
  .extern RPF13R
  .extern RPG0R
  .extern RPG1R
  .extern RPG6R
  .extern RPG7R
  .extern RPG8R
  .extern RPG9R
  .extern INTCON
  .extern INTCONCLR
  .extern INTCONSET
  .extern INTCONINV
  .extern PRISS
  .extern PRISSCLR
  .extern PRISSSET
  .extern PRISSINV
  .extern INTSTAT
  .extern INTSTATCLR
  .extern INTSTATSET
  .extern INTSTATINV
  .extern IPTMR
  .extern IPTMRCLR
  .extern IPTMRSET
  .extern IPTMRINV
  .extern IFS0
  .extern IFS0CLR
  .extern IFS0SET
  .extern IFS0INV
  .extern IFS1
  .extern IFS1CLR
  .extern IFS1SET
  .extern IFS1INV
  .extern IFS2
  .extern IFS2CLR
  .extern IFS2SET
  .extern IFS2INV
  .extern IFS3
  .extern IFS3CLR
  .extern IFS3SET
  .extern IFS3INV
  .extern IFS4
  .extern IFS4CLR
  .extern IFS4SET
  .extern IFS4INV
  .extern IFS5
  .extern IFS5CLR
  .extern IFS5SET
  .extern IFS5INV
  .extern IFS6
  .extern IFS6CLR
  .extern IFS6SET
  .extern IFS6INV
  .extern IEC0
  .extern IEC0CLR
  .extern IEC0SET
  .extern IEC0INV
  .extern IEC1
  .extern IEC1CLR
  .extern IEC1SET
  .extern IEC1INV
  .extern IEC2
  .extern IEC2CLR
  .extern IEC2SET
  .extern IEC2INV
  .extern IEC3
  .extern IEC3CLR
  .extern IEC3SET
  .extern IEC3INV
  .extern IEC4
  .extern IEC4CLR
  .extern IEC4SET
  .extern IEC4INV
  .extern IEC5
  .extern IEC5CLR
  .extern IEC5SET
  .extern IEC5INV
  .extern IEC6
  .extern IEC6CLR
  .extern IEC6SET
  .extern IEC6INV
  .extern IPC0
  .extern IPC0CLR
  .extern IPC0SET
  .extern IPC0INV
  .extern IPC1
  .extern IPC1CLR
  .extern IPC1SET
  .extern IPC1INV
  .extern IPC2
  .extern IPC2CLR
  .extern IPC2SET
  .extern IPC2INV
  .extern IPC3
  .extern IPC3CLR
  .extern IPC3SET
  .extern IPC3INV
  .extern IPC4
  .extern IPC4CLR
  .extern IPC4SET
  .extern IPC4INV
  .extern IPC5
  .extern IPC5CLR
  .extern IPC5SET
  .extern IPC5INV
  .extern IPC6
  .extern IPC6CLR
  .extern IPC6SET
  .extern IPC6INV
  .extern IPC7
  .extern IPC7CLR
  .extern IPC7SET
  .extern IPC7INV
  .extern IPC8
  .extern IPC8CLR
  .extern IPC8SET
  .extern IPC8INV
  .extern IPC9
  .extern IPC9CLR
  .extern IPC9SET
  .extern IPC9INV
  .extern IPC10
  .extern IPC10CLR
  .extern IPC10SET
  .extern IPC10INV
  .extern IPC11
  .extern IPC11CLR
  .extern IPC11SET
  .extern IPC11INV
  .extern IPC12
  .extern IPC12CLR
  .extern IPC12SET
  .extern IPC12INV
  .extern IPC13
  .extern IPC13CLR
  .extern IPC13SET
  .extern IPC13INV
  .extern IPC14
  .extern IPC14CLR
  .extern IPC14SET
  .extern IPC14INV
  .extern IPC15
  .extern IPC15CLR
  .extern IPC15SET
  .extern IPC15INV
  .extern IPC16
  .extern IPC16CLR
  .extern IPC16SET
  .extern IPC16INV
  .extern IPC17
  .extern IPC17CLR
  .extern IPC17SET
  .extern IPC17INV
  .extern IPC18
  .extern IPC18CLR
  .extern IPC18SET
  .extern IPC18INV
  .extern IPC19
  .extern IPC19CLR
  .extern IPC19SET
  .extern IPC19INV
  .extern IPC20
  .extern IPC20CLR
  .extern IPC20SET
  .extern IPC20INV
  .extern IPC21
  .extern IPC21CLR
  .extern IPC21SET
  .extern IPC21INV
  .extern IPC22
  .extern IPC22CLR
  .extern IPC22SET
  .extern IPC22INV
  .extern IPC23
  .extern IPC23CLR
  .extern IPC23SET
  .extern IPC23INV
  .extern IPC25
  .extern IPC25CLR
  .extern IPC25SET
  .extern IPC25INV
  .extern IPC26
  .extern IPC26CLR
  .extern IPC26SET
  .extern IPC26INV
  .extern IPC27
  .extern IPC27CLR
  .extern IPC27SET
  .extern IPC27INV
  .extern IPC28
  .extern IPC28CLR
  .extern IPC28SET
  .extern IPC28INV
  .extern IPC29
  .extern IPC29CLR
  .extern IPC29SET
  .extern IPC29INV
  .extern IPC30
  .extern IPC30CLR
  .extern IPC30SET
  .extern IPC30INV
  .extern IPC31
  .extern IPC31CLR
  .extern IPC31SET
  .extern IPC31INV
  .extern IPC32
  .extern IPC32CLR
  .extern IPC32SET
  .extern IPC32INV
  .extern IPC33
  .extern IPC33CLR
  .extern IPC33SET
  .extern IPC33INV
  .extern IPC34
  .extern IPC34CLR
  .extern IPC34SET
  .extern IPC34INV
  .extern IPC35
  .extern IPC35CLR
  .extern IPC35SET
  .extern IPC35INV
  .extern IPC36
  .extern IPC36CLR
  .extern IPC36SET
  .extern IPC36INV
  .extern IPC37
  .extern IPC37CLR
  .extern IPC37SET
  .extern IPC37INV
  .extern IPC38
  .extern IPC38CLR
  .extern IPC38SET
  .extern IPC38INV
  .extern IPC39
  .extern IPC39CLR
  .extern IPC39SET
  .extern IPC39INV
  .extern IPC40
  .extern IPC40CLR
  .extern IPC40SET
  .extern IPC40INV
  .extern IPC41
  .extern IPC41CLR
  .extern IPC41SET
  .extern IPC41INV
  .extern IPC42
  .extern IPC42CLR
  .extern IPC42SET
  .extern IPC42INV
  .extern IPC43
  .extern IPC43CLR
  .extern IPC43SET
  .extern IPC43INV
  .extern IPC44
  .extern IPC44CLR
  .extern IPC44SET
  .extern IPC44INV
  .extern IPC45
  .extern IPC45CLR
  .extern IPC45SET
  .extern IPC45INV
  .extern IPC46
  .extern IPC46CLR
  .extern IPC46SET
  .extern IPC46INV
  .extern IPC47
  .extern IPC47CLR
  .extern IPC47SET
  .extern IPC47INV
  .extern IPC48
  .extern IPC48CLR
  .extern IPC48SET
  .extern IPC48INV
  .extern IPC49
  .extern IPC49CLR
  .extern IPC49SET
  .extern IPC49INV
  .extern IPC50
  .extern IPC50CLR
  .extern IPC50SET
  .extern IPC50INV
  .extern IPC51
  .extern IPC51CLR
  .extern IPC51SET
  .extern IPC51INV
  .extern IPC52
  .extern IPC52CLR
  .extern IPC52SET
  .extern IPC52INV
  .extern IPC53
  .extern IPC53CLR
  .extern IPC53SET
  .extern IPC53INV
  .extern OFF000
  .extern OFF001
  .extern OFF002
  .extern OFF003
  .extern OFF004
  .extern OFF005
  .extern OFF006
  .extern OFF007
  .extern OFF008
  .extern OFF009
  .extern OFF010
  .extern OFF011
  .extern OFF012
  .extern OFF013
  .extern OFF014
  .extern OFF015
  .extern OFF016
  .extern OFF017
  .extern OFF018
  .extern OFF019
  .extern OFF020
  .extern OFF021
  .extern OFF022
  .extern OFF023
  .extern OFF024
  .extern OFF025
  .extern OFF026
  .extern OFF027
  .extern OFF028
  .extern OFF029
  .extern OFF030
  .extern OFF031
  .extern OFF032
  .extern OFF033
  .extern OFF034
  .extern OFF035
  .extern OFF036
  .extern OFF037
  .extern OFF038
  .extern OFF039
  .extern OFF040
  .extern OFF041
  .extern OFF042
  .extern OFF043
  .extern OFF044
  .extern OFF045
  .extern OFF046
  .extern OFF047
  .extern OFF048
  .extern OFF049
  .extern OFF050
  .extern OFF051
  .extern OFF052
  .extern OFF053
  .extern OFF054
  .extern OFF055
  .extern OFF056
  .extern OFF057
  .extern OFF058
  .extern OFF059
  .extern OFF060
  .extern OFF061
  .extern OFF062
  .extern OFF063
  .extern OFF064
  .extern OFF065
  .extern OFF066
  .extern OFF067
  .extern OFF068
  .extern OFF069
  .extern OFF070
  .extern OFF071
  .extern OFF072
  .extern OFF073
  .extern OFF074
  .extern OFF075
  .extern OFF076
  .extern OFF077
  .extern OFF078
  .extern OFF079
  .extern OFF080
  .extern OFF081
  .extern OFF082
  .extern OFF083
  .extern OFF084
  .extern OFF085
  .extern OFF086
  .extern OFF087
  .extern OFF088
  .extern OFF089
  .extern OFF090
  .extern OFF091
  .extern OFF092
  .extern OFF093
  .extern OFF102
  .extern OFF103
  .extern OFF104
  .extern OFF105
  .extern OFF106
  .extern OFF109
  .extern OFF110
  .extern OFF111
  .extern OFF112
  .extern OFF113
  .extern OFF114
  .extern OFF115
  .extern OFF116
  .extern OFF117
  .extern OFF118
  .extern OFF119
  .extern OFF120
  .extern OFF121
  .extern OFF122
  .extern OFF123
  .extern OFF124
  .extern OFF128
  .extern OFF129
  .extern OFF130
  .extern OFF131
  .extern OFF132
  .extern OFF133
  .extern OFF134
  .extern OFF135
  .extern OFF136
  .extern OFF137
  .extern OFF138
  .extern OFF139
  .extern OFF140
  .extern OFF141
  .extern OFF142
  .extern OFF143
  .extern OFF144
  .extern OFF145
  .extern OFF146
  .extern OFF147
  .extern OFF148
  .extern OFF149
  .extern OFF150
  .extern OFF153
  .extern OFF154
  .extern OFF155
  .extern OFF156
  .extern OFF157
  .extern OFF158
  .extern OFF159
  .extern OFF160
  .extern OFF161
  .extern OFF162
  .extern OFF163
  .extern OFF164
  .extern OFF165
  .extern OFF166
  .extern OFF167
  .extern OFF168
  .extern OFF169
  .extern OFF170
  .extern OFF171
  .extern OFF172
  .extern OFF173
  .extern OFF174
  .extern OFF175
  .extern OFF176
  .extern OFF177
  .extern OFF178
  .extern OFF179
  .extern OFF180
  .extern OFF181
  .extern OFF182
  .extern OFF183
  .extern OFF184
  .extern OFF185
  .extern OFF186
  .extern OFF187
  .extern OFF188
  .extern OFF189
  .extern OFF190
  .extern OFF192
  .extern OFF193
  .extern OFF194
  .extern OFF196
  .extern OFF198
  .extern OFF199
  .extern OFF200
  .extern OFF201
  .extern OFF202
  .extern OFF205
  .extern OFF206
  .extern OFF207
  .extern OFF208
  .extern OFF209
  .extern OFF210
  .extern OFF213
  .extern DMACON
  .extern DMACONCLR
  .extern DMACONSET
  .extern DMACONINV
  .extern DMASTAT
  .extern DMASTATCLR
  .extern DMASTATSET
  .extern DMASTATINV
  .extern DMAADDR
  .extern DMAADDRCLR
  .extern DMAADDRSET
  .extern DMAADDRINV
  .extern DCRCCON
  .extern DCRCCONCLR
  .extern DCRCCONSET
  .extern DCRCCONINV
  .extern DCRCDATA
  .extern DCRCDATACLR
  .extern DCRCDATASET
  .extern DCRCDATAINV
  .extern DCRCXOR
  .extern DCRCXORCLR
  .extern DCRCXORSET
  .extern DCRCXORINV
  .extern DCH0CON
  .extern DCH0CONCLR
  .extern DCH0CONSET
  .extern DCH0CONINV
  .extern DCH0ECON
  .extern DCH0ECONCLR
  .extern DCH0ECONSET
  .extern DCH0ECONINV
  .extern DCH0INT
  .extern DCH0INTCLR
  .extern DCH0INTSET
  .extern DCH0INTINV
  .extern DCH0SSA
  .extern DCH0SSACLR
  .extern DCH0SSASET
  .extern DCH0SSAINV
  .extern DCH0DSA
  .extern DCH0DSACLR
  .extern DCH0DSASET
  .extern DCH0DSAINV
  .extern DCH0SSIZ
  .extern DCH0SSIZCLR
  .extern DCH0SSIZSET
  .extern DCH0SSIZINV
  .extern DCH0DSIZ
  .extern DCH0DSIZCLR
  .extern DCH0DSIZSET
  .extern DCH0DSIZINV
  .extern DCH0SPTR
  .extern DCH0SPTRCLR
  .extern DCH0SPTRSET
  .extern DCH0SPTRINV
  .extern DCH0DPTR
  .extern DCH0DPTRCLR
  .extern DCH0DPTRSET
  .extern DCH0DPTRINV
  .extern DCH0CSIZ
  .extern DCH0CSIZCLR
  .extern DCH0CSIZSET
  .extern DCH0CSIZINV
  .extern DCH0CPTR
  .extern DCS0CPTR
  .extern DCH0CPTRCLR
  .extern DCS0CPTRCLR
  .extern DCH0CPTRSET
  .extern DCS0CPTRSET
  .extern DCH0CPTRINV
  .extern DCS0CPTRINV
  .extern DCH0DAT
  .extern DCH0DATCLR
  .extern DCH0DATSET
  .extern DCH0DATINV
  .extern DCH1CON
  .extern DCH1CONCLR
  .extern DCH1CONSET
  .extern DCH1CONINV
  .extern DCH1ECON
  .extern DCH1ECONCLR
  .extern DCH1ECONSET
  .extern DCH1ECONINV
  .extern DCH1INT
  .extern DCH1INTCLR
  .extern DCH1INTSET
  .extern DCH1INTINV
  .extern DCH1SSA
  .extern DCH1SSACLR
  .extern DCH1SSASET
  .extern DCH1SSAINV
  .extern DCH1DSA
  .extern DCH1DSACLR
  .extern DCH1DSASET
  .extern DCH1DSAINV
  .extern DCH1SSIZ
  .extern DCH1SSIZCLR
  .extern DCH1SSIZSET
  .extern DCH1SSIZINV
  .extern DCH1DSIZ
  .extern DCH1DSIZCLR
  .extern DCH1DSIZSET
  .extern DCH1DSIZINV
  .extern DCH1SPTR
  .extern DCH1SPTRCLR
  .extern DCH1SPTRSET
  .extern DCH1SPTRINV
  .extern DCH1DPTR
  .extern DCH1DPTRCLR
  .extern DCH1DPTRSET
  .extern DCH1DPTRINV
  .extern DCH1CSIZ
  .extern DCH1CSIZCLR
  .extern DCH1CSIZSET
  .extern DCH1CSIZINV
  .extern DCH1CPTR
  .extern DCS1CPTR
  .extern DCH1CPTRCLR
  .extern DCS1CPTRCLR
  .extern DCH1CPTRSET
  .extern DCS1CPTRSET
  .extern DCH1CPTRINV
  .extern DCS1CPTRINV
  .extern DCH1DAT
  .extern DCH1DATCLR
  .extern DCH1DATSET
  .extern DCH1DATINV
  .extern DCH2CON
  .extern DCH2CONCLR
  .extern DCH2CONSET
  .extern DCH2CONINV
  .extern DCH2ECON
  .extern DCH2ECONCLR
  .extern DCH2ECONSET
  .extern DCH2ECONINV
  .extern DCH2INT
  .extern DCH2INTCLR
  .extern DCH2INTSET
  .extern DCH2INTINV
  .extern DCH2SSA
  .extern DCH2SSACLR
  .extern DCH2SSASET
  .extern DCH2SSAINV
  .extern DCH2DSA
  .extern DCH2DSACLR
  .extern DCH2DSASET
  .extern DCH2DSAINV
  .extern DCH2SSIZ
  .extern DCH2SSIZCLR
  .extern DCH2SSIZSET
  .extern DCH2SSIZINV
  .extern DCH2DSIZ
  .extern DCH2DSIZCLR
  .extern DCH2DSIZSET
  .extern DCH2DSIZINV
  .extern DCH2SPTR
  .extern DCH2SPTRCLR
  .extern DCH2SPTRSET
  .extern DCH2SPTRINV
  .extern DCH2DPTR
  .extern DCH2DPTRCLR
  .extern DCH2DPTRSET
  .extern DCH2DPTRINV
  .extern DCH2CSIZ
  .extern DCH2CSIZCLR
  .extern DCH2CSIZSET
  .extern DCH2CSIZINV
  .extern DCH2CPTR
  .extern DCS2CPTR
  .extern DCH2CPTRCLR
  .extern DCS2CPTRCLR
  .extern DCH2CPTRSET
  .extern DCS2CPTRSET
  .extern DCH2CPTRINV
  .extern DCS2CPTRINV
  .extern DCH2DAT
  .extern DCH2DATCLR
  .extern DCH2DATSET
  .extern DCH2DATINV
  .extern DCH3CON
  .extern DCH3CONCLR
  .extern DCH3CONSET
  .extern DCH3CONINV
  .extern DCH3ECON
  .extern DCH3ECONCLR
  .extern DCH3ECONSET
  .extern DCH3ECONINV
  .extern DCH3INT
  .extern DCH3INTCLR
  .extern DCH3INTSET
  .extern DCH3INTINV
  .extern DCH3SSA
  .extern DCH3SSACLR
  .extern DCH3SSASET
  .extern DCH3SSAINV
  .extern DCH3DSA
  .extern DCH3DSACLR
  .extern DCH3DSASET
  .extern DCH3DSAINV
  .extern DCH3SSIZ
  .extern DCH3SSIZCLR
  .extern DCH3SSIZSET
  .extern DCH3SSIZINV
  .extern DCH3DSIZ
  .extern DCH3DSIZCLR
  .extern DCH3DSIZSET
  .extern DCH3DSIZINV
  .extern DCH3SPTR
  .extern DCH3SPTRCLR
  .extern DCH3SPTRSET
  .extern DCH3SPTRINV
  .extern DCH3DPTR
  .extern DCH3DPTRCLR
  .extern DCH3DPTRSET
  .extern DCH3DPTRINV
  .extern DCH3CSIZ
  .extern DCH3CSIZCLR
  .extern DCH3CSIZSET
  .extern DCH3CSIZINV
  .extern DCH3CPTR
  .extern DCS3CPTR
  .extern DCH3CPTRCLR
  .extern DCS3CPTRCLR
  .extern DCH3CPTRSET
  .extern DCS3CPTRSET
  .extern DCH3CPTRINV
  .extern DCS3CPTRINV
  .extern DCH3DAT
  .extern DCH3DATCLR
  .extern DCH3DATSET
  .extern DCH3DATINV
  .extern DCH4CON
  .extern DCH4CONCLR
  .extern DCH4CONSET
  .extern DCH4CONINV
  .extern DCH4ECON
  .extern DCH4ECONCLR
  .extern DCH4ECONSET
  .extern DCH4ECONINV
  .extern DCH4INT
  .extern DCH4INTCLR
  .extern DCH4INTSET
  .extern DCH4INTINV
  .extern DCH4SSA
  .extern DCH4SSACLR
  .extern DCH4SSASET
  .extern DCH4SSAINV
  .extern DCH4DSA
  .extern DCH4DSACLR
  .extern DCH4DSASET
  .extern DCH4DSAINV
  .extern DCH4SSIZ
  .extern DCH4SSIZCLR
  .extern DCH4SSIZSET
  .extern DCH4SSIZINV
  .extern DCH4DSIZ
  .extern DCH4DSIZCLR
  .extern DCH4DSIZSET
  .extern DCH4DSIZINV
  .extern DCH4SPTR
  .extern DCH4SPTRCLR
  .extern DCH4SPTRSET
  .extern DCH4SPTRINV
  .extern DCH4DPTR
  .extern DCH4DPTRCLR
  .extern DCH4DPTRSET
  .extern DCH4DPTRINV
  .extern DCH4CSIZ
  .extern DCH4CSIZCLR
  .extern DCH4CSIZSET
  .extern DCH4CSIZINV
  .extern DCH4CPTR
  .extern DCS4CPTR
  .extern DCH4CPTRCLR
  .extern DCS4CPTRCLR
  .extern DCH4CPTRSET
  .extern DCS4CPTRSET
  .extern DCH4CPTRINV
  .extern DCS4CPTRINV
  .extern DCH4DAT
  .extern DCH4DATCLR
  .extern DCH4DATSET
  .extern DCH4DATINV
  .extern DCH5CON
  .extern DCH5CONCLR
  .extern DCH5CONSET
  .extern DCH5CONINV
  .extern DCH5ECON
  .extern DCH5ECONCLR
  .extern DCH5ECONSET
  .extern DCH5ECONINV
  .extern DCH5INT
  .extern DCH5INTCLR
  .extern DCH5INTSET
  .extern DCH5INTINV
  .extern DCH5SSA
  .extern DCH5SSACLR
  .extern DCH5SSASET
  .extern DCH5SSAINV
  .extern DCH5DSA
  .extern DCH5DSACLR
  .extern DCH5DSASET
  .extern DCH5DSAINV
  .extern DCH5SSIZ
  .extern DCH5SSIZCLR
  .extern DCH5SSIZSET
  .extern DCH5SSIZINV
  .extern DCH5DSIZ
  .extern DCH5DSIZCLR
  .extern DCH5DSIZSET
  .extern DCH5DSIZINV
  .extern DCH5SPTR
  .extern DCH5SPTRCLR
  .extern DCH5SPTRSET
  .extern DCH5SPTRINV
  .extern DCH5DPTR
  .extern DCH5DPTRCLR
  .extern DCH5DPTRSET
  .extern DCH5DPTRINV
  .extern DCH5CSIZ
  .extern DCH5CSIZCLR
  .extern DCH5CSIZSET
  .extern DCH5CSIZINV
  .extern DCH5CPTR
  .extern DCS5CPTR
  .extern DCH5CPTRCLR
  .extern DCS5CPTRCLR
  .extern DCH5CPTRSET
  .extern DCS5CPTRSET
  .extern DCH5CPTRINV
  .extern DCS5CPTRINV
  .extern DCH5DAT
  .extern DCH5DATCLR
  .extern DCH5DATSET
  .extern DCH5DATINV
  .extern DCH6CON
  .extern DCH6CONCLR
  .extern DCH6CONSET
  .extern DCH6CONINV
  .extern DCH6ECON
  .extern DCH6ECONCLR
  .extern DCH6ECONSET
  .extern DCH6ECONINV
  .extern DCH6INT
  .extern DCH6INTCLR
  .extern DCH6INTSET
  .extern DCH6INTINV
  .extern DCH6SSA
  .extern DCH6SSACLR
  .extern DCH6SSASET
  .extern DCH6SSAINV
  .extern DCH6DSA
  .extern DCH6DSACLR
  .extern DCH6DSASET
  .extern DCH6DSAINV
  .extern DCH6SSIZ
  .extern DCH6SSIZCLR
  .extern DCH6SSIZSET
  .extern DCH6SSIZINV
  .extern DCH6DSIZ
  .extern DCH6DSIZCLR
  .extern DCH6DSIZSET
  .extern DCH6DSIZINV
  .extern DCH6SPTR
  .extern DCH6SPTRCLR
  .extern DCH6SPTRSET
  .extern DCH6SPTRINV
  .extern DCH6DPTR
  .extern DCH6DPTRCLR
  .extern DCH6DPTRSET
  .extern DCH6DPTRINV
  .extern DCH6CSIZ
  .extern DCH6CSIZCLR
  .extern DCH6CSIZSET
  .extern DCH6CSIZINV
  .extern DCH6CPTR
  .extern DCS6CPTR
  .extern DCH6CPTRCLR
  .extern DCS6CPTRCLR
  .extern DCH6CPTRSET
  .extern DCS6CPTRSET
  .extern DCH6CPTRINV
  .extern DCS6CPTRINV
  .extern DCH6DAT
  .extern DCH6DATCLR
  .extern DCH6DATSET
  .extern DCH6DATINV
  .extern DCH7CON
  .extern DCH7CONCLR
  .extern DCH7CONSET
  .extern DCH7CONINV
  .extern DCH7ECON
  .extern DCH7ECONCLR
  .extern DCH7ECONSET
  .extern DCH7ECONINV
  .extern DCH7INT
  .extern DCH7INTCLR
  .extern DCH7INTSET
  .extern DCH7INTINV
  .extern DCH7SSA
  .extern DCH7SSACLR
  .extern DCH7SSASET
  .extern DCH7SSAINV
  .extern DCH7DSA
  .extern DCH7DSACLR
  .extern DCH7DSASET
  .extern DCH7DSAINV
  .extern DCH7SSIZ
  .extern DCH7SSIZCLR
  .extern DCH7SSIZSET
  .extern DCH7SSIZINV
  .extern DCH7DSIZ
  .extern DCH7DSIZCLR
  .extern DCH7DSIZSET
  .extern DCH7DSIZINV
  .extern DCH7SPTR
  .extern DCH7SPTRCLR
  .extern DCH7SPTRSET
  .extern DCH7SPTRINV
  .extern DCH7DPTR
  .extern DCH7DPTRCLR
  .extern DCH7DPTRSET
  .extern DCH7DPTRINV
  .extern DCH7CSIZ
  .extern DCH7CSIZCLR
  .extern DCH7CSIZSET
  .extern DCH7CSIZINV
  .extern DCH7CPTR
  .extern DCS7CPTR
  .extern DCH7CPTRCLR
  .extern DCS7CPTRCLR
  .extern DCH7CPTRSET
  .extern DCS7CPTRSET
  .extern DCH7CPTRINV
  .extern DCS7CPTRINV
  .extern DCH7DAT
  .extern DCH7DATCLR
  .extern DCH7DATSET
  .extern DCH7DATINV
  .extern I2C1CON
  .extern I2C1CONCLR
  .extern I2C1CONSET
  .extern I2C1CONINV
  .extern I2C1STAT
  .extern I2C1STATCLR
  .extern I2C1STATSET
  .extern I2C1STATINV
  .extern I2C1ADD
  .extern I2C1ADDCLR
  .extern I2C1ADDSET
  .extern I2C1ADDINV
  .extern I2C1MSK
  .extern I2C1MSKCLR
  .extern I2C1MSKSET
  .extern I2C1MSKINV
  .extern I2C1BRG
  .extern I2C1BRGCLR
  .extern I2C1BRGSET
  .extern I2C1BRGINV
  .extern I2C1TRN
  .extern I2C1TRNCLR
  .extern I2C1TRNSET
  .extern I2C1TRNINV
  .extern I2C1RCV
  .extern I2C1RCVCLR
  .extern I2C1RCVSET
  .extern I2C1RCVINV
  .extern I2C2CON
  .extern I2C2CONCLR
  .extern I2C2CONSET
  .extern I2C2CONINV
  .extern I2C2STAT
  .extern I2C2STATCLR
  .extern I2C2STATSET
  .extern I2C2STATINV
  .extern I2C2ADD
  .extern I2C2ADDCLR
  .extern I2C2ADDSET
  .extern I2C2ADDINV
  .extern I2C2MSK
  .extern I2C2MSKCLR
  .extern I2C2MSKSET
  .extern I2C2MSKINV
  .extern I2C2BRG
  .extern I2C2BRGCLR
  .extern I2C2BRGSET
  .extern I2C2BRGINV
  .extern I2C2TRN
  .extern I2C2TRNCLR
  .extern I2C2TRNSET
  .extern I2C2TRNINV
  .extern I2C2RCV
  .extern I2C2RCVCLR
  .extern I2C2RCVSET
  .extern I2C2RCVINV
  .extern I2C3CON
  .extern I2C3CONCLR
  .extern I2C3CONSET
  .extern I2C3CONINV
  .extern I2C3STAT
  .extern I2C3STATCLR
  .extern I2C3STATSET
  .extern I2C3STATINV
  .extern I2C3ADD
  .extern I2C3ADDCLR
  .extern I2C3ADDSET
  .extern I2C3ADDINV
  .extern I2C3MSK
  .extern I2C3MSKCLR
  .extern I2C3MSKSET
  .extern I2C3MSKINV
  .extern I2C3BRG
  .extern I2C3BRGCLR
  .extern I2C3BRGSET
  .extern I2C3BRGINV
  .extern I2C3TRN
  .extern I2C3TRNCLR
  .extern I2C3TRNSET
  .extern I2C3TRNINV
  .extern I2C3RCV
  .extern I2C3RCVCLR
  .extern I2C3RCVSET
  .extern I2C3RCVINV
  .extern I2C4CON
  .extern I2C4CONCLR
  .extern I2C4CONSET
  .extern I2C4CONINV
  .extern I2C4STAT
  .extern I2C4STATCLR
  .extern I2C4STATSET
  .extern I2C4STATINV
  .extern I2C4ADD
  .extern I2C4ADDCLR
  .extern I2C4ADDSET
  .extern I2C4ADDINV
  .extern I2C4MSK
  .extern I2C4MSKCLR
  .extern I2C4MSKSET
  .extern I2C4MSKINV
  .extern I2C4BRG
  .extern I2C4BRGCLR
  .extern I2C4BRGSET
  .extern I2C4BRGINV
  .extern I2C4TRN
  .extern I2C4TRNCLR
  .extern I2C4TRNSET
  .extern I2C4TRNINV
  .extern I2C4RCV
  .extern I2C4RCVCLR
  .extern I2C4RCVSET
  .extern I2C4RCVINV
  .extern I2C5CON
  .extern I2C5CONCLR
  .extern I2C5CONSET
  .extern I2C5CONINV
  .extern I2C5STAT
  .extern I2C5STATCLR
  .extern I2C5STATSET
  .extern I2C5STATINV
  .extern I2C5ADD
  .extern I2C5ADDCLR
  .extern I2C5ADDSET
  .extern I2C5ADDINV
  .extern I2C5MSK
  .extern I2C5MSKCLR
  .extern I2C5MSKSET
  .extern I2C5MSKINV
  .extern I2C5BRG
  .extern I2C5BRGCLR
  .extern I2C5BRGSET
  .extern I2C5BRGINV
  .extern I2C5TRN
  .extern I2C5TRNCLR
  .extern I2C5TRNSET
  .extern I2C5TRNINV
  .extern I2C5RCV
  .extern I2C5RCVCLR
  .extern I2C5RCVSET
  .extern I2C5RCVINV
  .extern SPI1CON
  .extern SPI1CONCLR
  .extern SPI1CONSET
  .extern SPI1CONINV
  .extern SPI1STAT
  .extern SPI1STATCLR
  .extern SPI1STATSET
  .extern SPI1STATINV
  .extern SPI1BUF
  .extern SPI1BRG
  .extern SPI1BRGCLR
  .extern SPI1BRGSET
  .extern SPI1BRGINV
  .extern SPI1CON2
  .extern SPI1CON2CLR
  .extern SPI1CON2SET
  .extern SPI1CON2INV
  .extern SPI2CON
  .extern SPI2CONCLR
  .extern SPI2CONSET
  .extern SPI2CONINV
  .extern SPI2STAT
  .extern SPI2STATCLR
  .extern SPI2STATSET
  .extern SPI2STATINV
  .extern SPI2BUF
  .extern SPI2BRG
  .extern SPI2BRGCLR
  .extern SPI2BRGSET
  .extern SPI2BRGINV
  .extern SPI2CON2
  .extern SPI2CON2CLR
  .extern SPI2CON2SET
  .extern SPI2CON2INV
  .extern SPI3CON
  .extern SPI3CONCLR
  .extern SPI3CONSET
  .extern SPI3CONINV
  .extern SPI3STAT
  .extern SPI3STATCLR
  .extern SPI3STATSET
  .extern SPI3STATINV
  .extern SPI3BUF
  .extern SPI3BRG
  .extern SPI3BRGCLR
  .extern SPI3BRGSET
  .extern SPI3BRGINV
  .extern SPI3CON2
  .extern SPI3CON2CLR
  .extern SPI3CON2SET
  .extern SPI3CON2INV
  .extern SPI4CON
  .extern SPI4CONCLR
  .extern SPI4CONSET
  .extern SPI4CONINV
  .extern SPI4STAT
  .extern SPI4STATCLR
  .extern SPI4STATSET
  .extern SPI4STATINV
  .extern SPI4BUF
  .extern SPI4BRG
  .extern SPI4BRGCLR
  .extern SPI4BRGSET
  .extern SPI4BRGINV
  .extern SPI4CON2
  .extern SPI4CON2CLR
  .extern SPI4CON2SET
  .extern SPI4CON2INV
  .extern SPI5CON
  .extern SPI5CONCLR
  .extern SPI5CONSET
  .extern SPI5CONINV
  .extern SPI5STAT
  .extern SPI5STATCLR
  .extern SPI5STATSET
  .extern SPI5STATINV
  .extern SPI5BUF
  .extern SPI5BRG
  .extern SPI5BRGCLR
  .extern SPI5BRGSET
  .extern SPI5BRGINV
  .extern SPI5CON2
  .extern SPI5CON2CLR
  .extern SPI5CON2SET
  .extern SPI5CON2INV
  .extern SPI6CON
  .extern SPI6CONCLR
  .extern SPI6CONSET
  .extern SPI6CONINV
  .extern SPI6STAT
  .extern SPI6STATCLR
  .extern SPI6STATSET
  .extern SPI6STATINV
  .extern SPI6BUF
  .extern SPI6BRG
  .extern SPI6BRGCLR
  .extern SPI6BRGSET
  .extern SPI6BRGINV
  .extern SPI6CON2
  .extern SPI6CON2CLR
  .extern SPI6CON2SET
  .extern SPI6CON2INV
  .extern U1MODE
  .extern UABMODE
  .extern U1MODECLR
  .extern UABMODECLR
  .extern U1MODESET
  .extern UABMODESET
  .extern U1MODEINV
  .extern UABMODEINV
  .extern U1STA
  .extern UABSTA
  .extern U1STACLR
  .extern UABSTACLR
  .extern U1STASET
  .extern UABSTASET
  .extern U1STAINV
  .extern UABSTAINV
  .extern U1TXREG
  .extern UABTXREG
  .extern U1RXREG
  .extern UABRXREG
  .extern U1BRG
  .extern UABBRG
  .extern U1BRGCLR
  .extern UABBRGCLR
  .extern U1BRGSET
  .extern UABBRGSET
  .extern U1BRGINV
  .extern UABBRGINV
  .extern U2MODE
  .extern UCDMODE
  .extern U2MODECLR
  .extern UCDMODECLR
  .extern U2MODESET
  .extern UCDMODESET
  .extern U2MODEINV
  .extern UCDMODEINV
  .extern U2STA
  .extern UCDSTA
  .extern U2STACLR
  .extern UCDSTACLR
  .extern U2STASET
  .extern UCDSTASET
  .extern U2STAINV
  .extern UCDSTAINV
  .extern U2TXREG
  .extern UCDTXREG
  .extern U2RXREG
  .extern UCDRXREG
  .extern U2BRG
  .extern UCDBRG
  .extern U2BRGCLR
  .extern UCDBRGCLR
  .extern U2BRGSET
  .extern UCDBRGSET
  .extern U2BRGINV
  .extern UCDBRGINV
  .extern U3MODE
  .extern UEFMODE
  .extern U3MODECLR
  .extern UEFMODECLR
  .extern U3MODESET
  .extern UEFMODESET
  .extern U3MODEINV
  .extern UEFMODEINV
  .extern U3STA
  .extern UEFSTA
  .extern U3STACLR
  .extern UEFSTACLR
  .extern U3STASET
  .extern UEFSTASET
  .extern U3STAINV
  .extern UEFSTAINV
  .extern U3TXREG
  .extern UEFTXREG
  .extern U3RXREG
  .extern UEFRXREG
  .extern U3BRG
  .extern UEFBRG
  .extern U3BRGCLR
  .extern UEFBRGCLR
  .extern U3BRGSET
  .extern UEFBRGSET
  .extern U3BRGINV
  .extern UEFBRGINV
  .extern U4MODE
  .extern UGHMODE
  .extern U4MODECLR
  .extern UGHMODECLR
  .extern U4MODESET
  .extern UGHMODESET
  .extern U4MODEINV
  .extern UGHMODEINV
  .extern U4STA
  .extern UGHSTA
  .extern U4STACLR
  .extern UGHSTACLR
  .extern U4STASET
  .extern UGHSTASET
  .extern U4STAINV
  .extern UGHSTAINV
  .extern U4TXREG
  .extern UGHTXREG
  .extern U4RXREG
  .extern UGHRXREG
  .extern U4BRG
  .extern UGHBRG
  .extern U4BRGCLR
  .extern UGHBRGCLR
  .extern U4BRGSET
  .extern UGHBRGSET
  .extern U4BRGINV
  .extern UGHBRGINV
  .extern U5MODE
  .extern UJKMODE
  .extern U5MODECLR
  .extern UJKMODECLR
  .extern U5MODESET
  .extern UJKMODESET
  .extern U5MODEINV
  .extern UJKMODEINV
  .extern U5STA
  .extern UJKSTA
  .extern U5STACLR
  .extern UJKSTACLR
  .extern U5STASET
  .extern UJKSTASET
  .extern U5STAINV
  .extern UJKSTAINV
  .extern U5TXREG
  .extern UJKTXREG
  .extern U5RXREG
  .extern UJKRXREG
  .extern U5BRG
  .extern UJKBRG
  .extern U5BRGCLR
  .extern UJKBRGCLR
  .extern U5BRGSET
  .extern UJKBRGSET
  .extern U5BRGINV
  .extern UJKBRGINV
  .extern U6MODE
  .extern ULMMODE
  .extern U6MODECLR
  .extern ULMMODECLR
  .extern U6MODESET
  .extern ULMMODESET
  .extern U6MODEINV
  .extern ULMMODEINV
  .extern U6STA
  .extern ULMSTA
  .extern U6STACLR
  .extern ULMSTACLR
  .extern U6STASET
  .extern ULMSTASET
  .extern U6STAINV
  .extern ULMSTAINV
  .extern U6TXREG
  .extern ULMTXREG
  .extern U6RXREG
  .extern ULMRXREG
  .extern U6BRG
  .extern ULMBRG
  .extern U6BRGCLR
  .extern ULMBRGCLR
  .extern U6BRGSET
  .extern ULMBRGSET
  .extern U6BRGINV
  .extern ULMBRGINV
  .extern PMCON
  .extern PMCONCLR
  .extern PMCONSET
  .extern PMCONINV
  .extern PMMODE
  .extern PMMODECLR
  .extern PMMODESET
  .extern PMMODEINV
  .extern PMADDR
  .extern PMADDRCLR
  .extern PMADDRSET
  .extern PMADDRINV
  .extern PMDOUT
  .extern PMDOUTCLR
  .extern PMDOUTSET
  .extern PMDOUTINV
  .extern PMDIN
  .extern PMDINCLR
  .extern PMDINSET
  .extern PMDININV
  .extern PMAEN
  .extern PMAENCLR
  .extern PMAENSET
  .extern PMAENINV
  .extern PMSTAT
  .extern PMSTATCLR
  .extern PMSTATSET
  .extern PMSTATINV
  .extern PMWADDR
  .extern PMWADDRCLR
  .extern PMWADDRSET
  .extern PMWADDRINV
  .extern PMRADDR
  .extern PMRADDRCLR
  .extern PMRADDRSET
  .extern PMRADDRINV
  .extern PMRDIN
  .extern PMRDINCLR
  .extern PMRDINSET
  .extern PMRDININV
  .extern T1CON
  .extern T1CONCLR
  .extern T1CONSET
  .extern T1CONINV
  .extern TMR1
  .extern TMR1CLR
  .extern TMR1SET
  .extern TMR1INV
  .extern PR1
  .extern PR1CLR
  .extern PR1SET
  .extern PR1INV
  .extern T2CON
  .extern T2CONCLR
  .extern T2CONSET
  .extern T2CONINV
  .extern TMR2
  .extern TMR2CLR
  .extern TMR2SET
  .extern TMR2INV
  .extern PR2
  .extern PR2CLR
  .extern PR2SET
  .extern PR2INV
  .extern T3CON
  .extern T3CONCLR
  .extern T3CONSET
  .extern T3CONINV
  .extern TMR3
  .extern TMR3CLR
  .extern TMR3SET
  .extern TMR3INV
  .extern PR3
  .extern PR3CLR
  .extern PR3SET
  .extern PR3INV
  .extern T4CON
  .extern T4CONCLR
  .extern T4CONSET
  .extern T4CONINV
  .extern TMR4
  .extern TMR4CLR
  .extern TMR4SET
  .extern TMR4INV
  .extern PR4
  .extern PR4CLR
  .extern PR4SET
  .extern PR4INV
  .extern T5CON
  .extern T5CONCLR
  .extern T5CONSET
  .extern T5CONINV
  .extern TMR5
  .extern TMR5CLR
  .extern TMR5SET
  .extern TMR5INV
  .extern PR5
  .extern PR5CLR
  .extern PR5SET
  .extern PR5INV
  .extern T6CON
  .extern T6CONCLR
  .extern T6CONSET
  .extern T6CONINV
  .extern TMR6
  .extern TMR6CLR
  .extern TMR6SET
  .extern TMR6INV
  .extern PR6
  .extern PR6CLR
  .extern PR6SET
  .extern PR6INV
  .extern T7CON
  .extern T7CONCLR
  .extern T7CONSET
  .extern T7CONINV
  .extern TMR7
  .extern TMR7CLR
  .extern TMR7SET
  .extern TMR7INV
  .extern PR7
  .extern PR7CLR
  .extern PR7SET
  .extern PR7INV
  .extern T8CON
  .extern T8CONCLR
  .extern T8CONSET
  .extern T8CONINV
  .extern TMR8
  .extern TMR8CLR
  .extern TMR8SET
  .extern TMR8INV
  .extern PR8
  .extern PR8CLR
  .extern PR8SET
  .extern PR8INV
  .extern T9CON
  .extern T9CONCLR
  .extern T9CONSET
  .extern T9CONINV
  .extern TMR9
  .extern TMR9CLR
  .extern TMR9SET
  .extern TMR9INV
  .extern PR9
  .extern PR9CLR
  .extern PR9SET
  .extern PR9INV
  .extern IC1CON
  .extern IC1CONCLR
  .extern IC1CONSET
  .extern IC1CONINV
  .extern IC1BUF
  .extern IC2CON
  .extern IC2CONCLR
  .extern IC2CONSET
  .extern IC2CONINV
  .extern IC2BUF
  .extern IC3CON
  .extern IC3CONCLR
  .extern IC3CONSET
  .extern IC3CONINV
  .extern IC3BUF
  .extern IC4CON
  .extern IC4CONCLR
  .extern IC4CONSET
  .extern IC4CONINV
  .extern IC4BUF
  .extern IC5CON
  .extern IC5CONCLR
  .extern IC5CONSET
  .extern IC5CONINV
  .extern IC5BUF
  .extern IC6CON
  .extern IC6CONCLR
  .extern IC6CONSET
  .extern IC6CONINV
  .extern IC6BUF
  .extern IC7CON
  .extern IC7CONCLR
  .extern IC7CONSET
  .extern IC7CONINV
  .extern IC7BUF
  .extern IC8CON
  .extern IC8CONCLR
  .extern IC8CONSET
  .extern IC8CONINV
  .extern IC8BUF
  .extern IC9CON
  .extern IC9CONCLR
  .extern IC9CONSET
  .extern IC9CONINV
  .extern IC9BUF
  .extern OC1CON
  .extern OC1CONCLR
  .extern OC1CONSET
  .extern OC1CONINV
  .extern OC1R
  .extern OC1RCLR
  .extern OC1RSET
  .extern OC1RINV
  .extern OC1RS
  .extern OC1RSCLR
  .extern OC1RSSET
  .extern OC1RSINV
  .extern OC2CON
  .extern OC2CONCLR
  .extern OC2CONSET
  .extern OC2CONINV
  .extern OC2R
  .extern OC2RCLR
  .extern OC2RSET
  .extern OC2RINV
  .extern OC2RS
  .extern OC2RSCLR
  .extern OC2RSSET
  .extern OC2RSINV
  .extern OC3CON
  .extern OC3CONCLR
  .extern OC3CONSET
  .extern OC3CONINV
  .extern OC3R
  .extern OC3RCLR
  .extern OC3RSET
  .extern OC3RINV
  .extern OC3RS
  .extern OC3RSCLR
  .extern OC3RSSET
  .extern OC3RSINV
  .extern OC4CON
  .extern OC4CONCLR
  .extern OC4CONSET
  .extern OC4CONINV
  .extern OC4R
  .extern OC4RCLR
  .extern OC4RSET
  .extern OC4RINV
  .extern OC4RS
  .extern OC4RSCLR
  .extern OC4RSSET
  .extern OC4RSINV
  .extern OC5CON
  .extern OC5CONCLR
  .extern OC5CONSET
  .extern OC5CONINV
  .extern OC5R
  .extern OC5RCLR
  .extern OC5RSET
  .extern OC5RINV
  .extern OC5RS
  .extern OC5RSCLR
  .extern OC5RSSET
  .extern OC5RSINV
  .extern OC6CON
  .extern OC6CONCLR
  .extern OC6CONSET
  .extern OC6CONINV
  .extern OC6R
  .extern OC6RCLR
  .extern OC6RSET
  .extern OC6RINV
  .extern OC6RS
  .extern OC6RSCLR
  .extern OC6RSSET
  .extern OC6RSINV
  .extern OC7CON
  .extern OC7CONCLR
  .extern OC7CONSET
  .extern OC7CONINV
  .extern OC7R
  .extern OC7RCLR
  .extern OC7RSET
  .extern OC7RINV
  .extern OC7RS
  .extern OC7RSCLR
  .extern OC7RSSET
  .extern OC7RSINV
  .extern OC8CON
  .extern OC8CONCLR
  .extern OC8CONSET
  .extern OC8CONINV
  .extern OC8R
  .extern OC8RCLR
  .extern OC8RSET
  .extern OC8RINV
  .extern OC8RS
  .extern OC8RSCLR
  .extern OC8RSSET
  .extern OC8RSINV
  .extern OC9CON
  .extern OC9CONCLR
  .extern OC9CONSET
  .extern OC9CONINV
  .extern OC9R
  .extern OC9RCLR
  .extern OC9RSET
  .extern OC9RINV
  .extern OC9RS
  .extern OC9RSCLR
  .extern OC9RSSET
  .extern OC9RSINV
  .extern ADCCON1
  .extern ADCCON2
  .extern ADCCON3
  .extern ADCTRGMODE
  .extern ADCIMCON1
  .extern ADCIMCON2
  .extern ADCIMCON3
  .extern ADCGIRQEN1
  .extern ADCGIRQEN2
  .extern ADCCSS1
  .extern ADCCSS2
  .extern ADCDSTAT1
  .extern ADCDSTAT2
  .extern ADCCMPEN1
  .extern ADCCMP1
  .extern ADCCMPEN2
  .extern ADCCMP2
  .extern ADCCMPEN3
  .extern ADCCMP3
  .extern ADCCMPEN4
  .extern ADCCMP4
  .extern ADCCMPEN5
  .extern ADCCMP5
  .extern ADCCMPEN6
  .extern ADCCMP6
  .extern ADCFLTR1
  .extern ADCFLTR2
  .extern ADCFLTR3
  .extern ADCFLTR4
  .extern ADCFLTR5
  .extern ADCFLTR6
  .extern ADCTRG1
  .extern ADCTRG2
  .extern ADCTRG3
  .extern ADCCMPCON1
  .extern ADCCMPCON2
  .extern ADCCMPCON3
  .extern ADCCMPCON4
  .extern ADCCMPCON5
  .extern ADCCMPCON6
  .extern ADCFSTAT
  .extern ADCFIFO
  .extern ADCBASE
  .extern ADCTRGSNS
  .extern ADC0TIME
  .extern ADC1TIME
  .extern ADC2TIME
  .extern ADC3TIME
  .extern ADC4TIME
  .extern ADCEIEN1
  .extern ADCEIEN2
  .extern ADCEISTAT1
  .extern ADCEISTAT2
  .extern ADCANCON
  .extern ADC0CFG
  .extern ADC1CFG
  .extern ADC2CFG
  .extern ADC3CFG
  .extern ADC4CFG
  .extern ADC7CFG
  .extern ADCSYSCFG0
  .extern ADCSYSCFG1
  .extern ADCDATA0
  .extern ADCDATA1
  .extern ADCDATA2
  .extern ADCDATA3
  .extern ADCDATA4
  .extern ADCDATA5
  .extern ADCDATA6
  .extern ADCDATA7
  .extern ADCDATA8
  .extern ADCDATA9
  .extern ADCDATA10
  .extern ADCDATA11
  .extern ADCDATA12
  .extern ADCDATA13
  .extern ADCDATA14
  .extern ADCDATA15
  .extern ADCDATA16
  .extern ADCDATA17
  .extern ADCDATA18
  .extern ADCDATA19
  .extern ADCDATA20
  .extern ADCDATA21
  .extern ADCDATA22
  .extern ADCDATA23
  .extern ADCDATA24
  .extern ADCDATA25
  .extern ADCDATA26
  .extern ADCDATA27
  .extern ADCDATA28
  .extern ADCDATA29
  .extern ADCDATA30
  .extern ADCDATA31
  .extern ADCDATA32
  .extern ADCDATA33
  .extern ADCDATA34
  .extern ADCDATA43
  .extern ADCDATA44
  .extern CM1CON
  .extern CM1CONCLR
  .extern CM1CONSET
  .extern CM1CONINV
  .extern CM2CON
  .extern CM2CONCLR
  .extern CM2CONSET
  .extern CM2CONINV
  .extern CMSTAT
  .extern CMSTATCLR
  .extern CMSTATSET
  .extern CMSTATINV
  .extern ANSELA
  .extern ANSELACLR
  .extern ANSELASET
  .extern ANSELAINV
  .extern TRISA
  .extern TRISACLR
  .extern TRISASET
  .extern TRISAINV
  .extern PORTA
  .extern PORTACLR
  .extern PORTASET
  .extern PORTAINV
  .extern LATA
  .extern LATACLR
  .extern LATASET
  .extern LATAINV
  .extern ODCA
  .extern ODCACLR
  .extern ODCASET
  .extern ODCAINV
  .extern CNPUA
  .extern CNPUACLR
  .extern CNPUASET
  .extern CNPUAINV
  .extern CNPDA
  .extern CNPDACLR
  .extern CNPDASET
  .extern CNPDAINV
  .extern CNCONA
  .extern CNCONACLR
  .extern CNCONASET
  .extern CNCONAINV
  .extern CNENA
  .extern CNENACLR
  .extern CNENASET
  .extern CNENAINV
  .extern CNSTATA
  .extern CNSTATACLR
  .extern CNSTATASET
  .extern CNSTATAINV
  .extern CNNEA
  .extern CNNEACLR
  .extern CNNEASET
  .extern CNNEAINV
  .extern CNFA
  .extern CNFACLR
  .extern CNFASET
  .extern CNFAINV
  .extern SRCON0A
  .extern SRCON0ACLR
  .extern SRCON0ASET
  .extern SRCON0AINV
  .extern SRCON1A
  .extern SRCON1ACLR
  .extern SRCON1ASET
  .extern SRCON1AINV
  .extern ANSELB
  .extern ANSELBCLR
  .extern ANSELBSET
  .extern ANSELBINV
  .extern TRISB
  .extern TRISBCLR
  .extern TRISBSET
  .extern TRISBINV
  .extern PORTB
  .extern PORTBCLR
  .extern PORTBSET
  .extern PORTBINV
  .extern LATB
  .extern LATBCLR
  .extern LATBSET
  .extern LATBINV
  .extern ODCB
  .extern ODCBCLR
  .extern ODCBSET
  .extern ODCBINV
  .extern CNPUB
  .extern CNPUBCLR
  .extern CNPUBSET
  .extern CNPUBINV
  .extern CNPDB
  .extern CNPDBCLR
  .extern CNPDBSET
  .extern CNPDBINV
  .extern CNCONB
  .extern CNCONBCLR
  .extern CNCONBSET
  .extern CNCONBINV
  .extern CNENB
  .extern CNENBCLR
  .extern CNENBSET
  .extern CNENBINV
  .extern CNSTATB
  .extern CNSTATBCLR
  .extern CNSTATBSET
  .extern CNSTATBINV
  .extern CNNEB
  .extern CNNEBCLR
  .extern CNNEBSET
  .extern CNNEBINV
  .extern CNFB
  .extern CNFBCLR
  .extern CNFBSET
  .extern CNFBINV
  .extern SRCON0B
  .extern SRCON0BCLR
  .extern SRCON0BSET
  .extern SRCON0BINV
  .extern SRCON1B
  .extern SRCON1BCLR
  .extern SRCON1BSET
  .extern SRCON1BINV
  .extern ANSELC
  .extern ANSELCCLR
  .extern ANSELCSET
  .extern ANSELCINV
  .extern TRISC
  .extern TRISCCLR
  .extern TRISCSET
  .extern TRISCINV
  .extern PORTC
  .extern PORTCCLR
  .extern PORTCSET
  .extern PORTCINV
  .extern LATC
  .extern LATCCLR
  .extern LATCSET
  .extern LATCINV
  .extern ODCC
  .extern ODCCCLR
  .extern ODCCSET
  .extern ODCCINV
  .extern CNPUC
  .extern CNPUCCLR
  .extern CNPUCSET
  .extern CNPUCINV
  .extern CNPDC
  .extern CNPDCCLR
  .extern CNPDCSET
  .extern CNPDCINV
  .extern CNCONC
  .extern CNCONCCLR
  .extern CNCONCSET
  .extern CNCONCINV
  .extern CNENC
  .extern CNENCCLR
  .extern CNENCSET
  .extern CNENCINV
  .extern CNSTATC
  .extern CNSTATCCLR
  .extern CNSTATCSET
  .extern CNSTATCINV
  .extern CNNEC
  .extern CNNECCLR
  .extern CNNECSET
  .extern CNNECINV
  .extern CNFC
  .extern CNFCCLR
  .extern CNFCSET
  .extern CNFCINV
  .extern ANSELD
  .extern ANSELDCLR
  .extern ANSELDSET
  .extern ANSELDINV
  .extern TRISD
  .extern TRISDCLR
  .extern TRISDSET
  .extern TRISDINV
  .extern PORTD
  .extern PORTDCLR
  .extern PORTDSET
  .extern PORTDINV
  .extern LATD
  .extern LATDCLR
  .extern LATDSET
  .extern LATDINV
  .extern ODCD
  .extern ODCDCLR
  .extern ODCDSET
  .extern ODCDINV
  .extern CNPUD
  .extern CNPUDCLR
  .extern CNPUDSET
  .extern CNPUDINV
  .extern CNPDD
  .extern CNPDDCLR
  .extern CNPDDSET
  .extern CNPDDINV
  .extern CNCOND
  .extern CNCONDCLR
  .extern CNCONDSET
  .extern CNCONDINV
  .extern CNEND
  .extern CNENDCLR
  .extern CNENDSET
  .extern CNENDINV
  .extern CNSTATD
  .extern CNSTATDCLR
  .extern CNSTATDSET
  .extern CNSTATDINV
  .extern CNNED
  .extern CNNEDCLR
  .extern CNNEDSET
  .extern CNNEDINV
  .extern CNFD
  .extern CNFDCLR
  .extern CNFDSET
  .extern CNFDINV
  .extern ANSELE
  .extern ANSELECLR
  .extern ANSELESET
  .extern ANSELEINV
  .extern TRISE
  .extern TRISECLR
  .extern TRISESET
  .extern TRISEINV
  .extern PORTE
  .extern PORTECLR
  .extern PORTESET
  .extern PORTEINV
  .extern LATE
  .extern LATECLR
  .extern LATESET
  .extern LATEINV
  .extern ODCE
  .extern ODCECLR
  .extern ODCESET
  .extern ODCEINV
  .extern CNPUE
  .extern CNPUECLR
  .extern CNPUESET
  .extern CNPUEINV
  .extern CNPDE
  .extern CNPDECLR
  .extern CNPDESET
  .extern CNPDEINV
  .extern CNCONE
  .extern CNCONECLR
  .extern CNCONESET
  .extern CNCONEINV
  .extern CNENE
  .extern CNENECLR
  .extern CNENESET
  .extern CNENEINV
  .extern CNSTATE
  .extern CNSTATECLR
  .extern CNSTATESET
  .extern CNSTATEINV
  .extern CNNEE
  .extern CNNEECLR
  .extern CNNEESET
  .extern CNNEEINV
  .extern CNFE
  .extern CNFECLR
  .extern CNFESET
  .extern CNFEINV
  .extern SRCON0E
  .extern SRCON0ECLR
  .extern SRCON0ESET
  .extern SRCON0EINV
  .extern SRCON1E
  .extern SRCON1ECLR
  .extern SRCON1ESET
  .extern SRCON1EINV
  .extern ANSELF
  .extern ANSELFCLR
  .extern ANSELFSET
  .extern ANSELFINV
  .extern TRISF
  .extern TRISFCLR
  .extern TRISFSET
  .extern TRISFINV
  .extern PORTF
  .extern PORTFCLR
  .extern PORTFSET
  .extern PORTFINV
  .extern LATF
  .extern LATFCLR
  .extern LATFSET
  .extern LATFINV
  .extern ODCF
  .extern ODCFCLR
  .extern ODCFSET
  .extern ODCFINV
  .extern CNPUF
  .extern CNPUFCLR
  .extern CNPUFSET
  .extern CNPUFINV
  .extern CNPDF
  .extern CNPDFCLR
  .extern CNPDFSET
  .extern CNPDFINV
  .extern CNCONF
  .extern CNCONFCLR
  .extern CNCONFSET
  .extern CNCONFINV
  .extern CNENF
  .extern CNENFCLR
  .extern CNENFSET
  .extern CNENFINV
  .extern CNSTATF
  .extern CNSTATFCLR
  .extern CNSTATFSET
  .extern CNSTATFINV
  .extern CNNEF
  .extern CNNEFCLR
  .extern CNNEFSET
  .extern CNNEFINV
  .extern CNFF
  .extern CNFFCLR
  .extern CNFFSET
  .extern CNFFINV
  .extern SRCON0F
  .extern SRCON0FCLR
  .extern SRCON0FSET
  .extern SRCON0FINV
  .extern SRCON1F
  .extern SRCON1FCLR
  .extern SRCON1FSET
  .extern SRCON1FINV
  .extern ANSELG
  .extern ANSELGCLR
  .extern ANSELGSET
  .extern ANSELGINV
  .extern TRISG
  .extern TRISGCLR
  .extern TRISGSET
  .extern TRISGINV
  .extern PORTG
  .extern PORTGCLR
  .extern PORTGSET
  .extern PORTGINV
  .extern LATG
  .extern LATGCLR
  .extern LATGSET
  .extern LATGINV
  .extern ODCG
  .extern ODCGCLR
  .extern ODCGSET
  .extern ODCGINV
  .extern CNPUG
  .extern CNPUGCLR
  .extern CNPUGSET
  .extern CNPUGINV
  .extern CNPDG
  .extern CNPDGCLR
  .extern CNPDGSET
  .extern CNPDGINV
  .extern CNCONG
  .extern CNCONGCLR
  .extern CNCONGSET
  .extern CNCONGINV
  .extern CNENG
  .extern CNENGCLR
  .extern CNENGSET
  .extern CNENGINV
  .extern CNSTATG
  .extern CNSTATGCLR
  .extern CNSTATGSET
  .extern CNSTATGINV
  .extern CNNEG
  .extern CNNEGCLR
  .extern CNNEGSET
  .extern CNNEGINV
  .extern CNFG
  .extern CNFGCLR
  .extern CNFGSET
  .extern CNFGINV
  .extern SRCON0G
  .extern SRCON0GCLR
  .extern SRCON0GSET
  .extern SRCON0GINV
  .extern SRCON1G
  .extern SRCON1GCLR
  .extern SRCON1GSET
  .extern SRCON1GINV
  .extern ETHCON1
  .extern ETHCON1CLR
  .extern ETHCON1SET
  .extern ETHCON1INV
  .extern ETHCON2
  .extern ETHCON2CLR
  .extern ETHCON2SET
  .extern ETHCON2INV
  .extern ETHTXST
  .extern ETHTXSTCLR
  .extern ETHTXSTSET
  .extern ETHTXSTINV
  .extern ETHRXST
  .extern ETHRXSTCLR
  .extern ETHRXSTSET
  .extern ETHRXSTINV
  .extern ETHHT0
  .extern ETHHT0CLR
  .extern ETHHT0SET
  .extern ETHHT0INV
  .extern ETHHT1
  .extern ETHHT1CLR
  .extern ETHHT1SET
  .extern ETHHT1INV
  .extern ETHPMM0
  .extern ETHPMM0CLR
  .extern ETHPMM0SET
  .extern ETHPMM0INV
  .extern ETHPMM1
  .extern ETHPMM1CLR
  .extern ETHPMM1SET
  .extern ETHPMM1INV
  .extern ETHPMCS
  .extern ETHPMCSCLR
  .extern ETHPMCSSET
  .extern ETHPMCSINV
  .extern ETHPMO
  .extern ETHPMOCLR
  .extern ETHPMOSET
  .extern ETHPMOINV
  .extern ETHRXFC
  .extern ETHRXFCCLR
  .extern ETHRXFCSET
  .extern ETHRXFCINV
  .extern ETHRXWM
  .extern ETHRXWMCLR
  .extern ETHRXWMSET
  .extern ETHRXWMINV
  .extern ETHIEN
  .extern ETHIENCLR
  .extern ETHIENSET
  .extern ETHIENINV
  .extern ETHIRQ
  .extern ETHIRQCLR
  .extern ETHIRQSET
  .extern ETHIRQINV
  .extern ETHSTAT
  .extern ETHSTATCLR
  .extern ETHSTATSET
  .extern ETHSTATINV
  .extern ETHRXOVFLOW
  .extern ETHRXOVFLOWCLR
  .extern ETHRXOVFLOWSET
  .extern ETHRXOVFLOWINV
  .extern ETHFRMTXOK
  .extern ETHFRMTXOKCLR
  .extern ETHFRMTXOKSET
  .extern ETHFRMTXOKINV
  .extern ETHSCOLFRM
  .extern ETHSCOLFRMCLR
  .extern ETHSCOLFRMSET
  .extern ETHSCOLFRMINV
  .extern ETHMCOLFRM
  .extern ETHMCOLFRMCLR
  .extern ETHMCOLFRMSET
  .extern ETHMCOLFRMINV
  .extern ETHFRMRXOK
  .extern ETHFRMRXOKCLR
  .extern ETHFRMRXOKSET
  .extern ETHFRMRXOKINV
  .extern ETHFCSERR
  .extern ETHFCSERRCLR
  .extern ETHFCSERRSET
  .extern ETHFCSERRINV
  .extern ETHALGNERR
  .extern ETHALGNERRCLR
  .extern ETHALGNERRSET
  .extern ETHALGNERRINV
  .extern EMAC1CFG1
  .extern EMACxCFG1
  .extern EMAC1CFG1CLR
  .extern EMACxCFG1CLR
  .extern EMAC1CFG1SET
  .extern EMACxCFG1SET
  .extern EMAC1CFG1INV
  .extern EMACxCFG1INV
  .extern EMAC1CFG2
  .extern EMACxCFG2
  .extern EMAC1CFG2CLR
  .extern EMACxCFG2CLR
  .extern EMAC1CFG2SET
  .extern EMACxCFG2SET
  .extern EMAC1CFG2INV
  .extern EMACxCFG2INV
  .extern EMAC1IPGT
  .extern EMACxIPGT
  .extern EMAC1IPGTCLR
  .extern EMACxIPGTCLR
  .extern EMAC1IPGTSET
  .extern EMACxIPGTSET
  .extern EMAC1IPGTINV
  .extern EMACxIPGTINV
  .extern EMAC1IPGR
  .extern EMACxIPGR
  .extern EMAC1IPGRCLR
  .extern EMACxIPGRCLR
  .extern EMAC1IPGRSET
  .extern EMACxIPGRSET
  .extern EMAC1IPGRINV
  .extern EMACxIPGRINV
  .extern EMAC1CLRT
  .extern EMACxCLRT
  .extern EMAC1CLRTCLR
  .extern EMACxCLRTCLR
  .extern EMAC1CLRTSET
  .extern EMACxCLRTSET
  .extern EMAC1CLRTINV
  .extern EMACxCLRTINV
  .extern EMAC1MAXF
  .extern EMACxMAXF
  .extern EMAC1MAXFCLR
  .extern EMACxMAXFCLR
  .extern EMAC1MAXFSET
  .extern EMACxMAXFSET
  .extern EMAC1MAXFINV
  .extern EMACxMAXFINV
  .extern EMAC1SUPP
  .extern EMACxSUPP
  .extern EMAC1SUPPCLR
  .extern EMACxSUPPCLR
  .extern EMAC1SUPPSET
  .extern EMACxSUPPSET
  .extern EMAC1SUPPINV
  .extern EMACxSUPPINV
  .extern EMAC1TEST
  .extern EMACxTEST
  .extern EMAC1TESTCLR
  .extern EMACxTESTCLR
  .extern EMAC1TESTSET
  .extern EMACxTESTSET
  .extern EMAC1TESTINV
  .extern EMACxTESTINV
  .extern EMAC1MCFG
  .extern EMACxMCFG
  .extern EMAC1MCFGCLR
  .extern EMACxMCFGCLR
  .extern EMAC1MCFGSET
  .extern EMACxMCFGSET
  .extern EMAC1MCFGINV
  .extern EMACxMCFGINV
  .extern EMAC1MCMD
  .extern EMACxMCMD
  .extern EMAC1MCMDCLR
  .extern EMACxMCMDCLR
  .extern EMAC1MCMDSET
  .extern EMACxMCMDSET
  .extern EMAC1MCMDINV
  .extern EMACxMCMDINV
  .extern EMAC1MADR
  .extern EMACxMADR
  .extern EMAC1MADRCLR
  .extern EMACxMADRCLR
  .extern EMAC1MADRSET
  .extern EMACxMADRSET
  .extern EMAC1MADRINV
  .extern EMACxMADRINV
  .extern EMAC1MWTD
  .extern EMACxMWTD
  .extern EMAC1MWTDCLR
  .extern EMACxMWTDCLR
  .extern EMAC1MWTDSET
  .extern EMACxMWTDSET
  .extern EMAC1MWTDINV
  .extern EMACxMWTDINV
  .extern EMAC1MRDD
  .extern EMACxMRDD
  .extern EMAC1MRDDCLR
  .extern EMACxMRDDCLR
  .extern EMAC1MRDDSET
  .extern EMACxMRDDSET
  .extern EMAC1MRDDINV
  .extern EMACxMRDDINV
  .extern EMAC1MIND
  .extern EMACxMIND
  .extern EMAC1MINDCLR
  .extern EMACxMINDCLR
  .extern EMAC1MINDSET
  .extern EMACxMINDSET
  .extern EMAC1MINDINV
  .extern EMACxMINDINV
  .extern EMAC1SA0
  .extern EMACxSA0
  .extern EMAC1SA0CLR
  .extern EMACxSA0CLR
  .extern EMAC1SA0SET
  .extern EMACxSA0SET
  .extern EMAC1SA0INV
  .extern EMACxSA0INV
  .extern EMAC1SA1
  .extern EMACxSA1
  .extern EMAC1SA1CLR
  .extern EMACxSA1CLR
  .extern EMAC1SA1SET
  .extern EMACxSA1SET
  .extern EMAC1SA1INV
  .extern EMACxSA1INV
  .extern EMAC1SA2
  .extern EMACxSA2
  .extern EMAC1SA2CLR
  .extern EMACxSA2CLR
  .extern EMAC1SA2SET
  .extern EMACxSA2SET
  .extern EMAC1SA2INV
  .extern EMACxSA2INV
  .extern USBCRCON
  .extern PRECON
  .extern PRECONCLR
  .extern PRECONSET
  .extern PRECONINV
  .extern PRESTAT
  .extern PRESTATCLR
  .extern PRESTATSET
  .extern PRESTATINV
  .extern EBICS0
  .extern EBIMSK0
  .extern EBISMT0
  .extern EBISMT1
  .extern EBISMT2
  .extern EBIFTRPD
  .extern EBISMCON
  .extern SQI1XCON1
  .extern SQI1XCON2
  .extern SQI1CFG
  .extern SQI1CON
  .extern SQI1CLKCON
  .extern SQI1CMDTHR
  .extern SQI1INTTHR
  .extern SQI1INTEN
  .extern SQI1INTSTAT
  .extern SQI1TXDATA
  .extern SQI1RXDATA
  .extern SQI1STAT1
  .extern SQI1STAT2
  .extern SQI1BDCON
  .extern SQI1BDCURADD
  .extern SQI1BDBASEADD
  .extern SQI1BDSTAT
  .extern SQI1BDPOLLCON
  .extern SQI1BDTXDSTAT
  .extern SQI1BDRXDSTAT
  .extern SQI1THR
  .extern SQI1INTSIGEN
  .extern SQI1TAPCON
  .extern SQI1MEMSTAT
  .extern SQI1XCON3
  .extern SQI1XCON4
  .extern USBCSR0
  .extern USBCSR1
  .extern USBCSR2
  .extern USBCSR3
  .extern USBIENCSR0
  .extern USBIENCSR1
  .extern USBIENCSR2
  .extern USBIENCSR3
  .extern USBFIFO0
  .extern USBFIFO1
  .extern USBFIFO2
  .extern USBFIFO3
  .extern USBFIFO4
  .extern USBFIFO5
  .extern USBFIFO6
  .extern USBFIFO7
  .extern USBOTG
  .extern USBFIFOA
  .extern USBHWVER
  .extern USBINFO
  .extern USBEOFRST
  .extern USBE0TXA
  .extern USBE0RXA
  .extern USBE1TXA
  .extern USBE1RXA
  .extern USBE2TXA
  .extern USBE2RXA
  .extern USBE3TXA
  .extern USBE3RXA
  .extern USBE4TXA
  .extern USBE4RXA
  .extern USBE5TXA
  .extern USBE5RXA
  .extern USBE6TXA
  .extern USBE6RXA
  .extern USBE7TXA
  .extern USBE7RXA
  .extern USBE0CSR0
  .extern USBE0CSR2
  .extern USBE0CSR3
  .extern USBE1CSR0
  .extern USBE1CSR1
  .extern USBE1CSR2
  .extern USBE1CSR3
  .extern USBE2CSR0
  .extern USBE2CSR1
  .extern USBE2CSR2
  .extern USBE2CSR3
  .extern USBE3CSR0
  .extern USBE3CSR1
  .extern USBE3CSR2
  .extern USBE3CSR3
  .extern USBE4CSR0
  .extern USBE4CSR1
  .extern USBE4CSR2
  .extern USBE4CSR3
  .extern USBE5CSR0
  .extern USBE5CSR1
  .extern USBE5CSR2
  .extern USBE5CSR3
  .extern USBE6CSR0
  .extern USBE6CSR1
  .extern USBE6CSR2
  .extern USBE6CSR3
  .extern USBE7CSR0
  .extern USBE7CSR1
  .extern USBE7CSR2
  .extern USBE7CSR3
  .extern USBDMAINT
  .extern USBDMA1C
  .extern USBDMA1A
  .extern USBDMA1N
  .extern USBDMA2C
  .extern USBDMA2A
  .extern USBDMA2N
  .extern USBDMA3C
  .extern USBDMA3A
  .extern USBDMA3N
  .extern USBDMA4C
  .extern USBDMA4A
  .extern USBDMA4N
  .extern USBDMA5C
  .extern USBDMA5A
  .extern USBDMA5N
  .extern USBDMA6C
  .extern USBDMA6A
  .extern USBDMA6N
  .extern USBDMA7C
  .extern USBDMA7A
  .extern USBDMA7N
  .extern USBDMA8C
  .extern USBDMA8A
  .extern USBDMA8N
  .extern USBE1RPC
  .extern USBE2RPC
  .extern USBE3RPC
  .extern USBE4RPC
  .extern USBE5RPC
  .extern USBE6RPC
  .extern USBE7RPC
  .extern USBDPBFD
  .extern USBTMCON1
  .extern USBTMCON2
  .extern USBLPMR1
  .extern USBLMPR2
  .extern USBLPMP2
  .extern RNGVER
  .extern RNGCON
  .extern RNGPOLY1
  .extern RNGPOLY2
  .extern RNGNUMGEN1
  .extern RNGNUMGEN2
  .extern RNGSEED1
  .extern RNGSEED2
  .extern RNGCNT
  .extern SBFLAG
  .extern SBT0ELOG1
  .extern SBT0ELOG2
  .extern SBT0ECON
  .extern SBT0ECLRS
  .extern SBT0ECLRM
  .extern SBT0REG0
  .extern SBT0RD0
  .extern SBT0WR0
  .extern SBT0REG1
  .extern SBT0RD1
  .extern SBT0WR1
  .extern SBT1ELOG1
  .extern SBT1ELOG2
  .extern SBT1ECON
  .extern SBT1ECLRS
  .extern SBT1ECLRM
  .extern SBT1REG0
  .extern SBT1RD0
  .extern SBT1WR0
  .extern SBT1REG2
  .extern SBT1RD2
  .extern SBT1WR2
  .extern SBT1REG3
  .extern SBT1RD3
  .extern SBT1WR3
  .extern SBT1REG4
  .extern SBT1RD4
  .extern SBT1WR4
  .extern SBT1REG5
  .extern SBT1RD5
  .extern SBT1WR5
  .extern SBT1REG6
  .extern SBT1RD6
  .extern SBT1WR6
  .extern SBT1REG7
  .extern SBT1RD7
  .extern SBT1WR7
  .extern SBT1REG8
  .extern SBT1RD8
  .extern SBT1WR8
  .extern SBT2ELOG1
  .extern SBT2ELOG2
  .extern SBT2ECON
  .extern SBT2ECLRS
  .extern SBT2ECLRM
  .extern SBT2REG0
  .extern SBT2RD0
  .extern SBT2WR0
  .extern SBT2REG1
  .extern SBT2RD1
  .extern SBT2WR1
  .extern SBT2REG2
  .extern SBT2RD2
  .extern SBT2WR2
  .extern SBT3ELOG1
  .extern SBT3ELOG2
  .extern SBT3ECON
  .extern SBT3ECLRS
  .extern SBT3ECLRM
  .extern SBT3REG0
  .extern SBT3RD0
  .extern SBT3WR0
  .extern SBT3REG1
  .extern SBT3RD1
  .extern SBT3WR1
  .extern SBT3REG2
  .extern SBT3RD2
  .extern SBT3WR2
  .extern SBT4ELOG1
  .extern SBT4ELOG2
  .extern SBT4ECON
  .extern SBT4ECLRS
  .extern SBT4ECLRM
  .extern SBT4REG0
  .extern SBT4RD0
  .extern SBT4WR0
  .extern SBT4REG2
  .extern SBT4RD2
  .extern SBT4WR2
  .extern SBT5ELOG1
  .extern SBT5ELOG2
  .extern SBT5ECON
  .extern SBT5ECLRS
  .extern SBT5ECLRM
  .extern SBT5REG0
  .extern SBT5RD0
  .extern SBT5WR0
  .extern SBT5REG1
  .extern SBT5RD1
  .extern SBT5WR1
  .extern SBT5REG2
  .extern SBT5RD2
  .extern SBT5WR2
  .extern SBT6ELOG1
  .extern SBT6ELOG2
  .extern SBT6ECON
  .extern SBT6ECLRS
  .extern SBT6ECLRM
  .extern SBT6REG0
  .extern SBT6RD0
  .extern SBT6WR0
  .extern SBT6REG1
  .extern SBT6RD1
  .extern SBT6WR1
  .extern SBT7ELOG1
  .extern SBT7ELOG2
  .extern SBT7ECON
  .extern SBT7ECLRS
  .extern SBT7ECLRM
  .extern SBT7REG0
  .extern SBT7RD0
  .extern SBT7WR0
  .extern SBT7REG1
  .extern SBT7RD1
  .extern SBT7WR1
  .extern SBT8ELOG1
  .extern SBT8ELOG2
  .extern SBT8ECON
  .extern SBT8ECLRS
  .extern SBT8ECLRM
  .extern SBT8REG0
  .extern SBT8RD0
  .extern SBT8WR0
  .extern SBT8REG1
  .extern SBT8RD1
  .extern SBT8WR1
  .extern SBT9ELOG1
  .extern SBT9ELOG2
  .extern SBT9ECON
  .extern SBT9ECLRS
  .extern SBT9ECLRM
  .extern SBT9REG0
  .extern SBT9RD0
  .extern SBT9WR0
  .extern SBT9REG1
  .extern SBT9RD1
  .extern SBT9WR1
  .extern SBT10ELOG1
  .extern SBT10ELOG2
  .extern SBT10ECON
  .extern SBT10ECLRS
  .extern SBT10ECLRM
  .extern SBT10REG0
  .extern SBT10RD0
  .extern SBT10WR0
  .extern SBT11ELOG1
  .extern SBT11ELOG2
  .extern SBT11ECON
  .extern SBT11ECLRS
  .extern SBT11ECLRM
  .extern SBT11REG0
  .extern SBT11RD0
  .extern SBT11WR0
  .extern SBT11REG1
  .extern SBT11RD1
  .extern SBT11WR1
  .extern SBT12ELOG1
  .extern SBT12ELOG2
  .extern SBT12ECON
  .extern SBT12ECLRS
  .extern SBT12ECLRM
  .extern SBT12REG0
  .extern SBT12RD0
  .extern SBT12WR0
  .extern SBT13ELOG1
  .extern SBT13ELOG2
  .extern SBT13ECON
  .extern SBT13ECLRS
  .extern SBT13ECLRM
  .extern SBT13REG0
  .extern SBT13RD0
  .extern SBT13WR0
  .extern DEVCFG3
  .extern DEVCFG2
  .extern DEVCFG1
  .extern DEVCFG0
  .extern DEVCP3
  .extern DEVCP2
  .extern DEVCP1
  .extern DEVCP0
  .extern DEVSIGN3
  .extern DEVSIGN2
  .extern DEVSIGN1
  .extern DEVSIGN0
  .extern SEQ3
  .extern SEQ2
  .extern SEQ1
  .extern SEQ0
  .extern DEVADC0
  .extern DEVADC1
  .extern DEVADC2
  .extern DEVADC3
  .extern DEVADC4
  .extern DEVADC7
  .extern DEVSN0
  .extern DEVSN1
  .extern ADEVCFG3
  .extern ADEVCFG2
  .extern ADEVCFG1
  .extern ADEVCFG0
  .extern ADEVCP3
  .extern ADEVCP2
  .extern ADEVCP1
  .extern ADEVCP0
  .extern ADEVSIGN3
  .extern ADEVSIGN2
  .extern ADEVSIGN1
  .extern ADEVSIGN0
  .extern ASEQ3
  .extern ASEQ2
  .extern ASEQ1
  .extern ASEQ0
  .extern AUBADEVCFG3
  .extern AUBADEVCFG2
  .extern AUBADEVCFG1
  .extern AUBADEVCFG0
  .extern AUBADEVCP3
  .extern AUBADEVCP2
  .extern AUBADEVCP1
  .extern AUBADEVCP0
  .extern AUBADEVSIGN3
  .extern AUBADEVSIGN2
  .extern AUBADEVSIGN1
  .extern AUBADEVSIGN0
  .extern AUBASEQ3
  .extern AUBASEQ2
  .extern AUBASEQ1
  .extern AUBASEQ0
  .extern UBADEVCFG3
  .extern UBADEVCFG2
  .extern UBADEVCFG1
  .extern UBADEVCFG0
  .extern UBADEVCP3
  .extern UBADEVCP2
  .extern UBADEVCP1
  .extern UBADEVCP0
  .extern UBADEVSIGN3
  .extern UBADEVSIGN2
  .extern UBADEVSIGN1
  .extern UBADEVSIGN0
  .extern UBASEQ3
  .extern UBASEQ2
  .extern UBASEQ1
  .extern UBASEQ0
  .extern ABF1DEVCFG3
  .extern ABF1DEVCFG2
  .extern ABF1DEVCFG1
  .extern ABF1DEVCFG0
  .extern ABF1DEVCP3
  .extern ABF1DEVCP2
  .extern ABF1DEVCP1
  .extern ABF1DEVCP0
  .extern ABF1DEVSIGN3
  .extern ABF1DEVSIGN2
  .extern ABF1DEVSIGN1
  .extern ABF1DEVSIGN0
  .extern ABF1SEQ3
  .extern ABF1SEQ2
  .extern ABF1SEQ1
  .extern ABF1SEQ0
  .extern BF1DEVCFG3
  .extern BF1DEVCFG2
  .extern BF1DEVCFG1
  .extern BF1DEVCFG0
  .extern BF1DEVCP3
  .extern BF1DEVCP2
  .extern BF1DEVCP1
  .extern BF1DEVCP0
  .extern BF1DEVSIGN3
  .extern BF1DEVSIGN2
  .extern BF1DEVSIGN1
  .extern BF1DEVSIGN0
  .extern BF1SEQ3
  .extern BF1SEQ2
  .extern BF1SEQ1
  .extern BF1SEQ0
  .extern ABF2DEVCFG3
  .extern ABF2DEVCFG2
  .extern ABF2DEVCFG1
  .extern ABF2DEVCFG0
  .extern ABF2DEVCP3
  .extern ABF2DEVCP2
  .extern ABF2DEVCP1
  .extern ABF2DEVCP0
  .extern ABF2DEVSIGN3
  .extern ABF2DEVSIGN2
  .extern ABF2DEVSIGN1
  .extern ABF2DEVSIGN0
  .extern ABF2SEQ3
  .extern ABF2SEQ2
  .extern ABF2SEQ1
  .extern ABF2SEQ0
  .extern BF2DEVCFG3
  .extern BF2DEVCFG2
  .extern BF2DEVCFG1
  .extern BF2DEVCFG0
  .extern BF2DEVCP3
  .extern BF2DEVCP2
  .extern BF2DEVCP1
  .extern BF2DEVCP0
  .extern BF2DEVSIGN3
  .extern BF2DEVSIGN2
  .extern BF2DEVSIGN1
  .extern BF2DEVSIGN0
  .extern BF2SEQ3
  .extern BF2SEQ2
  .extern BF2SEQ1
  .extern BF2SEQ0
# 573 "c:\\program files (x86)\\microchip\\xc32\\v1.44\\pic32mx\\include\\xc.h" 2 3
# 927 "c:\\program files (x86)\\microchip\\xc32\\v1.44\\pic32mx\\include\\xc.h" 3
# 1 "c:\\program files (x86)\\microchip\\xc32\\v1.44\\pic32mx\\include\\cp0defs.h" 1 3
# 35 "c:\\program files (x86)\\microchip\\xc32\\v1.44\\pic32mx\\include\\cp0defs.h" 3
       
# 928 "c:\\program files (x86)\\microchip\\xc32\\v1.44\\pic32mx\\include\\xc.h" 2 3
# 30 "../../../Source/portable/MPLAB/PIC32MZ/port_asm.S" 2
# 1 "c:\\program files (x86)\\microchip\\xc32\\v1.44\\pic32mx\\include\\sys\\asm.h" 1 3
# 31 "../../../Source/portable/MPLAB/PIC32MZ/port_asm.S" 2
# 1 "src/FreeRTOSConfig.h" 1
# 32 "../../../Source/portable/MPLAB/PIC32MZ/port_asm.S" 2
# 1 "../../../Source/portable/MPLAB/PIC32MZ/ISR_Support.h" 1
# 39 "../../../Source/portable/MPLAB/PIC32MZ/ISR_Support.h"
.macro portSAVE_FPU_REGS offset, base




 sdc1 $f31, \offset + 248(\base)
 sdc1 $f30, \offset + 240(\base)
 sdc1 $f29, \offset + 232(\base)
 sdc1 $f28, \offset + 224(\base)
 sdc1 $f27, \offset + 216(\base)
 sdc1 $f26, \offset + 208(\base)
 sdc1 $f25, \offset + 200(\base)
 sdc1 $f24, \offset + 192(\base)
 sdc1 $f23, \offset + 184(\base)
 sdc1 $f22, \offset + 176(\base)
 sdc1 $f21, \offset + 168(\base)
 sdc1 $f20, \offset + 160(\base)
 sdc1 $f19, \offset + 152(\base)
 sdc1 $f18, \offset + 144(\base)
 sdc1 $f17, \offset + 136(\base)
 sdc1 $f16, \offset + 128(\base)
 sdc1 $f15, \offset + 120(\base)
 sdc1 $f14, \offset + 112(\base)
 sdc1 $f13, \offset + 104(\base)
 sdc1 $f12, \offset + 96(\base)
 sdc1 $f11, \offset + 88(\base)
 sdc1 $f10, \offset + 80(\base)
 sdc1 $f9, \offset + 72(\base)
 sdc1 $f8, \offset + 64(\base)
 sdc1 $f7, \offset + 56(\base)
 sdc1 $f6, \offset + 48(\base)
 sdc1 $f5, \offset + 40(\base)
 sdc1 $f4, \offset + 32(\base)
 sdc1 $f3, \offset + 24(\base)
 sdc1 $f2, \offset + 16(\base)
 sdc1 $f1, \offset + 8(\base)
 sdc1 $f0, \offset + 0(\base)

    .endm


.macro portLOAD_FPU_REGS offset, base




 ldc1 $f0, \offset + 0(\base)
 ldc1 $f1, \offset + 8(\base)
 ldc1 $f2, \offset + 16(\base)
 ldc1 $f3, \offset + 24(\base)
 ldc1 $f4, \offset + 32(\base)
 ldc1 $f5, \offset + 40(\base)
 ldc1 $f6, \offset + 48(\base)
 ldc1 $f7, \offset + 56(\base)
 ldc1 $f8, \offset + 64(\base)
 ldc1 $f9, \offset + 72(\base)
 ldc1 $f10, \offset + 80(\base)
 ldc1 $f11, \offset + 88(\base)
 ldc1 $f12, \offset + 96(\base)
 ldc1 $f13, \offset + 104(\base)
 ldc1 $f14, \offset + 112(\base)
 ldc1 $f15, \offset + 120(\base)
 ldc1 $f16, \offset + 128(\base)
 ldc1 $f17, \offset + 136(\base)
 ldc1 $f18, \offset + 144(\base)
 ldc1 $f19, \offset + 152(\base)
 ldc1 $f20, \offset + 160(\base)
 ldc1 $f21, \offset + 168(\base)
 ldc1 $f22, \offset + 176(\base)
 ldc1 $f23, \offset + 184(\base)
 ldc1 $f24, \offset + 192(\base)
 ldc1 $f25, \offset + 200(\base)
 ldc1 $f26, \offset + 208(\base)
 ldc1 $f27, \offset + 216(\base)
 ldc1 $f28, \offset + 224(\base)
 ldc1 $f29, \offset + 232(\base)
 ldc1 $f30, \offset + 240(\base)
 ldc1 $f31, \offset + 248(\base)

    .endm


.macro portSAVE_CONTEXT




 mfc0 $26, $13, 0
 addiu $29, $29, -160
# 154 "../../../Source/portable/MPLAB/PIC32MZ/ISR_Support.h"
 mfc0 $27, $12, 0



 sw $23, 48($29)
 sw $22, 44($29)
 sw $21, 40($29)
 sw $27, 156($29)


 srl $26, $26, 0xa
 ins $27, $26, 10, 7
 srl $26, $26, 0x7
 ins $27, $26, 18, 1
 ins $27, $0, 1, 4


 add $21, $0, $29


 la $26, uxInterruptNesting
 lw $22, ($26)



 bne $22, $0, 1f
 nop


 la $29, xISRStackTop
 lw $29, ($29)


1: addiu $22, $22, 1
 sw $22, 0($26)


 mfc0 $22, $14, 0


 mtc0 $27, $12, 0




 sw $31, 120($21)
 sw $30, 116($21)
 sw $25, 112($21)
 sw $24, 108($21)
 sw $15, 104($21)
 sw $14, 100($21)
 sw $13, 96($21)
 sw $12, 92($21)
 sw $11, 88($21)
 sw $10, 84($21)
 sw $9, 80($21)
 sw $8, 76($21)
 sw $7, 72($21)
 sw $6, 68($21)
 sw $5, 64($21)
 sw $4, 60($21)
 sw $3, 56($21)
 sw $2, 52($21)
 sw $22, 152($21)
 sw $1, 16($21)



 mfhi $22, $ac1
 sw $22, 128($21)
 mflo $22, $ac1
 sw $22, 124($21)

 mfhi $22, $ac2
 sw $22, 136($21)
 mflo $22, $ac2
 sw $22, 132($21)

 mfhi $22, $ac3
 sw $22, 144($21)
 mflo $22, $ac3
 sw $22, 140($21)


 rddsp $22
 sw $22, 148($21)


 mfhi $22, $ac0
 sw $22, 12($21)
 mflo $22, $ac0
 sw $22, 8($21)
# 271 "../../../Source/portable/MPLAB/PIC32MZ/ISR_Support.h"
 la $22, uxInterruptNesting
 lw $22, ($22)
 addiu $22, $22, -1
 bne $22, $0, 1f
 nop


 la $22, uxSavedTaskStackPointer
 sw $21, ($22)
1:
 .endm


.macro portRESTORE_CONTEXT



 la $22, uxInterruptNesting
 lw $22, ($22)
 addiu $22, $22, -1
 bne $22, $0, 1f
 nop
 la $22, uxSavedTaskStackPointer
 lw $21, ($22)
# 310 "../../../Source/portable/MPLAB/PIC32MZ/ISR_Support.h"
1:


 lw $22, 128($21)
 mthi $22, $ac1
 lw $22, 124($21)
 mtlo $22, $ac1

 lw $22, 136($21)
 mthi $22, $ac2
 lw $22, 132($21)
 mtlo $22, $ac2

 lw $22, 144($21)
 mthi $22, $ac3
 lw $22, 140($21)
 mtlo $22, $ac3


 lw $22, 148($21)
 wrdsp $22

 lw $22, 8($21)
 mtlo $22, $ac0
 lw $22, 12($21)
 mthi $22, $ac0
 lw $1, 16($21)



 lw $23, 48($21)
 lw $22, 44($21)
 lw $2, 52($21)
 lw $3, 56($21)
 lw $4, 60($21)
 lw $5, 64($21)
 lw $6, 68($21)
 lw $7, 72($21)
 lw $8, 76($21)
 lw $9, 80($21)
 lw $10, 84($21)
 lw $11, 88($21)
 lw $12, 92($21)
 lw $13, 96($21)
 lw $14, 100($21)
 lw $15, 104($21)
 lw $24, 108($21)
 lw $25, 112($21)
 lw $30, 116($21)
 lw $31, 120($21)


 di
 ehb


 la $26, uxInterruptNesting
 lw $27, ($26)
 addiu $27, $27, -1
 sw $27, 0($26)
# 414 "../../../Source/portable/MPLAB/PIC32MZ/ISR_Support.h"
  lw $26, 156($21)
  lw $27, 152($21)



  add $29, $0, $21
  lw $21, 40($29)

  addiu $29, $29, 160



 mtc0 $26, $12, 0
 mtc0 $27, $14, 0
 ehb
 eret
 nop

 .endm
# 33 "../../../Source/portable/MPLAB/PIC32MZ/port_asm.S" 2

 .extern pxCurrentTCB
 .extern vTaskSwitchContext
 .extern vPortIncrementTick
 .extern xISRStackTop
 .extern ulTaskHasFPUContext

 .global vPortStartFirstTask
 .global vPortYieldISR
 .global vPortTickInterruptHandler
 .global vPortInitialiseFPSCR




 .set nomips16
 .set nomicromips
 .set noreorder
 .set noat
# 100 "../../../Source/portable/MPLAB/PIC32MZ/port_asm.S"
  .equ __vector_dispatch_4, vPortTickInterruptHandler
  .global __vector_dispatch_4
  .section .vector_4, code, keep


 .ent vPortTickInterruptHandler

vPortTickInterruptHandler:

 portSAVE_CONTEXT

 jal vPortIncrementTick
 nop

 portRESTORE_CONTEXT

 .end vPortTickInterruptHandler



 .set noreorder
 .set noat
 .section .text, code
 .ent vPortStartFirstTask

vPortStartFirstTask:



 portRESTORE_CONTEXT

 .end vPortStartFirstTask





 .set nomips16
 .set nomicromips
 .set noreorder
 .set noat




 .equ __vector_dispatch_1, vPortYieldISR
 .global __vector_dispatch_1
 .section .vector_1, code

 .ent vPortYieldISR
vPortYieldISR:
# 428 "../../../Source/portable/MPLAB/PIC32MZ/port_asm.S"
  addiu $29, $29, -160
  mfc0 $27, $12, 0



  sw $22, 44($29)
  sw $21, 40($29)
  sw $27, 156($29)


  ins $27, $0, 10, 7
  ins $27, $0, 18, 1
  ori $27, $27, ( 0x03 << 10 )
  ins $27, $0, 1, 4


  add $21, $0, $29




  la $29, xISRStackTop
  lw $29, ($29)


  la $26, uxInterruptNesting
  addiu $22, $0, 1
  sw $22, 0($26)



  mfc0 $22, $14, 0


  mtc0 $27, $12, 0



  sw $31, 120($21)
  sw $30, 116($21)
  sw $25, 112($21)
  sw $24, 108($21)
  sw $15, 104($21)
  sw $14, 100($21)
  sw $13, 96($21)
  sw $12, 92($21)
  sw $11, 88($21)
  sw $10, 84($21)
  sw $9, 80($21)
  sw $8, 76($21)
  sw $7, 72($21)
  sw $6, 68($21)
  sw $5, 64($21)
  sw $4, 60($21)
  sw $3, 56($21)
  sw $2, 52($21)
  sw $23, 48($21)
  sw $22, 152($21)

  sw $20, 36($21)
  sw $19, 32($21)
  sw $18, 28($21)
  sw $17, 24($21)
  sw $16, 20($21)
  sw $1, 16($21)





  mfhi $23, $ac1
  sw $23, 128($21)
  mflo $23, $ac1
  sw $23, 124($21)

  mfhi $23, $ac2
  sw $23, 136($21)
  mflo $23, $ac2
  sw $23, 132($21)

  mfhi $23, $ac3
  sw $23, 144($21)
  mflo $23, $ac3
  sw $23, 140($21)

  rddsp $23
  sw $23, 148($21)

  mfhi $23, $ac0
  sw $23, 12($21)
  mflo $23, $ac0
  sw $23, 8($21)


  la $23, pxCurrentTCB
  lw $23, ($23)
  sw $21, ($23)





  di
  ehb
  mfc0 $23, $12, 0
  ins $23, $0, 10, 7
  ins $23, $0, 18, 1
  ori $22, $23, ( 0x03 << 10 ) | 1



  mtc0 $22, $12, 0
  ehb


  mfc0 $22, $13, 0
  ins $22, $0, 8, 1
  mtc0 $22, $13, 0
  ehb


  la $22, IFS0CLR
  addiu $20, $0, 2
  sw $20, ($22)

  jal vTaskSwitchContext
  nop


  mtc0 $23, $12, 0
  ehb


  la $16, pxCurrentTCB
  lw $16, ($16)
  lw $21, ($16)


  lw $16, 128($21)
  mthi $16, $ac1
  lw $16, 124($21)
  mtlo $16, $ac1

  lw $16, 136($21)
  mthi $16, $ac2
  lw $16, 132($21)
  mtlo $16, $ac2

  lw $16, 144($21)
  mthi $16, $ac3
  lw $16, 140($21)
  mtlo $16, $ac3

  lw $16, 148($21)
  wrdsp $16

  lw $16, 8($21)
  mtlo $16, $ac0
  lw $16, 12($21)
  mthi $16, $ac0

  lw $1, 16($21)
  lw $16, 20($21)
  lw $17, 24($21)
  lw $18, 28($21)
  lw $19, 32($21)
  lw $20, 36($21)


  lw $22, 44($21)
  lw $23, 48($21)
  lw $2, 52($21)
  lw $3, 56($21)
  lw $4, 60($21)
  lw $5, 64($21)
  lw $6, 68($21)
  lw $7, 72($21)
  lw $8, 76($21)
  lw $9, 80($21)
  lw $10, 84($21)
  lw $11, 88($21)
  lw $12, 92($21)
  lw $13, 96($21)
  lw $14, 100($21)
  lw $15, 104($21)
  lw $24, 108($21)
  lw $25, 112($21)
  lw $30, 116($21)
  lw $31, 120($21)


  di
  ehb



  la $26, uxInterruptNesting
  sw $0, 0($26)


  add $29, $0, $21


  lw $21, 40($29)


  lw $27, 156($29)
  lw $26, 152($29)


  addiu $29, $29, 160




 mtc0 $27, $12, 0
 mtc0 $26, $14, 0
 ehb
 eret
 nop

 .end vPortYieldISR
