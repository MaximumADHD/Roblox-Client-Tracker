PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_1]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 JUMPIFNOTEQKS                    R0 K0 ["calibrate"] ; [+6]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["onCalibrate"]
        7 CALL                             R1 0 0
        8 RETURN                           R0 0
        9 JUMPIFNOTEQKS                    R0 K2 ["autoDetect"] ; [+10]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K3 ["onToggleAutoDetect"]
       14 JUMPIFNOT                        R1 ; [+10]
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K3 ["onToggleAutoDetect"]
       18 CALL                             R1 0 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R1 1
       21 GETTABLEKS                       R1 R1 K4 ["onModeChanged"]
       23 MOVE                             R2 R0
       24 CALL                             R1 1 0
       25 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useState"]
        5 LOADB                            R3 0
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K1 ["useCallback"]
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          VAL R3
       12 NEWTABLE                         R6 0 0
       14 CALL                             R4 2 1
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R5 R5 K1 ["useCallback"]
       18 NEWCLOSURE                       R6 P1
       19 CAPTURE                          VAL R3
       20 NEWTABLE                         R7 0 0
       22 CALL                             R5 2 1
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R6 R6 K1 ["useCallback"]
       26 NEWCLOSURE                       R7 P2
       27 CAPTURE                          VAL R4
       28 CAPTURE                          VAL R0
       29 NEWTABLE                         R8 0 4
       31 MOVE                             R9 R4
       32 GETTABLEKS                       R10 R0 K2 ["onCalibrate"]
       34 GETTABLEKS                       R11 R0 K3 ["onToggleAutoDetect"]
       36 GETTABLEKS                       R12 R0 K4 ["onModeChanged"]
       38 SETLIST                          R8 R9 4 [1]
       40 CALL                             R6 2 1
       41 DUPTABLE                         R7 K6 [{"items"}]
       42 NEWTABLE                         R8 0 3
       44 DUPTABLE                         R9 K11 [{["id"] = "physical", ["text"], ["isChecked"]}]
       45 LOADK                            R12 K12 ["Scaling"]
       46 LOADK                            R13 K13 ["PhysicalSize"]
       47 NAMECALL                         R10 R1 K14 ["getText"]
       49 CALL                             R10 3 1
       50 SETTABLEKS                       R10 R9 K9 ["text"]
       52 GETTABLEKS                       R11 R0 K15 ["mode"]
       54 JUMPIFEQKS                       R11 K8 ["physical"] ; [+2]
       56 LOADB                            R10 0 +1
       57 LOADB                            R10 1
       58 SETTABLEKS                       R10 R9 K10 ["isChecked"]
       60 DUPTABLE                         R10 K17 [{["id"] = "actual", ["text"], ["isChecked"]}]
       61 LOADK                            R13 K12 ["Scaling"]
       62 LOADK                            R14 K18 ["ActualResolution"]
       63 NAMECALL                         R11 R1 K14 ["getText"]
       65 CALL                             R11 3 1
       66 SETTABLEKS                       R11 R10 K9 ["text"]
       68 GETTABLEKS                       R12 R0 K15 ["mode"]
       70 JUMPIFEQKS                       R12 K16 ["actual"] ; [+2]
       72 LOADB                            R11 0 +1
       73 LOADB                            R11 1
       74 SETTABLEKS                       R11 R10 K10 ["isChecked"]
       76 DUPTABLE                         R11 K20 [{["id"] = "fit", ["text"], ["isChecked"]}]
       77 LOADK                            R14 K12 ["Scaling"]
       78 LOADK                            R15 K21 ["FitToWindow"]
       79 NAMECALL                         R12 R1 K14 ["getText"]
       81 CALL                             R12 3 1
       82 SETTABLEKS                       R12 R11 K9 ["text"]
       84 GETTABLEKS                       R13 R0 K15 ["mode"]
       86 JUMPIFEQKS                       R13 K19 ["fit"] ; [+2]
       88 LOADB                            R12 0 +1
       89 LOADB                            R12 1
       90 SETTABLEKS                       R12 R11 K10 ["isChecked"]
       92 SETLIST                          R8 R9 3 [1]
       94 SETTABLEKS                       R8 R7 K5 ["items"]
       96 DUPTABLE                         R8 K24 [{["id"] = "calibrate", ["text"], ["isChecked"] = False}]
       97 LOADK                            R11 K12 ["Scaling"]
       98 LOADK                            R12 K25 ["CalibratePhysicalScaling"]
       99 NAMECALL                         R9 R1 K14 ["getText"]
      101 CALL                             R9 3 1
      102 SETTABLEKS                       R9 R8 K9 ["text"]
      104 NEWTABLE                         R9 0 1
      106 MOVE                             R10 R8
      107 SETLIST                          R9 R10 1 [1]
      109 GETTABLEKS                       R10 R0 K3 ["onToggleAutoDetect"]
      111 JUMPIFNOT                        R10 ; [+26]
      112 GETTABLEKS                       R10 R0 K15 ["mode"]
      114 JUMPIFNOTEQKS                    R10 K8 ["physical"] ; [+23]
      116 DUPTABLE                         R12 K27 [{["id"] = "autoDetect", ["text"], ["isChecked"]}]
      117 LOADK                            R15 K28 ["Calibration"]
      118 LOADK                            R16 K29 ["AutoDetectScaling"]
      119 NAMECALL                         R13 R1 K14 ["getText"]
      121 CALL                             R13 3 1
      122 SETTABLEKS                       R13 R12 K9 ["text"]
      124 GETTABLEKS                       R14 R0 K30 ["isAutoDetectScaling"]
      126 JUMPIFEQKB                       R14 TRUE ; [+2]
      128 LOADB                            R13 0 +1
      129 LOADB                            R13 1
      130 SETTABLEKS                       R13 R12 K10 ["isChecked"]
      132 FASTCALL2                        TABLE_INSERT R9 R12 ; [+4]
      134 MOVE                             R11 R9
      135 GETIMPORT                        R10 K33 [table.insert]
      137 CALL                             R10 2 0
      138 NEWTABLE                         R10 0 2
      140 MOVE                             R11 R7
      141 DUPTABLE                         R12 K6 [{"items"}]
      142 SETTABLEKS                       R9 R12 K5 ["items"]
      144 SETLIST                          R10 R11 2 [1]
      146 GETUPVAL                         R11 2
      147 GETUPVAL                         R12 3
      148 DUPTABLE                         R13 K39 [{["iconAsset"], ["pressed"], ["tooltipText"], ["onActivated"], ["testId"] = "Scaling"}]
      149 GETUPVAL                         R14 4
      150 GETTABLEKS                       R14 R14 K40 ["Enums"]
      152 GETTABLEKS                       R14 R14 K41 ["IconName"]
      154 GETTABLEKS                       R14 R14 K42 ["ThreeSlidersHorizontal"]
      156 SETTABLEKS                       R14 R13 K34 ["iconAsset"]
      158 SETTABLEKS                       R2 R13 K35 ["pressed"]
      160 JUMPIFNOT                        R2 ; [+2]
      161 LOADNIL                          R14
      162 JUMP                             ; [+5]
      163 LOADK                            R16 K12 ["Scaling"]
      164 LOADK                            R17 K43 ["Tooltip"]
      165 NAMECALL                         R14 R1 K14 ["getText"]
      167 CALL                             R14 3 1
      168 SETTABLEKS                       R14 R13 K36 ["tooltipText"]
      170 SETTABLEKS                       R5 R13 K37 ["onActivated"]
      172 CALL                             R11 2 1
      173 GETUPVAL                         R12 2
      174 GETUPVAL                         R13 5
      175 DUPTABLE                         R14 K52 [{["LayoutOrder"], ["isOpen"], ["items"], ["size"], ["width"], ["side"], ["align"], ["onPressedOutside"], ["onActivated"], ["testId"] = "ScalingMenu"}]
      176 GETTABLEKS                       R15 R0 K44 ["LayoutOrder"]
      178 SETTABLEKS                       R15 R14 K44 ["LayoutOrder"]
      180 SETTABLEKS                       R2 R14 K45 ["isOpen"]
      182 SETTABLEKS                       R10 R14 K5 ["items"]
      184 GETUPVAL                         R15 4
      185 GETTABLEKS                       R15 R15 K40 ["Enums"]
      187 GETTABLEKS                       R15 R15 K53 ["InputSize"]
      189 GETTABLEKS                       R15 R15 K54 ["XSmall"]
      191 SETTABLEKS                       R15 R14 K46 ["size"]
      193 GETIMPORT                        R15 K57 [UDim.new]
      195 LOADN                            R16 0
      196 LOADN                            R17 232
      197 CALL                             R15 2 1
      198 SETTABLEKS                       R15 R14 K47 ["width"]
      200 GETUPVAL                         R15 4
      201 GETTABLEKS                       R15 R15 K40 ["Enums"]
      203 GETTABLEKS                       R15 R15 K58 ["PopoverSide"]
      205 GETTABLEKS                       R15 R15 K59 ["Bottom"]
      207 SETTABLEKS                       R15 R14 K48 ["side"]
      209 GETUPVAL                         R15 4
      210 GETTABLEKS                       R15 R15 K40 ["Enums"]
      212 GETTABLEKS                       R15 R15 K60 ["PopoverAlign"]
      214 GETTABLEKS                       R15 R15 K61 ["End"]
      216 SETTABLEKS                       R15 R14 K49 ["align"]
      218 SETTABLEKS                       R4 R14 K50 ["onPressedOutside"]
      220 SETTABLEKS                       R6 R14 K37 ["onActivated"]
      222 DUPTABLE                         R15 K63 [{"Anchor"}]
      223 SETTABLEKS                       R11 R15 K62 ["Anchor"]
      225 CALL                             R12 3 -1
      226 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DeviceSimulatorToolbar"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["Menu"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETIMPORT                        R5 K1 [script]
       27 GETTABLEKS                       R5 R5 K10 ["Parent"]
       29 GETTABLEKS                       R5 R5 K11 ["ImageIconButton"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R0 K12 ["Src"]
       36 GETTABLEKS                       R6 R6 K13 ["Hooks"]
       38 GETTABLEKS                       R6 R6 K14 ["useLocalization"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R2 K15 ["createElement"]
       43 DUPCLOSURE                       R7 K16 [PROTO_4]
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R3
       50 RETURN                           R7 1
