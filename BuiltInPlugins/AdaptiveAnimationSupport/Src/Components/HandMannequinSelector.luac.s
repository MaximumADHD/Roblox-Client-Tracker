PROTO_0:
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

PROTO_1:
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

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R0 K0 ["mappedJoint"]
        4 LOADB                            R3 1
        5 GETTABLEKS                       R4 R0 K1 ["armedRigLabel"]
        7 GETTABLEKS                       R5 R0 K2 ["jointLabel"]
        9 JUMPIFEQ                         R4 R5 ; [+15]
       11 LOADB                            R3 0
       12 JUMPIFEQKNIL                     R2 ; [+12]
       14 LOADB                            R3 0
       15 GETTABLEKS                       R4 R0 K3 ["selectedJoint"]
       17 JUMPIFEQKNIL                     R4 ; [+7]
       19 GETTABLEKS                       R4 R0 K3 ["selectedJoint"]
       21 JUMPIFEQ                         R4 R2 ; [+2]
       23 LOADB                            R3 0 +1
       24 LOADB                            R3 1
       25 LOADB                            R4 0
       26 JUMPIFEQKNIL                     R2 ; [+14]
       28 LOADB                            R4 0
       29 GETTABLEKS                       R5 R0 K4 ["counterpartHoveredJointName"]
       31 JUMPIFEQKNIL                     R5 ; [+9]
       33 GETTABLEKS                       R5 R2 K5 ["Name"]
       35 GETTABLEKS                       R6 R0 K4 ["counterpartHoveredJointName"]
       37 JUMPIFEQ                         R5 R6 ; [+2]
       39 LOADB                            R4 0 +1
       40 LOADB                            R4 1
       41 GETUPVAL                         R5 1
       42 GETTABLEKS                       R5 R5 K6 ["useState"]
       44 LOADB                            R6 0
       45 CALL                             R5 1 2
       46 OR                               R7 R4 R5
       47 JUMPIFNOT                        R3 ; [+9]
       48 GETTABLEKS                       R8 R1 K7 ["Color"]
       50 GETTABLEKS                       R8 R8 K8 ["Extended"]
       52 GETTABLEKS                       R8 R8 K9 ["Blue"]
       54 GETTABLEKS                       R8 R8 K10 ["Blue_600"]
       56 JUMP                             ; [+40]
       57 JUMPIFNOT                        R7 ; [+20]
       58 JUMPIFEQKNIL                     R2 ; [+10]
       60 GETTABLEKS                       R8 R1 K7 ["Color"]
       62 GETTABLEKS                       R8 R8 K8 ["Extended"]
       64 GETTABLEKS                       R8 R8 K11 ["Orange"]
       66 GETTABLEKS                       R8 R8 K12 ["Orange_600"]
       68 JUMP                             ; [+28]
       69 GETTABLEKS                       R8 R1 K7 ["Color"]
       71 GETTABLEKS                       R8 R8 K8 ["Extended"]
       73 GETTABLEKS                       R8 R8 K13 ["Gray"]
       75 GETTABLEKS                       R8 R8 K14 ["Gray_500"]
       77 JUMP                             ; [+19]
       78 JUMPIFEQKNIL                     R2 ; [+10]
       80 GETTABLEKS                       R8 R1 K7 ["Color"]
       82 GETTABLEKS                       R8 R8 K8 ["Extended"]
       84 GETTABLEKS                       R8 R8 K11 ["Orange"]
       86 GETTABLEKS                       R8 R8 K15 ["Orange_800"]
       88 JUMP                             ; [+8]
       89 GETTABLEKS                       R8 R1 K7 ["Color"]
       91 GETTABLEKS                       R8 R8 K8 ["Extended"]
       93 GETTABLEKS                       R8 R8 K13 ["Gray"]
       95 GETTABLEKS                       R8 R8 K16 ["Gray_600"]
       97 GETIMPORT                        R9 K19 [table.clone]
       99 MOVE                             R10 R8
      100 CALL                             R9 1 1
      101 LOADK                            R10 K20 [0.3]
      102 SETTABLEKS                       R10 R9 K21 ["Transparency"]
      104 JUMPIF                           R3 ; [+12]
      105 JUMPIF                           R7 ; [+11]
      106 JUMPIFNOTEQKNIL                  R2 ; [+10]
      108 GETTABLEKS                       R10 R1 K7 ["Color"]
      110 GETTABLEKS                       R10 R10 K8 ["Extended"]
      112 GETTABLEKS                       R10 R10 K13 ["Gray"]
      114 GETTABLEKS                       R10 R10 K14 ["Gray_500"]
      116 JUMP                             ; [+1]
      117 MOVE                             R10 R9
      118 GETUPVAL                         R11 1
      119 GETTABLEKS                       R11 R11 K22 ["useCallback"]
      121 NEWCLOSURE                       R12 P0
      122 CAPTURE                          VAL R0
      123 NEWTABLE                         R13 0 5
      125 GETTABLEKS                       R14 R0 K2 ["jointLabel"]
      127 GETTABLEKS                       R15 R0 K3 ["selectedJoint"]
      129 GETTABLEKS                       R16 R0 K1 ["armedRigLabel"]
      131 GETTABLEKS                       R17 R0 K23 ["onMapJoint"]
      133 GETTABLEKS                       R18 R0 K24 ["onArmJoint"]
      135 SETLIST                          R13 R14 5 [1]
      137 CALL                             R11 2 1
      138 GETUPVAL                         R12 1
      139 GETTABLEKS                       R12 R12 K25 ["createElement"]
      141 GETUPVAL                         R13 2
      142 GETTABLEKS                       R13 R13 K26 ["View"]
      144 DUPTABLE                         R14 K32 [{"tag", "Position", "onActivated", "onStateChanged", "stateLayer"}]
      145 LOADK                            R15 K33 ["auto-xy anchor-center-center"]
      146 SETTABLEKS                       R15 R14 K27 ["tag"]
      148 GETIMPORT                        R15 K36 [UDim2.fromScale]
      150 GETTABLEKS                       R17 R0 K38 ["position"]
      152 GETTABLEKS                       R17 R17 K39 ["X"]
      154 DIVK                             R16 R17 K37 [676]
      155 GETTABLEKS                       R18 R0 K38 ["position"]
      157 GETTABLEKS                       R18 R18 K41 ["Y"]
      159 DIVK                             R17 R18 K40 [720]
      160 CALL                             R15 2 1
      161 SETTABLEKS                       R15 R14 K28 ["Position"]
      163 SETTABLEKS                       R11 R14 K29 ["onActivated"]
      165 GETUPVAL                         R15 1
      166 GETTABLEKS                       R15 R15 K22 ["useCallback"]
      168 NEWCLOSURE                       R16 P1
      169 CAPTURE                          VAL R6
      170 CAPTURE                          VAL R2
      171 CAPTURE                          VAL R0
      172 NEWTABLE                         R17 0 3
      174 MOVE                             R18 R2
      175 GETTABLEKS                       R19 R0 K42 ["onDotHoverEnter"]
      177 GETTABLEKS                       R20 R0 K43 ["onDotHoverLeave"]
      179 SETLIST                          R17 R18 3 [1]
      181 CALL                             R15 2 1
      182 SETTABLEKS                       R15 R14 K30 ["onStateChanged"]
      184 DUPTABLE                         R15 K45 [{"affordance"}]
      185 GETUPVAL                         R16 2
      186 GETTABLEKS                       R16 R16 K46 ["Enums"]
      188 GETTABLEKS                       R16 R16 K47 ["StateLayerAffordance"]
      190 GETTABLEKS                       R16 R16 K48 ["None"]
      192 SETTABLEKS                       R16 R15 K44 ["affordance"]
      194 SETTABLEKS                       R15 R14 K31 ["stateLayer"]
      196 DUPTABLE                         R15 K50 [{"Tooltip"}]
      197 GETUPVAL                         R16 1
      198 GETTABLEKS                       R16 R16 K25 ["createElement"]
      200 GETUPVAL                         R17 2
      201 GETTABLEKS                       R17 R17 K49 ["Tooltip"]
      203 DUPTABLE                         R18 K54 [{"title", "align", "side"}]
      204 GETTABLEKS                       R19 R0 K2 ["jointLabel"]
      206 GETTABLEKS                       R19 R19 K5 ["Name"]
      208 SETTABLEKS                       R19 R18 K51 ["title"]
      210 GETUPVAL                         R19 2
      211 GETTABLEKS                       R19 R19 K46 ["Enums"]
      213 GETTABLEKS                       R19 R19 K55 ["PopoverAlign"]
      215 GETTABLEKS                       R19 R19 K56 ["Center"]
      217 SETTABLEKS                       R19 R18 K52 ["align"]
      219 GETUPVAL                         R19 2
      220 GETTABLEKS                       R19 R19 K46 ["Enums"]
      222 GETTABLEKS                       R19 R19 K57 ["PopoverSide"]
      224 GETTABLEKS                       R19 R19 K58 ["Top"]
      226 SETTABLEKS                       R19 R18 K53 ["side"]
      228 GETUPVAL                         R19 1
      229 GETTABLEKS                       R19 R19 K25 ["createElement"]
      231 GETUPVAL                         R20 2
      232 GETTABLEKS                       R20 R20 K26 ["View"]
      234 DUPTABLE                         R21 K62 [{"Size", "backgroundStyle", "stroke"}]
      235 JUMPIFNOT                        R7 ; [+8]
      236 GETIMPORT                        R22 K64 [UDim2.new]
      238 LOADN                            R23 0
      239 LOADN                            R24 14
      240 LOADN                            R25 0
      241 LOADN                            R26 14
      242 CALL                             R22 4 1
      243 JUMP                             ; [+7]
      244 GETIMPORT                        R22 K64 [UDim2.new]
      246 LOADN                            R23 0
      247 LOADN                            R24 10
      248 LOADN                            R25 0
      249 LOADN                            R26 10
      250 CALL                             R22 4 1
      251 SETTABLEKS                       R22 R21 K59 ["Size"]
      253 SETTABLEKS                       R10 R21 K60 ["backgroundStyle"]
      255 DUPTABLE                         R22 K66 [{"Color", "Thickness"}]
      256 GETTABLEKS                       R23 R9 K67 ["Color3"]
      258 SETTABLEKS                       R23 R22 K7 ["Color"]
      260 JUMPIFNOT                        R7 ; [+2]
      261 LOADN                            R23 2
      262 JUMP                             ; [+1]
      263 LOADN                            R23 1
      264 SETTABLEKS                       R23 R22 K65 ["Thickness"]
      266 SETTABLEKS                       R22 R21 K61 ["stroke"]
      268 DUPTABLE                         R22 K69 [{"UICorner"}]
      269 GETUPVAL                         R23 1
      270 GETTABLEKS                       R23 R23 K25 ["createElement"]
      272 LOADK                            R24 K68 ["UICorner"]
      273 DUPTABLE                         R25 K71 [{"CornerRadius"}]
      274 GETIMPORT                        R26 K73 [UDim.new]
      276 LOADN                            R27 0
      277 LOADN                            R28 15
      278 CALL                             R26 2 1
      279 SETTABLEKS                       R26 R25 K70 ["CornerRadius"]
      281 CALL                             R23 2 1
      282 SETTABLEKS                       R23 R22 K68 ["UICorner"]
      284 CALL                             R19 3 -1
      285 CALL                             R16 -1 1
      286 SETTABLEKS                       R16 R15 K49 ["Tooltip"]
      288 CALL                             R12 3 -1
      289 RETURN                           R12 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onClear"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 SETTABLE                         R4 R0 R5
        7 FORGLOOP                         R1 2 ; [-2]
        9 RETURN                           R0 1

