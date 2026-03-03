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
        7 DUPTABLE                         R1 K25 [{"HeadBase", "Neck", "RightClavicle", "RightShoulder", "RightElbow", "RightWrist", "RightHip", "RightKnee", "RightAnkle", "RightToes", "LeftClavicle", "LeftShoulder", "LeftElbow", "LeftWrist", "LeftHip", "LeftKnee", "LeftAnkle", "LeftToes", "Chest", "Root", "Waist", "Pelvis", "RightHandDot", "LeftHandDot"}]
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
      544 GETIMPORT                        R5 K52 [Enum.RigLabel.RightToes]
      546 SETTABLEKS                       R5 R4 K27 ["jointLabel"]
      548 GETIMPORT                        R5 K43 [Vector2.new]
      550 LOADN                            R6 55
      551 LOADN                            R7 85
      552 CALL                             R5 2 1
      553 SETTABLEKS                       R5 R4 K28 ["position"]
      555 LOADB                            R5 1
      556 SETTABLEKS                       R5 R4 K29 ["optional"]
      558 GETUPVAL                         R6 1
      559 GETTABLEKS                       R5 R6 K30 ["selectedJoint"]
      561 SETTABLEKS                       R5 R4 K30 ["selectedJoint"]
      563 SETTABLEKS                       R0 R4 K0 ["rigDescriptor"]
      565 GETUPVAL                         R6 1
      566 GETTABLEKS                       R5 R6 K31 ["armedRigLabel"]
      568 SETTABLEKS                       R5 R4 K31 ["armedRigLabel"]
      570 GETUPVAL                         R6 1
      571 GETTABLEKS                       R5 R6 K32 ["onArmJoint"]
      573 SETTABLEKS                       R5 R4 K32 ["onArmJoint"]
      575 GETUPVAL                         R6 1
      576 GETTABLEKS                       R5 R6 K33 ["onMapJoint"]
      578 SETTABLEKS                       R5 R4 K33 ["onMapJoint"]
      580 GETUPVAL                         R6 1
      581 GETTABLEKS                       R5 R6 K34 ["counterpartHoveredJointName"]
      583 SETTABLEKS                       R5 R4 K34 ["counterpartHoveredJointName"]
      585 GETUPVAL                         R6 1
      586 GETTABLEKS                       R5 R6 K35 ["onDotHoverEnter"]
      588 SETTABLEKS                       R5 R4 K35 ["onDotHoverEnter"]
      590 GETUPVAL                         R6 1
      591 GETTABLEKS                       R5 R6 K36 ["onDotHoverLeave"]
      593 SETTABLEKS                       R5 R4 K36 ["onDotHoverLeave"]
      595 CALL                             R2 2 1
      596 SETTABLEKS                       R2 R1 K10 ["RightToes"]
      598 GETUPVAL                         R3 2
      599 GETTABLEKS                       R2 R3 K26 ["createElement"]
      601 GETUPVAL                         R3 3
      602 DUPTABLE                         R4 K37 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
      603 GETIMPORT                        R5 K53 [Enum.RigLabel.LeftClavicle]
      605 SETTABLEKS                       R5 R4 K27 ["jointLabel"]
      607 GETIMPORT                        R5 K43 [Vector2.new]
      609 LOADN                            R6 110
      610 LOADN                            R7 80
      611 CALL                             R5 2 1
      612 SETTABLEKS                       R5 R4 K28 ["position"]
      614 LOADB                            R5 1
      615 SETTABLEKS                       R5 R4 K29 ["optional"]
      617 GETUPVAL                         R6 1
      618 GETTABLEKS                       R5 R6 K30 ["selectedJoint"]
      620 SETTABLEKS                       R5 R4 K30 ["selectedJoint"]
      622 SETTABLEKS                       R0 R4 K0 ["rigDescriptor"]
      624 GETUPVAL                         R6 1
      625 GETTABLEKS                       R5 R6 K31 ["armedRigLabel"]
      627 SETTABLEKS                       R5 R4 K31 ["armedRigLabel"]
      629 GETUPVAL                         R6 1
      630 GETTABLEKS                       R5 R6 K32 ["onArmJoint"]
      632 SETTABLEKS                       R5 R4 K32 ["onArmJoint"]
      634 GETUPVAL                         R6 1
      635 GETTABLEKS                       R5 R6 K33 ["onMapJoint"]
      637 SETTABLEKS                       R5 R4 K33 ["onMapJoint"]
      639 GETUPVAL                         R6 1
      640 GETTABLEKS                       R5 R6 K34 ["counterpartHoveredJointName"]
      642 SETTABLEKS                       R5 R4 K34 ["counterpartHoveredJointName"]
      644 GETUPVAL                         R6 1
      645 GETTABLEKS                       R5 R6 K35 ["onDotHoverEnter"]
      647 SETTABLEKS                       R5 R4 K35 ["onDotHoverEnter"]
      649 GETUPVAL                         R6 1
      650 GETTABLEKS                       R5 R6 K36 ["onDotHoverLeave"]
      652 SETTABLEKS                       R5 R4 K36 ["onDotHoverLeave"]
      654 CALL                             R2 2 1
      655 SETTABLEKS                       R2 R1 K11 ["LeftClavicle"]
      657 GETUPVAL                         R3 2
      658 GETTABLEKS                       R2 R3 K26 ["createElement"]
      660 GETUPVAL                         R3 3
      661 DUPTABLE                         R4 K37 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
      662 GETIMPORT                        R5 K54 [Enum.RigLabel.LeftShoulder]
      664 SETTABLEKS                       R5 R4 K27 ["jointLabel"]
      666 GETIMPORT                        R5 K43 [Vector2.new]
      668 LOADN                            R6 133
      669 LOADN                            R7 84
      670 CALL                             R5 2 1
      671 SETTABLEKS                       R5 R4 K28 ["position"]
      673 LOADB                            R5 0
      674 SETTABLEKS                       R5 R4 K29 ["optional"]
      676 GETUPVAL                         R6 1
      677 GETTABLEKS                       R5 R6 K30 ["selectedJoint"]
      679 SETTABLEKS                       R5 R4 K30 ["selectedJoint"]
      681 SETTABLEKS                       R0 R4 K0 ["rigDescriptor"]
      683 GETUPVAL                         R6 1
      684 GETTABLEKS                       R5 R6 K31 ["armedRigLabel"]
      686 SETTABLEKS                       R5 R4 K31 ["armedRigLabel"]
      688 GETUPVAL                         R6 1
      689 GETTABLEKS                       R5 R6 K32 ["onArmJoint"]
      691 SETTABLEKS                       R5 R4 K32 ["onArmJoint"]
      693 GETUPVAL                         R6 1
      694 GETTABLEKS                       R5 R6 K33 ["onMapJoint"]
      696 SETTABLEKS                       R5 R4 K33 ["onMapJoint"]
      698 GETUPVAL                         R6 1
      699 GETTABLEKS                       R5 R6 K34 ["counterpartHoveredJointName"]
      701 SETTABLEKS                       R5 R4 K34 ["counterpartHoveredJointName"]
      703 GETUPVAL                         R6 1
      704 GETTABLEKS                       R5 R6 K35 ["onDotHoverEnter"]
      706 SETTABLEKS                       R5 R4 K35 ["onDotHoverEnter"]
      708 GETUPVAL                         R6 1
      709 GETTABLEKS                       R5 R6 K36 ["onDotHoverLeave"]
      711 SETTABLEKS                       R5 R4 K36 ["onDotHoverLeave"]
      713 CALL                             R2 2 1
      714 SETTABLEKS                       R2 R1 K12 ["LeftShoulder"]
      716 GETUPVAL                         R3 2
      717 GETTABLEKS                       R2 R3 K26 ["createElement"]
      719 GETUPVAL                         R3 3
      720 DUPTABLE                         R4 K37 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
      721 GETIMPORT                        R5 K55 [Enum.RigLabel.LeftElbow]
      723 SETTABLEKS                       R5 R4 K27 ["jointLabel"]
      725 GETIMPORT                        R5 K43 [Vector2.new]
      727 LOADN                            R6 144
      728 LOADN                            R7 132
      729 CALL                             R5 2 1
      730 SETTABLEKS                       R5 R4 K28 ["position"]
      732 LOADB                            R5 0
      733 SETTABLEKS                       R5 R4 K29 ["optional"]
      735 GETUPVAL                         R6 1
      736 GETTABLEKS                       R5 R6 K30 ["selectedJoint"]
      738 SETTABLEKS                       R5 R4 K30 ["selectedJoint"]
      740 SETTABLEKS                       R0 R4 K0 ["rigDescriptor"]
      742 GETUPVAL                         R6 1
      743 GETTABLEKS                       R5 R6 K31 ["armedRigLabel"]
      745 SETTABLEKS                       R5 R4 K31 ["armedRigLabel"]
      747 GETUPVAL                         R6 1
      748 GETTABLEKS                       R5 R6 K32 ["onArmJoint"]
      750 SETTABLEKS                       R5 R4 K32 ["onArmJoint"]
      752 GETUPVAL                         R6 1
      753 GETTABLEKS                       R5 R6 K33 ["onMapJoint"]
      755 SETTABLEKS                       R5 R4 K33 ["onMapJoint"]
      757 GETUPVAL                         R6 1
      758 GETTABLEKS                       R5 R6 K34 ["counterpartHoveredJointName"]
      760 SETTABLEKS                       R5 R4 K34 ["counterpartHoveredJointName"]
      762 GETUPVAL                         R6 1
      763 GETTABLEKS                       R5 R6 K35 ["onDotHoverEnter"]
      765 SETTABLEKS                       R5 R4 K35 ["onDotHoverEnter"]
      767 GETUPVAL                         R6 1
      768 GETTABLEKS                       R5 R6 K36 ["onDotHoverLeave"]
      770 SETTABLEKS                       R5 R4 K36 ["onDotHoverLeave"]
      772 CALL                             R2 2 1
      773 SETTABLEKS                       R2 R1 K13 ["LeftElbow"]
      775 GETUPVAL                         R3 2
      776 GETTABLEKS                       R2 R3 K26 ["createElement"]
      778 GETUPVAL                         R3 3
      779 DUPTABLE                         R4 K37 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
      780 GETIMPORT                        R5 K56 [Enum.RigLabel.LeftWrist]
      782 SETTABLEKS                       R5 R4 K27 ["jointLabel"]
      784 GETIMPORT                        R5 K43 [Vector2.new]
      786 LOADN                            R6 154
      787 LOADN                            R7 177
      788 CALL                             R5 2 1
      789 SETTABLEKS                       R5 R4 K28 ["position"]
      791 LOADB                            R5 0
      792 SETTABLEKS                       R5 R4 K29 ["optional"]
      794 GETUPVAL                         R6 1
      795 GETTABLEKS                       R5 R6 K30 ["selectedJoint"]
      797 SETTABLEKS                       R5 R4 K30 ["selectedJoint"]
      799 SETTABLEKS                       R0 R4 K0 ["rigDescriptor"]
      801 GETUPVAL                         R6 1
      802 GETTABLEKS                       R5 R6 K31 ["armedRigLabel"]
      804 SETTABLEKS                       R5 R4 K31 ["armedRigLabel"]
      806 GETUPVAL                         R6 1
      807 GETTABLEKS                       R5 R6 K32 ["onArmJoint"]
      809 SETTABLEKS                       R5 R4 K32 ["onArmJoint"]
      811 GETUPVAL                         R6 1
      812 GETTABLEKS                       R5 R6 K33 ["onMapJoint"]
      814 SETTABLEKS                       R5 R4 K33 ["onMapJoint"]
      816 GETUPVAL                         R6 1
      817 GETTABLEKS                       R5 R6 K34 ["counterpartHoveredJointName"]
      819 SETTABLEKS                       R5 R4 K34 ["counterpartHoveredJointName"]
      821 GETUPVAL                         R6 1
      822 GETTABLEKS                       R5 R6 K35 ["onDotHoverEnter"]
      824 SETTABLEKS                       R5 R4 K35 ["onDotHoverEnter"]
      826 GETUPVAL                         R6 1
      827 GETTABLEKS                       R5 R6 K36 ["onDotHoverLeave"]
      829 SETTABLEKS                       R5 R4 K36 ["onDotHoverLeave"]
      831 CALL                             R2 2 1
      832 SETTABLEKS                       R2 R1 K14 ["LeftWrist"]
      834 GETUPVAL                         R3 2
      835 GETTABLEKS                       R2 R3 K26 ["createElement"]
      837 GETUPVAL                         R3 3
      838 DUPTABLE                         R4 K37 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
      839 GETIMPORT                        R5 K57 [Enum.RigLabel.LeftHip]
      841 SETTABLEKS                       R5 R4 K27 ["jointLabel"]
      843 GETIMPORT                        R5 K43 [Vector2.new]
      845 LOADN                            R6 116
      846 LOADN                            R7 181
      847 CALL                             R5 2 1
      848 SETTABLEKS                       R5 R4 K28 ["position"]
      850 LOADB                            R5 0
      851 SETTABLEKS                       R5 R4 K29 ["optional"]
      853 GETUPVAL                         R6 1
      854 GETTABLEKS                       R5 R6 K30 ["selectedJoint"]
      856 SETTABLEKS                       R5 R4 K30 ["selectedJoint"]
      858 SETTABLEKS                       R0 R4 K0 ["rigDescriptor"]
      860 GETUPVAL                         R6 1
      861 GETTABLEKS                       R5 R6 K31 ["armedRigLabel"]
      863 SETTABLEKS                       R5 R4 K31 ["armedRigLabel"]
      865 GETUPVAL                         R6 1
      866 GETTABLEKS                       R5 R6 K32 ["onArmJoint"]
      868 SETTABLEKS                       R5 R4 K32 ["onArmJoint"]
      870 GETUPVAL                         R6 1
      871 GETTABLEKS                       R5 R6 K33 ["onMapJoint"]
      873 SETTABLEKS                       R5 R4 K33 ["onMapJoint"]
      875 GETUPVAL                         R6 1
      876 GETTABLEKS                       R5 R6 K34 ["counterpartHoveredJointName"]
      878 SETTABLEKS                       R5 R4 K34 ["counterpartHoveredJointName"]
      880 GETUPVAL                         R6 1
      881 GETTABLEKS                       R5 R6 K35 ["onDotHoverEnter"]
      883 SETTABLEKS                       R5 R4 K35 ["onDotHoverEnter"]
      885 GETUPVAL                         R6 1
      886 GETTABLEKS                       R5 R6 K36 ["onDotHoverLeave"]
      888 SETTABLEKS                       R5 R4 K36 ["onDotHoverLeave"]
      890 CALL                             R2 2 1
      891 SETTABLEKS                       R2 R1 K15 ["LeftHip"]
      893 GETUPVAL                         R3 2
      894 GETTABLEKS                       R2 R3 K26 ["createElement"]
      896 GETUPVAL                         R3 3
      897 DUPTABLE                         R4 K37 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
      898 GETIMPORT                        R5 K58 [Enum.RigLabel.LeftKnee]
      900 SETTABLEKS                       R5 R4 K27 ["jointLabel"]
      902 GETIMPORT                        R5 K43 [Vector2.new]
      904 LOADN                            R6 122
      905 LOADN                            R7 255
      906 CALL                             R5 2 1
      907 SETTABLEKS                       R5 R4 K28 ["position"]
      909 LOADB                            R5 0
      910 SETTABLEKS                       R5 R4 K29 ["optional"]
      912 GETUPVAL                         R6 1
      913 GETTABLEKS                       R5 R6 K30 ["selectedJoint"]
      915 SETTABLEKS                       R5 R4 K30 ["selectedJoint"]
      917 SETTABLEKS                       R0 R4 K0 ["rigDescriptor"]
      919 GETUPVAL                         R6 1
      920 GETTABLEKS                       R5 R6 K31 ["armedRigLabel"]
      922 SETTABLEKS                       R5 R4 K31 ["armedRigLabel"]
      924 GETUPVAL                         R6 1
      925 GETTABLEKS                       R5 R6 K32 ["onArmJoint"]
      927 SETTABLEKS                       R5 R4 K32 ["onArmJoint"]
      929 GETUPVAL                         R6 1
      930 GETTABLEKS                       R5 R6 K33 ["onMapJoint"]
      932 SETTABLEKS                       R5 R4 K33 ["onMapJoint"]
      934 GETUPVAL                         R6 1
      935 GETTABLEKS                       R5 R6 K34 ["counterpartHoveredJointName"]
      937 SETTABLEKS                       R5 R4 K34 ["counterpartHoveredJointName"]
      939 GETUPVAL                         R6 1
      940 GETTABLEKS                       R5 R6 K35 ["onDotHoverEnter"]
      942 SETTABLEKS                       R5 R4 K35 ["onDotHoverEnter"]
      944 GETUPVAL                         R6 1
      945 GETTABLEKS                       R5 R6 K36 ["onDotHoverLeave"]
      947 SETTABLEKS                       R5 R4 K36 ["onDotHoverLeave"]
      949 CALL                             R2 2 1
      950 SETTABLEKS                       R2 R1 K16 ["LeftKnee"]
      952 GETUPVAL                         R3 2
      953 GETTABLEKS                       R2 R3 K26 ["createElement"]
      955 GETUPVAL                         R3 3
      956 DUPTABLE                         R4 K37 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
      957 GETIMPORT                        R5 K59 [Enum.RigLabel.LeftAnkle]
      959 SETTABLEKS                       R5 R4 K27 ["jointLabel"]
      961 GETIMPORT                        R5 K43 [Vector2.new]
      963 LOADN                            R6 128
      964 LOADN                            R7 68
      965 CALL                             R5 2 1
      966 SETTABLEKS                       R5 R4 K28 ["position"]
      968 LOADB                            R5 0
      969 SETTABLEKS                       R5 R4 K29 ["optional"]
      971 GETUPVAL                         R6 1
      972 GETTABLEKS                       R5 R6 K30 ["selectedJoint"]
      974 SETTABLEKS                       R5 R4 K30 ["selectedJoint"]
      976 SETTABLEKS                       R0 R4 K0 ["rigDescriptor"]
      978 GETUPVAL                         R6 1
      979 GETTABLEKS                       R5 R6 K31 ["armedRigLabel"]
      981 SETTABLEKS                       R5 R4 K31 ["armedRigLabel"]
      983 GETUPVAL                         R6 1
      984 GETTABLEKS                       R5 R6 K32 ["onArmJoint"]
      986 SETTABLEKS                       R5 R4 K32 ["onArmJoint"]
      988 GETUPVAL                         R6 1
      989 GETTABLEKS                       R5 R6 K33 ["onMapJoint"]
      991 SETTABLEKS                       R5 R4 K33 ["onMapJoint"]
      993 GETUPVAL                         R6 1
      994 GETTABLEKS                       R5 R6 K34 ["counterpartHoveredJointName"]
      996 SETTABLEKS                       R5 R4 K34 ["counterpartHoveredJointName"]
      998 GETUPVAL                         R6 1
      999 GETTABLEKS                       R5 R6 K35 ["onDotHoverEnter"]
     1001 SETTABLEKS                       R5 R4 K35 ["onDotHoverEnter"]
     1003 GETUPVAL                         R6 1
     1004 GETTABLEKS                       R5 R6 K36 ["onDotHoverLeave"]
     1006 SETTABLEKS                       R5 R4 K36 ["onDotHoverLeave"]
     1008 CALL                             R2 2 1
     1009 SETTABLEKS                       R2 R1 K17 ["LeftAnkle"]
     1011 GETUPVAL                         R3 2
     1012 GETTABLEKS                       R2 R3 K26 ["createElement"]
     1014 GETUPVAL                         R3 3
     1015 DUPTABLE                         R4 K37 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
     1016 GETIMPORT                        R5 K60 [Enum.RigLabel.LeftToes]
     1018 SETTABLEKS                       R5 R4 K27 ["jointLabel"]
     1020 GETIMPORT                        R5 K43 [Vector2.new]
     1022 LOADN                            R6 134
     1023 LOADN                            R7 85
     1024 CALL                             R5 2 1
     1025 SETTABLEKS                       R5 R4 K28 ["position"]
     1027 LOADB                            R5 1
     1028 SETTABLEKS                       R5 R4 K29 ["optional"]
     1030 GETUPVAL                         R6 1
     1031 GETTABLEKS                       R5 R6 K30 ["selectedJoint"]
     1033 SETTABLEKS                       R5 R4 K30 ["selectedJoint"]
     1035 SETTABLEKS                       R0 R4 K0 ["rigDescriptor"]
     1037 GETUPVAL                         R6 1
     1038 GETTABLEKS                       R5 R6 K31 ["armedRigLabel"]
     1040 SETTABLEKS                       R5 R4 K31 ["armedRigLabel"]
     1042 GETUPVAL                         R6 1
     1043 GETTABLEKS                       R5 R6 K32 ["onArmJoint"]
     1045 SETTABLEKS                       R5 R4 K32 ["onArmJoint"]
     1047 GETUPVAL                         R6 1
     1048 GETTABLEKS                       R5 R6 K33 ["onMapJoint"]
     1050 SETTABLEKS                       R5 R4 K33 ["onMapJoint"]
     1052 GETUPVAL                         R6 1
     1053 GETTABLEKS                       R5 R6 K34 ["counterpartHoveredJointName"]
     1055 SETTABLEKS                       R5 R4 K34 ["counterpartHoveredJointName"]
     1057 GETUPVAL                         R6 1
     1058 GETTABLEKS                       R5 R6 K35 ["onDotHoverEnter"]
     1060 SETTABLEKS                       R5 R4 K35 ["onDotHoverEnter"]
     1062 GETUPVAL                         R6 1
     1063 GETTABLEKS                       R5 R6 K36 ["onDotHoverLeave"]
     1065 SETTABLEKS                       R5 R4 K36 ["onDotHoverLeave"]
     1067 CALL                             R2 2 1
     1068 SETTABLEKS                       R2 R1 K18 ["LeftToes"]
     1070 GETUPVAL                         R3 2
     1071 GETTABLEKS                       R2 R3 K26 ["createElement"]
     1073 GETUPVAL                         R3 3
     1074 DUPTABLE                         R4 K37 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
     1075 GETIMPORT                        R5 K61 [Enum.RigLabel.Chest]
     1077 SETTABLEKS                       R5 R4 K27 ["jointLabel"]
     1079 GETIMPORT                        R5 K43 [Vector2.new]
     1081 LOADN                            R6 96
     1082 LOADN                            R7 98
     1083 CALL                             R5 2 1
     1084 SETTABLEKS                       R5 R4 K28 ["position"]
     1086 LOADB                            R5 1
     1087 SETTABLEKS                       R5 R4 K29 ["optional"]
     1089 GETUPVAL                         R6 1
     1090 GETTABLEKS                       R5 R6 K30 ["selectedJoint"]
     1092 SETTABLEKS                       R5 R4 K30 ["selectedJoint"]
     1094 SETTABLEKS                       R0 R4 K0 ["rigDescriptor"]
     1096 GETUPVAL                         R6 1
     1097 GETTABLEKS                       R5 R6 K31 ["armedRigLabel"]
     1099 SETTABLEKS                       R5 R4 K31 ["armedRigLabel"]
     1101 GETUPVAL                         R6 1
     1102 GETTABLEKS                       R5 R6 K32 ["onArmJoint"]
     1104 SETTABLEKS                       R5 R4 K32 ["onArmJoint"]
     1106 GETUPVAL                         R6 1
     1107 GETTABLEKS                       R5 R6 K33 ["onMapJoint"]
     1109 SETTABLEKS                       R5 R4 K33 ["onMapJoint"]
     1111 GETUPVAL                         R6 1
     1112 GETTABLEKS                       R5 R6 K34 ["counterpartHoveredJointName"]
     1114 SETTABLEKS                       R5 R4 K34 ["counterpartHoveredJointName"]
     1116 GETUPVAL                         R6 1
     1117 GETTABLEKS                       R5 R6 K35 ["onDotHoverEnter"]
     1119 SETTABLEKS                       R5 R4 K35 ["onDotHoverEnter"]
     1121 GETUPVAL                         R6 1
     1122 GETTABLEKS                       R5 R6 K36 ["onDotHoverLeave"]
     1124 SETTABLEKS                       R5 R4 K36 ["onDotHoverLeave"]
     1126 CALL                             R2 2 1
     1127 SETTABLEKS                       R2 R1 K19 ["Chest"]
     1129 GETUPVAL                         R3 2
     1130 GETTABLEKS                       R2 R3 K26 ["createElement"]
     1132 GETUPVAL                         R3 3
     1133 DUPTABLE                         R4 K37 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
     1134 GETIMPORT                        R5 K62 [Enum.RigLabel.Root]
     1136 SETTABLEKS                       R5 R4 K27 ["jointLabel"]
     1138 GETIMPORT                        R5 K43 [Vector2.new]
     1140 LOADN                            R6 96
     1141 LOADN                            R7 180
     1142 CALL                             R5 2 1
     1143 SETTABLEKS                       R5 R4 K28 ["position"]
     1145 LOADB                            R5 0
     1146 SETTABLEKS                       R5 R4 K29 ["optional"]
     1148 GETUPVAL                         R6 1
     1149 GETTABLEKS                       R5 R6 K30 ["selectedJoint"]
     1151 SETTABLEKS                       R5 R4 K30 ["selectedJoint"]
     1153 SETTABLEKS                       R0 R4 K0 ["rigDescriptor"]
     1155 GETUPVAL                         R6 1
     1156 GETTABLEKS                       R5 R6 K31 ["armedRigLabel"]
     1158 SETTABLEKS                       R5 R4 K31 ["armedRigLabel"]
     1160 GETUPVAL                         R6 1
     1161 GETTABLEKS                       R5 R6 K32 ["onArmJoint"]
     1163 SETTABLEKS                       R5 R4 K32 ["onArmJoint"]
     1165 GETUPVAL                         R6 1
     1166 GETTABLEKS                       R5 R6 K33 ["onMapJoint"]
     1168 SETTABLEKS                       R5 R4 K33 ["onMapJoint"]
     1170 GETUPVAL                         R6 1
     1171 GETTABLEKS                       R5 R6 K34 ["counterpartHoveredJointName"]
     1173 SETTABLEKS                       R5 R4 K34 ["counterpartHoveredJointName"]
     1175 GETUPVAL                         R6 1
     1176 GETTABLEKS                       R5 R6 K35 ["onDotHoverEnter"]
     1178 SETTABLEKS                       R5 R4 K35 ["onDotHoverEnter"]
     1180 GETUPVAL                         R6 1
     1181 GETTABLEKS                       R5 R6 K36 ["onDotHoverLeave"]
     1183 SETTABLEKS                       R5 R4 K36 ["onDotHoverLeave"]
     1185 CALL                             R2 2 1
     1186 SETTABLEKS                       R2 R1 K20 ["Root"]
     1188 GETUPVAL                         R3 2
     1189 GETTABLEKS                       R2 R3 K26 ["createElement"]
     1191 GETUPVAL                         R3 3
     1192 DUPTABLE                         R4 K37 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
     1193 GETIMPORT                        R5 K63 [Enum.RigLabel.Waist]
     1195 SETTABLEKS                       R5 R4 K27 ["jointLabel"]
     1197 GETIMPORT                        R5 K43 [Vector2.new]
     1199 LOADN                            R6 96
     1200 LOADN                            R7 144
     1201 CALL                             R5 2 1
     1202 SETTABLEKS                       R5 R4 K28 ["position"]
     1204 LOADB                            R5 0
     1205 SETTABLEKS                       R5 R4 K29 ["optional"]
     1207 GETUPVAL                         R6 1
     1208 GETTABLEKS                       R5 R6 K30 ["selectedJoint"]
     1210 SETTABLEKS                       R5 R4 K30 ["selectedJoint"]
     1212 SETTABLEKS                       R0 R4 K0 ["rigDescriptor"]
     1214 GETUPVAL                         R6 1
     1215 GETTABLEKS                       R5 R6 K31 ["armedRigLabel"]
     1217 SETTABLEKS                       R5 R4 K31 ["armedRigLabel"]
     1219 GETUPVAL                         R6 1
     1220 GETTABLEKS                       R5 R6 K32 ["onArmJoint"]
     1222 SETTABLEKS                       R5 R4 K32 ["onArmJoint"]
     1224 GETUPVAL                         R6 1
     1225 GETTABLEKS                       R5 R6 K33 ["onMapJoint"]
     1227 SETTABLEKS                       R5 R4 K33 ["onMapJoint"]
     1229 GETUPVAL                         R6 1
     1230 GETTABLEKS                       R5 R6 K34 ["counterpartHoveredJointName"]
     1232 SETTABLEKS                       R5 R4 K34 ["counterpartHoveredJointName"]
     1234 GETUPVAL                         R6 1
     1235 GETTABLEKS                       R5 R6 K35 ["onDotHoverEnter"]
     1237 SETTABLEKS                       R5 R4 K35 ["onDotHoverEnter"]
     1239 GETUPVAL                         R6 1
     1240 GETTABLEKS                       R5 R6 K36 ["onDotHoverLeave"]
     1242 SETTABLEKS                       R5 R4 K36 ["onDotHoverLeave"]
     1244 CALL                             R2 2 1
     1245 SETTABLEKS                       R2 R1 K21 ["Waist"]
     1247 GETUPVAL                         R3 2
     1248 GETTABLEKS                       R2 R3 K26 ["createElement"]
     1250 GETUPVAL                         R3 3
     1251 DUPTABLE                         R4 K37 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
     1252 GETIMPORT                        R5 K64 [Enum.RigLabel.Pelvis]
     1254 SETTABLEKS                       R5 R4 K27 ["jointLabel"]
     1256 GETIMPORT                        R5 K43 [Vector2.new]
     1258 LOADN                            R6 96
     1259 LOADN                            R7 166
     1260 CALL                             R5 2 1
     1261 SETTABLEKS                       R5 R4 K28 ["position"]
     1263 LOADB                            R5 1
     1264 SETTABLEKS                       R5 R4 K29 ["optional"]
     1266 GETUPVAL                         R6 1
     1267 GETTABLEKS                       R5 R6 K30 ["selectedJoint"]
     1269 SETTABLEKS                       R5 R4 K30 ["selectedJoint"]
     1271 SETTABLEKS                       R0 R4 K0 ["rigDescriptor"]
     1273 GETUPVAL                         R6 1
     1274 GETTABLEKS                       R5 R6 K31 ["armedRigLabel"]
     1276 SETTABLEKS                       R5 R4 K31 ["armedRigLabel"]
     1278 GETUPVAL                         R6 1
     1279 GETTABLEKS                       R5 R6 K32 ["onArmJoint"]
     1281 SETTABLEKS                       R5 R4 K32 ["onArmJoint"]
     1283 GETUPVAL                         R6 1
     1284 GETTABLEKS                       R5 R6 K33 ["onMapJoint"]
     1286 SETTABLEKS                       R5 R4 K33 ["onMapJoint"]
     1288 GETUPVAL                         R6 1
     1289 GETTABLEKS                       R5 R6 K34 ["counterpartHoveredJointName"]
     1291 SETTABLEKS                       R5 R4 K34 ["counterpartHoveredJointName"]
     1293 GETUPVAL                         R6 1
     1294 GETTABLEKS                       R5 R6 K35 ["onDotHoverEnter"]
     1296 SETTABLEKS                       R5 R4 K35 ["onDotHoverEnter"]
     1298 GETUPVAL                         R6 1
     1299 GETTABLEKS                       R5 R6 K36 ["onDotHoverLeave"]
     1301 SETTABLEKS                       R5 R4 K36 ["onDotHoverLeave"]
     1303 CALL                             R2 2 1
     1304 SETTABLEKS                       R2 R1 K22 ["Pelvis"]
     1306 GETUPVAL                         R3 2
     1307 GETTABLEKS                       R2 R3 K26 ["createElement"]
     1309 GETUPVAL                         R3 4
     1310 DUPTABLE                         R4 K67 [{"position", "side", "rigDescriptor", "onNavigateToHand"}]
     1311 GETIMPORT                        R5 K43 [Vector2.new]
     1313 LOADN                            R6 19
     1314 LOADN                            R7 198
     1315 CALL                             R5 2 1
     1316 SETTABLEKS                       R5 R4 K28 ["position"]
     1318 LOADK                            R5 K68 ["right"]
     1319 SETTABLEKS                       R5 R4 K65 ["side"]
     1321 SETTABLEKS                       R0 R4 K0 ["rigDescriptor"]
     1323 GETUPVAL                         R6 1
     1324 GETTABLEKS                       R5 R6 K66 ["onNavigateToHand"]
     1326 SETTABLEKS                       R5 R4 K66 ["onNavigateToHand"]
     1328 CALL                             R2 2 1
     1329 SETTABLEKS                       R2 R1 K23 ["RightHandDot"]
     1331 GETUPVAL                         R3 2
     1332 GETTABLEKS                       R2 R3 K26 ["createElement"]
     1334 GETUPVAL                         R3 4
     1335 DUPTABLE                         R4 K67 [{"position", "side", "rigDescriptor", "onNavigateToHand"}]
     1336 GETIMPORT                        R5 K43 [Vector2.new]
     1338 LOADN                            R6 171
     1339 LOADN                            R7 197
     1340 CALL                             R5 2 1
     1341 SETTABLEKS                       R5 R4 K28 ["position"]
     1343 LOADK                            R5 K69 ["left"]
     1344 SETTABLEKS                       R5 R4 K65 ["side"]
     1346 SETTABLEKS                       R0 R4 K0 ["rigDescriptor"]
     1348 GETUPVAL                         R6 1
     1349 GETTABLEKS                       R5 R6 K66 ["onNavigateToHand"]
     1351 SETTABLEKS                       R5 R4 K66 ["onNavigateToHand"]
     1353 CALL                             R2 2 1
     1354 SETTABLEKS                       R2 R1 K24 ["LeftHandDot"]
     1356 RETURN                           R1 1

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
       41 NEWTABLE                         R8 0 10
       43 MOVE                             R9 R5
       44 GETTABLEKS                       R10 R0 K3 ["rigDescriptor"]
       46 GETTABLEKS                       R11 R0 K7 ["armedRigLabel"]
       48 GETTABLEKS                       R12 R0 K8 ["selectedJoint"]
       50 GETTABLEKS                       R13 R0 K9 ["counterpartHoveredJointName"]
       52 GETTABLEKS                       R14 R0 K10 ["onArmJoint"]
       54 GETTABLEKS                       R15 R0 K11 ["onMapJoint"]
       56 GETTABLEKS                       R16 R0 K12 ["onDotHoverEnter"]
       58 GETTABLEKS                       R17 R0 K13 ["onDotHoverLeave"]
       60 GETTABLEKS                       R18 R0 K14 ["onNavigateToHand"]
       62 SETLIST                          R8 R9 10 [1]
       64 CALL                             R6 2 1
       65 GETUPVAL                         R7 3
       66 CALL                             R7 0 1
       67 JUMPIF                           R7 ; [+114]
       68 JUMPIF                           R5 ; [+2]
       69 LOADNIL                          R7
       70 RETURN                           R7 1
       71 GETUPVAL                         R8 4
       72 GETTABLEKS                       R7 R8 K15 ["createPortal"]
       74 GETUPVAL                         R9 0
       75 GETTABLEKS                       R8 R9 K16 ["createElement"]
       77 LOADK                            R9 K17 ["ScreenGui"]
       78 DUPTABLE                         R10 K22 [{"Archivable", "DisplayOrder", "ZIndexBehavior", "ref"}]
       79 LOADB                            R11 0
       80 SETTABLEKS                       R11 R10 K18 ["Archivable"]
       82 GETUPVAL                         R12 5
       83 GETTABLEKS                       R11 R12 K23 ["DISPLAY_ORDER_MANNEQUIN"]
       85 SETTABLEKS                       R11 R10 K19 ["DisplayOrder"]
       87 GETIMPORT                        R11 K26 [Enum.ZIndexBehavior.Sibling]
       89 SETTABLEKS                       R11 R10 K20 ["ZIndexBehavior"]
       91 SETTABLEKS                       R2 R10 K21 ["ref"]
       93 MOVE                             R11 R1
       94 JUMPIFNOT                        R11 ; [+82]
       95 GETUPVAL                         R12 0
       96 GETTABLEKS                       R11 R12 K16 ["createElement"]
       98 GETUPVAL                         R14 6
       99 GETTABLEKS                       R13 R14 K27 ["Components"]
      101 GETTABLEKS                       R12 R13 K28 ["FoundationProviderAdapter"]
      103 DUPTABLE                         R13 K30 [{"overlayGui"}]
      104 SETTABLEKS                       R1 R13 K29 ["overlayGui"]
      106 DUPTABLE                         R14 K32 [{"Image"}]
      107 GETUPVAL                         R16 0
      108 GETTABLEKS                       R15 R16 K16 ["createElement"]
      110 GETUPVAL                         R17 7
      111 GETTABLEKS                       R16 R17 K31 ["Image"]
      113 DUPTABLE                         R17 K39 [{"Image", "aspectRatio", "tag", "Position", "sizeConstraint", "onActivated", "stateLayer"}]
      114 GETUPVAL                         R19 5
      115 GETTABLEKS                       R18 R19 K40 ["MANNEQUIN"]
      117 SETTABLEKS                       R18 R17 K31 ["Image"]
      119 LOADK                            R18 K41 [0.493472584856397]
      120 SETTABLEKS                       R18 R17 K33 ["aspectRatio"]
      122 LOADK                            R18 K42 ["anchor-top-right bg-over-media-300 size-full"]
      123 SETTABLEKS                       R18 R17 K34 ["tag"]
      125 GETIMPORT                        R18 K45 [UDim2.new]
      127 LOADN                            R19 1
      128 LOADN                            R20 240
      129 LOADN                            R21 0
      130 LOADN                            R22 18
      131 CALL                             R18 4 1
      132 SETTABLEKS                       R18 R17 K35 ["Position"]
      134 DUPTABLE                         R18 K47 [{"MaxSize"}]
      135 GETIMPORT                        R19 K49 [Vector2.new]
      137 LOADN                            R20 14
      138 LOADN                            R21 144
      139 CALL                             R19 2 1
      140 SETTABLEKS                       R19 R18 K46 ["MaxSize"]
      142 SETTABLEKS                       R18 R17 K36 ["sizeConstraint"]
      144 SETTABLEKS                       R3 R17 K37 ["onActivated"]
      146 DUPTABLE                         R18 K51 [{"affordance"}]
      147 GETUPVAL                         R22 7
      148 GETTABLEKS                       R21 R22 K52 ["Enums"]
      150 GETTABLEKS                       R20 R21 K53 ["StateLayerAffordance"]
      152 GETTABLEKS                       R19 R20 K54 ["None"]
      154 SETTABLEKS                       R19 R18 K50 ["affordance"]
      156 SETTABLEKS                       R18 R17 K38 ["stateLayer"]
      158 DUPTABLE                         R18 K56 [{"Dots"}]
      159 GETUPVAL                         R20 0
      160 GETTABLEKS                       R19 R20 K16 ["createElement"]
      162 GETUPVAL                         R21 7
      163 GETTABLEKS                       R20 R21 K57 ["View"]
      165 DUPTABLE                         R21 K58 [{"tag"}]
      166 LOADK                            R22 K59 ["size-full"]
      167 SETTABLEKS                       R22 R21 K34 ["tag"]
      169 MOVE                             R22 R6
      170 CALL                             R19 3 1
      171 SETTABLEKS                       R19 R18 K55 ["Dots"]
      173 CALL                             R15 3 1
      174 SETTABLEKS                       R15 R14 K31 ["Image"]
      176 CALL                             R11 3 1
      177 CALL                             R8 3 1
      178 GETUPVAL                         R9 8
      179 LOADK                            R10 K60 ["MannequinPanel"]
      180 CALL                             R7 3 -1
      181 RETURN                           R7 -1
      182 LOADNIL                          R7
      183 JUMPIF                           R4 ; [+233]
      184 LOADNIL                          R8
      185 LOADNIL                          R9
      186 LOADNIL                          R10
      187 GETTABLEKS                       R11 R0 K61 ["detectedHrd"]
      189 JUMPIFNOT                        R11 ; [+19]
      190 GETTABLEKS                       R11 R0 K62 ["localization"]
      192 LOADK                            R13 K63 ["Mannequin"]
      193 LOADK                            R14 K64 ["HrdDetected"]
      194 NAMECALL                         R11 R11 K65 ["getText"]
      196 CALL                             R11 3 1
      197 MOVE                             R8 R11
      198 GETTABLEKS                       R11 R0 K62 ["localization"]
      200 LOADK                            R13 K63 ["Mannequin"]
      201 LOADK                            R14 K66 ["SelectHrd"]
      202 NAMECALL                         R11 R11 K65 ["getText"]
      204 CALL                             R11 3 1
      205 MOVE                             R9 R11
      206 GETTABLEKS                       R10 R0 K67 ["onSelectHrd"]
      208 JUMP                             ; [+32]
      209 GETTABLEKS                       R11 R0 K68 ["hasHumanoid"]
      211 JUMPIFNOT                        R11 ; [+19]
      212 GETTABLEKS                       R11 R0 K62 ["localization"]
      214 LOADK                            R13 K63 ["Mannequin"]
      215 LOADK                            R14 K69 ["NoHrd"]
      216 NAMECALL                         R11 R11 K65 ["getText"]
      218 CALL                             R11 3 1
      219 MOVE                             R8 R11
      220 GETTABLEKS                       R11 R0 K62 ["localization"]
      222 LOADK                            R13 K63 ["Mannequin"]
      223 LOADK                            R14 K70 ["CreateHrd"]
      224 NAMECALL                         R11 R11 K65 ["getText"]
      226 CALL                             R11 3 1
      227 MOVE                             R9 R11
      228 GETTABLEKS                       R10 R0 K71 ["onCreateHrd"]
      230 JUMP                             ; [+10]
      231 GETTABLEKS                       R11 R0 K62 ["localization"]
      233 LOADK                            R13 K63 ["Mannequin"]
      234 LOADK                            R14 K72 ["SelectHRDPlaceholder"]
      235 NAMECALL                         R11 R11 K65 ["getText"]
      237 CALL                             R11 3 1
      238 MOVE                             R8 R11
      239 LOADNIL                          R9
      240 LOADNIL                          R10
      241 GETUPVAL                         R12 0
      242 GETTABLEKS                       R11 R12 K16 ["createElement"]
      244 GETUPVAL                         R13 7
      245 GETTABLEKS                       R12 R13 K57 ["View"]
      247 DUPTABLE                         R13 K74 [{"tag", "Size"}]
      248 LOADK                            R14 K75 ["col align-x-center align-y-center gap-small"]
      249 SETTABLEKS                       R14 R13 K34 ["tag"]
      251 GETIMPORT                        R14 K45 [UDim2.new]
      253 LOADN                            R15 1
      254 LOADN                            R16 0
      255 LOADN                            R17 1
      256 LOADN                            R18 0
      257 CALL                             R14 4 1
      258 SETTABLEKS                       R14 R13 K73 ["Size"]
      260 DUPTABLE                         R14 K79 [{"Padding", "Placeholder", "Button"}]
      261 GETUPVAL                         R16 0
      262 GETTABLEKS                       R15 R16 K16 ["createElement"]
      264 LOADK                            R16 K80 ["UIPadding"]
      265 DUPTABLE                         R17 K83 [{"PaddingLeft", "PaddingRight"}]
      266 GETIMPORT                        R18 K85 [UDim.new]
      268 LOADN                            R19 0
      269 LOADN                            R20 12
      270 CALL                             R18 2 1
      271 SETTABLEKS                       R18 R17 K81 ["PaddingLeft"]
      273 GETIMPORT                        R18 K85 [UDim.new]
      275 LOADN                            R19 0
      276 LOADN                            R20 12
      277 CALL                             R18 2 1
      278 SETTABLEKS                       R18 R17 K82 ["PaddingRight"]
      280 CALL                             R15 2 1
      281 SETTABLEKS                       R15 R14 K76 ["Padding"]
      283 GETUPVAL                         R16 0
      284 GETTABLEKS                       R15 R16 K16 ["createElement"]
      286 GETUPVAL                         R17 7
      287 GETTABLEKS                       R16 R17 K86 ["Text"]
      289 DUPTABLE                         R17 K89 [{"LayoutOrder", "tag", "Size", "AutomaticSize", "Text"}]
      290 LOADN                            R18 1
      291 SETTABLEKS                       R18 R17 K87 ["LayoutOrder"]
      293 LOADK                            R18 K90 ["text-caption-small text-center"]
      294 SETTABLEKS                       R18 R17 K34 ["tag"]
      296 GETIMPORT                        R18 K45 [UDim2.new]
      298 LOADN                            R19 1
      299 LOADN                            R20 0
      300 LOADN                            R21 0
      301 LOADN                            R22 0
      302 CALL                             R18 4 1
      303 SETTABLEKS                       R18 R17 K73 ["Size"]
      305 GETIMPORT                        R18 K92 [Enum.AutomaticSize.Y]
      307 SETTABLEKS                       R18 R17 K88 ["AutomaticSize"]
      309 SETTABLEKS                       R8 R17 K86 ["Text"]
      311 CALL                             R15 2 1
      312 SETTABLEKS                       R15 R14 K77 ["Placeholder"]
      314 JUMPIFNOT                        R10 ; [+96]
      315 GETUPVAL                         R16 0
      316 GETTABLEKS                       R15 R16 K16 ["createElement"]
      318 GETUPVAL                         R17 7
      319 GETTABLEKS                       R16 R17 K57 ["View"]
      321 DUPTABLE                         R17 K93 [{"LayoutOrder", "tag", "onActivated", "stateLayer"}]
      322 LOADN                            R18 2
      323 SETTABLEKS                       R18 R17 K87 ["LayoutOrder"]
      325 LOADK                            R18 K94 ["auto-xy bg-surface-200"]
      326 SETTABLEKS                       R18 R17 K34 ["tag"]
      328 SETTABLEKS                       R10 R17 K37 ["onActivated"]
      330 DUPTABLE                         R18 K51 [{"affordance"}]
      331 GETUPVAL                         R22 7
      332 GETTABLEKS                       R21 R22 K52 ["Enums"]
      334 GETTABLEKS                       R20 R21 K53 ["StateLayerAffordance"]
      336 GETTABLEKS                       R19 R20 K95 ["Background"]
      338 SETTABLEKS                       R19 R18 K50 ["affordance"]
      340 SETTABLEKS                       R18 R17 K38 ["stateLayer"]
      342 DUPTABLE                         R18 K97 [{"Corner", "Padding", "Text"}]
      343 GETUPVAL                         R20 0
      344 GETTABLEKS                       R19 R20 K16 ["createElement"]
      346 LOADK                            R20 K98 ["UICorner"]
      347 DUPTABLE                         R21 K100 [{"CornerRadius"}]
      348 GETIMPORT                        R22 K85 [UDim.new]
      350 LOADN                            R23 0
      351 LOADN                            R24 4
      352 CALL                             R22 2 1
      353 SETTABLEKS                       R22 R21 K99 ["CornerRadius"]
      355 CALL                             R19 2 1
      356 SETTABLEKS                       R19 R18 K96 ["Corner"]
      358 GETUPVAL                         R20 0
      359 GETTABLEKS                       R19 R20 K16 ["createElement"]
      361 LOADK                            R20 K80 ["UIPadding"]
      362 DUPTABLE                         R21 K103 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      363 GETIMPORT                        R22 K85 [UDim.new]
      365 LOADN                            R23 0
      366 LOADN                            R24 12
      367 CALL                             R22 2 1
      368 SETTABLEKS                       R22 R21 K81 ["PaddingLeft"]
      370 GETIMPORT                        R22 K85 [UDim.new]
      372 LOADN                            R23 0
      373 LOADN                            R24 12
      374 CALL                             R22 2 1
      375 SETTABLEKS                       R22 R21 K82 ["PaddingRight"]
      377 GETIMPORT                        R22 K85 [UDim.new]
      379 LOADN                            R23 0
      380 LOADN                            R24 5
      381 CALL                             R22 2 1
      382 SETTABLEKS                       R22 R21 K101 ["PaddingTop"]
      384 GETIMPORT                        R22 K85 [UDim.new]
      386 LOADN                            R23 0
      387 LOADN                            R24 5
      388 CALL                             R22 2 1
      389 SETTABLEKS                       R22 R21 K102 ["PaddingBottom"]
      391 CALL                             R19 2 1
      392 SETTABLEKS                       R19 R18 K76 ["Padding"]
      394 GETUPVAL                         R20 0
      395 GETTABLEKS                       R19 R20 K16 ["createElement"]
      397 GETUPVAL                         R21 7
      398 GETTABLEKS                       R20 R21 K86 ["Text"]
      400 DUPTABLE                         R21 K104 [{"tag", "Text"}]
      401 LOADK                            R22 K105 ["text-caption-small auto-xy"]
      402 SETTABLEKS                       R22 R21 K34 ["tag"]
      404 SETTABLEKS                       R9 R21 K86 ["Text"]
      406 CALL                             R19 2 1
      407 SETTABLEKS                       R19 R18 K86 ["Text"]
      409 CALL                             R15 3 1
      410 JUMPIF                           R15 ; [+1]
      411 LOADNIL                          R15
      412 SETTABLEKS                       R15 R14 K78 ["Button"]
      414 CALL                             R11 3 1
      415 MOVE                             R7 R11
      416 JUMP                             ; [+79]
      417 JUMPIFNOT                        R5 ; [+77]
      418 GETUPVAL                         R9 0
      419 GETTABLEKS                       R8 R9 K16 ["createElement"]
      421 GETUPVAL                         R10 7
      422 GETTABLEKS                       R9 R10 K31 ["Image"]
      424 DUPTABLE                         R10 K107 [{"Image", "aspectRatio", "Position", "AnchorPoint", "Size", "onActivated", "stateLayer"}]
      425 GETUPVAL                         R12 5
      426 GETTABLEKS                       R11 R12 K40 ["MANNEQUIN"]
      428 SETTABLEKS                       R11 R10 K31 ["Image"]
      430 DUPTABLE                         R11 K110 [{"AspectRatio", "DominantAxis"}]
      431 LOADK                            R12 K41 [0.493472584856397]
      432 SETTABLEKS                       R12 R11 K108 ["AspectRatio"]
      434 GETIMPORT                        R12 K112 [Enum.DominantAxis.Height]
      436 SETTABLEKS                       R12 R11 K109 ["DominantAxis"]
      438 SETTABLEKS                       R11 R10 K33 ["aspectRatio"]
      440 GETIMPORT                        R11 K114 [UDim2.fromScale]
      442 LOADK                            R12 K115 [0.5]
      443 LOADK                            R13 K115 [0.5]
      444 CALL                             R11 2 1
      445 SETTABLEKS                       R11 R10 K35 ["Position"]
      447 GETIMPORT                        R11 K49 [Vector2.new]
      449 LOADK                            R12 K115 [0.5]
      450 LOADK                            R13 K115 [0.5]
      451 CALL                             R11 2 1
      452 SETTABLEKS                       R11 R10 K106 ["AnchorPoint"]
      454 GETIMPORT                        R11 K45 [UDim2.new]
      456 LOADN                            R12 1
      457 LOADN                            R13 0
      458 LOADN                            R14 1
      459 LOADN                            R15 0
      460 CALL                             R11 4 1
      461 SETTABLEKS                       R11 R10 K73 ["Size"]
      463 SETTABLEKS                       R3 R10 K37 ["onActivated"]
      465 DUPTABLE                         R11 K51 [{"affordance"}]
      466 GETUPVAL                         R15 7
      467 GETTABLEKS                       R14 R15 K52 ["Enums"]
      469 GETTABLEKS                       R13 R14 K53 ["StateLayerAffordance"]
      471 GETTABLEKS                       R12 R13 K54 ["None"]
      473 SETTABLEKS                       R12 R11 K50 ["affordance"]
      475 SETTABLEKS                       R11 R10 K38 ["stateLayer"]
      477 DUPTABLE                         R11 K56 [{"Dots"}]
      478 GETUPVAL                         R13 0
      479 GETTABLEKS                       R12 R13 K16 ["createElement"]
      481 GETUPVAL                         R14 7
      482 GETTABLEKS                       R13 R14 K57 ["View"]
      484 DUPTABLE                         R14 K58 [{"tag"}]
      485 LOADK                            R15 K59 ["size-full"]
      486 SETTABLEKS                       R15 R14 K34 ["tag"]
      488 MOVE                             R15 R6
      489 CALL                             R12 3 1
      490 SETTABLEKS                       R12 R11 K55 ["Dots"]
      492 CALL                             R8 3 1
      493 MOVE                             R7 R8
      494 JUMP                             ; [+1]
      495 LOADNIL                          R7
      496 GETUPVAL                         R9 0
      497 GETTABLEKS                       R8 R9 K16 ["createElement"]
      499 GETUPVAL                         R9 9
      500 DUPTABLE                         R10 K120 [{"title", "bodyVisible", "onClose", "content"}]
      501 GETTABLEKS                       R11 R0 K62 ["localization"]
      503 LOADK                            R13 K63 ["Mannequin"]
      504 LOADK                            R14 K121 ["Title"]
      505 NAMECALL                         R11 R11 K65 ["getText"]
      507 CALL                             R11 3 1
      508 SETTABLEKS                       R11 R10 K116 ["title"]
      510 JUMPIFNOT                        R4 ; [+2]
      511 MOVE                             R11 R5
      512 JUMP                             ; [+1]
      513 LOADNIL                          R11
      514 SETTABLEKS                       R11 R10 K117 ["bodyVisible"]
      516 GETTABLEKS                       R11 R0 K118 ["onClose"]
      518 SETTABLEKS                       R11 R10 K118 ["onClose"]
      520 DUPTABLE                         R11 K123 [{"Inner"}]
      521 SETTABLEKS                       R7 R11 K122 ["Inner"]
      523 SETTABLEKS                       R11 R10 K119 ["content"]
      525 CALL                             R8 2 -1
      526 RETURN                           R8 -1

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
       80 GETTABLEKS                       R14 R0 K8 ["Src"]
       82 GETTABLEKS                       R13 R14 K21 ["Flags"]
       84 GETTABLEKS                       R12 R13 K22 ["getFFlagAdaptiveAnimationHandRig"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R12 K24 [game]
       89 LOADK                            R14 K25 ["CoreGui"]
       90 NAMECALL                         R12 R12 K26 ["GetService"]
       92 CALL                             R12 2 1
       93 DUPCLOSURE                       R13 K27 [PROTO_3]
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R5
       96 CAPTURE                          VAL R1
       97 CAPTURE                          VAL R7
       98 CAPTURE                          VAL R3
       99 DUPCLOSURE                       R14 K28 [PROTO_7]
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R5
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R3
      105 DUPCLOSURE                       R15 K29 [PROTO_10]
      106 CAPTURE                          VAL R5
      107 CAPTURE                          VAL R13
      108 CAPTURE                          VAL R14
      109 CAPTURE                          VAL R11
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R12
      115 CAPTURE                          VAL R4
      116 RETURN                           R15 1
