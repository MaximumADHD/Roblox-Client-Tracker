PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R3 0 1
        4 JUMPIF                           R3 ; [+1]
        5 RETURN                           R0 1
        6 JUMPIFEQKNIL                     R1 ; [+6]
        8 JUMPIFEQKNIL                     R2 ; [+4]
       10 LENGTH                           R3 R2
       11 JUMPIFNOTEQKN                    R3 K1 [0] ; [+2]
       13 RETURN                           R0 1
       14 GETIMPORT                        R3 K4 [table.clone]
       16 MOVE                             R4 R0
       17 CALL                             R3 1 1
       18 MOVE                             R4 R3
       19 LOADNIL                          R5
       20 LOADNIL                          R6
       21 FORGPREP                         R4
       22 LOADNIL                          R9
       23 GETTABLEKS                       R10 R8 K5 ["Type"]
       25 JUMPIFNOTEQKS                    R10 K6 ["Dropdown"] ; [+44]
       27 GETTABLEKS                       R10 R8 K7 ["Id"]
       29 JUMPIFNOTEQ                      R10 R1 ; [+40]
       31 GETIMPORT                        R10 K4 [table.clone]
       33 GETTABLEKS                       R11 R8 K8 ["Options"]
       35 CALL                             R10 1 1
       36 NEWTABLE                         R11 0 0
       38 MOVE                             R12 R10
       39 LOADNIL                          R13
       40 LOADNIL                          R14
       41 FORGPREP                         R12
       42 LOADB                            R17 1
       43 SETTABLE                         R17 R11 R16
       44 FORGLOOP                         R12 2 ; [-3]
       46 MOVE                             R12 R2
       47 LOADNIL                          R13
       48 LOADNIL                          R14
       49 FORGPREP                         R12
       50 GETTABLE                         R17 R11 R16
       51 JUMPIF                           R17 ; [+9]
       52 FASTCALL2                        TABLE_INSERT R10 R16 ; [+5]
       54 MOVE                             R18 R10
       55 MOVE                             R19 R16
       56 GETIMPORT                        R17 K10 [table.insert]
       58 CALL                             R17 2 0
       59 LOADB                            R17 1
       60 SETTABLE                         R17 R11 R16
       61 FORGLOOP                         R12 2 ; [-12]
       63 GETIMPORT                        R12 K4 [table.clone]
       65 MOVE                             R13 R8
       66 CALL                             R12 1 1
       67 MOVE                             R9 R12
       68 SETTABLEKS                       R10 R9 K8 ["Options"]
       70 GETTABLEKS                       R10 R8 K5 ["Type"]
       72 JUMPIFNOTEQKS                    R10 K11 ["Section"] ; [+17]
       74 MOVE                             R10 R9
       75 JUMPIF                           R10 ; [+4]
       76 GETIMPORT                        R10 K4 [table.clone]
       78 MOVE                             R11 R8
       79 CALL                             R10 1 1
       80 MOVE                             R9 R10
       81 GETUPVAL                         R10 1
       82 GETTABLEKS                       R11 R8 K12 ["Controls"]
       84 MOVE                             R12 R1
       85 MOVE                             R13 R2
       86 CALL                             R10 3 1
       87 SETTABLEKS                       R10 R9 K12 ["Controls"]
       89 JUMP                             ; [+23]
       90 GETTABLEKS                       R10 R8 K5 ["Type"]
       92 JUMPIFNOTEQKS                    R10 K6 ["Dropdown"] ; [+20]
       94 GETTABLEKS                       R10 R8 K13 ["BundledControls"]
       96 JUMPIFEQKNIL                     R10 ; [+16]
       98 MOVE                             R10 R9
       99 JUMPIF                           R10 ; [+4]
      100 GETIMPORT                        R10 K4 [table.clone]
      102 MOVE                             R11 R8
      103 CALL                             R10 1 1
      104 MOVE                             R9 R10
      105 GETUPVAL                         R10 1
      106 GETTABLEKS                       R11 R8 K13 ["BundledControls"]
      108 MOVE                             R12 R1
      109 MOVE                             R13 R2
      110 CALL                             R10 3 1
      111 SETTABLEKS                       R10 R9 K13 ["BundledControls"]
      113 JUMPIFEQKNIL                     R9 ; [+2]
      115 SETTABLE                         R9 R3 R7
      116 FORGLOOP                         R4 2 ; [-95]
      118 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R2 0 1
        4 JUMPIF                           R2 ; [+1]
        5 RETURN                           R0 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["getEngineFeatureStudioDeviceSimulatorDynamicControlPresentation"]
        9 CALL                             R2 0 1
       10 JUMPIF                           R2 ; [+1]
       11 RETURN                           R0 1
       12 GETIMPORT                        R2 K3 [next]
       14 MOVE                             R3 R1
       15 CALL                             R2 1 1
       16 JUMPIFNOTEQKNIL                  R2 ; [+2]
       18 RETURN                           R0 1
       19 GETIMPORT                        R2 K6 [table.clone]
       21 MOVE                             R3 R0
       22 CALL                             R2 1 1
       23 MOVE                             R3 R2
       24 LOADNIL                          R4
       25 LOADNIL                          R5
       26 FORGPREP                         R3
       27 LOADNIL                          R8
       28 GETTABLEKS                       R10 R7 K7 ["Type"]
       30 JUMPIFNOTEQKS                    R10 K8 ["Dropdown"] ; [+9]
       32 GETTABLEKS                       R10 R7 K9 ["Id"]
       34 JUMPIFEQKNIL                     R10 ; [+5]
       36 GETTABLEKS                       R10 R7 K9 ["Id"]
       38 GETTABLE                         R9 R1 R10
       39 JUMP                             ; [+1]
       40 LOADNIL                          R9
       41 JUMPIFEQKNIL                     R9 ; [+40]
       43 GETTABLEKS                       R10 R7 K7 ["Type"]
       45 JUMPIFNOTEQKS                    R10 K8 ["Dropdown"] ; [+36]
       47 NEWTABLE                         R10 0 0
       49 MOVE                             R11 R9
       50 LOADNIL                          R12
       51 LOADNIL                          R13
       52 FORGPREP                         R11
       53 LOADB                            R16 1
       54 SETTABLE                         R16 R10 R15
       55 FORGLOOP                         R11 2 ; [-3]
       57 NEWTABLE                         R11 0 0
       59 GETTABLEKS                       R12 R7 K10 ["Options"]
       61 LOADNIL                          R13
       62 LOADNIL                          R14
       63 FORGPREP                         R12
       64 GETTABLE                         R17 R10 R16
       65 JUMPIFNOT                        R17 ; [+7]
       66 FASTCALL2                        TABLE_INSERT R11 R16 ; [+5]
       68 MOVE                             R18 R11
       69 MOVE                             R19 R16
       70 GETIMPORT                        R17 K12 [table.insert]
       72 CALL                             R17 2 0
       73 FORGLOOP                         R12 2 ; [-10]
       75 GETIMPORT                        R12 K6 [table.clone]
       77 MOVE                             R13 R7
       78 CALL                             R12 1 1
       79 MOVE                             R8 R12
       80 SETTABLEKS                       R11 R8 K10 ["Options"]
       82 GETTABLEKS                       R10 R7 K7 ["Type"]
       84 JUMPIFNOTEQKS                    R10 K13 ["Section"] ; [+16]
       86 MOVE                             R10 R8
       87 JUMPIF                           R10 ; [+4]
       88 GETIMPORT                        R10 K6 [table.clone]
       90 MOVE                             R11 R7
       91 CALL                             R10 1 1
       92 MOVE                             R8 R10
       93 GETUPVAL                         R10 1
       94 GETTABLEKS                       R11 R7 K14 ["Controls"]
       96 MOVE                             R12 R1
       97 CALL                             R10 2 1
       98 SETTABLEKS                       R10 R8 K14 ["Controls"]
      100 JUMP                             ; [+22]
      101 GETTABLEKS                       R10 R7 K7 ["Type"]
      103 JUMPIFNOTEQKS                    R10 K8 ["Dropdown"] ; [+19]
      105 GETTABLEKS                       R10 R7 K15 ["BundledControls"]
      107 JUMPIFEQKNIL                     R10 ; [+15]
      109 MOVE                             R10 R8
      110 JUMPIF                           R10 ; [+4]
      111 GETIMPORT                        R10 K6 [table.clone]
      113 MOVE                             R11 R7
      114 CALL                             R10 1 1
      115 MOVE                             R8 R10
      116 GETUPVAL                         R10 1
      117 GETTABLEKS                       R11 R7 K15 ["BundledControls"]
      119 MOVE                             R12 R1
      120 CALL                             R10 2 1
      121 SETTABLEKS                       R10 R8 K15 ["BundledControls"]
      123 JUMPIFEQKNIL                     R8 ; [+2]
      125 SETTABLE                         R8 R2 R6
      126 FORGLOOP                         R3 2 ; [-100]
      128 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 2
        9 GETIMPORT                        R1 K3 [os.clock]
       11 CALL                             R1 0 1
       12 SETTABLEKS                       R1 R0 K0 ["current"]
       14 GETUPVAL                         R0 1
       15 LOADB                            R1 0
       16 CALL                             R0 1 0
       17 GETUPVAL                         R0 3
       18 JUMPIFEQKNIL                     R0 ; [+3]
       20 GETUPVAL                         R0 3
       21 CALL                             R0 0 0
       22 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K2 [os.clock]
        2 CALL                             R1 0 1
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K3 ["current"]
        6 SUB                              R0 R1 R2
        7 LOADK                            R1 K4 [0.3]
        8 JUMPIFNOTLT                      R0 R1 ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 1
       12 JUMPIFNOT                        R0 ; [+3]
       13 GETUPVAL                         R0 2
       14 CALL                             R0 0 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R0 3
       17 LOADB                            R1 1
       18 CALL                             R0 1 0
       19 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 0
        5 CALL                             R0 0 0
        6 GETUPVAL                         R0 1
        7 GETIMPORT                        R1 K2 [os.clock]
        9 CALL                             R1 0 1
       10 SETTABLEKS                       R1 R0 K3 ["current"]
       12 GETUPVAL                         R0 2
       13 LOADB                            R1 0
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 1
        6 SETTABLEKS                       R1 R0 K0 ["current"]
        8 GETUPVAL                         R0 0
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R0 0 0
        2 NEWTABLE                         R1 0 0
        4 GETUPVAL                         R2 0
        5 JUMPIF                           R2 ; [+2]
        6 NEWTABLE                         R2 0 0
        8 MOVE                             R3 R2
        9 LOADNIL                          R4
       10 LOADNIL                          R5
       11 FORGPREP                         R3
       12 GETTABLEKS                       R8 R7 K0 ["Options"]
       14 JUMPIFEQKNIL                     R8 ; [+6]
       16 GETTABLEKS                       R8 R7 K1 ["ControlId"]
       18 GETTABLEKS                       R9 R7 K0 ["Options"]
       20 SETTABLE                         R9 R0 R8
       21 GETTABLEKS                       R8 R7 K2 ["IsDisabled"]
       23 JUMPIFNOT                        R8 ; [+4]
       24 GETTABLEKS                       R8 R7 K1 ["ControlId"]
       26 LOADB                            R9 1
       27 SETTABLE                         R9 R1 R8
       28 FORGLOOP                         R3 2 ; [-17]
       30 DUPTABLE                         R3 K5 [{"optionsById", "disabledControlIds"}]
       31 SETTABLEKS                       R0 R3 K3 ["optionsById"]
       33 SETTABLEKS                       R1 R3 K4 ["disabledControlIds"]
       35 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Config"]
        4 GETTABLEKS                       R1 R1 K1 ["Controls"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K2 ["optionsById"]
        9 CALL                             R0 2 1
       10 GETUPVAL                         R1 3
       11 MOVE                             R2 R0
       12 GETUPVAL                         R3 4
       13 GETTABLEKS                       R3 R3 K3 ["presetControlId"]
       15 GETUPVAL                         R4 4
       16 GETTABLEKS                       R4 R4 K4 ["savedPresetNames"]
       18 CALL                             R1 3 1
       19 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+2]
        5 LOADNIL                          R1
        6 RETURN                           R1 1
        7 GETTABLEKS                       R1 R0 K1 ["entry"]
        9 GETTABLEKS                       R2 R0 K2 ["dynamicState"]
       11 GETUPVAL                         R3 1
       12 CALL                             R3 0 1
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R4 R4 K3 ["useState"]
       16 LOADB                            R5 0
       17 CALL                             R4 1 2
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R6 R6 K4 ["useRef"]
       21 LOADK                            R7 K5 [-Infinity]
       22 CALL                             R6 1 1
       23 GETUPVAL                         R7 2
       24 GETTABLEKS                       R7 R7 K4 ["useRef"]
       26 GETTABLEKS                       R9 R0 K6 ["isSaveDialogOpen"]
       28 JUMPIFEQKB                       R9 TRUE ; [+2]
       30 LOADB                            R8 0 +1
       31 LOADB                            R8 1
       32 CALL                             R7 1 1
       33 GETTABLEKS                       R9 R0 K6 ["isSaveDialogOpen"]
       35 JUMPIFEQKB                       R9 TRUE ; [+2]
       37 LOADB                            R8 0 +1
       38 LOADB                            R8 1
       39 SETTABLEKS                       R8 R7 K7 ["current"]
       41 GETTABLEKS                       R8 R0 K8 ["onDismiss"]
       43 GETTABLEKS                       R9 R0 K9 ["onApply"]
       45 GETTABLEKS                       R10 R0 K10 ["onRequestSave"]
       47 GETUPVAL                         R11 2
       48 GETTABLEKS                       R11 R11 K11 ["useCallback"]
       50 NEWCLOSURE                       R12 P0
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R8
       55 NEWTABLE                         R13 0 1
       57 MOVE                             R14 R8
       58 SETLIST                          R13 R14 1 [1]
       60 CALL                             R11 2 1
       61 GETUPVAL                         R12 2
       62 GETTABLEKS                       R12 R12 K11 ["useCallback"]
       64 NEWCLOSURE                       R13 P1
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R11
       68 CAPTURE                          VAL R5
       69 NEWTABLE                         R14 0 2
       71 MOVE                             R15 R11
       72 MOVE                             R16 R4
       73 SETLIST                          R14 R15 2 [1]
       75 CALL                             R12 2 1
       76 GETUPVAL                         R13 2
       77 GETTABLEKS                       R13 R13 K11 ["useCallback"]
       79 NEWCLOSURE                       R14 P2
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R5
       83 NEWTABLE                         R15 0 1
       85 MOVE                             R16 R9
       86 SETLIST                          R15 R16 1 [1]
       88 CALL                             R13 2 1
       89 GETUPVAL                         R14 2
       90 GETTABLEKS                       R14 R14 K11 ["useCallback"]
       92 NEWCLOSURE                       R15 P3
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R7
       95 NEWTABLE                         R16 0 1
       97 MOVE                             R17 R10
       98 SETLIST                          R16 R17 1 [1]
      100 CALL                             R14 2 1
      101 LOADNIL                          R15
      102 GETUPVAL                         R16 0
      103 GETTABLEKS                       R16 R16 K12 ["getEngineFeatureStudioDeviceSimulatorDynamicControlPresentation"]
      105 CALL                             R16 0 1
      106 JUMPIFNOT                        R16 ; [+4]
      107 JUMPIFEQKNIL                     R2 ; [+3]
      109 GETTABLEKS                       R15 R2 K13 ["ControlPresentations"]
      111 GETUPVAL                         R16 2
      112 GETTABLEKS                       R16 R16 K14 ["useMemo"]
      114 NEWCLOSURE                       R17 P4
      115 CAPTURE                          REF R15
      116 NEWTABLE                         R18 0 1
      118 MOVE                             R19 R15
      119 SETLIST                          R18 R19 1 [1]
      121 CALL                             R16 2 1
      122 GETUPVAL                         R17 2
      123 GETTABLEKS                       R17 R17 K14 ["useMemo"]
      125 NEWCLOSURE                       R18 P5
      126 CAPTURE                          UPVAL U3
      127 CAPTURE                          VAL R1
      128 CAPTURE                          VAL R16
      129 CAPTURE                          UPVAL U4
      130 CAPTURE                          VAL R0
      131 NEWTABLE                         R19 0 4
      133 GETTABLEKS                       R20 R1 K15 ["Config"]
      135 GETTABLEKS                       R20 R20 K16 ["Controls"]
      137 MOVE                             R21 R16
      138 GETTABLEKS                       R22 R0 K17 ["presetControlId"]
      140 GETTABLEKS                       R23 R0 K18 ["savedPresetNames"]
      142 SETLIST                          R19 R20 4 [1]
      144 CALL                             R17 2 1
      145 LOADB                            R18 1
      146 GETTABLEKS                       R19 R0 K9 ["onApply"]
      148 JUMPIFNOTEQKNIL                  R19 ; [+12]
      150 LOADB                            R18 1
      151 GETTABLEKS                       R19 R0 K19 ["onReset"]
      153 JUMPIFNOTEQKNIL                  R19 ; [+7]
      155 GETTABLEKS                       R19 R0 K10 ["onRequestSave"]
      157 JUMPIFNOTEQKNIL                  R19 ; [+2]
      159 LOADB                            R18 0 +1
      160 LOADB                            R18 1
      161 MOVE                             R19 R18
      162 LOADB                            R20 0
      163 GETUPVAL                         R21 0
      164 GETTABLEKS                       R21 R21 K20 ["getEngineFeatureDeviceSimulatorPerformance"]
      166 CALL                             R21 0 1
      167 JUMPIFNOT                        R21 ; [+21]
      168 GETTABLEKS                       R21 R1 K15 ["Config"]
      170 GETTABLEKS                       R21 R21 K21 ["ApplyMode"]
      172 GETUPVAL                         R22 5
      173 GETTABLEKS                       R22 R22 K21 ["ApplyMode"]
      175 GETTABLEKS                       R22 R22 K22 ["Deferred"]
      177 JUMPIFEQ                         R21 R22 ; [+11]
      179 LOADB                            R20 1
      180 MOVE                             R21 R18
      181 JUMPIFNOT                        R21 ; [+6]
      182 GETTABLEKS                       R22 R0 K17 ["presetControlId"]
      184 JUMPIFNOTEQKNIL                  R22 ; [+2]
      186 LOADB                            R21 0 +1
      187 LOADB                            R21 1
      188 MOVE                             R19 R21
      189 JUMPIFEQKNIL                     R2 ; [+4]
      191 GETTABLEKS                       R21 R2 K23 ["Icon"]
      193 JUMP                             ; [+4]
      194 GETTABLEKS                       R21 R1 K15 ["Config"]
      196 GETTABLEKS                       R21 R21 K24 ["InitialIcon"]
      198 JUMPIFEQKNIL                     R2 ; [+4]
      200 GETTABLEKS                       R22 R2 K25 ["Label"]
      202 JUMP                             ; [+4]
      203 GETTABLEKS                       R22 R1 K15 ["Config"]
      205 GETTABLEKS                       R22 R22 K26 ["InitialLabel"]
      207 GETUPVAL                         R23 0
      208 GETTABLEKS                       R23 R23 K20 ["getEngineFeatureDeviceSimulatorPerformance"]
      210 CALL                             R23 0 1
      211 JUMPIFNOT                        R23 ; [+15]
      212 GETTABLEKS                       R25 R1 K27 ["Name"]
      214 GETUPVAL                         R26 6
      215 GETTABLEKS                       R26 R26 K28 ["SIMULATOR_NAME"]
      217 JUMPIFNOTEQ                      R25 R26 ; [+9]
      219 GETUPVAL                         R24 6
      220 GETTABLEKS                       R24 R24 K29 ["getSimulatorDisplayName"]
      222 MOVE                             R25 R3
      223 GETTABLEKS                       R26 R1 K27 ["Name"]
      225 CALL                             R24 2 1
      226 JUMP                             ; [+7]
      227 GETUPVAL                         R24 7
      228 GETTABLEKS                       R24 R24 K29 ["getSimulatorDisplayName"]
      230 MOVE                             R25 R3
      231 GETTABLEKS                       R26 R1 K27 ["Name"]
      233 CALL                             R24 2 1
      234 GETUPVAL                         R25 7
      235 GETTABLEKS                       R25 R25 K30 ["getDropdownDisplayTextByValue"]
      237 MOVE                             R26 R3
      238 GETTABLEKS                       R27 R1 K27 ["Name"]
      240 CALL                             R25 2 1
      241 JUMPIF                           R25 ; [+10]
      242 JUMPIFNOT                        R23 ; [+8]
      243 GETUPVAL                         R25 6
      244 GETTABLEKS                       R25 R25 K30 ["getDropdownDisplayTextByValue"]
      246 MOVE                             R26 R3
      247 GETTABLEKS                       R27 R1 K27 ["Name"]
      249 CALL                             R25 2 1
      250 JUMP                             ; [+1]
      251 LOADNIL                          R25
      252 LOADK                            R26 K31 ["simulator-pill-%*"]
      253 GETTABLEKS                       R28 R1 K27 ["Name"]
      255 NAMECALL                         R26 R26 K32 ["format"]
      257 CALL                             R26 2 1
      258 GETUPVAL                         R27 2
      259 GETTABLEKS                       R27 R27 K33 ["createElement"]
      261 GETUPVAL                         R28 8
      262 GETTABLEKS                       R28 R28 K34 ["Root"]
      264 DUPTABLE                         R29 K36 [{"isOpen"}]
      265 SETTABLEKS                       R4 R29 K35 ["isOpen"]
      267 DUPTABLE                         R30 K39 [{"Anchor", "Content"}]
      268 GETUPVAL                         R31 2
      269 GETTABLEKS                       R31 R31 K33 ["createElement"]
      271 GETUPVAL                         R32 8
      272 GETTABLEKS                       R32 R32 K37 ["Anchor"]
      274 DUPTABLE                         R33 K41 [{"LayoutOrder"}]
      275 GETTABLEKS                       R34 R0 K40 ["LayoutOrder"]
      277 SETTABLEKS                       R34 R33 K40 ["LayoutOrder"]
      279 DUPTABLE                         R34 K43 [{"Button"}]
      280 GETUPVAL                         R35 2
      281 GETTABLEKS                       R35 R35 K33 ["createElement"]
      283 GETUPVAL                         R36 9
      284 DUPTABLE                         R37 K51 [{["testId"], ["text"], ["leading"], ["trailing"] = "chevron-large-down", ["isChecked"], ["onActivated"]}]
      285 SETTABLEKS                       R26 R37 K44 ["testId"]
      287 SETTABLEKS                       R22 R37 K45 ["text"]
      289 SETTABLEKS                       R21 R37 K46 ["leading"]
      291 SETTABLEKS                       R4 R37 K49 ["isChecked"]
      293 SETTABLEKS                       R12 R37 K50 ["onActivated"]
      295 CALL                             R35 2 1
      296 SETTABLEKS                       R35 R34 K42 ["Button"]
      298 CALL                             R31 3 1
      299 SETTABLEKS                       R31 R30 K37 ["Anchor"]
      301 GETUPVAL                         R31 2
      302 GETTABLEKS                       R31 R31 K33 ["createElement"]
      304 GETUPVAL                         R32 8
      305 GETTABLEKS                       R32 R32 K38 ["Content"]
      307 DUPTABLE                         R33 K61 [{["align"], ["hasArrow"] = False, ["isFocusable"] = True, ["side"], ["radius"], ["backgroundStyle"], ["onPressedOutside"]}]
      308 GETUPVAL                         R34 10
      309 GETTABLEKS                       R34 R34 K62 ["End"]
      311 SETTABLEKS                       R34 R33 K52 ["align"]
      313 DUPTABLE                         R34 K66 [{["position"], ["offset"] = 8}]
      314 GETUPVAL                         R35 11
      315 GETTABLEKS                       R35 R35 K67 ["Bottom"]
      317 SETTABLEKS                       R35 R34 K63 ["position"]
      319 SETTABLEKS                       R34 R33 K57 ["side"]
      321 GETUPVAL                         R34 12
      322 GETTABLEKS                       R34 R34 K68 ["Medium"]
      324 SETTABLEKS                       R34 R33 K58 ["radius"]
      326 DUPTABLE                         R34 K71 [{["Transparency"] = 1}]
      327 SETTABLEKS                       R34 R33 K59 ["backgroundStyle"]
      329 SETTABLEKS                       R11 R33 K60 ["onPressedOutside"]
      331 DUPTABLE                         R34 K73 [{"Body"}]
      332 GETUPVAL                         R35 2
      333 GETTABLEKS                       R35 R35 K33 ["createElement"]
      335 GETUPVAL                         R36 13
      336 DUPTABLE                         R37 K77 [{["Size"], ["tag"] = "col auto-y radius-large clip stroke-thin stroke-muted bg-surface-100", ["testId"]}]
      337 GETIMPORT                        R38 K80 [UDim2.fromOffset]
      339 LOADN                            R39 320
      340 LOADN                            R40 0
      341 CALL                             R38 2 1
      342 SETTABLEKS                       R38 R37 K74 ["Size"]
      344 LOADK                            R38 K81 ["%*-content"]
      345 MOVE                             R40 R26
      346 NAMECALL                         R38 R38 K32 ["format"]
      348 CALL                             R38 2 1
      349 SETTABLEKS                       R38 R37 K44 ["testId"]
      351 DUPTABLE                         R38 K83 [{"Content", "Footer"}]
      352 GETUPVAL                         R39 2
      353 GETTABLEKS                       R39 R39 K33 ["createElement"]
      355 GETUPVAL                         R40 13
      356 DUPTABLE                         R41 K85 [{["LayoutOrder"] = 1, ["tag"] = "col size-full-0 auto-y padding-y-large"}]
      357 DUPTABLE                         R42 K87 [{"PanelBody"}]
      358 GETUPVAL                         R43 2
      359 GETTABLEKS                       R43 R43 K33 ["createElement"]
      361 GETUPVAL                         R44 13
      362 DUPTABLE                         R45 K89 [{["LayoutOrder"] = 1, ["tag"] = "col gap-xsmall size-full-0 auto-y padding-small"}]
      363 DUPTABLE                         R46 K91 [{"Header", "Controls"}]
      364 GETUPVAL                         R47 2
      365 GETTABLEKS                       R47 R47 K33 ["createElement"]
      367 GETUPVAL                         R48 14
      368 DUPTABLE                         R49 K94 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "size-full-700 auto-none padding-x-xsmall text-no-wrap text-label-large text-align-x-left text-align-y-center", ["testId"]}]
      369 LOADK                            R52 K95 ["Simulator"]
      370 LOADK                            R53 K96 ["Title"]
      371 DUPTABLE                         R54 K98 [{"simulatorName"}]
      372 SETTABLEKS                       R24 R54 K97 ["simulatorName"]
      374 NAMECALL                         R50 R3 K99 ["getText"]
      376 CALL                             R50 4 1
      377 SETTABLEKS                       R50 R49 K92 ["Text"]
      379 LOADK                            R50 K100 ["%*-title"]
      380 MOVE                             R52 R26
      381 NAMECALL                         R50 R50 K32 ["format"]
      383 CALL                             R50 2 1
      384 SETTABLEKS                       R50 R49 K44 ["testId"]
      386 CALL                             R47 2 1
      387 SETTABLEKS                       R47 R46 K90 ["Header"]
      389 GETUPVAL                         R47 2
      390 GETTABLEKS                       R47 R47 K33 ["createElement"]
      392 GETUPVAL                         R48 13
      393 DUPTABLE                         R49 K103 [{["LayoutOrder"] = 2, ["tag"] = "col size-full-0 auto-y"}]
      394 DUPTABLE                         R50 K105 [{"Renderer"}]
      395 GETUPVAL                         R51 2
      396 GETTABLEKS                       R51 R51 K33 ["createElement"]
      398 GETUPVAL                         R52 15
      399 DUPTABLE                         R53 K112 [{"controls", "values", "disabledControlIds", "dropdownDisplayTextByValue", "onControlChanged", "debugName"}]
      400 SETTABLEKS                       R17 R53 K106 ["controls"]
      402 GETTABLEKS                       R54 R0 K107 ["values"]
      404 SETTABLEKS                       R54 R53 K107 ["values"]
      406 JUMPIFEQKNIL                     R15 ; [+4]
      408 GETTABLEKS                       R54 R16 K108 ["disabledControlIds"]
      410 JUMP                             ; [+1]
      411 LOADNIL                          R54
      412 SETTABLEKS                       R54 R53 K108 ["disabledControlIds"]
      414 SETTABLEKS                       R25 R53 K109 ["dropdownDisplayTextByValue"]
      416 GETTABLEKS                       R54 R0 K110 ["onControlChanged"]
      418 SETTABLEKS                       R54 R53 K110 ["onControlChanged"]
      420 GETTABLEKS                       R54 R1 K27 ["Name"]
      422 SETTABLEKS                       R54 R53 K111 ["debugName"]
      424 CALL                             R51 2 1
      425 SETTABLEKS                       R51 R50 K104 ["Renderer"]
      427 CALL                             R47 3 1
      428 SETTABLEKS                       R47 R46 K16 ["Controls"]
      430 CALL                             R43 3 1
      431 SETTABLEKS                       R43 R42 K86 ["PanelBody"]
      433 CALL                             R39 3 1
      434 SETTABLEKS                       R39 R38 K38 ["Content"]
      436 JUMPIFNOT                        R19 ; [+54]
      437 GETUPVAL                         R39 2
      438 GETTABLEKS                       R39 R39 K33 ["createElement"]
      440 GETUPVAL                         R40 16
      441 DUPTABLE                         R41 K119 [{["LayoutOrder"] = 2, ["hasPendingChanges"], ["onApply"], ["onReset"], ["isResetDisabled"], ["onRequestSave"], ["isSaveDisabled"], ["activeSavedPreset"], ["onDelete"], ["hidesApply"], ["testId"]}]
      442 GETTABLEKS                       R42 R0 K113 ["hasPendingChanges"]
      444 SETTABLEKS                       R42 R41 K113 ["hasPendingChanges"]
      446 JUMPIFEQKNIL                     R9 ; [+3]
      448 MOVE                             R42 R13
      449 JUMP                             ; [+1]
      450 LOADNIL                          R42
      451 SETTABLEKS                       R42 R41 K9 ["onApply"]
      453 GETTABLEKS                       R42 R0 K19 ["onReset"]
      455 SETTABLEKS                       R42 R41 K19 ["onReset"]
      457 GETTABLEKS                       R42 R0 K114 ["isResetDisabled"]
      459 SETTABLEKS                       R42 R41 K114 ["isResetDisabled"]
      461 JUMPIFEQKNIL                     R10 ; [+3]
      463 MOVE                             R42 R14
      464 JUMP                             ; [+1]
      465 LOADNIL                          R42
      466 SETTABLEKS                       R42 R41 K10 ["onRequestSave"]
      468 GETTABLEKS                       R42 R0 K115 ["isSaveDisabled"]
      470 SETTABLEKS                       R42 R41 K115 ["isSaveDisabled"]
      472 GETTABLEKS                       R42 R0 K116 ["activeSavedPreset"]
      474 SETTABLEKS                       R42 R41 K116 ["activeSavedPreset"]
      476 GETTABLEKS                       R42 R0 K117 ["onDelete"]
      478 SETTABLEKS                       R42 R41 K117 ["onDelete"]
      480 SETTABLEKS                       R20 R41 K118 ["hidesApply"]
      482 LOADK                            R42 K120 ["%*-footer"]
      483 MOVE                             R44 R26
      484 NAMECALL                         R42 R42 K32 ["format"]
      486 CALL                             R42 2 1
      487 SETTABLEKS                       R42 R41 K44 ["testId"]
      489 CALL                             R39 2 1
      490 JUMP                             ; [+1]
      491 LOADNIL                          R39
      492 SETTABLEKS                       R39 R38 K82 ["Footer"]
      494 CALL                             R35 3 1
      495 SETTABLEKS                       R35 R34 K72 ["Body"]
      497 CALL                             R31 3 1
      498 SETTABLEKS                       R31 R30 K38 ["Content"]
      500 CALL                             R27 3 -1
      501 CLOSEUPVALS                      R15
      502 RETURN                           R27 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DeviceSimulatorToolbar"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K9 ["Parent"]
       27 GETTABLEKS                       R4 R4 K10 ["ControlRenderer"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETIMPORT                        R5 K1 [script]
       34 GETTABLEKS                       R5 R5 K9 ["Parent"]
       36 GETTABLEKS                       R5 R5 K11 ["networkLocalization"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETIMPORT                        R6 K1 [script]
       43 GETTABLEKS                       R6 R6 K9 ["Parent"]
       45 GETTABLEKS                       R6 R6 K12 ["performanceLocalization"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETIMPORT                        R7 K1 [script]
       52 GETTABLEKS                       R7 R7 K9 ["Parent"]
       54 GETTABLEKS                       R7 R7 K13 ["SimulatorFooter"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETIMPORT                        R8 K1 [script]
       61 GETTABLEKS                       R8 R8 K9 ["Parent"]
       63 GETTABLEKS                       R8 R8 K14 ["Types"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K15 ["Src"]
       70 GETTABLEKS                       R9 R9 K16 ["Hooks"]
       72 GETTABLEKS                       R9 R9 K17 ["useLocalization"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K18 ["Bin"]
       79 GETTABLEKS                       R10 R10 K19 ["Common"]
       81 GETTABLEKS                       R10 R10 K20 ["defineLuaFlags"]
       83 CALL                             R9 1 1
       84 GETTABLEKS                       R10 R2 K21 ["Chip"]
       86 GETTABLEKS                       R11 R2 K22 ["Popover"]
       88 GETTABLEKS                       R12 R2 K23 ["Enums"]
       90 GETTABLEKS                       R12 R12 K24 ["PopoverAlign"]
       92 GETTABLEKS                       R13 R2 K23 ["Enums"]
       94 GETTABLEKS                       R13 R13 K25 ["PopoverSide"]
       96 GETTABLEKS                       R14 R2 K23 ["Enums"]
       98 GETTABLEKS                       R14 R14 K26 ["Radius"]
      100 GETTABLEKS                       R15 R2 K27 ["Text"]
      102 GETTABLEKS                       R16 R2 K28 ["View"]
      104 DUPCLOSURE                       R17 K29 [PROTO_0]
      105 CAPTURE                          VAL R9
      106 CAPTURE                          VAL R17
      107 DUPCLOSURE                       R18 K30 [PROTO_1]
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R18
      110 DUPCLOSURE                       R19 K31 [PROTO_8]
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R18
      115 CAPTURE                          VAL R17
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R5
      118 CAPTURE                          VAL R4
      119 CAPTURE                          VAL R11
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R12
      122 CAPTURE                          VAL R13
      123 CAPTURE                          VAL R14
      124 CAPTURE                          VAL R16
      125 CAPTURE                          VAL R15
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R6
      128 RETURN                           R19 1
