PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["TypedInstanceSignals"]
        3 GETTABLEKS                       R1 R2 K1 ["properties"]
        5 GETTABLEKS                       R0 R1 K2 ["observeInstance"]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K3 ["rigDescriptor"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K4 ["jointLabel"]
       13 GETTABLEKS                       R2 R3 K5 ["Name"]
       15 CALL                             R0 2 -1
       16 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["selectedJoint"]
        3 JUMPIFEQKNIL                     R0 ; [+15]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K1 ["armedRigLabel"]
        8 JUMPIFNOTEQKNIL                  R1 ; [+10]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K2 ["onMapJoint"]
       13 MOVE                             R2 R0
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K3 ["jointLabel"]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R1 R2 K4 ["onArmJoint"]
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R2 R3 K3 ["jointLabel"]
       25 CALL                             R1 1 0
       26 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOTEQKS                    R0 K0 ["Hover"] ; [+18]
        2 GETUPVAL                         R1 0
        3 LOADB                            R2 1
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 JUMPIFNOT                        R1 ; [+25]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R1 R2 K1 ["onDotHoverEnter"]
       10 JUMPIFNOT                        R1 ; [+21]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R1 R2 K1 ["onDotHoverEnter"]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R2 R3 K2 ["Name"]
       17 CALL                             R1 1 0
       18 RETURN                           R0 0
       19 JUMPIFNOTEQKS                    R0 K3 ["Default"] ; [+12]
       21 GETUPVAL                         R1 0
       22 LOADB                            R2 0
       23 CALL                             R1 1 0
       24 GETUPVAL                         R2 2
       25 GETTABLEKS                       R1 R2 K4 ["onDotHoverLeave"]
       27 JUMPIFNOT                        R1 ; [+4]
       28 GETUPVAL                         R2 2
       29 GETTABLEKS                       R1 R2 K4 ["onDotHoverLeave"]
       31 CALL                             R1 0 0
       32 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useMemo"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R0
        8 NEWTABLE                         R4 0 2
       10 GETTABLEKS                       R5 R0 K1 ["rigDescriptor"]
       12 GETTABLEKS                       R6 R0 K2 ["jointLabel"]
       14 SETLIST                          R4 R5 2 [1]
       16 CALL                             R2 2 1
       17 GETUPVAL                         R4 3
       18 GETTABLEKS                       R3 R4 K3 ["useSignalState"]
       20 MOVE                             R4 R2
       21 CALL                             R3 1 1
       22 LOADB                            R4 1
       23 GETTABLEKS                       R5 R0 K4 ["armedRigLabel"]
       25 GETTABLEKS                       R6 R0 K2 ["jointLabel"]
       27 JUMPIFEQ                         R5 R6 ; [+10]
       29 LOADB                            R4 0
       30 JUMPIFEQKNIL                     R3 ; [+7]
       32 GETTABLEKS                       R5 R0 K5 ["selectedJoint"]
       34 JUMPIFEQ                         R5 R3 ; [+2]
       36 LOADB                            R4 0 +1
       37 LOADB                            R4 1
       38 LOADB                            R5 0
       39 JUMPIFEQKNIL                     R3 ; [+14]
       41 LOADB                            R5 0
       42 GETTABLEKS                       R6 R0 K6 ["counterpartHoveredJointName"]
       44 JUMPIFEQKNIL                     R6 ; [+9]
       46 GETTABLEKS                       R6 R3 K7 ["Name"]
       48 GETTABLEKS                       R7 R0 K6 ["counterpartHoveredJointName"]
       50 JUMPIFEQ                         R6 R7 ; [+2]
       52 LOADB                            R5 0 +1
       53 LOADB                            R5 1
       54 GETUPVAL                         R7 1
       55 GETTABLEKS                       R6 R7 K8 ["useState"]
       57 LOADB                            R7 0
       58 CALL                             R6 1 2
       59 OR                               R8 R5 R6
       60 JUMPIFNOT                        R4 ; [+9]
       61 GETTABLEKS                       R12 R1 K9 ["Color"]
       63 GETTABLEKS                       R11 R12 K10 ["Extended"]
       65 GETTABLEKS                       R10 R11 K11 ["Blue"]
       67 GETTABLEKS                       R9 R10 K12 ["Blue_600"]
       69 JUMP                             ; [+40]
       70 JUMPIFNOT                        R8 ; [+20]
       71 JUMPIFEQKNIL                     R3 ; [+10]
       73 GETTABLEKS                       R12 R1 K9 ["Color"]
       75 GETTABLEKS                       R11 R12 K10 ["Extended"]
       77 GETTABLEKS                       R10 R11 K13 ["Orange"]
       79 GETTABLEKS                       R9 R10 K14 ["Orange_600"]
       81 JUMP                             ; [+28]
       82 GETTABLEKS                       R12 R1 K9 ["Color"]
       84 GETTABLEKS                       R11 R12 K10 ["Extended"]
       86 GETTABLEKS                       R10 R11 K15 ["Gray"]
       88 GETTABLEKS                       R9 R10 K16 ["Gray_500"]
       90 JUMP                             ; [+19]
       91 JUMPIFEQKNIL                     R3 ; [+10]
       93 GETTABLEKS                       R12 R1 K9 ["Color"]
       95 GETTABLEKS                       R11 R12 K10 ["Extended"]
       97 GETTABLEKS                       R10 R11 K13 ["Orange"]
       99 GETTABLEKS                       R9 R10 K17 ["Orange_800"]
      101 JUMP                             ; [+8]
      102 GETTABLEKS                       R12 R1 K9 ["Color"]
      104 GETTABLEKS                       R11 R12 K10 ["Extended"]
      106 GETTABLEKS                       R10 R11 K15 ["Gray"]
      108 GETTABLEKS                       R9 R10 K18 ["Gray_600"]
      110 GETIMPORT                        R10 K21 [table.clone]
      112 MOVE                             R11 R9
      113 CALL                             R10 1 1
      114 LOADK                            R11 K22 [0.3]
      115 SETTABLEKS                       R11 R10 K23 ["Transparency"]
      117 GETTABLEKS                       R12 R0 K24 ["optional"]
      119 JUMPIFNOT                        R12 ; [+11]
      120 JUMPIF                           R4 ; [+10]
      121 JUMPIF                           R8 ; [+9]
      122 GETTABLEKS                       R14 R1 K9 ["Color"]
      124 GETTABLEKS                       R13 R14 K10 ["Extended"]
      126 GETTABLEKS                       R12 R13 K15 ["Gray"]
      128 GETTABLEKS                       R11 R12 K16 ["Gray_500"]
      130 JUMP                             ; [+1]
      131 MOVE                             R11 R10
      132 GETUPVAL                         R13 1
      133 GETTABLEKS                       R12 R13 K25 ["useCallback"]
      135 NEWCLOSURE                       R13 P1
      136 CAPTURE                          VAL R0
      137 NEWTABLE                         R14 0 5
      139 GETTABLEKS                       R15 R0 K2 ["jointLabel"]
      141 GETTABLEKS                       R16 R0 K5 ["selectedJoint"]
      143 GETTABLEKS                       R17 R0 K4 ["armedRigLabel"]
      145 GETTABLEKS                       R18 R0 K26 ["onMapJoint"]
      147 GETTABLEKS                       R19 R0 K27 ["onArmJoint"]
      149 SETLIST                          R14 R15 5 [1]
      151 CALL                             R12 2 1
      152 GETUPVAL                         R14 1
      153 GETTABLEKS                       R13 R14 K28 ["createElement"]
      155 GETUPVAL                         R15 4
      156 GETTABLEKS                       R14 R15 K29 ["View"]
      158 DUPTABLE                         R15 K35 [{"tag", "Position", "onActivated", "onStateChanged", "stateLayer"}]
      159 LOADK                            R16 K36 ["auto-xy anchor-center-center"]
      160 SETTABLEKS                       R16 R15 K30 ["tag"]
      162 GETIMPORT                        R16 K39 [UDim2.fromScale]
      164 GETTABLEKS                       R19 R0 K41 ["position"]
      166 GETTABLEKS                       R18 R19 K42 ["X"]
      168 DIVK                             R17 R18 K40 [189]
      169 GETTABLEKS                       R20 R0 K41 ["position"]
      171 GETTABLEKS                       R19 R20 K44 ["Y"]
      173 DIVK                             R18 R19 K43 [383]
      174 CALL                             R16 2 1
      175 SETTABLEKS                       R16 R15 K31 ["Position"]
      177 SETTABLEKS                       R12 R15 K32 ["onActivated"]
      179 GETUPVAL                         R17 1
      180 GETTABLEKS                       R16 R17 K25 ["useCallback"]
      182 NEWCLOSURE                       R17 P2
      183 CAPTURE                          VAL R7
      184 CAPTURE                          VAL R3
      185 CAPTURE                          VAL R0
      186 NEWTABLE                         R18 0 3
      188 MOVE                             R19 R3
      189 GETTABLEKS                       R20 R0 K45 ["onDotHoverEnter"]
      191 GETTABLEKS                       R21 R0 K46 ["onDotHoverLeave"]
      193 SETLIST                          R18 R19 3 [1]
      195 CALL                             R16 2 1
      196 SETTABLEKS                       R16 R15 K33 ["onStateChanged"]
      198 DUPTABLE                         R16 K48 [{"affordance"}]
      199 GETUPVAL                         R20 4
      200 GETTABLEKS                       R19 R20 K49 ["Enums"]
      202 GETTABLEKS                       R18 R19 K50 ["StateLayerAffordance"]
      204 GETTABLEKS                       R17 R18 K51 ["None"]
      206 SETTABLEKS                       R17 R16 K47 ["affordance"]
      208 SETTABLEKS                       R16 R15 K34 ["stateLayer"]
      210 DUPTABLE                         R16 K53 [{"Tooltip"}]
      211 GETUPVAL                         R18 1
      212 GETTABLEKS                       R17 R18 K28 ["createElement"]
      214 GETUPVAL                         R19 4
      215 GETTABLEKS                       R18 R19 K52 ["Tooltip"]
      217 DUPTABLE                         R19 K57 [{"title", "align", "side"}]
      218 GETTABLEKS                       R21 R0 K2 ["jointLabel"]
      220 GETTABLEKS                       R20 R21 K7 ["Name"]
      222 SETTABLEKS                       R20 R19 K54 ["title"]
      224 GETUPVAL                         R23 4
      225 GETTABLEKS                       R22 R23 K49 ["Enums"]
      227 GETTABLEKS                       R21 R22 K58 ["PopoverAlign"]
      229 GETTABLEKS                       R20 R21 K59 ["Center"]
      231 SETTABLEKS                       R20 R19 K55 ["align"]
      233 GETUPVAL                         R23 4
      234 GETTABLEKS                       R22 R23 K49 ["Enums"]
      236 GETTABLEKS                       R21 R22 K60 ["PopoverSide"]
      238 GETTABLEKS                       R20 R21 K61 ["Top"]
      240 SETTABLEKS                       R20 R19 K56 ["side"]
      242 GETUPVAL                         R21 1
      243 GETTABLEKS                       R20 R21 K28 ["createElement"]
      245 GETUPVAL                         R22 4
      246 GETTABLEKS                       R21 R22 K29 ["View"]
      248 DUPTABLE                         R22 K65 [{"Size", "backgroundStyle", "stroke"}]
      249 JUMPIFNOT                        R8 ; [+8]
      250 GETIMPORT                        R23 K67 [UDim2.new]
      252 LOADN                            R24 0
      253 LOADN                            R25 14
      254 LOADN                            R26 0
      255 LOADN                            R27 14
      256 CALL                             R23 4 1
      257 JUMP                             ; [+7]
      258 GETIMPORT                        R23 K67 [UDim2.new]
      260 LOADN                            R24 0
      261 LOADN                            R25 10
      262 LOADN                            R26 0
      263 LOADN                            R27 10
      264 CALL                             R23 4 1
      265 SETTABLEKS                       R23 R22 K62 ["Size"]
      267 SETTABLEKS                       R11 R22 K63 ["backgroundStyle"]
      269 DUPTABLE                         R23 K69 [{"Color", "Thickness"}]
      270 GETTABLEKS                       R24 R10 K70 ["Color3"]
      272 SETTABLEKS                       R24 R23 K9 ["Color"]
      274 JUMPIFNOT                        R8 ; [+2]
      275 LOADN                            R24 2
      276 JUMP                             ; [+1]
      277 LOADN                            R24 1
      278 SETTABLEKS                       R24 R23 K68 ["Thickness"]
      280 SETTABLEKS                       R23 R22 K64 ["stroke"]
      282 DUPTABLE                         R23 K72 [{"UICorner"}]
      283 GETUPVAL                         R25 1
      284 GETTABLEKS                       R24 R25 K28 ["createElement"]
      286 LOADK                            R25 K71 ["UICorner"]
      287 DUPTABLE                         R26 K74 [{"CornerRadius"}]
      288 GETIMPORT                        R27 K76 [UDim.new]
      290 LOADN                            R28 0
      291 LOADN                            R29 15
      292 CALL                             R27 2 1
      293 SETTABLEKS                       R27 R26 K73 ["CornerRadius"]
      295 CALL                             R24 2 1
      296 SETTABLEKS                       R24 R23 K71 ["UICorner"]
      298 CALL                             R20 3 -1
      299 CALL                             R17 -1 1
      300 SETTABLEKS                       R17 R16 K52 ["Tooltip"]
      302 CALL                             R13 3 -1
      303 RETURN                           R13 -1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["TypedInstanceSignals"]
        3 GETTABLEKS                       R1 R2 K1 ["properties"]
        5 GETTABLEKS                       R0 R1 K2 ["observeInstance"]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K3 ["rigDescriptor"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R2 R3 K4 ["Name"]
       13 CALL                             R0 2 -1
       14 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+11]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["onNavigateToHand"]
        5 JUMPIFNOT                        R0 ; [+7]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R0 R1 K0 ["onNavigateToHand"]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K1 ["side"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_6:
        0 JUMPIFNOTEQKS                    R0 K0 ["Hover"] ; [+5]
        2 GETUPVAL                         R1 0
        3 LOADB                            R2 1
        4 CALL                             R1 1 0
        5 RETURN                           R0 0
        6 JUMPIFNOTEQKS                    R0 K1 ["Default"] ; [+4]
        8 GETUPVAL                         R1 0
        9 LOADB                            R2 0
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["onNavigateToHand"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 0
        6 CALL                             R1 0 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K1 ["useState"]
       10 LOADB                            R3 0
       11 CALL                             R2 1 2
       12 GETTABLEKS                       R5 R0 K2 ["side"]
       14 JUMPIFNOTEQKS                    R5 K3 ["right"] ; [+4]
       16 GETIMPORT                        R4 K7 [Enum.RigLabel.RightWrist]
       18 JUMP                             ; [+2]
       19 GETIMPORT                        R4 K9 [Enum.RigLabel.LeftWrist]
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R5 R6 K10 ["useMemo"]
       24 NEWCLOSURE                       R6 P0
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R4
       28 NEWTABLE                         R7 0 2
       30 GETTABLEKS                       R8 R0 K11 ["rigDescriptor"]
       32 MOVE                             R9 R4
       33 SETLIST                          R7 R8 2 [1]
       35 CALL                             R5 2 1
       36 GETUPVAL                         R7 3
       37 GETTABLEKS                       R6 R7 K12 ["useSignalState"]
       39 MOVE                             R7 R5
       40 CALL                             R6 1 1
       41 JUMPIFNOTEQKNIL                  R6 ; [+2]
       43 LOADB                            R7 0 +1
       44 LOADB                            R7 1
       45 JUMPIF                           R7 ; [+9]
       46 GETTABLEKS                       R11 R1 K13 ["Color"]
       48 GETTABLEKS                       R10 R11 K14 ["Extended"]
       50 GETTABLEKS                       R9 R10 K15 ["Gray"]
       52 GETTABLEKS                       R8 R9 K16 ["Gray_600"]
       54 JUMP                             ; [+18]
       55 JUMPIFNOT                        R2 ; [+9]
       56 GETTABLEKS                       R11 R1 K13 ["Color"]
       58 GETTABLEKS                       R10 R11 K14 ["Extended"]
       60 GETTABLEKS                       R9 R10 K17 ["Orange"]
       62 GETTABLEKS                       R8 R9 K18 ["Orange_600"]
       64 JUMP                             ; [+8]
       65 GETTABLEKS                       R11 R1 K13 ["Color"]
       67 GETTABLEKS                       R10 R11 K14 ["Extended"]
       69 GETTABLEKS                       R9 R10 K17 ["Orange"]
       71 GETTABLEKS                       R8 R9 K19 ["Orange_800"]
       73 GETIMPORT                        R9 K22 [table.clone]
       75 MOVE                             R10 R8
       76 CALL                             R9 1 1
       77 LOADK                            R10 K23 [0.3]
       78 SETTABLEKS                       R10 R9 K24 ["Transparency"]
       80 GETUPVAL                         R11 1
       81 GETTABLEKS                       R10 R11 K25 ["useCallback"]
       83 NEWCLOSURE                       R11 P1
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R0
       86 NEWTABLE                         R12 0 3
       88 MOVE                             R13 R7
       89 GETTABLEKS                       R14 R0 K2 ["side"]
       91 GETTABLEKS                       R15 R0 K0 ["onNavigateToHand"]
       93 SETLIST                          R12 R13 3 [1]
       95 CALL                             R10 2 1
       96 GETUPVAL                         R12 1
       97 GETTABLEKS                       R11 R12 K26 ["createElement"]
       99 GETUPVAL                         R13 4
      100 GETTABLEKS                       R12 R13 K27 ["View"]
      102 DUPTABLE                         R13 K33 [{"tag", "Position", "onActivated", "onStateChanged", "stateLayer"}]
      103 LOADK                            R14 K34 ["auto-xy anchor-center-center"]
      104 SETTABLEKS                       R14 R13 K28 ["tag"]
      106 GETIMPORT                        R14 K37 [UDim2.fromScale]
      108 GETTABLEKS                       R17 R0 K39 ["position"]
      110 GETTABLEKS                       R16 R17 K40 ["X"]
      112 DIVK                             R15 R16 K38 [189]
      113 GETTABLEKS                       R18 R0 K39 ["position"]
      115 GETTABLEKS                       R17 R18 K42 ["Y"]
      117 DIVK                             R16 R17 K41 [383]
      118 CALL                             R14 2 1
      119 SETTABLEKS                       R14 R13 K29 ["Position"]
      121 SETTABLEKS                       R10 R13 K30 ["onActivated"]
      123 GETUPVAL                         R15 1
      124 GETTABLEKS                       R14 R15 K25 ["useCallback"]
      126 NEWCLOSURE                       R15 P2
      127 CAPTURE                          VAL R3
      128 NEWTABLE                         R16 0 0
      130 CALL                             R14 2 1
      131 SETTABLEKS                       R14 R13 K31 ["onStateChanged"]
      133 DUPTABLE                         R14 K44 [{"affordance"}]
      134 GETUPVAL                         R18 4
      135 GETTABLEKS                       R17 R18 K45 ["Enums"]
      137 GETTABLEKS                       R16 R17 K46 ["StateLayerAffordance"]
      139 GETTABLEKS                       R15 R16 K47 ["None"]
      141 SETTABLEKS                       R15 R14 K43 ["affordance"]
      143 SETTABLEKS                       R14 R13 K32 ["stateLayer"]
      145 DUPTABLE                         R14 K49 [{"Tooltip"}]
      146 GETUPVAL                         R16 1
      147 GETTABLEKS                       R15 R16 K26 ["createElement"]
      149 GETUPVAL                         R17 4
      150 GETTABLEKS                       R16 R17 K48 ["Tooltip"]
      152 DUPTABLE                         R17 K52 [{"title", "align", "side"}]
      153 GETTABLEKS                       R19 R0 K2 ["side"]
      155 JUMPIFNOTEQKS                    R19 K3 ["right"] ; [+3]
      157 LOADK                            R18 K53 ["Right Hand"]
      158 JUMP                             ; [+1]
      159 LOADK                            R18 K54 ["Left Hand"]
      160 SETTABLEKS                       R18 R17 K50 ["title"]
      162 GETUPVAL                         R21 4
      163 GETTABLEKS                       R20 R21 K45 ["Enums"]
      165 GETTABLEKS                       R19 R20 K55 ["PopoverAlign"]
      167 GETTABLEKS                       R18 R19 K56 ["Center"]
      169 SETTABLEKS                       R18 R17 K51 ["align"]
      171 GETUPVAL                         R21 4
      172 GETTABLEKS                       R20 R21 K45 ["Enums"]
      174 GETTABLEKS                       R19 R20 K57 ["PopoverSide"]
      176 GETTABLEKS                       R18 R19 K58 ["Top"]
      178 SETTABLEKS                       R18 R17 K2 ["side"]
      180 GETUPVAL                         R19 1
      181 GETTABLEKS                       R18 R19 K26 ["createElement"]
      183 GETUPVAL                         R20 4
      184 GETTABLEKS                       R19 R20 K27 ["View"]
      186 DUPTABLE                         R20 K62 [{"Size", "backgroundStyle", "stroke"}]
      187 JUMPIFNOT                        R2 ; [+8]
      188 GETIMPORT                        R21 K64 [UDim2.new]
      190 LOADN                            R22 0
      191 LOADN                            R23 14
      192 LOADN                            R24 0
      193 LOADN                            R25 14
      194 CALL                             R21 4 1
      195 JUMP                             ; [+7]
      196 GETIMPORT                        R21 K64 [UDim2.new]
      198 LOADN                            R22 0
      199 LOADN                            R23 10
      200 LOADN                            R24 0
      201 LOADN                            R25 10
      202 CALL                             R21 4 1
      203 SETTABLEKS                       R21 R20 K59 ["Size"]
      205 SETTABLEKS                       R8 R20 K60 ["backgroundStyle"]
      207 DUPTABLE                         R21 K66 [{"Color", "Thickness"}]
      208 GETTABLEKS                       R22 R9 K67 ["Color3"]
      210 SETTABLEKS                       R22 R21 K13 ["Color"]
      212 JUMPIFNOT                        R2 ; [+2]
      213 LOADN                            R22 2
      214 JUMP                             ; [+1]
      215 LOADN                            R22 1
      216 SETTABLEKS                       R22 R21 K65 ["Thickness"]
      218 SETTABLEKS                       R21 R20 K61 ["stroke"]
      220 DUPTABLE                         R21 K69 [{"UICorner"}]
      221 GETUPVAL                         R23 1
      222 GETTABLEKS                       R22 R23 K26 ["createElement"]
      224 LOADK                            R23 K68 ["UICorner"]
      225 DUPTABLE                         R24 K71 [{"CornerRadius"}]
      226 GETIMPORT                        R25 K73 [UDim.new]
      228 LOADN                            R26 0
      229 LOADN                            R27 15
      230 CALL                             R25 2 1
      231 SETTABLEKS                       R25 R24 K70 ["CornerRadius"]
      233 CALL                             R22 2 1
      234 SETTABLEKS                       R22 R21 K68 ["UICorner"]
      236 CALL                             R18 3 -1
      237 CALL                             R15 -1 1
      238 SETTABLEKS                       R15 R14 K48 ["Tooltip"]
      240 CALL                             R11 3 -1
      241 RETURN                           R11 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onClear"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K0 ["rigDescriptor"]
        7 DUPTABLE                         R1 K25 [{"HeadBase", "Neck", "RightClavicle", "RightShoulder", "RightElbow", "RightWrist", "RightHip", "RightKnee", "RightAnkle", "RightToeBase", "LeftClavicle", "LeftShoulder", "LeftElbow", "LeftWrist", "LeftHip", "LeftKnee", "LeftAnkle", "LeftToeBase", "Chest", "Root", "Waist", "Spine", "RightHandDot", "LeftHandDot"}]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R2 R3 K26 ["createElement"]
       11 GETUPVAL                         R3 3
       12 DUPTABLE                         R4 K37 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
       13 GETIMPORT                        R5 K40 [Enum.RigLabel.HeadBase]
       15 SETTABLEKS                       R5 R4 K27 ["jointLabel"]
       17 GETIMPORT                        R5 K43 [Vector2.new]
       19 LOADN                            R6 96
       20 LOADN                            R7 40
       21 CALL                             R5 2 1
       22 SETTABLEKS                       R5 R4 K28 ["position"]
       24 LOADB                            R5 1
       25 SETTABLEKS                       R5 R4 K29 ["optional"]
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R5 R6 K30 ["selectedJoint"]
       30 SETTABLEKS                       R5 R4 K30 ["selectedJoint"]
       32 SETTABLEKS                       R0 R4 K0 ["rigDescriptor"]
       34 GETUPVAL                         R6 1
       35 GETTABLEKS                       R5 R6 K31 ["armedRigLabel"]
       37 SETTABLEKS                       R5 R4 K31 ["armedRigLabel"]
       39 GETUPVAL                         R6 1
       40 GETTABLEKS                       R5 R6 K32 ["onArmJoint"]
       42 SETTABLEKS                       R5 R4 K32 ["onArmJoint"]
       44 GETUPVAL                         R6 1
       45 GETTABLEKS                       R5 R6 K33 ["onMapJoint"]
       47 SETTABLEKS                       R5 R4 K33 ["onMapJoint"]
       49 GETUPVAL                         R6 1
       50 GETTABLEKS                       R5 R6 K34 ["counterpartHoveredJointName"]
       52 SETTABLEKS                       R5 R4 K34 ["counterpartHoveredJointName"]
       54 GETUPVAL                         R6 1
       55 GETTABLEKS                       R5 R6 K35 ["onDotHoverEnter"]
       57 SETTABLEKS                       R5 R4 K35 ["onDotHoverEnter"]
       59 GETUPVAL                         R6 1
       60 GETTABLEKS                       R5 R6 K36 ["onDotHoverLeave"]
       62 SETTABLEKS                       R5 R4 K36 ["onDotHoverLeave"]
       64 CALL                             R2 2 1
       65 SETTABLEKS                       R2 R1 K1 ["HeadBase"]
       67 GETUPVAL                         R3 2
       68 GETTABLEKS                       R2 R3 K26 ["createElement"]
       70 GETUPVAL                         R3 3
       71 DUPTABLE                         R4 K37 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
       72 GETIMPORT                        R5 K44 [Enum.RigLabel.Neck]
       74 SETTABLEKS                       R5 R4 K27 ["jointLabel"]
       76 GETIMPORT                        R5 K43 [Vector2.new]
       78 LOADN                            R6 96
       79 LOADN                            R7 68
       80 CALL                             R5 2 1
       81 SETTABLEKS                       R5 R4 K28 ["position"]
       83 LOADB                            R5 0
       84 SETTABLEKS                       R5 R4 K29 ["optional"]
       86 GETUPVAL                         R6 1
       87 GETTABLEKS                       R5 R6 K30 ["selectedJoint"]
       89 SETTABLEKS                       R5 R4 K30 ["selectedJoint"]
       91 SETTABLEKS                       R0 R4 K0 ["rigDescriptor"]
       93 GETUPVAL                         R6 1
       94 GETTABLEKS                       R5 R6 K31 ["armedRigLabel"]
       96 SETTABLEKS                       R5 R4 K31 ["armedRigLabel"]
       98 GETUPVAL                         R6 1
       99 GETTABLEKS                       R5 R6 K32 ["onArmJoint"]
      101 SETTABLEKS                       R5 R4 K32 ["onArmJoint"]
      103 GETUPVAL                         R6 1
      104 GETTABLEKS                       R5 R6 K33 ["onMapJoint"]
      106 SETTABLEKS                       R5 R4 K33 ["onMapJoint"]
      108 GETUPVAL                         R6 1
      109 GETTABLEKS                       R5 R6 K34 ["counterpartHoveredJointName"]
      111 SETTABLEKS                       R5 R4 K34 ["counterpartHoveredJointName"]
      113 GETUPVAL                         R6 1
      114 GETTABLEKS                       R5 R6 K35 ["onDotHoverEnter"]
      116 SETTABLEKS                       R5 R4 K35 ["onDotHoverEnter"]
      118 GETUPVAL                         R6 1
      119 GETTABLEKS                       R5 R6 K36 ["onDotHoverLeave"]
      121 SETTABLEKS                       R5 R4 K36 ["onDotHoverLeave"]
      123 CALL                             R2 2 1
      124 SETTABLEKS                       R2 R1 K2 ["Neck"]
      126 GETUPVAL                         R3 2
      127 GETTABLEKS                       R2 R3 K26 ["createElement"]
      129 GETUPVAL                         R3 3
      130 DUPTABLE                         R4 K37 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
      131 GETIMPORT                        R5 K45 [Enum.RigLabel.RightClavicle]
      133 SETTABLEKS                       R5 R4 K27 ["jointLabel"]
      135 GETIMPORT                        R5 K43 [Vector2.new]
      137 LOADN                            R6 82
      138 LOADN                            R7 80
      139 CALL                             R5 2 1
      140 SETTABLEKS                       R5 R4 K28 ["position"]
      142 LOADB                            R5 1
      143 SETTABLEKS                       R5 R4 K29 ["optional"]
      145 GETUPVAL                         R6 1
      146 GETTABLEKS                       R5 R6 K30 ["selectedJoint"]
      148 SETTABLEKS                       R5 R4 K30 ["selectedJoint"]
      150 SETTABLEKS                       R0 R4 K0 ["rigDescriptor"]
      152 GETUPVAL                         R6 1
      153 GETTABLEKS                       R5 R6 K31 ["armedRigLabel"]
      155 SETTABLEKS                       R5 R4 K31 ["armedRigLabel"]
      157 GETUPVAL                         R6 1
      158 GETTABLEKS                       R5 R6 K32 ["onArmJoint"]
      160 SETTABLEKS                       R5 R4 K32 ["onArmJoint"]
      162 GETUPVAL                         R6 1
      163 GETTABLEKS                       R5 R6 K33 ["onMapJoint"]
      165 SETTABLEKS                       R5 R4 K33 ["onMapJoint"]
      167 GETUPVAL                         R6 1
      168 GETTABLEKS                       R5 R6 K34 ["counterpartHoveredJointName"]
      170 SETTABLEKS                       R5 R4 K34 ["counterpartHoveredJointName"]
      172 GETUPVAL                         R6 1
      173 GETTABLEKS                       R5 R6 K35 ["onDotHoverEnter"]
      175 SETTABLEKS                       R5 R4 K35 ["onDotHoverEnter"]
      177 GETUPVAL                         R6 1
      178 GETTABLEKS                       R5 R6 K36 ["onDotHoverLeave"]
      180 SETTABLEKS                       R5 R4 K36 ["onDotHoverLeave"]
      182 CALL                             R2 2 1
      183 SETTABLEKS                       R2 R1 K3 ["RightClavicle"]
      185 GETUPVAL                         R3 2
      186 GETTABLEKS                       R2 R3 K26 ["createElement"]
      188 GETUPVAL                         R3 3
      189 DUPTABLE                         R4 K37 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
      190 GETIMPORT                        R5 K46 [Enum.RigLabel.RightShoulder]
      192 SETTABLEKS                       R5 R4 K27 ["jointLabel"]
      194 GETIMPORT                        R5 K43 [Vector2.new]
      196 LOADN                            R6 58
      197 LOADN                            R7 84
      198 CALL                             R5 2 1
      199 SETTABLEKS                       R5 R4 K28 ["position"]
      201 LOADB                            R5 0
      202 SETTABLEKS                       R5 R4 K29 ["optional"]
      204 GETUPVAL                         R6 1
      205 GETTABLEKS                       R5 R6 K30 ["selectedJoint"]
      207 SETTABLEKS                       R5 R4 K30 ["selectedJoint"]
      209 SETTABLEKS                       R0 R4 K0 ["rigDescriptor"]
      211 GETUPVAL                         R6 1
      212 GETTABLEKS                       R5 R6 K31 ["armedRigLabel"]
      214 SETTABLEKS                       R5 R4 K31 ["armedRigLabel"]
      216 GETUPVAL                         R6 1
      217 GETTABLEKS                       R5 R6 K32 ["onArmJoint"]
      219 SETTABLEKS                       R5 R4 K32 ["onArmJoint"]
      221 GETUPVAL                         R6 1
      222 GETTABLEKS                       R5 R6 K33 ["onMapJoint"]
      224 SETTABLEKS                       R5 R4 K33 ["onMapJoint"]
      226 GETUPVAL                         R6 1
      227 GETTABLEKS                       R5 R6 K34 ["counterpartHoveredJointName"]
      229 SETTABLEKS                       R5 R4 K34 ["counterpartHoveredJointName"]
      231 GETUPVAL                         R6 1
      232 GETTABLEKS                       R5 R6 K35 ["onDotHoverEnter"]
      234 SETTABLEKS                       R5 R4 K35 ["onDotHoverEnter"]
      236 GETUPVAL                         R6 1
      237 GETTABLEKS                       R5 R6 K36 ["onDotHoverLeave"]
      239 SETTABLEKS                       R5 R4 K36 ["onDotHoverLeave"]
      241 CALL                             R2 2 1
      242 SETTABLEKS                       R2 R1 K4 ["RightShoulder"]
      244 GETUPVAL                         R3 2
      245 GETTABLEKS                       R2 R3 K26 ["createElement"]
      247 GETUPVAL                         R3 3
      248 DUPTABLE                         R4 K37 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
      249 GETIMPORT                        R5 K47 [Enum.RigLabel.RightElbow]
      251 SETTABLEKS                       R5 R4 K27 ["jointLabel"]
      253 GETIMPORT                        R5 K43 [Vector2.new]
      255 LOADN                            R6 48
      256 LOADN                            R7 132
      257 CALL                             R5 2 1
      258 SETTABLEKS                       R5 R4 K28 ["position"]
      260 LOADB                            R5 0
      261 SETTABLEKS                       R5 R4 K29 ["optional"]
      263 GETUPVAL                         R6 1
      264 GETTABLEKS                       R5 R6 K30 ["selectedJoint"]
      266 SETTABLEKS                       R5 R4 K30 ["selectedJoint"]
      268 SETTABLEKS                       R0 R4 K0 ["rigDescriptor"]
      270 GETUPVAL                         R6 1
      271 GETTABLEKS                       R5 R6 K31 ["armedRigLabel"]
      273 SETTABLEKS                       R5 R4 K31 ["armedRigLabel"]
      275 GETUPVAL                         R6 1
      276 GETTABLEKS                       R5 R6 K32 ["onArmJoint"]
      278 SETTABLEKS                       R5 R4 K32 ["onArmJoint"]
      280 GETUPVAL                         R6 1
      281 GETTABLEKS                       R5 R6 K33 ["onMapJoint"]
      283 SETTABLEKS                       R5 R4 K33 ["onMapJoint"]
      285 GETUPVAL                         R6 1
      286 GETTABLEKS                       R5 R6 K34 ["counterpartHoveredJointName"]
      288 SETTABLEKS                       R5 R4 K34 ["counterpartHoveredJointName"]
      290 GETUPVAL                         R6 1
      291 GETTABLEKS                       R5 R6 K35 ["onDotHoverEnter"]
      293 SETTABLEKS                       R5 R4 K35 ["onDotHoverEnter"]
      295 GETUPVAL                         R6 1
      296 GETTABLEKS                       R5 R6 K36 ["onDotHoverLeave"]
      298 SETTABLEKS                       R5 R4 K36 ["onDotHoverLeave"]
      300 CALL                             R2 2 1
      301 SETTABLEKS                       R2 R1 K5 ["RightElbow"]
      303 GETUPVAL                         R3 2
      304 GETTABLEKS                       R2 R3 K26 ["createElement"]
      306 GETUPVAL                         R3 3
      307 DUPTABLE                         R4 K37 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
      308 GETIMPORT                        R5 K48 [Enum.RigLabel.RightWrist]
      310 SETTABLEKS                       R5 R4 K27 ["jointLabel"]
      312 GETIMPORT                        R5 K43 [Vector2.new]
      314 LOADN                            R6 36
      315 LOADN                            R7 178
      316 CALL                             R5 2 1
      317 SETTABLEKS                       R5 R4 K28 ["position"]
      319 LOADB                            R5 0
      320 SETTABLEKS                       R5 R4 K29 ["optional"]
      322 GETUPVAL                         R6 1
      323 GETTABLEKS                       R5 R6 K30 ["selectedJoint"]
      325 SETTABLEKS                       R5 R4 K30 ["selectedJoint"]
      327 SETTABLEKS                       R0 R4 K0 ["rigDescriptor"]
      329 GETUPVAL                         R6 1
      330 GETTABLEKS                       R5 R6 K31 ["armedRigLabel"]
      332 SETTABLEKS                       R5 R4 K31 ["armedRigLabel"]
      334 GETUPVAL                         R6 1
      335 GETTABLEKS                       R5 R6 K32 ["onArmJoint"]
      337 SETTABLEKS                       R5 R4 K32 ["onArmJoint"]
      339 GETUPVAL                         R6 1
      340 GETTABLEKS                       R5 R6 K33 ["onMapJoint"]
      342 SETTABLEKS                       R5 R4 K33 ["onMapJoint"]
      344 GETUPVAL                         R6 1
      345 GETTABLEKS                       R5 R6 K34 ["counterpartHoveredJointName"]
      347 SETTABLEKS                       R5 R4 K34 ["counterpartHoveredJointName"]
      349 GETUPVAL                         R6 1
      350 GETTABLEKS                       R5 R6 K35 ["onDotHoverEnter"]
      352 SETTABLEKS                       R5 R4 K35 ["onDotHoverEnter"]
      354 GETUPVAL                         R6 1
      355 GETTABLEKS                       R5 R6 K36 ["onDotHoverLeave"]
      357 SETTABLEKS                       R5 R4 K36 ["onDotHoverLeave"]
      359 CALL                             R2 2 1
      360 SETTABLEKS                       R2 R1 K6 ["RightWrist"]
      362 GETUPVAL                         R3 2
      363 GETTABLEKS                       R2 R3 K26 ["createElement"]
      365 GETUPVAL                         R3 3
      366 DUPTABLE                         R4 K37 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
      367 GETIMPORT                        R5 K49 [Enum.RigLabel.RightHip]
      369 SETTABLEKS                       R5 R4 K27 ["jointLabel"]
      371 GETIMPORT                        R5 K43 [Vector2.new]
      373 LOADN                            R6 74
      374 LOADN                            R7 181
      375 CALL                             R5 2 1
      376 SETTABLEKS                       R5 R4 K28 ["position"]
      378 LOADB                            R5 0
      379 SETTABLEKS                       R5 R4 K29 ["optional"]
      381 GETUPVAL                         R6 1
      382 GETTABLEKS                       R5 R6 K30 ["selectedJoint"]
      384 SETTABLEKS                       R5 R4 K30 ["selectedJoint"]
      386 SETTABLEKS                       R0 R4 K0 ["rigDescriptor"]
      388 GETUPVAL                         R6 1
      389 GETTABLEKS                       R5 R6 K31 ["armedRigLabel"]
      391 SETTABLEKS                       R5 R4 K31 ["armedRigLabel"]
      393 GETUPVAL                         R6 1
      394 GETTABLEKS                       R5 R6 K32 ["onArmJoint"]
      396 SETTABLEKS                       R5 R4 K32 ["onArmJoint"]
      398 GETUPVAL                         R6 1
      399 GETTABLEKS                       R5 R6 K33 ["onMapJoint"]
      401 SETTABLEKS                       R5 R4 K33 ["onMapJoint"]
      403 GETUPVAL                         R6 1
      404 GETTABLEKS                       R5 R6 K34 ["counterpartHoveredJointName"]
      406 SETTABLEKS                       R5 R4 K34 ["counterpartHoveredJointName"]
      408 GETUPVAL                         R6 1
      409 GETTABLEKS                       R5 R6 K35 ["onDotHoverEnter"]
      411 SETTABLEKS                       R5 R4 K35 ["onDotHoverEnter"]
      413 GETUPVAL                         R6 1
      414 GETTABLEKS                       R5 R6 K36 ["onDotHoverLeave"]
      416 SETTABLEKS                       R5 R4 K36 ["onDotHoverLeave"]
      418 CALL                             R2 2 1
      419 SETTABLEKS                       R2 R1 K7 ["RightHip"]
      421 GETUPVAL                         R3 2
      422 GETTABLEKS                       R2 R3 K26 ["createElement"]
      424 GETUPVAL                         R3 3
      425 DUPTABLE                         R4 K37 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
      426 GETIMPORT                        R5 K50 [Enum.RigLabel.RightKnee]
      428 SETTABLEKS                       R5 R4 K27 ["jointLabel"]
      430 GETIMPORT                        R5 K43 [Vector2.new]
      432 LOADN                            R6 68
      433 LOADN                            R7 255
      434 CALL                             R5 2 1
      435 SETTABLEKS                       R5 R4 K28 ["position"]
      437 LOADB                            R5 0
      438 SETTABLEKS                       R5 R4 K29 ["optional"]
      440 GETUPVAL                         R6 1
      441 GETTABLEKS                       R5 R6 K30 ["selectedJoint"]
      443 SETTABLEKS                       R5 R4 K30 ["selectedJoint"]
      445 SETTABLEKS                       R0 R4 K0 ["rigDescriptor"]
      447 GETUPVAL                         R6 1
      448 GETTABLEKS                       R5 R6 K31 ["armedRigLabel"]
      450 SETTABLEKS                       R5 R4 K31 ["armedRigLabel"]
      452 GETUPVAL                         R6 1
      453 GETTABLEKS                       R5 R6 K32 ["onArmJoint"]
      455 SETTABLEKS                       R5 R4 K32 ["onArmJoint"]
      457 GETUPVAL                         R6 1
      458 GETTABLEKS                       R5 R6 K33 ["onMapJoint"]
      460 SETTABLEKS                       R5 R4 K33 ["onMapJoint"]
      462 GETUPVAL                         R6 1
      463 GETTABLEKS                       R5 R6 K34 ["counterpartHoveredJointName"]
      465 SETTABLEKS                       R5 R4 K34 ["counterpartHoveredJointName"]
      467 GETUPVAL                         R6 1
      468 GETTABLEKS                       R5 R6 K35 ["onDotHoverEnter"]
      470 SETTABLEKS                       R5 R4 K35 ["onDotHoverEnter"]
      472 GETUPVAL                         R6 1
      473 GETTABLEKS                       R5 R6 K36 ["onDotHoverLeave"]
      475 SETTABLEKS                       R5 R4 K36 ["onDotHoverLeave"]
      477 CALL                             R2 2 1
      478 SETTABLEKS                       R2 R1 K8 ["RightKnee"]
      480 GETUPVAL                         R3 2
      481 GETTABLEKS                       R2 R3 K26 ["createElement"]
      483 GETUPVAL                         R3 3
      484 DUPTABLE                         R4 K37 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
      485 GETIMPORT                        R5 K51 [Enum.RigLabel.RightAnkle]
      487 SETTABLEKS                       R5 R4 K27 ["jointLabel"]
      489 GETIMPORT                        R5 K43 [Vector2.new]
      491 LOADN                            R6 62
      492 LOADN                            R7 68
      493 CALL                             R5 2 1
      494 SETTABLEKS                       R5 R4 K28 ["position"]
      496 LOADB                            R5 0
      497 SETTABLEKS                       R5 R4 K29 ["optional"]
      499 GETUPVAL                         R6 1
      500 GETTABLEKS                       R5 R6 K30 ["selectedJoint"]
      502 SETTABLEKS                       R5 R4 K30 ["selectedJoint"]
      504 SETTABLEKS                       R0 R4 K0 ["rigDescriptor"]
      506 GETUPVAL                         R6 1
      507 GETTABLEKS                       R5 R6 K31 ["armedRigLabel"]
      509 SETTABLEKS                       R5 R4 K31 ["armedRigLabel"]
      511 GETUPVAL                         R6 1
      512 GETTABLEKS                       R5 R6 K32 ["onArmJoint"]
      514 SETTABLEKS                       R5 R4 K32 ["onArmJoint"]
      516 GETUPVAL                         R6 1
      517 GETTABLEKS                       R5 R6 K33 ["onMapJoint"]
      519 SETTABLEKS                       R5 R4 K33 ["onMapJoint"]
      521 GETUPVAL                         R6 1
      522 GETTABLEKS                       R5 R6 K34 ["counterpartHoveredJointName"]
      524 SETTABLEKS                       R5 R4 K34 ["counterpartHoveredJointName"]
      526 GETUPVAL                         R6 1
      527 GETTABLEKS                       R5 R6 K35 ["onDotHoverEnter"]
      529 SETTABLEKS                       R5 R4 K35 ["onDotHoverEnter"]
      531 GETUPVAL                         R6 1
      532 GETTABLEKS                       R5 R6 K36 ["onDotHoverLeave"]
      534 SETTABLEKS                       R5 R4 K36 ["onDotHoverLeave"]
      536 CALL                             R2 2 1
      537 SETTABLEKS                       R2 R1 K9 ["RightAnkle"]
      539 GETUPVAL                         R3 2
      540 GETTABLEKS                       R2 R3 K26 ["createElement"]
      542 GETUPVAL                         R3 3
      543 DUPTABLE                         R4 K37 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
      544 GETUPVAL                         R5 4
      545 SETTABLEKS                       R5 R4 K27 ["jointLabel"]
      547 GETIMPORT                        R5 K43 [Vector2.new]
      549 LOADN                            R6 55
      550 LOADN                            R7 85
      551 CALL                             R5 2 1
      552 SETTABLEKS                       R5 R4 K28 ["position"]
      554 LOADB                            R5 1
      555 SETTABLEKS                       R5 R4 K29 ["optional"]
      557 GETUPVAL                         R6 1
      558 GETTABLEKS                       R5 R6 K30 ["selectedJoint"]
      560 SETTABLEKS                       R5 R4 K30 ["selectedJoint"]
      562 SETTABLEKS                       R0 R4 K0 ["rigDescriptor"]
      564 GETUPVAL                         R6 1
      565 GETTABLEKS                       R5 R6 K31 ["armedRigLabel"]
      567 SETTABLEKS                       R5 R4 K31 ["armedRigLabel"]
      569 GETUPVAL                         R6 1
      570 GETTABLEKS                       R5 R6 K32 ["onArmJoint"]
      572 SETTABLEKS                       R5 R4 K32 ["onArmJoint"]
      574 GETUPVAL                         R6 1
      575 GETTABLEKS                       R5 R6 K33 ["onMapJoint"]
      577 SETTABLEKS                       R5 R4 K33 ["onMapJoint"]
      579 GETUPVAL                         R6 1
      580 GETTABLEKS                       R5 R6 K34 ["counterpartHoveredJointName"]
      582 SETTABLEKS                       R5 R4 K34 ["counterpartHoveredJointName"]
      584 GETUPVAL                         R6 1
      585 GETTABLEKS                       R5 R6 K35 ["onDotHoverEnter"]
      587 SETTABLEKS                       R5 R4 K35 ["onDotHoverEnter"]
      589 GETUPVAL                         R6 1
      590 GETTABLEKS                       R5 R6 K36 ["onDotHoverLeave"]
      592 SETTABLEKS                       R5 R4 K36 ["onDotHoverLeave"]
      594 CALL                             R2 2 1
      595 SETTABLEKS                       R2 R1 K10 ["RightToeBase"]
      597 GETUPVAL                         R3 2
      598 GETTABLEKS                       R2 R3 K26 ["createElement"]
      600 GETUPVAL                         R3 3
      601 DUPTABLE                         R4 K37 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
      602 GETIMPORT                        R5 K52 [Enum.RigLabel.LeftClavicle]
      604 SETTABLEKS                       R5 R4 K27 ["jointLabel"]
      606 GETIMPORT                        R5 K43 [Vector2.new]
      608 LOADN                            R6 110
      609 LOADN                            R7 80
      610 CALL                             R5 2 1
      611 SETTABLEKS                       R5 R4 K28 ["position"]
      613 LOADB                            R5 1
      614 SETTABLEKS                       R5 R4 K29 ["optional"]
      616 GETUPVAL                         R6 1
      617 GETTABLEKS                       R5 R6 K30 ["selectedJoint"]
      619 SETTABLEKS                       R5 R4 K30 ["selectedJoint"]
      621 SETTABLEKS                       R0 R4 K0 ["rigDescriptor"]
      623 GETUPVAL                         R6 1
      624 GETTABLEKS                       R5 R6 K31 ["armedRigLabel"]
      626 SETTABLEKS                       R5 R4 K31 ["armedRigLabel"]
      628 GETUPVAL                         R6 1
      629 GETTABLEKS                       R5 R6 K32 ["onArmJoint"]
      631 SETTABLEKS                       R5 R4 K32 ["onArmJoint"]
      633 GETUPVAL                         R6 1
      634 GETTABLEKS                       R5 R6 K33 ["onMapJoint"]
      636 SETTABLEKS                       R5 R4 K33 ["onMapJoint"]
      638 GETUPVAL                         R6 1
      639 GETTABLEKS                       R5 R6 K34 ["counterpartHoveredJointName"]
      641 SETTABLEKS                       R5 R4 K34 ["counterpartHoveredJointName"]
      643 GETUPVAL                         R6 1
      644 GETTABLEKS                       R5 R6 K35 ["onDotHoverEnter"]
      646 SETTABLEKS                       R5 R4 K35 ["onDotHoverEnter"]
      648 GETUPVAL                         R6 1
      649 GETTABLEKS                       R5 R6 K36 ["onDotHoverLeave"]
      651 SETTABLEKS                       R5 R4 K36 ["onDotHoverLeave"]
      653 CALL                             R2 2 1
      654 SETTABLEKS                       R2 R1 K11 ["LeftClavicle"]
      656 GETUPVAL                         R3 2
      657 GETTABLEKS                       R2 R3 K26 ["createElement"]
      659 GETUPVAL                         R3 3
      660 DUPTABLE                         R4 K37 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
      661 GETIMPORT                        R5 K53 [Enum.RigLabel.LeftShoulder]
      663 SETTABLEKS                       R5 R4 K27 ["jointLabel"]
      665 GETIMPORT                        R5 K43 [Vector2.new]
      667 LOADN                            R6 133
      668 LOADN                            R7 84
      669 CALL                             R5 2 1
      670 SETTABLEKS                       R5 R4 K28 ["position"]
      672 LOADB                            R5 0
      673 SETTABLEKS                       R5 R4 K29 ["optional"]
      675 GETUPVAL                         R6 1
      676 GETTABLEKS                       R5 R6 K30 ["selectedJoint"]
      678 SETTABLEKS                       R5 R4 K30 ["selectedJoint"]
      680 SETTABLEKS                       R0 R4 K0 ["rigDescriptor"]
      682 GETUPVAL                         R6 1
      683 GETTABLEKS                       R5 R6 K31 ["armedRigLabel"]
      685 SETTABLEKS                       R5 R4 K31 ["armedRigLabel"]
      687 GETUPVAL                         R6 1
      688 GETTABLEKS                       R5 R6 K32 ["onArmJoint"]
      690 SETTABLEKS                       R5 R4 K32 ["onArmJoint"]
      692 GETUPVAL                         R6 1
      693 GETTABLEKS                       R5 R6 K33 ["onMapJoint"]
      695 SETTABLEKS                       R5 R4 K33 ["onMapJoint"]
      697 GETUPVAL                         R6 1
      698 GETTABLEKS                       R5 R6 K34 ["counterpartHoveredJointName"]
      700 SETTABLEKS                       R5 R4 K34 ["counterpartHoveredJointName"]
      702 GETUPVAL                         R6 1
      703 GETTABLEKS                       R5 R6 K35 ["onDotHoverEnter"]
      705 SETTABLEKS                       R5 R4 K35 ["onDotHoverEnter"]
      707 GETUPVAL                         R6 1
      708 GETTABLEKS                       R5 R6 K36 ["onDotHoverLeave"]
      710 SETTABLEKS                       R5 R4 K36 ["onDotHoverLeave"]
      712 CALL                             R2 2 1
      713 SETTABLEKS                       R2 R1 K12 ["LeftShoulder"]
      715 GETUPVAL                         R3 2
      716 GETTABLEKS                       R2 R3 K26 ["createElement"]
      718 GETUPVAL                         R3 3
      719 DUPTABLE                         R4 K37 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
      720 GETIMPORT                        R5 K54 [Enum.RigLabel.LeftElbow]
      722 SETTABLEKS                       R5 R4 K27 ["jointLabel"]
      724 GETIMPORT                        R5 K43 [Vector2.new]
      726 LOADN                            R6 144
      727 LOADN                            R7 132
      728 CALL                             R5 2 1
      729 SETTABLEKS                       R5 R4 K28 ["position"]
      731 LOADB                            R5 0
      732 SETTABLEKS                       R5 R4 K29 ["optional"]
      734 GETUPVAL                         R6 1
      735 GETTABLEKS                       R5 R6 K30 ["selectedJoint"]
      737 SETTABLEKS                       R5 R4 K30 ["selectedJoint"]
      739 SETTABLEKS                       R0 R4 K0 ["rigDescriptor"]
      741 GETUPVAL                         R6 1
      742 GETTABLEKS                       R5 R6 K31 ["armedRigLabel"]
      744 SETTABLEKS                       R5 R4 K31 ["armedRigLabel"]
      746 GETUPVAL                         R6 1
      747 GETTABLEKS                       R5 R6 K32 ["onArmJoint"]
      749 SETTABLEKS                       R5 R4 K32 ["onArmJoint"]
      751 GETUPVAL                         R6 1
      752 GETTABLEKS                       R5 R6 K33 ["onMapJoint"]
      754 SETTABLEKS                       R5 R4 K33 ["onMapJoint"]
      756 GETUPVAL                         R6 1
      757 GETTABLEKS                       R5 R6 K34 ["counterpartHoveredJointName"]
      759 SETTABLEKS                       R5 R4 K34 ["counterpartHoveredJointName"]
      761 GETUPVAL                         R6 1
      762 GETTABLEKS                       R5 R6 K35 ["onDotHoverEnter"]
      764 SETTABLEKS                       R5 R4 K35 ["onDotHoverEnter"]
      766 GETUPVAL                         R6 1
      767 GETTABLEKS                       R5 R6 K36 ["onDotHoverLeave"]
      769 SETTABLEKS                       R5 R4 K36 ["onDotHoverLeave"]
      771 CALL                             R2 2 1
      772 SETTABLEKS                       R2 R1 K13 ["LeftElbow"]
      774 GETUPVAL                         R3 2
      775 GETTABLEKS                       R2 R3 K26 ["createElement"]
      777 GETUPVAL                         R3 3
      778 DUPTABLE                         R4 K37 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
      779 GETIMPORT                        R5 K55 [Enum.RigLabel.LeftWrist]
      781 SETTABLEKS                       R5 R4 K27 ["jointLabel"]
      783 GETIMPORT                        R5 K43 [Vector2.new]
      785 LOADN                            R6 154
      786 LOADN                            R7 177
      787 CALL                             R5 2 1
      788 SETTABLEKS                       R5 R4 K28 ["position"]
      790 LOADB                            R5 0
      791 SETTABLEKS                       R5 R4 K29 ["optional"]
      793 GETUPVAL                         R6 1
      794 GETTABLEKS                       R5 R6 K30 ["selectedJoint"]
      796 SETTABLEKS                       R5 R4 K30 ["selectedJoint"]
      798 SETTABLEKS                       R0 R4 K0 ["rigDescriptor"]
      800 GETUPVAL                         R6 1
      801 GETTABLEKS                       R5 R6 K31 ["armedRigLabel"]
      803 SETTABLEKS                       R5 R4 K31 ["armedRigLabel"]
      805 GETUPVAL                         R6 1
      806 GETTABLEKS                       R5 R6 K32 ["onArmJoint"]
      808 SETTABLEKS                       R5 R4 K32 ["onArmJoint"]
      810 GETUPVAL                         R6 1
      811 GETTABLEKS                       R5 R6 K33 ["onMapJoint"]
      813 SETTABLEKS                       R5 R4 K33 ["onMapJoint"]
      815 GETUPVAL                         R6 1
      816 GETTABLEKS                       R5 R6 K34 ["counterpartHoveredJointName"]
      818 SETTABLEKS                       R5 R4 K34 ["counterpartHoveredJointName"]
      820 GETUPVAL                         R6 1
      821 GETTABLEKS                       R5 R6 K35 ["onDotHoverEnter"]
      823 SETTABLEKS                       R5 R4 K35 ["onDotHoverEnter"]
      825 GETUPVAL                         R6 1
      826 GETTABLEKS                       R5 R6 K36 ["onDotHoverLeave"]
      828 SETTABLEKS                       R5 R4 K36 ["onDotHoverLeave"]
      830 CALL                             R2 2 1
      831 SETTABLEKS                       R2 R1 K14 ["LeftWrist"]
      833 GETUPVAL                         R3 2
      834 GETTABLEKS                       R2 R3 K26 ["createElement"]
      836 GETUPVAL                         R3 3
      837 DUPTABLE                         R4 K37 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
      838 GETIMPORT                        R5 K56 [Enum.RigLabel.LeftHip]
      840 SETTABLEKS                       R5 R4 K27 ["jointLabel"]
      842 GETIMPORT                        R5 K43 [Vector2.new]
      844 LOADN                            R6 116
      845 LOADN                            R7 181
      846 CALL                             R5 2 1
      847 SETTABLEKS                       R5 R4 K28 ["position"]
      849 LOADB                            R5 0
      850 SETTABLEKS                       R5 R4 K29 ["optional"]
      852 GETUPVAL                         R6 1
      853 GETTABLEKS                       R5 R6 K30 ["selectedJoint"]
      855 SETTABLEKS                       R5 R4 K30 ["selectedJoint"]
      857 SETTABLEKS                       R0 R4 K0 ["rigDescriptor"]
      859 GETUPVAL                         R6 1
      860 GETTABLEKS                       R5 R6 K31 ["armedRigLabel"]
      862 SETTABLEKS                       R5 R4 K31 ["armedRigLabel"]
      864 GETUPVAL                         R6 1
      865 GETTABLEKS                       R5 R6 K32 ["onArmJoint"]
      867 SETTABLEKS                       R5 R4 K32 ["onArmJoint"]
      869 GETUPVAL                         R6 1
      870 GETTABLEKS                       R5 R6 K33 ["onMapJoint"]
      872 SETTABLEKS                       R5 R4 K33 ["onMapJoint"]
      874 GETUPVAL                         R6 1
      875 GETTABLEKS                       R5 R6 K34 ["counterpartHoveredJointName"]
      877 SETTABLEKS                       R5 R4 K34 ["counterpartHoveredJointName"]
      879 GETUPVAL                         R6 1
      880 GETTABLEKS                       R5 R6 K35 ["onDotHoverEnter"]
      882 SETTABLEKS                       R5 R4 K35 ["onDotHoverEnter"]
      884 GETUPVAL                         R6 1
      885 GETTABLEKS                       R5 R6 K36 ["onDotHoverLeave"]
      887 SETTABLEKS                       R5 R4 K36 ["onDotHoverLeave"]
      889 CALL                             R2 2 1
      890 SETTABLEKS                       R2 R1 K15 ["LeftHip"]
      892 GETUPVAL                         R3 2
      893 GETTABLEKS                       R2 R3 K26 ["createElement"]
      895 GETUPVAL                         R3 3
      896 DUPTABLE                         R4 K37 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
      897 GETIMPORT                        R5 K57 [Enum.RigLabel.LeftKnee]
      899 SETTABLEKS                       R5 R4 K27 ["jointLabel"]
      901 GETIMPORT                        R5 K43 [Vector2.new]
      903 LOADN                            R6 122
      904 LOADN                            R7 255
      905 CALL                             R5 2 1
      906 SETTABLEKS                       R5 R4 K28 ["position"]
      908 LOADB                            R5 0
      909 SETTABLEKS                       R5 R4 K29 ["optional"]
      911 GETUPVAL                         R6 1
      912 GETTABLEKS                       R5 R6 K30 ["selectedJoint"]
      914 SETTABLEKS                       R5 R4 K30 ["selectedJoint"]
      916 SETTABLEKS                       R0 R4 K0 ["rigDescriptor"]
      918 GETUPVAL                         R6 1
      919 GETTABLEKS                       R5 R6 K31 ["armedRigLabel"]
      921 SETTABLEKS                       R5 R4 K31 ["armedRigLabel"]
      923 GETUPVAL                         R6 1
      924 GETTABLEKS                       R5 R6 K32 ["onArmJoint"]
      926 SETTABLEKS                       R5 R4 K32 ["onArmJoint"]
      928 GETUPVAL                         R6 1
      929 GETTABLEKS                       R5 R6 K33 ["onMapJoint"]
      931 SETTABLEKS                       R5 R4 K33 ["onMapJoint"]
      933 GETUPVAL                         R6 1
      934 GETTABLEKS                       R5 R6 K34 ["counterpartHoveredJointName"]
      936 SETTABLEKS                       R5 R4 K34 ["counterpartHoveredJointName"]
      938 GETUPVAL                         R6 1
      939 GETTABLEKS                       R5 R6 K35 ["onDotHoverEnter"]
      941 SETTABLEKS                       R5 R4 K35 ["onDotHoverEnter"]
      943 GETUPVAL                         R6 1
      944 GETTABLEKS                       R5 R6 K36 ["onDotHoverLeave"]
      946 SETTABLEKS                       R5 R4 K36 ["onDotHoverLeave"]
      948 CALL                             R2 2 1
      949 SETTABLEKS                       R2 R1 K16 ["LeftKnee"]
      951 GETUPVAL                         R3 2
      952 GETTABLEKS                       R2 R3 K26 ["createElement"]
      954 GETUPVAL                         R3 3
      955 DUPTABLE                         R4 K37 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
      956 GETIMPORT                        R5 K58 [Enum.RigLabel.LeftAnkle]
      958 SETTABLEKS                       R5 R4 K27 ["jointLabel"]
      960 GETIMPORT                        R5 K43 [Vector2.new]
      962 LOADN                            R6 128
      963 LOADN                            R7 68
      964 CALL                             R5 2 1
      965 SETTABLEKS                       R5 R4 K28 ["position"]
      967 LOADB                            R5 0
      968 SETTABLEKS                       R5 R4 K29 ["optional"]
      970 GETUPVAL                         R6 1
      971 GETTABLEKS                       R5 R6 K30 ["selectedJoint"]
      973 SETTABLEKS                       R5 R4 K30 ["selectedJoint"]
      975 SETTABLEKS                       R0 R4 K0 ["rigDescriptor"]
      977 GETUPVAL                         R6 1
      978 GETTABLEKS                       R5 R6 K31 ["armedRigLabel"]
      980 SETTABLEKS                       R5 R4 K31 ["armedRigLabel"]
      982 GETUPVAL                         R6 1
      983 GETTABLEKS                       R5 R6 K32 ["onArmJoint"]
      985 SETTABLEKS                       R5 R4 K32 ["onArmJoint"]
      987 GETUPVAL                         R6 1
      988 GETTABLEKS                       R5 R6 K33 ["onMapJoint"]
      990 SETTABLEKS                       R5 R4 K33 ["onMapJoint"]
      992 GETUPVAL                         R6 1
      993 GETTABLEKS                       R5 R6 K34 ["counterpartHoveredJointName"]
      995 SETTABLEKS                       R5 R4 K34 ["counterpartHoveredJointName"]
      997 GETUPVAL                         R6 1
      998 GETTABLEKS                       R5 R6 K35 ["onDotHoverEnter"]
     1000 SETTABLEKS                       R5 R4 K35 ["onDotHoverEnter"]
     1002 GETUPVAL                         R6 1
     1003 GETTABLEKS                       R5 R6 K36 ["onDotHoverLeave"]
     1005 SETTABLEKS                       R5 R4 K36 ["onDotHoverLeave"]
     1007 CALL                             R2 2 1
     1008 SETTABLEKS                       R2 R1 K17 ["LeftAnkle"]
     1010 GETUPVAL                         R3 2
     1011 GETTABLEKS                       R2 R3 K26 ["createElement"]
     1013 GETUPVAL                         R3 3
     1014 DUPTABLE                         R4 K37 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
     1015 GETUPVAL                         R5 5
     1016 SETTABLEKS                       R5 R4 K27 ["jointLabel"]
     1018 GETIMPORT                        R5 K43 [Vector2.new]
     1020 LOADN                            R6 134
     1021 LOADN                            R7 85
     1022 CALL                             R5 2 1
     1023 SETTABLEKS                       R5 R4 K28 ["position"]
     1025 LOADB                            R5 1
     1026 SETTABLEKS                       R5 R4 K29 ["optional"]
     1028 GETUPVAL                         R6 1
     1029 GETTABLEKS                       R5 R6 K30 ["selectedJoint"]
     1031 SETTABLEKS                       R5 R4 K30 ["selectedJoint"]
     1033 SETTABLEKS                       R0 R4 K0 ["rigDescriptor"]
     1035 GETUPVAL                         R6 1
     1036 GETTABLEKS                       R5 R6 K31 ["armedRigLabel"]
     1038 SETTABLEKS                       R5 R4 K31 ["armedRigLabel"]
     1040 GETUPVAL                         R6 1
     1041 GETTABLEKS                       R5 R6 K32 ["onArmJoint"]
     1043 SETTABLEKS                       R5 R4 K32 ["onArmJoint"]
     1045 GETUPVAL                         R6 1
     1046 GETTABLEKS                       R5 R6 K33 ["onMapJoint"]
     1048 SETTABLEKS                       R5 R4 K33 ["onMapJoint"]
     1050 GETUPVAL                         R6 1
     1051 GETTABLEKS                       R5 R6 K34 ["counterpartHoveredJointName"]
     1053 SETTABLEKS                       R5 R4 K34 ["counterpartHoveredJointName"]
     1055 GETUPVAL                         R6 1
     1056 GETTABLEKS                       R5 R6 K35 ["onDotHoverEnter"]
     1058 SETTABLEKS                       R5 R4 K35 ["onDotHoverEnter"]
     1060 GETUPVAL                         R6 1
     1061 GETTABLEKS                       R5 R6 K36 ["onDotHoverLeave"]
     1063 SETTABLEKS                       R5 R4 K36 ["onDotHoverLeave"]
     1065 CALL                             R2 2 1
     1066 SETTABLEKS                       R2 R1 K18 ["LeftToeBase"]
     1068 GETUPVAL                         R3 2
     1069 GETTABLEKS                       R2 R3 K26 ["createElement"]
     1071 GETUPVAL                         R3 3
     1072 DUPTABLE                         R4 K37 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
     1073 GETIMPORT                        R5 K59 [Enum.RigLabel.Chest]
     1075 SETTABLEKS                       R5 R4 K27 ["jointLabel"]
     1077 GETIMPORT                        R5 K43 [Vector2.new]
     1079 LOADN                            R6 96
     1080 LOADN                            R7 98
     1081 CALL                             R5 2 1
     1082 SETTABLEKS                       R5 R4 K28 ["position"]
     1084 LOADB                            R5 1
     1085 SETTABLEKS                       R5 R4 K29 ["optional"]
     1087 GETUPVAL                         R6 1
     1088 GETTABLEKS                       R5 R6 K30 ["selectedJoint"]
     1090 SETTABLEKS                       R5 R4 K30 ["selectedJoint"]
     1092 SETTABLEKS                       R0 R4 K0 ["rigDescriptor"]
     1094 GETUPVAL                         R6 1
     1095 GETTABLEKS                       R5 R6 K31 ["armedRigLabel"]
     1097 SETTABLEKS                       R5 R4 K31 ["armedRigLabel"]
     1099 GETUPVAL                         R6 1
     1100 GETTABLEKS                       R5 R6 K32 ["onArmJoint"]
     1102 SETTABLEKS                       R5 R4 K32 ["onArmJoint"]
     1104 GETUPVAL                         R6 1
     1105 GETTABLEKS                       R5 R6 K33 ["onMapJoint"]
     1107 SETTABLEKS                       R5 R4 K33 ["onMapJoint"]
     1109 GETUPVAL                         R6 1
     1110 GETTABLEKS                       R5 R6 K34 ["counterpartHoveredJointName"]
     1112 SETTABLEKS                       R5 R4 K34 ["counterpartHoveredJointName"]
     1114 GETUPVAL                         R6 1
     1115 GETTABLEKS                       R5 R6 K35 ["onDotHoverEnter"]
     1117 SETTABLEKS                       R5 R4 K35 ["onDotHoverEnter"]
     1119 GETUPVAL                         R6 1
     1120 GETTABLEKS                       R5 R6 K36 ["onDotHoverLeave"]
     1122 SETTABLEKS                       R5 R4 K36 ["onDotHoverLeave"]
     1124 CALL                             R2 2 1
     1125 SETTABLEKS                       R2 R1 K19 ["Chest"]
     1127 GETUPVAL                         R3 2
     1128 GETTABLEKS                       R2 R3 K26 ["createElement"]
     1130 GETUPVAL                         R3 3
     1131 DUPTABLE                         R4 K37 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
     1132 GETIMPORT                        R5 K60 [Enum.RigLabel.Root]
     1134 SETTABLEKS                       R5 R4 K27 ["jointLabel"]
     1136 GETIMPORT                        R5 K43 [Vector2.new]
     1138 LOADN                            R6 96
     1139 LOADN                            R7 180
     1140 CALL                             R5 2 1
     1141 SETTABLEKS                       R5 R4 K28 ["position"]
     1143 LOADB                            R5 0
     1144 SETTABLEKS                       R5 R4 K29 ["optional"]
     1146 GETUPVAL                         R6 1
     1147 GETTABLEKS                       R5 R6 K30 ["selectedJoint"]
     1149 SETTABLEKS                       R5 R4 K30 ["selectedJoint"]
     1151 SETTABLEKS                       R0 R4 K0 ["rigDescriptor"]
     1153 GETUPVAL                         R6 1
     1154 GETTABLEKS                       R5 R6 K31 ["armedRigLabel"]
     1156 SETTABLEKS                       R5 R4 K31 ["armedRigLabel"]
     1158 GETUPVAL                         R6 1
     1159 GETTABLEKS                       R5 R6 K32 ["onArmJoint"]
     1161 SETTABLEKS                       R5 R4 K32 ["onArmJoint"]
     1163 GETUPVAL                         R6 1
     1164 GETTABLEKS                       R5 R6 K33 ["onMapJoint"]
     1166 SETTABLEKS                       R5 R4 K33 ["onMapJoint"]
     1168 GETUPVAL                         R6 1
     1169 GETTABLEKS                       R5 R6 K34 ["counterpartHoveredJointName"]
     1171 SETTABLEKS                       R5 R4 K34 ["counterpartHoveredJointName"]
     1173 GETUPVAL                         R6 1
     1174 GETTABLEKS                       R5 R6 K35 ["onDotHoverEnter"]
     1176 SETTABLEKS                       R5 R4 K35 ["onDotHoverEnter"]
     1178 GETUPVAL                         R6 1
     1179 GETTABLEKS                       R5 R6 K36 ["onDotHoverLeave"]
     1181 SETTABLEKS                       R5 R4 K36 ["onDotHoverLeave"]
     1183 CALL                             R2 2 1
     1184 SETTABLEKS                       R2 R1 K20 ["Root"]
     1186 GETUPVAL                         R3 2
     1187 GETTABLEKS                       R2 R3 K26 ["createElement"]
     1189 GETUPVAL                         R3 3
     1190 DUPTABLE                         R4 K37 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
     1191 GETIMPORT                        R5 K61 [Enum.RigLabel.Waist]
     1193 SETTABLEKS                       R5 R4 K27 ["jointLabel"]
     1195 GETIMPORT                        R5 K43 [Vector2.new]
     1197 LOADN                            R6 96
     1198 LOADN                            R7 144
     1199 CALL                             R5 2 1
     1200 SETTABLEKS                       R5 R4 K28 ["position"]
     1202 LOADB                            R5 0
     1203 SETTABLEKS                       R5 R4 K29 ["optional"]
     1205 GETUPVAL                         R6 1
     1206 GETTABLEKS                       R5 R6 K30 ["selectedJoint"]
     1208 SETTABLEKS                       R5 R4 K30 ["selectedJoint"]
     1210 SETTABLEKS                       R0 R4 K0 ["rigDescriptor"]
     1212 GETUPVAL                         R6 1
     1213 GETTABLEKS                       R5 R6 K31 ["armedRigLabel"]
     1215 SETTABLEKS                       R5 R4 K31 ["armedRigLabel"]
     1217 GETUPVAL                         R6 1
     1218 GETTABLEKS                       R5 R6 K32 ["onArmJoint"]
     1220 SETTABLEKS                       R5 R4 K32 ["onArmJoint"]
     1222 GETUPVAL                         R6 1
     1223 GETTABLEKS                       R5 R6 K33 ["onMapJoint"]
     1225 SETTABLEKS                       R5 R4 K33 ["onMapJoint"]
     1227 GETUPVAL                         R6 1
     1228 GETTABLEKS                       R5 R6 K34 ["counterpartHoveredJointName"]
     1230 SETTABLEKS                       R5 R4 K34 ["counterpartHoveredJointName"]
     1232 GETUPVAL                         R6 1
     1233 GETTABLEKS                       R5 R6 K35 ["onDotHoverEnter"]
     1235 SETTABLEKS                       R5 R4 K35 ["onDotHoverEnter"]
     1237 GETUPVAL                         R6 1
     1238 GETTABLEKS                       R5 R6 K36 ["onDotHoverLeave"]
     1240 SETTABLEKS                       R5 R4 K36 ["onDotHoverLeave"]
     1242 CALL                             R2 2 1
     1243 SETTABLEKS                       R2 R1 K21 ["Waist"]
     1245 GETUPVAL                         R3 6
     1246 JUMPIFNOT                        R3 ; [+65]
     1247 GETUPVAL                         R3 2
     1248 GETTABLEKS                       R2 R3 K26 ["createElement"]
     1250 GETUPVAL                         R3 3
     1251 DUPTABLE                         R4 K37 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
     1252 GETUPVAL                         R5 6
     1253 SETTABLEKS                       R5 R4 K27 ["jointLabel"]
     1255 GETUPVAL                         R6 7
     1256 JUMPIFNOT                        R6 ; [+6]
     1257 GETIMPORT                        R5 K43 [Vector2.new]
     1259 LOADN                            R6 96
     1260 LOADN                            R7 121
     1261 CALL                             R5 2 1
     1262 JUMP                             ; [+5]
     1263 GETIMPORT                        R5 K43 [Vector2.new]
     1265 LOADN                            R6 96
     1266 LOADN                            R7 166
     1267 CALL                             R5 2 1
     1268 SETTABLEKS                       R5 R4 K28 ["position"]
     1270 LOADB                            R5 1
     1271 SETTABLEKS                       R5 R4 K29 ["optional"]
     1273 GETUPVAL                         R6 1
     1274 GETTABLEKS                       R5 R6 K30 ["selectedJoint"]
     1276 SETTABLEKS                       R5 R4 K30 ["selectedJoint"]
     1278 SETTABLEKS                       R0 R4 K0 ["rigDescriptor"]
     1280 GETUPVAL                         R6 1
     1281 GETTABLEKS                       R5 R6 K31 ["armedRigLabel"]
     1283 SETTABLEKS                       R5 R4 K31 ["armedRigLabel"]
     1285 GETUPVAL                         R6 1
     1286 GETTABLEKS                       R5 R6 K32 ["onArmJoint"]
     1288 SETTABLEKS                       R5 R4 K32 ["onArmJoint"]
     1290 GETUPVAL                         R6 1
     1291 GETTABLEKS                       R5 R6 K33 ["onMapJoint"]
     1293 SETTABLEKS                       R5 R4 K33 ["onMapJoint"]
     1295 GETUPVAL                         R6 1
     1296 GETTABLEKS                       R5 R6 K34 ["counterpartHoveredJointName"]
     1298 SETTABLEKS                       R5 R4 K34 ["counterpartHoveredJointName"]
     1300 GETUPVAL                         R6 1
     1301 GETTABLEKS                       R5 R6 K35 ["onDotHoverEnter"]
     1303 SETTABLEKS                       R5 R4 K35 ["onDotHoverEnter"]
     1305 GETUPVAL                         R6 1
     1306 GETTABLEKS                       R5 R6 K36 ["onDotHoverLeave"]
     1308 SETTABLEKS                       R5 R4 K36 ["onDotHoverLeave"]
     1310 CALL                             R2 2 1
     1311 JUMPIF                           R2 ; [+1]
     1312 LOADNIL                          R2
     1313 SETTABLEKS                       R2 R1 K22 ["Spine"]
     1315 GETUPVAL                         R3 2
     1316 GETTABLEKS                       R2 R3 K26 ["createElement"]
     1318 GETUPVAL                         R3 8
     1319 DUPTABLE                         R4 K64 [{"position", "side", "rigDescriptor", "onNavigateToHand"}]
     1320 GETIMPORT                        R5 K43 [Vector2.new]
     1322 LOADN                            R6 19
     1323 LOADN                            R7 198
     1324 CALL                             R5 2 1
     1325 SETTABLEKS                       R5 R4 K28 ["position"]
     1327 LOADK                            R5 K65 ["right"]
     1328 SETTABLEKS                       R5 R4 K62 ["side"]
     1330 SETTABLEKS                       R0 R4 K0 ["rigDescriptor"]
     1332 GETUPVAL                         R6 1
     1333 GETTABLEKS                       R5 R6 K63 ["onNavigateToHand"]
     1335 SETTABLEKS                       R5 R4 K63 ["onNavigateToHand"]
     1337 CALL                             R2 2 1
     1338 SETTABLEKS                       R2 R1 K23 ["RightHandDot"]
     1340 GETUPVAL                         R3 2
     1341 GETTABLEKS                       R2 R3 K26 ["createElement"]
     1343 GETUPVAL                         R3 8
     1344 DUPTABLE                         R4 K64 [{"position", "side", "rigDescriptor", "onNavigateToHand"}]
     1345 GETIMPORT                        R5 K43 [Vector2.new]
     1347 LOADN                            R6 171
     1348 LOADN                            R7 197
     1349 CALL                             R5 2 1
     1350 SETTABLEKS                       R5 R4 K28 ["position"]
     1352 LOADK                            R5 K66 ["left"]
     1353 SETTABLEKS                       R5 R4 K62 ["side"]
     1355 SETTABLEKS                       R0 R4 K0 ["rigDescriptor"]
     1357 GETUPVAL                         R6 1
     1358 GETTABLEKS                       R5 R6 K63 ["onNavigateToHand"]
     1360 SETTABLEKS                       R5 R4 K63 ["onNavigateToHand"]
     1362 CALL                             R2 2 1
     1363 SETTABLEKS                       R2 R1 K24 ["LeftHandDot"]
     1365 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["useCallback"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R0
       10 NEWTABLE                         R5 0 1
       12 GETTABLEKS                       R6 R0 K2 ["onClear"]
       14 SETLIST                          R5 R6 1 [1]
       16 CALL                             R3 2 1
       17 LOADB                            R4 0
       18 GETTABLEKS                       R5 R0 K3 ["rigDescriptor"]
       20 JUMPIFEQKNIL                     R5 ; [+7]
       22 GETTABLEKS                       R5 R0 K4 ["model"]
       24 JUMPIFNOTEQKNIL                  R5 ; [+2]
       26 LOADB                            R4 0 +1
       27 LOADB                            R4 1
       28 MOVE                             R5 R4
       29 JUMPIFNOT                        R5 ; [+2]
       30 GETTABLEKS                       R5 R0 K5 ["showMannequinImage"]
       32 GETUPVAL                         R7 0
       33 GETTABLEKS                       R6 R7 K6 ["useMemo"]
       35 NEWCLOSURE                       R7 P1
       36 CAPTURE                          VAL R5
       37 CAPTURE                          VAL R0
       38 CAPTURE                          UPVAL U0
       39 CAPTURE                          UPVAL U1
       40 CAPTURE                          UPVAL U2
       41 CAPTURE                          UPVAL U3
       42 CAPTURE                          UPVAL U4
       43 CAPTURE                          UPVAL U5
       44 CAPTURE                          UPVAL U6
       45 NEWTABLE                         R8 0 10
       47 MOVE                             R9 R5
       48 GETTABLEKS                       R10 R0 K3 ["rigDescriptor"]
       50 GETTABLEKS                       R11 R0 K7 ["armedRigLabel"]
       52 GETTABLEKS                       R12 R0 K8 ["selectedJoint"]
       54 GETTABLEKS                       R13 R0 K9 ["counterpartHoveredJointName"]
       56 GETTABLEKS                       R14 R0 K10 ["onArmJoint"]
       58 GETTABLEKS                       R15 R0 K11 ["onMapJoint"]
       60 GETTABLEKS                       R16 R0 K12 ["onDotHoverEnter"]
       62 GETTABLEKS                       R17 R0 K13 ["onDotHoverLeave"]
       64 GETTABLEKS                       R18 R0 K14 ["onNavigateToHand"]
       66 SETLIST                          R8 R9 10 [1]
       68 CALL                             R6 2 1
       69 GETUPVAL                         R7 7
       70 CALL                             R7 0 1
       71 JUMPIF                           R7 ; [+114]
       72 JUMPIF                           R5 ; [+2]
       73 LOADNIL                          R7
       74 RETURN                           R7 1
       75 GETUPVAL                         R8 8
       76 GETTABLEKS                       R7 R8 K15 ["createPortal"]
       78 GETUPVAL                         R9 0
       79 GETTABLEKS                       R8 R9 K16 ["createElement"]
       81 LOADK                            R9 K17 ["ScreenGui"]
       82 DUPTABLE                         R10 K22 [{"Archivable", "DisplayOrder", "ZIndexBehavior", "ref"}]
       83 LOADB                            R11 0
       84 SETTABLEKS                       R11 R10 K18 ["Archivable"]
       86 GETUPVAL                         R12 9
       87 GETTABLEKS                       R11 R12 K23 ["DISPLAY_ORDER_MANNEQUIN"]
       89 SETTABLEKS                       R11 R10 K19 ["DisplayOrder"]
       91 GETIMPORT                        R11 K26 [Enum.ZIndexBehavior.Sibling]
       93 SETTABLEKS                       R11 R10 K20 ["ZIndexBehavior"]
       95 SETTABLEKS                       R2 R10 K21 ["ref"]
       97 MOVE                             R11 R1
       98 JUMPIFNOT                        R11 ; [+82]
       99 GETUPVAL                         R12 0
      100 GETTABLEKS                       R11 R12 K16 ["createElement"]
      102 GETUPVAL                         R14 10
      103 GETTABLEKS                       R13 R14 K27 ["Components"]
      105 GETTABLEKS                       R12 R13 K28 ["FoundationProviderAdapter"]
      107 DUPTABLE                         R13 K30 [{"overlayGui"}]
      108 SETTABLEKS                       R1 R13 K29 ["overlayGui"]
      110 DUPTABLE                         R14 K32 [{"Image"}]
      111 GETUPVAL                         R16 0
      112 GETTABLEKS                       R15 R16 K16 ["createElement"]
      114 GETUPVAL                         R17 11
      115 GETTABLEKS                       R16 R17 K31 ["Image"]
      117 DUPTABLE                         R17 K39 [{"Image", "aspectRatio", "tag", "Position", "sizeConstraint", "onActivated", "stateLayer"}]
      118 GETUPVAL                         R19 9
      119 GETTABLEKS                       R18 R19 K40 ["MANNEQUIN"]
      121 SETTABLEKS                       R18 R17 K31 ["Image"]
      123 LOADK                            R18 K41 [0.493472584856397]
      124 SETTABLEKS                       R18 R17 K33 ["aspectRatio"]
      126 LOADK                            R18 K42 ["anchor-top-right bg-over-media-300 size-full"]
      127 SETTABLEKS                       R18 R17 K34 ["tag"]
      129 GETIMPORT                        R18 K45 [UDim2.new]
      131 LOADN                            R19 1
      132 LOADN                            R20 240
      133 LOADN                            R21 0
      134 LOADN                            R22 18
      135 CALL                             R18 4 1
      136 SETTABLEKS                       R18 R17 K35 ["Position"]
      138 DUPTABLE                         R18 K47 [{"MaxSize"}]
      139 GETIMPORT                        R19 K49 [Vector2.new]
      141 LOADN                            R20 14
      142 LOADN                            R21 144
      143 CALL                             R19 2 1
      144 SETTABLEKS                       R19 R18 K46 ["MaxSize"]
      146 SETTABLEKS                       R18 R17 K36 ["sizeConstraint"]
      148 SETTABLEKS                       R3 R17 K37 ["onActivated"]
      150 DUPTABLE                         R18 K51 [{"affordance"}]
      151 GETUPVAL                         R22 11
      152 GETTABLEKS                       R21 R22 K52 ["Enums"]
      154 GETTABLEKS                       R20 R21 K53 ["StateLayerAffordance"]
      156 GETTABLEKS                       R19 R20 K54 ["None"]
      158 SETTABLEKS                       R19 R18 K50 ["affordance"]
      160 SETTABLEKS                       R18 R17 K38 ["stateLayer"]
      162 DUPTABLE                         R18 K56 [{"Dots"}]
      163 GETUPVAL                         R20 0
      164 GETTABLEKS                       R19 R20 K16 ["createElement"]
      166 GETUPVAL                         R21 11
      167 GETTABLEKS                       R20 R21 K57 ["View"]
      169 DUPTABLE                         R21 K58 [{"tag"}]
      170 LOADK                            R22 K59 ["size-full"]
      171 SETTABLEKS                       R22 R21 K34 ["tag"]
      173 MOVE                             R22 R6
      174 CALL                             R19 3 1
      175 SETTABLEKS                       R19 R18 K55 ["Dots"]
      177 CALL                             R15 3 1
      178 SETTABLEKS                       R15 R14 K31 ["Image"]
      180 CALL                             R11 3 1
      181 CALL                             R8 3 1
      182 GETUPVAL                         R9 12
      183 LOADK                            R10 K60 ["MannequinPanel"]
      184 CALL                             R7 3 -1
      185 RETURN                           R7 -1
      186 LOADNIL                          R7
      187 JUMPIF                           R4 ; [+233]
      188 LOADNIL                          R8
      189 LOADNIL                          R9
      190 LOADNIL                          R10
      191 GETTABLEKS                       R11 R0 K61 ["detectedHrd"]
      193 JUMPIFNOT                        R11 ; [+19]
      194 GETTABLEKS                       R11 R0 K62 ["localization"]
      196 LOADK                            R13 K63 ["Mannequin"]
      197 LOADK                            R14 K64 ["HrdDetected"]
      198 NAMECALL                         R11 R11 K65 ["getText"]
      200 CALL                             R11 3 1
      201 MOVE                             R8 R11
      202 GETTABLEKS                       R11 R0 K62 ["localization"]
      204 LOADK                            R13 K63 ["Mannequin"]
      205 LOADK                            R14 K66 ["SelectHrd"]
      206 NAMECALL                         R11 R11 K65 ["getText"]
      208 CALL                             R11 3 1
      209 MOVE                             R9 R11
      210 GETTABLEKS                       R10 R0 K67 ["onSelectHrd"]
      212 JUMP                             ; [+32]
      213 GETTABLEKS                       R11 R0 K68 ["hasHumanoid"]
      215 JUMPIFNOT                        R11 ; [+19]
      216 GETTABLEKS                       R11 R0 K62 ["localization"]
      218 LOADK                            R13 K63 ["Mannequin"]
      219 LOADK                            R14 K69 ["NoHrd"]
      220 NAMECALL                         R11 R11 K65 ["getText"]
      222 CALL                             R11 3 1
      223 MOVE                             R8 R11
      224 GETTABLEKS                       R11 R0 K62 ["localization"]
      226 LOADK                            R13 K63 ["Mannequin"]
      227 LOADK                            R14 K70 ["CreateHrd"]
      228 NAMECALL                         R11 R11 K65 ["getText"]
      230 CALL                             R11 3 1
      231 MOVE                             R9 R11
      232 GETTABLEKS                       R10 R0 K71 ["onCreateHrd"]
      234 JUMP                             ; [+10]
      235 GETTABLEKS                       R11 R0 K62 ["localization"]
      237 LOADK                            R13 K63 ["Mannequin"]
      238 LOADK                            R14 K72 ["SelectHRDPlaceholder"]
      239 NAMECALL                         R11 R11 K65 ["getText"]
      241 CALL                             R11 3 1
      242 MOVE                             R8 R11
      243 LOADNIL                          R9
      244 LOADNIL                          R10
      245 GETUPVAL                         R12 0
      246 GETTABLEKS                       R11 R12 K16 ["createElement"]
      248 GETUPVAL                         R13 11
      249 GETTABLEKS                       R12 R13 K57 ["View"]
      251 DUPTABLE                         R13 K74 [{"tag", "Size"}]
      252 LOADK                            R14 K75 ["col align-x-center align-y-center gap-small"]
      253 SETTABLEKS                       R14 R13 K34 ["tag"]
      255 GETIMPORT                        R14 K45 [UDim2.new]
      257 LOADN                            R15 1
      258 LOADN                            R16 0
      259 LOADN                            R17 1
      260 LOADN                            R18 0
      261 CALL                             R14 4 1
      262 SETTABLEKS                       R14 R13 K73 ["Size"]
      264 DUPTABLE                         R14 K79 [{"Padding", "Placeholder", "Button"}]
      265 GETUPVAL                         R16 0
      266 GETTABLEKS                       R15 R16 K16 ["createElement"]
      268 LOADK                            R16 K80 ["UIPadding"]
      269 DUPTABLE                         R17 K83 [{"PaddingLeft", "PaddingRight"}]
      270 GETIMPORT                        R18 K85 [UDim.new]
      272 LOADN                            R19 0
      273 LOADN                            R20 12
      274 CALL                             R18 2 1
      275 SETTABLEKS                       R18 R17 K81 ["PaddingLeft"]
      277 GETIMPORT                        R18 K85 [UDim.new]
      279 LOADN                            R19 0
      280 LOADN                            R20 12
      281 CALL                             R18 2 1
      282 SETTABLEKS                       R18 R17 K82 ["PaddingRight"]
      284 CALL                             R15 2 1
      285 SETTABLEKS                       R15 R14 K76 ["Padding"]
      287 GETUPVAL                         R16 0
      288 GETTABLEKS                       R15 R16 K16 ["createElement"]
      290 GETUPVAL                         R17 11
      291 GETTABLEKS                       R16 R17 K86 ["Text"]
      293 DUPTABLE                         R17 K89 [{"LayoutOrder", "tag", "Size", "AutomaticSize", "Text"}]
      294 LOADN                            R18 1
      295 SETTABLEKS                       R18 R17 K87 ["LayoutOrder"]
      297 LOADK                            R18 K90 ["text-caption-small text-center"]
      298 SETTABLEKS                       R18 R17 K34 ["tag"]
      300 GETIMPORT                        R18 K45 [UDim2.new]
      302 LOADN                            R19 1
      303 LOADN                            R20 0
      304 LOADN                            R21 0
      305 LOADN                            R22 0
      306 CALL                             R18 4 1
      307 SETTABLEKS                       R18 R17 K73 ["Size"]
      309 GETIMPORT                        R18 K92 [Enum.AutomaticSize.Y]
      311 SETTABLEKS                       R18 R17 K88 ["AutomaticSize"]
      313 SETTABLEKS                       R8 R17 K86 ["Text"]
      315 CALL                             R15 2 1
      316 SETTABLEKS                       R15 R14 K77 ["Placeholder"]
      318 JUMPIFNOT                        R10 ; [+96]
      319 GETUPVAL                         R16 0
      320 GETTABLEKS                       R15 R16 K16 ["createElement"]
      322 GETUPVAL                         R17 11
      323 GETTABLEKS                       R16 R17 K57 ["View"]
      325 DUPTABLE                         R17 K93 [{"LayoutOrder", "tag", "onActivated", "stateLayer"}]
      326 LOADN                            R18 2
      327 SETTABLEKS                       R18 R17 K87 ["LayoutOrder"]
      329 LOADK                            R18 K94 ["auto-xy bg-surface-200"]
      330 SETTABLEKS                       R18 R17 K34 ["tag"]
      332 SETTABLEKS                       R10 R17 K37 ["onActivated"]
      334 DUPTABLE                         R18 K51 [{"affordance"}]
      335 GETUPVAL                         R22 11
      336 GETTABLEKS                       R21 R22 K52 ["Enums"]
      338 GETTABLEKS                       R20 R21 K53 ["StateLayerAffordance"]
      340 GETTABLEKS                       R19 R20 K95 ["Background"]
      342 SETTABLEKS                       R19 R18 K50 ["affordance"]
      344 SETTABLEKS                       R18 R17 K38 ["stateLayer"]
      346 DUPTABLE                         R18 K97 [{"Corner", "Padding", "Text"}]
      347 GETUPVAL                         R20 0
      348 GETTABLEKS                       R19 R20 K16 ["createElement"]
      350 LOADK                            R20 K98 ["UICorner"]
      351 DUPTABLE                         R21 K100 [{"CornerRadius"}]
      352 GETIMPORT                        R22 K85 [UDim.new]
      354 LOADN                            R23 0
      355 LOADN                            R24 4
      356 CALL                             R22 2 1
      357 SETTABLEKS                       R22 R21 K99 ["CornerRadius"]
      359 CALL                             R19 2 1
      360 SETTABLEKS                       R19 R18 K96 ["Corner"]
      362 GETUPVAL                         R20 0
      363 GETTABLEKS                       R19 R20 K16 ["createElement"]
      365 LOADK                            R20 K80 ["UIPadding"]
      366 DUPTABLE                         R21 K103 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      367 GETIMPORT                        R22 K85 [UDim.new]
      369 LOADN                            R23 0
      370 LOADN                            R24 12
      371 CALL                             R22 2 1
      372 SETTABLEKS                       R22 R21 K81 ["PaddingLeft"]
      374 GETIMPORT                        R22 K85 [UDim.new]
      376 LOADN                            R23 0
      377 LOADN                            R24 12
      378 CALL                             R22 2 1
      379 SETTABLEKS                       R22 R21 K82 ["PaddingRight"]
      381 GETIMPORT                        R22 K85 [UDim.new]
      383 LOADN                            R23 0
      384 LOADN                            R24 5
      385 CALL                             R22 2 1
      386 SETTABLEKS                       R22 R21 K101 ["PaddingTop"]
      388 GETIMPORT                        R22 K85 [UDim.new]
      390 LOADN                            R23 0
      391 LOADN                            R24 5
      392 CALL                             R22 2 1
      393 SETTABLEKS                       R22 R21 K102 ["PaddingBottom"]
      395 CALL                             R19 2 1
      396 SETTABLEKS                       R19 R18 K76 ["Padding"]
      398 GETUPVAL                         R20 0
      399 GETTABLEKS                       R19 R20 K16 ["createElement"]
      401 GETUPVAL                         R21 11
      402 GETTABLEKS                       R20 R21 K86 ["Text"]
      404 DUPTABLE                         R21 K104 [{"tag", "Text"}]
      405 LOADK                            R22 K105 ["text-caption-small auto-xy"]
      406 SETTABLEKS                       R22 R21 K34 ["tag"]
      408 SETTABLEKS                       R9 R21 K86 ["Text"]
      410 CALL                             R19 2 1
      411 SETTABLEKS                       R19 R18 K86 ["Text"]
      413 CALL                             R15 3 1
      414 JUMPIF                           R15 ; [+1]
      415 LOADNIL                          R15
      416 SETTABLEKS                       R15 R14 K78 ["Button"]
      418 CALL                             R11 3 1
      419 MOVE                             R7 R11
      420 JUMP                             ; [+79]
      421 JUMPIFNOT                        R5 ; [+77]
      422 GETUPVAL                         R9 0
      423 GETTABLEKS                       R8 R9 K16 ["createElement"]
      425 GETUPVAL                         R10 11
      426 GETTABLEKS                       R9 R10 K31 ["Image"]
      428 DUPTABLE                         R10 K107 [{"Image", "aspectRatio", "Position", "AnchorPoint", "Size", "onActivated", "stateLayer"}]
      429 GETUPVAL                         R12 9
      430 GETTABLEKS                       R11 R12 K40 ["MANNEQUIN"]
      432 SETTABLEKS                       R11 R10 K31 ["Image"]
      434 DUPTABLE                         R11 K110 [{"AspectRatio", "DominantAxis"}]
      435 LOADK                            R12 K41 [0.493472584856397]
      436 SETTABLEKS                       R12 R11 K108 ["AspectRatio"]
      438 GETIMPORT                        R12 K112 [Enum.DominantAxis.Height]
      440 SETTABLEKS                       R12 R11 K109 ["DominantAxis"]
      442 SETTABLEKS                       R11 R10 K33 ["aspectRatio"]
      444 GETIMPORT                        R11 K114 [UDim2.fromScale]
      446 LOADK                            R12 K115 [0.5]
      447 LOADK                            R13 K115 [0.5]
      448 CALL                             R11 2 1
      449 SETTABLEKS                       R11 R10 K35 ["Position"]
      451 GETIMPORT                        R11 K49 [Vector2.new]
      453 LOADK                            R12 K115 [0.5]
      454 LOADK                            R13 K115 [0.5]
      455 CALL                             R11 2 1
      456 SETTABLEKS                       R11 R10 K106 ["AnchorPoint"]
      458 GETIMPORT                        R11 K45 [UDim2.new]
      460 LOADN                            R12 1
      461 LOADN                            R13 0
      462 LOADN                            R14 1
      463 LOADN                            R15 0
      464 CALL                             R11 4 1
      465 SETTABLEKS                       R11 R10 K73 ["Size"]
      467 SETTABLEKS                       R3 R10 K37 ["onActivated"]
      469 DUPTABLE                         R11 K51 [{"affordance"}]
      470 GETUPVAL                         R15 11
      471 GETTABLEKS                       R14 R15 K52 ["Enums"]
      473 GETTABLEKS                       R13 R14 K53 ["StateLayerAffordance"]
      475 GETTABLEKS                       R12 R13 K54 ["None"]
      477 SETTABLEKS                       R12 R11 K50 ["affordance"]
      479 SETTABLEKS                       R11 R10 K38 ["stateLayer"]
      481 DUPTABLE                         R11 K56 [{"Dots"}]
      482 GETUPVAL                         R13 0
      483 GETTABLEKS                       R12 R13 K16 ["createElement"]
      485 GETUPVAL                         R14 11
      486 GETTABLEKS                       R13 R14 K57 ["View"]
      488 DUPTABLE                         R14 K58 [{"tag"}]
      489 LOADK                            R15 K59 ["size-full"]
      490 SETTABLEKS                       R15 R14 K34 ["tag"]
      492 MOVE                             R15 R6
      493 CALL                             R12 3 1
      494 SETTABLEKS                       R12 R11 K55 ["Dots"]
      496 CALL                             R8 3 1
      497 MOVE                             R7 R8
      498 JUMP                             ; [+1]
      499 LOADNIL                          R7
      500 GETUPVAL                         R9 0
      501 GETTABLEKS                       R8 R9 K16 ["createElement"]
      503 GETUPVAL                         R9 13
      504 DUPTABLE                         R10 K120 [{"title", "bodyVisible", "onClose", "content"}]
      505 GETTABLEKS                       R11 R0 K62 ["localization"]
      507 LOADK                            R13 K63 ["Mannequin"]
      508 LOADK                            R14 K121 ["Title"]
      509 NAMECALL                         R11 R11 K65 ["getText"]
      511 CALL                             R11 3 1
      512 SETTABLEKS                       R11 R10 K116 ["title"]
      514 JUMPIFNOT                        R4 ; [+2]
      515 MOVE                             R11 R5
      516 JUMP                             ; [+1]
      517 LOADNIL                          R11
      518 SETTABLEKS                       R11 R10 K117 ["bodyVisible"]
      520 GETTABLEKS                       R11 R0 K118 ["onClose"]
      522 SETTABLEKS                       R11 R10 K118 ["onClose"]
      524 DUPTABLE                         R11 K123 [{"Inner"}]
      525 SETTABLEKS                       R7 R11 K122 ["Inner"]
      527 SETTABLEKS                       R11 R10 K119 ["content"]
      529 CALL                             R8 2 -1
      530 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["AnimationEditor"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Resources"]
       20 GETTABLEKS                       R3 R4 K10 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K6 ["Packages"]
       27 GETTABLEKS                       R4 R5 K11 ["Foundation"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K8 ["Src"]
       34 GETTABLEKS                       R6 R7 K12 ["Components"]
       36 GETTABLEKS                       R5 R6 K13 ["MannequinPanel"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R7 R0 K6 ["Packages"]
       43 GETTABLEKS                       R6 R7 K14 ["React"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R8 R0 K6 ["Packages"]
       50 GETTABLEKS                       R7 R8 K15 ["ReactRoblox"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R9 R0 K6 ["Packages"]
       57 GETTABLEKS                       R8 R9 K16 ["SignalsReact"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R10 R0 K6 ["Packages"]
       64 GETTABLEKS                       R9 R10 K17 ["StudioFoundation"]
       66 CALL                             R8 1 1
       67 GETTABLEKS                       R10 R3 K18 ["Hooks"]
       69 GETTABLEKS                       R9 R10 K19 ["useTokens"]
       71 GETIMPORT                        R10 K5 [require]
       73 GETTABLEKS                       R12 R0 K8 ["Src"]
       75 GETTABLEKS                       R11 R12 K20 ["Types"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K5 [require]
       80 GETTABLEKS                       R13 R0 K6 ["Packages"]
       82 GETTABLEKS                       R12 R13 K21 ["AdaptiveAnimationTools"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K5 [require]
       87 GETTABLEKS                       R15 R0 K8 ["Src"]
       89 GETTABLEKS                       R14 R15 K22 ["Flags"]
       91 GETTABLEKS                       R13 R14 K23 ["getFFlagAdaptiveAnimationHandRig"]
       93 CALL                             R12 1 1
       94 GETIMPORT                        R13 K25 [game]
       96 LOADK                            R15 K26 ["CoreGui"]
       97 NAMECALL                         R13 R13 K27 ["GetService"]
       99 CALL                             R13 2 1
      100 GETTABLEKS                       R14 R11 K28 ["hasSpine"]
      102 GETTABLEKS                       R15 R11 K29 ["hasPelvis"]
      104 JUMPIFNOT                        R14 ; [+3]
      105 GETTABLEKS                       R16 R11 K30 ["spineLabel"]
      107 JUMP                             ; [+5]
      108 JUMPIFNOT                        R15 ; [+3]
      109 GETIMPORT                        R16 K34 [Enum.RigLabel.Pelvis]
      111 JUMP                             ; [+1]
      112 LOADNIL                          R16
      113 GETTABLEKS                       R17 R11 K35 ["LeftToeBase"]
      115 GETTABLEKS                       R18 R11 K36 ["RightToeBase"]
      117 DUPCLOSURE                       R19 K37 [PROTO_3]
      118 CAPTURE                          VAL R9
      119 CAPTURE                          VAL R5
      120 CAPTURE                          VAL R1
      121 CAPTURE                          VAL R7
      122 CAPTURE                          VAL R3
      123 DUPCLOSURE                       R20 K38 [PROTO_7]
      124 CAPTURE                          VAL R9
      125 CAPTURE                          VAL R5
      126 CAPTURE                          VAL R1
      127 CAPTURE                          VAL R7
      128 CAPTURE                          VAL R3
      129 DUPCLOSURE                       R21 K39 [PROTO_10]
      130 CAPTURE                          VAL R5
      131 CAPTURE                          VAL R19
      132 CAPTURE                          VAL R18
      133 CAPTURE                          VAL R17
      134 CAPTURE                          VAL R16
      135 CAPTURE                          VAL R14
      136 CAPTURE                          VAL R20
      137 CAPTURE                          VAL R12
      138 CAPTURE                          VAL R6
      139 CAPTURE                          VAL R2
      140 CAPTURE                          VAL R8
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R13
      143 CAPTURE                          VAL R4
      144 RETURN                           R21 1