PROTO_5:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETUPVAL                         R7 1
        7 GETTABLEKS                       R8 R5 K0 ["Name"]
        9 GETTABLE                         R6 R7 R8
       10 JUMPIFNOT                        R6 ; [+64]
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
       29 DUPTABLE                         R11 K18 [{"jointLabel", "position", "selectedJoint", "mappedJoint", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
       30 SETTABLEKS                       R5 R11 K8 ["jointLabel"]
       32 SETTABLEKS                       R7 R11 K9 ["position"]
       34 GETUPVAL                         R12 5
       35 GETTABLEKS                       R12 R12 K10 ["selectedJoint"]
       37 SETTABLEKS                       R12 R11 K10 ["selectedJoint"]
       39 GETUPVAL                         R13 6
       40 GETTABLE                         R12 R13 R5
       41 SETTABLEKS                       R12 R11 K11 ["mappedJoint"]
       43 GETUPVAL                         R12 5
       44 GETTABLEKS                       R12 R12 K12 ["armedRigLabel"]
       46 SETTABLEKS                       R12 R11 K12 ["armedRigLabel"]
       48 GETUPVAL                         R12 5
       49 GETTABLEKS                       R12 R12 K13 ["onArmJoint"]
       51 SETTABLEKS                       R12 R11 K13 ["onArmJoint"]
       53 GETUPVAL                         R12 5
       54 GETTABLEKS                       R12 R12 K14 ["onMapJoint"]
       56 SETTABLEKS                       R12 R11 K14 ["onMapJoint"]
       58 GETUPVAL                         R12 5
       59 GETTABLEKS                       R12 R12 K15 ["counterpartHoveredJointName"]
       61 SETTABLEKS                       R12 R11 K15 ["counterpartHoveredJointName"]
       63 GETUPVAL                         R12 5
       64 GETTABLEKS                       R12 R12 K16 ["onDotHoverEnter"]
       66 SETTABLEKS                       R12 R11 K16 ["onDotHoverEnter"]
       68 GETUPVAL                         R12 5
       69 GETTABLEKS                       R12 R12 K17 ["onDotHoverLeave"]
       71 SETTABLEKS                       R12 R11 K17 ["onDotHoverLeave"]
       73 CALL                             R9 2 1
       74 SETTABLE                         R9 R0 R8
       75 FORGLOOP                         R1 2 ; [-70]
       77 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useCallback"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 1
        7 GETTABLEKS                       R4 R0 K1 ["onClear"]
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R3 R0 K2 ["rigDescriptor"]
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K3 ["handRigLabels"]
       18 CALL                             R2 2 1
       19 GETTABLEKS                       R2 R2 K4 ["labelMap"]
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K5 ["useMemo"]
       24 NEWCLOSURE                       R4 P1
       25 CAPTURE                          VAL R2
       26 NEWTABLE                         R5 0 1
       28 MOVE                             R6 R2
       29 SETLIST                          R5 R6 1 [1]
       31 CALL                             R3 2 1
       32 GETTABLEKS                       R5 R0 K6 ["descriptorKind"]
       34 JUMPIFEQKS                       R5 K7 ["rightHand"] ; [+2]
       36 LOADB                            R4 0 +1
       37 LOADB                            R4 1
       38 GETUPVAL                         R5 2
       39 GETTABLEKS                       R5 R5 K3 ["handRigLabels"]
       41 GETUPVAL                         R6 0
       42 GETTABLEKS                       R6 R6 K5 ["useMemo"]
       44 NEWCLOSURE                       R7 P2
       45 CAPTURE                          VAL R5
       46 CAPTURE                          UPVAL U3
       47 CAPTURE                          VAL R4
       48 CAPTURE                          UPVAL U0
       49 CAPTURE                          UPVAL U4
       50 CAPTURE                          VAL R0
       51 CAPTURE                          VAL R3
       52 NEWTABLE                         R8 0 9
       54 MOVE                             R9 R4
       55 GETTABLEKS                       R10 R0 K8 ["selectedJoint"]
       57 MOVE                             R11 R3
       58 GETTABLEKS                       R12 R0 K9 ["armedRigLabel"]
       60 GETTABLEKS                       R13 R0 K10 ["onArmJoint"]
       62 GETTABLEKS                       R14 R0 K11 ["onMapJoint"]
       64 GETTABLEKS                       R15 R0 K12 ["counterpartHoveredJointName"]
       66 GETTABLEKS                       R16 R0 K13 ["onDotHoverEnter"]
       68 GETTABLEKS                       R17 R0 K14 ["onDotHoverLeave"]
       70 SETLIST                          R8 R9 9 [1]
       72 CALL                             R6 2 1
       73 GETTABLEKS                       R8 R0 K6 ["descriptorKind"]
       75 JUMPIFNOTEQKS                    R8 K15 ["leftHand"] ; [+3]
       77 LOADK                            R7 K16 ["Left Hand"]
       78 JUMP                             ; [+7]
       79 GETTABLEKS                       R8 R0 K6 ["descriptorKind"]
       81 JUMPIFNOTEQKS                    R8 K7 ["rightHand"] ; [+3]
       83 LOADK                            R7 K17 ["Right Hand"]
       84 JUMP                             ; [+1]
       85 LOADK                            R7 K18 ["Hand"]
       86 GETUPVAL                         R8 0
       87 GETTABLEKS                       R8 R8 K19 ["createElement"]
       89 GETUPVAL                         R9 5
       90 DUPTABLE                         R10 K24 [{"title", "onClose", "breadcrumb", "content"}]
       91 GETTABLEKS                       R11 R0 K25 ["localization"]
       93 LOADK                            R13 K26 ["Mannequin"]
       94 LOADK                            R14 K27 ["Title"]
       95 NAMECALL                         R11 R11 K28 ["getText"]
       97 CALL                             R11 3 1
       98 SETTABLEKS                       R11 R10 K20 ["title"]
      100 GETTABLEKS                       R11 R0 K21 ["onClose"]
      102 SETTABLEKS                       R11 R10 K21 ["onClose"]
      104 DUPTABLE                         R11 K34 [{"Layout", "Padding", "BodyLabel", "Separator", "SideLabel"}]
      105 GETUPVAL                         R12 0
      106 GETTABLEKS                       R12 R12 K19 ["createElement"]
      108 LOADK                            R13 K35 ["UIListLayout"]
      109 DUPTABLE                         R14 K38 [{"FillDirection", "VerticalAlignment", "Padding"}]
      110 GETIMPORT                        R15 K41 [Enum.FillDirection.Horizontal]
      112 SETTABLEKS                       R15 R14 K36 ["FillDirection"]
      114 GETIMPORT                        R15 K43 [Enum.VerticalAlignment.Center]
      116 SETTABLEKS                       R15 R14 K37 ["VerticalAlignment"]
      118 GETIMPORT                        R15 K46 [UDim.new]
      120 LOADN                            R16 0
      121 LOADN                            R17 4
      122 CALL                             R15 2 1
      123 SETTABLEKS                       R15 R14 K30 ["Padding"]
      125 CALL                             R12 2 1
      126 SETTABLEKS                       R12 R11 K29 ["Layout"]
      128 GETUPVAL                         R12 0
      129 GETTABLEKS                       R12 R12 K19 ["createElement"]
      131 LOADK                            R13 K47 ["UIPadding"]
      132 DUPTABLE                         R14 K50 [{"PaddingLeft", "PaddingRight"}]
      133 GETIMPORT                        R15 K46 [UDim.new]
      135 LOADN                            R16 0
      136 LOADN                            R17 8
      137 CALL                             R15 2 1
      138 SETTABLEKS                       R15 R14 K48 ["PaddingLeft"]
      140 GETIMPORT                        R15 K46 [UDim.new]
      142 LOADN                            R16 0
      143 LOADN                            R17 4
      144 CALL                             R15 2 1
      145 SETTABLEKS                       R15 R14 K49 ["PaddingRight"]
      147 CALL                             R12 2 1
      148 SETTABLEKS                       R12 R11 K30 ["Padding"]
      150 GETUPVAL                         R12 0
      151 GETTABLEKS                       R12 R12 K19 ["createElement"]
      153 GETUPVAL                         R13 6
      154 GETTABLEKS                       R13 R13 K51 ["View"]
      156 DUPTABLE                         R14 K56 [{"tag", "LayoutOrder", "onActivated", "stateLayer"}]
      157 LOADK                            R15 K57 ["auto-xy"]
      158 SETTABLEKS                       R15 R14 K52 ["tag"]
      160 LOADN                            R15 1
      161 SETTABLEKS                       R15 R14 K53 ["LayoutOrder"]
      163 GETTABLEKS                       R15 R0 K58 ["onNavigateToBody"]
      165 SETTABLEKS                       R15 R14 K54 ["onActivated"]
      167 DUPTABLE                         R15 K60 [{"affordance"}]
      168 GETUPVAL                         R16 6
      169 GETTABLEKS                       R16 R16 K61 ["Enums"]
      171 GETTABLEKS                       R16 R16 K62 ["StateLayerAffordance"]
      173 GETTABLEKS                       R16 R16 K63 ["None"]
      175 SETTABLEKS                       R16 R15 K59 ["affordance"]
      177 SETTABLEKS                       R15 R14 K55 ["stateLayer"]
      179 DUPTABLE                         R15 K65 [{"Text"}]
      180 GETUPVAL                         R16 0
      181 GETTABLEKS                       R16 R16 K19 ["createElement"]
      183 GETUPVAL                         R17 6
      184 GETTABLEKS                       R17 R17 K64 ["Text"]
      186 DUPTABLE                         R18 K66 [{"tag", "Text"}]
      187 LOADK                            R19 K67 ["text-caption-small auto-xy content-muted"]
      188 SETTABLEKS                       R19 R18 K52 ["tag"]
      190 LOADK                            R19 K68 ["Body"]
      191 SETTABLEKS                       R19 R18 K64 ["Text"]
      193 CALL                             R16 2 1
      194 SETTABLEKS                       R16 R15 K64 ["Text"]
      196 CALL                             R12 3 1
      197 SETTABLEKS                       R12 R11 K31 ["BodyLabel"]
      199 GETUPVAL                         R12 0
      200 GETTABLEKS                       R12 R12 K19 ["createElement"]
      202 GETUPVAL                         R13 6
      203 GETTABLEKS                       R13 R13 K64 ["Text"]
      205 DUPTABLE                         R14 K69 [{"tag", "Text", "LayoutOrder"}]
      206 LOADK                            R15 K67 ["text-caption-small auto-xy content-muted"]
      207 SETTABLEKS                       R15 R14 K52 ["tag"]
      209 LOADK                            R15 K70 ["/"]
      210 SETTABLEKS                       R15 R14 K64 ["Text"]
      212 LOADN                            R15 2
      213 SETTABLEKS                       R15 R14 K53 ["LayoutOrder"]
      215 CALL                             R12 2 1
      216 SETTABLEKS                       R12 R11 K32 ["Separator"]
      218 GETUPVAL                         R12 0
      219 GETTABLEKS                       R12 R12 K19 ["createElement"]
      221 GETUPVAL                         R13 6
      222 GETTABLEKS                       R13 R13 K64 ["Text"]
      224 DUPTABLE                         R14 K69 [{"tag", "Text", "LayoutOrder"}]
      225 LOADK                            R15 K71 ["text-caption-small auto-xy"]
      226 SETTABLEKS                       R15 R14 K52 ["tag"]
      228 SETTABLEKS                       R7 R14 K64 ["Text"]
      230 LOADN                            R15 3
      231 SETTABLEKS                       R15 R14 K53 ["LayoutOrder"]
      233 CALL                             R12 2 1
      234 SETTABLEKS                       R12 R11 K33 ["SideLabel"]
      236 SETTABLEKS                       R11 R10 K22 ["breadcrumb"]
      238 DUPTABLE                         R11 K73 [{"Inner"}]
      239 GETUPVAL                         R12 0
      240 GETTABLEKS                       R12 R12 K19 ["createElement"]
      242 GETUPVAL                         R13 6
      243 GETTABLEKS                       R13 R13 K74 ["Image"]
      245 DUPTABLE                         R14 K79 [{"Image", "aspectRatio", "Position", "AnchorPoint", "Size", "onActivated", "stateLayer"}]
      246 JUMPIFNOT                        R4 ; [+4]
      247 GETUPVAL                         R15 7
      248 GETTABLEKS                       R15 R15 K80 ["HAND_R"]
      250 JUMP                             ; [+3]
      251 GETUPVAL                         R15 7
      252 GETTABLEKS                       R15 R15 K81 ["HAND"]
      254 SETTABLEKS                       R15 R14 K74 ["Image"]
      256 DUPTABLE                         R15 K84 [{"AspectRatio", "DominantAxis"}]
      257 LOADK                            R16 K85 [0.938888888888889]
      258 SETTABLEKS                       R16 R15 K82 ["AspectRatio"]
      260 GETIMPORT                        R16 K87 [Enum.DominantAxis.Width]
      262 SETTABLEKS                       R16 R15 K83 ["DominantAxis"]
      264 SETTABLEKS                       R15 R14 K75 ["aspectRatio"]
      266 GETIMPORT                        R15 K90 [UDim2.fromScale]
      268 LOADK                            R16 K91 [0.5]
      269 LOADK                            R17 K91 [0.5]
      270 CALL                             R15 2 1
      271 SETTABLEKS                       R15 R14 K76 ["Position"]
      273 GETIMPORT                        R15 K93 [Vector2.new]
      275 LOADK                            R16 K91 [0.5]
      276 LOADK                            R17 K91 [0.5]
      277 CALL                             R15 2 1
      278 SETTABLEKS                       R15 R14 K77 ["AnchorPoint"]
      280 GETIMPORT                        R15 K94 [UDim2.new]
      282 LOADN                            R16 1
      283 LOADN                            R17 0
      284 LOADN                            R18 1
      285 LOADN                            R19 0
      286 CALL                             R15 4 1
      287 SETTABLEKS                       R15 R14 K78 ["Size"]
      289 SETTABLEKS                       R1 R14 K54 ["onActivated"]
      291 DUPTABLE                         R15 K60 [{"affordance"}]
      292 GETUPVAL                         R16 6
      293 GETTABLEKS                       R16 R16 K61 ["Enums"]
      295 GETTABLEKS                       R16 R16 K62 ["StateLayerAffordance"]
      297 GETTABLEKS                       R16 R16 K63 ["None"]
      299 SETTABLEKS                       R16 R15 K59 ["affordance"]
      301 SETTABLEKS                       R15 R14 K55 ["stateLayer"]
      303 DUPTABLE                         R15 K96 [{"Dots"}]
      304 GETUPVAL                         R16 0
      305 GETTABLEKS                       R16 R16 K19 ["createElement"]
      307 GETUPVAL                         R17 6
      308 GETTABLEKS                       R17 R17 K51 ["View"]
      310 DUPTABLE                         R18 K97 [{"tag"}]
      311 LOADK                            R19 K98 ["size-full"]
      312 SETTABLEKS                       R19 R18 K52 ["tag"]
      314 MOVE                             R19 R6
      315 CALL                             R16 3 1
      316 SETTABLEKS                       R16 R15 K95 ["Dots"]
      318 CALL                             R12 3 1
      319 SETTABLEKS                       R12 R11 K72 ["Inner"]
      321 SETTABLEKS                       R11 R10 K23 ["content"]
      323 CALL                             R8 2 -1
      324 RETURN                           R8 -1

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
       57 GETIMPORT                        R8 K5 [require]
       59 GETTABLEKS                       R9 R0 K6 ["Src"]
       61 GETTABLEKS                       R9 R9 K11 ["Components"]
       63 GETTABLEKS                       R9 R9 K14 ["Hooks"]
       65 GETTABLEKS                       R9 R9 K18 ["useMappedInstances"]
       67 CALL                             R8 1 1
       68 DUPTABLE                         R9 K34 [{"Thumb1", "Thumb2", "Thumb3", "Index1", "Index2", "Index3", "Middle1", "Middle2", "Middle3", "Ring1", "Ring2", "Ring3", "Pinky1", "Pinky2", "Pinky3"}]
       69 GETIMPORT                        R10 K37 [Vector2.new]
       71 LOADN                            R11 202
       72 LOADN                            R12 24
       73 CALL                             R10 2 1
       74 SETTABLEKS                       R10 R9 K19 ["Thumb1"]
       76 GETIMPORT                        R10 K37 [Vector2.new]
       78 LOADN                            R11 162
       79 LOADN                            R12 74
       80 CALL                             R10 2 1
       81 SETTABLEKS                       R10 R9 K20 ["Thumb2"]
       83 GETIMPORT                        R10 K37 [Vector2.new]
       85 LOADN                            R11 117
       86 LOADN                            R12 126
       87 CALL                             R10 2 1
       88 SETTABLEKS                       R10 R9 K21 ["Thumb3"]
       90 GETIMPORT                        R10 K37 [Vector2.new]
       92 LOADN                            R11 15
       93 LOADN                            R12 128
       94 CALL                             R10 2 1
       95 SETTABLEKS                       R10 R9 K22 ["Index1"]
       97 GETIMPORT                        R10 K37 [Vector2.new]
       99 LOADN                            R11 12
      100 LOADN                            R12 232
      101 CALL                             R10 2 1
      102 SETTABLEKS                       R10 R9 K23 ["Index2"]
      104 GETIMPORT                        R10 K37 [Vector2.new]
      106 LOADN                            R11 12
      107 LOADN                            R12 82
      108 CALL                             R10 2 1
      109 SETTABLEKS                       R10 R9 K24 ["Index3"]
      111 GETIMPORT                        R10 K37 [Vector2.new]
      113 LOADN                            R11 82
      114 LOADN                            R12 138
      115 CALL                             R10 2 1
      116 SETTABLEKS                       R10 R9 K25 ["Middle1"]
      118 GETIMPORT                        R10 K37 [Vector2.new]
      120 LOADN                            R11 80
      121 LOADN                            R12 255
      122 CALL                             R10 2 1
      123 SETTABLEKS                       R10 R9 K26 ["Middle2"]
      125 GETIMPORT                        R10 K37 [Vector2.new]
      127 LOADN                            R11 75
      128 LOADN                            R12 121
      129 CALL                             R10 2 1
      130 SETTABLEKS                       R10 R9 K27 ["Middle3"]
      132 GETIMPORT                        R10 K37 [Vector2.new]
      134 LOADN                            R11 145
      135 LOADN                            R12 131
      136 CALL                             R10 2 1
      137 SETTABLEKS                       R10 R9 K28 ["Ring1"]
      139 GETIMPORT                        R10 K37 [Vector2.new]
      141 LOADN                            R11 148
      142 LOADN                            R12 9
      143 CALL                             R10 2 1
      144 SETTABLEKS                       R10 R9 K29 ["Ring2"]
      146 GETIMPORT                        R10 K37 [Vector2.new]
      148 LOADN                            R11 142
      149 LOADN                            R12 80
      150 CALL                             R10 2 1
      151 SETTABLEKS                       R10 R9 K30 ["Ring3"]
      153 GETIMPORT                        R10 K37 [Vector2.new]
      155 LOADN                            R11 204
      156 LOADN                            R12 113
      157 CALL                             R10 2 1
      158 SETTABLEKS                       R10 R9 K31 ["Pinky1"]
      160 GETIMPORT                        R10 K37 [Vector2.new]
      162 LOADN                            R11 203
      163 LOADN                            R12 202
      164 CALL                             R10 2 1
      165 SETTABLEKS                       R10 R9 K32 ["Pinky2"]
      167 GETIMPORT                        R10 K37 [Vector2.new]
      169 LOADN                            R11 200
      170 LOADN                            R12 2
      171 CALL                             R10 2 1
      172 SETTABLEKS                       R10 R9 K33 ["Pinky3"]
      174 DUPCLOSURE                       R10 K38 [PROTO_2]
      175 CAPTURE                          VAL R5
      176 CAPTURE                          VAL R4
      177 CAPTURE                          VAL R2
      178 DUPCLOSURE                       R11 K39 [PROTO_6]
      179 CAPTURE                          VAL R4
      180 CAPTURE                          VAL R8
      181 CAPTURE                          VAL R7
      182 CAPTURE                          VAL R9
      183 CAPTURE                          VAL R10
      184 CAPTURE                          VAL R3
      185 CAPTURE                          VAL R2
      186 CAPTURE                          VAL R1
      187 RETURN                           R11 1
