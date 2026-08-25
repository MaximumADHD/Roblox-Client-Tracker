PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetStringForKeyCode"]
        4 CALL                             R1 2 1
        5 JUMPIFNOTEQKS                    R1 K1 [""] ; [+4]
        7 GETTABLEKS                       R2 R0 K2 ["Name"]
        9 RETURN                           R2 1
       10 MOVE                             R2 R1
       11 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R1 K3 [Enum.KeyCode.LeftAlt]
        2 GETUPVAL                         R2 0
        3 MOVE                             R4 R1
        4 NAMECALL                         R2 R2 K4 ["GetStringForKeyCode"]
        6 CALL                             R2 2 1
        7 JUMPIFNOTEQKS                    R2 K5 [""] ; [+4]
        9 GETTABLEKS                       R0 R1 K6 ["Name"]
       11 JUMP                             ; [+1]
       12 MOVE                             R0 R2
       13 GETIMPORT                        R2 K8 [Enum.KeyCode.LeftShift]
       15 GETUPVAL                         R3 0
       16 MOVE                             R5 R2
       17 NAMECALL                         R3 R3 K4 ["GetStringForKeyCode"]
       19 CALL                             R3 2 1
       20 JUMPIFNOTEQKS                    R3 K5 [""] ; [+4]
       22 GETTABLEKS                       R1 R2 K6 ["Name"]
       24 JUMP                             ; [+1]
       25 MOVE                             R1 R3
       26 LOADK                            R3 K9 ["%* + Drag"]
       27 MOVE                             R5 R0
       28 NAMECALL                         R3 R3 K10 ["format"]
       30 CALL                             R3 2 1
       31 MOVE                             R2 R3
       32 LOADK                            R4 K11 ["%* + %* + Drag"]
       33 MOVE                             R6 R0
       34 MOVE                             R7 R1
       35 NAMECALL                         R4 R4 K10 ["format"]
       37 CALL                             R4 3 1
       38 MOVE                             R3 R4
       39 RETURN                           R2 2

