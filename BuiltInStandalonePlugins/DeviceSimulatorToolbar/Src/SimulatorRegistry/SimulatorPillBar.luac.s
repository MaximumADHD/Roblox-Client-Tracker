PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onApply"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onReset"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+2]
        5 LOADNIL                          R1
        6 RETURN                           R1 1
        7 GETTABLEKS                       R1 R0 K1 ["simulators"]
        9 LENGTH                           R2 R1
       10 JUMPIFNOTEQKN                    R2 K2 [0] ; [+3]
       12 LOADNIL                          R2
       13 RETURN                           R2 1
       14 GETTABLEKS                       R2 R0 K3 ["onControlChanged"]
       16 GETTABLEKS                       R3 R0 K4 ["onDismiss"]
       18 NEWTABLE                         R4 0 0
       20 GETTABLEKS                       R5 R0 K5 ["onRequestSave"]
       22 GETTABLEKS                       R6 R0 K6 ["onDeleteSavedPreset"]
       24 MOVE                             R7 R1
       25 LOADNIL                          R8
       26 LOADNIL                          R9
       27 FORGPREP                         R7
       28 GETTABLEKS                       R12 R11 K7 ["Name"]
       30 GETTABLEKS                       R14 R0 K8 ["viewModelsByName"]
       32 GETTABLE                         R13 R14 R12
       33 JUMPIFEQKNIL                     R13 ; [+4]
       35 GETTABLEKS                       R14 R13 K9 ["activeSavedPreset"]
       37 JUMP                             ; [+1]
       38 LOADNIL                          R14
       39 GETUPVAL                         R15 1
       40 GETTABLEKS                       R15 R15 K10 ["createElement"]
       42 GETUPVAL                         R16 2
       43 DUPTABLE                         R17 K24 [{"LayoutOrder", "entry", "isSaveDialogOpen", "dynamicState", "values", "hasPendingChanges", "onApply", "onDismiss", "presetControlId", "savedPresetNames", "activeSavedPreset", "onRequestSave", "isSaveDisabled", "isResetDisabled", "onDelete", "onReset", "onControlChanged"}]
       44 SETTABLEKS                       R10 R17 K11 ["LayoutOrder"]
       46 SETTABLEKS                       R11 R17 K12 ["entry"]
       48 GETTABLEKS                       R19 R0 K25 ["saveDialogSimulatorName"]
       50 JUMPIFEQ                         R19 R12 ; [+2]
       52 LOADB                            R18 0 +1
       53 LOADB                            R18 1
       54 SETTABLEKS                       R18 R17 K13 ["isSaveDialogOpen"]
       56 JUMPIFEQKNIL                     R13 ; [+4]
       58 GETTABLEKS                       R18 R13 K14 ["dynamicState"]
       60 JUMP                             ; [+1]
       61 LOADNIL                          R18
       62 SETTABLEKS                       R18 R17 K14 ["dynamicState"]
       64 JUMPIFEQKNIL                     R13 ; [+4]
       66 GETTABLEKS                       R18 R13 K15 ["values"]
       68 JUMP                             ; [+2]
       69 NEWTABLE                         R18 0 0
       71 SETTABLEKS                       R18 R17 K15 ["values"]
       73 LOADB                            R18 0
       74 JUMPIFEQKNIL                     R13 ; [+3]
       76 GETTABLEKS                       R18 R13 K16 ["hasPendingChanges"]
       78 SETTABLEKS                       R18 R17 K16 ["hasPendingChanges"]
       80 GETTABLEKS                       R19 R0 K17 ["onApply"]
       82 JUMPIFEQKNIL                     R19 ; [+5]
       84 NEWCLOSURE                       R18 P0
       85 CAPTURE                          VAL R0
       86 CAPTURE                          VAL R12
       87 JUMP                             ; [+1]
       88 LOADNIL                          R18
       89 SETTABLEKS                       R18 R17 K17 ["onApply"]
       91 JUMPIFEQKNIL                     R3 ; [+5]
       93 NEWCLOSURE                       R18 P1
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R12
       96 JUMP                             ; [+1]
       97 LOADNIL                          R18
       98 SETTABLEKS                       R18 R17 K4 ["onDismiss"]
      100 JUMPIFEQKNIL                     R13 ; [+4]
      102 GETTABLEKS                       R18 R13 K18 ["presetControlId"]
      104 JUMP                             ; [+1]
      105 LOADNIL                          R18
      106 SETTABLEKS                       R18 R17 K18 ["presetControlId"]
      108 JUMPIFEQKNIL                     R13 ; [+4]
      110 GETTABLEKS                       R18 R13 K19 ["savedPresetNames"]
      112 JUMP                             ; [+1]
      113 LOADNIL                          R18
      114 SETTABLEKS                       R18 R17 K19 ["savedPresetNames"]
      116 SETTABLEKS                       R14 R17 K9 ["activeSavedPreset"]
      118 JUMPIFEQKNIL                     R5 ; [+10]
      120 JUMPIFEQKNIL                     R13 ; [+8]
      122 GETTABLEKS                       R19 R13 K26 ["allowsUserSavedPresets"]
      124 JUMPIFNOT                        R19 ; [+4]
      125 NEWCLOSURE                       R18 P2
      126 CAPTURE                          VAL R5
      127 CAPTURE                          VAL R12
      128 JUMP                             ; [+1]
      129 LOADNIL                          R18
      130 SETTABLEKS                       R18 R17 K5 ["onRequestSave"]
      132 LOADB                            R18 1
      133 JUMPIFEQKNIL                     R13 ; [+4]
      135 GETTABLEKS                       R19 R13 K27 ["canSave"]
      137 NOT                              R18 R19
      138 SETTABLEKS                       R18 R17 K20 ["isSaveDisabled"]
      140 LOADB                            R18 1
      141 JUMPIFEQKNIL                     R13 ; [+4]
      143 GETTABLEKS                       R19 R13 K28 ["isNotAtDefault"]
      145 NOT                              R18 R19
      146 SETTABLEKS                       R18 R17 K21 ["isResetDisabled"]
      148 JUMPIFEQKNIL                     R6 ; [+12]
      150 JUMPIFEQKNIL                     R13 ; [+10]
      152 GETTABLEKS                       R19 R13 K26 ["allowsUserSavedPresets"]
      154 JUMPIFNOT                        R19 ; [+6]
      155 JUMPIFEQKNIL                     R14 ; [+5]
      157 NEWCLOSURE                       R18 P3
      158 CAPTURE                          VAL R6
      159 CAPTURE                          VAL R12
      160 JUMP                             ; [+1]
      161 LOADNIL                          R18
      162 SETTABLEKS                       R18 R17 K22 ["onDelete"]
      164 GETTABLEKS                       R19 R0 K23 ["onReset"]
      166 JUMPIFEQKNIL                     R19 ; [+5]
      168 NEWCLOSURE                       R18 P4
      169 CAPTURE                          VAL R0
      170 CAPTURE                          VAL R12
      171 JUMP                             ; [+1]
      172 LOADNIL                          R18
      173 SETTABLEKS                       R18 R17 K23 ["onReset"]
      175 JUMPIFEQKNIL                     R2 ; [+5]
      177 NEWCLOSURE                       R18 P5
      178 CAPTURE                          VAL R2
      179 CAPTURE                          VAL R12
      180 JUMP                             ; [+1]
      181 LOADNIL                          R18
      182 SETTABLEKS                       R18 R17 K3 ["onControlChanged"]
      184 CALL                             R15 2 1
      185 SETTABLE                         R15 R4 R12
      186 FORGLOOP                         R7 2 ; [-159]
      188 GETUPVAL                         R7 1
      189 GETTABLEKS                       R7 R7 K10 ["createElement"]
      191 GETUPVAL                         R8 3
      192 DUPTABLE                         R9 K33 [{["LayoutOrder"], ["tag"] = "row align-y-center gap-xxsmall auto-xy", ["testId"] = "simulator-pill-bar"}]
      193 GETTABLEKS                       R10 R0 K11 ["LayoutOrder"]
      195 SETTABLEKS                       R10 R9 K11 ["LayoutOrder"]
      197 MOVE                             R10 R4
      198 CALL                             R7 3 -1
      199 RETURN                           R7 -1

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
       27 GETTABLEKS                       R4 R4 K10 ["SimulatorPill"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETIMPORT                        R5 K1 [script]
       34 GETTABLEKS                       R5 R5 K9 ["Parent"]
       36 GETTABLEKS                       R5 R5 K11 ["Types"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K12 ["Bin"]
       43 GETTABLEKS                       R6 R6 K13 ["Common"]
       45 GETTABLEKS                       R6 R6 K14 ["defineLuaFlags"]
       47 CALL                             R5 1 1
       48 GETTABLEKS                       R6 R2 K15 ["View"]
       50 DUPCLOSURE                       R7 K16 [PROTO_6]
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R6
       55 RETURN                           R7 1
