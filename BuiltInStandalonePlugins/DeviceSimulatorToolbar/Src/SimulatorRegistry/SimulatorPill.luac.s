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
        7 GETTABLEKS                       R2 R2 K1 ["getFFlagStudioDeviceSimulatorDynamicControlPresentation"]
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
      103 GETTABLEKS                       R16 R16 K12 ["getFFlagStudioDeviceSimulatorDynamicControlPresentation"]
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
      145 JUMPIFEQKNIL                     R2 ; [+4]
      147 GETTABLEKS                       R18 R2 K19 ["Icon"]
      149 JUMP                             ; [+4]
      150 GETTABLEKS                       R18 R1 K15 ["Config"]
      152 GETTABLEKS                       R18 R18 K20 ["InitialIcon"]
      154 JUMPIFEQKNIL                     R2 ; [+4]
      156 GETTABLEKS                       R19 R2 K21 ["Label"]
      158 JUMP                             ; [+4]
      159 GETTABLEKS                       R19 R1 K15 ["Config"]
      161 GETTABLEKS                       R19 R19 K22 ["InitialLabel"]
      163 GETUPVAL                         R20 5
      164 GETTABLEKS                       R20 R20 K23 ["getSimulatorDisplayName"]
      166 MOVE                             R21 R3
      167 GETTABLEKS                       R22 R1 K24 ["Name"]
      169 CALL                             R20 2 1
      170 GETUPVAL                         R21 5
      171 GETTABLEKS                       R21 R21 K25 ["getDropdownDisplayTextByValue"]
      173 MOVE                             R22 R3
      174 GETTABLEKS                       R23 R1 K24 ["Name"]
      176 CALL                             R21 2 1
      177 LOADK                            R22 K26 ["simulator-pill-%*"]
      178 GETTABLEKS                       R24 R1 K24 ["Name"]
      180 NAMECALL                         R22 R22 K27 ["format"]
      182 CALL                             R22 2 1
      183 GETUPVAL                         R23 2
      184 GETTABLEKS                       R23 R23 K28 ["createElement"]
      186 GETUPVAL                         R24 6
      187 GETTABLEKS                       R24 R24 K29 ["Root"]
      189 DUPTABLE                         R25 K31 [{"isOpen"}]
      190 SETTABLEKS                       R4 R25 K30 ["isOpen"]
      192 DUPTABLE                         R26 K34 [{"Anchor", "Content"}]
      193 GETUPVAL                         R27 2
      194 GETTABLEKS                       R27 R27 K28 ["createElement"]
      196 GETUPVAL                         R28 6
      197 GETTABLEKS                       R28 R28 K32 ["Anchor"]
      199 DUPTABLE                         R29 K36 [{"LayoutOrder"}]
      200 GETTABLEKS                       R30 R0 K35 ["LayoutOrder"]
      202 SETTABLEKS                       R30 R29 K35 ["LayoutOrder"]
      204 DUPTABLE                         R30 K38 [{"Button"}]
      205 GETUPVAL                         R31 2
      206 GETTABLEKS                       R31 R31 K28 ["createElement"]
      208 GETUPVAL                         R32 7
      209 DUPTABLE                         R33 K46 [{["testId"], ["text"], ["leading"], ["trailing"] = "chevron-large-down", ["isChecked"], ["onActivated"]}]
      210 SETTABLEKS                       R22 R33 K39 ["testId"]
      212 SETTABLEKS                       R19 R33 K40 ["text"]
      214 SETTABLEKS                       R18 R33 K41 ["leading"]
      216 SETTABLEKS                       R4 R33 K44 ["isChecked"]
      218 SETTABLEKS                       R12 R33 K45 ["onActivated"]
      220 CALL                             R31 2 1
      221 SETTABLEKS                       R31 R30 K37 ["Button"]
      223 CALL                             R27 3 1
      224 SETTABLEKS                       R27 R26 K32 ["Anchor"]
      226 GETUPVAL                         R27 2
      227 GETTABLEKS                       R27 R27 K28 ["createElement"]
      229 GETUPVAL                         R28 6
      230 GETTABLEKS                       R28 R28 K33 ["Content"]
      232 DUPTABLE                         R29 K56 [{["align"], ["hasArrow"] = False, ["isFocusable"] = True, ["side"], ["radius"], ["backgroundStyle"], ["onPressedOutside"]}]
      233 GETUPVAL                         R30 8
      234 GETTABLEKS                       R30 R30 K57 ["End"]
      236 SETTABLEKS                       R30 R29 K47 ["align"]
      238 DUPTABLE                         R30 K61 [{["position"], ["offset"] = 8}]
      239 GETUPVAL                         R31 9
      240 GETTABLEKS                       R31 R31 K62 ["Bottom"]
      242 SETTABLEKS                       R31 R30 K58 ["position"]
      244 SETTABLEKS                       R30 R29 K52 ["side"]
      246 GETUPVAL                         R30 10
      247 GETTABLEKS                       R30 R30 K63 ["Medium"]
      249 SETTABLEKS                       R30 R29 K53 ["radius"]
      251 DUPTABLE                         R30 K66 [{["Transparency"] = 1}]
      252 SETTABLEKS                       R30 R29 K54 ["backgroundStyle"]
      254 SETTABLEKS                       R11 R29 K55 ["onPressedOutside"]
      256 DUPTABLE                         R30 K68 [{"Body"}]
      257 GETUPVAL                         R31 2
      258 GETTABLEKS                       R31 R31 K28 ["createElement"]
      260 GETUPVAL                         R32 11
      261 DUPTABLE                         R33 K72 [{["Size"], ["tag"] = "col auto-y radius-large clip stroke-thin stroke-muted bg-surface-100", ["testId"]}]
      262 GETIMPORT                        R34 K75 [UDim2.fromOffset]
      264 LOADN                            R35 320
      265 LOADN                            R36 0
      266 CALL                             R34 2 1
      267 SETTABLEKS                       R34 R33 K69 ["Size"]
      269 LOADK                            R34 K76 ["%*-content"]
      270 MOVE                             R36 R22
      271 NAMECALL                         R34 R34 K27 ["format"]
      273 CALL                             R34 2 1
      274 SETTABLEKS                       R34 R33 K39 ["testId"]
      276 DUPTABLE                         R34 K78 [{"Content", "Footer"}]
      277 GETUPVAL                         R35 2
      278 GETTABLEKS                       R35 R35 K28 ["createElement"]
      280 GETUPVAL                         R36 11
      281 DUPTABLE                         R37 K80 [{["LayoutOrder"] = 1, ["tag"] = "col size-full-0 auto-y padding-y-large"}]
      282 DUPTABLE                         R38 K82 [{"PanelBody"}]
      283 GETUPVAL                         R39 2
      284 GETTABLEKS                       R39 R39 K28 ["createElement"]
      286 GETUPVAL                         R40 11
      287 DUPTABLE                         R41 K84 [{["LayoutOrder"] = 1, ["tag"] = "col gap-xsmall size-full-0 auto-y padding-small"}]
      288 DUPTABLE                         R42 K86 [{"Header", "Controls"}]
      289 GETUPVAL                         R43 2
      290 GETTABLEKS                       R43 R43 K28 ["createElement"]
      292 GETUPVAL                         R44 12
      293 DUPTABLE                         R45 K89 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "size-full-700 auto-none padding-x-xsmall text-no-wrap text-label-large text-align-x-left text-align-y-center", ["testId"]}]
      294 LOADK                            R48 K90 ["Simulator"]
      295 LOADK                            R49 K91 ["Title"]
      296 DUPTABLE                         R50 K93 [{"simulatorName"}]
      297 SETTABLEKS                       R20 R50 K92 ["simulatorName"]
      299 NAMECALL                         R46 R3 K94 ["getText"]
      301 CALL                             R46 4 1
      302 SETTABLEKS                       R46 R45 K87 ["Text"]
      304 LOADK                            R46 K95 ["%*-title"]
      305 MOVE                             R48 R22
      306 NAMECALL                         R46 R46 K27 ["format"]
      308 CALL                             R46 2 1
      309 SETTABLEKS                       R46 R45 K39 ["testId"]
      311 CALL                             R43 2 1
      312 SETTABLEKS                       R43 R42 K85 ["Header"]
      314 GETUPVAL                         R43 2
      315 GETTABLEKS                       R43 R43 K28 ["createElement"]
      317 GETUPVAL                         R44 11
      318 DUPTABLE                         R45 K98 [{["LayoutOrder"] = 2, ["tag"] = "col size-full-0 auto-y"}]
      319 DUPTABLE                         R46 K100 [{"Renderer"}]
      320 GETUPVAL                         R47 2
      321 GETTABLEKS                       R47 R47 K28 ["createElement"]
      323 GETUPVAL                         R48 13
      324 DUPTABLE                         R49 K107 [{"controls", "values", "disabledControlIds", "dropdownDisplayTextByValue", "onControlChanged", "debugName"}]
      325 SETTABLEKS                       R17 R49 K101 ["controls"]
      327 GETTABLEKS                       R50 R0 K102 ["values"]
      329 SETTABLEKS                       R50 R49 K102 ["values"]
      331 JUMPIFEQKNIL                     R15 ; [+4]
      333 GETTABLEKS                       R50 R16 K103 ["disabledControlIds"]
      335 JUMP                             ; [+1]
      336 LOADNIL                          R50
      337 SETTABLEKS                       R50 R49 K103 ["disabledControlIds"]
      339 SETTABLEKS                       R21 R49 K104 ["dropdownDisplayTextByValue"]
      341 GETTABLEKS                       R50 R0 K105 ["onControlChanged"]
      343 SETTABLEKS                       R50 R49 K105 ["onControlChanged"]
      345 GETTABLEKS                       R50 R1 K24 ["Name"]
      347 SETTABLEKS                       R50 R49 K106 ["debugName"]
      349 CALL                             R47 2 1
      350 SETTABLEKS                       R47 R46 K99 ["Renderer"]
      352 CALL                             R43 3 1
      353 SETTABLEKS                       R43 R42 K16 ["Controls"]
      355 CALL                             R39 3 1
      356 SETTABLEKS                       R39 R38 K81 ["PanelBody"]
      358 CALL                             R35 3 1
      359 SETTABLEKS                       R35 R34 K33 ["Content"]
      361 GETTABLEKS                       R36 R0 K9 ["onApply"]
      363 JUMPIFNOTEQKNIL                  R36 ; [+9]
      365 GETTABLEKS                       R36 R0 K108 ["onReset"]
      367 JUMPIFNOTEQKNIL                  R36 ; [+5]
      369 GETTABLEKS                       R36 R0 K10 ["onRequestSave"]
      371 JUMPIFEQKNIL                     R36 ; [+53]
      373 GETUPVAL                         R35 2
      374 GETTABLEKS                       R35 R35 K28 ["createElement"]
      376 GETUPVAL                         R36 14
      377 DUPTABLE                         R37 K114 [{["LayoutOrder"] = 2, ["hasPendingChanges"], ["onApply"], ["onReset"], ["isResetDisabled"], ["onRequestSave"], ["isSaveDisabled"], ["activeSavedPreset"], ["onDelete"], ["testId"]}]
      378 GETTABLEKS                       R38 R0 K109 ["hasPendingChanges"]
      380 SETTABLEKS                       R38 R37 K109 ["hasPendingChanges"]
      382 JUMPIFEQKNIL                     R9 ; [+3]
      384 MOVE                             R38 R13
      385 JUMP                             ; [+1]
      386 LOADNIL                          R38
      387 SETTABLEKS                       R38 R37 K9 ["onApply"]
      389 GETTABLEKS                       R38 R0 K108 ["onReset"]
      391 SETTABLEKS                       R38 R37 K108 ["onReset"]
      393 GETTABLEKS                       R38 R0 K110 ["isResetDisabled"]
      395 SETTABLEKS                       R38 R37 K110 ["isResetDisabled"]
      397 JUMPIFEQKNIL                     R10 ; [+3]
      399 MOVE                             R38 R14
      400 JUMP                             ; [+1]
      401 LOADNIL                          R38
      402 SETTABLEKS                       R38 R37 K10 ["onRequestSave"]
      404 GETTABLEKS                       R38 R0 K111 ["isSaveDisabled"]
      406 SETTABLEKS                       R38 R37 K111 ["isSaveDisabled"]
      408 GETTABLEKS                       R38 R0 K112 ["activeSavedPreset"]
      410 SETTABLEKS                       R38 R37 K112 ["activeSavedPreset"]
      412 GETTABLEKS                       R38 R0 K113 ["onDelete"]
      414 SETTABLEKS                       R38 R37 K113 ["onDelete"]
      416 LOADK                            R38 K115 ["%*-footer"]
      417 MOVE                             R40 R22
      418 NAMECALL                         R38 R38 K27 ["format"]
      420 CALL                             R38 2 1
      421 SETTABLEKS                       R38 R37 K39 ["testId"]
      423 CALL                             R35 2 1
      424 JUMP                             ; [+1]
      425 LOADNIL                          R35
      426 SETTABLEKS                       R35 R34 K77 ["Footer"]
      428 CALL                             R31 3 1
      429 SETTABLEKS                       R31 R30 K67 ["Body"]
      431 CALL                             R27 3 1
      432 SETTABLEKS                       R27 R26 K33 ["Content"]
      434 CALL                             R23 3 -1
      435 CLOSEUPVALS                      R15
      436 RETURN                           R23 -1

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
       45 GETTABLEKS                       R6 R6 K12 ["SimulatorFooter"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETIMPORT                        R7 K1 [script]
       52 GETTABLEKS                       R7 R7 K9 ["Parent"]
       54 GETTABLEKS                       R7 R7 K13 ["Types"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K14 ["Src"]
       61 GETTABLEKS                       R8 R8 K15 ["Hooks"]
       63 GETTABLEKS                       R8 R8 K16 ["useLocalization"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K17 ["Bin"]
       70 GETTABLEKS                       R9 R9 K18 ["Common"]
       72 GETTABLEKS                       R9 R9 K19 ["defineLuaFlags"]
       74 CALL                             R8 1 1
       75 GETTABLEKS                       R9 R2 K20 ["Chip"]
       77 GETTABLEKS                       R10 R2 K21 ["Popover"]
       79 GETTABLEKS                       R11 R2 K22 ["Enums"]
       81 GETTABLEKS                       R11 R11 K23 ["PopoverAlign"]
       83 GETTABLEKS                       R12 R2 K22 ["Enums"]
       85 GETTABLEKS                       R12 R12 K24 ["PopoverSide"]
       87 GETTABLEKS                       R13 R2 K22 ["Enums"]
       89 GETTABLEKS                       R13 R13 K25 ["Radius"]
       91 GETTABLEKS                       R14 R2 K26 ["Text"]
       93 GETTABLEKS                       R15 R2 K27 ["View"]
       95 DUPCLOSURE                       R16 K28 [PROTO_0]
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R16
       98 DUPCLOSURE                       R17 K29 [PROTO_1]
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R17
      101 DUPCLOSURE                       R18 K30 [PROTO_8]
      102 CAPTURE                          VAL R8
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R1
      105 CAPTURE                          VAL R17
      106 CAPTURE                          VAL R16
      107 CAPTURE                          VAL R4
      108 CAPTURE                          VAL R10
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R11
      111 CAPTURE                          VAL R12
      112 CAPTURE                          VAL R13
      113 CAPTURE                          VAL R15
      114 CAPTURE                          VAL R14
      115 CAPTURE                          VAL R3
      116 CAPTURE                          VAL R5
      117 RETURN                           R18 1
