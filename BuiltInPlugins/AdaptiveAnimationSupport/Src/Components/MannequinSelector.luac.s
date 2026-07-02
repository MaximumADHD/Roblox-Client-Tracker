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
      171 DUPTABLE                         R14 K37 [{["tag"] = "anchor-center-center auto-xy", ["Position"], ["onActivated"], ["onStateChanged"], ["stateLayer"]}]
      172 GETIMPORT                        R15 K40 [UDim2.fromScale]
      174 GETTABLEKS                       R17 R0 K42 ["position"]
      176 GETTABLEKS                       R17 R17 K43 ["X"]
      178 DIVK                             R16 R17 K41 [189]
      179 GETTABLEKS                       R18 R0 K42 ["position"]
      181 GETTABLEKS                       R18 R18 K45 ["Y"]
      183 DIVK                             R17 R18 K44 [383]
      184 CALL                             R15 2 1
      185 SETTABLEKS                       R15 R14 K33 ["Position"]
      187 SETTABLEKS                       R11 R14 K34 ["onActivated"]
      189 GETUPVAL                         R15 2
      190 GETTABLEKS                       R15 R15 K26 ["useCallback"]
      192 NEWCLOSURE                       R16 P2
      193 CAPTURE                          VAL R6
      194 CAPTURE                          REF R2
      195 CAPTURE                          VAL R0
      196 NEWTABLE                         R17 0 3
      198 MOVE                             R18 R2
      199 GETTABLEKS                       R19 R0 K46 ["onDotHoverEnter"]
      201 GETTABLEKS                       R20 R0 K47 ["onDotHoverLeave"]
      203 SETLIST                          R17 R18 3 [1]
      205 CALL                             R15 2 1
      206 SETTABLEKS                       R15 R14 K35 ["onStateChanged"]
      208 DUPTABLE                         R15 K49 [{"affordance"}]
      209 GETUPVAL                         R16 6
      210 GETTABLEKS                       R16 R16 K50 ["Enums"]
      212 GETTABLEKS                       R16 R16 K51 ["StateLayerAffordance"]
      214 GETTABLEKS                       R16 R16 K52 ["None"]
      216 SETTABLEKS                       R16 R15 K48 ["affordance"]
      218 SETTABLEKS                       R15 R14 K36 ["stateLayer"]
      220 DUPTABLE                         R15 K54 [{"Tooltip"}]
      221 GETUPVAL                         R16 2
      222 GETTABLEKS                       R16 R16 K29 ["createElement"]
      224 GETUPVAL                         R17 6
      225 GETTABLEKS                       R17 R17 K53 ["Tooltip"]
      227 DUPTABLE                         R18 K58 [{"title", "align", "side"}]
      228 GETTABLEKS                       R19 R0 K3 ["jointLabel"]
      230 GETTABLEKS                       R19 R19 K8 ["Name"]
      232 SETTABLEKS                       R19 R18 K55 ["title"]
      234 GETUPVAL                         R19 6
      235 GETTABLEKS                       R19 R19 K50 ["Enums"]
      237 GETTABLEKS                       R19 R19 K59 ["PopoverAlign"]
      239 GETTABLEKS                       R19 R19 K60 ["Center"]
      241 SETTABLEKS                       R19 R18 K56 ["align"]
      243 GETUPVAL                         R19 6
      244 GETTABLEKS                       R19 R19 K50 ["Enums"]
      246 GETTABLEKS                       R19 R19 K61 ["PopoverSide"]
      248 GETTABLEKS                       R19 R19 K62 ["Top"]
      250 SETTABLEKS                       R19 R18 K57 ["side"]
      252 GETUPVAL                         R19 2
      253 GETTABLEKS                       R19 R19 K29 ["createElement"]
      255 GETUPVAL                         R20 6
      256 GETTABLEKS                       R20 R20 K30 ["View"]
      258 DUPTABLE                         R21 K66 [{"Size", "backgroundStyle", "stroke"}]
      259 JUMPIFNOT                        R7 ; [+8]
      260 GETIMPORT                        R22 K68 [UDim2.new]
      262 LOADN                            R23 0
      263 LOADN                            R24 14
      264 LOADN                            R25 0
      265 LOADN                            R26 14
      266 CALL                             R22 4 1
      267 JUMP                             ; [+7]
      268 GETIMPORT                        R22 K68 [UDim2.new]
      270 LOADN                            R23 0
      271 LOADN                            R24 10
      272 LOADN                            R25 0
      273 LOADN                            R26 10
      274 CALL                             R22 4 1
      275 SETTABLEKS                       R22 R21 K63 ["Size"]
      277 SETTABLEKS                       R10 R21 K64 ["backgroundStyle"]
      279 DUPTABLE                         R22 K70 [{"Color", "Thickness"}]
      280 GETTABLEKS                       R23 R9 K71 ["Color3"]
      282 SETTABLEKS                       R23 R22 K10 ["Color"]
      284 JUMPIFNOT                        R7 ; [+2]
      285 LOADN                            R23 2
      286 JUMP                             ; [+1]
      287 LOADN                            R23 1
      288 SETTABLEKS                       R23 R22 K69 ["Thickness"]
      290 SETTABLEKS                       R22 R21 K65 ["stroke"]
      292 DUPTABLE                         R22 K73 [{"UICorner"}]
      293 GETUPVAL                         R23 2
      294 GETTABLEKS                       R23 R23 K29 ["createElement"]
      296 LOADK                            R24 K72 ["UICorner"]
      297 DUPTABLE                         R25 K75 [{"CornerRadius"}]
      298 GETIMPORT                        R26 K77 [UDim.new]
      300 LOADN                            R27 0
      301 LOADN                            R28 9999
      302 CALL                             R26 2 1
      303 SETTABLEKS                       R26 R25 K74 ["CornerRadius"]
      305 CALL                             R23 2 1
      306 SETTABLEKS                       R23 R22 K72 ["UICorner"]
      308 CALL                             R19 3 -1
      309 CALL                             R16 -1 1
      310 SETTABLEKS                       R16 R15 K53 ["Tooltip"]
      312 CALL                             R12 3 -1
      313 CLOSEUPVALS                      R2
      314 RETURN                           R12 -1

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
      117 DUPTABLE                         R11 K36 [{["tag"] = "anchor-center-center auto-xy", ["Position"], ["onActivated"], ["onStateChanged"], ["stateLayer"]}]
      118 GETIMPORT                        R12 K39 [UDim2.fromScale]
      120 GETTABLEKS                       R14 R0 K41 ["position"]
      122 GETTABLEKS                       R14 R14 K42 ["X"]
      124 DIVK                             R13 R14 K40 [189]
      125 GETTABLEKS                       R15 R0 K41 ["position"]
      127 GETTABLEKS                       R15 R15 K44 ["Y"]
      129 DIVK                             R14 R15 K43 [383]
      130 CALL                             R12 2 1
      131 SETTABLEKS                       R12 R11 K32 ["Position"]
      133 SETTABLEKS                       R8 R11 K33 ["onActivated"]
      135 GETUPVAL                         R12 1
      136 GETTABLEKS                       R12 R12 K27 ["useCallback"]
      138 NEWCLOSURE                       R13 P2
      139 CAPTURE                          VAL R3
      140 NEWTABLE                         R14 0 0
      142 CALL                             R12 2 1
      143 SETTABLEKS                       R12 R11 K34 ["onStateChanged"]
      145 DUPTABLE                         R12 K46 [{"affordance"}]
      146 GETUPVAL                         R13 7
      147 GETTABLEKS                       R13 R13 K47 ["Enums"]
      149 GETTABLEKS                       R13 R13 K48 ["StateLayerAffordance"]
      151 GETTABLEKS                       R13 R13 K49 ["None"]
      153 SETTABLEKS                       R13 R12 K45 ["affordance"]
      155 SETTABLEKS                       R12 R11 K35 ["stateLayer"]
      157 DUPTABLE                         R12 K51 [{"Tooltip"}]
      158 GETUPVAL                         R13 1
      159 GETTABLEKS                       R13 R13 K28 ["createElement"]
      161 GETUPVAL                         R14 7
      162 GETTABLEKS                       R14 R14 K50 ["Tooltip"]
      164 DUPTABLE                         R15 K54 [{"title", "align", "side"}]
      165 GETTABLEKS                       R17 R0 K3 ["side"]
      167 JUMPIFNOTEQKS                    R17 K4 ["right"] ; [+3]
      169 LOADK                            R16 K55 ["Right Hand"]
      170 JUMP                             ; [+1]
      171 LOADK                            R16 K56 ["Left Hand"]
      172 SETTABLEKS                       R16 R15 K52 ["title"]
      174 GETUPVAL                         R16 7
      175 GETTABLEKS                       R16 R16 K47 ["Enums"]
      177 GETTABLEKS                       R16 R16 K57 ["PopoverAlign"]
      179 GETTABLEKS                       R16 R16 K58 ["Center"]
      181 SETTABLEKS                       R16 R15 K53 ["align"]
      183 GETUPVAL                         R16 7
      184 GETTABLEKS                       R16 R16 K47 ["Enums"]
      186 GETTABLEKS                       R16 R16 K59 ["PopoverSide"]
      188 GETTABLEKS                       R16 R16 K60 ["Top"]
      190 SETTABLEKS                       R16 R15 K3 ["side"]
      192 GETUPVAL                         R17 6
      193 CALL                             R17 0 1
      194 JUMPIFNOT                        R17 ; [+37]
      195 GETUPVAL                         R16 1
      196 GETTABLEKS                       R16 R16 K28 ["createElement"]
      198 LOADK                            R17 K61 ["ImageLabel"]
      199 DUPTABLE                         R18 K68 [{["Size"], ["Image"], ["ImageTransparency"], ["BackgroundTransparency"] = 1, ["ScaleType"]}]
      200 JUMPIFNOT                        R2 ; [+8]
      201 GETIMPORT                        R19 K70 [UDim2.new]
      203 LOADN                            R20 0
      204 LOADN                            R21 18
      205 LOADN                            R22 0
      206 LOADN                            R23 18
      207 CALL                             R19 4 1
      208 JUMP                             ; [+7]
      209 GETIMPORT                        R19 K70 [UDim2.new]
      211 LOADN                            R20 0
      212 LOADN                            R21 14
      213 LOADN                            R22 0
      214 LOADN                            R23 14
      215 CALL                             R19 4 1
      216 SETTABLEKS                       R19 R18 K62 ["Size"]
      218 SETTABLEKS                       R5 R18 K63 ["Image"]
      220 JUMPIFNOT                        R2 ; [+2]
      221 LOADN                            R19 0
      222 JUMP                             ; [+1]
      223 LOADK                            R19 K71 [0.2]
      224 SETTABLEKS                       R19 R18 K64 ["ImageTransparency"]
      226 GETIMPORT                        R19 K73 [Enum.ScaleType.Fit]
      228 SETTABLEKS                       R19 R18 K67 ["ScaleType"]
      230 CALL                             R16 2 1
      231 JUMP                             ; [+57]
      232 GETUPVAL                         R16 1
      233 GETTABLEKS                       R16 R16 K28 ["createElement"]
      235 GETUPVAL                         R17 7
      236 GETTABLEKS                       R17 R17 K29 ["View"]
      238 DUPTABLE                         R18 K76 [{"Size", "backgroundStyle", "stroke"}]
      239 JUMPIFNOT                        R2 ; [+8]
      240 GETIMPORT                        R19 K70 [UDim2.new]
      242 LOADN                            R20 0
      243 LOADN                            R21 14
      244 LOADN                            R22 0
      245 LOADN                            R23 14
      246 CALL                             R19 4 1
      247 JUMP                             ; [+7]
      248 GETIMPORT                        R19 K70 [UDim2.new]
      250 LOADN                            R20 0
      251 LOADN                            R21 10
      252 LOADN                            R22 0
      253 LOADN                            R23 10
      254 CALL                             R19 4 1
      255 SETTABLEKS                       R19 R18 K62 ["Size"]
      257 SETTABLEKS                       R6 R18 K74 ["backgroundStyle"]
      259 DUPTABLE                         R19 K78 [{"Color", "Thickness"}]
      260 GETTABLEKS                       R20 R7 K79 ["Color3"]
      262 SETTABLEKS                       R20 R19 K15 ["Color"]
      264 JUMPIFNOT                        R2 ; [+2]
      265 LOADN                            R20 2
      266 JUMP                             ; [+1]
      267 LOADN                            R20 1
      268 SETTABLEKS                       R20 R19 K77 ["Thickness"]
      270 SETTABLEKS                       R19 R18 K75 ["stroke"]
      272 DUPTABLE                         R19 K81 [{"UICorner"}]
      273 GETUPVAL                         R20 1
      274 GETTABLEKS                       R20 R20 K28 ["createElement"]
      276 LOADK                            R21 K80 ["UICorner"]
      277 DUPTABLE                         R22 K83 [{"CornerRadius"}]
      278 GETIMPORT                        R23 K85 [UDim.new]
      280 LOADN                            R24 0
      281 LOADN                            R25 9999
      282 CALL                             R23 2 1
      283 SETTABLEKS                       R23 R22 K82 ["CornerRadius"]
      285 CALL                             R20 2 1
      286 SETTABLEKS                       R20 R19 K80 ["UICorner"]
      288 CALL                             R16 3 1
      289 CALL                             R13 3 1
      290 SETTABLEKS                       R13 R12 K50 ["Tooltip"]
      292 CALL                             R9 3 -1
      293 CLOSEUPVALS                      R4
      294 RETURN                           R9 -1

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
       18 DUPTABLE                         R5 K40 [{["jointLabel"], ["position"], ["optional"] = True, ["selectedJoint"], ["mappedJoint"], ["DEPRECATED_rigDescriptor"], ["armedRigLabel"], ["onArmJoint"], ["onMapJoint"], ["counterpartHoveredJointName"], ["onDotHoverEnter"], ["onDotHoverLeave"]}]
       19 GETIMPORT                        R6 K43 [Enum.RigLabel.HeadBase]
       21 SETTABLEKS                       R6 R5 K27 ["jointLabel"]
       23 GETIMPORT                        R6 K46 [Vector2.new]
       25 LOADN                            R7 96
       26 LOADN                            R8 40
       27 CALL                             R6 2 1
       28 SETTABLEKS                       R6 R5 K28 ["position"]
       30 GETUPVAL                         R6 3
       31 GETTABLEKS                       R6 R6 K31 ["selectedJoint"]
       33 SETTABLEKS                       R6 R5 K31 ["selectedJoint"]
       35 GETIMPORT                        R7 K43 [Enum.RigLabel.HeadBase]
       37 GETTABLE                         R6 R0 R7
       38 SETTABLEKS                       R6 R5 K32 ["mappedJoint"]
       40 SETTABLEKS                       R1 R5 K33 ["DEPRECATED_rigDescriptor"]
       42 GETUPVAL                         R6 3
       43 GETTABLEKS                       R6 R6 K34 ["armedRigLabel"]
       45 SETTABLEKS                       R6 R5 K34 ["armedRigLabel"]
       47 GETUPVAL                         R6 3
       48 GETTABLEKS                       R6 R6 K35 ["onArmJoint"]
       50 SETTABLEKS                       R6 R5 K35 ["onArmJoint"]
       52 GETUPVAL                         R6 3
       53 GETTABLEKS                       R6 R6 K36 ["onMapJoint"]
       55 SETTABLEKS                       R6 R5 K36 ["onMapJoint"]
       57 GETUPVAL                         R6 3
       58 GETTABLEKS                       R6 R6 K37 ["counterpartHoveredJointName"]
       60 SETTABLEKS                       R6 R5 K37 ["counterpartHoveredJointName"]
       62 GETUPVAL                         R6 3
       63 GETTABLEKS                       R6 R6 K38 ["onDotHoverEnter"]
       65 SETTABLEKS                       R6 R5 K38 ["onDotHoverEnter"]
       67 GETUPVAL                         R6 3
       68 GETTABLEKS                       R6 R6 K39 ["onDotHoverLeave"]
       70 SETTABLEKS                       R6 R5 K39 ["onDotHoverLeave"]
       72 CALL                             R3 2 1
       73 SETTABLEKS                       R3 R2 K1 ["HeadBase"]
       75 GETUPVAL                         R3 4
       76 GETTABLEKS                       R3 R3 K26 ["createElement"]
       78 GETUPVAL                         R4 5
       79 DUPTABLE                         R5 K48 [{["jointLabel"], ["position"], ["optional"] = False, ["selectedJoint"], ["mappedJoint"], ["DEPRECATED_rigDescriptor"], ["armedRigLabel"], ["onArmJoint"], ["onMapJoint"], ["counterpartHoveredJointName"], ["onDotHoverEnter"], ["onDotHoverLeave"]}]
       80 GETIMPORT                        R6 K49 [Enum.RigLabel.Neck]
       82 SETTABLEKS                       R6 R5 K27 ["jointLabel"]
       84 GETIMPORT                        R6 K46 [Vector2.new]
       86 LOADN                            R7 96
       87 LOADN                            R8 68
       88 CALL                             R6 2 1
       89 SETTABLEKS                       R6 R5 K28 ["position"]
       91 GETUPVAL                         R6 3
       92 GETTABLEKS                       R6 R6 K31 ["selectedJoint"]
       94 SETTABLEKS                       R6 R5 K31 ["selectedJoint"]
       96 GETIMPORT                        R7 K49 [Enum.RigLabel.Neck]
       98 GETTABLE                         R6 R0 R7
       99 SETTABLEKS                       R6 R5 K32 ["mappedJoint"]
      101 SETTABLEKS                       R1 R5 K33 ["DEPRECATED_rigDescriptor"]
      103 GETUPVAL                         R6 3
      104 GETTABLEKS                       R6 R6 K34 ["armedRigLabel"]
      106 SETTABLEKS                       R6 R5 K34 ["armedRigLabel"]
      108 GETUPVAL                         R6 3
      109 GETTABLEKS                       R6 R6 K35 ["onArmJoint"]
      111 SETTABLEKS                       R6 R5 K35 ["onArmJoint"]
      113 GETUPVAL                         R6 3
      114 GETTABLEKS                       R6 R6 K36 ["onMapJoint"]
      116 SETTABLEKS                       R6 R5 K36 ["onMapJoint"]
      118 GETUPVAL                         R6 3
      119 GETTABLEKS                       R6 R6 K37 ["counterpartHoveredJointName"]
      121 SETTABLEKS                       R6 R5 K37 ["counterpartHoveredJointName"]
      123 GETUPVAL                         R6 3
      124 GETTABLEKS                       R6 R6 K38 ["onDotHoverEnter"]
      126 SETTABLEKS                       R6 R5 K38 ["onDotHoverEnter"]
      128 GETUPVAL                         R6 3
      129 GETTABLEKS                       R6 R6 K39 ["onDotHoverLeave"]
      131 SETTABLEKS                       R6 R5 K39 ["onDotHoverLeave"]
      133 CALL                             R3 2 1
      134 SETTABLEKS                       R3 R2 K2 ["Neck"]
      136 GETUPVAL                         R3 4
      137 GETTABLEKS                       R3 R3 K26 ["createElement"]
      139 GETUPVAL                         R4 5
      140 DUPTABLE                         R5 K40 [{["jointLabel"], ["position"], ["optional"] = True, ["selectedJoint"], ["mappedJoint"], ["DEPRECATED_rigDescriptor"], ["armedRigLabel"], ["onArmJoint"], ["onMapJoint"], ["counterpartHoveredJointName"], ["onDotHoverEnter"], ["onDotHoverLeave"]}]
      141 GETIMPORT                        R6 K50 [Enum.RigLabel.RightClavicle]
      143 SETTABLEKS                       R6 R5 K27 ["jointLabel"]
      145 GETIMPORT                        R6 K46 [Vector2.new]
      147 LOADN                            R7 82
      148 LOADN                            R8 80
      149 CALL                             R6 2 1
      150 SETTABLEKS                       R6 R5 K28 ["position"]
      152 GETUPVAL                         R6 3
      153 GETTABLEKS                       R6 R6 K31 ["selectedJoint"]
      155 SETTABLEKS                       R6 R5 K31 ["selectedJoint"]
      157 GETIMPORT                        R7 K50 [Enum.RigLabel.RightClavicle]
      159 GETTABLE                         R6 R0 R7
      160 SETTABLEKS                       R6 R5 K32 ["mappedJoint"]
      162 SETTABLEKS                       R1 R5 K33 ["DEPRECATED_rigDescriptor"]
      164 GETUPVAL                         R6 3
      165 GETTABLEKS                       R6 R6 K34 ["armedRigLabel"]
      167 SETTABLEKS                       R6 R5 K34 ["armedRigLabel"]
      169 GETUPVAL                         R6 3
      170 GETTABLEKS                       R6 R6 K35 ["onArmJoint"]
      172 SETTABLEKS                       R6 R5 K35 ["onArmJoint"]
      174 GETUPVAL                         R6 3
      175 GETTABLEKS                       R6 R6 K36 ["onMapJoint"]
      177 SETTABLEKS                       R6 R5 K36 ["onMapJoint"]
      179 GETUPVAL                         R6 3
      180 GETTABLEKS                       R6 R6 K37 ["counterpartHoveredJointName"]
      182 SETTABLEKS                       R6 R5 K37 ["counterpartHoveredJointName"]
      184 GETUPVAL                         R6 3
      185 GETTABLEKS                       R6 R6 K38 ["onDotHoverEnter"]
      187 SETTABLEKS                       R6 R5 K38 ["onDotHoverEnter"]
      189 GETUPVAL                         R6 3
      190 GETTABLEKS                       R6 R6 K39 ["onDotHoverLeave"]
      192 SETTABLEKS                       R6 R5 K39 ["onDotHoverLeave"]
      194 CALL                             R3 2 1
      195 SETTABLEKS                       R3 R2 K3 ["RightClavicle"]
      197 GETUPVAL                         R3 4
      198 GETTABLEKS                       R3 R3 K26 ["createElement"]
      200 GETUPVAL                         R4 5
      201 DUPTABLE                         R5 K48 [{["jointLabel"], ["position"], ["optional"] = False, ["selectedJoint"], ["mappedJoint"], ["DEPRECATED_rigDescriptor"], ["armedRigLabel"], ["onArmJoint"], ["onMapJoint"], ["counterpartHoveredJointName"], ["onDotHoverEnter"], ["onDotHoverLeave"]}]
      202 GETIMPORT                        R6 K51 [Enum.RigLabel.RightShoulder]
      204 SETTABLEKS                       R6 R5 K27 ["jointLabel"]
      206 GETIMPORT                        R6 K46 [Vector2.new]
      208 LOADN                            R7 58
      209 LOADN                            R8 84
      210 CALL                             R6 2 1
      211 SETTABLEKS                       R6 R5 K28 ["position"]
      213 GETUPVAL                         R6 3
      214 GETTABLEKS                       R6 R6 K31 ["selectedJoint"]
      216 SETTABLEKS                       R6 R5 K31 ["selectedJoint"]
      218 GETIMPORT                        R7 K51 [Enum.RigLabel.RightShoulder]
      220 GETTABLE                         R6 R0 R7
      221 SETTABLEKS                       R6 R5 K32 ["mappedJoint"]
      223 SETTABLEKS                       R1 R5 K33 ["DEPRECATED_rigDescriptor"]
      225 GETUPVAL                         R6 3
      226 GETTABLEKS                       R6 R6 K34 ["armedRigLabel"]
      228 SETTABLEKS                       R6 R5 K34 ["armedRigLabel"]
      230 GETUPVAL                         R6 3
      231 GETTABLEKS                       R6 R6 K35 ["onArmJoint"]
      233 SETTABLEKS                       R6 R5 K35 ["onArmJoint"]
      235 GETUPVAL                         R6 3
      236 GETTABLEKS                       R6 R6 K36 ["onMapJoint"]
      238 SETTABLEKS                       R6 R5 K36 ["onMapJoint"]
      240 GETUPVAL                         R6 3
      241 GETTABLEKS                       R6 R6 K37 ["counterpartHoveredJointName"]
      243 SETTABLEKS                       R6 R5 K37 ["counterpartHoveredJointName"]
      245 GETUPVAL                         R6 3
      246 GETTABLEKS                       R6 R6 K38 ["onDotHoverEnter"]
      248 SETTABLEKS                       R6 R5 K38 ["onDotHoverEnter"]
      250 GETUPVAL                         R6 3
      251 GETTABLEKS                       R6 R6 K39 ["onDotHoverLeave"]
      253 SETTABLEKS                       R6 R5 K39 ["onDotHoverLeave"]
      255 CALL                             R3 2 1
      256 SETTABLEKS                       R3 R2 K4 ["RightShoulder"]
      258 GETUPVAL                         R3 4
      259 GETTABLEKS                       R3 R3 K26 ["createElement"]
      261 GETUPVAL                         R4 5
      262 DUPTABLE                         R5 K48 [{["jointLabel"], ["position"], ["optional"] = False, ["selectedJoint"], ["mappedJoint"], ["DEPRECATED_rigDescriptor"], ["armedRigLabel"], ["onArmJoint"], ["onMapJoint"], ["counterpartHoveredJointName"], ["onDotHoverEnter"], ["onDotHoverLeave"]}]
      263 GETIMPORT                        R6 K52 [Enum.RigLabel.RightElbow]
      265 SETTABLEKS                       R6 R5 K27 ["jointLabel"]
      267 GETIMPORT                        R6 K46 [Vector2.new]
      269 LOADN                            R7 48
      270 LOADN                            R8 132
      271 CALL                             R6 2 1
      272 SETTABLEKS                       R6 R5 K28 ["position"]
      274 GETUPVAL                         R6 3
      275 GETTABLEKS                       R6 R6 K31 ["selectedJoint"]
      277 SETTABLEKS                       R6 R5 K31 ["selectedJoint"]
      279 GETIMPORT                        R7 K52 [Enum.RigLabel.RightElbow]
      281 GETTABLE                         R6 R0 R7
      282 SETTABLEKS                       R6 R5 K32 ["mappedJoint"]
      284 SETTABLEKS                       R1 R5 K33 ["DEPRECATED_rigDescriptor"]
      286 GETUPVAL                         R6 3
      287 GETTABLEKS                       R6 R6 K34 ["armedRigLabel"]
      289 SETTABLEKS                       R6 R5 K34 ["armedRigLabel"]
      291 GETUPVAL                         R6 3
      292 GETTABLEKS                       R6 R6 K35 ["onArmJoint"]
      294 SETTABLEKS                       R6 R5 K35 ["onArmJoint"]
      296 GETUPVAL                         R6 3
      297 GETTABLEKS                       R6 R6 K36 ["onMapJoint"]
      299 SETTABLEKS                       R6 R5 K36 ["onMapJoint"]
      301 GETUPVAL                         R6 3
      302 GETTABLEKS                       R6 R6 K37 ["counterpartHoveredJointName"]
      304 SETTABLEKS                       R6 R5 K37 ["counterpartHoveredJointName"]
      306 GETUPVAL                         R6 3
      307 GETTABLEKS                       R6 R6 K38 ["onDotHoverEnter"]
      309 SETTABLEKS                       R6 R5 K38 ["onDotHoverEnter"]
      311 GETUPVAL                         R6 3
      312 GETTABLEKS                       R6 R6 K39 ["onDotHoverLeave"]
      314 SETTABLEKS                       R6 R5 K39 ["onDotHoverLeave"]
      316 CALL                             R3 2 1
      317 SETTABLEKS                       R3 R2 K5 ["RightElbow"]
      319 GETUPVAL                         R3 4
      320 GETTABLEKS                       R3 R3 K26 ["createElement"]
      322 GETUPVAL                         R4 5
      323 DUPTABLE                         R5 K48 [{["jointLabel"], ["position"], ["optional"] = False, ["selectedJoint"], ["mappedJoint"], ["DEPRECATED_rigDescriptor"], ["armedRigLabel"], ["onArmJoint"], ["onMapJoint"], ["counterpartHoveredJointName"], ["onDotHoverEnter"], ["onDotHoverLeave"]}]
      324 GETIMPORT                        R6 K53 [Enum.RigLabel.RightWrist]
      326 SETTABLEKS                       R6 R5 K27 ["jointLabel"]
      328 GETIMPORT                        R6 K46 [Vector2.new]
      330 LOADN                            R7 36
      331 LOADN                            R8 178
      332 CALL                             R6 2 1
      333 SETTABLEKS                       R6 R5 K28 ["position"]
      335 GETUPVAL                         R6 3
      336 GETTABLEKS                       R6 R6 K31 ["selectedJoint"]
      338 SETTABLEKS                       R6 R5 K31 ["selectedJoint"]
      340 GETIMPORT                        R7 K53 [Enum.RigLabel.RightWrist]
      342 GETTABLE                         R6 R0 R7
      343 SETTABLEKS                       R6 R5 K32 ["mappedJoint"]
      345 SETTABLEKS                       R1 R5 K33 ["DEPRECATED_rigDescriptor"]
      347 GETUPVAL                         R6 3
      348 GETTABLEKS                       R6 R6 K34 ["armedRigLabel"]
      350 SETTABLEKS                       R6 R5 K34 ["armedRigLabel"]
      352 GETUPVAL                         R6 3
      353 GETTABLEKS                       R6 R6 K35 ["onArmJoint"]
      355 SETTABLEKS                       R6 R5 K35 ["onArmJoint"]
      357 GETUPVAL                         R6 3
      358 GETTABLEKS                       R6 R6 K36 ["onMapJoint"]
      360 SETTABLEKS                       R6 R5 K36 ["onMapJoint"]
      362 GETUPVAL                         R6 3
      363 GETTABLEKS                       R6 R6 K37 ["counterpartHoveredJointName"]
      365 SETTABLEKS                       R6 R5 K37 ["counterpartHoveredJointName"]
      367 GETUPVAL                         R6 3
      368 GETTABLEKS                       R6 R6 K38 ["onDotHoverEnter"]
      370 SETTABLEKS                       R6 R5 K38 ["onDotHoverEnter"]
      372 GETUPVAL                         R6 3
      373 GETTABLEKS                       R6 R6 K39 ["onDotHoverLeave"]
      375 SETTABLEKS                       R6 R5 K39 ["onDotHoverLeave"]
      377 CALL                             R3 2 1
      378 SETTABLEKS                       R3 R2 K6 ["RightWrist"]
      380 GETUPVAL                         R3 4
      381 GETTABLEKS                       R3 R3 K26 ["createElement"]
      383 GETUPVAL                         R4 5
      384 DUPTABLE                         R5 K48 [{["jointLabel"], ["position"], ["optional"] = False, ["selectedJoint"], ["mappedJoint"], ["DEPRECATED_rigDescriptor"], ["armedRigLabel"], ["onArmJoint"], ["onMapJoint"], ["counterpartHoveredJointName"], ["onDotHoverEnter"], ["onDotHoverLeave"]}]
      385 GETIMPORT                        R6 K54 [Enum.RigLabel.RightHip]
      387 SETTABLEKS                       R6 R5 K27 ["jointLabel"]
      389 GETIMPORT                        R6 K46 [Vector2.new]
      391 LOADN                            R7 74
      392 LOADN                            R8 181
      393 CALL                             R6 2 1
      394 SETTABLEKS                       R6 R5 K28 ["position"]
      396 GETUPVAL                         R6 3
      397 GETTABLEKS                       R6 R6 K31 ["selectedJoint"]
      399 SETTABLEKS                       R6 R5 K31 ["selectedJoint"]
      401 GETIMPORT                        R7 K54 [Enum.RigLabel.RightHip]
      403 GETTABLE                         R6 R0 R7
      404 SETTABLEKS                       R6 R5 K32 ["mappedJoint"]
      406 SETTABLEKS                       R1 R5 K33 ["DEPRECATED_rigDescriptor"]
      408 GETUPVAL                         R6 3
      409 GETTABLEKS                       R6 R6 K34 ["armedRigLabel"]
      411 SETTABLEKS                       R6 R5 K34 ["armedRigLabel"]
      413 GETUPVAL                         R6 3
      414 GETTABLEKS                       R6 R6 K35 ["onArmJoint"]
      416 SETTABLEKS                       R6 R5 K35 ["onArmJoint"]
      418 GETUPVAL                         R6 3
      419 GETTABLEKS                       R6 R6 K36 ["onMapJoint"]
      421 SETTABLEKS                       R6 R5 K36 ["onMapJoint"]
      423 GETUPVAL                         R6 3
      424 GETTABLEKS                       R6 R6 K37 ["counterpartHoveredJointName"]
      426 SETTABLEKS                       R6 R5 K37 ["counterpartHoveredJointName"]
      428 GETUPVAL                         R6 3
      429 GETTABLEKS                       R6 R6 K38 ["onDotHoverEnter"]
      431 SETTABLEKS                       R6 R5 K38 ["onDotHoverEnter"]
      433 GETUPVAL                         R6 3
      434 GETTABLEKS                       R6 R6 K39 ["onDotHoverLeave"]
      436 SETTABLEKS                       R6 R5 K39 ["onDotHoverLeave"]
      438 CALL                             R3 2 1
      439 SETTABLEKS                       R3 R2 K7 ["RightHip"]
      441 GETUPVAL                         R3 4
      442 GETTABLEKS                       R3 R3 K26 ["createElement"]
      444 GETUPVAL                         R4 5
      445 DUPTABLE                         R5 K48 [{["jointLabel"], ["position"], ["optional"] = False, ["selectedJoint"], ["mappedJoint"], ["DEPRECATED_rigDescriptor"], ["armedRigLabel"], ["onArmJoint"], ["onMapJoint"], ["counterpartHoveredJointName"], ["onDotHoverEnter"], ["onDotHoverLeave"]}]
      446 GETIMPORT                        R6 K55 [Enum.RigLabel.RightKnee]
      448 SETTABLEKS                       R6 R5 K27 ["jointLabel"]
      450 GETIMPORT                        R6 K46 [Vector2.new]
      452 LOADN                            R7 68
      453 LOADN                            R8 255
      454 CALL                             R6 2 1
      455 SETTABLEKS                       R6 R5 K28 ["position"]
      457 GETUPVAL                         R6 3
      458 GETTABLEKS                       R6 R6 K31 ["selectedJoint"]
      460 SETTABLEKS                       R6 R5 K31 ["selectedJoint"]
      462 GETIMPORT                        R7 K55 [Enum.RigLabel.RightKnee]
      464 GETTABLE                         R6 R0 R7
      465 SETTABLEKS                       R6 R5 K32 ["mappedJoint"]
      467 SETTABLEKS                       R1 R5 K33 ["DEPRECATED_rigDescriptor"]
      469 GETUPVAL                         R6 3
      470 GETTABLEKS                       R6 R6 K34 ["armedRigLabel"]
      472 SETTABLEKS                       R6 R5 K34 ["armedRigLabel"]
      474 GETUPVAL                         R6 3
      475 GETTABLEKS                       R6 R6 K35 ["onArmJoint"]
      477 SETTABLEKS                       R6 R5 K35 ["onArmJoint"]
      479 GETUPVAL                         R6 3
      480 GETTABLEKS                       R6 R6 K36 ["onMapJoint"]
      482 SETTABLEKS                       R6 R5 K36 ["onMapJoint"]
      484 GETUPVAL                         R6 3
      485 GETTABLEKS                       R6 R6 K37 ["counterpartHoveredJointName"]
      487 SETTABLEKS                       R6 R5 K37 ["counterpartHoveredJointName"]
      489 GETUPVAL                         R6 3
      490 GETTABLEKS                       R6 R6 K38 ["onDotHoverEnter"]
      492 SETTABLEKS                       R6 R5 K38 ["onDotHoverEnter"]
      494 GETUPVAL                         R6 3
      495 GETTABLEKS                       R6 R6 K39 ["onDotHoverLeave"]
      497 SETTABLEKS                       R6 R5 K39 ["onDotHoverLeave"]
      499 CALL                             R3 2 1
      500 SETTABLEKS                       R3 R2 K8 ["RightKnee"]
      502 GETUPVAL                         R3 4
      503 GETTABLEKS                       R3 R3 K26 ["createElement"]
      505 GETUPVAL                         R4 5
      506 DUPTABLE                         R5 K48 [{["jointLabel"], ["position"], ["optional"] = False, ["selectedJoint"], ["mappedJoint"], ["DEPRECATED_rigDescriptor"], ["armedRigLabel"], ["onArmJoint"], ["onMapJoint"], ["counterpartHoveredJointName"], ["onDotHoverEnter"], ["onDotHoverLeave"]}]
      507 GETIMPORT                        R6 K56 [Enum.RigLabel.RightAnkle]
      509 SETTABLEKS                       R6 R5 K27 ["jointLabel"]
      511 GETIMPORT                        R6 K46 [Vector2.new]
      513 LOADN                            R7 62
      514 LOADN                            R8 324
      515 CALL                             R6 2 1
      516 SETTABLEKS                       R6 R5 K28 ["position"]
      518 GETUPVAL                         R6 3
      519 GETTABLEKS                       R6 R6 K31 ["selectedJoint"]
      521 SETTABLEKS                       R6 R5 K31 ["selectedJoint"]
      523 GETIMPORT                        R7 K56 [Enum.RigLabel.RightAnkle]
      525 GETTABLE                         R6 R0 R7
      526 SETTABLEKS                       R6 R5 K32 ["mappedJoint"]
      528 SETTABLEKS                       R1 R5 K33 ["DEPRECATED_rigDescriptor"]
      530 GETUPVAL                         R6 3
      531 GETTABLEKS                       R6 R6 K34 ["armedRigLabel"]
      533 SETTABLEKS                       R6 R5 K34 ["armedRigLabel"]
      535 GETUPVAL                         R6 3
      536 GETTABLEKS                       R6 R6 K35 ["onArmJoint"]
      538 SETTABLEKS                       R6 R5 K35 ["onArmJoint"]
      540 GETUPVAL                         R6 3
      541 GETTABLEKS                       R6 R6 K36 ["onMapJoint"]
      543 SETTABLEKS                       R6 R5 K36 ["onMapJoint"]
      545 GETUPVAL                         R6 3
      546 GETTABLEKS                       R6 R6 K37 ["counterpartHoveredJointName"]
      548 SETTABLEKS                       R6 R5 K37 ["counterpartHoveredJointName"]
      550 GETUPVAL                         R6 3
      551 GETTABLEKS                       R6 R6 K38 ["onDotHoverEnter"]
      553 SETTABLEKS                       R6 R5 K38 ["onDotHoverEnter"]
      555 GETUPVAL                         R6 3
      556 GETTABLEKS                       R6 R6 K39 ["onDotHoverLeave"]
      558 SETTABLEKS                       R6 R5 K39 ["onDotHoverLeave"]
      560 CALL                             R3 2 1
      561 SETTABLEKS                       R3 R2 K9 ["RightAnkle"]
      563 GETUPVAL                         R3 4
      564 GETTABLEKS                       R3 R3 K26 ["createElement"]
      566 GETUPVAL                         R4 5
      567 DUPTABLE                         R5 K40 [{["jointLabel"], ["position"], ["optional"] = True, ["selectedJoint"], ["mappedJoint"], ["DEPRECATED_rigDescriptor"], ["armedRigLabel"], ["onArmJoint"], ["onMapJoint"], ["counterpartHoveredJointName"], ["onDotHoverEnter"], ["onDotHoverLeave"]}]
      568 GETIMPORT                        R6 K57 [Enum.RigLabel.RightToeBase]
      570 SETTABLEKS                       R6 R5 K27 ["jointLabel"]
      572 GETIMPORT                        R6 K46 [Vector2.new]
      574 LOADN                            R7 55
      575 LOADN                            R8 341
      576 CALL                             R6 2 1
      577 SETTABLEKS                       R6 R5 K28 ["position"]
      579 GETUPVAL                         R6 3
      580 GETTABLEKS                       R6 R6 K31 ["selectedJoint"]
      582 SETTABLEKS                       R6 R5 K31 ["selectedJoint"]
      584 GETIMPORT                        R7 K57 [Enum.RigLabel.RightToeBase]
      586 GETTABLE                         R6 R0 R7
      587 SETTABLEKS                       R6 R5 K32 ["mappedJoint"]
      589 SETTABLEKS                       R1 R5 K33 ["DEPRECATED_rigDescriptor"]
      591 GETUPVAL                         R6 3
      592 GETTABLEKS                       R6 R6 K34 ["armedRigLabel"]
      594 SETTABLEKS                       R6 R5 K34 ["armedRigLabel"]
      596 GETUPVAL                         R6 3
      597 GETTABLEKS                       R6 R6 K35 ["onArmJoint"]
      599 SETTABLEKS                       R6 R5 K35 ["onArmJoint"]
      601 GETUPVAL                         R6 3
      602 GETTABLEKS                       R6 R6 K36 ["onMapJoint"]
      604 SETTABLEKS                       R6 R5 K36 ["onMapJoint"]
      606 GETUPVAL                         R6 3
      607 GETTABLEKS                       R6 R6 K37 ["counterpartHoveredJointName"]
      609 SETTABLEKS                       R6 R5 K37 ["counterpartHoveredJointName"]
      611 GETUPVAL                         R6 3
      612 GETTABLEKS                       R6 R6 K38 ["onDotHoverEnter"]
      614 SETTABLEKS                       R6 R5 K38 ["onDotHoverEnter"]
      616 GETUPVAL                         R6 3
      617 GETTABLEKS                       R6 R6 K39 ["onDotHoverLeave"]
      619 SETTABLEKS                       R6 R5 K39 ["onDotHoverLeave"]
      621 CALL                             R3 2 1
      622 SETTABLEKS                       R3 R2 K10 ["RightToeBase"]
      624 GETUPVAL                         R3 4
      625 GETTABLEKS                       R3 R3 K26 ["createElement"]
      627 GETUPVAL                         R4 5
      628 DUPTABLE                         R5 K40 [{["jointLabel"], ["position"], ["optional"] = True, ["selectedJoint"], ["mappedJoint"], ["DEPRECATED_rigDescriptor"], ["armedRigLabel"], ["onArmJoint"], ["onMapJoint"], ["counterpartHoveredJointName"], ["onDotHoverEnter"], ["onDotHoverLeave"]}]
      629 GETIMPORT                        R6 K58 [Enum.RigLabel.LeftClavicle]
      631 SETTABLEKS                       R6 R5 K27 ["jointLabel"]
      633 GETIMPORT                        R6 K46 [Vector2.new]
      635 LOADN                            R7 110
      636 LOADN                            R8 80
      637 CALL                             R6 2 1
      638 SETTABLEKS                       R6 R5 K28 ["position"]
      640 GETUPVAL                         R6 3
      641 GETTABLEKS                       R6 R6 K31 ["selectedJoint"]
      643 SETTABLEKS                       R6 R5 K31 ["selectedJoint"]
      645 GETIMPORT                        R7 K58 [Enum.RigLabel.LeftClavicle]
      647 GETTABLE                         R6 R0 R7
      648 SETTABLEKS                       R6 R5 K32 ["mappedJoint"]
      650 SETTABLEKS                       R1 R5 K33 ["DEPRECATED_rigDescriptor"]
      652 GETUPVAL                         R6 3
      653 GETTABLEKS                       R6 R6 K34 ["armedRigLabel"]
      655 SETTABLEKS                       R6 R5 K34 ["armedRigLabel"]
      657 GETUPVAL                         R6 3
      658 GETTABLEKS                       R6 R6 K35 ["onArmJoint"]
      660 SETTABLEKS                       R6 R5 K35 ["onArmJoint"]
      662 GETUPVAL                         R6 3
      663 GETTABLEKS                       R6 R6 K36 ["onMapJoint"]
      665 SETTABLEKS                       R6 R5 K36 ["onMapJoint"]
      667 GETUPVAL                         R6 3
      668 GETTABLEKS                       R6 R6 K37 ["counterpartHoveredJointName"]
      670 SETTABLEKS                       R6 R5 K37 ["counterpartHoveredJointName"]
      672 GETUPVAL                         R6 3
      673 GETTABLEKS                       R6 R6 K38 ["onDotHoverEnter"]
      675 SETTABLEKS                       R6 R5 K38 ["onDotHoverEnter"]
      677 GETUPVAL                         R6 3
      678 GETTABLEKS                       R6 R6 K39 ["onDotHoverLeave"]
      680 SETTABLEKS                       R6 R5 K39 ["onDotHoverLeave"]
      682 CALL                             R3 2 1
      683 SETTABLEKS                       R3 R2 K11 ["LeftClavicle"]
      685 GETUPVAL                         R3 4
      686 GETTABLEKS                       R3 R3 K26 ["createElement"]
      688 GETUPVAL                         R4 5
      689 DUPTABLE                         R5 K48 [{["jointLabel"], ["position"], ["optional"] = False, ["selectedJoint"], ["mappedJoint"], ["DEPRECATED_rigDescriptor"], ["armedRigLabel"], ["onArmJoint"], ["onMapJoint"], ["counterpartHoveredJointName"], ["onDotHoverEnter"], ["onDotHoverLeave"]}]
      690 GETIMPORT                        R6 K59 [Enum.RigLabel.LeftShoulder]
      692 SETTABLEKS                       R6 R5 K27 ["jointLabel"]
      694 GETIMPORT                        R6 K46 [Vector2.new]
      696 LOADN                            R7 133
      697 LOADN                            R8 84
      698 CALL                             R6 2 1
      699 SETTABLEKS                       R6 R5 K28 ["position"]
      701 GETUPVAL                         R6 3
      702 GETTABLEKS                       R6 R6 K31 ["selectedJoint"]
      704 SETTABLEKS                       R6 R5 K31 ["selectedJoint"]
      706 GETIMPORT                        R7 K59 [Enum.RigLabel.LeftShoulder]
      708 GETTABLE                         R6 R0 R7
      709 SETTABLEKS                       R6 R5 K32 ["mappedJoint"]
      711 SETTABLEKS                       R1 R5 K33 ["DEPRECATED_rigDescriptor"]
      713 GETUPVAL                         R6 3
      714 GETTABLEKS                       R6 R6 K34 ["armedRigLabel"]
      716 SETTABLEKS                       R6 R5 K34 ["armedRigLabel"]
      718 GETUPVAL                         R6 3
      719 GETTABLEKS                       R6 R6 K35 ["onArmJoint"]
      721 SETTABLEKS                       R6 R5 K35 ["onArmJoint"]
      723 GETUPVAL                         R6 3
      724 GETTABLEKS                       R6 R6 K36 ["onMapJoint"]
      726 SETTABLEKS                       R6 R5 K36 ["onMapJoint"]
      728 GETUPVAL                         R6 3
      729 GETTABLEKS                       R6 R6 K37 ["counterpartHoveredJointName"]
      731 SETTABLEKS                       R6 R5 K37 ["counterpartHoveredJointName"]
      733 GETUPVAL                         R6 3
      734 GETTABLEKS                       R6 R6 K38 ["onDotHoverEnter"]
      736 SETTABLEKS                       R6 R5 K38 ["onDotHoverEnter"]
      738 GETUPVAL                         R6 3
      739 GETTABLEKS                       R6 R6 K39 ["onDotHoverLeave"]
      741 SETTABLEKS                       R6 R5 K39 ["onDotHoverLeave"]
      743 CALL                             R3 2 1
      744 SETTABLEKS                       R3 R2 K12 ["LeftShoulder"]
      746 GETUPVAL                         R3 4
      747 GETTABLEKS                       R3 R3 K26 ["createElement"]
      749 GETUPVAL                         R4 5
      750 DUPTABLE                         R5 K48 [{["jointLabel"], ["position"], ["optional"] = False, ["selectedJoint"], ["mappedJoint"], ["DEPRECATED_rigDescriptor"], ["armedRigLabel"], ["onArmJoint"], ["onMapJoint"], ["counterpartHoveredJointName"], ["onDotHoverEnter"], ["onDotHoverLeave"]}]
      751 GETIMPORT                        R6 K60 [Enum.RigLabel.LeftElbow]
      753 SETTABLEKS                       R6 R5 K27 ["jointLabel"]
      755 GETIMPORT                        R6 K46 [Vector2.new]
      757 LOADN                            R7 144
      758 LOADN                            R8 132
      759 CALL                             R6 2 1
      760 SETTABLEKS                       R6 R5 K28 ["position"]
      762 GETUPVAL                         R6 3
      763 GETTABLEKS                       R6 R6 K31 ["selectedJoint"]
      765 SETTABLEKS                       R6 R5 K31 ["selectedJoint"]
      767 GETIMPORT                        R7 K60 [Enum.RigLabel.LeftElbow]
      769 GETTABLE                         R6 R0 R7
      770 SETTABLEKS                       R6 R5 K32 ["mappedJoint"]
      772 SETTABLEKS                       R1 R5 K33 ["DEPRECATED_rigDescriptor"]
      774 GETUPVAL                         R6 3
      775 GETTABLEKS                       R6 R6 K34 ["armedRigLabel"]
      777 SETTABLEKS                       R6 R5 K34 ["armedRigLabel"]
      779 GETUPVAL                         R6 3
      780 GETTABLEKS                       R6 R6 K35 ["onArmJoint"]
      782 SETTABLEKS                       R6 R5 K35 ["onArmJoint"]
      784 GETUPVAL                         R6 3
      785 GETTABLEKS                       R6 R6 K36 ["onMapJoint"]
      787 SETTABLEKS                       R6 R5 K36 ["onMapJoint"]
      789 GETUPVAL                         R6 3
      790 GETTABLEKS                       R6 R6 K37 ["counterpartHoveredJointName"]
      792 SETTABLEKS                       R6 R5 K37 ["counterpartHoveredJointName"]
      794 GETUPVAL                         R6 3
      795 GETTABLEKS                       R6 R6 K38 ["onDotHoverEnter"]
      797 SETTABLEKS                       R6 R5 K38 ["onDotHoverEnter"]
      799 GETUPVAL                         R6 3
      800 GETTABLEKS                       R6 R6 K39 ["onDotHoverLeave"]
      802 SETTABLEKS                       R6 R5 K39 ["onDotHoverLeave"]
      804 CALL                             R3 2 1
      805 SETTABLEKS                       R3 R2 K13 ["LeftElbow"]
      807 GETUPVAL                         R3 4
      808 GETTABLEKS                       R3 R3 K26 ["createElement"]
      810 GETUPVAL                         R4 5
      811 DUPTABLE                         R5 K48 [{["jointLabel"], ["position"], ["optional"] = False, ["selectedJoint"], ["mappedJoint"], ["DEPRECATED_rigDescriptor"], ["armedRigLabel"], ["onArmJoint"], ["onMapJoint"], ["counterpartHoveredJointName"], ["onDotHoverEnter"], ["onDotHoverLeave"]}]
      812 GETIMPORT                        R6 K61 [Enum.RigLabel.LeftWrist]
      814 SETTABLEKS                       R6 R5 K27 ["jointLabel"]
      816 GETIMPORT                        R6 K46 [Vector2.new]
      818 LOADN                            R7 154
      819 LOADN                            R8 177
      820 CALL                             R6 2 1
      821 SETTABLEKS                       R6 R5 K28 ["position"]
      823 GETUPVAL                         R6 3
      824 GETTABLEKS                       R6 R6 K31 ["selectedJoint"]
      826 SETTABLEKS                       R6 R5 K31 ["selectedJoint"]
      828 GETIMPORT                        R7 K61 [Enum.RigLabel.LeftWrist]
      830 GETTABLE                         R6 R0 R7
      831 SETTABLEKS                       R6 R5 K32 ["mappedJoint"]
      833 SETTABLEKS                       R1 R5 K33 ["DEPRECATED_rigDescriptor"]
      835 GETUPVAL                         R6 3
      836 GETTABLEKS                       R6 R6 K34 ["armedRigLabel"]
      838 SETTABLEKS                       R6 R5 K34 ["armedRigLabel"]
      840 GETUPVAL                         R6 3
      841 GETTABLEKS                       R6 R6 K35 ["onArmJoint"]
      843 SETTABLEKS                       R6 R5 K35 ["onArmJoint"]
      845 GETUPVAL                         R6 3
      846 GETTABLEKS                       R6 R6 K36 ["onMapJoint"]
      848 SETTABLEKS                       R6 R5 K36 ["onMapJoint"]
      850 GETUPVAL                         R6 3
      851 GETTABLEKS                       R6 R6 K37 ["counterpartHoveredJointName"]
      853 SETTABLEKS                       R6 R5 K37 ["counterpartHoveredJointName"]
      855 GETUPVAL                         R6 3
      856 GETTABLEKS                       R6 R6 K38 ["onDotHoverEnter"]
      858 SETTABLEKS                       R6 R5 K38 ["onDotHoverEnter"]
      860 GETUPVAL                         R6 3
      861 GETTABLEKS                       R6 R6 K39 ["onDotHoverLeave"]
      863 SETTABLEKS                       R6 R5 K39 ["onDotHoverLeave"]
      865 CALL                             R3 2 1
      866 SETTABLEKS                       R3 R2 K14 ["LeftWrist"]
      868 GETUPVAL                         R3 4
      869 GETTABLEKS                       R3 R3 K26 ["createElement"]
      871 GETUPVAL                         R4 5
      872 DUPTABLE                         R5 K48 [{["jointLabel"], ["position"], ["optional"] = False, ["selectedJoint"], ["mappedJoint"], ["DEPRECATED_rigDescriptor"], ["armedRigLabel"], ["onArmJoint"], ["onMapJoint"], ["counterpartHoveredJointName"], ["onDotHoverEnter"], ["onDotHoverLeave"]}]
      873 GETIMPORT                        R6 K62 [Enum.RigLabel.LeftHip]
      875 SETTABLEKS                       R6 R5 K27 ["jointLabel"]
      877 GETIMPORT                        R6 K46 [Vector2.new]
      879 LOADN                            R7 116
      880 LOADN                            R8 181
      881 CALL                             R6 2 1
      882 SETTABLEKS                       R6 R5 K28 ["position"]
      884 GETUPVAL                         R6 3
      885 GETTABLEKS                       R6 R6 K31 ["selectedJoint"]
      887 SETTABLEKS                       R6 R5 K31 ["selectedJoint"]
      889 GETIMPORT                        R7 K62 [Enum.RigLabel.LeftHip]
      891 GETTABLE                         R6 R0 R7
      892 SETTABLEKS                       R6 R5 K32 ["mappedJoint"]
      894 SETTABLEKS                       R1 R5 K33 ["DEPRECATED_rigDescriptor"]
      896 GETUPVAL                         R6 3
      897 GETTABLEKS                       R6 R6 K34 ["armedRigLabel"]
      899 SETTABLEKS                       R6 R5 K34 ["armedRigLabel"]
      901 GETUPVAL                         R6 3
      902 GETTABLEKS                       R6 R6 K35 ["onArmJoint"]
      904 SETTABLEKS                       R6 R5 K35 ["onArmJoint"]
      906 GETUPVAL                         R6 3
      907 GETTABLEKS                       R6 R6 K36 ["onMapJoint"]
      909 SETTABLEKS                       R6 R5 K36 ["onMapJoint"]
      911 GETUPVAL                         R6 3
      912 GETTABLEKS                       R6 R6 K37 ["counterpartHoveredJointName"]
      914 SETTABLEKS                       R6 R5 K37 ["counterpartHoveredJointName"]
      916 GETUPVAL                         R6 3
      917 GETTABLEKS                       R6 R6 K38 ["onDotHoverEnter"]
      919 SETTABLEKS                       R6 R5 K38 ["onDotHoverEnter"]
      921 GETUPVAL                         R6 3
      922 GETTABLEKS                       R6 R6 K39 ["onDotHoverLeave"]
      924 SETTABLEKS                       R6 R5 K39 ["onDotHoverLeave"]
      926 CALL                             R3 2 1
      927 SETTABLEKS                       R3 R2 K15 ["LeftHip"]
      929 GETUPVAL                         R3 4
      930 GETTABLEKS                       R3 R3 K26 ["createElement"]
      932 GETUPVAL                         R4 5
      933 DUPTABLE                         R5 K48 [{["jointLabel"], ["position"], ["optional"] = False, ["selectedJoint"], ["mappedJoint"], ["DEPRECATED_rigDescriptor"], ["armedRigLabel"], ["onArmJoint"], ["onMapJoint"], ["counterpartHoveredJointName"], ["onDotHoverEnter"], ["onDotHoverLeave"]}]
      934 GETIMPORT                        R6 K63 [Enum.RigLabel.LeftKnee]
      936 SETTABLEKS                       R6 R5 K27 ["jointLabel"]
      938 GETIMPORT                        R6 K46 [Vector2.new]
      940 LOADN                            R7 122
      941 LOADN                            R8 255
      942 CALL                             R6 2 1
      943 SETTABLEKS                       R6 R5 K28 ["position"]
      945 GETUPVAL                         R6 3
      946 GETTABLEKS                       R6 R6 K31 ["selectedJoint"]
      948 SETTABLEKS                       R6 R5 K31 ["selectedJoint"]
      950 GETIMPORT                        R7 K63 [Enum.RigLabel.LeftKnee]
      952 GETTABLE                         R6 R0 R7
      953 SETTABLEKS                       R6 R5 K32 ["mappedJoint"]
      955 SETTABLEKS                       R1 R5 K33 ["DEPRECATED_rigDescriptor"]
      957 GETUPVAL                         R6 3
      958 GETTABLEKS                       R6 R6 K34 ["armedRigLabel"]
      960 SETTABLEKS                       R6 R5 K34 ["armedRigLabel"]
      962 GETUPVAL                         R6 3
      963 GETTABLEKS                       R6 R6 K35 ["onArmJoint"]
      965 SETTABLEKS                       R6 R5 K35 ["onArmJoint"]
      967 GETUPVAL                         R6 3
      968 GETTABLEKS                       R6 R6 K36 ["onMapJoint"]
      970 SETTABLEKS                       R6 R5 K36 ["onMapJoint"]
      972 GETUPVAL                         R6 3
      973 GETTABLEKS                       R6 R6 K37 ["counterpartHoveredJointName"]
      975 SETTABLEKS                       R6 R5 K37 ["counterpartHoveredJointName"]
      977 GETUPVAL                         R6 3
      978 GETTABLEKS                       R6 R6 K38 ["onDotHoverEnter"]
      980 SETTABLEKS                       R6 R5 K38 ["onDotHoverEnter"]
      982 GETUPVAL                         R6 3
      983 GETTABLEKS                       R6 R6 K39 ["onDotHoverLeave"]
      985 SETTABLEKS                       R6 R5 K39 ["onDotHoverLeave"]
      987 CALL                             R3 2 1
      988 SETTABLEKS                       R3 R2 K16 ["LeftKnee"]
      990 GETUPVAL                         R3 4
      991 GETTABLEKS                       R3 R3 K26 ["createElement"]
      993 GETUPVAL                         R4 5
      994 DUPTABLE                         R5 K48 [{["jointLabel"], ["position"], ["optional"] = False, ["selectedJoint"], ["mappedJoint"], ["DEPRECATED_rigDescriptor"], ["armedRigLabel"], ["onArmJoint"], ["onMapJoint"], ["counterpartHoveredJointName"], ["onDotHoverEnter"], ["onDotHoverLeave"]}]
      995 GETIMPORT                        R6 K64 [Enum.RigLabel.LeftAnkle]
      997 SETTABLEKS                       R6 R5 K27 ["jointLabel"]
      999 GETIMPORT                        R6 K46 [Vector2.new]
     1001 LOADN                            R7 128
     1002 LOADN                            R8 324
     1003 CALL                             R6 2 1
     1004 SETTABLEKS                       R6 R5 K28 ["position"]
     1006 GETUPVAL                         R6 3
     1007 GETTABLEKS                       R6 R6 K31 ["selectedJoint"]
     1009 SETTABLEKS                       R6 R5 K31 ["selectedJoint"]
     1011 GETIMPORT                        R7 K64 [Enum.RigLabel.LeftAnkle]
     1013 GETTABLE                         R6 R0 R7
     1014 SETTABLEKS                       R6 R5 K32 ["mappedJoint"]
     1016 SETTABLEKS                       R1 R5 K33 ["DEPRECATED_rigDescriptor"]
     1018 GETUPVAL                         R6 3
     1019 GETTABLEKS                       R6 R6 K34 ["armedRigLabel"]
     1021 SETTABLEKS                       R6 R5 K34 ["armedRigLabel"]
     1023 GETUPVAL                         R6 3
     1024 GETTABLEKS                       R6 R6 K35 ["onArmJoint"]
     1026 SETTABLEKS                       R6 R5 K35 ["onArmJoint"]
     1028 GETUPVAL                         R6 3
     1029 GETTABLEKS                       R6 R6 K36 ["onMapJoint"]
     1031 SETTABLEKS                       R6 R5 K36 ["onMapJoint"]
     1033 GETUPVAL                         R6 3
     1034 GETTABLEKS                       R6 R6 K37 ["counterpartHoveredJointName"]
     1036 SETTABLEKS                       R6 R5 K37 ["counterpartHoveredJointName"]
     1038 GETUPVAL                         R6 3
     1039 GETTABLEKS                       R6 R6 K38 ["onDotHoverEnter"]
     1041 SETTABLEKS                       R6 R5 K38 ["onDotHoverEnter"]
     1043 GETUPVAL                         R6 3
     1044 GETTABLEKS                       R6 R6 K39 ["onDotHoverLeave"]
     1046 SETTABLEKS                       R6 R5 K39 ["onDotHoverLeave"]
     1048 CALL                             R3 2 1
     1049 SETTABLEKS                       R3 R2 K17 ["LeftAnkle"]
     1051 GETUPVAL                         R3 4
     1052 GETTABLEKS                       R3 R3 K26 ["createElement"]
     1054 GETUPVAL                         R4 5
     1055 DUPTABLE                         R5 K40 [{["jointLabel"], ["position"], ["optional"] = True, ["selectedJoint"], ["mappedJoint"], ["DEPRECATED_rigDescriptor"], ["armedRigLabel"], ["onArmJoint"], ["onMapJoint"], ["counterpartHoveredJointName"], ["onDotHoverEnter"], ["onDotHoverLeave"]}]
     1056 GETIMPORT                        R6 K65 [Enum.RigLabel.LeftToeBase]
     1058 SETTABLEKS                       R6 R5 K27 ["jointLabel"]
     1060 GETIMPORT                        R6 K46 [Vector2.new]
     1062 LOADN                            R7 134
     1063 LOADN                            R8 341
     1064 CALL                             R6 2 1
     1065 SETTABLEKS                       R6 R5 K28 ["position"]
     1067 GETUPVAL                         R6 3
     1068 GETTABLEKS                       R6 R6 K31 ["selectedJoint"]
     1070 SETTABLEKS                       R6 R5 K31 ["selectedJoint"]
     1072 GETIMPORT                        R7 K65 [Enum.RigLabel.LeftToeBase]
     1074 GETTABLE                         R6 R0 R7
     1075 SETTABLEKS                       R6 R5 K32 ["mappedJoint"]
     1077 SETTABLEKS                       R1 R5 K33 ["DEPRECATED_rigDescriptor"]
     1079 GETUPVAL                         R6 3
     1080 GETTABLEKS                       R6 R6 K34 ["armedRigLabel"]
     1082 SETTABLEKS                       R6 R5 K34 ["armedRigLabel"]
     1084 GETUPVAL                         R6 3
     1085 GETTABLEKS                       R6 R6 K35 ["onArmJoint"]
     1087 SETTABLEKS                       R6 R5 K35 ["onArmJoint"]
     1089 GETUPVAL                         R6 3
     1090 GETTABLEKS                       R6 R6 K36 ["onMapJoint"]
     1092 SETTABLEKS                       R6 R5 K36 ["onMapJoint"]
     1094 GETUPVAL                         R6 3
     1095 GETTABLEKS                       R6 R6 K37 ["counterpartHoveredJointName"]
     1097 SETTABLEKS                       R6 R5 K37 ["counterpartHoveredJointName"]
     1099 GETUPVAL                         R6 3
     1100 GETTABLEKS                       R6 R6 K38 ["onDotHoverEnter"]
     1102 SETTABLEKS                       R6 R5 K38 ["onDotHoverEnter"]
     1104 GETUPVAL                         R6 3
     1105 GETTABLEKS                       R6 R6 K39 ["onDotHoverLeave"]
     1107 SETTABLEKS                       R6 R5 K39 ["onDotHoverLeave"]
     1109 CALL                             R3 2 1
     1110 SETTABLEKS                       R3 R2 K18 ["LeftToeBase"]
     1112 GETUPVAL                         R3 4
     1113 GETTABLEKS                       R3 R3 K26 ["createElement"]
     1115 GETUPVAL                         R4 5
     1116 DUPTABLE                         R5 K40 [{["jointLabel"], ["position"], ["optional"] = True, ["selectedJoint"], ["mappedJoint"], ["DEPRECATED_rigDescriptor"], ["armedRigLabel"], ["onArmJoint"], ["onMapJoint"], ["counterpartHoveredJointName"], ["onDotHoverEnter"], ["onDotHoverLeave"]}]
     1117 GETIMPORT                        R6 K66 [Enum.RigLabel.Chest]
     1119 SETTABLEKS                       R6 R5 K27 ["jointLabel"]
     1121 GETIMPORT                        R6 K46 [Vector2.new]
     1123 LOADN                            R7 96
     1124 LOADN                            R8 98
     1125 CALL                             R6 2 1
     1126 SETTABLEKS                       R6 R5 K28 ["position"]
     1128 GETUPVAL                         R6 3
     1129 GETTABLEKS                       R6 R6 K31 ["selectedJoint"]
     1131 SETTABLEKS                       R6 R5 K31 ["selectedJoint"]
     1133 GETIMPORT                        R7 K66 [Enum.RigLabel.Chest]
     1135 GETTABLE                         R6 R0 R7
     1136 SETTABLEKS                       R6 R5 K32 ["mappedJoint"]
     1138 SETTABLEKS                       R1 R5 K33 ["DEPRECATED_rigDescriptor"]
     1140 GETUPVAL                         R6 3
     1141 GETTABLEKS                       R6 R6 K34 ["armedRigLabel"]
     1143 SETTABLEKS                       R6 R5 K34 ["armedRigLabel"]
     1145 GETUPVAL                         R6 3
     1146 GETTABLEKS                       R6 R6 K35 ["onArmJoint"]
     1148 SETTABLEKS                       R6 R5 K35 ["onArmJoint"]
     1150 GETUPVAL                         R6 3
     1151 GETTABLEKS                       R6 R6 K36 ["onMapJoint"]
     1153 SETTABLEKS                       R6 R5 K36 ["onMapJoint"]
     1155 GETUPVAL                         R6 3
     1156 GETTABLEKS                       R6 R6 K37 ["counterpartHoveredJointName"]
     1158 SETTABLEKS                       R6 R5 K37 ["counterpartHoveredJointName"]
     1160 GETUPVAL                         R6 3
     1161 GETTABLEKS                       R6 R6 K38 ["onDotHoverEnter"]
     1163 SETTABLEKS                       R6 R5 K38 ["onDotHoverEnter"]
     1165 GETUPVAL                         R6 3
     1166 GETTABLEKS                       R6 R6 K39 ["onDotHoverLeave"]
     1168 SETTABLEKS                       R6 R5 K39 ["onDotHoverLeave"]
     1170 CALL                             R3 2 1
     1171 SETTABLEKS                       R3 R2 K19 ["Chest"]
     1173 GETUPVAL                         R3 4
     1174 GETTABLEKS                       R3 R3 K26 ["createElement"]
     1176 GETUPVAL                         R4 5
     1177 DUPTABLE                         R5 K48 [{["jointLabel"], ["position"], ["optional"] = False, ["selectedJoint"], ["mappedJoint"], ["DEPRECATED_rigDescriptor"], ["armedRigLabel"], ["onArmJoint"], ["onMapJoint"], ["counterpartHoveredJointName"], ["onDotHoverEnter"], ["onDotHoverLeave"]}]
     1178 GETIMPORT                        R6 K67 [Enum.RigLabel.Root]
     1180 SETTABLEKS                       R6 R5 K27 ["jointLabel"]
     1182 GETIMPORT                        R6 K46 [Vector2.new]
     1184 LOADN                            R7 96
     1185 LOADN                            R8 180
     1186 CALL                             R6 2 1
     1187 SETTABLEKS                       R6 R5 K28 ["position"]
     1189 GETUPVAL                         R6 3
     1190 GETTABLEKS                       R6 R6 K31 ["selectedJoint"]
     1192 SETTABLEKS                       R6 R5 K31 ["selectedJoint"]
     1194 GETIMPORT                        R7 K67 [Enum.RigLabel.Root]
     1196 GETTABLE                         R6 R0 R7
     1197 SETTABLEKS                       R6 R5 K32 ["mappedJoint"]
     1199 SETTABLEKS                       R1 R5 K33 ["DEPRECATED_rigDescriptor"]
     1201 GETUPVAL                         R6 3
     1202 GETTABLEKS                       R6 R6 K34 ["armedRigLabel"]
     1204 SETTABLEKS                       R6 R5 K34 ["armedRigLabel"]
     1206 GETUPVAL                         R6 3
     1207 GETTABLEKS                       R6 R6 K35 ["onArmJoint"]
     1209 SETTABLEKS                       R6 R5 K35 ["onArmJoint"]
     1211 GETUPVAL                         R6 3
     1212 GETTABLEKS                       R6 R6 K36 ["onMapJoint"]
     1214 SETTABLEKS                       R6 R5 K36 ["onMapJoint"]
     1216 GETUPVAL                         R6 3
     1217 GETTABLEKS                       R6 R6 K37 ["counterpartHoveredJointName"]
     1219 SETTABLEKS                       R6 R5 K37 ["counterpartHoveredJointName"]
     1221 GETUPVAL                         R6 3
     1222 GETTABLEKS                       R6 R6 K38 ["onDotHoverEnter"]
     1224 SETTABLEKS                       R6 R5 K38 ["onDotHoverEnter"]
     1226 GETUPVAL                         R6 3
     1227 GETTABLEKS                       R6 R6 K39 ["onDotHoverLeave"]
     1229 SETTABLEKS                       R6 R5 K39 ["onDotHoverLeave"]
     1231 CALL                             R3 2 1
     1232 SETTABLEKS                       R3 R2 K20 ["Root"]
     1234 GETUPVAL                         R3 4
     1235 GETTABLEKS                       R3 R3 K26 ["createElement"]
     1237 GETUPVAL                         R4 5
     1238 DUPTABLE                         R5 K48 [{["jointLabel"], ["position"], ["optional"] = False, ["selectedJoint"], ["mappedJoint"], ["DEPRECATED_rigDescriptor"], ["armedRigLabel"], ["onArmJoint"], ["onMapJoint"], ["counterpartHoveredJointName"], ["onDotHoverEnter"], ["onDotHoverLeave"]}]
     1239 GETIMPORT                        R6 K68 [Enum.RigLabel.Waist]
     1241 SETTABLEKS                       R6 R5 K27 ["jointLabel"]
     1243 GETIMPORT                        R6 K46 [Vector2.new]
     1245 LOADN                            R7 96
     1246 LOADN                            R8 144
     1247 CALL                             R6 2 1
     1248 SETTABLEKS                       R6 R5 K28 ["position"]
     1250 GETUPVAL                         R6 3
     1251 GETTABLEKS                       R6 R6 K31 ["selectedJoint"]
     1253 SETTABLEKS                       R6 R5 K31 ["selectedJoint"]
     1255 GETIMPORT                        R7 K68 [Enum.RigLabel.Waist]
     1257 GETTABLE                         R6 R0 R7
     1258 SETTABLEKS                       R6 R5 K32 ["mappedJoint"]
     1260 SETTABLEKS                       R1 R5 K33 ["DEPRECATED_rigDescriptor"]
     1262 GETUPVAL                         R6 3
     1263 GETTABLEKS                       R6 R6 K34 ["armedRigLabel"]
     1265 SETTABLEKS                       R6 R5 K34 ["armedRigLabel"]
     1267 GETUPVAL                         R6 3
     1268 GETTABLEKS                       R6 R6 K35 ["onArmJoint"]
     1270 SETTABLEKS                       R6 R5 K35 ["onArmJoint"]
     1272 GETUPVAL                         R6 3
     1273 GETTABLEKS                       R6 R6 K36 ["onMapJoint"]
     1275 SETTABLEKS                       R6 R5 K36 ["onMapJoint"]
     1277 GETUPVAL                         R6 3
     1278 GETTABLEKS                       R6 R6 K37 ["counterpartHoveredJointName"]
     1280 SETTABLEKS                       R6 R5 K37 ["counterpartHoveredJointName"]
     1282 GETUPVAL                         R6 3
     1283 GETTABLEKS                       R6 R6 K38 ["onDotHoverEnter"]
     1285 SETTABLEKS                       R6 R5 K38 ["onDotHoverEnter"]
     1287 GETUPVAL                         R6 3
     1288 GETTABLEKS                       R6 R6 K39 ["onDotHoverLeave"]
     1290 SETTABLEKS                       R6 R5 K39 ["onDotHoverLeave"]
     1292 CALL                             R3 2 1
     1293 SETTABLEKS                       R3 R2 K21 ["Waist"]
     1295 GETUPVAL                         R3 4
     1296 GETTABLEKS                       R3 R3 K26 ["createElement"]
     1298 GETUPVAL                         R4 5
     1299 DUPTABLE                         R5 K40 [{["jointLabel"], ["position"], ["optional"] = True, ["selectedJoint"], ["mappedJoint"], ["DEPRECATED_rigDescriptor"], ["armedRigLabel"], ["onArmJoint"], ["onMapJoint"], ["counterpartHoveredJointName"], ["onDotHoverEnter"], ["onDotHoverLeave"]}]
     1300 GETIMPORT                        R6 K69 [Enum.RigLabel.Spine]
     1302 SETTABLEKS                       R6 R5 K27 ["jointLabel"]
     1304 GETIMPORT                        R6 K46 [Vector2.new]
     1306 LOADN                            R7 96
     1307 LOADN                            R8 121
     1308 CALL                             R6 2 1
     1309 SETTABLEKS                       R6 R5 K28 ["position"]
     1311 GETUPVAL                         R6 3
     1312 GETTABLEKS                       R6 R6 K31 ["selectedJoint"]
     1314 SETTABLEKS                       R6 R5 K31 ["selectedJoint"]
     1316 GETIMPORT                        R7 K69 [Enum.RigLabel.Spine]
     1318 GETTABLE                         R6 R0 R7
     1319 SETTABLEKS                       R6 R5 K32 ["mappedJoint"]
     1321 SETTABLEKS                       R1 R5 K33 ["DEPRECATED_rigDescriptor"]
     1323 GETUPVAL                         R6 3
     1324 GETTABLEKS                       R6 R6 K34 ["armedRigLabel"]
     1326 SETTABLEKS                       R6 R5 K34 ["armedRigLabel"]
     1328 GETUPVAL                         R6 3
     1329 GETTABLEKS                       R6 R6 K35 ["onArmJoint"]
     1331 SETTABLEKS                       R6 R5 K35 ["onArmJoint"]
     1333 GETUPVAL                         R6 3
     1334 GETTABLEKS                       R6 R6 K36 ["onMapJoint"]
     1336 SETTABLEKS                       R6 R5 K36 ["onMapJoint"]
     1338 GETUPVAL                         R6 3
     1339 GETTABLEKS                       R6 R6 K37 ["counterpartHoveredJointName"]
     1341 SETTABLEKS                       R6 R5 K37 ["counterpartHoveredJointName"]
     1343 GETUPVAL                         R6 3
     1344 GETTABLEKS                       R6 R6 K38 ["onDotHoverEnter"]
     1346 SETTABLEKS                       R6 R5 K38 ["onDotHoverEnter"]
     1348 GETUPVAL                         R6 3
     1349 GETTABLEKS                       R6 R6 K39 ["onDotHoverLeave"]
     1351 SETTABLEKS                       R6 R5 K39 ["onDotHoverLeave"]
     1353 CALL                             R3 2 1
     1354 SETTABLEKS                       R3 R2 K22 ["Spine"]
     1356 GETUPVAL                         R3 4
     1357 GETTABLEKS                       R3 R3 K26 ["createElement"]
     1359 GETUPVAL                         R4 6
     1360 DUPTABLE                         R5 K74 [{["position"], ["side"] = "right", ["isMapped"], ["DEPRECATED_rigDescriptor"], ["onNavigateToHand"], [6]}]
     1361 GETIMPORT                        R6 K46 [Vector2.new]
     1363 LOADN                            R7 19
     1364 LOADN                            R8 198
     1365 CALL                             R6 2 1
     1366 SETTABLEKS                       R6 R5 K28 ["position"]
     1368 GETIMPORT                        R8 K53 [Enum.RigLabel.RightWrist]
     1370 GETTABLE                         R7 R0 R8
     1371 JUMPIFNOTEQKNIL                  R7 ; [+2]
     1373 LOADB                            R6 0 +1
     1374 LOADB                            R6 1
     1375 SETTABLEKS                       R6 R5 K72 ["isMapped"]
     1377 SETTABLEKS                       R1 R5 K33 ["DEPRECATED_rigDescriptor"]
     1379 GETUPVAL                         R6 3
     1380 GETTABLEKS                       R6 R6 K73 ["onNavigateToHand"]
     1382 SETTABLEKS                       R6 R5 K73 ["onNavigateToHand"]
     1384 GETUPVAL                         R7 7
     1385 CALL                             R7 0 1
     1386 JUMPIFNOT                        R7 ; [+4]
     1387 GETUPVAL                         R6 3
     1388 GETTABLEKS                       R6 R6 K0 ["rigDescriptor"]
     1390 JUMP                             ; [+1]
     1391 LOADNIL                          R6
     1392 SETTABLEKS                       R6 R5 K0 ["rigDescriptor"]
     1394 CALL                             R3 2 1
     1395 SETTABLEKS                       R3 R2 K23 ["RightHandDot"]
     1397 GETUPVAL                         R3 4
     1398 GETTABLEKS                       R3 R3 K26 ["createElement"]
     1400 GETUPVAL                         R4 6
     1401 DUPTABLE                         R5 K76 [{["position"], ["side"] = "left", ["isMapped"], ["DEPRECATED_rigDescriptor"], ["onNavigateToHand"], [6]}]
     1402 GETIMPORT                        R6 K46 [Vector2.new]
     1404 LOADN                            R7 171
     1405 LOADN                            R8 197
     1406 CALL                             R6 2 1
     1407 SETTABLEKS                       R6 R5 K28 ["position"]
     1409 GETIMPORT                        R8 K61 [Enum.RigLabel.LeftWrist]
     1411 GETTABLE                         R7 R0 R8
     1412 JUMPIFNOTEQKNIL                  R7 ; [+2]
     1414 LOADB                            R6 0 +1
     1415 LOADB                            R6 1
     1416 SETTABLEKS                       R6 R5 K72 ["isMapped"]
     1418 SETTABLEKS                       R1 R5 K33 ["DEPRECATED_rigDescriptor"]
     1420 GETUPVAL                         R6 3
     1421 GETTABLEKS                       R6 R6 K73 ["onNavigateToHand"]
     1423 SETTABLEKS                       R6 R5 K73 ["onNavigateToHand"]
     1425 GETUPVAL                         R7 7
     1426 CALL                             R7 0 1
     1427 JUMPIFNOT                        R7 ; [+4]
     1428 GETUPVAL                         R6 3
     1429 GETTABLEKS                       R6 R6 K0 ["rigDescriptor"]
     1431 JUMP                             ; [+1]
     1432 LOADNIL                          R6
     1433 SETTABLEKS                       R6 R5 K0 ["rigDescriptor"]
     1435 CALL                             R3 2 1
     1436 SETTABLEKS                       R3 R2 K24 ["LeftHandDot"]
     1438 RETURN                           R2 1

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
       78 NEWTABLE                         R12 0 11
       80 MOVE                             R13 R7
       81 MOVE                             R14 R9
       82 GETTABLEKS                       R15 R0 K6 ["rigDescriptor"]
       84 GETTABLEKS                       R16 R0 K11 ["armedRigLabel"]
       86 GETTABLEKS                       R17 R0 K12 ["selectedJoint"]
       88 GETTABLEKS                       R18 R0 K13 ["counterpartHoveredJointName"]
       90 GETTABLEKS                       R19 R0 K14 ["onArmJoint"]
       92 GETTABLEKS                       R20 R0 K15 ["onMapJoint"]
       94 GETTABLEKS                       R21 R0 K16 ["onDotHoverEnter"]
       96 GETTABLEKS                       R22 R0 K17 ["onDotHoverLeave"]
       98 GETTABLEKS                       R23 R0 K18 ["onNavigateToHand"]
      100 SETLIST                          R12 R13 11 [1]
      102 CALL                             R10 2 1
      103 GETUPVAL                         R11 8
      104 CALL                             R11 0 1
      105 JUMPIF                           R11 ; [+103]
      106 JUMPIF                           R7 ; [+2]
      107 LOADNIL                          R11
      108 RETURN                           R11 1
      109 GETUPVAL                         R11 9
      110 GETTABLEKS                       R11 R11 K19 ["createPortal"]
      112 GETUPVAL                         R12 0
      113 GETTABLEKS                       R12 R12 K20 ["createElement"]
      115 LOADK                            R13 K21 ["ScreenGui"]
      116 DUPTABLE                         R14 K27 [{["Archivable"] = False, ["DisplayOrder"], ["ZIndexBehavior"], ["ref"]}]
      117 GETUPVAL                         R15 2
      118 GETTABLEKS                       R15 R15 K28 ["DISPLAY_ORDER_MANNEQUIN"]
      120 SETTABLEKS                       R15 R14 K24 ["DisplayOrder"]
      122 GETIMPORT                        R15 K31 [Enum.ZIndexBehavior.Sibling]
      124 SETTABLEKS                       R15 R14 K25 ["ZIndexBehavior"]
      126 SETTABLEKS                       R2 R14 K26 ["ref"]
      128 MOVE                             R15 R1
      129 JUMPIFNOT                        R15 ; [+74]
      130 GETUPVAL                         R15 0
      131 GETTABLEKS                       R15 R15 K20 ["createElement"]
      133 GETUPVAL                         R16 10
      134 GETTABLEKS                       R16 R16 K32 ["Components"]
      136 GETTABLEKS                       R16 R16 K33 ["FoundationProviderAdapter"]
      138 DUPTABLE                         R17 K35 [{"overlayGui"}]
      139 SETTABLEKS                       R1 R17 K34 ["overlayGui"]
      141 DUPTABLE                         R18 K37 [{"Image"}]
      142 GETUPVAL                         R19 0
      143 GETTABLEKS                       R19 R19 K20 ["createElement"]
      145 GETUPVAL                         R20 11
      146 GETTABLEKS                       R20 R20 K36 ["Image"]
      148 DUPTABLE                         R21 K46 [{["Image"], ["aspectRatio"] = 0.493472584856397, ["tag"] = "anchor-top-right size-full bg-over-media-300", ["Position"], ["sizeConstraint"], ["onActivated"], ["stateLayer"]}]
      149 GETUPVAL                         R22 2
      150 GETTABLEKS                       R22 R22 K47 ["MANNEQUIN"]
      152 SETTABLEKS                       R22 R21 K36 ["Image"]
      154 GETIMPORT                        R22 K50 [UDim2.new]
      156 LOADN                            R23 1
      157 LOADN                            R24 -16
      158 LOADN                            R25 0
      159 LOADN                            R26 18
      160 CALL                             R22 4 1
      161 SETTABLEKS                       R22 R21 K42 ["Position"]
      163 DUPTABLE                         R22 K52 [{"MaxSize"}]
      164 GETIMPORT                        R23 K54 [Vector2.new]
      166 LOADN                            R24 270
      167 LOADN                            R25 400
      168 CALL                             R23 2 1
      169 SETTABLEKS                       R23 R22 K51 ["MaxSize"]
      171 SETTABLEKS                       R22 R21 K43 ["sizeConstraint"]
      173 SETTABLEKS                       R3 R21 K44 ["onActivated"]
      175 DUPTABLE                         R22 K56 [{"affordance"}]
      176 GETUPVAL                         R23 11
      177 GETTABLEKS                       R23 R23 K57 ["Enums"]
      179 GETTABLEKS                       R23 R23 K58 ["StateLayerAffordance"]
      181 GETTABLEKS                       R23 R23 K59 ["None"]
      183 SETTABLEKS                       R23 R22 K55 ["affordance"]
      185 SETTABLEKS                       R22 R21 K45 ["stateLayer"]
      187 NEWTABLE                         R22 1 0
      189 GETUPVAL                         R23 0
      190 GETTABLEKS                       R23 R23 K20 ["createElement"]
      192 GETUPVAL                         R24 11
      193 GETTABLEKS                       R24 R24 K60 ["View"]
      195 DUPTABLE                         R25 K62 [{["tag"] = "size-full"}]
      196 MOVE                             R26 R10
      197 CALL                             R23 3 1
      198 SETTABLEKS                       R23 R22 K63 ["Dots"]
      200 CALL                             R19 3 1
      201 SETTABLEKS                       R19 R18 K36 ["Image"]
      203 CALL                             R15 3 1
      204 CALL                             R12 3 1
      205 GETUPVAL                         R13 12
      206 LOADK                            R14 K64 ["MannequinPanel"]
      207 CALL                             R11 3 -1
      208 RETURN                           R11 -1
      209 LOADNIL                          R11
      210 JUMPIF                           R6 ; [+402]
      211 LOADNIL                          R12
      212 LOADNIL                          R13
      213 LOADNIL                          R14
      214 GETTABLEKS                       R15 R0 K65 ["detectedHrd"]
      216 JUMPIFNOT                        R15 ; [+19]
      217 GETTABLEKS                       R15 R0 K66 ["localization"]
      219 LOADK                            R17 K67 ["Mannequin"]
      220 LOADK                            R18 K68 ["HrdDetected"]
      221 NAMECALL                         R15 R15 K69 ["getText"]
      223 CALL                             R15 3 1
      224 MOVE                             R12 R15
      225 GETTABLEKS                       R15 R0 K66 ["localization"]
      227 LOADK                            R17 K67 ["Mannequin"]
      228 LOADK                            R18 K70 ["SelectHrd"]
      229 NAMECALL                         R15 R15 K69 ["getText"]
      231 CALL                             R15 3 1
      232 MOVE                             R13 R15
      233 GETTABLEKS                       R14 R0 K71 ["onSelectHrd"]
      235 JUMP                             ; [+38]
      236 GETUPVAL                         R16 3
      237 CALL                             R16 0 1
      238 JUMPIFNOT                        R16 ; [+3]
      239 GETTABLEKS                       R15 R0 K72 ["hasModel"]
      241 JUMP                             ; [+2]
      242 GETTABLEKS                       R15 R0 K73 ["DEPRECATED_hasHumanoid"]
      244 JUMPIFNOT                        R15 ; [+19]
      245 GETTABLEKS                       R15 R0 K66 ["localization"]
      247 LOADK                            R17 K67 ["Mannequin"]
      248 LOADK                            R18 K74 ["NoHrd"]
      249 NAMECALL                         R15 R15 K69 ["getText"]
      251 CALL                             R15 3 1
      252 MOVE                             R12 R15
      253 GETTABLEKS                       R15 R0 K66 ["localization"]
      255 LOADK                            R17 K67 ["Mannequin"]
      256 LOADK                            R18 K75 ["CreateHrd"]
      257 NAMECALL                         R15 R15 K69 ["getText"]
      259 CALL                             R15 3 1
      260 MOVE                             R13 R15
      261 GETTABLEKS                       R14 R0 K76 ["onCreateHrd"]
      263 JUMP                             ; [+10]
      264 GETTABLEKS                       R15 R0 K66 ["localization"]
      266 LOADK                            R17 K67 ["Mannequin"]
      267 LOADK                            R18 K77 ["SelectHRDPlaceholder"]
      268 NAMECALL                         R15 R15 K69 ["getText"]
      270 CALL                             R15 3 1
      271 MOVE                             R12 R15
      272 LOADNIL                          R13
      273 LOADNIL                          R14
      274 GETUPVAL                         R15 0
      275 GETTABLEKS                       R15 R15 K20 ["createElement"]
      277 GETUPVAL                         R16 11
      278 GETTABLEKS                       R16 R16 K60 ["View"]
      280 DUPTABLE                         R17 K80 [{["tag"] = "col align-x-center align-y-center gap-small", ["Size"]}]
      281 GETIMPORT                        R18 K50 [UDim2.new]
      283 LOADN                            R19 1
      284 LOADN                            R20 0
      285 LOADN                            R21 1
      286 LOADN                            R22 0
      287 CALL                             R18 4 1
      288 SETTABLEKS                       R18 R17 K79 ["Size"]
      290 DUPTABLE                         R18 K87 [{"Padding", "Title", "Placeholder", "Backdrop", "Documentation", "Button"}]
      291 GETUPVAL                         R19 0
      292 GETTABLEKS                       R19 R19 K20 ["createElement"]
      294 LOADK                            R20 K88 ["UIPadding"]
      295 DUPTABLE                         R21 K91 [{"PaddingLeft", "PaddingRight"}]
      296 GETIMPORT                        R22 K93 [UDim.new]
      298 LOADN                            R23 0
      299 LOADN                            R24 12
      300 CALL                             R22 2 1
      301 SETTABLEKS                       R22 R21 K89 ["PaddingLeft"]
      303 GETIMPORT                        R22 K93 [UDim.new]
      305 LOADN                            R23 0
      306 LOADN                            R24 12
      307 CALL                             R22 2 1
      308 SETTABLEKS                       R22 R21 K90 ["PaddingRight"]
      310 CALL                             R19 2 1
      311 SETTABLEKS                       R19 R18 K81 ["Padding"]
      313 GETUPVAL                         R20 13
      314 CALL                             R20 0 1
      315 JUMPIFNOT                        R20 ; [+31]
      316 GETUPVAL                         R19 0
      317 GETTABLEKS                       R19 R19 K20 ["createElement"]
      319 GETUPVAL                         R20 11
      320 GETTABLEKS                       R20 R20 K94 ["Text"]
      322 DUPTABLE                         R21 K99 [{["LayoutOrder"] = 1, ["tag"] = "text-center text-heading-small", ["Size"], ["AutomaticSize"], ["Text"]}]
      323 GETIMPORT                        R22 K50 [UDim2.new]
      325 LOADN                            R23 1
      326 LOADN                            R24 0
      327 LOADN                            R25 0
      328 LOADN                            R26 0
      329 CALL                             R22 4 1
      330 SETTABLEKS                       R22 R21 K79 ["Size"]
      332 GETIMPORT                        R22 K101 [Enum.AutomaticSize.Y]
      334 SETTABLEKS                       R22 R21 K98 ["AutomaticSize"]
      336 GETTABLEKS                       R22 R0 K66 ["localization"]
      338 LOADK                            R24 K67 ["Mannequin"]
      339 LOADK                            R25 K82 ["Title"]
      340 NAMECALL                         R22 R22 K69 ["getText"]
      342 CALL                             R22 3 1
      343 SETTABLEKS                       R22 R21 K94 ["Text"]
      345 CALL                             R19 2 1
      346 JUMP                             ; [+1]
      347 LOADNIL                          R19
      348 SETTABLEKS                       R19 R18 K82 ["Title"]
      350 GETUPVAL                         R19 0
      351 GETTABLEKS                       R19 R19 K20 ["createElement"]
      353 GETUPVAL                         R20 11
      354 GETTABLEKS                       R20 R20 K94 ["Text"]
      356 DUPTABLE                         R21 K103 [{["LayoutOrder"] = 2, ["tag"], ["Size"], ["AutomaticSize"], ["Text"]}]
      357 GETUPVAL                         R23 13
      358 CALL                             R23 0 1
      359 JUMPIFNOT                        R23 ; [+2]
      360 LOADK                            R22 K104 ["text-center text-body-small"]
      361 JUMP                             ; [+1]
      362 LOADK                            R22 K105 ["text-center text-caption-small"]
      363 SETTABLEKS                       R22 R21 K40 ["tag"]
      365 GETIMPORT                        R22 K50 [UDim2.new]
      367 LOADN                            R23 1
      368 LOADN                            R24 0
      369 LOADN                            R25 0
      370 LOADN                            R26 0
      371 CALL                             R22 4 1
      372 SETTABLEKS                       R22 R21 K79 ["Size"]
      374 GETIMPORT                        R22 K101 [Enum.AutomaticSize.Y]
      376 SETTABLEKS                       R22 R21 K98 ["AutomaticSize"]
      378 SETTABLEKS                       R12 R21 K94 ["Text"]
      380 CALL                             R19 2 1
      381 SETTABLEKS                       R19 R18 K83 ["Placeholder"]
      383 GETUPVAL                         R20 13
      384 CALL                             R20 0 1
      385 JUMPIFNOT                        R20 ; [+41]
      386 GETUPVAL                         R19 0
      387 GETTABLEKS                       R19 R19 K20 ["createElement"]
      389 GETUPVAL                         R20 11
      390 GETTABLEKS                       R20 R20 K36 ["Image"]
      392 DUPTABLE                         R21 K107 [{"Image", "Position", "aspectRatio", "AnchorPoint", "Size"}]
      393 SETTABLEKS                       R5 R21 K36 ["Image"]
      395 GETIMPORT                        R22 K109 [UDim2.fromScale]
      397 LOADK                            R23 K110 [0.5]
      398 LOADK                            R24 K111 [0.3]
      399 CALL                             R22 2 1
      400 SETTABLEKS                       R22 R21 K42 ["Position"]
      402 DUPTABLE                         R22 K114 [{["AspectRatio"] = 1, ["DominantAxis"]}]
      403 GETIMPORT                        R23 K116 [Enum.DominantAxis.Width]
      405 SETTABLEKS                       R23 R22 K113 ["DominantAxis"]
      407 SETTABLEKS                       R22 R21 K38 ["aspectRatio"]
      409 GETIMPORT                        R22 K54 [Vector2.new]
      411 LOADK                            R23 K110 [0.5]
      412 LOADK                            R24 K110 [0.5]
      413 CALL                             R22 2 1
      414 SETTABLEKS                       R22 R21 K106 ["AnchorPoint"]
      416 GETIMPORT                        R22 K50 [UDim2.new]
      418 LOADK                            R23 K110 [0.5]
      419 LOADN                            R24 0
      420 LOADK                            R25 K110 [0.5]
      421 LOADN                            R26 0
      422 CALL                             R22 4 1
      423 SETTABLEKS                       R22 R21 K79 ["Size"]
      425 CALL                             R19 2 1
      426 JUMP                             ; [+1]
      427 LOADNIL                          R19
      428 SETTABLEKS                       R19 R18 K84 ["Backdrop"]
      430 GETUPVAL                         R20 13
      431 CALL                             R20 0 1
      432 JUMPIFNOT                        R20 ; [+42]
      433 JUMPIF                           R14 ; [+41]
      434 GETUPVAL                         R19 0
      435 GETTABLEKS                       R19 R19 K20 ["createElement"]
      437 GETUPVAL                         R20 11
      438 GETTABLEKS                       R20 R20 K86 ["Button"]
      440 DUPTABLE                         R21 K121 [{["LayoutOrder"] = 3, ["text"], ["variant"], ["size"], ["onActivated"]}]
      441 GETTABLEKS                       R22 R0 K66 ["localization"]
      443 LOADK                            R24 K67 ["Mannequin"]
      444 LOADK                            R25 K85 ["Documentation"]
      445 NAMECALL                         R22 R22 K69 ["getText"]
      447 CALL                             R22 3 1
      448 SETTABLEKS                       R22 R21 K118 ["text"]
      450 GETUPVAL                         R22 11
      451 GETTABLEKS                       R22 R22 K57 ["Enums"]
      453 GETTABLEKS                       R22 R22 K122 ["ButtonVariant"]
      455 GETTABLEKS                       R22 R22 K123 ["Link"]
      457 SETTABLEKS                       R22 R21 K119 ["variant"]
      459 GETUPVAL                         R22 11
      460 GETTABLEKS                       R22 R22 K57 ["Enums"]
      462 GETTABLEKS                       R22 R22 K124 ["InputSize"]
      464 GETTABLEKS                       R22 R22 K125 ["Small"]
      466 SETTABLEKS                       R22 R21 K120 ["size"]
      468 DUPCLOSURE                       R22 K126 [PROTO_11]
      469 CAPTURE                          UPVAL U14
      470 CAPTURE                          UPVAL U2
      471 SETTABLEKS                       R22 R21 K44 ["onActivated"]
      473 CALL                             R19 2 1
      474 JUMP                             ; [+1]
      475 LOADNIL                          R19
      476 SETTABLEKS                       R19 R18 K85 ["Documentation"]
      478 JUMPIFNOT                        R14 ; [+128]
      479 GETUPVAL                         R20 15
      480 CALL                             R20 0 1
      481 JUMPIFNOT                        R20 ; [+38]
      482 GETUPVAL                         R19 0
      483 GETTABLEKS                       R19 R19 K20 ["createElement"]
      485 GETUPVAL                         R20 11
      486 GETTABLEKS                       R20 R20 K86 ["Button"]
      488 DUPTABLE                         R21 K129 [{["LayoutOrder"] = 4, ["text"], ["variant"], ["size"], ["width"], ["onActivated"]}]
      489 SETTABLEKS                       R13 R21 K118 ["text"]
      491 GETUPVAL                         R22 11
      492 GETTABLEKS                       R22 R22 K57 ["Enums"]
      494 GETTABLEKS                       R22 R22 K122 ["ButtonVariant"]
      496 GETTABLEKS                       R22 R22 K130 ["Emphasis"]
      498 SETTABLEKS                       R22 R21 K119 ["variant"]
      500 GETUPVAL                         R22 11
      501 GETTABLEKS                       R22 R22 K57 ["Enums"]
      503 GETTABLEKS                       R22 R22 K124 ["InputSize"]
      505 GETTABLEKS                       R22 R22 K125 ["Small"]
      507 SETTABLEKS                       R22 R21 K120 ["size"]
      509 GETIMPORT                        R22 K93 [UDim.new]
      511 LOADN                            R23 0
      512 LOADN                            R24 160
      513 CALL                             R22 2 1
      514 SETTABLEKS                       R22 R21 K128 ["width"]
      516 SETTABLEKS                       R14 R21 K44 ["onActivated"]
      518 CALL                             R19 2 1
      519 JUMP                             ; [+86]
      520 GETUPVAL                         R19 0
      521 GETTABLEKS                       R19 R19 K20 ["createElement"]
      523 GETUPVAL                         R20 11
      524 GETTABLEKS                       R20 R20 K60 ["View"]
      526 DUPTABLE                         R21 K132 [{["LayoutOrder"] = 4, ["tag"] = "auto-xy bg-surface-200", ["onActivated"], ["stateLayer"]}]
      527 SETTABLEKS                       R14 R21 K44 ["onActivated"]
      529 DUPTABLE                         R22 K56 [{"affordance"}]
      530 GETUPVAL                         R23 11
      531 GETTABLEKS                       R23 R23 K57 ["Enums"]
      533 GETTABLEKS                       R23 R23 K58 ["StateLayerAffordance"]
      535 GETTABLEKS                       R23 R23 K133 ["Background"]
      537 SETTABLEKS                       R23 R22 K55 ["affordance"]
      539 SETTABLEKS                       R22 R21 K45 ["stateLayer"]
      541 DUPTABLE                         R22 K135 [{"Corner", "Padding", "Text"}]
      542 GETUPVAL                         R23 0
      543 GETTABLEKS                       R23 R23 K20 ["createElement"]
      545 LOADK                            R24 K136 ["UICorner"]
      546 DUPTABLE                         R25 K138 [{"CornerRadius"}]
      547 GETIMPORT                        R26 K93 [UDim.new]
      549 LOADN                            R27 0
      550 LOADN                            R28 4
      551 CALL                             R26 2 1
      552 SETTABLEKS                       R26 R25 K137 ["CornerRadius"]
      554 CALL                             R23 2 1
      555 SETTABLEKS                       R23 R22 K134 ["Corner"]
      557 GETUPVAL                         R23 0
      558 GETTABLEKS                       R23 R23 K20 ["createElement"]
      560 LOADK                            R24 K88 ["UIPadding"]
      561 DUPTABLE                         R25 K141 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      562 GETIMPORT                        R26 K93 [UDim.new]
      564 LOADN                            R27 0
      565 LOADN                            R28 12
      566 CALL                             R26 2 1
      567 SETTABLEKS                       R26 R25 K89 ["PaddingLeft"]
      569 GETIMPORT                        R26 K93 [UDim.new]
      571 LOADN                            R27 0
      572 LOADN                            R28 12
      573 CALL                             R26 2 1
      574 SETTABLEKS                       R26 R25 K90 ["PaddingRight"]
      576 GETIMPORT                        R26 K93 [UDim.new]
      578 LOADN                            R27 0
      579 LOADN                            R28 5
      580 CALL                             R26 2 1
      581 SETTABLEKS                       R26 R25 K139 ["PaddingTop"]
      583 GETIMPORT                        R26 K93 [UDim.new]
      585 LOADN                            R27 0
      586 LOADN                            R28 5
      587 CALL                             R26 2 1
      588 SETTABLEKS                       R26 R25 K140 ["PaddingBottom"]
      590 CALL                             R23 2 1
      591 SETTABLEKS                       R23 R22 K81 ["Padding"]
      593 GETUPVAL                         R23 0
      594 GETTABLEKS                       R23 R23 K20 ["createElement"]
      596 GETUPVAL                         R24 11
      597 GETTABLEKS                       R24 R24 K94 ["Text"]
      599 DUPTABLE                         R25 K143 [{["tag"] = "auto-xy text-caption-small", ["Text"]}]
      600 SETTABLEKS                       R13 R25 K94 ["Text"]
      602 CALL                             R23 2 1
      603 SETTABLEKS                       R23 R22 K94 ["Text"]
      605 CALL                             R19 3 1
      606 JUMPIF                           R19 ; [+1]
      607 LOADNIL                          R19
      608 SETTABLEKS                       R19 R18 K86 ["Button"]
      610 CALL                             R15 3 1
      611 MOVE                             R11 R15
      612 JUMP                             ; [+74]
      613 JUMPIFNOT                        R7 ; [+72]
      614 GETUPVAL                         R12 0
      615 GETTABLEKS                       R12 R12 K20 ["createElement"]
      617 GETUPVAL                         R13 11
      618 GETTABLEKS                       R13 R13 K36 ["Image"]
      620 DUPTABLE                         R14 K144 [{"Image", "aspectRatio", "Position", "AnchorPoint", "Size", "onActivated", "stateLayer"}]
      621 GETUPVAL                         R15 2
      622 GETTABLEKS                       R15 R15 K47 ["MANNEQUIN"]
      624 SETTABLEKS                       R15 R14 K36 ["Image"]
      626 DUPTABLE                         R15 K145 [{["AspectRatio"] = 0.493472584856397, ["DominantAxis"]}]
      627 GETIMPORT                        R16 K147 [Enum.DominantAxis.Height]
      629 SETTABLEKS                       R16 R15 K113 ["DominantAxis"]
      631 SETTABLEKS                       R15 R14 K38 ["aspectRatio"]
      633 GETIMPORT                        R15 K109 [UDim2.fromScale]
      635 LOADK                            R16 K110 [0.5]
      636 LOADK                            R17 K110 [0.5]
      637 CALL                             R15 2 1
      638 SETTABLEKS                       R15 R14 K42 ["Position"]
      640 GETIMPORT                        R15 K54 [Vector2.new]
      642 LOADK                            R16 K110 [0.5]
      643 LOADK                            R17 K110 [0.5]
      644 CALL                             R15 2 1
      645 SETTABLEKS                       R15 R14 K106 ["AnchorPoint"]
      647 GETIMPORT                        R15 K50 [UDim2.new]
      649 LOADN                            R16 1
      650 LOADN                            R17 0
      651 LOADN                            R18 1
      652 LOADN                            R19 0
      653 CALL                             R15 4 1
      654 SETTABLEKS                       R15 R14 K79 ["Size"]
      656 SETTABLEKS                       R3 R14 K44 ["onActivated"]
      658 DUPTABLE                         R15 K56 [{"affordance"}]
      659 GETUPVAL                         R16 11
      660 GETTABLEKS                       R16 R16 K57 ["Enums"]
      662 GETTABLEKS                       R16 R16 K58 ["StateLayerAffordance"]
      664 GETTABLEKS                       R16 R16 K59 ["None"]
      666 SETTABLEKS                       R16 R15 K55 ["affordance"]
      668 SETTABLEKS                       R15 R14 K45 ["stateLayer"]
      670 NEWTABLE                         R15 1 0
      672 GETUPVAL                         R16 0
      673 GETTABLEKS                       R16 R16 K20 ["createElement"]
      675 GETUPVAL                         R17 11
      676 GETTABLEKS                       R17 R17 K60 ["View"]
      678 DUPTABLE                         R18 K62 [{["tag"] = "size-full"}]
      679 MOVE                             R19 R10
      680 CALL                             R16 3 1
      681 SETTABLEKS                       R16 R15 K63 ["Dots"]
      683 CALL                             R12 3 1
      684 MOVE                             R11 R12
      685 JUMP                             ; [+1]
      686 LOADNIL                          R11
      687 GETUPVAL                         R12 0
      688 GETTABLEKS                       R12 R12 K20 ["createElement"]
      690 GETUPVAL                         R13 16
      691 DUPTABLE                         R14 K152 [{"title", "bodyVisible", "onClose", "content"}]
      692 GETTABLEKS                       R15 R0 K66 ["localization"]
      694 LOADK                            R17 K67 ["Mannequin"]
      695 LOADK                            R18 K82 ["Title"]
      696 NAMECALL                         R15 R15 K69 ["getText"]
      698 CALL                             R15 3 1
      699 SETTABLEKS                       R15 R14 K148 ["title"]
      701 JUMPIFNOT                        R6 ; [+2]
      702 MOVE                             R15 R7
      703 JUMP                             ; [+1]
      704 LOADB                            R15 1
      705 SETTABLEKS                       R15 R14 K149 ["bodyVisible"]
      707 GETTABLEKS                       R15 R0 K150 ["onClose"]
      709 SETTABLEKS                       R15 R14 K150 ["onClose"]
      711 DUPTABLE                         R15 K154 [{"Inner"}]
      712 SETTABLEKS                       R11 R15 K153 ["Inner"]
      714 SETTABLEKS                       R15 R14 K151 ["content"]
      716 CALL                             R12 2 -1
      717 RETURN                           R12 -1

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
       84 GETTABLEKS                       R13 R0 K8 ["Src"]
       86 GETTABLEKS                       R13 R13 K12 ["Components"]
       88 GETTABLEKS                       R13 R13 K18 ["Hooks"]
       90 GETTABLEKS                       R13 R13 K22 ["useMappedInstances"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R14 R0 K8 ["Src"]
       97 GETTABLEKS                       R14 R14 K12 ["Components"]
       99 GETTABLEKS                       R14 R14 K18 ["Hooks"]
      101 GETTABLEKS                       R14 R14 K23 ["useHandIcon"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K5 [require]
      106 GETTABLEKS                       R15 R0 K8 ["Src"]
      108 GETTABLEKS                       R15 R15 K24 ["Flags"]
      110 GETTABLEKS                       R15 R15 K25 ["getFFlagAdaptiveAnimationHandRig"]
      112 CALL                             R14 1 1
      113 GETIMPORT                        R15 K5 [require]
      115 GETTABLEKS                       R16 R0 K8 ["Src"]
      117 GETTABLEKS                       R16 R16 K24 ["Flags"]
      119 GETTABLEKS                       R16 R16 K26 ["getFFlagAdaptiveAnimationHandRigQoL"]
      121 CALL                             R15 1 1
      122 GETIMPORT                        R16 K5 [require]
      124 GETTABLEKS                       R17 R0 K8 ["Src"]
      126 GETTABLEKS                       R17 R17 K24 ["Flags"]
      128 GETTABLEKS                       R17 R17 K27 ["getFFlagAdaptiveAnimationMannequinFix"]
      130 CALL                             R16 1 1
      131 GETIMPORT                        R17 K5 [require]
      133 GETTABLEKS                       R18 R0 K8 ["Src"]
      135 GETTABLEKS                       R18 R18 K24 ["Flags"]
      137 GETTABLEKS                       R18 R18 K28 ["getFFlagAdaptiveAnimationLargerCreateButton"]
      139 CALL                             R17 1 1
      140 GETIMPORT                        R18 K5 [require]
      142 GETTABLEKS                       R19 R0 K8 ["Src"]
      144 GETTABLEKS                       R19 R19 K24 ["Flags"]
      146 GETTABLEKS                       R19 R19 K29 ["getFFlagAdaptiveAnimationEmptyStateRefactor"]
      148 CALL                             R18 1 1
      149 GETIMPORT                        R19 K31 [game]
      151 LOADK                            R21 K32 ["CoreGui"]
      152 NAMECALL                         R19 R19 K33 ["GetService"]
      154 CALL                             R19 2 1
      155 GETIMPORT                        R20 K31 [game]
      157 LOADK                            R22 K34 ["BrowserService"]
      158 NAMECALL                         R20 R20 K33 ["GetService"]
      160 CALL                             R20 2 1
      161 DUPCLOSURE                       R21 K35 [PROTO_3]
      162 CAPTURE                          VAL R9
      163 CAPTURE                          VAL R16
      164 CAPTURE                          VAL R5
      165 CAPTURE                          VAL R1
      166 CAPTURE                          VAL R7
      167 CAPTURE                          VAL R15
      168 CAPTURE                          VAL R3
      169 DUPCLOSURE                       R22 K36 [PROTO_7]
      170 CAPTURE                          VAL R9
      171 CAPTURE                          VAL R5
      172 CAPTURE                          VAL R16
      173 CAPTURE                          VAL R1
      174 CAPTURE                          VAL R7
      175 CAPTURE                          VAL R13
      176 CAPTURE                          VAL R15
      177 CAPTURE                          VAL R3
      178 DUPCLOSURE                       R23 K37 [PROTO_12]
      179 CAPTURE                          VAL R5
      180 CAPTURE                          VAL R10
      181 CAPTURE                          VAL R2
      182 CAPTURE                          VAL R16
      183 CAPTURE                          VAL R12
      184 CAPTURE                          VAL R21
      185 CAPTURE                          VAL R22
      186 CAPTURE                          VAL R15
      187 CAPTURE                          VAL R14
      188 CAPTURE                          VAL R6
      189 CAPTURE                          VAL R8
      190 CAPTURE                          VAL R3
      191 CAPTURE                          VAL R19
      192 CAPTURE                          VAL R18
      193 CAPTURE                          VAL R20
      194 CAPTURE                          VAL R17
      195 CAPTURE                          VAL R4
      196 RETURN                           R23 1