PROTO_2:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

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
       12 DUPCLOSURE                       R1 K5 [PROTO_2]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [os.clock]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K3 ["current"]
        6 GETUPVAL                         R0 1
        7 LOADB                            R1 0
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useState"]
        5 LOADB                            R3 0
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K1 ["useRef"]
       10 LOADN                            R5 0
       11 CALL                             R4 1 1
       12 GETIMPORT                        R8 K5 [Enum.KeyCode.LeftAlt]
       14 GETUPVAL                         R9 2
       15 MOVE                             R11 R8
       16 NAMECALL                         R9 R9 K6 ["GetStringForKeyCode"]
       18 CALL                             R9 2 1
       19 JUMPIFNOTEQKS                    R9 K7 [""] ; [+4]
       21 GETTABLEKS                       R7 R8 K8 ["Name"]
       23 JUMP                             ; [+1]
       24 MOVE                             R7 R9
       25 GETIMPORT                        R9 K10 [Enum.KeyCode.LeftShift]
       27 GETUPVAL                         R10 2
       28 MOVE                             R12 R9
       29 NAMECALL                         R10 R10 K6 ["GetStringForKeyCode"]
       31 CALL                             R10 2 1
       32 JUMPIFNOTEQKS                    R10 K7 [""] ; [+4]
       34 GETTABLEKS                       R8 R9 K8 ["Name"]
       36 JUMP                             ; [+1]
       37 MOVE                             R8 R10
       38 LOADK                            R9 K11 ["%* + Drag"]
       39 MOVE                             R11 R7
       40 NAMECALL                         R9 R9 K12 ["format"]
       42 CALL                             R9 2 1
       43 MOVE                             R5 R9
       44 LOADK                            R9 K13 ["%* + %* + Drag"]
       45 MOVE                             R11 R7
       46 MOVE                             R12 R8
       47 NAMECALL                         R9 R9 K12 ["format"]
       49 CALL                             R9 3 1
       50 MOVE                             R6 R9
       51 GETUPVAL                         R7 1
       52 GETTABLEKS                       R7 R7 K14 ["useCallback"]
       54 NEWCLOSURE                       R8 P0
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R3
       57 NEWTABLE                         R9 0 0
       59 CALL                             R7 2 1
       60 GETUPVAL                         R8 1
       61 GETTABLEKS                       R8 R8 K14 ["useCallback"]
       63 NEWCLOSURE                       R9 P1
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R3
       66 NEWTABLE                         R10 0 0
       68 CALL                             R8 2 1
       69 GETUPVAL                         R9 1
       70 GETTABLEKS                       R9 R9 K15 ["createElement"]
       72 GETUPVAL                         R10 3
       73 GETTABLEKS                       R10 R10 K16 ["Root"]
       75 DUPTABLE                         R11 K18 [{"isOpen"}]
       76 SETTABLEKS                       R2 R11 K17 ["isOpen"]
       78 DUPTABLE                         R12 K21 [{"Anchor", "Content"}]
       79 GETUPVAL                         R13 1
       80 GETTABLEKS                       R13 R13 K15 ["createElement"]
       82 GETUPVAL                         R14 3
       83 GETTABLEKS                       R14 R14 K19 ["Anchor"]
       85 DUPTABLE                         R15 K23 [{"LayoutOrder"}]
       86 GETTABLEKS                       R16 R0 K22 ["LayoutOrder"]
       88 SETTABLEKS                       R16 R15 K22 ["LayoutOrder"]
       90 DUPTABLE                         R16 K25 [{"Button"}]
       91 GETUPVAL                         R17 1
       92 GETTABLEKS                       R17 R17 K15 ["createElement"]
       94 GETUPVAL                         R18 4
       95 DUPTABLE                         R19 K32 [{["testId"], ["iconAsset"] = "rbxasset://textures/DeviceEmulator/sim_orientation@32.png", ["pressed"], ["tooltipText"], ["onActivated"]}]
       96 GETTABLEKS                       R20 R0 K26 ["testId"]
       98 SETTABLEKS                       R20 R19 K26 ["testId"]
      100 SETTABLEKS                       R2 R19 K29 ["pressed"]
      102 JUMPIFNOT                        R2 ; [+2]
      103 LOADNIL                          R20
      104 JUMP                             ; [+5]
      105 LOADK                            R22 K33 ["TouchControls"]
      106 LOADK                            R23 K34 ["Tooltip"]
      107 NAMECALL                         R20 R1 K35 ["getText"]
      109 CALL                             R20 3 1
      110 SETTABLEKS                       R20 R19 K30 ["tooltipText"]
      112 SETTABLEKS                       R7 R19 K31 ["onActivated"]
      114 CALL                             R17 2 1
      115 SETTABLEKS                       R17 R16 K24 ["Button"]
      117 CALL                             R13 3 1
      118 SETTABLEKS                       R13 R12 K19 ["Anchor"]
      120 GETUPVAL                         R13 1
      121 GETTABLEKS                       R13 R13 K15 ["createElement"]
      123 GETUPVAL                         R14 3
      124 GETTABLEKS                       R14 R14 K20 ["Content"]
      126 DUPTABLE                         R15 K41 [{["hasArrow"] = False, ["side"], ["radius"], ["onPressedOutside"]}]
      127 DUPTABLE                         R16 K45 [{["position"], ["offset"] = 8}]
      128 GETUPVAL                         R17 5
      129 GETTABLEKS                       R17 R17 K46 ["Bottom"]
      131 SETTABLEKS                       R17 R16 K42 ["position"]
      133 SETTABLEKS                       R16 R15 K38 ["side"]
      135 GETUPVAL                         R16 6
      136 GETTABLEKS                       R16 R16 K47 ["Medium"]
      138 SETTABLEKS                       R16 R15 K39 ["radius"]
      140 SETTABLEKS                       R8 R15 K40 ["onPressedOutside"]
      142 DUPTABLE                         R16 K49 [{"Body"}]
      143 GETUPVAL                         R17 1
      144 GETTABLEKS                       R17 R17 K15 ["createElement"]
      146 GETUPVAL                         R18 7
      147 DUPTABLE                         R19 K52 [{["tag"] = "col padding-small gap-xsmall auto-xy"}]
      148 DUPTABLE                         R20 K56 [{"Header", "Pinch", "Pan"}]
      149 GETUPVAL                         R21 1
      150 GETTABLEKS                       R21 R21 K15 ["createElement"]
      152 GETUPVAL                         R22 8
      153 DUPTABLE                         R23 K60 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "auto-xy text-label-small content-emphasis"}]
      154 LOADK                            R26 K33 ["TouchControls"]
      155 LOADK                            R27 K53 ["Header"]
      156 NAMECALL                         R24 R1 K35 ["getText"]
      158 CALL                             R24 3 1
      159 SETTABLEKS                       R24 R23 K58 ["Text"]
      161 CALL                             R21 2 1
      162 SETTABLEKS                       R21 R20 K53 ["Header"]
      164 GETUPVAL                         R21 1
      165 GETTABLEKS                       R21 R21 K15 ["createElement"]
      167 GETUPVAL                         R22 7
      168 DUPTABLE                         R23 K63 [{["LayoutOrder"] = 2, ["tag"] = "row auto-xy gap-none"}]
      169 DUPTABLE                         R24 K65 [{"Instruction"}]
      170 GETUPVAL                         R25 1
      171 GETTABLEKS                       R25 R25 K15 ["createElement"]
      173 GETUPVAL                         R26 8
      174 DUPTABLE                         R27 K67 [{["Text"], ["tag"] = "auto-xy text-body-small"}]
      175 LOADK                            R30 K33 ["TouchControls"]
      176 LOADK                            R31 K68 ["PinchRotate"]
      177 DUPTABLE                         R32 K70 [{"shortcut"}]
      178 SETTABLEKS                       R5 R32 K69 ["shortcut"]
      180 NAMECALL                         R28 R1 K35 ["getText"]
      182 CALL                             R28 4 1
      183 SETTABLEKS                       R28 R27 K58 ["Text"]
      185 CALL                             R25 2 1
      186 SETTABLEKS                       R25 R24 K64 ["Instruction"]
      188 CALL                             R21 3 1
      189 SETTABLEKS                       R21 R20 K54 ["Pinch"]
      191 GETUPVAL                         R21 1
      192 GETTABLEKS                       R21 R21 K15 ["createElement"]
      194 GETUPVAL                         R22 7
      195 DUPTABLE                         R23 K72 [{["LayoutOrder"] = 3, ["tag"] = "row auto-xy gap-none"}]
      196 DUPTABLE                         R24 K65 [{"Instruction"}]
      197 GETUPVAL                         R25 1
      198 GETTABLEKS                       R25 R25 K15 ["createElement"]
      200 GETUPVAL                         R26 8
      201 DUPTABLE                         R27 K67 [{["Text"], ["tag"] = "auto-xy text-body-small"}]
      202 LOADK                            R30 K33 ["TouchControls"]
      203 LOADK                            R31 K73 ["TwoFingerPan"]
      204 DUPTABLE                         R32 K70 [{"shortcut"}]
      205 SETTABLEKS                       R6 R32 K69 ["shortcut"]
      207 NAMECALL                         R28 R1 K35 ["getText"]
      209 CALL                             R28 4 1
      210 SETTABLEKS                       R28 R27 K58 ["Text"]
      212 CALL                             R25 2 1
      213 SETTABLEKS                       R25 R24 K64 ["Instruction"]
      215 CALL                             R21 3 1
      216 SETTABLEKS                       R21 R20 K55 ["Pan"]
      218 CALL                             R17 3 1
      219 SETTABLEKS                       R17 R16 K48 ["Body"]
      221 CALL                             R13 3 1
      222 SETTABLEKS                       R13 R12 K20 ["Content"]
      224 CALL                             R9 3 -1
      225 RETURN                           R9 -1

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
       21 GETIMPORT                        R3 K10 [game]
       23 LOADK                            R5 K11 ["UserInputService"]
       24 NAMECALL                         R3 R3 K12 ["GetService"]
       26 CALL                             R3 2 1
       27 GETTABLEKS                       R4 R2 K13 ["View"]
       29 GETTABLEKS                       R5 R2 K14 ["Text"]
       31 GETTABLEKS                       R6 R2 K15 ["Popover"]
       33 GETTABLEKS                       R7 R2 K16 ["Enums"]
       35 GETTABLEKS                       R7 R7 K17 ["PopoverSide"]
       37 GETTABLEKS                       R8 R2 K16 ["Enums"]
       39 GETTABLEKS                       R8 R8 K18 ["Radius"]
       41 GETIMPORT                        R9 K5 [require]
       43 GETIMPORT                        R10 K1 [script]
       45 GETTABLEKS                       R10 R10 K19 ["Parent"]
       47 GETTABLEKS                       R10 R10 K20 ["ImageIconButton"]
       49 CALL                             R9 1 1
       50 GETIMPORT                        R10 K5 [require]
       52 GETTABLEKS                       R11 R0 K21 ["Src"]
       54 GETTABLEKS                       R11 R11 K22 ["Hooks"]
       56 GETTABLEKS                       R11 R11 K23 ["useLocalization"]
       58 CALL                             R10 1 1
       59 DUPCLOSURE                       R11 K24 [PROTO_0]
       60 CAPTURE                          VAL R3
       61 DUPCLOSURE                       R12 K25 [PROTO_1]
       62 CAPTURE                          VAL R3
       63 DUPCLOSURE                       R13 K26 [PROTO_5]
       64 CAPTURE                          VAL R10
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R5
       73 RETURN                           R13 1
