PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["jointLabel"]
        3 GETTABLEKS                       R1 R1 K1 ["Name"]
        5 JUMPIFNOTEQ                      R0 R1 ; [+13]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K2 ["rigDescriptor"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K0 ["jointLabel"]
       13 NAMECALL                         R1 R1 K3 ["GetJoint"]
       15 CALL                             R1 2 1
       16 GETUPVAL                         R2 1
       17 MOVE                             R3 R1
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["rigDescriptor"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["jointLabel"]
        6 NAMECALL                         R0 R0 K2 ["GetJoint"]
        8 CALL                             R0 2 1
        9 GETUPVAL                         R1 1
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K0 ["rigDescriptor"]
       15 GETTABLEKS                       R1 R1 K3 ["Changed"]
       17 NEWCLOSURE                       R3 P0
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          UPVAL U1
       20 NAMECALL                         R1 R1 K4 ["Connect"]
       22 CALL                             R1 2 1
       23 NEWCLOSURE                       R2 P1
       24 CAPTURE                          VAL R1
       25 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["selectedJoint"]
        3 JUMPIFEQKNIL                     R0 ; [+15]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["armedRigLabel"]
        8 JUMPIFNOTEQKNIL                  R1 ; [+10]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K2 ["onMapJoint"]
       13 MOVE                             R2 R0
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K3 ["jointLabel"]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K4 ["onArmJoint"]
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R2 R2 K3 ["jointLabel"]
       25 CALL                             R1 1 0
       26 RETURN                           R0 0

PROTO_4:
        0 JUMPIFNOTEQKS                    R0 K0 ["Hover"] ; [+18]
        2 GETUPVAL                         R1 0
        3 LOADB                            R2 1
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 JUMPIFNOT                        R1 ; [+25]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K1 ["onDotHoverEnter"]
       10 JUMPIFNOT                        R1 ; [+21]
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K1 ["onDotHoverEnter"]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K2 ["Name"]
       17 CALL                             R1 1 0
       18 RETURN                           R0 0
       19 JUMPIFNOTEQKS                    R0 K3 ["Default"] ; [+12]
       21 GETUPVAL                         R1 0
       22 LOADB                            R2 0
       23 CALL                             R1 1 0
       24 GETUPVAL                         R1 2
       25 GETTABLEKS                       R1 R1 K4 ["onDotHoverLeave"]
       27 JUMPIFNOT                        R1 ; [+4]
       28 GETUPVAL                         R1 2
       29 GETTABLEKS                       R1 R1 K4 ["onDotHoverLeave"]
       31 CALL                             R1 0 0
       32 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useState"]
        5 LOADNIL                          R3
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K1 ["useEffect"]
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R3
       13 NEWTABLE                         R6 0 2
       15 GETTABLEKS                       R7 R0 K2 ["rigDescriptor"]
       17 GETTABLEKS                       R8 R0 K3 ["jointLabel"]
       19 SETLIST                          R6 R7 2 [1]
       21 CALL                             R4 2 0
       22 LOADB                            R4 1
       23 GETTABLEKS                       R5 R0 K4 ["armedRigLabel"]
       25 GETTABLEKS                       R6 R0 K3 ["jointLabel"]
       27 JUMPIFEQ                         R5 R6 ; [+10]
       29 LOADB                            R4 0
       30 JUMPIFEQKNIL                     R2 ; [+7]
       32 GETTABLEKS                       R5 R0 K5 ["selectedJoint"]
       34 JUMPIFEQ                         R5 R2 ; [+2]
       36 LOADB                            R4 0 +1
       37 LOADB                            R4 1
       38 LOADB                            R5 0
       39 JUMPIFEQKNIL                     R2 ; [+14]
       41 LOADB                            R5 0
       42 GETTABLEKS                       R6 R0 K6 ["counterpartHoveredJointName"]
       44 JUMPIFEQKNIL                     R6 ; [+9]
       46 GETTABLEKS                       R6 R2 K7 ["Name"]
       48 GETTABLEKS                       R7 R0 K6 ["counterpartHoveredJointName"]
       50 JUMPIFEQ                         R6 R7 ; [+2]
       52 LOADB                            R5 0 +1
       53 LOADB                            R5 1
       54 GETUPVAL                         R6 1
       55 GETTABLEKS                       R6 R6 K0 ["useState"]
       57 LOADB                            R7 0
       58 CALL                             R6 1 2
       59 OR                               R8 R5 R6
       60 JUMPIFNOT                        R4 ; [+9]
       61 GETTABLEKS                       R9 R1 K8 ["Color"]
       63 GETTABLEKS                       R9 R9 K9 ["Extended"]
       65 GETTABLEKS                       R9 R9 K10 ["Blue"]
       67 GETTABLEKS                       R9 R9 K11 ["Blue_600"]
       69 JUMP                             ; [+40]
       70 JUMPIFNOT                        R8 ; [+20]
       71 JUMPIFEQKNIL                     R2 ; [+10]
       73 GETTABLEKS                       R9 R1 K8 ["Color"]
       75 GETTABLEKS                       R9 R9 K9 ["Extended"]
       77 GETTABLEKS                       R9 R9 K12 ["Orange"]
       79 GETTABLEKS                       R9 R9 K13 ["Orange_600"]
       81 JUMP                             ; [+28]
       82 GETTABLEKS                       R9 R1 K8 ["Color"]
       84 GETTABLEKS                       R9 R9 K9 ["Extended"]
       86 GETTABLEKS                       R9 R9 K14 ["Gray"]
       88 GETTABLEKS                       R9 R9 K15 ["Gray_500"]
       90 JUMP                             ; [+19]
       91 JUMPIFEQKNIL                     R2 ; [+10]
       93 GETTABLEKS                       R9 R1 K8 ["Color"]
       95 GETTABLEKS                       R9 R9 K9 ["Extended"]
       97 GETTABLEKS                       R9 R9 K12 ["Orange"]
       99 GETTABLEKS                       R9 R9 K16 ["Orange_800"]
      101 JUMP                             ; [+8]
      102 GETTABLEKS                       R9 R1 K8 ["Color"]
      104 GETTABLEKS                       R9 R9 K9 ["Extended"]
      106 GETTABLEKS                       R9 R9 K14 ["Gray"]
      108 GETTABLEKS                       R9 R9 K17 ["Gray_600"]
      110 GETIMPORT                        R10 K20 [table.clone]
      112 MOVE                             R11 R9
      113 CALL                             R10 1 1
      114 LOADK                            R11 K21 [0.3]
      115 SETTABLEKS                       R11 R10 K22 ["Transparency"]
      117 JUMPIF                           R4 ; [+12]
      118 JUMPIF                           R8 ; [+11]
      119 JUMPIFNOTEQKNIL                  R2 ; [+10]
      121 GETTABLEKS                       R11 R1 K8 ["Color"]
      123 GETTABLEKS                       R11 R11 K9 ["Extended"]
      125 GETTABLEKS                       R11 R11 K14 ["Gray"]
      127 GETTABLEKS                       R11 R11 K15 ["Gray_500"]
      129 JUMP                             ; [+1]
      130 MOVE                             R11 R10
      131 GETUPVAL                         R12 1
      132 GETTABLEKS                       R12 R12 K23 ["useCallback"]
      134 NEWCLOSURE                       R13 P1
      135 CAPTURE                          VAL R0
      136 NEWTABLE                         R14 0 5
      138 GETTABLEKS                       R15 R0 K3 ["jointLabel"]
      140 GETTABLEKS                       R16 R0 K5 ["selectedJoint"]
      142 GETTABLEKS                       R17 R0 K4 ["armedRigLabel"]
      144 GETTABLEKS                       R18 R0 K24 ["onMapJoint"]
      146 GETTABLEKS                       R19 R0 K25 ["onArmJoint"]
      148 SETLIST                          R14 R15 5 [1]
      150 CALL                             R12 2 1
      151 GETUPVAL                         R13 1
      152 GETTABLEKS                       R13 R13 K26 ["createElement"]
      154 GETUPVAL                         R14 2
      155 GETTABLEKS                       R14 R14 K27 ["View"]
      157 DUPTABLE                         R15 K33 [{"tag", "Position", "onActivated", "onStateChanged", "stateLayer"}]
      158 LOADK                            R16 K34 ["auto-xy anchor-center-center"]
      159 SETTABLEKS                       R16 R15 K28 ["tag"]
      161 GETIMPORT                        R16 K37 [UDim2.fromScale]
      163 GETTABLEKS                       R18 R0 K39 ["position"]
      165 GETTABLEKS                       R18 R18 K40 ["X"]
      167 DIVK                             R17 R18 K38 [676]
      168 GETTABLEKS                       R19 R0 K39 ["position"]
      170 GETTABLEKS                       R19 R19 K42 ["Y"]
      172 DIVK                             R18 R19 K41 [720]
      173 CALL                             R16 2 1
      174 SETTABLEKS                       R16 R15 K29 ["Position"]
      176 SETTABLEKS                       R12 R15 K30 ["onActivated"]
      178 GETUPVAL                         R16 1
      179 GETTABLEKS                       R16 R16 K23 ["useCallback"]
      181 NEWCLOSURE                       R17 P2
      182 CAPTURE                          VAL R7
      183 CAPTURE                          VAL R2
      184 CAPTURE                          VAL R0
      185 NEWTABLE                         R18 0 3
      187 MOVE                             R19 R2
      188 GETTABLEKS                       R20 R0 K43 ["onDotHoverEnter"]
      190 GETTABLEKS                       R21 R0 K44 ["onDotHoverLeave"]
      192 SETLIST                          R18 R19 3 [1]
      194 CALL                             R16 2 1
      195 SETTABLEKS                       R16 R15 K31 ["onStateChanged"]
      197 DUPTABLE                         R16 K46 [{"affordance"}]
      198 GETUPVAL                         R17 2
      199 GETTABLEKS                       R17 R17 K47 ["Enums"]
      201 GETTABLEKS                       R17 R17 K48 ["StateLayerAffordance"]
      203 GETTABLEKS                       R17 R17 K49 ["None"]
      205 SETTABLEKS                       R17 R16 K45 ["affordance"]
      207 SETTABLEKS                       R16 R15 K32 ["stateLayer"]
      209 DUPTABLE                         R16 K51 [{"Tooltip"}]
      210 GETUPVAL                         R17 1
      211 GETTABLEKS                       R17 R17 K26 ["createElement"]
      213 GETUPVAL                         R18 2
      214 GETTABLEKS                       R18 R18 K50 ["Tooltip"]
      216 DUPTABLE                         R19 K55 [{"title", "align", "side"}]
      217 GETTABLEKS                       R20 R0 K3 ["jointLabel"]
      219 GETTABLEKS                       R20 R20 K7 ["Name"]
      221 SETTABLEKS                       R20 R19 K52 ["title"]
      223 GETUPVAL                         R20 2
      224 GETTABLEKS                       R20 R20 K47 ["Enums"]
      226 GETTABLEKS                       R20 R20 K56 ["PopoverAlign"]
      228 GETTABLEKS                       R20 R20 K57 ["Center"]
      230 SETTABLEKS                       R20 R19 K53 ["align"]
      232 GETUPVAL                         R20 2
      233 GETTABLEKS                       R20 R20 K47 ["Enums"]
      235 GETTABLEKS                       R20 R20 K58 ["PopoverSide"]
      237 GETTABLEKS                       R20 R20 K59 ["Top"]
      239 SETTABLEKS                       R20 R19 K54 ["side"]
      241 GETUPVAL                         R20 1
      242 GETTABLEKS                       R20 R20 K26 ["createElement"]
      244 GETUPVAL                         R21 2
      245 GETTABLEKS                       R21 R21 K27 ["View"]
      247 DUPTABLE                         R22 K63 [{"Size", "backgroundStyle", "stroke"}]
      248 JUMPIFNOT                        R8 ; [+8]
      249 GETIMPORT                        R23 K65 [UDim2.new]
      251 LOADN                            R24 0
      252 LOADN                            R25 14
      253 LOADN                            R26 0
      254 LOADN                            R27 14
      255 CALL                             R23 4 1
      256 JUMP                             ; [+7]
      257 GETIMPORT                        R23 K65 [UDim2.new]
      259 LOADN                            R24 0
      260 LOADN                            R25 10
      261 LOADN                            R26 0
      262 LOADN                            R27 10
      263 CALL                             R23 4 1
      264 SETTABLEKS                       R23 R22 K60 ["Size"]
      266 SETTABLEKS                       R11 R22 K61 ["backgroundStyle"]
      268 DUPTABLE                         R23 K67 [{"Color", "Thickness"}]
      269 GETTABLEKS                       R24 R10 K68 ["Color3"]
      271 SETTABLEKS                       R24 R23 K8 ["Color"]
      273 JUMPIFNOT                        R8 ; [+2]
      274 LOADN                            R24 2
      275 JUMP                             ; [+1]
      276 LOADN                            R24 1
      277 SETTABLEKS                       R24 R23 K66 ["Thickness"]
      279 SETTABLEKS                       R23 R22 K62 ["stroke"]
      281 DUPTABLE                         R23 K70 [{"UICorner"}]
      282 GETUPVAL                         R24 1
      283 GETTABLEKS                       R24 R24 K26 ["createElement"]
      285 LOADK                            R25 K69 ["UICorner"]
      286 DUPTABLE                         R26 K72 [{"CornerRadius"}]
      287 GETIMPORT                        R27 K74 [UDim.new]
      289 LOADN                            R28 0
      290 LOADN                            R29 15
      291 CALL                             R27 2 1
      292 SETTABLEKS                       R27 R26 K71 ["CornerRadius"]
      294 CALL                             R24 2 1
      295 SETTABLEKS                       R24 R23 K69 ["UICorner"]
      297 CALL                             R20 3 -1
      298 CALL                             R17 -1 1
      299 SETTABLEKS                       R17 R16 K50 ["Tooltip"]
      301 CALL                             R13 3 -1
      302 RETURN                           R13 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onClear"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETUPVAL                         R7 1
        7 GETTABLEKS                       R8 R5 K0 ["Name"]
        9 GETTABLE                         R6 R7 R8
       10 JUMPIFNOT                        R6 ; [+65]
       11 GETUPVAL                         R8 2
       12 JUMPIFNOT                        R8 ; [+9]
       13 GETIMPORT                        R7 K3 [Vector2.new]
       15 GETTABLEKS                       R9 R6 K5 ["X"]
       17 SUBRK                            R8 R4 K9 ["position"]
       18 GETTABLEKS                       R9 R6 K6 ["Y"]
       20 CALL                             R7 2 1
       21 JUMP                             ; [+1]
       22 MOVE                             R7 R6
       23 GETTABLEKS                       R8 R5 K0 ["Name"]
       25 GETUPVAL                         R9 3
       26 GETTABLEKS                       R9 R9 K7 ["createElement"]
       28 GETUPVAL                         R10 4
       29 DUPTABLE                         R11 K18 [{"jointLabel", "position", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
       30 SETTABLEKS                       R5 R11 K8 ["jointLabel"]
       32 SETTABLEKS                       R7 R11 K9 ["position"]
       34 GETUPVAL                         R12 5
       35 GETTABLEKS                       R12 R12 K10 ["selectedJoint"]
       37 SETTABLEKS                       R12 R11 K10 ["selectedJoint"]
       39 GETUPVAL                         R12 5
       40 GETTABLEKS                       R12 R12 K11 ["rigDescriptor"]
       42 SETTABLEKS                       R12 R11 K11 ["rigDescriptor"]
       44 GETUPVAL                         R12 5
       45 GETTABLEKS                       R12 R12 K12 ["armedRigLabel"]
       47 SETTABLEKS                       R12 R11 K12 ["armedRigLabel"]
       49 GETUPVAL                         R12 5
       50 GETTABLEKS                       R12 R12 K13 ["onArmJoint"]
       52 SETTABLEKS                       R12 R11 K13 ["onArmJoint"]
       54 GETUPVAL                         R12 5
       55 GETTABLEKS                       R12 R12 K14 ["onMapJoint"]
       57 SETTABLEKS                       R12 R11 K14 ["onMapJoint"]
       59 GETUPVAL                         R12 5
       60 GETTABLEKS                       R12 R12 K15 ["counterpartHoveredJointName"]
       62 SETTABLEKS                       R12 R11 K15 ["counterpartHoveredJointName"]
       64 GETUPVAL                         R12 5
       65 GETTABLEKS                       R12 R12 K16 ["onDotHoverEnter"]
       67 SETTABLEKS                       R12 R11 K16 ["onDotHoverEnter"]
       69 GETUPVAL                         R12 5
       70 GETTABLEKS                       R12 R12 K17 ["onDotHoverLeave"]
       72 SETTABLEKS                       R12 R11 K17 ["onDotHoverLeave"]
       74 CALL                             R9 2 1
       75 SETTABLE                         R9 R0 R8
       76 FORGLOOP                         R1 2 ; [-71]
       78 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useCallback"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 1
        7 GETTABLEKS                       R4 R0 K1 ["onClear"]
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 1
       12 GETTABLEKS                       R3 R0 K2 ["descriptorKind"]
       14 JUMPIFEQKS                       R3 K3 ["rightHand"] ; [+2]
       16 LOADB                            R2 0 +1
       17 LOADB                            R2 1
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K4 ["handRigLabels"]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K5 ["useMemo"]
       24 NEWCLOSURE                       R5 P1
       25 CAPTURE                          VAL R3
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          VAL R2
       28 CAPTURE                          UPVAL U0
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          VAL R0
       31 NEWTABLE                         R6 0 9
       33 MOVE                             R7 R2
       34 GETTABLEKS                       R8 R0 K6 ["selectedJoint"]
       36 GETTABLEKS                       R9 R0 K7 ["rigDescriptor"]
       38 GETTABLEKS                       R10 R0 K8 ["armedRigLabel"]
       40 GETTABLEKS                       R11 R0 K9 ["onArmJoint"]
       42 GETTABLEKS                       R12 R0 K10 ["onMapJoint"]
       44 GETTABLEKS                       R13 R0 K11 ["counterpartHoveredJointName"]
       46 GETTABLEKS                       R14 R0 K12 ["onDotHoverEnter"]
       48 GETTABLEKS                       R15 R0 K13 ["onDotHoverLeave"]
       50 SETLIST                          R6 R7 9 [1]
       52 CALL                             R4 2 1
       53 GETTABLEKS                       R6 R0 K2 ["descriptorKind"]
       55 JUMPIFNOTEQKS                    R6 K14 ["leftHand"] ; [+3]
       57 LOADK                            R5 K15 ["Left Hand"]
       58 JUMP                             ; [+7]
       59 GETTABLEKS                       R6 R0 K2 ["descriptorKind"]
       61 JUMPIFNOTEQKS                    R6 K3 ["rightHand"] ; [+3]
       63 LOADK                            R5 K16 ["Right Hand"]
       64 JUMP                             ; [+1]
       65 LOADK                            R5 K17 ["Hand"]
       66 GETUPVAL                         R6 0
       67 GETTABLEKS                       R6 R6 K18 ["createElement"]
       69 GETUPVAL                         R7 4
       70 DUPTABLE                         R8 K23 [{"title", "onClose", "breadcrumb", "content"}]
       71 GETTABLEKS                       R9 R0 K24 ["localization"]
       73 LOADK                            R11 K25 ["Mannequin"]
       74 LOADK                            R12 K26 ["Title"]
       75 NAMECALL                         R9 R9 K27 ["getText"]
       77 CALL                             R9 3 1
       78 SETTABLEKS                       R9 R8 K19 ["title"]
       80 GETTABLEKS                       R9 R0 K20 ["onClose"]
       82 SETTABLEKS                       R9 R8 K20 ["onClose"]
       84 DUPTABLE                         R9 K33 [{"Layout", "Padding", "BodyLabel", "Separator", "SideLabel"}]
       85 GETUPVAL                         R10 0
       86 GETTABLEKS                       R10 R10 K18 ["createElement"]
       88 LOADK                            R11 K34 ["UIListLayout"]
       89 DUPTABLE                         R12 K37 [{"FillDirection", "VerticalAlignment", "Padding"}]
       90 GETIMPORT                        R13 K40 [Enum.FillDirection.Horizontal]
       92 SETTABLEKS                       R13 R12 K35 ["FillDirection"]
       94 GETIMPORT                        R13 K42 [Enum.VerticalAlignment.Center]
       96 SETTABLEKS                       R13 R12 K36 ["VerticalAlignment"]
       98 GETIMPORT                        R13 K45 [UDim.new]
      100 LOADN                            R14 0
      101 LOADN                            R15 4
      102 CALL                             R13 2 1
      103 SETTABLEKS                       R13 R12 K29 ["Padding"]
      105 CALL                             R10 2 1
      106 SETTABLEKS                       R10 R9 K28 ["Layout"]
      108 GETUPVAL                         R10 0
      109 GETTABLEKS                       R10 R10 K18 ["createElement"]
      111 LOADK                            R11 K46 ["UIPadding"]
      112 DUPTABLE                         R12 K49 [{"PaddingLeft", "PaddingRight"}]
      113 GETIMPORT                        R13 K45 [UDim.new]
      115 LOADN                            R14 0
      116 LOADN                            R15 8
      117 CALL                             R13 2 1
      118 SETTABLEKS                       R13 R12 K47 ["PaddingLeft"]
      120 GETIMPORT                        R13 K45 [UDim.new]
      122 LOADN                            R14 0
      123 LOADN                            R15 4
      124 CALL                             R13 2 1
      125 SETTABLEKS                       R13 R12 K48 ["PaddingRight"]
      127 CALL                             R10 2 1
      128 SETTABLEKS                       R10 R9 K29 ["Padding"]
      130 GETUPVAL                         R10 0
      131 GETTABLEKS                       R10 R10 K18 ["createElement"]
      133 GETUPVAL                         R11 5
      134 GETTABLEKS                       R11 R11 K50 ["View"]
      136 DUPTABLE                         R12 K55 [{"tag", "LayoutOrder", "onActivated", "stateLayer"}]
      137 LOADK                            R13 K56 ["auto-xy"]
      138 SETTABLEKS                       R13 R12 K51 ["tag"]
      140 LOADN                            R13 1
      141 SETTABLEKS                       R13 R12 K52 ["LayoutOrder"]
      143 GETTABLEKS                       R13 R0 K57 ["onNavigateToBody"]
      145 SETTABLEKS                       R13 R12 K53 ["onActivated"]
      147 DUPTABLE                         R13 K59 [{"affordance"}]
      148 GETUPVAL                         R14 5
      149 GETTABLEKS                       R14 R14 K60 ["Enums"]
      151 GETTABLEKS                       R14 R14 K61 ["StateLayerAffordance"]
      153 GETTABLEKS                       R14 R14 K62 ["None"]
      155 SETTABLEKS                       R14 R13 K58 ["affordance"]
      157 SETTABLEKS                       R13 R12 K54 ["stateLayer"]
      159 DUPTABLE                         R13 K64 [{"Text"}]
      160 GETUPVAL                         R14 0
      161 GETTABLEKS                       R14 R14 K18 ["createElement"]
      163 GETUPVAL                         R15 5
      164 GETTABLEKS                       R15 R15 K63 ["Text"]
      166 DUPTABLE                         R16 K65 [{"tag", "Text"}]
      167 LOADK                            R17 K66 ["text-caption-small auto-xy content-muted"]
      168 SETTABLEKS                       R17 R16 K51 ["tag"]
      170 LOADK                            R17 K67 ["Body"]
      171 SETTABLEKS                       R17 R16 K63 ["Text"]
      173 CALL                             R14 2 1
      174 SETTABLEKS                       R14 R13 K63 ["Text"]
      176 CALL                             R10 3 1
      177 SETTABLEKS                       R10 R9 K30 ["BodyLabel"]
      179 GETUPVAL                         R10 0
      180 GETTABLEKS                       R10 R10 K18 ["createElement"]
      182 GETUPVAL                         R11 5
      183 GETTABLEKS                       R11 R11 K63 ["Text"]
      185 DUPTABLE                         R12 K68 [{"tag", "Text", "LayoutOrder"}]
      186 LOADK                            R13 K66 ["text-caption-small auto-xy content-muted"]
      187 SETTABLEKS                       R13 R12 K51 ["tag"]
      189 LOADK                            R13 K69 ["/"]
      190 SETTABLEKS                       R13 R12 K63 ["Text"]
      192 LOADN                            R13 2
      193 SETTABLEKS                       R13 R12 K52 ["LayoutOrder"]
      195 CALL                             R10 2 1
      196 SETTABLEKS                       R10 R9 K31 ["Separator"]
      198 GETUPVAL                         R10 0
      199 GETTABLEKS                       R10 R10 K18 ["createElement"]
      201 GETUPVAL                         R11 5
      202 GETTABLEKS                       R11 R11 K63 ["Text"]
      204 DUPTABLE                         R12 K68 [{"tag", "Text", "LayoutOrder"}]
      205 LOADK                            R13 K70 ["text-caption-small auto-xy"]
      206 SETTABLEKS                       R13 R12 K51 ["tag"]
      208 SETTABLEKS                       R5 R12 K63 ["Text"]
      210 LOADN                            R13 3
      211 SETTABLEKS                       R13 R12 K52 ["LayoutOrder"]
      213 CALL                             R10 2 1
      214 SETTABLEKS                       R10 R9 K32 ["SideLabel"]
      216 SETTABLEKS                       R9 R8 K21 ["breadcrumb"]
      218 DUPTABLE                         R9 K72 [{"Inner"}]
      219 GETUPVAL                         R10 0
      220 GETTABLEKS                       R10 R10 K18 ["createElement"]
      222 GETUPVAL                         R11 5
      223 GETTABLEKS                       R11 R11 K73 ["Image"]
      225 DUPTABLE                         R12 K78 [{"Image", "aspectRatio", "Position", "AnchorPoint", "Size", "onActivated", "stateLayer"}]
      226 JUMPIFNOT                        R2 ; [+4]
      227 GETUPVAL                         R13 6
      228 GETTABLEKS                       R13 R13 K79 ["HAND_R"]
      230 JUMP                             ; [+3]
      231 GETUPVAL                         R13 6
      232 GETTABLEKS                       R13 R13 K80 ["HAND"]
      234 SETTABLEKS                       R13 R12 K73 ["Image"]
      236 DUPTABLE                         R13 K83 [{"AspectRatio", "DominantAxis"}]
      237 LOADK                            R14 K84 [0.938888888888889]
      238 SETTABLEKS                       R14 R13 K81 ["AspectRatio"]
      240 GETIMPORT                        R14 K86 [Enum.DominantAxis.Width]
      242 SETTABLEKS                       R14 R13 K82 ["DominantAxis"]
      244 SETTABLEKS                       R13 R12 K74 ["aspectRatio"]
      246 GETIMPORT                        R13 K89 [UDim2.fromScale]
      248 LOADK                            R14 K90 [0.5]
      249 LOADK                            R15 K90 [0.5]
      250 CALL                             R13 2 1
      251 SETTABLEKS                       R13 R12 K75 ["Position"]
      253 GETIMPORT                        R13 K92 [Vector2.new]
      255 LOADK                            R14 K90 [0.5]
      256 LOADK                            R15 K90 [0.5]
      257 CALL                             R13 2 1
      258 SETTABLEKS                       R13 R12 K76 ["AnchorPoint"]
      260 GETIMPORT                        R13 K93 [UDim2.new]
      262 LOADN                            R14 1
      263 LOADN                            R15 0
      264 LOADN                            R16 1
      265 LOADN                            R17 0
      266 CALL                             R13 4 1
      267 SETTABLEKS                       R13 R12 K77 ["Size"]
      269 SETTABLEKS                       R1 R12 K53 ["onActivated"]
      271 DUPTABLE                         R13 K59 [{"affordance"}]
      272 GETUPVAL                         R14 5
      273 GETTABLEKS                       R14 R14 K60 ["Enums"]
      275 GETTABLEKS                       R14 R14 K61 ["StateLayerAffordance"]
      277 GETTABLEKS                       R14 R14 K62 ["None"]
      279 SETTABLEKS                       R14 R13 K58 ["affordance"]
      281 SETTABLEKS                       R13 R12 K54 ["stateLayer"]
      283 DUPTABLE                         R13 K95 [{"Dots"}]
      284 GETUPVAL                         R14 0
      285 GETTABLEKS                       R14 R14 K18 ["createElement"]
      287 GETUPVAL                         R15 5
      288 GETTABLEKS                       R15 R15 K50 ["View"]
      290 DUPTABLE                         R16 K96 [{"tag"}]
      291 LOADK                            R17 K97 ["size-full"]
      292 SETTABLEKS                       R17 R16 K51 ["tag"]
      294 MOVE                             R17 R4
      295 CALL                             R14 3 1
      296 SETTABLEKS                       R14 R13 K94 ["Dots"]
      298 CALL                             R10 3 1
      299 SETTABLEKS                       R10 R9 K71 ["Inner"]
      301 SETTABLEKS                       R9 R8 K22 ["content"]
      303 CALL                             R6 2 -1
      304 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Resources"]
       13 GETTABLEKS                       R2 R2 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Components"]
       29 GETTABLEKS                       R4 R4 K12 ["MannequinPanel"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K9 ["Packages"]
       36 GETTABLEKS                       R5 R5 K13 ["React"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R2 K14 ["Hooks"]
       41 GETTABLEKS                       R5 R5 K15 ["useTokens"]
       43 GETIMPORT                        R6 K5 [require]
       45 GETTABLEKS                       R7 R0 K6 ["Src"]
       47 GETTABLEKS                       R7 R7 K16 ["Types"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K5 [require]
       52 GETTABLEKS                       R8 R0 K9 ["Packages"]
       54 GETTABLEKS                       R8 R8 K17 ["AdaptiveAnimationTools"]
       56 CALL                             R7 1 1
       57 DUPTABLE                         R8 K33 [{"Thumb1", "Thumb2", "Thumb3", "Index1", "Index2", "Index3", "Middle1", "Middle2", "Middle3", "Ring1", "Ring2", "Ring3", "Pinky1", "Pinky2", "Pinky3"}]
       58 GETIMPORT                        R9 K36 [Vector2.new]
       60 LOADN                            R10 202
       61 LOADN                            R11 24
       62 CALL                             R9 2 1
       63 SETTABLEKS                       R9 R8 K18 ["Thumb1"]
       65 GETIMPORT                        R9 K36 [Vector2.new]
       67 LOADN                            R10 162
       68 LOADN                            R11 74
       69 CALL                             R9 2 1
       70 SETTABLEKS                       R9 R8 K19 ["Thumb2"]
       72 GETIMPORT                        R9 K36 [Vector2.new]
       74 LOADN                            R10 117
       75 LOADN                            R11 126
       76 CALL                             R9 2 1
       77 SETTABLEKS                       R9 R8 K20 ["Thumb3"]
       79 GETIMPORT                        R9 K36 [Vector2.new]
       81 LOADN                            R10 15
       82 LOADN                            R11 128
       83 CALL                             R9 2 1
       84 SETTABLEKS                       R9 R8 K21 ["Index1"]
       86 GETIMPORT                        R9 K36 [Vector2.new]
       88 LOADN                            R10 12
       89 LOADN                            R11 232
       90 CALL                             R9 2 1
       91 SETTABLEKS                       R9 R8 K22 ["Index2"]
       93 GETIMPORT                        R9 K36 [Vector2.new]
       95 LOADN                            R10 12
       96 LOADN                            R11 82
       97 CALL                             R9 2 1
       98 SETTABLEKS                       R9 R8 K23 ["Index3"]
      100 GETIMPORT                        R9 K36 [Vector2.new]
      102 LOADN                            R10 82
      103 LOADN                            R11 138
      104 CALL                             R9 2 1
      105 SETTABLEKS                       R9 R8 K24 ["Middle1"]
      107 GETIMPORT                        R9 K36 [Vector2.new]
      109 LOADN                            R10 80
      110 LOADN                            R11 255
      111 CALL                             R9 2 1
      112 SETTABLEKS                       R9 R8 K25 ["Middle2"]
      114 GETIMPORT                        R9 K36 [Vector2.new]
      116 LOADN                            R10 75
      117 LOADN                            R11 121
      118 CALL                             R9 2 1
      119 SETTABLEKS                       R9 R8 K26 ["Middle3"]
      121 GETIMPORT                        R9 K36 [Vector2.new]
      123 LOADN                            R10 145
      124 LOADN                            R11 131
      125 CALL                             R9 2 1
      126 SETTABLEKS                       R9 R8 K27 ["Ring1"]
      128 GETIMPORT                        R9 K36 [Vector2.new]
      130 LOADN                            R10 148
      131 LOADN                            R11 9
      132 CALL                             R9 2 1
      133 SETTABLEKS                       R9 R8 K28 ["Ring2"]
      135 GETIMPORT                        R9 K36 [Vector2.new]
      137 LOADN                            R10 142
      138 LOADN                            R11 80
      139 CALL                             R9 2 1
      140 SETTABLEKS                       R9 R8 K29 ["Ring3"]
      142 GETIMPORT                        R9 K36 [Vector2.new]
      144 LOADN                            R10 204
      145 LOADN                            R11 113
      146 CALL                             R9 2 1
      147 SETTABLEKS                       R9 R8 K30 ["Pinky1"]
      149 GETIMPORT                        R9 K36 [Vector2.new]
      151 LOADN                            R10 203
      152 LOADN                            R11 202
      153 CALL                             R9 2 1
      154 SETTABLEKS                       R9 R8 K31 ["Pinky2"]
      156 GETIMPORT                        R9 K36 [Vector2.new]
      158 LOADN                            R10 200
      159 LOADN                            R11 2
      160 CALL                             R9 2 1
      161 SETTABLEKS                       R9 R8 K32 ["Pinky3"]
      163 DUPCLOSURE                       R9 K37 [PROTO_5]
      164 CAPTURE                          VAL R5
      165 CAPTURE                          VAL R4
      166 CAPTURE                          VAL R2
      167 DUPCLOSURE                       R10 K38 [PROTO_8]
      168 CAPTURE                          VAL R4
      169 CAPTURE                          VAL R7
      170 CAPTURE                          VAL R8
      171 CAPTURE                          VAL R9
      172 CAPTURE                          VAL R3
      173 CAPTURE                          VAL R2
      174 CAPTURE                          VAL R1
      175 RETURN                           R10 1
