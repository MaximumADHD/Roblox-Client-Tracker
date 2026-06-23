PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["TypedInstanceSignals"]
        3 GETTABLEKS                       R0 R0 K1 ["properties"]
        5 GETTABLEKS                       R0 R0 K2 ["observeInstance"]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K3 ["DEPRECATED_rigDescriptor"]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K4 ["jointLabel"]
       13 GETTABLEKS                       R2 R2 K5 ["Name"]
       15 CALL                             R0 2 -1
       16 RETURN                           R0 -1

PROTO_1:
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

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 LOADNIL                          R2
        3 GETUPVAL                         R3 1
        4 CALL                             R3 0 1
        5 JUMPIFNOT                        R3 ; [+3]
        6 GETTABLEKS                       R2 R0 K0 ["mappedJoint"]
        8 JUMP                             ; [+21]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K1 ["useMemo"]
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          VAL R0
       15 NEWTABLE                         R5 0 2
       17 GETTABLEKS                       R6 R0 K2 ["DEPRECATED_rigDescriptor"]
       19 GETTABLEKS                       R7 R0 K3 ["jointLabel"]
       21 SETLIST                          R5 R6 2 [1]
       23 CALL                             R3 2 1
       24 GETUPVAL                         R4 4
       25 GETTABLEKS                       R4 R4 K4 ["useSignalState"]
       27 MOVE                             R5 R3
       28 CALL                             R4 1 1
       29 MOVE                             R2 R4
       30 LOADB                            R3 1
       31 GETTABLEKS                       R4 R0 K5 ["armedRigLabel"]
       33 GETTABLEKS                       R5 R0 K3 ["jointLabel"]
       35 JUMPIFEQ                         R4 R5 ; [+10]
       37 LOADB                            R3 0
       38 JUMPIFEQKNIL                     R2 ; [+7]
       40 GETTABLEKS                       R4 R0 K6 ["selectedJoint"]
       42 JUMPIFEQ                         R4 R2 ; [+2]
       44 LOADB                            R3 0 +1
       45 LOADB                            R3 1
       46 LOADB                            R4 0
       47 JUMPIFEQKNIL                     R2 ; [+14]
       49 LOADB                            R4 0
       50 GETTABLEKS                       R5 R0 K7 ["counterpartHoveredJointName"]
       52 JUMPIFEQKNIL                     R5 ; [+9]
       54 GETTABLEKS                       R5 R2 K8 ["Name"]
       56 GETTABLEKS                       R6 R0 K7 ["counterpartHoveredJointName"]
       58 JUMPIFEQ                         R5 R6 ; [+2]
       60 LOADB                            R4 0 +1
       61 LOADB                            R4 1
       62 GETUPVAL                         R5 2
       63 GETTABLEKS                       R5 R5 K9 ["useState"]
       65 LOADB                            R6 0
       66 CALL                             R5 1 2
       67 OR                               R7 R4 R5
       68 JUMPIFNOT                        R3 ; [+9]
       69 GETTABLEKS                       R8 R1 K10 ["Color"]
       71 GETTABLEKS                       R8 R8 K11 ["Extended"]
       73 GETTABLEKS                       R8 R8 K12 ["Blue"]
       75 GETTABLEKS                       R8 R8 K13 ["Blue_600"]
       77 JUMP                             ; [+40]
       78 JUMPIFNOT                        R7 ; [+20]
       79 JUMPIFEQKNIL                     R2 ; [+10]
       81 GETTABLEKS                       R8 R1 K10 ["Color"]
       83 GETTABLEKS                       R8 R8 K11 ["Extended"]
       85 GETTABLEKS                       R8 R8 K14 ["Orange"]
       87 GETTABLEKS                       R8 R8 K15 ["Orange_600"]
       89 JUMP                             ; [+28]
       90 GETTABLEKS                       R8 R1 K10 ["Color"]
       92 GETTABLEKS                       R8 R8 K11 ["Extended"]
       94 GETTABLEKS                       R8 R8 K16 ["Gray"]
       96 GETTABLEKS                       R8 R8 K17 ["Gray_500"]
       98 JUMP                             ; [+19]
       99 JUMPIFEQKNIL                     R2 ; [+10]
      101 GETTABLEKS                       R8 R1 K10 ["Color"]
      103 GETTABLEKS                       R8 R8 K11 ["Extended"]
      105 GETTABLEKS                       R8 R8 K14 ["Orange"]
      107 GETTABLEKS                       R8 R8 K18 ["Orange_800"]
      109 JUMP                             ; [+8]
      110 GETTABLEKS                       R8 R1 K10 ["Color"]
      112 GETTABLEKS                       R8 R8 K11 ["Extended"]
      114 GETTABLEKS                       R8 R8 K16 ["Gray"]
      116 GETTABLEKS                       R8 R8 K19 ["Gray_600"]
      118 GETIMPORT                        R9 K22 [table.clone]
      120 MOVE                             R10 R8
      121 CALL                             R9 1 1
      122 LOADK                            R10 K23 [0.3]
      123 SETTABLEKS                       R10 R9 K24 ["Transparency"]
      125 GETTABLEKS                       R11 R0 K25 ["optional"]
      127 JUMPIFNOT                        R11 ; [+16]
      128 JUMPIF                           R3 ; [+15]
      129 JUMPIF                           R7 ; [+14]
      130 GETUPVAL                         R11 5
      131 CALL                             R11 0 1
      132 JUMPIFNOT                        R11 ; [+2]
      133 JUMPIFNOTEQKNIL                  R2 ; [+10]
      135 GETTABLEKS                       R10 R1 K10 ["Color"]
      137 GETTABLEKS                       R10 R10 K11 ["Extended"]
      139 GETTABLEKS                       R10 R10 K16 ["Gray"]
      141 GETTABLEKS                       R10 R10 K17 ["Gray_500"]
      143 JUMP                             ; [+1]
      144 MOVE                             R10 R9
      145 GETUPVAL                         R11 2
      146 GETTABLEKS                       R11 R11 K26 ["useCallback"]
      148 NEWCLOSURE                       R12 P1
      149 CAPTURE                          VAL R0
      150 NEWTABLE                         R13 0 5
      152 GETTABLEKS                       R14 R0 K3 ["jointLabel"]
      154 GETTABLEKS                       R15 R0 K6 ["selectedJoint"]
      156 GETTABLEKS                       R16 R0 K5 ["armedRigLabel"]
      158 GETTABLEKS                       R17 R0 K27 ["onMapJoint"]
      160 GETTABLEKS                       R18 R0 K28 ["onArmJoint"]
      162 SETLIST                          R13 R14 5 [1]
      164 CALL                             R11 2 1
      165 GETUPVAL                         R12 2
      166 GETTABLEKS                       R12 R12 K29 ["createElement"]
      168 GETUPVAL                         R13 6
      169 GETTABLEKS                       R13 R13 K30 ["View"]
      171 DUPTABLE                         R14 K36 [{"tag", "Position", "onActivated", "onStateChanged", "stateLayer"}]
      172 LOADK                            R15 K37 ["auto-xy anchor-center-center"]
      173 SETTABLEKS                       R15 R14 K31 ["tag"]
      175 GETIMPORT                        R15 K40 [UDim2.fromScale]
      177 GETTABLEKS                       R17 R0 K42 ["position"]
      179 GETTABLEKS                       R17 R17 K43 ["X"]
      181 DIVK                             R16 R17 K41 [189]
      182 GETTABLEKS                       R18 R0 K42 ["position"]
      184 GETTABLEKS                       R18 R18 K45 ["Y"]
      186 DIVK                             R17 R18 K44 [383]
      187 CALL                             R15 2 1
      188 SETTABLEKS                       R15 R14 K32 ["Position"]
      190 SETTABLEKS                       R11 R14 K33 ["onActivated"]
      192 GETUPVAL                         R15 2
      193 GETTABLEKS                       R15 R15 K26 ["useCallback"]
      195 NEWCLOSURE                       R16 P2
      196 CAPTURE                          VAL R6
      197 CAPTURE                          REF R2
      198 CAPTURE                          VAL R0
      199 NEWTABLE                         R17 0 3
      201 MOVE                             R18 R2
      202 GETTABLEKS                       R19 R0 K46 ["onDotHoverEnter"]
      204 GETTABLEKS                       R20 R0 K47 ["onDotHoverLeave"]
      206 SETLIST                          R17 R18 3 [1]
      208 CALL                             R15 2 1
      209 SETTABLEKS                       R15 R14 K34 ["onStateChanged"]
      211 DUPTABLE                         R15 K49 [{"affordance"}]
      212 GETUPVAL                         R16 6
      213 GETTABLEKS                       R16 R16 K50 ["Enums"]
      215 GETTABLEKS                       R16 R16 K51 ["StateLayerAffordance"]
      217 GETTABLEKS                       R16 R16 K52 ["None"]
      219 SETTABLEKS                       R16 R15 K48 ["affordance"]
      221 SETTABLEKS                       R15 R14 K35 ["stateLayer"]
      223 DUPTABLE                         R15 K54 [{"Tooltip"}]
      224 GETUPVAL                         R16 2
      225 GETTABLEKS                       R16 R16 K29 ["createElement"]
      227 GETUPVAL                         R17 6
      228 GETTABLEKS                       R17 R17 K53 ["Tooltip"]
      230 DUPTABLE                         R18 K58 [{"title", "align", "side"}]
      231 GETTABLEKS                       R19 R0 K3 ["jointLabel"]
      233 GETTABLEKS                       R19 R19 K8 ["Name"]
      235 SETTABLEKS                       R19 R18 K55 ["title"]
      237 GETUPVAL                         R19 6
      238 GETTABLEKS                       R19 R19 K50 ["Enums"]
      240 GETTABLEKS                       R19 R19 K59 ["PopoverAlign"]
      242 GETTABLEKS                       R19 R19 K60 ["Center"]
      244 SETTABLEKS                       R19 R18 K56 ["align"]
      246 GETUPVAL                         R19 6
      247 GETTABLEKS                       R19 R19 K50 ["Enums"]
      249 GETTABLEKS                       R19 R19 K61 ["PopoverSide"]
      251 GETTABLEKS                       R19 R19 K62 ["Top"]
      253 SETTABLEKS                       R19 R18 K57 ["side"]
      255 GETUPVAL                         R19 2
      256 GETTABLEKS                       R19 R19 K29 ["createElement"]
      258 GETUPVAL                         R20 6
      259 GETTABLEKS                       R20 R20 K30 ["View"]
      261 DUPTABLE                         R21 K66 [{"Size", "backgroundStyle", "stroke"}]
      262 JUMPIFNOT                        R7 ; [+8]
      263 GETIMPORT                        R22 K68 [UDim2.new]
      265 LOADN                            R23 0
      266 LOADN                            R24 14
      267 LOADN                            R25 0
      268 LOADN                            R26 14
      269 CALL                             R22 4 1
      270 JUMP                             ; [+7]
      271 GETIMPORT                        R22 K68 [UDim2.new]
      273 LOADN                            R23 0
      274 LOADN                            R24 10
      275 LOADN                            R25 0
      276 LOADN                            R26 10
      277 CALL                             R22 4 1
      278 SETTABLEKS                       R22 R21 K63 ["Size"]
      280 SETTABLEKS                       R10 R21 K64 ["backgroundStyle"]
      282 DUPTABLE                         R22 K70 [{"Color", "Thickness"}]
      283 GETTABLEKS                       R23 R9 K71 ["Color3"]
      285 SETTABLEKS                       R23 R22 K10 ["Color"]
      287 JUMPIFNOT                        R7 ; [+2]
      288 LOADN                            R23 2
      289 JUMP                             ; [+1]
      290 LOADN                            R23 1
      291 SETTABLEKS                       R23 R22 K69 ["Thickness"]
      293 SETTABLEKS                       R22 R21 K65 ["stroke"]
      295 DUPTABLE                         R22 K73 [{"UICorner"}]
      296 GETUPVAL                         R23 2
      297 GETTABLEKS                       R23 R23 K29 ["createElement"]
      299 LOADK                            R24 K72 ["UICorner"]
      300 DUPTABLE                         R25 K75 [{"CornerRadius"}]
      301 GETIMPORT                        R26 K77 [UDim.new]
      303 LOADN                            R27 0
      304 LOADN                            R28 15
      305 CALL                             R26 2 1
      306 SETTABLEKS                       R26 R25 K74 ["CornerRadius"]
      308 CALL                             R23 2 1
      309 SETTABLEKS                       R23 R22 K72 ["UICorner"]
      311 CALL                             R19 3 -1
      312 CALL                             R16 -1 1
      313 SETTABLEKS                       R16 R15 K53 ["Tooltip"]
      315 CALL                             R12 3 -1
      316 CLOSEUPVALS                      R2
      317 RETURN                           R12 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["TypedInstanceSignals"]
        3 GETTABLEKS                       R0 R0 K1 ["properties"]
        5 GETTABLEKS                       R0 R0 K2 ["observeInstance"]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K3 ["DEPRECATED_rigDescriptor"]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K4 ["Name"]
       13 CALL                             R0 2 -1
       14 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onNavigateToHand"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 CALL                             R0 0 1
        7 JUMPIF                           R0 ; [+2]
        8 GETUPVAL                         R0 2
        9 JUMPIFNOT                        R0 ; [+7]
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K0 ["onNavigateToHand"]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K1 ["side"]
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

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
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K1 ["useState"]
       10 LOADB                            R3 0
       11 CALL                             R2 1 2
       12 LOADNIL                          R4
       13 GETUPVAL                         R5 2
       14 CALL                             R5 0 1
       15 JUMPIFNOT                        R5 ; [+3]
       16 GETTABLEKS                       R4 R0 K2 ["isMapped"]
       18 JUMP                             ; [+34]
       19 GETTABLEKS                       R6 R0 K3 ["side"]
       21 JUMPIFNOTEQKS                    R6 K4 ["right"] ; [+4]
       23 GETIMPORT                        R5 K8 [Enum.RigLabel.RightWrist]
       25 JUMP                             ; [+2]
       26 GETIMPORT                        R5 K10 [Enum.RigLabel.LeftWrist]
       28 GETUPVAL                         R6 1
       29 GETTABLEKS                       R6 R6 K11 ["useMemo"]
       31 NEWCLOSURE                       R7 P0
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R5
       35 NEWTABLE                         R8 0 2
       37 GETTABLEKS                       R9 R0 K12 ["DEPRECATED_rigDescriptor"]
       39 GETTABLEKS                       R10 R0 K3 ["side"]
       41 SETLIST                          R8 R9 2 [1]
       43 CALL                             R6 2 1
       44 GETUPVAL                         R7 4
       45 GETTABLEKS                       R7 R7 K13 ["useSignalState"]
       47 MOVE                             R8 R6
       48 CALL                             R7 1 1
       49 JUMPIFNOTEQKNIL                  R7 ; [+2]
       51 LOADB                            R4 0 +1
       52 LOADB                            R4 1
       53 GETUPVAL                         R5 5
       54 GETTABLEKS                       R6 R0 K14 ["rigDescriptor"]
       56 GETTABLEKS                       R7 R0 K3 ["side"]
       58 CALL                             R5 2 1
       59 JUMPIF                           R4 ; [+9]
       60 GETTABLEKS                       R6 R1 K15 ["Color"]
       62 GETTABLEKS                       R6 R6 K16 ["Extended"]
       64 GETTABLEKS                       R6 R6 K17 ["Gray"]
       66 GETTABLEKS                       R6 R6 K18 ["Gray_600"]
       68 JUMP                             ; [+18]
       69 JUMPIFNOT                        R2 ; [+9]
       70 GETTABLEKS                       R6 R1 K15 ["Color"]
       72 GETTABLEKS                       R6 R6 K16 ["Extended"]
       74 GETTABLEKS                       R6 R6 K19 ["Orange"]
       76 GETTABLEKS                       R6 R6 K20 ["Orange_600"]
       78 JUMP                             ; [+8]
       79 GETTABLEKS                       R6 R1 K15 ["Color"]
       81 GETTABLEKS                       R6 R6 K16 ["Extended"]
       83 GETTABLEKS                       R6 R6 K19 ["Orange"]
       85 GETTABLEKS                       R6 R6 K21 ["Orange_800"]
       87 GETIMPORT                        R7 K24 [table.clone]
       89 MOVE                             R8 R6
       90 CALL                             R7 1 1
       91 LOADK                            R8 K25 [0.3]
       92 SETTABLEKS                       R8 R7 K26 ["Transparency"]
       94 GETUPVAL                         R8 1
       95 GETTABLEKS                       R8 R8 K27 ["useCallback"]
       97 NEWCLOSURE                       R9 P1
       98 CAPTURE                          VAL R0
       99 CAPTURE                          UPVAL U6
      100 CAPTURE                          REF R4
      101 NEWTABLE                         R10 0 3
      103 MOVE                             R11 R4
      104 GETTABLEKS                       R12 R0 K3 ["side"]
      106 GETTABLEKS                       R13 R0 K0 ["onNavigateToHand"]
      108 SETLIST                          R10 R11 3 [1]
      110 CALL                             R8 2 1
      111 GETUPVAL                         R9 1
      112 GETTABLEKS                       R9 R9 K28 ["createElement"]
      114 GETUPVAL                         R10 7
      115 GETTABLEKS                       R10 R10 K29 ["View"]
      117 DUPTABLE                         R11 K35 [{"tag", "Position", "onActivated", "onStateChanged", "stateLayer"}]
      118 LOADK                            R12 K36 ["auto-xy anchor-center-center"]
      119 SETTABLEKS                       R12 R11 K30 ["tag"]
      121 GETIMPORT                        R12 K39 [UDim2.fromScale]
      123 GETTABLEKS                       R14 R0 K41 ["position"]
      125 GETTABLEKS                       R14 R14 K42 ["X"]
      127 DIVK                             R13 R14 K40 [189]
      128 GETTABLEKS                       R15 R0 K41 ["position"]
      130 GETTABLEKS                       R15 R15 K44 ["Y"]
      132 DIVK                             R14 R15 K43 [383]
      133 CALL                             R12 2 1
      134 SETTABLEKS                       R12 R11 K31 ["Position"]
      136 SETTABLEKS                       R8 R11 K32 ["onActivated"]
      138 GETUPVAL                         R12 1
      139 GETTABLEKS                       R12 R12 K27 ["useCallback"]
      141 NEWCLOSURE                       R13 P2
      142 CAPTURE                          VAL R3
      143 NEWTABLE                         R14 0 0
      145 CALL                             R12 2 1
      146 SETTABLEKS                       R12 R11 K33 ["onStateChanged"]
      148 DUPTABLE                         R12 K46 [{"affordance"}]
      149 GETUPVAL                         R13 7
      150 GETTABLEKS                       R13 R13 K47 ["Enums"]
      152 GETTABLEKS                       R13 R13 K48 ["StateLayerAffordance"]
      154 GETTABLEKS                       R13 R13 K49 ["None"]
      156 SETTABLEKS                       R13 R12 K45 ["affordance"]
      158 SETTABLEKS                       R12 R11 K34 ["stateLayer"]
      160 DUPTABLE                         R12 K51 [{"Tooltip"}]
      161 GETUPVAL                         R13 1
      162 GETTABLEKS                       R13 R13 K28 ["createElement"]
      164 GETUPVAL                         R14 7
      165 GETTABLEKS                       R14 R14 K50 ["Tooltip"]
      167 DUPTABLE                         R15 K54 [{"title", "align", "side"}]
      168 GETTABLEKS                       R17 R0 K3 ["side"]
      170 JUMPIFNOTEQKS                    R17 K4 ["right"] ; [+3]
      172 LOADK                            R16 K55 ["Right Hand"]
      173 JUMP                             ; [+1]
      174 LOADK                            R16 K56 ["Left Hand"]
      175 SETTABLEKS                       R16 R15 K52 ["title"]
      177 GETUPVAL                         R16 7
      178 GETTABLEKS                       R16 R16 K47 ["Enums"]
      180 GETTABLEKS                       R16 R16 K57 ["PopoverAlign"]
      182 GETTABLEKS                       R16 R16 K58 ["Center"]
      184 SETTABLEKS                       R16 R15 K53 ["align"]
      186 GETUPVAL                         R16 7
      187 GETTABLEKS                       R16 R16 K47 ["Enums"]
      189 GETTABLEKS                       R16 R16 K59 ["PopoverSide"]
      191 GETTABLEKS                       R16 R16 K60 ["Top"]
      193 SETTABLEKS                       R16 R15 K3 ["side"]
      195 GETUPVAL                         R17 6
      196 CALL                             R17 0 1
      197 JUMPIFNOT                        R17 ; [+40]
      198 GETUPVAL                         R16 1
      199 GETTABLEKS                       R16 R16 K28 ["createElement"]
      201 LOADK                            R17 K61 ["ImageLabel"]
      202 DUPTABLE                         R18 K67 [{"Size", "Image", "ImageTransparency", "BackgroundTransparency", "ScaleType"}]
      203 JUMPIFNOT                        R2 ; [+8]
      204 GETIMPORT                        R19 K69 [UDim2.new]
      206 LOADN                            R20 0
      207 LOADN                            R21 18
      208 LOADN                            R22 0
      209 LOADN                            R23 18
      210 CALL                             R19 4 1
      211 JUMP                             ; [+7]
      212 GETIMPORT                        R19 K69 [UDim2.new]
      214 LOADN                            R20 0
      215 LOADN                            R21 14
      216 LOADN                            R22 0
      217 LOADN                            R23 14
      218 CALL                             R19 4 1
      219 SETTABLEKS                       R19 R18 K62 ["Size"]
      221 SETTABLEKS                       R5 R18 K63 ["Image"]
      223 JUMPIFNOT                        R2 ; [+2]
      224 LOADN                            R19 0
      225 JUMP                             ; [+1]
      226 LOADK                            R19 K70 [0.2]
      227 SETTABLEKS                       R19 R18 K64 ["ImageTransparency"]
      229 LOADN                            R19 1
      230 SETTABLEKS                       R19 R18 K65 ["BackgroundTransparency"]
      232 GETIMPORT                        R19 K72 [Enum.ScaleType.Fit]
      234 SETTABLEKS                       R19 R18 K66 ["ScaleType"]
      236 CALL                             R16 2 1
      237 JUMP                             ; [+57]
      238 GETUPVAL                         R16 1
      239 GETTABLEKS                       R16 R16 K28 ["createElement"]
      241 GETUPVAL                         R17 7
      242 GETTABLEKS                       R17 R17 K29 ["View"]
      244 DUPTABLE                         R18 K75 [{"Size", "backgroundStyle", "stroke"}]
      245 JUMPIFNOT                        R2 ; [+8]
      246 GETIMPORT                        R19 K69 [UDim2.new]
      248 LOADN                            R20 0
      249 LOADN                            R21 14
      250 LOADN                            R22 0
      251 LOADN                            R23 14
      252 CALL                             R19 4 1
      253 JUMP                             ; [+7]
      254 GETIMPORT                        R19 K69 [UDim2.new]
      256 LOADN                            R20 0
      257 LOADN                            R21 10
      258 LOADN                            R22 0
      259 LOADN                            R23 10
      260 CALL                             R19 4 1
      261 SETTABLEKS                       R19 R18 K62 ["Size"]
      263 SETTABLEKS                       R6 R18 K73 ["backgroundStyle"]
      265 DUPTABLE                         R19 K77 [{"Color", "Thickness"}]
      266 GETTABLEKS                       R20 R7 K78 ["Color3"]
      268 SETTABLEKS                       R20 R19 K15 ["Color"]
      270 JUMPIFNOT                        R2 ; [+2]
      271 LOADN                            R20 2
      272 JUMP                             ; [+1]
      273 LOADN                            R20 1
      274 SETTABLEKS                       R20 R19 K76 ["Thickness"]
      276 SETTABLEKS                       R19 R18 K74 ["stroke"]
      278 DUPTABLE                         R19 K80 [{"UICorner"}]
      279 GETUPVAL                         R20 1
      280 GETTABLEKS                       R20 R20 K28 ["createElement"]
      282 LOADK                            R21 K79 ["UICorner"]
      283 DUPTABLE                         R22 K82 [{"CornerRadius"}]
      284 GETIMPORT                        R23 K84 [UDim.new]
      286 LOADN                            R24 0
      287 LOADN                            R25 15
      288 CALL                             R23 2 1
      289 SETTABLEKS                       R23 R22 K81 ["CornerRadius"]
      291 CALL                             R20 2 1
      292 SETTABLEKS                       R20 R19 K79 ["UICorner"]
      294 CALL                             R16 3 1
      295 CALL                             R13 3 1
      296 SETTABLEKS                       R13 R12 K50 ["Tooltip"]
      298 CALL                             R9 3 -1
      299 CLOSEUPVALS                      R4
      300 RETURN                           R9 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onClear"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+2]
        3 GETUPVAL                         R0 1
        4 JUMPIF                           R0 ; [+3]
        5 NEWTABLE                         R0 0 0
        7 RETURN                           R0 1
        8 NEWTABLE                         R0 0 0
       10 GETUPVAL                         R1 1
       11 LOADNIL                          R2
       12 LOADNIL                          R3
       13 FORGPREP                         R1
       14 SETTABLE                         R4 R0 R5
       15 FORGLOOP                         R1 2 ; [-2]
       17 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 CALL                             R2 0 1
        7 JUMPIF                           R2 ; [+4]
        8 GETUPVAL                         R1 3
        9 GETTABLEKS                       R1 R1 K0 ["rigDescriptor"]
       11 JUMP                             ; [+1]
       12 LOADNIL                          R1
       13 DUPTABLE                         R2 K25 [{"HeadBase", "Neck", "RightClavicle", "RightShoulder", "RightElbow", "RightWrist", "RightHip", "RightKnee", "RightAnkle", "RightToeBase", "LeftClavicle", "LeftShoulder", "LeftElbow", "LeftWrist", "LeftHip", "LeftKnee", "LeftAnkle", "LeftToeBase", "Chest", "Root", "Waist", "Spine", "RightHandDot", "LeftHandDot"}]
       14 GETUPVAL                         R3 4
       15 GETTABLEKS                       R3 R3 K26 ["createElement"]
       17 GETUPVAL                         R4 5
       18 DUPTABLE                         R5 K39 [{"jointLabel", "position", "optional", "selectedJoint", "mappedJoint", "DEPRECATED_rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
       19 GETIMPORT                        R6 K42 [Enum.RigLabel.HeadBase]
       21 SETTABLEKS                       R6 R5 K27 ["jointLabel"]
       23 GETIMPORT                        R6 K45 [Vector2.new]
       25 LOADN                            R7 96
       26 LOADN                            R8 40
       27 CALL                             R6 2 1
       28 SETTABLEKS                       R6 R5 K28 ["position"]
       30 LOADB                            R6 1
       31 SETTABLEKS                       R6 R5 K29 ["optional"]
       33 GETUPVAL                         R6 3
       34 GETTABLEKS                       R6 R6 K30 ["selectedJoint"]
       36 SETTABLEKS                       R6 R5 K30 ["selectedJoint"]
       38 GETIMPORT                        R7 K42 [Enum.RigLabel.HeadBase]
       40 GETTABLE                         R6 R0 R7
       41 SETTABLEKS                       R6 R5 K31 ["mappedJoint"]
       43 SETTABLEKS                       R1 R5 K32 ["DEPRECATED_rigDescriptor"]
       45 GETUPVAL                         R6 3
       46 GETTABLEKS                       R6 R6 K33 ["armedRigLabel"]
       48 SETTABLEKS                       R6 R5 K33 ["armedRigLabel"]
       50 GETUPVAL                         R6 3
       51 GETTABLEKS                       R6 R6 K34 ["onArmJoint"]
       53 SETTABLEKS                       R6 R5 K34 ["onArmJoint"]
       55 GETUPVAL                         R6 3
       56 GETTABLEKS                       R6 R6 K35 ["onMapJoint"]
       58 SETTABLEKS                       R6 R5 K35 ["onMapJoint"]
       60 GETUPVAL                         R6 3
       61 GETTABLEKS                       R6 R6 K36 ["counterpartHoveredJointName"]
       63 SETTABLEKS                       R6 R5 K36 ["counterpartHoveredJointName"]
       65 GETUPVAL                         R6 3
       66 GETTABLEKS                       R6 R6 K37 ["onDotHoverEnter"]
       68 SETTABLEKS                       R6 R5 K37 ["onDotHoverEnter"]
       70 GETUPVAL                         R6 3
       71 GETTABLEKS                       R6 R6 K38 ["onDotHoverLeave"]
       73 SETTABLEKS                       R6 R5 K38 ["onDotHoverLeave"]
       75 CALL                             R3 2 1
       76 SETTABLEKS                       R3 R2 K1 ["HeadBase"]
       78 GETUPVAL                         R3 4
       79 GETTABLEKS                       R3 R3 K26 ["createElement"]
       81 GETUPVAL                         R4 5
       82 DUPTABLE                         R5 K39 [{"jointLabel", "position", "optional", "selectedJoint", "mappedJoint", "DEPRECATED_rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
       83 GETIMPORT                        R6 K46 [Enum.RigLabel.Neck]
       85 SETTABLEKS                       R6 R5 K27 ["jointLabel"]
       87 GETIMPORT                        R6 K45 [Vector2.new]
       89 LOADN                            R7 96
       90 LOADN                            R8 68
       91 CALL                             R6 2 1
       92 SETTABLEKS                       R6 R5 K28 ["position"]
       94 LOADB                            R6 0
       95 SETTABLEKS                       R6 R5 K29 ["optional"]
       97 GETUPVAL                         R6 3
       98 GETTABLEKS                       R6 R6 K30 ["selectedJoint"]
      100 SETTABLEKS                       R6 R5 K30 ["selectedJoint"]
      102 GETIMPORT                        R7 K46 [Enum.RigLabel.Neck]
      104 GETTABLE                         R6 R0 R7
      105 SETTABLEKS                       R6 R5 K31 ["mappedJoint"]
      107 SETTABLEKS                       R1 R5 K32 ["DEPRECATED_rigDescriptor"]
      109 GETUPVAL                         R6 3
      110 GETTABLEKS                       R6 R6 K33 ["armedRigLabel"]
      112 SETTABLEKS                       R6 R5 K33 ["armedRigLabel"]
      114 GETUPVAL                         R6 3
      115 GETTABLEKS                       R6 R6 K34 ["onArmJoint"]
      117 SETTABLEKS                       R6 R5 K34 ["onArmJoint"]
      119 GETUPVAL                         R6 3
      120 GETTABLEKS                       R6 R6 K35 ["onMapJoint"]
      122 SETTABLEKS                       R6 R5 K35 ["onMapJoint"]
      124 GETUPVAL                         R6 3
      125 GETTABLEKS                       R6 R6 K36 ["counterpartHoveredJointName"]
      127 SETTABLEKS                       R6 R5 K36 ["counterpartHoveredJointName"]
      129 GETUPVAL                         R6 3
      130 GETTABLEKS                       R6 R6 K37 ["onDotHoverEnter"]
      132 SETTABLEKS                       R6 R5 K37 ["onDotHoverEnter"]
      134 GETUPVAL                         R6 3
      135 GETTABLEKS                       R6 R6 K38 ["onDotHoverLeave"]
      137 SETTABLEKS                       R6 R5 K38 ["onDotHoverLeave"]
      139 CALL                             R3 2 1
      140 SETTABLEKS                       R3 R2 K2 ["Neck"]
      142 GETUPVAL                         R3 4
      143 GETTABLEKS                       R3 R3 K26 ["createElement"]
      145 GETUPVAL                         R4 5
      146 DUPTABLE                         R5 K39 [{"jointLabel", "position", "optional", "selectedJoint", "mappedJoint", "DEPRECATED_rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
      147 GETIMPORT                        R6 K47 [Enum.RigLabel.RightClavicle]
      149 SETTABLEKS                       R6 R5 K27 ["jointLabel"]
      151 GETIMPORT                        R6 K45 [Vector2.new]
      153 LOADN                            R7 82
      154 LOADN                            R8 80
      155 CALL                             R6 2 1
      156 SETTABLEKS                       R6 R5 K28 ["position"]
      158 LOADB                            R6 1
      159 SETTABLEKS                       R6 R5 K29 ["optional"]
      161 GETUPVAL                         R6 3
      162 GETTABLEKS                       R6 R6 K30 ["selectedJoint"]
      164 SETTABLEKS                       R6 R5 K30 ["selectedJoint"]
      166 GETIMPORT                        R7 K47 [Enum.RigLabel.RightClavicle]
      168 GETTABLE                         R6 R0 R7
      169 SETTABLEKS                       R6 R5 K31 ["mappedJoint"]
      171 SETTABLEKS                       R1 R5 K32 ["DEPRECATED_rigDescriptor"]
      173 GETUPVAL                         R6 3
      174 GETTABLEKS                       R6 R6 K33 ["armedRigLabel"]
      176 SETTABLEKS                       R6 R5 K33 ["armedRigLabel"]
      178 GETUPVAL                         R6 3
      179 GETTABLEKS                       R6 R6 K34 ["onArmJoint"]
      181 SETTABLEKS                       R6 R5 K34 ["onArmJoint"]
      183 GETUPVAL                         R6 3
      184 GETTABLEKS                       R6 R6 K35 ["onMapJoint"]
      186 SETTABLEKS                       R6 R5 K35 ["onMapJoint"]
      188 GETUPVAL                         R6 3
      189 GETTABLEKS                       R6 R6 K36 ["counterpartHoveredJointName"]
      191 SETTABLEKS                       R6 R5 K36 ["counterpartHoveredJointName"]
      193 GETUPVAL                         R6 3
      194 GETTABLEKS                       R6 R6 K37 ["onDotHoverEnter"]
      196 SETTABLEKS                       R6 R5 K37 ["onDotHoverEnter"]
      198 GETUPVAL                         R6 3
      199 GETTABLEKS                       R6 R6 K38 ["onDotHoverLeave"]
      201 SETTABLEKS                       R6 R5 K38 ["onDotHoverLeave"]
      203 CALL                             R3 2 1
      204 SETTABLEKS                       R3 R2 K3 ["RightClavicle"]
      206 GETUPVAL                         R3 4
      207 GETTABLEKS                       R3 R3 K26 ["createElement"]
      209 GETUPVAL                         R4 5
      210 DUPTABLE                         R5 K39 [{"jointLabel", "position", "optional", "selectedJoint", "mappedJoint", "DEPRECATED_rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
      211 GETIMPORT                        R6 K48 [Enum.RigLabel.RightShoulder]
      213 SETTABLEKS                       R6 R5 K27 ["jointLabel"]
      215 GETIMPORT                        R6 K45 [Vector2.new]
      217 LOADN                            R7 58
      218 LOADN                            R8 84
      219 CALL                             R6 2 1
      220 SETTABLEKS                       R6 R5 K28 ["position"]
      222 LOADB                            R6 0
      223 SETTABLEKS                       R6 R5 K29 ["optional"]
      225 GETUPVAL                         R6 3
      226 GETTABLEKS                       R6 R6 K30 ["selectedJoint"]
      228 SETTABLEKS                       R6 R5 K30 ["selectedJoint"]
      230 GETIMPORT                        R7 K48 [Enum.RigLabel.RightShoulder]
      232 GETTABLE                         R6 R0 R7
      233 SETTABLEKS                       R6 R5 K31 ["mappedJoint"]
      235 SETTABLEKS                       R1 R5 K32 ["DEPRECATED_rigDescriptor"]
      237 GETUPVAL                         R6 3
      238 GETTABLEKS                       R6 R6 K33 ["armedRigLabel"]
      240 SETTABLEKS                       R6 R5 K33 ["armedRigLabel"]
      242 GETUPVAL                         R6 3
      243 GETTABLEKS                       R6 R6 K34 ["onArmJoint"]
      245 SETTABLEKS                       R6 R5 K34 ["onArmJoint"]
      247 GETUPVAL                         R6 3
      248 GETTABLEKS                       R6 R6 K35 ["onMapJoint"]
      250 SETTABLEKS                       R6 R5 K35 ["onMapJoint"]
      252 GETUPVAL                         R6 3
      253 GETTABLEKS                       R6 R6 K36 ["counterpartHoveredJointName"]
      255 SETTABLEKS                       R6 R5 K36 ["counterpartHoveredJointName"]
      257 GETUPVAL                         R6 3
      258 GETTABLEKS                       R6 R6 K37 ["onDotHoverEnter"]
      260 SETTABLEKS                       R6 R5 K37 ["onDotHoverEnter"]
      262 GETUPVAL                         R6 3
      263 GETTABLEKS                       R6 R6 K38 ["onDotHoverLeave"]
      265 SETTABLEKS                       R6 R5 K38 ["onDotHoverLeave"]
      267 CALL                             R3 2 1
      268 SETTABLEKS                       R3 R2 K4 ["RightShoulder"]
      270 GETUPVAL                         R3 4
      271 GETTABLEKS                       R3 R3 K26 ["createElement"]
      273 GETUPVAL                         R4 5
      274 DUPTABLE                         R5 K39 [{"jointLabel", "position", "optional", "selectedJoint", "mappedJoint", "DEPRECATED_rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
      275 GETIMPORT                        R6 K49 [Enum.RigLabel.RightElbow]
      277 SETTABLEKS                       R6 R5 K27 ["jointLabel"]
      279 GETIMPORT                        R6 K45 [Vector2.new]
      281 LOADN                            R7 48
      282 LOADN                            R8 132
      283 CALL                             R6 2 1
      284 SETTABLEKS                       R6 R5 K28 ["position"]
      286 LOADB                            R6 0
      287 SETTABLEKS                       R6 R5 K29 ["optional"]
      289 GETUPVAL                         R6 3
      290 GETTABLEKS                       R6 R6 K30 ["selectedJoint"]
      292 SETTABLEKS                       R6 R5 K30 ["selectedJoint"]
      294 GETIMPORT                        R7 K49 [Enum.RigLabel.RightElbow]
      296 GETTABLE                         R6 R0 R7
      297 SETTABLEKS                       R6 R5 K31 ["mappedJoint"]
      299 SETTABLEKS                       R1 R5 K32 ["DEPRECATED_rigDescriptor"]
      301 GETUPVAL                         R6 3
      302 GETTABLEKS                       R6 R6 K33 ["armedRigLabel"]
      304 SETTABLEKS                       R6 R5 K33 ["armedRigLabel"]
      306 GETUPVAL                         R6 3
      307 GETTABLEKS                       R6 R6 K34 ["onArmJoint"]
      309 SETTABLEKS                       R6 R5 K34 ["onArmJoint"]
      311 GETUPVAL                         R6 3
      312 GETTABLEKS                       R6 R6 K35 ["onMapJoint"]
      314 SETTABLEKS                       R6 R5 K35 ["onMapJoint"]
      316 GETUPVAL                         R6 3
      317 GETTABLEKS                       R6 R6 K36 ["counterpartHoveredJointName"]
      319 SETTABLEKS                       R6 R5 K36 ["counterpartHoveredJointName"]
      321 GETUPVAL                         R6 3
      322 GETTABLEKS                       R6 R6 K37 ["onDotHoverEnter"]
      324 SETTABLEKS                       R6 R5 K37 ["onDotHoverEnter"]
      326 GETUPVAL                         R6 3
      327 GETTABLEKS                       R6 R6 K38 ["onDotHoverLeave"]
      329 SETTABLEKS                       R6 R5 K38 ["onDotHoverLeave"]
      331 CALL                             R3 2 1
      332 SETTABLEKS                       R3 R2 K5 ["RightElbow"]
      334 GETUPVAL                         R3 4
      335 GETTABLEKS                       R3 R3 K26 ["createElement"]
      337 GETUPVAL                         R4 5
      338 DUPTABLE                         R5 K39 [{"jointLabel", "position", "optional", "selectedJoint", "mappedJoint", "DEPRECATED_rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
      339 GETIMPORT                        R6 K50 [Enum.RigLabel.RightWrist]
      341 SETTABLEKS                       R6 R5 K27 ["jointLabel"]
      343 GETIMPORT                        R6 K45 [Vector2.new]
      345 LOADN                            R7 36
      346 LOADN                            R8 178
      347 CALL                             R6 2 1
      348 SETTABLEKS                       R6 R5 K28 ["position"]
      350 LOADB                            R6 0
      351 SETTABLEKS                       R6 R5 K29 ["optional"]
      353 GETUPVAL                         R6 3
      354 GETTABLEKS                       R6 R6 K30 ["selectedJoint"]
      356 SETTABLEKS                       R6 R5 K30 ["selectedJoint"]
      358 GETIMPORT                        R7 K50 [Enum.RigLabel.RightWrist]
      360 GETTABLE                         R6 R0 R7
      361 SETTABLEKS                       R6 R5 K31 ["mappedJoint"]
      363 SETTABLEKS                       R1 R5 K32 ["DEPRECATED_rigDescriptor"]
      365 GETUPVAL                         R6 3
      366 GETTABLEKS                       R6 R6 K33 ["armedRigLabel"]
      368 SETTABLEKS                       R6 R5 K33 ["armedRigLabel"]
      370 GETUPVAL                         R6 3
      371 GETTABLEKS                       R6 R6 K34 ["onArmJoint"]
      373 SETTABLEKS                       R6 R5 K34 ["onArmJoint"]
      375 GETUPVAL                         R6 3
      376 GETTABLEKS                       R6 R6 K35 ["onMapJoint"]
      378 SETTABLEKS                       R6 R5 K35 ["onMapJoint"]
      380 GETUPVAL                         R6 3
      381 GETTABLEKS                       R6 R6 K36 ["counterpartHoveredJointName"]
      383 SETTABLEKS                       R6 R5 K36 ["counterpartHoveredJointName"]
      385 GETUPVAL                         R6 3
      386 GETTABLEKS                       R6 R6 K37 ["onDotHoverEnter"]
      388 SETTABLEKS                       R6 R5 K37 ["onDotHoverEnter"]
      390 GETUPVAL                         R6 3
      391 GETTABLEKS                       R6 R6 K38 ["onDotHoverLeave"]
      393 SETTABLEKS                       R6 R5 K38 ["onDotHoverLeave"]
      395 CALL                             R3 2 1
      396 SETTABLEKS                       R3 R2 K6 ["RightWrist"]
      398 GETUPVAL                         R3 4
      399 GETTABLEKS                       R3 R3 K26 ["createElement"]
      401 GETUPVAL                         R4 5
      402 DUPTABLE                         R5 K39 [{"jointLabel", "position", "optional", "selectedJoint", "mappedJoint", "DEPRECATED_rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
      403 GETIMPORT                        R6 K51 [Enum.RigLabel.RightHip]
      405 SETTABLEKS                       R6 R5 K27 ["jointLabel"]
      407 GETIMPORT                        R6 K45 [Vector2.new]
      409 LOADN                            R7 74
      410 LOADN                            R8 181
      411 CALL                             R6 2 1
      412 SETTABLEKS                       R6 R5 K28 ["position"]
      414 LOADB                            R6 0
      415 SETTABLEKS                       R6 R5 K29 ["optional"]
      417 GETUPVAL                         R6 3
      418 GETTABLEKS                       R6 R6 K30 ["selectedJoint"]
      420 SETTABLEKS                       R6 R5 K30 ["selectedJoint"]
      422 GETIMPORT                        R7 K51 [Enum.RigLabel.RightHip]
      424 GETTABLE                         R6 R0 R7
      425 SETTABLEKS                       R6 R5 K31 ["mappedJoint"]
      427 SETTABLEKS                       R1 R5 K32 ["DEPRECATED_rigDescriptor"]
      429 GETUPVAL                         R6 3
      430 GETTABLEKS                       R6 R6 K33 ["armedRigLabel"]
      432 SETTABLEKS                       R6 R5 K33 ["armedRigLabel"]
      434 GETUPVAL                         R6 3
      435 GETTABLEKS                       R6 R6 K34 ["onArmJoint"]
      437 SETTABLEKS                       R6 R5 K34 ["onArmJoint"]
      439 GETUPVAL                         R6 3
      440 GETTABLEKS                       R6 R6 K35 ["onMapJoint"]
      442 SETTABLEKS                       R6 R5 K35 ["onMapJoint"]
      444 GETUPVAL                         R6 3
      445 GETTABLEKS                       R6 R6 K36 ["counterpartHoveredJointName"]
      447 SETTABLEKS                       R6 R5 K36 ["counterpartHoveredJointName"]
      449 GETUPVAL                         R6 3
      450 GETTABLEKS                       R6 R6 K37 ["onDotHoverEnter"]
      452 SETTABLEKS                       R6 R5 K37 ["onDotHoverEnter"]
      454 GETUPVAL                         R6 3
      455 GETTABLEKS                       R6 R6 K38 ["onDotHoverLeave"]
      457 SETTABLEKS                       R6 R5 K38 ["onDotHoverLeave"]
      459 CALL                             R3 2 1
      460 SETTABLEKS                       R3 R2 K7 ["RightHip"]
      462 GETUPVAL                         R3 4
      463 GETTABLEKS                       R3 R3 K26 ["createElement"]
      465 GETUPVAL                         R4 5
      466 DUPTABLE                         R5 K39 [{"jointLabel", "position", "optional", "selectedJoint", "mappedJoint", "DEPRECATED_rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
      467 GETIMPORT                        R6 K52 [Enum.RigLabel.RightKnee]
      469 SETTABLEKS                       R6 R5 K27 ["jointLabel"]
      471 GETIMPORT                        R6 K45 [Vector2.new]
      473 LOADN                            R7 68
      474 LOADN                            R8 255
      475 CALL                             R6 2 1
      476 SETTABLEKS                       R6 R5 K28 ["position"]
      478 LOADB                            R6 0
      479 SETTABLEKS                       R6 R5 K29 ["optional"]
      481 GETUPVAL                         R6 3
      482 GETTABLEKS                       R6 R6 K30 ["selectedJoint"]
      484 SETTABLEKS                       R6 R5 K30 ["selectedJoint"]
      486 GETIMPORT                        R7 K52 [Enum.RigLabel.RightKnee]
      488 GETTABLE                         R6 R0 R7
      489 SETTABLEKS                       R6 R5 K31 ["mappedJoint"]
      491 SETTABLEKS                       R1 R5 K32 ["DEPRECATED_rigDescriptor"]
      493 GETUPVAL                         R6 3
      494 GETTABLEKS                       R6 R6 K33 ["armedRigLabel"]
      496 SETTABLEKS                       R6 R5 K33 ["armedRigLabel"]
      498 GETUPVAL                         R6 3
      499 GETTABLEKS                       R6 R6 K34 ["onArmJoint"]
      501 SETTABLEKS                       R6 R5 K34 ["onArmJoint"]
      503 GETUPVAL                         R6 3
      504 GETTABLEKS                       R6 R6 K35 ["onMapJoint"]
      506 SETTABLEKS                       R6 R5 K35 ["onMapJoint"]
      508 GETUPVAL                         R6 3
      509 GETTABLEKS                       R6 R6 K36 ["counterpartHoveredJointName"]
      511 SETTABLEKS                       R6 R5 K36 ["counterpartHoveredJointName"]
      513 GETUPVAL                         R6 3
      514 GETTABLEKS                       R6 R6 K37 ["onDotHoverEnter"]
      516 SETTABLEKS                       R6 R5 K37 ["onDotHoverEnter"]
      518 GETUPVAL                         R6 3
      519 GETTABLEKS                       R6 R6 K38 ["onDotHoverLeave"]
      521 SETTABLEKS                       R6 R5 K38 ["onDotHoverLeave"]
      523 CALL                             R3 2 1
      524 SETTABLEKS                       R3 R2 K8 ["RightKnee"]
      526 GETUPVAL                         R3 4
      527 GETTABLEKS                       R3 R3 K26 ["createElement"]
      529 GETUPVAL                         R4 5
      530 DUPTABLE                         R5 K39 [{"jointLabel", "position", "optional", "selectedJoint", "mappedJoint", "DEPRECATED_rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
      531 GETIMPORT                        R6 K53 [Enum.RigLabel.RightAnkle]
      533 SETTABLEKS                       R6 R5 K27 ["jointLabel"]
      535 GETIMPORT                        R6 K45 [Vector2.new]
      537 LOADN                            R7 62
      538 LOADN                            R8 68
      539 CALL                             R6 2 1
      540 SETTABLEKS                       R6 R5 K28 ["position"]
      542 LOADB                            R6 0
      543 SETTABLEKS                       R6 R5 K29 ["optional"]
      545 GETUPVAL                         R6 3
      546 GETTABLEKS                       R6 R6 K30 ["selectedJoint"]
      548 SETTABLEKS                       R6 R5 K30 ["selectedJoint"]
      550 GETIMPORT                        R7 K53 [Enum.RigLabel.RightAnkle]
      552 GETTABLE                         R6 R0 R7
      553 SETTABLEKS                       R6 R5 K31 ["mappedJoint"]
      555 SETTABLEKS                       R1 R5 K32 ["DEPRECATED_rigDescriptor"]
      557 GETUPVAL                         R6 3
      558 GETTABLEKS                       R6 R6 K33 ["armedRigLabel"]
      560 SETTABLEKS                       R6 R5 K33 ["armedRigLabel"]
      562 GETUPVAL                         R6 3
      563 GETTABLEKS                       R6 R6 K34 ["onArmJoint"]
      565 SETTABLEKS                       R6 R5 K34 ["onArmJoint"]
      567 GETUPVAL                         R6 3
      568 GETTABLEKS                       R6 R6 K35 ["onMapJoint"]
      570 SETTABLEKS                       R6 R5 K35 ["onMapJoint"]
      572 GETUPVAL                         R6 3
      573 GETTABLEKS                       R6 R6 K36 ["counterpartHoveredJointName"]
      575 SETTABLEKS                       R6 R5 K36 ["counterpartHoveredJointName"]
      577 GETUPVAL                         R6 3
      578 GETTABLEKS                       R6 R6 K37 ["onDotHoverEnter"]
      580 SETTABLEKS                       R6 R5 K37 ["onDotHoverEnter"]
      582 GETUPVAL                         R6 3
      583 GETTABLEKS                       R6 R6 K38 ["onDotHoverLeave"]
      585 SETTABLEKS                       R6 R5 K38 ["onDotHoverLeave"]
      587 CALL                             R3 2 1
      588 SETTABLEKS                       R3 R2 K9 ["RightAnkle"]
      590 GETUPVAL                         R3 4
      591 GETTABLEKS                       R3 R3 K26 ["createElement"]
      593 GETUPVAL                         R4 5
      594 DUPTABLE                         R5 K39 [{"jointLabel", "position", "optional", "selectedJoint", "mappedJoint", "DEPRECATED_rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
      595 GETUPVAL                         R6 6
      596 SETTABLEKS                       R6 R5 K27 ["jointLabel"]
      598 GETIMPORT                        R6 K45 [Vector2.new]
      600 LOADN                            R7 55
      601 LOADN                            R8 85
      602 CALL                             R6 2 1
      603 SETTABLEKS                       R6 R5 K28 ["position"]
      605 LOADB                            R6 1
      606 SETTABLEKS                       R6 R5 K29 ["optional"]
      608 GETUPVAL                         R6 3
      609 GETTABLEKS                       R6 R6 K30 ["selectedJoint"]
      611 SETTABLEKS                       R6 R5 K30 ["selectedJoint"]
      613 GETUPVAL                         R7 6
      614 GETTABLE                         R6 R0 R7
      615 SETTABLEKS                       R6 R5 K31 ["mappedJoint"]
      617 SETTABLEKS                       R1 R5 K32 ["DEPRECATED_rigDescriptor"]
      619 GETUPVAL                         R6 3
      620 GETTABLEKS                       R6 R6 K33 ["armedRigLabel"]
      622 SETTABLEKS                       R6 R5 K33 ["armedRigLabel"]
      624 GETUPVAL                         R6 3
      625 GETTABLEKS                       R6 R6 K34 ["onArmJoint"]
      627 SETTABLEKS                       R6 R5 K34 ["onArmJoint"]
      629 GETUPVAL                         R6 3
      630 GETTABLEKS                       R6 R6 K35 ["onMapJoint"]
      632 SETTABLEKS                       R6 R5 K35 ["onMapJoint"]
      634 GETUPVAL                         R6 3
      635 GETTABLEKS                       R6 R6 K36 ["counterpartHoveredJointName"]
      637 SETTABLEKS                       R6 R5 K36 ["counterpartHoveredJointName"]
      639 GETUPVAL                         R6 3
      640 GETTABLEKS                       R6 R6 K37 ["onDotHoverEnter"]
      642 SETTABLEKS                       R6 R5 K37 ["onDotHoverEnter"]
      644 GETUPVAL                         R6 3
      645 GETTABLEKS                       R6 R6 K38 ["onDotHoverLeave"]
      647 SETTABLEKS                       R6 R5 K38 ["onDotHoverLeave"]
      649 CALL                             R3 2 1
      650 SETTABLEKS                       R3 R2 K10 ["RightToeBase"]
      652 GETUPVAL                         R3 4
      653 GETTABLEKS                       R3 R3 K26 ["createElement"]
      655 GETUPVAL                         R4 5
      656 DUPTABLE                         R5 K39 [{"jointLabel", "position", "optional", "selectedJoint", "mappedJoint", "DEPRECATED_rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
      657 GETIMPORT                        R6 K54 [Enum.RigLabel.LeftClavicle]
      659 SETTABLEKS                       R6 R5 K27 ["jointLabel"]
      661 GETIMPORT                        R6 K45 [Vector2.new]
      663 LOADN                            R7 110
      664 LOADN                            R8 80
      665 CALL                             R6 2 1
      666 SETTABLEKS                       R6 R5 K28 ["position"]
      668 LOADB                            R6 1
      669 SETTABLEKS                       R6 R5 K29 ["optional"]
      671 GETUPVAL                         R6 3
      672 GETTABLEKS                       R6 R6 K30 ["selectedJoint"]
      674 SETTABLEKS                       R6 R5 K30 ["selectedJoint"]
      676 GETIMPORT                        R7 K54 [Enum.RigLabel.LeftClavicle]
      678 GETTABLE                         R6 R0 R7
      679 SETTABLEKS                       R6 R5 K31 ["mappedJoint"]
      681 SETTABLEKS                       R1 R5 K32 ["DEPRECATED_rigDescriptor"]
      683 GETUPVAL                         R6 3
      684 GETTABLEKS                       R6 R6 K33 ["armedRigLabel"]
      686 SETTABLEKS                       R6 R5 K33 ["armedRigLabel"]
      688 GETUPVAL                         R6 3
      689 GETTABLEKS                       R6 R6 K34 ["onArmJoint"]
      691 SETTABLEKS                       R6 R5 K34 ["onArmJoint"]
      693 GETUPVAL                         R6 3
      694 GETTABLEKS                       R6 R6 K35 ["onMapJoint"]
      696 SETTABLEKS                       R6 R5 K35 ["onMapJoint"]
      698 GETUPVAL                         R6 3
      699 GETTABLEKS                       R6 R6 K36 ["counterpartHoveredJointName"]
      701 SETTABLEKS                       R6 R5 K36 ["counterpartHoveredJointName"]
      703 GETUPVAL                         R6 3
      704 GETTABLEKS                       R6 R6 K37 ["onDotHoverEnter"]
      706 SETTABLEKS                       R6 R5 K37 ["onDotHoverEnter"]
      708 GETUPVAL                         R6 3
      709 GETTABLEKS                       R6 R6 K38 ["onDotHoverLeave"]
      711 SETTABLEKS                       R6 R5 K38 ["onDotHoverLeave"]
      713 CALL                             R3 2 1
      714 SETTABLEKS                       R3 R2 K11 ["LeftClavicle"]
      716 GETUPVAL                         R3 4
      717 GETTABLEKS                       R3 R3 K26 ["createElement"]
      719 GETUPVAL                         R4 5
      720 DUPTABLE                         R5 K39 [{"jointLabel", "position", "optional", "selectedJoint", "mappedJoint", "DEPRECATED_rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
      721 GETIMPORT                        R6 K55 [Enum.RigLabel.LeftShoulder]
      723 SETTABLEKS                       R6 R5 K27 ["jointLabel"]
      725 GETIMPORT                        R6 K45 [Vector2.new]
      727 LOADN                            R7 133
      728 LOADN                            R8 84
      729 CALL                             R6 2 1
      730 SETTABLEKS                       R6 R5 K28 ["position"]
      732 LOADB                            R6 0
      733 SETTABLEKS                       R6 R5 K29 ["optional"]
      735 GETUPVAL                         R6 3
      736 GETTABLEKS                       R6 R6 K30 ["selectedJoint"]
      738 SETTABLEKS                       R6 R5 K30 ["selectedJoint"]
      740 GETIMPORT                        R7 K55 [Enum.RigLabel.LeftShoulder]
      742 GETTABLE                         R6 R0 R7
      743 SETTABLEKS                       R6 R5 K31 ["mappedJoint"]
      745 SETTABLEKS                       R1 R5 K32 ["DEPRECATED_rigDescriptor"]
      747 GETUPVAL                         R6 3
      748 GETTABLEKS                       R6 R6 K33 ["armedRigLabel"]
      750 SETTABLEKS                       R6 R5 K33 ["armedRigLabel"]
      752 GETUPVAL                         R6 3
      753 GETTABLEKS                       R6 R6 K34 ["onArmJoint"]
      755 SETTABLEKS                       R6 R5 K34 ["onArmJoint"]
      757 GETUPVAL                         R6 3
      758 GETTABLEKS                       R6 R6 K35 ["onMapJoint"]
      760 SETTABLEKS                       R6 R5 K35 ["onMapJoint"]
      762 GETUPVAL                         R6 3
      763 GETTABLEKS                       R6 R6 K36 ["counterpartHoveredJointName"]
      765 SETTABLEKS                       R6 R5 K36 ["counterpartHoveredJointName"]
      767 GETUPVAL                         R6 3
      768 GETTABLEKS                       R6 R6 K37 ["onDotHoverEnter"]
      770 SETTABLEKS                       R6 R5 K37 ["onDotHoverEnter"]
      772 GETUPVAL                         R6 3
      773 GETTABLEKS                       R6 R6 K38 ["onDotHoverLeave"]
      775 SETTABLEKS                       R6 R5 K38 ["onDotHoverLeave"]
      777 CALL                             R3 2 1
      778 SETTABLEKS                       R3 R2 K12 ["LeftShoulder"]
      780 GETUPVAL                         R3 4
      781 GETTABLEKS                       R3 R3 K26 ["createElement"]
      783 GETUPVAL                         R4 5
      784 DUPTABLE                         R5 K39 [{"jointLabel", "position", "optional", "selectedJoint", "mappedJoint", "DEPRECATED_rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
      785 GETIMPORT                        R6 K56 [Enum.RigLabel.LeftElbow]
      787 SETTABLEKS                       R6 R5 K27 ["jointLabel"]
      789 GETIMPORT                        R6 K45 [Vector2.new]
      791 LOADN                            R7 144
      792 LOADN                            R8 132
      793 CALL                             R6 2 1
      794 SETTABLEKS                       R6 R5 K28 ["position"]
      796 LOADB                            R6 0
      797 SETTABLEKS                       R6 R5 K29 ["optional"]
      799 GETUPVAL                         R6 3
      800 GETTABLEKS                       R6 R6 K30 ["selectedJoint"]
      802 SETTABLEKS                       R6 R5 K30 ["selectedJoint"]
      804 GETIMPORT                        R7 K56 [Enum.RigLabel.LeftElbow]
      806 GETTABLE                         R6 R0 R7
      807 SETTABLEKS                       R6 R5 K31 ["mappedJoint"]
      809 SETTABLEKS                       R1 R5 K32 ["DEPRECATED_rigDescriptor"]
      811 GETUPVAL                         R6 3
      812 GETTABLEKS                       R6 R6 K33 ["armedRigLabel"]
      814 SETTABLEKS                       R6 R5 K33 ["armedRigLabel"]
      816 GETUPVAL                         R6 3
      817 GETTABLEKS                       R6 R6 K34 ["onArmJoint"]
      819 SETTABLEKS                       R6 R5 K34 ["onArmJoint"]
      821 GETUPVAL                         R6 3
      822 GETTABLEKS                       R6 R6 K35 ["onMapJoint"]
      824 SETTABLEKS                       R6 R5 K35 ["onMapJoint"]
      826 GETUPVAL                         R6 3
      827 GETTABLEKS                       R6 R6 K36 ["counterpartHoveredJointName"]
      829 SETTABLEKS                       R6 R5 K36 ["counterpartHoveredJointName"]
      831 GETUPVAL                         R6 3
      832 GETTABLEKS                       R6 R6 K37 ["onDotHoverEnter"]
      834 SETTABLEKS                       R6 R5 K37 ["onDotHoverEnter"]
      836 GETUPVAL                         R6 3
      837 GETTABLEKS                       R6 R6 K38 ["onDotHoverLeave"]
      839 SETTABLEKS                       R6 R5 K38 ["onDotHoverLeave"]
      841 CALL                             R3 2 1
      842 SETTABLEKS                       R3 R2 K13 ["LeftElbow"]
      844 GETUPVAL                         R3 4
      845 GETTABLEKS                       R3 R3 K26 ["createElement"]
      847 GETUPVAL                         R4 5
      848 DUPTABLE                         R5 K39 [{"jointLabel", "position", "optional", "selectedJoint", "mappedJoint", "DEPRECATED_rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
      849 GETIMPORT                        R6 K57 [Enum.RigLabel.LeftWrist]
      851 SETTABLEKS                       R6 R5 K27 ["jointLabel"]
      853 GETIMPORT                        R6 K45 [Vector2.new]
      855 LOADN                            R7 154
      856 LOADN                            R8 177
      857 CALL                             R6 2 1
      858 SETTABLEKS                       R6 R5 K28 ["position"]
      860 LOADB                            R6 0
      861 SETTABLEKS                       R6 R5 K29 ["optional"]
      863 GETUPVAL                         R6 3
      864 GETTABLEKS                       R6 R6 K30 ["selectedJoint"]
      866 SETTABLEKS                       R6 R5 K30 ["selectedJoint"]
      868 GETIMPORT                        R7 K57 [Enum.RigLabel.LeftWrist]
      870 GETTABLE                         R6 R0 R7
      871 SETTABLEKS                       R6 R5 K31 ["mappedJoint"]
      873 SETTABLEKS                       R1 R5 K32 ["DEPRECATED_rigDescriptor"]
      875 GETUPVAL                         R6 3
      876 GETTABLEKS                       R6 R6 K33 ["armedRigLabel"]
      878 SETTABLEKS                       R6 R5 K33 ["armedRigLabel"]
      880 GETUPVAL                         R6 3
      881 GETTABLEKS                       R6 R6 K34 ["onArmJoint"]
      883 SETTABLEKS                       R6 R5 K34 ["onArmJoint"]
      885 GETUPVAL                         R6 3
      886 GETTABLEKS                       R6 R6 K35 ["onMapJoint"]
      888 SETTABLEKS                       R6 R5 K35 ["onMapJoint"]
      890 GETUPVAL                         R6 3
      891 GETTABLEKS                       R6 R6 K36 ["counterpartHoveredJointName"]
      893 SETTABLEKS                       R6 R5 K36 ["counterpartHoveredJointName"]
      895 GETUPVAL                         R6 3
      896 GETTABLEKS                       R6 R6 K37 ["onDotHoverEnter"]
      898 SETTABLEKS                       R6 R5 K37 ["onDotHoverEnter"]
      900 GETUPVAL                         R6 3
      901 GETTABLEKS                       R6 R6 K38 ["onDotHoverLeave"]
      903 SETTABLEKS                       R6 R5 K38 ["onDotHoverLeave"]
      905 CALL                             R3 2 1
      906 SETTABLEKS                       R3 R2 K14 ["LeftWrist"]
      908 GETUPVAL                         R3 4
      909 GETTABLEKS                       R3 R3 K26 ["createElement"]
      911 GETUPVAL                         R4 5
      912 DUPTABLE                         R5 K39 [{"jointLabel", "position", "optional", "selectedJoint", "mappedJoint", "DEPRECATED_rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
      913 GETIMPORT                        R6 K58 [Enum.RigLabel.LeftHip]
      915 SETTABLEKS                       R6 R5 K27 ["jointLabel"]
      917 GETIMPORT                        R6 K45 [Vector2.new]
      919 LOADN                            R7 116
      920 LOADN                            R8 181
      921 CALL                             R6 2 1
      922 SETTABLEKS                       R6 R5 K28 ["position"]
      924 LOADB                            R6 0
      925 SETTABLEKS                       R6 R5 K29 ["optional"]
      927 GETUPVAL                         R6 3
      928 GETTABLEKS                       R6 R6 K30 ["selectedJoint"]
      930 SETTABLEKS                       R6 R5 K30 ["selectedJoint"]
      932 GETIMPORT                        R7 K58 [Enum.RigLabel.LeftHip]
      934 GETTABLE                         R6 R0 R7
      935 SETTABLEKS                       R6 R5 K31 ["mappedJoint"]
      937 SETTABLEKS                       R1 R5 K32 ["DEPRECATED_rigDescriptor"]
      939 GETUPVAL                         R6 3
      940 GETTABLEKS                       R6 R6 K33 ["armedRigLabel"]
      942 SETTABLEKS                       R6 R5 K33 ["armedRigLabel"]
      944 GETUPVAL                         R6 3
      945 GETTABLEKS                       R6 R6 K34 ["onArmJoint"]
      947 SETTABLEKS                       R6 R5 K34 ["onArmJoint"]
      949 GETUPVAL                         R6 3
      950 GETTABLEKS                       R6 R6 K35 ["onMapJoint"]
      952 SETTABLEKS                       R6 R5 K35 ["onMapJoint"]
      954 GETUPVAL                         R6 3
      955 GETTABLEKS                       R6 R6 K36 ["counterpartHoveredJointName"]
      957 SETTABLEKS                       R6 R5 K36 ["counterpartHoveredJointName"]
      959 GETUPVAL                         R6 3
      960 GETTABLEKS                       R6 R6 K37 ["onDotHoverEnter"]
      962 SETTABLEKS                       R6 R5 K37 ["onDotHoverEnter"]
      964 GETUPVAL                         R6 3
      965 GETTABLEKS                       R6 R6 K38 ["onDotHoverLeave"]
      967 SETTABLEKS                       R6 R5 K38 ["onDotHoverLeave"]
      969 CALL                             R3 2 1
      970 SETTABLEKS                       R3 R2 K15 ["LeftHip"]
      972 GETUPVAL                         R3 4
      973 GETTABLEKS                       R3 R3 K26 ["createElement"]
      975 GETUPVAL                         R4 5
      976 DUPTABLE                         R5 K39 [{"jointLabel", "position", "optional", "selectedJoint", "mappedJoint", "DEPRECATED_rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
      977 GETIMPORT                        R6 K59 [Enum.RigLabel.LeftKnee]
      979 SETTABLEKS                       R6 R5 K27 ["jointLabel"]
      981 GETIMPORT                        R6 K45 [Vector2.new]
      983 LOADN                            R7 122
      984 LOADN                            R8 255
      985 CALL                             R6 2 1
      986 SETTABLEKS                       R6 R5 K28 ["position"]
      988 LOADB                            R6 0
      989 SETTABLEKS                       R6 R5 K29 ["optional"]
      991 GETUPVAL                         R6 3
      992 GETTABLEKS                       R6 R6 K30 ["selectedJoint"]
      994 SETTABLEKS                       R6 R5 K30 ["selectedJoint"]
      996 GETIMPORT                        R7 K59 [Enum.RigLabel.LeftKnee]
      998 GETTABLE                         R6 R0 R7
      999 SETTABLEKS                       R6 R5 K31 ["mappedJoint"]
     1001 SETTABLEKS                       R1 R5 K32 ["DEPRECATED_rigDescriptor"]
     1003 GETUPVAL                         R6 3
     1004 GETTABLEKS                       R6 R6 K33 ["armedRigLabel"]
     1006 SETTABLEKS                       R6 R5 K33 ["armedRigLabel"]
     1008 GETUPVAL                         R6 3
     1009 GETTABLEKS                       R6 R6 K34 ["onArmJoint"]
     1011 SETTABLEKS                       R6 R5 K34 ["onArmJoint"]
     1013 GETUPVAL                         R6 3
     1014 GETTABLEKS                       R6 R6 K35 ["onMapJoint"]
     1016 SETTABLEKS                       R6 R5 K35 ["onMapJoint"]
     1018 GETUPVAL                         R6 3
     1019 GETTABLEKS                       R6 R6 K36 ["counterpartHoveredJointName"]
     1021 SETTABLEKS                       R6 R5 K36 ["counterpartHoveredJointName"]
     1023 GETUPVAL                         R6 3
     1024 GETTABLEKS                       R6 R6 K37 ["onDotHoverEnter"]
     1026 SETTABLEKS                       R6 R5 K37 ["onDotHoverEnter"]
     1028 GETUPVAL                         R6 3
     1029 GETTABLEKS                       R6 R6 K38 ["onDotHoverLeave"]
     1031 SETTABLEKS                       R6 R5 K38 ["onDotHoverLeave"]
     1033 CALL                             R3 2 1
     1034 SETTABLEKS                       R3 R2 K16 ["LeftKnee"]
     1036 GETUPVAL                         R3 4
     1037 GETTABLEKS                       R3 R3 K26 ["createElement"]
     1039 GETUPVAL                         R4 5
     1040 DUPTABLE                         R5 K39 [{"jointLabel", "position", "optional", "selectedJoint", "mappedJoint", "DEPRECATED_rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
     1041 GETIMPORT                        R6 K60 [Enum.RigLabel.LeftAnkle]
     1043 SETTABLEKS                       R6 R5 K27 ["jointLabel"]
     1045 GETIMPORT                        R6 K45 [Vector2.new]
     1047 LOADN                            R7 128
     1048 LOADN                            R8 68
     1049 CALL                             R6 2 1
     1050 SETTABLEKS                       R6 R5 K28 ["position"]
     1052 LOADB                            R6 0
     1053 SETTABLEKS                       R6 R5 K29 ["optional"]
     1055 GETUPVAL                         R6 3
     1056 GETTABLEKS                       R6 R6 K30 ["selectedJoint"]
     1058 SETTABLEKS                       R6 R5 K30 ["selectedJoint"]
     1060 GETIMPORT                        R7 K60 [Enum.RigLabel.LeftAnkle]
     1062 GETTABLE                         R6 R0 R7
     1063 SETTABLEKS                       R6 R5 K31 ["mappedJoint"]
     1065 SETTABLEKS                       R1 R5 K32 ["DEPRECATED_rigDescriptor"]
     1067 GETUPVAL                         R6 3
     1068 GETTABLEKS                       R6 R6 K33 ["armedRigLabel"]
     1070 SETTABLEKS                       R6 R5 K33 ["armedRigLabel"]
     1072 GETUPVAL                         R6 3
     1073 GETTABLEKS                       R6 R6 K34 ["onArmJoint"]
     1075 SETTABLEKS                       R6 R5 K34 ["onArmJoint"]
     1077 GETUPVAL                         R6 3
     1078 GETTABLEKS                       R6 R6 K35 ["onMapJoint"]
     1080 SETTABLEKS                       R6 R5 K35 ["onMapJoint"]
     1082 GETUPVAL                         R6 3
     1083 GETTABLEKS                       R6 R6 K36 ["counterpartHoveredJointName"]
     1085 SETTABLEKS                       R6 R5 K36 ["counterpartHoveredJointName"]
     1087 GETUPVAL                         R6 3
     1088 GETTABLEKS                       R6 R6 K37 ["onDotHoverEnter"]
     1090 SETTABLEKS                       R6 R5 K37 ["onDotHoverEnter"]
     1092 GETUPVAL                         R6 3
     1093 GETTABLEKS                       R6 R6 K38 ["onDotHoverLeave"]
     1095 SETTABLEKS                       R6 R5 K38 ["onDotHoverLeave"]
     1097 CALL                             R3 2 1
     1098 SETTABLEKS                       R3 R2 K17 ["LeftAnkle"]
     1100 GETUPVAL                         R3 4
     1101 GETTABLEKS                       R3 R3 K26 ["createElement"]
     1103 GETUPVAL                         R4 5
     1104 DUPTABLE                         R5 K39 [{"jointLabel", "position", "optional", "selectedJoint", "mappedJoint", "DEPRECATED_rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
     1105 GETUPVAL                         R6 7
     1106 SETTABLEKS                       R6 R5 K27 ["jointLabel"]
     1108 GETIMPORT                        R6 K45 [Vector2.new]
     1110 LOADN                            R7 134
     1111 LOADN                            R8 85
     1112 CALL                             R6 2 1
     1113 SETTABLEKS                       R6 R5 K28 ["position"]
     1115 LOADB                            R6 1
     1116 SETTABLEKS                       R6 R5 K29 ["optional"]
     1118 GETUPVAL                         R6 3
     1119 GETTABLEKS                       R6 R6 K30 ["selectedJoint"]
     1121 SETTABLEKS                       R6 R5 K30 ["selectedJoint"]
     1123 GETUPVAL                         R7 7
     1124 GETTABLE                         R6 R0 R7
     1125 SETTABLEKS                       R6 R5 K31 ["mappedJoint"]
     1127 SETTABLEKS                       R1 R5 K32 ["DEPRECATED_rigDescriptor"]
     1129 GETUPVAL                         R6 3
     1130 GETTABLEKS                       R6 R6 K33 ["armedRigLabel"]
     1132 SETTABLEKS                       R6 R5 K33 ["armedRigLabel"]
     1134 GETUPVAL                         R6 3
     1135 GETTABLEKS                       R6 R6 K34 ["onArmJoint"]
     1137 SETTABLEKS                       R6 R5 K34 ["onArmJoint"]
     1139 GETUPVAL                         R6 3
     1140 GETTABLEKS                       R6 R6 K35 ["onMapJoint"]
     1142 SETTABLEKS                       R6 R5 K35 ["onMapJoint"]
     1144 GETUPVAL                         R6 3
     1145 GETTABLEKS                       R6 R6 K36 ["counterpartHoveredJointName"]
     1147 SETTABLEKS                       R6 R5 K36 ["counterpartHoveredJointName"]
     1149 GETUPVAL                         R6 3
     1150 GETTABLEKS                       R6 R6 K37 ["onDotHoverEnter"]
     1152 SETTABLEKS                       R6 R5 K37 ["onDotHoverEnter"]
     1154 GETUPVAL                         R6 3
     1155 GETTABLEKS                       R6 R6 K38 ["onDotHoverLeave"]
     1157 SETTABLEKS                       R6 R5 K38 ["onDotHoverLeave"]
     1159 CALL                             R3 2 1
     1160 SETTABLEKS                       R3 R2 K18 ["LeftToeBase"]
     1162 GETUPVAL                         R3 4
     1163 GETTABLEKS                       R3 R3 K26 ["createElement"]
     1165 GETUPVAL                         R4 5
     1166 DUPTABLE                         R5 K39 [{"jointLabel", "position", "optional", "selectedJoint", "mappedJoint", "DEPRECATED_rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
     1167 GETIMPORT                        R6 K61 [Enum.RigLabel.Chest]
     1169 SETTABLEKS                       R6 R5 K27 ["jointLabel"]
     1171 GETIMPORT                        R6 K45 [Vector2.new]
     1173 LOADN                            R7 96
     1174 LOADN                            R8 98
     1175 CALL                             R6 2 1
     1176 SETTABLEKS                       R6 R5 K28 ["position"]
     1178 LOADB                            R6 1
     1179 SETTABLEKS                       R6 R5 K29 ["optional"]
     1181 GETUPVAL                         R6 3
     1182 GETTABLEKS                       R6 R6 K30 ["selectedJoint"]
     1184 SETTABLEKS                       R6 R5 K30 ["selectedJoint"]
     1186 GETIMPORT                        R7 K61 [Enum.RigLabel.Chest]
     1188 GETTABLE                         R6 R0 R7
     1189 SETTABLEKS                       R6 R5 K31 ["mappedJoint"]
     1191 SETTABLEKS                       R1 R5 K32 ["DEPRECATED_rigDescriptor"]
     1193 GETUPVAL                         R6 3
     1194 GETTABLEKS                       R6 R6 K33 ["armedRigLabel"]
     1196 SETTABLEKS                       R6 R5 K33 ["armedRigLabel"]
     1198 GETUPVAL                         R6 3
     1199 GETTABLEKS                       R6 R6 K34 ["onArmJoint"]
     1201 SETTABLEKS                       R6 R5 K34 ["onArmJoint"]
     1203 GETUPVAL                         R6 3
     1204 GETTABLEKS                       R6 R6 K35 ["onMapJoint"]
     1206 SETTABLEKS                       R6 R5 K35 ["onMapJoint"]
     1208 GETUPVAL                         R6 3
     1209 GETTABLEKS                       R6 R6 K36 ["counterpartHoveredJointName"]
     1211 SETTABLEKS                       R6 R5 K36 ["counterpartHoveredJointName"]
     1213 GETUPVAL                         R6 3
     1214 GETTABLEKS                       R6 R6 K37 ["onDotHoverEnter"]
     1216 SETTABLEKS                       R6 R5 K37 ["onDotHoverEnter"]
     1218 GETUPVAL                         R6 3
     1219 GETTABLEKS                       R6 R6 K38 ["onDotHoverLeave"]
     1221 SETTABLEKS                       R6 R5 K38 ["onDotHoverLeave"]
     1223 CALL                             R3 2 1
     1224 SETTABLEKS                       R3 R2 K19 ["Chest"]
     1226 GETUPVAL                         R3 4
     1227 GETTABLEKS                       R3 R3 K26 ["createElement"]
     1229 GETUPVAL                         R4 5
     1230 DUPTABLE                         R5 K39 [{"jointLabel", "position", "optional", "selectedJoint", "mappedJoint", "DEPRECATED_rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
     1231 GETIMPORT                        R6 K62 [Enum.RigLabel.Root]
     1233 SETTABLEKS                       R6 R5 K27 ["jointLabel"]
     1235 GETIMPORT                        R6 K45 [Vector2.new]
     1237 LOADN                            R7 96
     1238 LOADN                            R8 180
     1239 CALL                             R6 2 1
     1240 SETTABLEKS                       R6 R5 K28 ["position"]
     1242 LOADB                            R6 0
     1243 SETTABLEKS                       R6 R5 K29 ["optional"]
     1245 GETUPVAL                         R6 3
     1246 GETTABLEKS                       R6 R6 K30 ["selectedJoint"]
     1248 SETTABLEKS                       R6 R5 K30 ["selectedJoint"]
     1250 GETIMPORT                        R7 K62 [Enum.RigLabel.Root]
     1252 GETTABLE                         R6 R0 R7
     1253 SETTABLEKS                       R6 R5 K31 ["mappedJoint"]
     1255 SETTABLEKS                       R1 R5 K32 ["DEPRECATED_rigDescriptor"]
     1257 GETUPVAL                         R6 3
     1258 GETTABLEKS                       R6 R6 K33 ["armedRigLabel"]
     1260 SETTABLEKS                       R6 R5 K33 ["armedRigLabel"]
     1262 GETUPVAL                         R6 3
     1263 GETTABLEKS                       R6 R6 K34 ["onArmJoint"]
     1265 SETTABLEKS                       R6 R5 K34 ["onArmJoint"]
     1267 GETUPVAL                         R6 3
     1268 GETTABLEKS                       R6 R6 K35 ["onMapJoint"]
     1270 SETTABLEKS                       R6 R5 K35 ["onMapJoint"]
     1272 GETUPVAL                         R6 3
     1273 GETTABLEKS                       R6 R6 K36 ["counterpartHoveredJointName"]
     1275 SETTABLEKS                       R6 R5 K36 ["counterpartHoveredJointName"]
     1277 GETUPVAL                         R6 3
     1278 GETTABLEKS                       R6 R6 K37 ["onDotHoverEnter"]
     1280 SETTABLEKS                       R6 R5 K37 ["onDotHoverEnter"]
     1282 GETUPVAL                         R6 3
     1283 GETTABLEKS                       R6 R6 K38 ["onDotHoverLeave"]
     1285 SETTABLEKS                       R6 R5 K38 ["onDotHoverLeave"]
     1287 CALL                             R3 2 1
     1288 SETTABLEKS                       R3 R2 K20 ["Root"]
     1290 GETUPVAL                         R3 4
     1291 GETTABLEKS                       R3 R3 K26 ["createElement"]
     1293 GETUPVAL                         R4 5
     1294 DUPTABLE                         R5 K39 [{"jointLabel", "position", "optional", "selectedJoint", "mappedJoint", "DEPRECATED_rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
     1295 GETIMPORT                        R6 K63 [Enum.RigLabel.Waist]
     1297 SETTABLEKS                       R6 R5 K27 ["jointLabel"]
     1299 GETIMPORT                        R6 K45 [Vector2.new]
     1301 LOADN                            R7 96
     1302 LOADN                            R8 144
     1303 CALL                             R6 2 1
     1304 SETTABLEKS                       R6 R5 K28 ["position"]
     1306 LOADB                            R6 0
     1307 SETTABLEKS                       R6 R5 K29 ["optional"]
     1309 GETUPVAL                         R6 3
     1310 GETTABLEKS                       R6 R6 K30 ["selectedJoint"]
     1312 SETTABLEKS                       R6 R5 K30 ["selectedJoint"]
     1314 GETIMPORT                        R7 K63 [Enum.RigLabel.Waist]
     1316 GETTABLE                         R6 R0 R7
     1317 SETTABLEKS                       R6 R5 K31 ["mappedJoint"]
     1319 SETTABLEKS                       R1 R5 K32 ["DEPRECATED_rigDescriptor"]
     1321 GETUPVAL                         R6 3
     1322 GETTABLEKS                       R6 R6 K33 ["armedRigLabel"]
     1324 SETTABLEKS                       R6 R5 K33 ["armedRigLabel"]
     1326 GETUPVAL                         R6 3
     1327 GETTABLEKS                       R6 R6 K34 ["onArmJoint"]
     1329 SETTABLEKS                       R6 R5 K34 ["onArmJoint"]
     1331 GETUPVAL                         R6 3
     1332 GETTABLEKS                       R6 R6 K35 ["onMapJoint"]
     1334 SETTABLEKS                       R6 R5 K35 ["onMapJoint"]
     1336 GETUPVAL                         R6 3
     1337 GETTABLEKS                       R6 R6 K36 ["counterpartHoveredJointName"]
     1339 SETTABLEKS                       R6 R5 K36 ["counterpartHoveredJointName"]
     1341 GETUPVAL                         R6 3
     1342 GETTABLEKS                       R6 R6 K37 ["onDotHoverEnter"]
     1344 SETTABLEKS                       R6 R5 K37 ["onDotHoverEnter"]
     1346 GETUPVAL                         R6 3
     1347 GETTABLEKS                       R6 R6 K38 ["onDotHoverLeave"]
     1349 SETTABLEKS                       R6 R5 K38 ["onDotHoverLeave"]
     1351 CALL                             R3 2 1
     1352 SETTABLEKS                       R3 R2 K21 ["Waist"]
     1354 GETUPVAL                         R4 8
     1355 JUMPIFNOT                        R4 ; [+69]
     1356 GETUPVAL                         R3 4
     1357 GETTABLEKS                       R3 R3 K26 ["createElement"]
     1359 GETUPVAL                         R4 5
     1360 DUPTABLE                         R5 K39 [{"jointLabel", "position", "optional", "selectedJoint", "mappedJoint", "DEPRECATED_rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint", "counterpartHoveredJointName", "onDotHoverEnter", "onDotHoverLeave"}]
     1361 GETUPVAL                         R6 8
     1362 SETTABLEKS                       R6 R5 K27 ["jointLabel"]
     1364 GETUPVAL                         R7 9
     1365 JUMPIFNOT                        R7 ; [+6]
     1366 GETIMPORT                        R6 K45 [Vector2.new]
     1368 LOADN                            R7 96
     1369 LOADN                            R8 121
     1370 CALL                             R6 2 1
     1371 JUMP                             ; [+5]
     1372 GETIMPORT                        R6 K45 [Vector2.new]
     1374 LOADN                            R7 96
     1375 LOADN                            R8 166
     1376 CALL                             R6 2 1
     1377 SETTABLEKS                       R6 R5 K28 ["position"]
     1379 LOADB                            R6 1
     1380 SETTABLEKS                       R6 R5 K29 ["optional"]
     1382 GETUPVAL                         R6 3
     1383 GETTABLEKS                       R6 R6 K30 ["selectedJoint"]
     1385 SETTABLEKS                       R6 R5 K30 ["selectedJoint"]
     1387 GETUPVAL                         R7 8
     1388 GETTABLE                         R6 R0 R7
     1389 SETTABLEKS                       R6 R5 K31 ["mappedJoint"]
     1391 SETTABLEKS                       R1 R5 K32 ["DEPRECATED_rigDescriptor"]
     1393 GETUPVAL                         R6 3
     1394 GETTABLEKS                       R6 R6 K33 ["armedRigLabel"]
     1396 SETTABLEKS                       R6 R5 K33 ["armedRigLabel"]
     1398 GETUPVAL                         R6 3
     1399 GETTABLEKS                       R6 R6 K34 ["onArmJoint"]
     1401 SETTABLEKS                       R6 R5 K34 ["onArmJoint"]
     1403 GETUPVAL                         R6 3
     1404 GETTABLEKS                       R6 R6 K35 ["onMapJoint"]
     1406 SETTABLEKS                       R6 R5 K35 ["onMapJoint"]
     1408 GETUPVAL                         R6 3
     1409 GETTABLEKS                       R6 R6 K36 ["counterpartHoveredJointName"]
     1411 SETTABLEKS                       R6 R5 K36 ["counterpartHoveredJointName"]
     1413 GETUPVAL                         R6 3
     1414 GETTABLEKS                       R6 R6 K37 ["onDotHoverEnter"]
     1416 SETTABLEKS                       R6 R5 K37 ["onDotHoverEnter"]
     1418 GETUPVAL                         R6 3
     1419 GETTABLEKS                       R6 R6 K38 ["onDotHoverLeave"]
     1421 SETTABLEKS                       R6 R5 K38 ["onDotHoverLeave"]
     1423 CALL                             R3 2 1
     1424 JUMPIF                           R3 ; [+1]
     1425 LOADNIL                          R3
     1426 SETTABLEKS                       R3 R2 K22 ["Spine"]
     1428 GETUPVAL                         R3 4
     1429 GETTABLEKS                       R3 R3 K26 ["createElement"]
     1431 GETUPVAL                         R4 10
     1432 DUPTABLE                         R5 K67 [{"position", "side", "isMapped", "DEPRECATED_rigDescriptor", "onNavigateToHand", "rigDescriptor"}]
     1433 GETIMPORT                        R6 K45 [Vector2.new]
     1435 LOADN                            R7 19
     1436 LOADN                            R8 198
     1437 CALL                             R6 2 1
     1438 SETTABLEKS                       R6 R5 K28 ["position"]
     1440 LOADK                            R6 K68 ["right"]
     1441 SETTABLEKS                       R6 R5 K64 ["side"]
     1443 GETIMPORT                        R8 K50 [Enum.RigLabel.RightWrist]
     1445 GETTABLE                         R7 R0 R8
     1446 JUMPIFNOTEQKNIL                  R7 ; [+2]
     1448 LOADB                            R6 0 +1
     1449 LOADB                            R6 1
     1450 SETTABLEKS                       R6 R5 K65 ["isMapped"]
     1452 SETTABLEKS                       R1 R5 K32 ["DEPRECATED_rigDescriptor"]
     1454 GETUPVAL                         R6 3
     1455 GETTABLEKS                       R6 R6 K66 ["onNavigateToHand"]
     1457 SETTABLEKS                       R6 R5 K66 ["onNavigateToHand"]
     1459 GETUPVAL                         R7 11
     1460 CALL                             R7 0 1
     1461 JUMPIFNOT                        R7 ; [+4]
     1462 GETUPVAL                         R6 3
     1463 GETTABLEKS                       R6 R6 K0 ["rigDescriptor"]
     1465 JUMP                             ; [+1]
     1466 LOADNIL                          R6
     1467 SETTABLEKS                       R6 R5 K0 ["rigDescriptor"]
     1469 CALL                             R3 2 1
     1470 SETTABLEKS                       R3 R2 K23 ["RightHandDot"]
     1472 GETUPVAL                         R3 4
     1473 GETTABLEKS                       R3 R3 K26 ["createElement"]
     1475 GETUPVAL                         R4 10
     1476 DUPTABLE                         R5 K67 [{"position", "side", "isMapped", "DEPRECATED_rigDescriptor", "onNavigateToHand", "rigDescriptor"}]
     1477 GETIMPORT                        R6 K45 [Vector2.new]
     1479 LOADN                            R7 171
     1480 LOADN                            R8 197
     1481 CALL                             R6 2 1
     1482 SETTABLEKS                       R6 R5 K28 ["position"]
     1484 LOADK                            R6 K69 ["left"]
     1485 SETTABLEKS                       R6 R5 K64 ["side"]
     1487 GETIMPORT                        R8 K57 [Enum.RigLabel.LeftWrist]
     1489 GETTABLE                         R7 R0 R8
     1490 JUMPIFNOTEQKNIL                  R7 ; [+2]
     1492 LOADB                            R6 0 +1
     1493 LOADB                            R6 1
     1494 SETTABLEKS                       R6 R5 K65 ["isMapped"]
     1496 SETTABLEKS                       R1 R5 K32 ["DEPRECATED_rigDescriptor"]
     1498 GETUPVAL                         R6 3
     1499 GETTABLEKS                       R6 R6 K66 ["onNavigateToHand"]
     1501 SETTABLEKS                       R6 R5 K66 ["onNavigateToHand"]
     1503 GETUPVAL                         R7 11
     1504 CALL                             R7 0 1
     1505 JUMPIFNOT                        R7 ; [+4]
     1506 GETUPVAL                         R6 3
     1507 GETTABLEKS                       R6 R6 K0 ["rigDescriptor"]
     1509 JUMP                             ; [+1]
     1510 LOADNIL                          R6
     1511 SETTABLEKS                       R6 R5 K0 ["rigDescriptor"]
     1513 CALL                             R3 2 1
     1514 SETTABLEKS                       R3 R2 K24 ["LeftHandDot"]
     1516 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["DOCS_URL"]
        4 NAMECALL                         R0 R0 K1 ["OpenBrowserWindow"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useCallback"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R0
       10 NEWTABLE                         R5 0 1
       12 GETTABLEKS                       R6 R0 K2 ["onClear"]
       14 SETLIST                          R5 R6 1 [1]
       16 CALL                             R3 2 1
       17 GETUPVAL                         R4 1
       18 CALL                             R4 0 1
       19 JUMPIFNOTEQKS                    R4 K3 ["Dark"] ; [+5]
       21 GETUPVAL                         R5 2
       22 GETTABLEKS                       R5 R5 K4 ["EMPTY_IMAGE_DARK"]
       24 JUMP                             ; [+3]
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R5 R5 K5 ["EMPTY_IMAGE_LIGHT"]
       28 LOADB                            R6 0
       29 GETTABLEKS                       R7 R0 K6 ["rigDescriptor"]
       31 JUMPIFEQKNIL                     R7 ; [+7]
       33 GETTABLEKS                       R7 R0 K7 ["model"]
       35 JUMPIFNOTEQKNIL                  R7 ; [+2]
       37 LOADB                            R6 0 +1
       38 LOADB                            R6 1
       39 MOVE                             R7 R6
       40 JUMPIFNOT                        R7 ; [+2]
       41 GETTABLEKS                       R7 R0 K8 ["showMannequinImage"]
       43 GETUPVAL                         R9 3
       44 CALL                             R9 0 1
       45 JUMPIFNOT                        R9 ; [+7]
       46 GETUPVAL                         R8 4
       47 GETTABLEKS                       R9 R0 K6 ["rigDescriptor"]
       49 CALL                             R8 1 1
       50 GETTABLEKS                       R8 R8 K9 ["labelMap"]
       52 JUMP                             ; [+1]
       53 LOADNIL                          R8
       54 GETUPVAL                         R9 0
       55 GETTABLEKS                       R9 R9 K10 ["useMemo"]
       57 NEWCLOSURE                       R10 P1
       58 CAPTURE                          UPVAL U3
       59 CAPTURE                          VAL R8
       60 NEWTABLE                         R11 0 1
       62 MOVE                             R12 R8
       63 SETLIST                          R11 R12 1 [1]
       65 CALL                             R9 2 1
       66 GETUPVAL                         R10 0
       67 GETTABLEKS                       R10 R10 K10 ["useMemo"]
       69 NEWCLOSURE                       R11 P2
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R9
       72 CAPTURE                          UPVAL U3
       73 CAPTURE                          VAL R0
       74 CAPTURE                          UPVAL U0
       75 CAPTURE                          UPVAL U5
       76 CAPTURE                          UPVAL U6
       77 CAPTURE                          UPVAL U7
       78 CAPTURE                          UPVAL U8
       79 CAPTURE                          UPVAL U9
       80 CAPTURE                          UPVAL U10
       81 CAPTURE                          UPVAL U11
       82 NEWTABLE                         R12 0 11
       84 MOVE                             R13 R7
       85 MOVE                             R14 R9
       86 GETTABLEKS                       R15 R0 K6 ["rigDescriptor"]
       88 GETTABLEKS                       R16 R0 K11 ["armedRigLabel"]
       90 GETTABLEKS                       R17 R0 K12 ["selectedJoint"]
       92 GETTABLEKS                       R18 R0 K13 ["counterpartHoveredJointName"]
       94 GETTABLEKS                       R19 R0 K14 ["onArmJoint"]
       96 GETTABLEKS                       R20 R0 K15 ["onMapJoint"]
       98 GETTABLEKS                       R21 R0 K16 ["onDotHoverEnter"]
      100 GETTABLEKS                       R22 R0 K17 ["onDotHoverLeave"]
      102 GETTABLEKS                       R23 R0 K18 ["onNavigateToHand"]
      104 SETLIST                          R12 R13 11 [1]
      106 CALL                             R10 2 1
      107 GETUPVAL                         R11 12
      108 CALL                             R11 0 1
      109 JUMPIF                           R11 ; [+115]
      110 JUMPIF                           R7 ; [+2]
      111 LOADNIL                          R11
      112 RETURN                           R11 1
      113 GETUPVAL                         R11 13
      114 GETTABLEKS                       R11 R11 K19 ["createPortal"]
      116 GETUPVAL                         R12 0
      117 GETTABLEKS                       R12 R12 K20 ["createElement"]
      119 LOADK                            R13 K21 ["ScreenGui"]
      120 DUPTABLE                         R14 K26 [{"Archivable", "DisplayOrder", "ZIndexBehavior", "ref"}]
      121 LOADB                            R15 0
      122 SETTABLEKS                       R15 R14 K22 ["Archivable"]
      124 GETUPVAL                         R15 2
      125 GETTABLEKS                       R15 R15 K27 ["DISPLAY_ORDER_MANNEQUIN"]
      127 SETTABLEKS                       R15 R14 K23 ["DisplayOrder"]
      129 GETIMPORT                        R15 K30 [Enum.ZIndexBehavior.Sibling]
      131 SETTABLEKS                       R15 R14 K24 ["ZIndexBehavior"]
      133 SETTABLEKS                       R2 R14 K25 ["ref"]
      135 MOVE                             R15 R1
      136 JUMPIFNOT                        R15 ; [+83]
      137 GETUPVAL                         R15 0
      138 GETTABLEKS                       R15 R15 K20 ["createElement"]
      140 GETUPVAL                         R16 14
      141 GETTABLEKS                       R16 R16 K31 ["Components"]
      143 GETTABLEKS                       R16 R16 K32 ["FoundationProviderAdapter"]
      145 DUPTABLE                         R17 K34 [{"overlayGui"}]
      146 SETTABLEKS                       R1 R17 K33 ["overlayGui"]
      148 DUPTABLE                         R18 K36 [{"Image"}]
      149 GETUPVAL                         R19 0
      150 GETTABLEKS                       R19 R19 K20 ["createElement"]
      152 GETUPVAL                         R20 15
      153 GETTABLEKS                       R20 R20 K35 ["Image"]
      155 DUPTABLE                         R21 K43 [{"Image", "aspectRatio", "tag", "Position", "sizeConstraint", "onActivated", "stateLayer"}]
      156 GETUPVAL                         R22 2
      157 GETTABLEKS                       R22 R22 K44 ["MANNEQUIN"]
      159 SETTABLEKS                       R22 R21 K35 ["Image"]
      161 LOADK                            R22 K45 [0.493472584856397]
      162 SETTABLEKS                       R22 R21 K37 ["aspectRatio"]
      164 LOADK                            R22 K46 ["anchor-top-right bg-over-media-300 size-full"]
      165 SETTABLEKS                       R22 R21 K38 ["tag"]
      167 GETIMPORT                        R22 K49 [UDim2.new]
      169 LOADN                            R23 1
      170 LOADN                            R24 240
      171 LOADN                            R25 0
      172 LOADN                            R26 18
      173 CALL                             R22 4 1
      174 SETTABLEKS                       R22 R21 K39 ["Position"]
      176 DUPTABLE                         R22 K51 [{"MaxSize"}]
      177 GETIMPORT                        R23 K53 [Vector2.new]
      179 LOADN                            R24 14
      180 LOADN                            R25 144
      181 CALL                             R23 2 1
      182 SETTABLEKS                       R23 R22 K50 ["MaxSize"]
      184 SETTABLEKS                       R22 R21 K40 ["sizeConstraint"]
      186 SETTABLEKS                       R3 R21 K41 ["onActivated"]
      188 DUPTABLE                         R22 K55 [{"affordance"}]
      189 GETUPVAL                         R23 15
      190 GETTABLEKS                       R23 R23 K56 ["Enums"]
      192 GETTABLEKS                       R23 R23 K57 ["StateLayerAffordance"]
      194 GETTABLEKS                       R23 R23 K58 ["None"]
      196 SETTABLEKS                       R23 R22 K54 ["affordance"]
      198 SETTABLEKS                       R22 R21 K42 ["stateLayer"]
      200 NEWTABLE                         R22 1 0
      202 GETUPVAL                         R23 0
      203 GETTABLEKS                       R23 R23 K20 ["createElement"]
      205 GETUPVAL                         R24 15
      206 GETTABLEKS                       R24 R24 K59 ["View"]
      208 DUPTABLE                         R25 K60 [{"tag"}]
      209 LOADK                            R26 K61 ["size-full"]
      210 SETTABLEKS                       R26 R25 K38 ["tag"]
      212 MOVE                             R26 R10
      213 CALL                             R23 3 1
      214 SETTABLEKS                       R23 R22 K62 ["Dots"]
      216 CALL                             R19 3 1
      217 SETTABLEKS                       R19 R18 K35 ["Image"]
      219 CALL                             R15 3 1
      220 CALL                             R12 3 1
      221 GETUPVAL                         R13 16
      222 LOADK                            R14 K63 ["MannequinPanel"]
      223 CALL                             R11 3 -1
      224 RETURN                           R11 -1
      225 LOADNIL                          R11
      226 JUMPIF                           R6 ; [+432]
      227 LOADNIL                          R12
      228 LOADNIL                          R13
      229 LOADNIL                          R14
      230 GETTABLEKS                       R15 R0 K64 ["detectedHrd"]
      232 JUMPIFNOT                        R15 ; [+19]
      233 GETTABLEKS                       R15 R0 K65 ["localization"]
      235 LOADK                            R17 K66 ["Mannequin"]
      236 LOADK                            R18 K67 ["HrdDetected"]
      237 NAMECALL                         R15 R15 K68 ["getText"]
      239 CALL                             R15 3 1
      240 MOVE                             R12 R15
      241 GETTABLEKS                       R15 R0 K65 ["localization"]
      243 LOADK                            R17 K66 ["Mannequin"]
      244 LOADK                            R18 K69 ["SelectHrd"]
      245 NAMECALL                         R15 R15 K68 ["getText"]
      247 CALL                             R15 3 1
      248 MOVE                             R13 R15
      249 GETTABLEKS                       R14 R0 K70 ["onSelectHrd"]
      251 JUMP                             ; [+38]
      252 GETUPVAL                         R16 3
      253 CALL                             R16 0 1
      254 JUMPIFNOT                        R16 ; [+3]
      255 GETTABLEKS                       R15 R0 K71 ["hasModel"]
      257 JUMP                             ; [+2]
      258 GETTABLEKS                       R15 R0 K72 ["DEPRECATED_hasHumanoid"]
      260 JUMPIFNOT                        R15 ; [+19]
      261 GETTABLEKS                       R15 R0 K65 ["localization"]
      263 LOADK                            R17 K66 ["Mannequin"]
      264 LOADK                            R18 K73 ["NoHrd"]
      265 NAMECALL                         R15 R15 K68 ["getText"]
      267 CALL                             R15 3 1
      268 MOVE                             R12 R15
      269 GETTABLEKS                       R15 R0 K65 ["localization"]
      271 LOADK                            R17 K66 ["Mannequin"]
      272 LOADK                            R18 K74 ["CreateHrd"]
      273 NAMECALL                         R15 R15 K68 ["getText"]
      275 CALL                             R15 3 1
      276 MOVE                             R13 R15
      277 GETTABLEKS                       R14 R0 K75 ["onCreateHrd"]
      279 JUMP                             ; [+10]
      280 GETTABLEKS                       R15 R0 K65 ["localization"]
      282 LOADK                            R17 K66 ["Mannequin"]
      283 LOADK                            R18 K76 ["SelectHRDPlaceholder"]
      284 NAMECALL                         R15 R15 K68 ["getText"]
      286 CALL                             R15 3 1
      287 MOVE                             R12 R15
      288 LOADNIL                          R13
      289 LOADNIL                          R14
      290 GETUPVAL                         R15 0
      291 GETTABLEKS                       R15 R15 K20 ["createElement"]
      293 GETUPVAL                         R16 15
      294 GETTABLEKS                       R16 R16 K59 ["View"]
      296 DUPTABLE                         R17 K78 [{"tag", "Size"}]
      297 LOADK                            R18 K79 ["col align-x-center align-y-center gap-small"]
      298 SETTABLEKS                       R18 R17 K38 ["tag"]
      300 GETIMPORT                        R18 K49 [UDim2.new]
      302 LOADN                            R19 1
      303 LOADN                            R20 0
      304 LOADN                            R21 1
      305 LOADN                            R22 0
      306 CALL                             R18 4 1
      307 SETTABLEKS                       R18 R17 K77 ["Size"]
      309 DUPTABLE                         R18 K86 [{"Padding", "Title", "Placeholder", "Backdrop", "Documentation", "Button"}]
      310 GETUPVAL                         R19 0
      311 GETTABLEKS                       R19 R19 K20 ["createElement"]
      313 LOADK                            R20 K87 ["UIPadding"]
      314 DUPTABLE                         R21 K90 [{"PaddingLeft", "PaddingRight"}]
      315 GETIMPORT                        R22 K92 [UDim.new]
      317 LOADN                            R23 0
      318 LOADN                            R24 12
      319 CALL                             R22 2 1
      320 SETTABLEKS                       R22 R21 K88 ["PaddingLeft"]
      322 GETIMPORT                        R22 K92 [UDim.new]
      324 LOADN                            R23 0
      325 LOADN                            R24 12
      326 CALL                             R22 2 1
      327 SETTABLEKS                       R22 R21 K89 ["PaddingRight"]
      329 CALL                             R19 2 1
      330 SETTABLEKS                       R19 R18 K80 ["Padding"]
      332 GETUPVAL                         R20 17
      333 CALL                             R20 0 1
      334 JUMPIFNOT                        R20 ; [+37]
      335 GETUPVAL                         R19 0
      336 GETTABLEKS                       R19 R19 K20 ["createElement"]
      338 GETUPVAL                         R20 15
      339 GETTABLEKS                       R20 R20 K93 ["Text"]
      341 DUPTABLE                         R21 K96 [{"LayoutOrder", "tag", "Size", "AutomaticSize", "Text"}]
      342 LOADN                            R22 1
      343 SETTABLEKS                       R22 R21 K94 ["LayoutOrder"]
      345 LOADK                            R22 K97 ["text-heading-small text-center"]
      346 SETTABLEKS                       R22 R21 K38 ["tag"]
      348 GETIMPORT                        R22 K49 [UDim2.new]
      350 LOADN                            R23 1
      351 LOADN                            R24 0
      352 LOADN                            R25 0
      353 LOADN                            R26 0
      354 CALL                             R22 4 1
      355 SETTABLEKS                       R22 R21 K77 ["Size"]
      357 GETIMPORT                        R22 K99 [Enum.AutomaticSize.Y]
      359 SETTABLEKS                       R22 R21 K95 ["AutomaticSize"]
      361 GETTABLEKS                       R22 R0 K65 ["localization"]
      363 LOADK                            R24 K66 ["Mannequin"]
      364 LOADK                            R25 K81 ["Title"]
      365 NAMECALL                         R22 R22 K68 ["getText"]
      367 CALL                             R22 3 1
      368 SETTABLEKS                       R22 R21 K93 ["Text"]
      370 CALL                             R19 2 1
      371 JUMP                             ; [+1]
      372 LOADNIL                          R19
      373 SETTABLEKS                       R19 R18 K81 ["Title"]
      375 GETUPVAL                         R19 0
      376 GETTABLEKS                       R19 R19 K20 ["createElement"]
      378 GETUPVAL                         R20 15
      379 GETTABLEKS                       R20 R20 K93 ["Text"]
      381 DUPTABLE                         R21 K96 [{"LayoutOrder", "tag", "Size", "AutomaticSize", "Text"}]
      382 LOADN                            R22 2
      383 SETTABLEKS                       R22 R21 K94 ["LayoutOrder"]
      385 GETUPVAL                         R23 17
      386 CALL                             R23 0 1
      387 JUMPIFNOT                        R23 ; [+2]
      388 LOADK                            R22 K100 ["text-body-small text-center"]
      389 JUMP                             ; [+1]
      390 LOADK                            R22 K101 ["text-caption-small text-center"]
      391 SETTABLEKS                       R22 R21 K38 ["tag"]
      393 GETIMPORT                        R22 K49 [UDim2.new]
      395 LOADN                            R23 1
      396 LOADN                            R24 0
      397 LOADN                            R25 0
      398 LOADN                            R26 0
      399 CALL                             R22 4 1
      400 SETTABLEKS                       R22 R21 K77 ["Size"]
      402 GETIMPORT                        R22 K99 [Enum.AutomaticSize.Y]
      404 SETTABLEKS                       R22 R21 K95 ["AutomaticSize"]
      406 SETTABLEKS                       R12 R21 K93 ["Text"]
      408 CALL                             R19 2 1
      409 SETTABLEKS                       R19 R18 K82 ["Placeholder"]
      411 GETUPVAL                         R20 17
      412 CALL                             R20 0 1
      413 JUMPIFNOT                        R20 ; [+44]
      414 GETUPVAL                         R19 0
      415 GETTABLEKS                       R19 R19 K20 ["createElement"]
      417 GETUPVAL                         R20 15
      418 GETTABLEKS                       R20 R20 K35 ["Image"]
      420 DUPTABLE                         R21 K103 [{"Image", "Position", "aspectRatio", "AnchorPoint", "Size"}]
      421 SETTABLEKS                       R5 R21 K35 ["Image"]
      423 GETIMPORT                        R22 K105 [UDim2.fromScale]
      425 LOADK                            R23 K106 [0.5]
      426 LOADK                            R24 K107 [0.3]
      427 CALL                             R22 2 1
      428 SETTABLEKS                       R22 R21 K39 ["Position"]
      430 DUPTABLE                         R22 K110 [{"AspectRatio", "DominantAxis"}]
      431 LOADN                            R23 1
      432 SETTABLEKS                       R23 R22 K108 ["AspectRatio"]
      434 GETIMPORT                        R23 K112 [Enum.DominantAxis.Width]
      436 SETTABLEKS                       R23 R22 K109 ["DominantAxis"]
      438 SETTABLEKS                       R22 R21 K37 ["aspectRatio"]
      440 GETIMPORT                        R22 K53 [Vector2.new]
      442 LOADK                            R23 K106 [0.5]
      443 LOADK                            R24 K106 [0.5]
      444 CALL                             R22 2 1
      445 SETTABLEKS                       R22 R21 K102 ["AnchorPoint"]
      447 GETIMPORT                        R22 K49 [UDim2.new]
      449 LOADK                            R23 K106 [0.5]
      450 LOADN                            R24 0
      451 LOADK                            R25 K106 [0.5]
      452 LOADN                            R26 0
      453 CALL                             R22 4 1
      454 SETTABLEKS                       R22 R21 K77 ["Size"]
      456 CALL                             R19 2 1
      457 JUMP                             ; [+1]
      458 LOADNIL                          R19
      459 SETTABLEKS                       R19 R18 K83 ["Backdrop"]
      461 GETUPVAL                         R20 17
      462 CALL                             R20 0 1
      463 JUMPIFNOT                        R20 ; [+45]
      464 JUMPIF                           R14 ; [+44]
      465 GETUPVAL                         R19 0
      466 GETTABLEKS                       R19 R19 K20 ["createElement"]
      468 GETUPVAL                         R20 15
      469 GETTABLEKS                       R20 R20 K85 ["Button"]
      471 DUPTABLE                         R21 K116 [{"LayoutOrder", "text", "variant", "size", "onActivated"}]
      472 LOADN                            R22 3
      473 SETTABLEKS                       R22 R21 K94 ["LayoutOrder"]
      475 GETTABLEKS                       R22 R0 K65 ["localization"]
      477 LOADK                            R24 K66 ["Mannequin"]
      478 LOADK                            R25 K84 ["Documentation"]
      479 NAMECALL                         R22 R22 K68 ["getText"]
      481 CALL                             R22 3 1
      482 SETTABLEKS                       R22 R21 K113 ["text"]
      484 GETUPVAL                         R22 15
      485 GETTABLEKS                       R22 R22 K56 ["Enums"]
      487 GETTABLEKS                       R22 R22 K117 ["ButtonVariant"]
      489 GETTABLEKS                       R22 R22 K118 ["Link"]
      491 SETTABLEKS                       R22 R21 K114 ["variant"]
      493 GETUPVAL                         R22 15
      494 GETTABLEKS                       R22 R22 K56 ["Enums"]
      496 GETTABLEKS                       R22 R22 K119 ["InputSize"]
      498 GETTABLEKS                       R22 R22 K120 ["Small"]
      500 SETTABLEKS                       R22 R21 K115 ["size"]
      502 DUPCLOSURE                       R22 K121 [PROTO_11]
      503 CAPTURE                          UPVAL U18
      504 CAPTURE                          UPVAL U2
      505 SETTABLEKS                       R22 R21 K41 ["onActivated"]
      507 CALL                             R19 2 1
      508 JUMP                             ; [+1]
      509 LOADNIL                          R19
      510 SETTABLEKS                       R19 R18 K84 ["Documentation"]
      512 JUMPIFNOT                        R14 ; [+140]
      513 GETUPVAL                         R20 19
      514 CALL                             R20 0 1
      515 JUMPIFNOT                        R20 ; [+41]
      516 GETUPVAL                         R19 0
      517 GETTABLEKS                       R19 R19 K20 ["createElement"]
      519 GETUPVAL                         R20 15
      520 GETTABLEKS                       R20 R20 K85 ["Button"]
      522 DUPTABLE                         R21 K123 [{"LayoutOrder", "text", "variant", "size", "width", "onActivated"}]
      523 LOADN                            R22 4
      524 SETTABLEKS                       R22 R21 K94 ["LayoutOrder"]
      526 SETTABLEKS                       R13 R21 K113 ["text"]
      528 GETUPVAL                         R22 15
      529 GETTABLEKS                       R22 R22 K56 ["Enums"]
      531 GETTABLEKS                       R22 R22 K117 ["ButtonVariant"]
      533 GETTABLEKS                       R22 R22 K124 ["Emphasis"]
      535 SETTABLEKS                       R22 R21 K114 ["variant"]
      537 GETUPVAL                         R22 15
      538 GETTABLEKS                       R22 R22 K56 ["Enums"]
      540 GETTABLEKS                       R22 R22 K119 ["InputSize"]
      542 GETTABLEKS                       R22 R22 K120 ["Small"]
      544 SETTABLEKS                       R22 R21 K115 ["size"]
      546 GETIMPORT                        R22 K92 [UDim.new]
      548 LOADN                            R23 0
      549 LOADN                            R24 160
      550 CALL                             R22 2 1
      551 SETTABLEKS                       R22 R21 K122 ["width"]
      553 SETTABLEKS                       R14 R21 K41 ["onActivated"]
      555 CALL                             R19 2 1
      556 JUMP                             ; [+95]
      557 GETUPVAL                         R19 0
      558 GETTABLEKS                       R19 R19 K20 ["createElement"]
      560 GETUPVAL                         R20 15
      561 GETTABLEKS                       R20 R20 K59 ["View"]
      563 DUPTABLE                         R21 K125 [{"LayoutOrder", "tag", "onActivated", "stateLayer"}]
      564 LOADN                            R22 4
      565 SETTABLEKS                       R22 R21 K94 ["LayoutOrder"]
      567 LOADK                            R22 K126 ["auto-xy bg-surface-200"]
      568 SETTABLEKS                       R22 R21 K38 ["tag"]
      570 SETTABLEKS                       R14 R21 K41 ["onActivated"]
      572 DUPTABLE                         R22 K55 [{"affordance"}]
      573 GETUPVAL                         R23 15
      574 GETTABLEKS                       R23 R23 K56 ["Enums"]
      576 GETTABLEKS                       R23 R23 K57 ["StateLayerAffordance"]
      578 GETTABLEKS                       R23 R23 K127 ["Background"]
      580 SETTABLEKS                       R23 R22 K54 ["affordance"]
      582 SETTABLEKS                       R22 R21 K42 ["stateLayer"]
      584 DUPTABLE                         R22 K129 [{"Corner", "Padding", "Text"}]
      585 GETUPVAL                         R23 0
      586 GETTABLEKS                       R23 R23 K20 ["createElement"]
      588 LOADK                            R24 K130 ["UICorner"]
      589 DUPTABLE                         R25 K132 [{"CornerRadius"}]
      590 GETIMPORT                        R26 K92 [UDim.new]
      592 LOADN                            R27 0
      593 LOADN                            R28 4
      594 CALL                             R26 2 1
      595 SETTABLEKS                       R26 R25 K131 ["CornerRadius"]
      597 CALL                             R23 2 1
      598 SETTABLEKS                       R23 R22 K128 ["Corner"]
      600 GETUPVAL                         R23 0
      601 GETTABLEKS                       R23 R23 K20 ["createElement"]
      603 LOADK                            R24 K87 ["UIPadding"]
      604 DUPTABLE                         R25 K135 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      605 GETIMPORT                        R26 K92 [UDim.new]
      607 LOADN                            R27 0
      608 LOADN                            R28 12
      609 CALL                             R26 2 1
      610 SETTABLEKS                       R26 R25 K88 ["PaddingLeft"]
      612 GETIMPORT                        R26 K92 [UDim.new]
      614 LOADN                            R27 0
      615 LOADN                            R28 12
      616 CALL                             R26 2 1
      617 SETTABLEKS                       R26 R25 K89 ["PaddingRight"]
      619 GETIMPORT                        R26 K92 [UDim.new]
      621 LOADN                            R27 0
      622 LOADN                            R28 5
      623 CALL                             R26 2 1
      624 SETTABLEKS                       R26 R25 K133 ["PaddingTop"]
      626 GETIMPORT                        R26 K92 [UDim.new]
      628 LOADN                            R27 0
      629 LOADN                            R28 5
      630 CALL                             R26 2 1
      631 SETTABLEKS                       R26 R25 K134 ["PaddingBottom"]
      633 CALL                             R23 2 1
      634 SETTABLEKS                       R23 R22 K80 ["Padding"]
      636 GETUPVAL                         R23 0
      637 GETTABLEKS                       R23 R23 K20 ["createElement"]
      639 GETUPVAL                         R24 15
      640 GETTABLEKS                       R24 R24 K93 ["Text"]
      642 DUPTABLE                         R25 K136 [{"tag", "Text"}]
      643 LOADK                            R26 K137 ["text-caption-small auto-xy"]
      644 SETTABLEKS                       R26 R25 K38 ["tag"]
      646 SETTABLEKS                       R13 R25 K93 ["Text"]
      648 CALL                             R23 2 1
      649 SETTABLEKS                       R23 R22 K93 ["Text"]
      651 CALL                             R19 3 1
      652 JUMPIF                           R19 ; [+1]
      653 LOADNIL                          R19
      654 SETTABLEKS                       R19 R18 K85 ["Button"]
      656 CALL                             R15 3 1
      657 MOVE                             R11 R15
      658 JUMP                             ; [+80]
      659 JUMPIFNOT                        R7 ; [+78]
      660 GETUPVAL                         R12 0
      661 GETTABLEKS                       R12 R12 K20 ["createElement"]
      663 GETUPVAL                         R13 15
      664 GETTABLEKS                       R13 R13 K35 ["Image"]
      666 DUPTABLE                         R14 K138 [{"Image", "aspectRatio", "Position", "AnchorPoint", "Size", "onActivated", "stateLayer"}]
      667 GETUPVAL                         R15 2
      668 GETTABLEKS                       R15 R15 K44 ["MANNEQUIN"]
      670 SETTABLEKS                       R15 R14 K35 ["Image"]
      672 DUPTABLE                         R15 K110 [{"AspectRatio", "DominantAxis"}]
      673 LOADK                            R16 K45 [0.493472584856397]
      674 SETTABLEKS                       R16 R15 K108 ["AspectRatio"]
      676 GETIMPORT                        R16 K140 [Enum.DominantAxis.Height]
      678 SETTABLEKS                       R16 R15 K109 ["DominantAxis"]
      680 SETTABLEKS                       R15 R14 K37 ["aspectRatio"]
      682 GETIMPORT                        R15 K105 [UDim2.fromScale]
      684 LOADK                            R16 K106 [0.5]
      685 LOADK                            R17 K106 [0.5]
      686 CALL                             R15 2 1
      687 SETTABLEKS                       R15 R14 K39 ["Position"]
      689 GETIMPORT                        R15 K53 [Vector2.new]
      691 LOADK                            R16 K106 [0.5]
      692 LOADK                            R17 K106 [0.5]
      693 CALL                             R15 2 1
      694 SETTABLEKS                       R15 R14 K102 ["AnchorPoint"]
      696 GETIMPORT                        R15 K49 [UDim2.new]
      698 LOADN                            R16 1
      699 LOADN                            R17 0
      700 LOADN                            R18 1
      701 LOADN                            R19 0
      702 CALL                             R15 4 1
      703 SETTABLEKS                       R15 R14 K77 ["Size"]
      705 SETTABLEKS                       R3 R14 K41 ["onActivated"]
      707 DUPTABLE                         R15 K55 [{"affordance"}]
      708 GETUPVAL                         R16 15
      709 GETTABLEKS                       R16 R16 K56 ["Enums"]
      711 GETTABLEKS                       R16 R16 K57 ["StateLayerAffordance"]
      713 GETTABLEKS                       R16 R16 K58 ["None"]
      715 SETTABLEKS                       R16 R15 K54 ["affordance"]
      717 SETTABLEKS                       R15 R14 K42 ["stateLayer"]
      719 NEWTABLE                         R15 1 0
      721 GETUPVAL                         R16 0
      722 GETTABLEKS                       R16 R16 K20 ["createElement"]
      724 GETUPVAL                         R17 15
      725 GETTABLEKS                       R17 R17 K59 ["View"]
      727 DUPTABLE                         R18 K60 [{"tag"}]
      728 LOADK                            R19 K61 ["size-full"]
      729 SETTABLEKS                       R19 R18 K38 ["tag"]
      731 MOVE                             R19 R10
      732 CALL                             R16 3 1
      733 SETTABLEKS                       R16 R15 K62 ["Dots"]
      735 CALL                             R12 3 1
      736 MOVE                             R11 R12
      737 JUMP                             ; [+1]
      738 LOADNIL                          R11
      739 GETUPVAL                         R12 0
      740 GETTABLEKS                       R12 R12 K20 ["createElement"]
      742 GETUPVAL                         R13 20
      743 DUPTABLE                         R14 K145 [{"title", "bodyVisible", "onClose", "content"}]
      744 GETTABLEKS                       R15 R0 K65 ["localization"]
      746 LOADK                            R17 K66 ["Mannequin"]
      747 LOADK                            R18 K81 ["Title"]
      748 NAMECALL                         R15 R15 K68 ["getText"]
      750 CALL                             R15 3 1
      751 SETTABLEKS                       R15 R14 K141 ["title"]
      753 JUMPIFNOT                        R6 ; [+2]
      754 MOVE                             R15 R7
      755 JUMP                             ; [+1]
      756 LOADB                            R15 1
      757 SETTABLEKS                       R15 R14 K142 ["bodyVisible"]
      759 GETTABLEKS                       R15 R0 K143 ["onClose"]
      761 SETTABLEKS                       R15 R14 K143 ["onClose"]
      763 DUPTABLE                         R15 K147 [{"Inner"}]
      764 SETTABLEKS                       R11 R15 K146 ["Inner"]
      766 SETTABLEKS                       R15 R14 K144 ["content"]
      768 CALL                             R12 2 -1
      769 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AnimationEditor"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Resources"]
       20 GETTABLEKS                       R3 R3 K10 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["Foundation"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Components"]
       36 GETTABLEKS                       R5 R5 K13 ["MannequinPanel"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K6 ["Packages"]
       43 GETTABLEKS                       R6 R6 K14 ["React"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K6 ["Packages"]
       50 GETTABLEKS                       R7 R7 K15 ["ReactRoblox"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K6 ["Packages"]
       57 GETTABLEKS                       R8 R8 K16 ["SignalsReact"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K6 ["Packages"]
       64 GETTABLEKS                       R9 R9 K17 ["StudioFoundation"]
       66 CALL                             R8 1 1
       67 GETTABLEKS                       R9 R3 K18 ["Hooks"]
       69 GETTABLEKS                       R9 R9 K19 ["useTokens"]
       71 GETTABLEKS                       R10 R8 K18 ["Hooks"]
       73 GETTABLEKS                       R10 R10 K20 ["useThemeName"]
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K8 ["Src"]
       79 GETTABLEKS                       R12 R12 K21 ["Types"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K5 [require]
       84 GETTABLEKS                       R13 R0 K6 ["Packages"]
       86 GETTABLEKS                       R13 R13 K22 ["AdaptiveAnimationTools"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K5 [require]
       91 GETTABLEKS                       R14 R0 K8 ["Src"]
       93 GETTABLEKS                       R14 R14 K12 ["Components"]
       95 GETTABLEKS                       R14 R14 K18 ["Hooks"]
       97 GETTABLEKS                       R14 R14 K23 ["useMappedInstances"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETTABLEKS                       R15 R0 K8 ["Src"]
      104 GETTABLEKS                       R15 R15 K12 ["Components"]
      106 GETTABLEKS                       R15 R15 K18 ["Hooks"]
      108 GETTABLEKS                       R15 R15 K24 ["useHandIcon"]
      110 CALL                             R14 1 1
      111 GETIMPORT                        R15 K5 [require]
      113 GETTABLEKS                       R16 R0 K8 ["Src"]
      115 GETTABLEKS                       R16 R16 K25 ["Flags"]
      117 GETTABLEKS                       R16 R16 K26 ["getFFlagAdaptiveAnimationHandRig"]
      119 CALL                             R15 1 1
      120 GETIMPORT                        R16 K5 [require]
      122 GETTABLEKS                       R17 R0 K8 ["Src"]
      124 GETTABLEKS                       R17 R17 K25 ["Flags"]
      126 GETTABLEKS                       R17 R17 K27 ["getFFlagAdaptiveAnimationHandRigQoL"]
      128 CALL                             R16 1 1
      129 GETIMPORT                        R17 K5 [require]
      131 GETTABLEKS                       R18 R0 K8 ["Src"]
      133 GETTABLEKS                       R18 R18 K25 ["Flags"]
      135 GETTABLEKS                       R18 R18 K28 ["getFFlagAdaptiveAnimationMannequinFix"]
      137 CALL                             R17 1 1
      138 GETIMPORT                        R18 K5 [require]
      140 GETTABLEKS                       R19 R0 K8 ["Src"]
      142 GETTABLEKS                       R19 R19 K25 ["Flags"]
      144 GETTABLEKS                       R19 R19 K29 ["getFFlagAdaptiveAnimationLargerCreateButton"]
      146 CALL                             R18 1 1
      147 GETIMPORT                        R19 K5 [require]
      149 GETTABLEKS                       R20 R0 K8 ["Src"]
      151 GETTABLEKS                       R20 R20 K25 ["Flags"]
      153 GETTABLEKS                       R20 R20 K30 ["getFFlagAdaptiveAnimationEmptyStateRefactor"]
      155 CALL                             R19 1 1
      156 GETIMPORT                        R20 K32 [game]
      158 LOADK                            R22 K33 ["CoreGui"]
      159 NAMECALL                         R20 R20 K34 ["GetService"]
      161 CALL                             R20 2 1
      162 GETIMPORT                        R21 K32 [game]
      164 LOADK                            R23 K35 ["BrowserService"]
      165 NAMECALL                         R21 R21 K34 ["GetService"]
      167 CALL                             R21 2 1
      168 GETTABLEKS                       R22 R12 K36 ["hasSpine"]
      170 GETTABLEKS                       R23 R12 K37 ["hasPelvis"]
      172 JUMPIFNOT                        R22 ; [+3]
      173 GETTABLEKS                       R24 R12 K38 ["spineLabel"]
      175 JUMP                             ; [+5]
      176 JUMPIFNOT                        R23 ; [+3]
      177 GETIMPORT                        R24 K42 [Enum.RigLabel.Pelvis]
      179 JUMP                             ; [+1]
      180 LOADNIL                          R24
      181 GETTABLEKS                       R25 R12 K43 ["LeftToeBase"]
      183 GETTABLEKS                       R26 R12 K44 ["RightToeBase"]
      185 DUPCLOSURE                       R27 K45 [PROTO_3]
      186 CAPTURE                          VAL R9
      187 CAPTURE                          VAL R17
      188 CAPTURE                          VAL R5
      189 CAPTURE                          VAL R1
      190 CAPTURE                          VAL R7
      191 CAPTURE                          VAL R16
      192 CAPTURE                          VAL R3
      193 DUPCLOSURE                       R28 K46 [PROTO_7]
      194 CAPTURE                          VAL R9
      195 CAPTURE                          VAL R5
      196 CAPTURE                          VAL R17
      197 CAPTURE                          VAL R1
      198 CAPTURE                          VAL R7
      199 CAPTURE                          VAL R14
      200 CAPTURE                          VAL R16
      201 CAPTURE                          VAL R3
      202 DUPCLOSURE                       R29 K47 [PROTO_12]
      203 CAPTURE                          VAL R5
      204 CAPTURE                          VAL R10
      205 CAPTURE                          VAL R2
      206 CAPTURE                          VAL R17
      207 CAPTURE                          VAL R13
      208 CAPTURE                          VAL R27
      209 CAPTURE                          VAL R26
      210 CAPTURE                          VAL R25
      211 CAPTURE                          VAL R24
      212 CAPTURE                          VAL R22
      213 CAPTURE                          VAL R28
      214 CAPTURE                          VAL R16
      215 CAPTURE                          VAL R15
      216 CAPTURE                          VAL R6
      217 CAPTURE                          VAL R8
      218 CAPTURE                          VAL R3
      219 CAPTURE                          VAL R20
      220 CAPTURE                          VAL R19
      221 CAPTURE                          VAL R21
      222 CAPTURE                          VAL R18
      223 CAPTURE                          VAL R4
      224 RETURN                           R29 1
