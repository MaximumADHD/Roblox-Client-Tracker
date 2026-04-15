PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["TypedInstanceSignals"]
        3 GETTABLEKS                       R1 R2 K1 ["properties"]
        5 GETTABLEKS                       R0 R1 K2 ["observeInstance"]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K3 ["DEPRECATED_rigDescriptor"]
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
        2 LOADNIL                          R2
        3 GETUPVAL                         R3 1
        4 CALL                             R3 0 1
        5 JUMPIFNOT                        R3 ; [+3]
        6 GETTABLEKS                       R2 R0 K0 ["mappedJoint"]
        8 JUMP                             ; [+21]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R3 R4 K1 ["useMemo"]
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          VAL R0
       15 NEWTABLE                         R5 0 2
       17 GETTABLEKS                       R6 R0 K2 ["DEPRECATED_rigDescriptor"]
       19 GETTABLEKS                       R7 R0 K3 ["jointLabel"]
       21 SETLIST                          R5 R6 2 [1]
       23 CALL                             R3 2 1
       24 GETUPVAL                         R5 4
       25 GETTABLEKS                       R4 R5 K4 ["useSignalState"]
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
       62 GETUPVAL                         R6 2
       63 GETTABLEKS                       R5 R6 K9 ["useState"]
       65 LOADB                            R6 0
       66 CALL                             R5 1 2
       67 OR                               R7 R4 R5
       68 JUMPIFNOT                        R3 ; [+9]
       69 GETTABLEKS                       R11 R1 K10 ["Color"]
       71 GETTABLEKS                       R10 R11 K11 ["Extended"]
       73 GETTABLEKS                       R9 R10 K12 ["Blue"]
       75 GETTABLEKS                       R8 R9 K13 ["Blue_600"]
       77 JUMP                             ; [+40]
       78 JUMPIFNOT                        R7 ; [+20]
       79 JUMPIFEQKNIL                     R2 ; [+10]
       81 GETTABLEKS                       R11 R1 K10 ["Color"]
       83 GETTABLEKS                       R10 R11 K11 ["Extended"]
       85 GETTABLEKS                       R9 R10 K14 ["Orange"]
       87 GETTABLEKS                       R8 R9 K15 ["Orange_600"]
       89 JUMP                             ; [+28]
       90 GETTABLEKS                       R11 R1 K10 ["Color"]
       92 GETTABLEKS                       R10 R11 K11 ["Extended"]
       94 GETTABLEKS                       R9 R10 K16 ["Gray"]
       96 GETTABLEKS                       R8 R9 K17 ["Gray_500"]
       98 JUMP                             ; [+19]
       99 JUMPIFEQKNIL                     R2 ; [+10]
      101 GETTABLEKS                       R11 R1 K10 ["Color"]
      103 GETTABLEKS                       R10 R11 K11 ["Extended"]
      105 GETTABLEKS                       R9 R10 K14 ["Orange"]
      107 GETTABLEKS                       R8 R9 K18 ["Orange_800"]
      109 JUMP                             ; [+8]
      110 GETTABLEKS                       R11 R1 K10 ["Color"]
      112 GETTABLEKS                       R10 R11 K11 ["Extended"]
      114 GETTABLEKS                       R9 R10 K16 ["Gray"]
      116 GETTABLEKS                       R8 R9 K19 ["Gray_600"]
      118 GETIMPORT                        R9 K22 [table.clone]
      120 MOVE                             R10 R8
      121 CALL                             R9 1 1
      122 LOADK                            R10 K23 [0.3]
      123 SETTABLEKS                       R10 R9 K24 ["Transparency"]
      125 GETTABLEKS                       R11 R0 K25 ["optional"]
      127 JUMPIFNOT                        R11 ; [+11]
      128 JUMPIF                           R3 ; [+10]
      129 JUMPIF                           R7 ; [+9]
      130 GETTABLEKS                       R13 R1 K10 ["Color"]
      132 GETTABLEKS                       R12 R13 K11 ["Extended"]
      134 GETTABLEKS                       R11 R12 K16 ["Gray"]
      136 GETTABLEKS                       R10 R11 K17 ["Gray_500"]
      138 JUMP                             ; [+1]
      139 MOVE                             R10 R9
      140 GETUPVAL                         R12 2
      141 GETTABLEKS                       R11 R12 K26 ["useCallback"]
      143 NEWCLOSURE                       R12 P1
      144 CAPTURE                          VAL R0
      145 NEWTABLE                         R13 0 5
      147 GETTABLEKS                       R14 R0 K3 ["jointLabel"]
      149 GETTABLEKS                       R15 R0 K6 ["selectedJoint"]
      151 GETTABLEKS                       R16 R0 K5 ["armedRigLabel"]
      153 GETTABLEKS                       R17 R0 K27 ["onMapJoint"]
      155 GETTABLEKS                       R18 R0 K28 ["onArmJoint"]
      157 SETLIST                          R13 R14 5 [1]
      159 CALL                             R11 2 1
      160 GETUPVAL                         R13 2
      161 GETTABLEKS                       R12 R13 K29 ["createElement"]
      163 GETUPVAL                         R14 5
      164 GETTABLEKS                       R13 R14 K30 ["View"]
      166 DUPTABLE                         R14 K36 [{"tag", "Position", "onActivated", "onStateChanged", "stateLayer"}]
      167 LOADK                            R15 K37 ["auto-xy anchor-center-center"]
      168 SETTABLEKS                       R15 R14 K31 ["tag"]
      170 GETIMPORT                        R15 K40 [UDim2.fromScale]
      172 GETTABLEKS                       R18 R0 K42 ["position"]
      174 GETTABLEKS                       R17 R18 K43 ["X"]
      176 DIVK                             R16 R17 K41 [189]
      177 GETTABLEKS                       R19 R0 K42 ["position"]
      179 GETTABLEKS                       R18 R19 K45 ["Y"]
      181 DIVK                             R17 R18 K44 [383]
      182 CALL                             R15 2 1
      183 SETTABLEKS                       R15 R14 K32 ["Position"]
      185 SETTABLEKS                       R11 R14 K33 ["onActivated"]
      187 GETUPVAL                         R16 2
      188 GETTABLEKS                       R15 R16 K26 ["useCallback"]
      190 NEWCLOSURE                       R16 P2
      191 CAPTURE                          VAL R6
      192 CAPTURE                          REF R2
      193 CAPTURE                          VAL R0
      194 NEWTABLE                         R17 0 3
      196 MOVE                             R18 R2
      197 GETTABLEKS                       R19 R0 K46 ["onDotHoverEnter"]
      199 GETTABLEKS                       R20 R0 K47 ["onDotHoverLeave"]
      201 SETLIST                          R17 R18 3 [1]
      203 CALL                             R15 2 1
      204 SETTABLEKS                       R15 R14 K34 ["onStateChanged"]
      206 DUPTABLE                         R15 K49 [{"affordance"}]
      207 GETUPVAL                         R19 5
      208 GETTABLEKS                       R18 R19 K50 ["Enums"]
      210 GETTABLEKS                       R17 R18 K51 ["StateLayerAffordance"]
      212 GETTABLEKS                       R16 R17 K52 ["None"]
      214 SETTABLEKS                       R16 R15 K48 ["affordance"]
      216 SETTABLEKS                       R15 R14 K35 ["stateLayer"]
      218 DUPTABLE                         R15 K54 [{"Tooltip"}]
      219 GETUPVAL                         R17 2
      220 GETTABLEKS                       R16 R17 K29 ["createElement"]
      222 GETUPVAL                         R18 5
      223 GETTABLEKS                       R17 R18 K53 ["Tooltip"]
      225 DUPTABLE                         R18 K58 [{"title", "align", "side"}]
      226 GETTABLEKS                       R20 R0 K3 ["jointLabel"]
      228 GETTABLEKS                       R19 R20 K8 ["Name"]
      230 SETTABLEKS                       R19 R18 K55 ["title"]
      232 GETUPVAL                         R22 5
      233 GETTABLEKS                       R21 R22 K50 ["Enums"]
      235 GETTABLEKS                       R20 R21 K59 ["PopoverAlign"]
      237 GETTABLEKS                       R19 R20 K60 ["Center"]
      239 SETTABLEKS                       R19 R18 K56 ["align"]
      241 GETUPVAL                         R22 5
      242 GETTABLEKS                       R21 R22 K50 ["Enums"]
      244 GETTABLEKS                       R20 R21 K61 ["PopoverSide"]
      246 GETTABLEKS                       R19 R20 K62 ["Top"]
      248 SETTABLEKS                       R19 R18 K57 ["side"]
      250 GETUPVAL                         R20 2
      251 GETTABLEKS                       R19 R20 K29 ["createElement"]
      253 GETUPVAL                         R21 5
      254 GETTABLEKS                       R20 R21 K30 ["View"]
      256 DUPTABLE                         R21 K66 [{"Size", "backgroundStyle", "stroke"}]
      257 JUMPIFNOT                        R7 ; [+8]
      258 GETIMPORT                        R22 K68 [UDim2.new]
      260 LOADN                            R23 0
      261 LOADN                            R24 14
      262 LOADN                            R25 0
      263 LOADN                            R26 14
      264 CALL                             R22 4 1
      265 JUMP                             ; [+7]
      266 GETIMPORT                        R22 K68 [UDim2.new]
      268 LOADN                            R23 0
      269 LOADN                            R24 10
      270 LOADN                            R25 0
      271 LOADN                            R26 10
      272 CALL                             R22 4 1
      273 SETTABLEKS                       R22 R21 K63 ["Size"]
      275 SETTABLEKS                       R10 R21 K64 ["backgroundStyle"]
      277 DUPTABLE                         R22 K70 [{"Color", "Thickness"}]
      278 GETTABLEKS                       R23 R9 K71 ["Color3"]
      280 SETTABLEKS                       R23 R22 K10 ["Color"]
      282 JUMPIFNOT                        R7 ; [+2]
      283 LOADN                            R23 2
      284 JUMP                             ; [+1]
      285 LOADN                            R23 1
      286 SETTABLEKS                       R23 R22 K69 ["Thickness"]
      288 SETTABLEKS                       R22 R21 K65 ["stroke"]
      290 DUPTABLE                         R22 K73 [{"UICorner"}]
      291 GETUPVAL                         R24 2
      292 GETTABLEKS                       R23 R24 K29 ["createElement"]
      294 LOADK                            R24 K72 ["UICorner"]
      295 DUPTABLE                         R25 K75 [{"CornerRadius"}]
      296 GETIMPORT                        R26 K77 [UDim.new]
      298 LOADN                            R27 0
      299 LOADN                            R28 15
      300 CALL                             R26 2 1
      301 SETTABLEKS                       R26 R25 K74 ["CornerRadius"]
      303 CALL                             R23 2 1
      304 SETTABLEKS                       R23 R22 K72 ["UICorner"]
      306 CALL                             R19 3 -1
      307 CALL                             R16 -1 1
      308 SETTABLEKS                       R16 R15 K53 ["Tooltip"]
      310 CALL                             R12 3 -1
      311 CLOSEUPVALS                      R2
      312 RETURN                           R12 -1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["TypedInstanceSignals"]
        3 GETTABLEKS                       R1 R2 K1 ["properties"]
        5 GETTABLEKS                       R0 R1 K2 ["observeInstance"]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K3 ["DEPRECATED_rigDescriptor"]
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
       28 GETUPVAL                         R7 1
       29 GETTABLEKS                       R6 R7 K11 ["useMemo"]
       31 NEWCLOSURE                       R7 P0
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R5
       35 NEWTABLE                         R8 0 2
       37 GETTABLEKS                       R9 R0 K12 ["DEPRECATED_rigDescriptor"]
       39 GETTABLEKS                       R10 R0 K3 ["side"]
       41 SETLIST                          R8 R9 2 [1]
       43 CALL                             R6 2 1
       44 GETUPVAL                         R8 4
       45 GETTABLEKS                       R7 R8 K13 ["useSignalState"]
       47 MOVE                             R8 R6
       48 CALL                             R7 1 1
       49 JUMPIFNOTEQKNIL                  R7 ; [+2]
       51 LOADB                            R4 0 +1
       52 LOADB                            R4 1
       53 JUMPIF                           R4 ; [+9]
       54 GETTABLEKS                       R8 R1 K14 ["Color"]
       56 GETTABLEKS                       R7 R8 K15 ["Extended"]
       58 GETTABLEKS                       R6 R7 K16 ["Gray"]
       60 GETTABLEKS                       R5 R6 K17 ["Gray_600"]
       62 JUMP                             ; [+18]
       63 JUMPIFNOT                        R2 ; [+9]
       64 GETTABLEKS                       R8 R1 K14 ["Color"]
       66 GETTABLEKS                       R7 R8 K15 ["Extended"]
       68 GETTABLEKS                       R6 R7 K18 ["Orange"]
       70 GETTABLEKS                       R5 R6 K19 ["Orange_600"]
       72 JUMP                             ; [+8]
       73 GETTABLEKS                       R8 R1 K14 ["Color"]
       75 GETTABLEKS                       R7 R8 K15 ["Extended"]
       77 GETTABLEKS                       R6 R7 K18 ["Orange"]
       79 GETTABLEKS                       R5 R6 K20 ["Orange_800"]
       81 GETIMPORT                        R6 K23 [table.clone]
       83 MOVE                             R7 R5
       84 CALL                             R6 1 1
       85 LOADK                            R7 K24 [0.3]
       86 SETTABLEKS                       R7 R6 K25 ["Transparency"]
       88 GETUPVAL                         R8 1
       89 GETTABLEKS                       R7 R8 K26 ["useCallback"]
       91 NEWCLOSURE                       R8 P1
       92 CAPTURE                          REF R4
       93 CAPTURE                          VAL R0
       94 NEWTABLE                         R9 0 3
       96 MOVE                             R10 R4
       97 GETTABLEKS                       R11 R0 K3 ["side"]
       99 GETTABLEKS                       R12 R0 K0 ["onNavigateToHand"]
      101 SETLIST                          R9 R10 3 [1]
      103 CALL                             R7 2 1
      104 GETUPVAL                         R9 1
      105 GETTABLEKS                       R8 R9 K27 ["createElement"]
      107 GETUPVAL                         R10 5
      108 GETTABLEKS                       R9 R10 K28 ["View"]
      110 DUPTABLE                         R10 K34 [{"tag", "Position", "onActivated", "onStateChanged", "stateLayer"}]
      111 LOADK                            R11 K35 ["auto-xy anchor-center-center"]
      112 SETTABLEKS                       R11 R10 K29 ["tag"]
      114 GETIMPORT                        R11 K38 [UDim2.fromScale]
      116 GETTABLEKS                       R14 R0 K40 ["position"]
      118 GETTABLEKS                       R13 R14 K41 ["X"]
      120 DIVK                             R12 R13 K39 [189]
      121 GETTABLEKS                       R15 R0 K40 ["position"]
      123 GETTABLEKS                       R14 R15 K43 ["Y"]
      125 DIVK                             R13 R14 K42 [383]
      126 CALL                             R11 2 1
      127 SETTABLEKS                       R11 R10 K30 ["Position"]
      129 SETTABLEKS                       R7 R10 K31 ["onActivated"]
      131 GETUPVAL                         R12 1
      132 GETTABLEKS                       R11 R12 K26 ["useCallback"]
      134 NEWCLOSURE                       R12 P2
      135 CAPTURE                          VAL R3
      136 NEWTABLE                         R13 0 0
      138 CALL                             R11 2 1
      139 SETTABLEKS                       R11 R10 K32 ["onStateChanged"]
      141 DUPTABLE                         R11 K45 [{"affordance"}]
      142 GETUPVAL                         R15 5
      143 GETTABLEKS                       R14 R15 K46 ["Enums"]
      145 GETTABLEKS                       R13 R14 K47 ["StateLayerAffordance"]
      147 GETTABLEKS                       R12 R13 K48 ["None"]
      149 SETTABLEKS                       R12 R11 K44 ["affordance"]
      151 SETTABLEKS                       R11 R10 K33 ["stateLayer"]
      153 DUPTABLE                         R11 K50 [{"Tooltip"}]
      154 GETUPVAL                         R13 1
      155 GETTABLEKS                       R12 R13 K27 ["createElement"]
      157 GETUPVAL                         R14 5
      158 GETTABLEKS                       R13 R14 K49 ["Tooltip"]
      160 DUPTABLE                         R14 K53 [{"title", "align", "side"}]
      161 GETTABLEKS                       R16 R0 K3 ["side"]
      163 JUMPIFNOTEQKS                    R16 K4 ["right"] ; [+3]
      165 LOADK                            R15 K54 ["Right Hand"]
      166 JUMP                             ; [+1]
      167 LOADK                            R15 K55 ["Left Hand"]
      168 SETTABLEKS                       R15 R14 K51 ["title"]
      170 GETUPVAL                         R18 5
      171 GETTABLEKS                       R17 R18 K46 ["Enums"]
      173 GETTABLEKS                       R16 R17 K56 ["PopoverAlign"]
      175 GETTABLEKS                       R15 R16 K57 ["Center"]
      177 SETTABLEKS                       R15 R14 K52 ["align"]
      179 GETUPVAL                         R18 5
      180 GETTABLEKS                       R17 R18 K46 ["Enums"]
      182 GETTABLEKS                       R16 R17 K58 ["PopoverSide"]
      184 GETTABLEKS                       R15 R16 K59 ["Top"]
      186 SETTABLEKS                       R15 R14 K3 ["side"]
      188 GETUPVAL                         R16 1
      189 GETTABLEKS                       R15 R16 K27 ["createElement"]
      191 GETUPVAL                         R17 5
      192 GETTABLEKS                       R16 R17 K28 ["View"]
      194 DUPTABLE                         R17 K63 [{"Size", "backgroundStyle", "stroke"}]
      195 JUMPIFNOT                        R2 ; [+8]
      196 GETIMPORT                        R18 K65 [UDim2.new]
      198 LOADN                            R19 0
      199 LOADN                            R20 14
      200 LOADN                            R21 0
      201 LOADN                            R22 14
      202 CALL                             R18 4 1
      203 JUMP                             ; [+7]
      204 GETIMPORT                        R18 K65 [UDim2.new]
      206 LOADN                            R19 0
      207 LOADN                            R20 10
      208 LOADN                            R21 0
      209 LOADN                            R22 10
      210 CALL                             R18 4 1
      211 SETTABLEKS                       R18 R17 K60 ["Size"]
      213 SETTABLEKS                       R5 R17 K61 ["backgroundStyle"]
      215 DUPTABLE                         R18 K67 [{"Color", "Thickness"}]
      216 GETTABLEKS                       R19 R6 K68 ["Color3"]
      218 SETTABLEKS                       R19 R18 K14 ["Color"]
      220 JUMPIFNOT                        R2 ; [+2]
      221 LOADN                            R19 2
      222 JUMP                             ; [+1]
      223 LOADN                            R19 1
      224 SETTABLEKS                       R19 R18 K66 ["Thickness"]
      226 SETTABLEKS                       R18 R17 K62 ["stroke"]
      228 DUPTABLE                         R18 K70 [{"UICorner"}]
      229 GETUPVAL                         R20 1
      230 GETTABLEKS                       R19 R20 K27 ["createElement"]
      232 LOADK                            R20 K69 ["UICorner"]
      233 DUPTABLE                         R21 K72 [{"CornerRadius"}]
      234 GETIMPORT                        R22 K74 [UDim.new]
      236 LOADN                            R23 0
      237 LOADN                            R24 15
      238 CALL                             R22 2 1
      239 SETTABLEKS                       R22 R21 K71 ["CornerRadius"]
      241 CALL                             R19 2 1
      242 SETTABLEKS                       R19 R18 K69 ["UICorner"]
      244 CALL                             R15 3 -1
      245 CALL                             R12 -1 1
      246 SETTABLEKS                       R12 R11 K49 ["Tooltip"]
      248 CALL                             R8 3 -1
      249 CLOSEUPVALS                      R4
      250 RETURN                           R8 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onClear"]
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
        8 GETUPVAL                         R2 3
        9 GETTABLEKS                       R1 R2 K0 ["rigDescriptor"]
       11 JUMP                             ; [+1]
       12 LOADNIL                          R1
       13 DUPTABLE                         R2 K25 [{"HeadBase", "Neck", "RightClavicle", "RightShoulder", "RightElbow", "RightWrist", "RightHip", "RightKnee", "RightAnkle", "RightToeBase", "LeftClavicle", "LeftShoulder", "LeftElbow", "LeftWrist", "LeftHip", "LeftKnee", "LeftAnkle", "LeftToeBase", "Chest", "Root", "Waist", "Spine", "RightHandDot", "LeftHandDot"}]
       14 GETUPVAL                         R4 4
       15 GETTABLEKS                       R3 R4 K26 ["createElement"]
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
       33 GETUPVAL                         R7 3
       34 GETTABLEKS                       R6 R7 K30 ["selectedJoint"]
       36 SETTABLEKS                       R6 R5 K30 ["selectedJoint"]
       38 GETIMPORT                        R7 K42 [Enum.RigLabel.HeadBase]
       40 GETTABLE                         R6 R0 R7
       41 SETTABLEKS                       R6 R5 K31 ["mappedJoint"]
       43 SETTABLEKS                       R1 R5 K32 ["DEPRECATED_rigDescriptor"]
       45 GETUPVAL                         R7 3
       46 GETTABLEKS                       R6 R7 K33 ["armedRigLabel"]
       48 SETTABLEKS                       R6 R5 K33 ["armedRigLabel"]
       50 GETUPVAL                         R7 3
       51 GETTABLEKS                       R6 R7 K34 ["onArmJoint"]
       53 SETTABLEKS                       R6 R5 K34 ["onArmJoint"]
       55 GETUPVAL                         R7 3
       56 GETTABLEKS                       R6 R7 K35 ["onMapJoint"]
       58 SETTABLEKS                       R6 R5 K35 ["onMapJoint"]
       60 GETUPVAL                         R7 3
       61 GETTABLEKS                       R6 R7 K36 ["counterpartHoveredJointName"]
       63 SETTABLEKS                       R6 R5 K36 ["counterpartHoveredJointName"]
       65 GETUPVAL                         R7 3
       66 GETTABLEKS                       R6 R7 K37 ["onDotHoverEnter"]
       68 SETTABLEKS                       R6 R5 K37 ["onDotHoverEnter"]
       70 GETUPVAL                         R7 3
       71 GETTABLEKS                       R6 R7 K38 ["onDotHoverLeave"]
       73 SETTABLEKS                       R6 R5 K38 ["onDotHoverLeave"]
       75 CALL                             R3 2 1
       76 SETTABLEKS                       R3 R2 K1 ["HeadBase"]
       78 GETUPVAL                         R4 4
       79 GETTABLEKS                       R3 R4 K26 ["createElement"]
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
       97 GETUPVAL                         R7 3
       98 GETTABLEKS                       R6 R7 K30 ["selectedJoint"]
      100 SETTABLEKS                       R6 R5 K30 ["selectedJoint"]
      102 GETIMPORT                        R7 K46 [Enum.RigLabel.Neck]
      104 GETTABLE                         R6 R0 R7
      105 SETTABLEKS                       R6 R5 K31 ["mappedJoint"]
      107 SETTABLEKS                       R1 R5 K32 ["DEPRECATED_rigDescriptor"]
      109 GETUPVAL                         R7 3
      110 GETTABLEKS                       R6 R7 K33 ["armedRigLabel"]
      112 SETTABLEKS                       R6 R5 K33 ["armedRigLabel"]
      114 GETUPVAL                         R7 3
      115 GETTABLEKS                       R6 R7 K34 ["onArmJoint"]
      117 SETTABLEKS                       R6 R5 K34 ["onArmJoint"]
      119 GETUPVAL                         R7 3
      120 GETTABLEKS                       R6 R7 K35 ["onMapJoint"]
      122 SETTABLEKS                       R6 R5 K35 ["onMapJoint"]
      124 GETUPVAL                         R7 3
      125 GETTABLEKS                       R6 R7 K36 ["counterpartHoveredJointName"]
      127 SETTABLEKS                       R6 R5 K36 ["counterpartHoveredJointName"]
      129 GETUPVAL                         R7 3
      130 GETTABLEKS                       R6 R7 K37 ["onDotHoverEnter"]
      132 SETTABLEKS                       R6 R5 K37 ["onDotHoverEnter"]
      134 GETUPVAL                         R7 3
      135 GETTABLEKS                       R6 R7 K38 ["onDotHoverLeave"]
      137 SETTABLEKS                       R6 R5 K38 ["onDotHoverLeave"]
      139 CALL                             R3 2 1
      140 SETTABLEKS                       R3 R2 K2 ["Neck"]
      142 GETUPVAL                         R4 4
      143 GETTABLEKS                       R3 R4 K26 ["createElement"]
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
      161 GETUPVAL                         R7 3
      162 GETTABLEKS                       R6 R7 K30 ["selectedJoint"]
      164 SETTABLEKS                       R6 R5 K30 ["selectedJoint"]
      166 GETIMPORT                        R7 K47 [Enum.RigLabel.RightClavicle]
      168 GETTABLE                         R6 R0 R7
      169 SETTABLEKS                       R6 R5 K31 ["mappedJoint"]
      171 SETTABLEKS                       R1 R5 K32 ["DEPRECATED_rigDescriptor"]
      173 GETUPVAL                         R7 3
      174 GETTABLEKS                       R6 R7 K33 ["armedRigLabel"]
      176 SETTABLEKS                       R6 R5 K33 ["armedRigLabel"]
      178 GETUPVAL                         R7 3
      179 GETTABLEKS                       R6 R7 K34 ["onArmJoint"]
      181 SETTABLEKS                       R6 R5 K34 ["onArmJoint"]
      183 GETUPVAL                         R7 3
      184 GETTABLEKS                       R6 R7 K35 ["onMapJoint"]
      186 SETTABLEKS                       R6 R5 K35 ["onMapJoint"]
      188 GETUPVAL                         R7 3
      189 GETTABLEKS                       R6 R7 K36 ["counterpartHoveredJointName"]
      191 SETTABLEKS                       R6 R5 K36 ["counterpartHoveredJointName"]
      193 GETUPVAL                         R7 3
      194 GETTABLEKS                       R6 R7 K37 ["onDotHoverEnter"]
      196 SETTABLEKS                       R6 R5 K37 ["onDotHoverEnter"]
      198 GETUPVAL                         R7 3
      199 GETTABLEKS                       R6 R7 K38 ["onDotHoverLeave"]
      201 SETTABLEKS                       R6 R5 K38 ["onDotHoverLeave"]
      203 CALL                             R3 2 1
      204 SETTABLEKS                       R3 R2 K3 ["RightClavicle"]
      206 GETUPVAL                         R4 4
      207 GETTABLEKS                       R3 R4 K26 ["createElement"]
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
      225 GETUPVAL                         R7 3
      226 GETTABLEKS                       R6 R7 K30 ["selectedJoint"]
      228 SETTABLEKS                       R6 R5 K30 ["selectedJoint"]
      230 GETIMPORT                        R7 K48 [Enum.RigLabel.RightShoulder]
      232 GETTABLE                         R6 R0 R7
      233 SETTABLEKS                       R6 R5 K31 ["mappedJoint"]
      235 SETTABLEKS                       R1 R5 K32 ["DEPRECATED_rigDescriptor"]
      237 GETUPVAL                         R7 3
      238 GETTABLEKS                       R6 R7 K33 ["armedRigLabel"]
      240 SETTABLEKS                       R6 R5 K33 ["armedRigLabel"]
      242 GETUPVAL                         R7 3
      243 GETTABLEKS                       R6 R7 K34 ["onArmJoint"]
      245 SETTABLEKS                       R6 R5 K34 ["onArmJoint"]
      247 GETUPVAL                         R7 3
      248 GETTABLEKS                       R6 R7 K35 ["onMapJoint"]
      250 SETTABLEKS                       R6 R5 K35 ["onMapJoint"]
      252 GETUPVAL                         R7 3
      253 GETTABLEKS                       R6 R7 K36 ["counterpartHoveredJointName"]
      255 SETTABLEKS                       R6 R5 K36 ["counterpartHoveredJointName"]
      257 GETUPVAL                         R7 3
      258 GETTABLEKS                       R6 R7 K37 ["onDotHoverEnter"]
      260 SETTABLEKS                       R6 R5 K37 ["onDotHoverEnter"]
      262 GETUPVAL                         R7 3
      263 GETTABLEKS                       R6 R7 K38 ["onDotHoverLeave"]
      265 SETTABLEKS                       R6 R5 K38 ["onDotHoverLeave"]
      267 CALL                             R3 2 1
      268 SETTABLEKS                       R3 R2 K4 ["RightShoulder"]
      270 GETUPVAL                         R4 4
      271 GETTABLEKS                       R3 R4 K26 ["createElement"]
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
      289 GETUPVAL                         R7 3
      290 GETTABLEKS                       R6 R7 K30 ["selectedJoint"]
      292 SETTABLEKS                       R6 R5 K30 ["selectedJoint"]
      294 GETIMPORT                        R7 K49 [Enum.RigLabel.RightElbow]
      296 GETTABLE                         R6 R0 R7
      297 SETTABLEKS                       R6 R5 K31 ["mappedJoint"]
      299 SETTABLEKS                       R1 R5 K32 ["DEPRECATED_rigDescriptor"]
      301 GETUPVAL                         R7 3
      302 GETTABLEKS                       R6 R7 K33 ["armedRigLabel"]
      304 SETTABLEKS                       R6 R5 K33 ["armedRigLabel"]
      306 GETUPVAL                         R7 3
      307 GETTABLEKS                       R6 R7 K34 ["onArmJoint"]
      309 SETTABLEKS                       R6 R5 K34 ["onArmJoint"]
      311 GETUPVAL                         R7 3
      312 GETTABLEKS                       R6 R7 K35 ["onMapJoint"]
      314 SETTABLEKS                       R6 R5 K35 ["onMapJoint"]
      316 GETUPVAL                         R7 3
      317 GETTABLEKS                       R6 R7 K36 ["counterpartHoveredJointName"]
      319 SETTABLEKS                       R6 R5 K36 ["counterpartHoveredJointName"]
      321 GETUPVAL                         R7 3
      322 GETTABLEKS                       R6 R7 K37 ["onDotHoverEnter"]
      324 SETTABLEKS                       R6 R5 K37 ["onDotHoverEnter"]
      326 GETUPVAL                         R7 3
      327 GETTABLEKS                       R6 R7 K38 ["onDotHoverLeave"]
      329 SETTABLEKS                       R6 R5 K38 ["onDotHoverLeave"]
      331 CALL                             R3 2 1
      332 SETTABLEKS                       R3 R2 K5 ["RightElbow"]
      334 GETUPVAL                         R4 4
      335 GETTABLEKS                       R3 R4 K26 ["createElement"]
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
      353 GETUPVAL                         R7 3
      354 GETTABLEKS                       R6 R7 K30 ["selectedJoint"]
      356 SETTABLEKS                       R6 R5 K30 ["selectedJoint"]
      358 GETIMPORT                        R7 K50 [Enum.RigLabel.RightWrist]
      360 GETTABLE                         R6 R0 R7
      361 SETTABLEKS                       R6 R5 K31 ["mappedJoint"]
      363 SETTABLEKS                       R1 R5 K32 ["DEPRECATED_rigDescriptor"]
      365 GETUPVAL                         R7 3
      366 GETTABLEKS                       R6 R7 K33 ["armedRigLabel"]
      368 SETTABLEKS                       R6 R5 K33 ["armedRigLabel"]
      370 GETUPVAL                         R7 3
      371 GETTABLEKS                       R6 R7 K34 ["onArmJoint"]
      373 SETTABLEKS                       R6 R5 K34 ["onArmJoint"]
      375 GETUPVAL                         R7 3
      376 GETTABLEKS                       R6 R7 K35 ["onMapJoint"]
      378 SETTABLEKS                       R6 R5 K35 ["onMapJoint"]
      380 GETUPVAL                         R7 3
      381 GETTABLEKS                       R6 R7 K36 ["counterpartHoveredJointName"]
      383 SETTABLEKS                       R6 R5 K36 ["counterpartHoveredJointName"]
      385 GETUPVAL                         R7 3
      386 GETTABLEKS                       R6 R7 K37 ["onDotHoverEnter"]
      388 SETTABLEKS                       R6 R5 K37 ["onDotHoverEnter"]
      390 GETUPVAL                         R7 3
      391 GETTABLEKS                       R6 R7 K38 ["onDotHoverLeave"]
      393 SETTABLEKS                       R6 R5 K38 ["onDotHoverLeave"]
      395 CALL                             R3 2 1
      396 SETTABLEKS                       R3 R2 K6 ["RightWrist"]
      398 GETUPVAL                         R4 4
      399 GETTABLEKS                       R3 R4 K26 ["createElement"]
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
      417 GETUPVAL                         R7 3
      418 GETTABLEKS                       R6 R7 K30 ["selectedJoint"]
      420 SETTABLEKS                       R6 R5 K30 ["selectedJoint"]
      422 GETIMPORT                        R7 K51 [Enum.RigLabel.RightHip]
      424 GETTABLE                         R6 R0 R7
      425 SETTABLEKS                       R6 R5 K31 ["mappedJoint"]
      427 SETTABLEKS                       R1 R5 K32 ["DEPRECATED_rigDescriptor"]
      429 GETUPVAL                         R7 3
      430 GETTABLEKS                       R6 R7 K33 ["armedRigLabel"]
      432 SETTABLEKS                       R6 R5 K33 ["armedRigLabel"]
      434 GETUPVAL                         R7 3
      435 GETTABLEKS                       R6 R7 K34 ["onArmJoint"]
      437 SETTABLEKS                       R6 R5 K34 ["onArmJoint"]
      439 GETUPVAL                         R7 3
      440 GETTABLEKS                       R6 R7 K35 ["onMapJoint"]
      442 SETTABLEKS                       R6 R5 K35 ["onMapJoint"]
      444 GETUPVAL                         R7 3
      445 GETTABLEKS                       R6 R7 K36 ["counterpartHoveredJointName"]
      447 SETTABLEKS                       R6 R5 K36 ["counterpartHoveredJointName"]
      449 GETUPVAL                         R7 3
      450 GETTABLEKS                       R6 R7 K37 ["onDotHoverEnter"]
      452 SETTABLEKS                       R6 R5 K37 ["onDotHoverEnter"]
      454 GETUPVAL                         R7 3
      455 GETTABLEKS                       R6 R7 K38 ["onDotHoverLeave"]
      457 SETTABLEKS                       R6 R5 K38 ["onDotHoverLeave"]
      459 CALL                             R3 2 1
      460 SETTABLEKS                       R3 R2 K7 ["RightHip"]
      462 GETUPVAL                         R4 4
      463 GETTABLEKS                       R3 R4 K26 ["createElement"]
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
      481 GETUPVAL                         R7 3
      482 GETTABLEKS                       R6 R7 K30 ["selectedJoint"]
      484 SETTABLEKS                       R6 R5 K30 ["selectedJoint"]
      486 GETIMPORT                        R7 K52 [Enum.RigLabel.RightKnee]
      488 GETTABLE                         R6 R0 R7
      489 SETTABLEKS                       R6 R5 K31 ["mappedJoint"]
      491 SETTABLEKS                       R1 R5 K32 ["DEPRECATED_rigDescriptor"]
      493 GETUPVAL                         R7 3
      494 GETTABLEKS                       R6 R7 K33 ["armedRigLabel"]
      496 SETTABLEKS                       R6 R5 K33 ["armedRigLabel"]
      498 GETUPVAL                         R7 3
      499 GETTABLEKS                       R6 R7 K34 ["onArmJoint"]
      501 SETTABLEKS                       R6 R5 K34 ["onArmJoint"]
      503 GETUPVAL                         R7 3
      504 GETTABLEKS                       R6 R7 K35 ["onMapJoint"]
      506 SETTABLEKS                       R6 R5 K35 ["onMapJoint"]
      508 GETUPVAL                         R7 3
      509 GETTABLEKS                       R6 R7 K36 ["counterpartHoveredJointName"]
      511 SETTABLEKS                       R6 R5 K36 ["counterpartHoveredJointName"]
      513 GETUPVAL                         R7 3
      514 GETTABLEKS                       R6 R7 K37 ["onDotHoverEnter"]
      516 SETTABLEKS                       R6 R5 K37 ["onDotHoverEnter"]
      518 GETUPVAL                         R7 3
      519 GETTABLEKS                       R6 R7 K38 ["onDotHoverLeave"]
      521 SETTABLEKS                       R6 R5 K38 ["onDotHoverLeave"]
      523 CALL                             R3 2 1
      524 SETTABLEKS                       R3 R2 K8 ["RightKnee"]
      526 GETUPVAL                         R4 4
      527 GETTABLEKS                       R3 R4 K26 ["createElement"]
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
      545 GETUPVAL                         R7 3
      546 GETTABLEKS                       R6 R7 K30 ["selectedJoint"]
      548 SETTABLEKS                       R6 R5 K30 ["selectedJoint"]
      550 GETIMPORT                        R7 K53 [Enum.RigLabel.RightAnkle]
      552 GETTABLE                         R6 R0 R7
      553 SETTABLEKS                       R6 R5 K31 ["mappedJoint"]
      555 SETTABLEKS                       R1 R5 K32 ["DEPRECATED_rigDescriptor"]
      557 GETUPVAL                         R7 3
      558 GETTABLEKS                       R6 R7 K33 ["armedRigLabel"]
      560 SETTABLEKS                       R6 R5 K33 ["armedRigLabel"]
      562 GETUPVAL                         R7 3
      563 GETTABLEKS                       R6 R7 K34 ["onArmJoint"]
      565 SETTABLEKS                       R6 R5 K34 ["onArmJoint"]
      567 GETUPVAL                         R7 3
      568 GETTABLEKS                       R6 R7 K35 ["onMapJoint"]
      570 SETTABLEKS                       R6 R5 K35 ["onMapJoint"]
      572 GETUPVAL                         R7 3
      573 GETTABLEKS                       R6 R7 K36 ["counterpartHoveredJointName"]
      575 SETTABLEKS                       R6 R5 K36 ["counterpartHoveredJointName"]
      577 GETUPVAL                         R7 3
      578 GETTABLEKS                       R6 R7 K37 ["onDotHoverEnter"]
      580 SETTABLEKS                       R6 R5 K37 ["onDotHoverEnter"]
      582 GETUPVAL                         R7 3
      583 GETTABLEKS                       R6 R7 K38 ["onDotHoverLeave"]
      585 SETTABLEKS                       R6 R5 K38 ["onDotHoverLeave"]
      587 CALL                             R3 2 1
      588 SETTABLEKS                       R3 R2 K9 ["RightAnkle"]
      590 GETUPVAL                         R4 4
      591 GETTABLEKS                       R3 R4 K26 ["createElement"]
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
      608 GETUPVAL                         R7 3
      609 GETTABLEKS                       R6 R7 K30 ["selectedJoint"]
      611 SETTABLEKS                       R6 R5 K30 ["selectedJoint"]
      613 GETUPVAL                         R7 6
      614 GETTABLE                         R6 R0 R7
      615 SETTABLEKS                       R6 R5 K31 ["mappedJoint"]
      617 SETTABLEKS                       R1 R5 K32 ["DEPRECATED_rigDescriptor"]
      619 GETUPVAL                         R7 3
      620 GETTABLEKS                       R6 R7 K33 ["armedRigLabel"]
      622 SETTABLEKS                       R6 R5 K33 ["armedRigLabel"]
      624 GETUPVAL                         R7 3
      625 GETTABLEKS                       R6 R7 K34 ["onArmJoint"]
      627 SETTABLEKS                       R6 R5 K34 ["onArmJoint"]
      629 GETUPVAL                         R7 3
      630 GETTABLEKS                       R6 R7 K35 ["onMapJoint"]
      632 SETTABLEKS                       R6 R5 K35 ["onMapJoint"]
      634 GETUPVAL                         R7 3
      635 GETTABLEKS                       R6 R7 K36 ["counterpartHoveredJointName"]
      637 SETTABLEKS                       R6 R5 K36 ["counterpartHoveredJointName"]
      639 GETUPVAL                         R7 3
      640 GETTABLEKS                       R6 R7 K37 ["onDotHoverEnter"]
      642 SETTABLEKS                       R6 R5 K37 ["onDotHoverEnter"]
      644 GETUPVAL                         R7 3
      645 GETTABLEKS                       R6 R7 K38 ["onDotHoverLeave"]
      647 SETTABLEKS                       R6 R5 K38 ["onDotHoverLeave"]
      649 CALL                             R3 2 1
      650 SETTABLEKS                       R3 R2 K10 ["RightToeBase"]
      652 GETUPVAL                         R4 4
      653 GETTABLEKS                       R3 R4 K26 ["createElement"]
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
      671 GETUPVAL                         R7 3
      672 GETTABLEKS                       R6 R7 K30 ["selectedJoint"]
      674 SETTABLEKS                       R6 R5 K30 ["selectedJoint"]
      676 GETIMPORT                        R7 K54 [Enum.RigLabel.LeftClavicle]
      678 GETTABLE                         R6 R0 R7
      679 SETTABLEKS                       R6 R5 K31 ["mappedJoint"]
      681 SETTABLEKS                       R1 R5 K32 ["DEPRECATED_rigDescriptor"]
      683 GETUPVAL                         R7 3
      684 GETTABLEKS                       R6 R7 K33 ["armedRigLabel"]
      686 SETTABLEKS                       R6 R5 K33 ["armedRigLabel"]
      688 GETUPVAL                         R7 3
      689 GETTABLEKS                       R6 R7 K34 ["onArmJoint"]
      691 SETTABLEKS                       R6 R5 K34 ["onArmJoint"]
      693 GETUPVAL                         R7 3
      694 GETTABLEKS                       R6 R7 K35 ["onMapJoint"]
      696 SETTABLEKS                       R6 R5 K35 ["onMapJoint"]
      698 GETUPVAL                         R7 3
      699 GETTABLEKS                       R6 R7 K36 ["counterpartHoveredJointName"]
      701 SETTABLEKS                       R6 R5 K36 ["counterpartHoveredJointName"]
      703 GETUPVAL                         R7 3
      704 GETTABLEKS                       R6 R7 K37 ["onDotHoverEnter"]
      706 SETTABLEKS                       R6 R5 K37 ["onDotHoverEnter"]
      708 GETUPVAL                         R7 3
      709 GETTABLEKS                       R6 R7 K38 ["onDotHoverLeave"]
      711 SETTABLEKS                       R6 R5 K38 ["onDotHoverLeave"]
      713 CALL                             R3 2 1
      714 SETTABLEKS                       R3 R2 K11 ["LeftClavicle"]
      716 GETUPVAL                         R4 4
      717 GETTABLEKS                       R3 R4 K26 ["createElement"]
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
      735 GETUPVAL                         R7 3
      736 GETTABLEKS                       R6 R7 K30 ["selectedJoint"]
      738 SETTABLEKS                       R6 R5 K30 ["selectedJoint"]
      740 GETIMPORT                        R7 K55 [Enum.RigLabel.LeftShoulder]
      742 GETTABLE                         R6 R0 R7
      743 SETTABLEKS                       R6 R5 K31 ["mappedJoint"]
      745 SETTABLEKS                       R1 R5 K32 ["DEPRECATED_rigDescriptor"]
      747 GETUPVAL                         R7 3
      748 GETTABLEKS                       R6 R7 K33 ["armedRigLabel"]
      750 SETTABLEKS                       R6 R5 K33 ["armedRigLabel"]
      752 GETUPVAL                         R7 3
      753 GETTABLEKS                       R6 R7 K34 ["onArmJoint"]
      755 SETTABLEKS                       R6 R5 K34 ["onArmJoint"]
      757 GETUPVAL                         R7 3
      758 GETTABLEKS                       R6 R7 K35 ["onMapJoint"]
      760 SETTABLEKS                       R6 R5 K35 ["onMapJoint"]
      762 GETUPVAL                         R7 3
      763 GETTABLEKS                       R6 R7 K36 ["counterpartHoveredJointName"]
      765 SETTABLEKS                       R6 R5 K36 ["counterpartHoveredJointName"]
      767 GETUPVAL                         R7 3
      768 GETTABLEKS                       R6 R7 K37 ["onDotHoverEnter"]
      770 SETTABLEKS                       R6 R5 K37 ["onDotHoverEnter"]
      772 GETUPVAL                         R7 3
      773 GETTABLEKS                       R6 R7 K38 ["onDotHoverLeave"]
      775 SETTABLEKS                       R6 R5 K38 ["onDotHoverLeave"]
      777 CALL                             R3 2 1
      778 SETTABLEKS                       R3 R2 K12 ["LeftShoulder"]
      780 GETUPVAL                         R4 4
      781 GETTABLEKS                       R3 R4 K26 ["createElement"]
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
      799 GETUPVAL                         R7 3
      800 GETTABLEKS                       R6 R7 K30 ["selectedJoint"]
      802 SETTABLEKS                       R6 R5 K30 ["selectedJoint"]
      804 GETIMPORT                        R7 K56 [Enum.RigLabel.LeftElbow]
      806 GETTABLE                         R6 R0 R7
      807 SETTABLEKS                       R6 R5 K31 ["mappedJoint"]
      809 SETTABLEKS                       R1 R5 K32 ["DEPRECATED_rigDescriptor"]
      811 GETUPVAL                         R7 3
      812 GETTABLEKS                       R6 R7 K33 ["armedRigLabel"]
      814 SETTABLEKS                       R6 R5 K33 ["armedRigLabel"]
      816 GETUPVAL                         R7 3
      817 GETTABLEKS                       R6 R7 K34 ["onArmJoint"]
      819 SETTABLEKS                       R6 R5 K34 ["onArmJoint"]
      821 GETUPVAL                         R7 3
      822 GETTABLEKS                       R6 R7 K35 ["onMapJoint"]
      824 SETTABLEKS                       R6 R5 K35 ["onMapJoint"]
      826 GETUPVAL                         R7 3
      827 GETTABLEKS                       R6 R7 K36 ["counterpartHoveredJointName"]
      829 SETTABLEKS                       R6 R5 K36 ["counterpartHoveredJointName"]
      831 GETUPVAL                         R7 3
      832 GETTABLEKS                       R6 R7 K37 ["onDotHoverEnter"]
      834 SETTABLEKS                       R6 R5 K37 ["onDotHoverEnter"]
      836 GETUPVAL                         R7 3
      837 GETTABLEKS                       R6 R7 K38 ["onDotHoverLeave"]
      839 SETTABLEKS                       R6 R5 K38 ["onDotHoverLeave"]
      841 CALL                             R3 2 1
      842 SETTABLEKS                       R3 R2 K13 ["LeftElbow"]
      844 GETUPVAL                         R4 4
      845 GETTABLEKS                       R3 R4 K26 ["createElement"]
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
      863 GETUPVAL                         R7 3
      864 GETTABLEKS                       R6 R7 K30 ["selectedJoint"]
      866 SETTABLEKS                       R6 R5 K30 ["selectedJoint"]
      868 GETIMPORT                        R7 K57 [Enum.RigLabel.LeftWrist]
      870 GETTABLE                         R6 R0 R7
      871 SETTABLEKS                       R6 R5 K31 ["mappedJoint"]
      873 SETTABLEKS                       R1 R5 K32 ["DEPRECATED_rigDescriptor"]
      875 GETUPVAL                         R7 3
      876 GETTABLEKS                       R6 R7 K33 ["armedRigLabel"]
      878 SETTABLEKS                       R6 R5 K33 ["armedRigLabel"]
      880 GETUPVAL                         R7 3
      881 GETTABLEKS                       R6 R7 K34 ["onArmJoint"]
      883 SETTABLEKS                       R6 R5 K34 ["onArmJoint"]
      885 GETUPVAL                         R7 3
      886 GETTABLEKS                       R6 R7 K35 ["onMapJoint"]
      888 SETTABLEKS                       R6 R5 K35 ["onMapJoint"]
      890 GETUPVAL                         R7 3
      891 GETTABLEKS                       R6 R7 K36 ["counterpartHoveredJointName"]
      893 SETTABLEKS                       R6 R5 K36 ["counterpartHoveredJointName"]
      895 GETUPVAL                         R7 3
      896 GETTABLEKS                       R6 R7 K37 ["onDotHoverEnter"]
      898 SETTABLEKS                       R6 R5 K37 ["onDotHoverEnter"]
      900 GETUPVAL                         R7 3
      901 GETTABLEKS                       R6 R7 K38 ["onDotHoverLeave"]
      903 SETTABLEKS                       R6 R5 K38 ["onDotHoverLeave"]
      905 CALL                             R3 2 1
      906 SETTABLEKS                       R3 R2 K14 ["LeftWrist"]
      908 GETUPVAL                         R4 4
      909 GETTABLEKS                       R3 R4 K26 ["createElement"]
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
      927 GETUPVAL                         R7 3
      928 GETTABLEKS                       R6 R7 K30 ["selectedJoint"]
      930 SETTABLEKS                       R6 R5 K30 ["selectedJoint"]
      932 GETIMPORT                        R7 K58 [Enum.RigLabel.LeftHip]
      934 GETTABLE                         R6 R0 R7
      935 SETTABLEKS                       R6 R5 K31 ["mappedJoint"]
      937 SETTABLEKS                       R1 R5 K32 ["DEPRECATED_rigDescriptor"]
      939 GETUPVAL                         R7 3
      940 GETTABLEKS                       R6 R7 K33 ["armedRigLabel"]
      942 SETTABLEKS                       R6 R5 K33 ["armedRigLabel"]
      944 GETUPVAL                         R7 3
      945 GETTABLEKS                       R6 R7 K34 ["onArmJoint"]
      947 SETTABLEKS                       R6 R5 K34 ["onArmJoint"]
      949 GETUPVAL                         R7 3
      950 GETTABLEKS                       R6 R7 K35 ["onMapJoint"]
      952 SETTABLEKS                       R6 R5 K35 ["onMapJoint"]
      954 GETUPVAL                         R7 3
      955 GETTABLEKS                       R6 R7 K36 ["counterpartHoveredJointName"]
      957 SETTABLEKS                       R6 R5 K36 ["counterpartHoveredJointName"]
      959 GETUPVAL                         R7 3
      960 GETTABLEKS                       R6 R7 K37 ["onDotHoverEnter"]
      962 SETTABLEKS                       R6 R5 K37 ["onDotHoverEnter"]
      964 GETUPVAL                         R7 3
      965 GETTABLEKS                       R6 R7 K38 ["onDotHoverLeave"]
      967 SETTABLEKS                       R6 R5 K38 ["onDotHoverLeave"]
      969 CALL                             R3 2 1
      970 SETTABLEKS                       R3 R2 K15 ["LeftHip"]
      972 GETUPVAL                         R4 4
      973 GETTABLEKS                       R3 R4 K26 ["createElement"]
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
      991 GETUPVAL                         R7 3
      992 GETTABLEKS                       R6 R7 K30 ["selectedJoint"]
      994 SETTABLEKS                       R6 R5 K30 ["selectedJoint"]
      996 GETIMPORT                        R7 K59 [Enum.RigLabel.LeftKnee]
      998 GETTABLE                         R6 R0 R7
      999 SETTABLEKS                       R6 R5 K31 ["mappedJoint"]
     1001 SETTABLEKS                       R1 R5 K32 ["DEPRECATED_rigDescriptor"]
     1003 GETUPVAL                         R7 3
     1004 GETTABLEKS                       R6 R7 K33 ["armedRigLabel"]
     1006 SETTABLEKS                       R6 R5 K33 ["armedRigLabel"]
     1008 GETUPVAL                         R7 3
     1009 GETTABLEKS                       R6 R7 K34 ["onArmJoint"]
     1011 SETTABLEKS                       R6 R5 K34 ["onArmJoint"]
     1013 GETUPVAL                         R7 3
     1014 GETTABLEKS                       R6 R7 K35 ["onMapJoint"]
     1016 SETTABLEKS                       R6 R5 K35 ["onMapJoint"]
     1018 GETUPVAL                         R7 3
     1019 GETTABLEKS                       R6 R7 K36 ["counterpartHoveredJointName"]
     1021 SETTABLEKS                       R6 R5 K36 ["counterpartHoveredJointName"]
     1023 GETUPVAL                         R7 3
     1024 GETTABLEKS                       R6 R7 K37 ["onDotHoverEnter"]
     1026 SETTABLEKS                       R6 R5 K37 ["onDotHoverEnter"]
     1028 GETUPVAL                         R7 3
     1029 GETTABLEKS                       R6 R7 K38 ["onDotHoverLeave"]
     1031 SETTABLEKS                       R6 R5 K38 ["onDotHoverLeave"]
     1033 CALL                             R3 2 1
     1034 SETTABLEKS                       R3 R2 K16 ["LeftKnee"]
     1036 GETUPVAL                         R4 4
     1037 GETTABLEKS                       R3 R4 K26 ["createElement"]
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
     1055 GETUPVAL                         R7 3
     1056 GETTABLEKS                       R6 R7 K30 ["selectedJoint"]
     1058 SETTABLEKS                       R6 R5 K30 ["selectedJoint"]
     1060 GETIMPORT                        R7 K60 [Enum.RigLabel.LeftAnkle]
     1062 GETTABLE                         R6 R0 R7
     1063 SETTABLEKS                       R6 R5 K31 ["mappedJoint"]
     1065 SETTABLEKS                       R1 R5 K32 ["DEPRECATED_rigDescriptor"]
     1067 GETUPVAL                         R7 3
     1068 GETTABLEKS                       R6 R7 K33 ["armedRigLabel"]
     1070 SETTABLEKS                       R6 R5 K33 ["armedRigLabel"]
     1072 GETUPVAL                         R7 3
     1073 GETTABLEKS                       R6 R7 K34 ["onArmJoint"]
     1075 SETTABLEKS                       R6 R5 K34 ["onArmJoint"]
     1077 GETUPVAL                         R7 3
     1078 GETTABLEKS                       R6 R7 K35 ["onMapJoint"]
     1080 SETTABLEKS                       R6 R5 K35 ["onMapJoint"]
     1082 GETUPVAL                         R7 3
     1083 GETTABLEKS                       R6 R7 K36 ["counterpartHoveredJointName"]
     1085 SETTABLEKS                       R6 R5 K36 ["counterpartHoveredJointName"]
     1087 GETUPVAL                         R7 3
     1088 GETTABLEKS                       R6 R7 K37 ["onDotHoverEnter"]
     1090 SETTABLEKS                       R6 R5 K37 ["onDotHoverEnter"]
     1092 GETUPVAL                         R7 3
     1093 GETTABLEKS                       R6 R7 K38 ["onDotHoverLeave"]
     1095 SETTABLEKS                       R6 R5 K38 ["onDotHoverLeave"]
     1097 CALL                             R3 2 1
     1098 SETTABLEKS                       R3 R2 K17 ["LeftAnkle"]
     1100 GETUPVAL                         R4 4
     1101 GETTABLEKS                       R3 R4 K26 ["createElement"]
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
     1118 GETUPVAL                         R7 3
     1119 GETTABLEKS                       R6 R7 K30 ["selectedJoint"]
     1121 SETTABLEKS                       R6 R5 K30 ["selectedJoint"]
     1123 GETUPVAL                         R7 7
     1124 GETTABLE                         R6 R0 R7
     1125 SETTABLEKS                       R6 R5 K31 ["mappedJoint"]
     1127 SETTABLEKS                       R1 R5 K32 ["DEPRECATED_rigDescriptor"]
     1129 GETUPVAL                         R7 3
     1130 GETTABLEKS                       R6 R7 K33 ["armedRigLabel"]
     1132 SETTABLEKS                       R6 R5 K33 ["armedRigLabel"]
     1134 GETUPVAL                         R7 3
     1135 GETTABLEKS                       R6 R7 K34 ["onArmJoint"]
     1137 SETTABLEKS                       R6 R5 K34 ["onArmJoint"]
     1139 GETUPVAL                         R7 3
     1140 GETTABLEKS                       R6 R7 K35 ["onMapJoint"]
     1142 SETTABLEKS                       R6 R5 K35 ["onMapJoint"]
     1144 GETUPVAL                         R7 3
     1145 GETTABLEKS                       R6 R7 K36 ["counterpartHoveredJointName"]
     1147 SETTABLEKS                       R6 R5 K36 ["counterpartHoveredJointName"]
     1149 GETUPVAL                         R7 3
     1150 GETTABLEKS                       R6 R7 K37 ["onDotHoverEnter"]
     1152 SETTABLEKS                       R6 R5 K37 ["onDotHoverEnter"]
     1154 GETUPVAL                         R7 3
     1155 GETTABLEKS                       R6 R7 K38 ["onDotHoverLeave"]
     1157 SETTABLEKS                       R6 R5 K38 ["onDotHoverLeave"]
     1159 CALL                             R3 2 1
     1160 SETTABLEKS                       R3 R2 K18 ["LeftToeBase"]
     1162 GETUPVAL                         R4 4
     1163 GETTABLEKS                       R3 R4 K26 ["createElement"]
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
     1181 GETUPVAL                         R7 3
     1182 GETTABLEKS                       R6 R7 K30 ["selectedJoint"]
     1184 SETTABLEKS                       R6 R5 K30 ["selectedJoint"]
     1186 GETIMPORT                        R7 K61 [Enum.RigLabel.Chest]
     1188 GETTABLE                         R6 R0 R7
     1189 SETTABLEKS                       R6 R5 K31 ["mappedJoint"]
     1191 SETTABLEKS                       R1 R5 K32 ["DEPRECATED_rigDescriptor"]
     1193 GETUPVAL                         R7 3
     1194 GETTABLEKS                       R6 R7 K33 ["armedRigLabel"]
     1196 SETTABLEKS                       R6 R5 K33 ["armedRigLabel"]
     1198 GETUPVAL                         R7 3
     1199 GETTABLEKS                       R6 R7 K34 ["onArmJoint"]
     1201 SETTABLEKS                       R6 R5 K34 ["onArmJoint"]
     1203 GETUPVAL                         R7 3
     1204 GETTABLEKS                       R6 R7 K35 ["onMapJoint"]
     1206 SETTABLEKS                       R6 R5 K35 ["onMapJoint"]
     1208 GETUPVAL                         R7 3
     1209 GETTABLEKS                       R6 R7 K36 ["counterpartHoveredJointName"]
     1211 SETTABLEKS                       R6 R5 K36 ["counterpartHoveredJointName"]
     1213 GETUPVAL                         R7 3
     1214 GETTABLEKS                       R6 R7 K37 ["onDotHoverEnter"]
     1216 SETTABLEKS                       R6 R5 K37 ["onDotHoverEnter"]
     1218 GETUPVAL                         R7 3
     1219 GETTABLEKS                       R6 R7 K38 ["onDotHoverLeave"]
     1221 SETTABLEKS                       R6 R5 K38 ["onDotHoverLeave"]
     1223 CALL                             R3 2 1
     1224 SETTABLEKS                       R3 R2 K19 ["Chest"]
     1226 GETUPVAL                         R4 4
     1227 GETTABLEKS                       R3 R4 K26 ["createElement"]
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
     1245 GETUPVAL                         R7 3
     1246 GETTABLEKS                       R6 R7 K30 ["selectedJoint"]
     1248 SETTABLEKS                       R6 R5 K30 ["selectedJoint"]
     1250 GETIMPORT                        R7 K62 [Enum.RigLabel.Root]
     1252 GETTABLE                         R6 R0 R7
     1253 SETTABLEKS                       R6 R5 K31 ["mappedJoint"]
     1255 SETTABLEKS                       R1 R5 K32 ["DEPRECATED_rigDescriptor"]
     1257 GETUPVAL                         R7 3
     1258 GETTABLEKS                       R6 R7 K33 ["armedRigLabel"]
     1260 SETTABLEKS                       R6 R5 K33 ["armedRigLabel"]
     1262 GETUPVAL                         R7 3
     1263 GETTABLEKS                       R6 R7 K34 ["onArmJoint"]
     1265 SETTABLEKS                       R6 R5 K34 ["onArmJoint"]
     1267 GETUPVAL                         R7 3
     1268 GETTABLEKS                       R6 R7 K35 ["onMapJoint"]
     1270 SETTABLEKS                       R6 R5 K35 ["onMapJoint"]
     1272 GETUPVAL                         R7 3
     1273 GETTABLEKS                       R6 R7 K36 ["counterpartHoveredJointName"]
     1275 SETTABLEKS                       R6 R5 K36 ["counterpartHoveredJointName"]
     1277 GETUPVAL                         R7 3
     1278 GETTABLEKS                       R6 R7 K37 ["onDotHoverEnter"]
     1280 SETTABLEKS                       R6 R5 K37 ["onDotHoverEnter"]
     1282 GETUPVAL                         R7 3
     1283 GETTABLEKS                       R6 R7 K38 ["onDotHoverLeave"]
     1285 SETTABLEKS                       R6 R5 K38 ["onDotHoverLeave"]
     1287 CALL                             R3 2 1
     1288 SETTABLEKS                       R3 R2 K20 ["Root"]
     1290 GETUPVAL                         R4 4
     1291 GETTABLEKS                       R3 R4 K26 ["createElement"]
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
     1309 GETUPVAL                         R7 3
     1310 GETTABLEKS                       R6 R7 K30 ["selectedJoint"]
     1312 SETTABLEKS                       R6 R5 K30 ["selectedJoint"]
     1314 GETIMPORT                        R7 K63 [Enum.RigLabel.Waist]
     1316 GETTABLE                         R6 R0 R7
     1317 SETTABLEKS                       R6 R5 K31 ["mappedJoint"]
     1319 SETTABLEKS                       R1 R5 K32 ["DEPRECATED_rigDescriptor"]
     1321 GETUPVAL                         R7 3
     1322 GETTABLEKS                       R6 R7 K33 ["armedRigLabel"]
     1324 SETTABLEKS                       R6 R5 K33 ["armedRigLabel"]
     1326 GETUPVAL                         R7 3
     1327 GETTABLEKS                       R6 R7 K34 ["onArmJoint"]
     1329 SETTABLEKS                       R6 R5 K34 ["onArmJoint"]
     1331 GETUPVAL                         R7 3
     1332 GETTABLEKS                       R6 R7 K35 ["onMapJoint"]
     1334 SETTABLEKS                       R6 R5 K35 ["onMapJoint"]
     1336 GETUPVAL                         R7 3
     1337 GETTABLEKS                       R6 R7 K36 ["counterpartHoveredJointName"]
     1339 SETTABLEKS                       R6 R5 K36 ["counterpartHoveredJointName"]
     1341 GETUPVAL                         R7 3
     1342 GETTABLEKS                       R6 R7 K37 ["onDotHoverEnter"]
     1344 SETTABLEKS                       R6 R5 K37 ["onDotHoverEnter"]
     1346 GETUPVAL                         R7 3
     1347 GETTABLEKS                       R6 R7 K38 ["onDotHoverLeave"]
     1349 SETTABLEKS                       R6 R5 K38 ["onDotHoverLeave"]
     1351 CALL                             R3 2 1
     1352 SETTABLEKS                       R3 R2 K21 ["Waist"]
     1354 GETUPVAL                         R4 8
     1355 JUMPIFNOT                        R4 ; [+69]
     1356 GETUPVAL                         R4 4
     1357 GETTABLEKS                       R3 R4 K26 ["createElement"]
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
     1382 GETUPVAL                         R7 3
     1383 GETTABLEKS                       R6 R7 K30 ["selectedJoint"]
     1385 SETTABLEKS                       R6 R5 K30 ["selectedJoint"]
     1387 GETUPVAL                         R7 8
     1388 GETTABLE                         R6 R0 R7
     1389 SETTABLEKS                       R6 R5 K31 ["mappedJoint"]
     1391 SETTABLEKS                       R1 R5 K32 ["DEPRECATED_rigDescriptor"]
     1393 GETUPVAL                         R7 3
     1394 GETTABLEKS                       R6 R7 K33 ["armedRigLabel"]
     1396 SETTABLEKS                       R6 R5 K33 ["armedRigLabel"]
     1398 GETUPVAL                         R7 3
     1399 GETTABLEKS                       R6 R7 K34 ["onArmJoint"]
     1401 SETTABLEKS                       R6 R5 K34 ["onArmJoint"]
     1403 GETUPVAL                         R7 3
     1404 GETTABLEKS                       R6 R7 K35 ["onMapJoint"]
     1406 SETTABLEKS                       R6 R5 K35 ["onMapJoint"]
     1408 GETUPVAL                         R7 3
     1409 GETTABLEKS                       R6 R7 K36 ["counterpartHoveredJointName"]
     1411 SETTABLEKS                       R6 R5 K36 ["counterpartHoveredJointName"]
     1413 GETUPVAL                         R7 3
     1414 GETTABLEKS                       R6 R7 K37 ["onDotHoverEnter"]
     1416 SETTABLEKS                       R6 R5 K37 ["onDotHoverEnter"]
     1418 GETUPVAL                         R7 3
     1419 GETTABLEKS                       R6 R7 K38 ["onDotHoverLeave"]
     1421 SETTABLEKS                       R6 R5 K38 ["onDotHoverLeave"]
     1423 CALL                             R3 2 1
     1424 JUMPIF                           R3 ; [+1]
     1425 LOADNIL                          R3
     1426 SETTABLEKS                       R3 R2 K22 ["Spine"]
     1428 GETUPVAL                         R4 4
     1429 GETTABLEKS                       R3 R4 K26 ["createElement"]
     1431 GETUPVAL                         R4 10
     1432 DUPTABLE                         R5 K67 [{"position", "side", "isMapped", "DEPRECATED_rigDescriptor", "onNavigateToHand"}]
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
     1454 GETUPVAL                         R7 3
     1455 GETTABLEKS                       R6 R7 K66 ["onNavigateToHand"]
     1457 SETTABLEKS                       R6 R5 K66 ["onNavigateToHand"]
     1459 CALL                             R3 2 1
     1460 SETTABLEKS                       R3 R2 K23 ["RightHandDot"]
     1462 GETUPVAL                         R4 4
     1463 GETTABLEKS                       R3 R4 K26 ["createElement"]
     1465 GETUPVAL                         R4 10
     1466 DUPTABLE                         R5 K67 [{"position", "side", "isMapped", "DEPRECATED_rigDescriptor", "onNavigateToHand"}]
     1467 GETIMPORT                        R6 K45 [Vector2.new]
     1469 LOADN                            R7 171
     1470 LOADN                            R8 197
     1471 CALL                             R6 2 1
     1472 SETTABLEKS                       R6 R5 K28 ["position"]
     1474 LOADK                            R6 K69 ["left"]
     1475 SETTABLEKS                       R6 R5 K64 ["side"]
     1477 GETIMPORT                        R8 K57 [Enum.RigLabel.LeftWrist]
     1479 GETTABLE                         R7 R0 R8
     1480 JUMPIFNOTEQKNIL                  R7 ; [+2]
     1482 LOADB                            R6 0 +1
     1483 LOADB                            R6 1
     1484 SETTABLEKS                       R6 R5 K65 ["isMapped"]
     1486 SETTABLEKS                       R1 R5 K32 ["DEPRECATED_rigDescriptor"]
     1488 GETUPVAL                         R7 3
     1489 GETTABLEKS                       R6 R7 K66 ["onNavigateToHand"]
     1491 SETTABLEKS                       R6 R5 K66 ["onNavigateToHand"]
     1493 CALL                             R3 2 1
     1494 SETTABLEKS                       R3 R2 K24 ["LeftHandDot"]
     1496 RETURN                           R2 1

PROTO_11:
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
       32 GETUPVAL                         R7 1
       33 CALL                             R7 0 1
       34 JUMPIFNOT                        R7 ; [+7]
       35 GETUPVAL                         R7 2
       36 GETTABLEKS                       R8 R0 K3 ["rigDescriptor"]
       38 CALL                             R7 1 1
       39 GETTABLEKS                       R6 R7 K6 ["labelMap"]
       41 JUMP                             ; [+1]
       42 LOADNIL                          R6
       43 GETUPVAL                         R8 0
       44 GETTABLEKS                       R7 R8 K7 ["useMemo"]
       46 NEWCLOSURE                       R8 P1
       47 CAPTURE                          UPVAL U1
       48 CAPTURE                          VAL R6
       49 NEWTABLE                         R9 0 1
       51 MOVE                             R10 R6
       52 SETLIST                          R9 R10 1 [1]
       54 CALL                             R7 2 1
       55 GETUPVAL                         R9 0
       56 GETTABLEKS                       R8 R9 K7 ["useMemo"]
       58 NEWCLOSURE                       R9 P2
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R7
       61 CAPTURE                          UPVAL U1
       62 CAPTURE                          VAL R0
       63 CAPTURE                          UPVAL U0
       64 CAPTURE                          UPVAL U3
       65 CAPTURE                          UPVAL U4
       66 CAPTURE                          UPVAL U5
       67 CAPTURE                          UPVAL U6
       68 CAPTURE                          UPVAL U7
       69 CAPTURE                          UPVAL U8
       70 NEWTABLE                         R10 0 11
       72 MOVE                             R11 R5
       73 MOVE                             R12 R7
       74 GETTABLEKS                       R13 R0 K3 ["rigDescriptor"]
       76 GETTABLEKS                       R14 R0 K8 ["armedRigLabel"]
       78 GETTABLEKS                       R15 R0 K9 ["selectedJoint"]
       80 GETTABLEKS                       R16 R0 K10 ["counterpartHoveredJointName"]
       82 GETTABLEKS                       R17 R0 K11 ["onArmJoint"]
       84 GETTABLEKS                       R18 R0 K12 ["onMapJoint"]
       86 GETTABLEKS                       R19 R0 K13 ["onDotHoverEnter"]
       88 GETTABLEKS                       R20 R0 K14 ["onDotHoverLeave"]
       90 GETTABLEKS                       R21 R0 K15 ["onNavigateToHand"]
       92 SETLIST                          R10 R11 11 [1]
       94 CALL                             R8 2 1
       95 GETUPVAL                         R9 9
       96 CALL                             R9 0 1
       97 JUMPIF                           R9 ; [+115]
       98 JUMPIF                           R5 ; [+2]
       99 LOADNIL                          R9
      100 RETURN                           R9 1
      101 GETUPVAL                         R10 10
      102 GETTABLEKS                       R9 R10 K16 ["createPortal"]
      104 GETUPVAL                         R11 0
      105 GETTABLEKS                       R10 R11 K17 ["createElement"]
      107 LOADK                            R11 K18 ["ScreenGui"]
      108 DUPTABLE                         R12 K23 [{"Archivable", "DisplayOrder", "ZIndexBehavior", "ref"}]
      109 LOADB                            R13 0
      110 SETTABLEKS                       R13 R12 K19 ["Archivable"]
      112 GETUPVAL                         R14 11
      113 GETTABLEKS                       R13 R14 K24 ["DISPLAY_ORDER_MANNEQUIN"]
      115 SETTABLEKS                       R13 R12 K20 ["DisplayOrder"]
      117 GETIMPORT                        R13 K27 [Enum.ZIndexBehavior.Sibling]
      119 SETTABLEKS                       R13 R12 K21 ["ZIndexBehavior"]
      121 SETTABLEKS                       R2 R12 K22 ["ref"]
      123 MOVE                             R13 R1
      124 JUMPIFNOT                        R13 ; [+83]
      125 GETUPVAL                         R14 0
      126 GETTABLEKS                       R13 R14 K17 ["createElement"]
      128 GETUPVAL                         R16 12
      129 GETTABLEKS                       R15 R16 K28 ["Components"]
      131 GETTABLEKS                       R14 R15 K29 ["FoundationProviderAdapter"]
      133 DUPTABLE                         R15 K31 [{"overlayGui"}]
      134 SETTABLEKS                       R1 R15 K30 ["overlayGui"]
      136 DUPTABLE                         R16 K33 [{"Image"}]
      137 GETUPVAL                         R18 0
      138 GETTABLEKS                       R17 R18 K17 ["createElement"]
      140 GETUPVAL                         R19 13
      141 GETTABLEKS                       R18 R19 K32 ["Image"]
      143 DUPTABLE                         R19 K40 [{"Image", "aspectRatio", "tag", "Position", "sizeConstraint", "onActivated", "stateLayer"}]
      144 GETUPVAL                         R21 11
      145 GETTABLEKS                       R20 R21 K41 ["MANNEQUIN"]
      147 SETTABLEKS                       R20 R19 K32 ["Image"]
      149 LOADK                            R20 K42 [0.493472584856397]
      150 SETTABLEKS                       R20 R19 K34 ["aspectRatio"]
      152 LOADK                            R20 K43 ["anchor-top-right bg-over-media-300 size-full"]
      153 SETTABLEKS                       R20 R19 K35 ["tag"]
      155 GETIMPORT                        R20 K46 [UDim2.new]
      157 LOADN                            R21 1
      158 LOADN                            R22 240
      159 LOADN                            R23 0
      160 LOADN                            R24 18
      161 CALL                             R20 4 1
      162 SETTABLEKS                       R20 R19 K36 ["Position"]
      164 DUPTABLE                         R20 K48 [{"MaxSize"}]
      165 GETIMPORT                        R21 K50 [Vector2.new]
      167 LOADN                            R22 14
      168 LOADN                            R23 144
      169 CALL                             R21 2 1
      170 SETTABLEKS                       R21 R20 K47 ["MaxSize"]
      172 SETTABLEKS                       R20 R19 K37 ["sizeConstraint"]
      174 SETTABLEKS                       R3 R19 K38 ["onActivated"]
      176 DUPTABLE                         R20 K52 [{"affordance"}]
      177 GETUPVAL                         R24 13
      178 GETTABLEKS                       R23 R24 K53 ["Enums"]
      180 GETTABLEKS                       R22 R23 K54 ["StateLayerAffordance"]
      182 GETTABLEKS                       R21 R22 K55 ["None"]
      184 SETTABLEKS                       R21 R20 K51 ["affordance"]
      186 SETTABLEKS                       R20 R19 K39 ["stateLayer"]
      188 NEWTABLE                         R20 1 0
      190 GETUPVAL                         R22 0
      191 GETTABLEKS                       R21 R22 K17 ["createElement"]
      193 GETUPVAL                         R23 13
      194 GETTABLEKS                       R22 R23 K56 ["View"]
      196 DUPTABLE                         R23 K57 [{"tag"}]
      197 LOADK                            R24 K58 ["size-full"]
      198 SETTABLEKS                       R24 R23 K35 ["tag"]
      200 MOVE                             R24 R8
      201 CALL                             R21 3 1
      202 SETTABLEKS                       R21 R20 K59 ["Dots"]
      204 CALL                             R17 3 1
      205 SETTABLEKS                       R17 R16 K32 ["Image"]
      207 CALL                             R13 3 1
      208 CALL                             R10 3 1
      209 GETUPVAL                         R11 14
      210 LOADK                            R12 K60 ["MannequinPanel"]
      211 CALL                             R9 3 -1
      212 RETURN                           R9 -1
      213 LOADNIL                          R9
      214 JUMPIF                           R4 ; [+239]
      215 LOADNIL                          R10
      216 LOADNIL                          R11
      217 LOADNIL                          R12
      218 GETTABLEKS                       R13 R0 K61 ["detectedHrd"]
      220 JUMPIFNOT                        R13 ; [+19]
      221 GETTABLEKS                       R13 R0 K62 ["localization"]
      223 LOADK                            R15 K63 ["Mannequin"]
      224 LOADK                            R16 K64 ["HrdDetected"]
      225 NAMECALL                         R13 R13 K65 ["getText"]
      227 CALL                             R13 3 1
      228 MOVE                             R10 R13
      229 GETTABLEKS                       R13 R0 K62 ["localization"]
      231 LOADK                            R15 K63 ["Mannequin"]
      232 LOADK                            R16 K66 ["SelectHrd"]
      233 NAMECALL                         R13 R13 K65 ["getText"]
      235 CALL                             R13 3 1
      236 MOVE                             R11 R13
      237 GETTABLEKS                       R12 R0 K67 ["onSelectHrd"]
      239 JUMP                             ; [+38]
      240 GETUPVAL                         R14 1
      241 CALL                             R14 0 1
      242 JUMPIFNOT                        R14 ; [+3]
      243 GETTABLEKS                       R13 R0 K68 ["hasModel"]
      245 JUMP                             ; [+2]
      246 GETTABLEKS                       R13 R0 K69 ["DEPRECATED_hasHumanoid"]
      248 JUMPIFNOT                        R13 ; [+19]
      249 GETTABLEKS                       R13 R0 K62 ["localization"]
      251 LOADK                            R15 K63 ["Mannequin"]
      252 LOADK                            R16 K70 ["NoHrd"]
      253 NAMECALL                         R13 R13 K65 ["getText"]
      255 CALL                             R13 3 1
      256 MOVE                             R10 R13
      257 GETTABLEKS                       R13 R0 K62 ["localization"]
      259 LOADK                            R15 K63 ["Mannequin"]
      260 LOADK                            R16 K71 ["CreateHrd"]
      261 NAMECALL                         R13 R13 K65 ["getText"]
      263 CALL                             R13 3 1
      264 MOVE                             R11 R13
      265 GETTABLEKS                       R12 R0 K72 ["onCreateHrd"]
      267 JUMP                             ; [+10]
      268 GETTABLEKS                       R13 R0 K62 ["localization"]
      270 LOADK                            R15 K63 ["Mannequin"]
      271 LOADK                            R16 K73 ["SelectHRDPlaceholder"]
      272 NAMECALL                         R13 R13 K65 ["getText"]
      274 CALL                             R13 3 1
      275 MOVE                             R10 R13
      276 LOADNIL                          R11
      277 LOADNIL                          R12
      278 GETUPVAL                         R14 0
      279 GETTABLEKS                       R13 R14 K17 ["createElement"]
      281 GETUPVAL                         R15 13
      282 GETTABLEKS                       R14 R15 K56 ["View"]
      284 DUPTABLE                         R15 K75 [{"tag", "Size"}]
      285 LOADK                            R16 K76 ["col align-x-center align-y-center gap-small"]
      286 SETTABLEKS                       R16 R15 K35 ["tag"]
      288 GETIMPORT                        R16 K46 [UDim2.new]
      290 LOADN                            R17 1
      291 LOADN                            R18 0
      292 LOADN                            R19 1
      293 LOADN                            R20 0
      294 CALL                             R16 4 1
      295 SETTABLEKS                       R16 R15 K74 ["Size"]
      297 DUPTABLE                         R16 K80 [{"Padding", "Placeholder", "Button"}]
      298 GETUPVAL                         R18 0
      299 GETTABLEKS                       R17 R18 K17 ["createElement"]
      301 LOADK                            R18 K81 ["UIPadding"]
      302 DUPTABLE                         R19 K84 [{"PaddingLeft", "PaddingRight"}]
      303 GETIMPORT                        R20 K86 [UDim.new]
      305 LOADN                            R21 0
      306 LOADN                            R22 12
      307 CALL                             R20 2 1
      308 SETTABLEKS                       R20 R19 K82 ["PaddingLeft"]
      310 GETIMPORT                        R20 K86 [UDim.new]
      312 LOADN                            R21 0
      313 LOADN                            R22 12
      314 CALL                             R20 2 1
      315 SETTABLEKS                       R20 R19 K83 ["PaddingRight"]
      317 CALL                             R17 2 1
      318 SETTABLEKS                       R17 R16 K77 ["Padding"]
      320 GETUPVAL                         R18 0
      321 GETTABLEKS                       R17 R18 K17 ["createElement"]
      323 GETUPVAL                         R19 13
      324 GETTABLEKS                       R18 R19 K87 ["Text"]
      326 DUPTABLE                         R19 K90 [{"LayoutOrder", "tag", "Size", "AutomaticSize", "Text"}]
      327 LOADN                            R20 1
      328 SETTABLEKS                       R20 R19 K88 ["LayoutOrder"]
      330 LOADK                            R20 K91 ["text-caption-small text-center"]
      331 SETTABLEKS                       R20 R19 K35 ["tag"]
      333 GETIMPORT                        R20 K46 [UDim2.new]
      335 LOADN                            R21 1
      336 LOADN                            R22 0
      337 LOADN                            R23 0
      338 LOADN                            R24 0
      339 CALL                             R20 4 1
      340 SETTABLEKS                       R20 R19 K74 ["Size"]
      342 GETIMPORT                        R20 K93 [Enum.AutomaticSize.Y]
      344 SETTABLEKS                       R20 R19 K89 ["AutomaticSize"]
      346 SETTABLEKS                       R10 R19 K87 ["Text"]
      348 CALL                             R17 2 1
      349 SETTABLEKS                       R17 R16 K78 ["Placeholder"]
      351 JUMPIFNOT                        R12 ; [+96]
      352 GETUPVAL                         R18 0
      353 GETTABLEKS                       R17 R18 K17 ["createElement"]
      355 GETUPVAL                         R19 13
      356 GETTABLEKS                       R18 R19 K56 ["View"]
      358 DUPTABLE                         R19 K94 [{"LayoutOrder", "tag", "onActivated", "stateLayer"}]
      359 LOADN                            R20 2
      360 SETTABLEKS                       R20 R19 K88 ["LayoutOrder"]
      362 LOADK                            R20 K95 ["auto-xy bg-surface-200"]
      363 SETTABLEKS                       R20 R19 K35 ["tag"]
      365 SETTABLEKS                       R12 R19 K38 ["onActivated"]
      367 DUPTABLE                         R20 K52 [{"affordance"}]
      368 GETUPVAL                         R24 13
      369 GETTABLEKS                       R23 R24 K53 ["Enums"]
      371 GETTABLEKS                       R22 R23 K54 ["StateLayerAffordance"]
      373 GETTABLEKS                       R21 R22 K96 ["Background"]
      375 SETTABLEKS                       R21 R20 K51 ["affordance"]
      377 SETTABLEKS                       R20 R19 K39 ["stateLayer"]
      379 DUPTABLE                         R20 K98 [{"Corner", "Padding", "Text"}]
      380 GETUPVAL                         R22 0
      381 GETTABLEKS                       R21 R22 K17 ["createElement"]
      383 LOADK                            R22 K99 ["UICorner"]
      384 DUPTABLE                         R23 K101 [{"CornerRadius"}]
      385 GETIMPORT                        R24 K86 [UDim.new]
      387 LOADN                            R25 0
      388 LOADN                            R26 4
      389 CALL                             R24 2 1
      390 SETTABLEKS                       R24 R23 K100 ["CornerRadius"]
      392 CALL                             R21 2 1
      393 SETTABLEKS                       R21 R20 K97 ["Corner"]
      395 GETUPVAL                         R22 0
      396 GETTABLEKS                       R21 R22 K17 ["createElement"]
      398 LOADK                            R22 K81 ["UIPadding"]
      399 DUPTABLE                         R23 K104 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      400 GETIMPORT                        R24 K86 [UDim.new]
      402 LOADN                            R25 0
      403 LOADN                            R26 12
      404 CALL                             R24 2 1
      405 SETTABLEKS                       R24 R23 K82 ["PaddingLeft"]
      407 GETIMPORT                        R24 K86 [UDim.new]
      409 LOADN                            R25 0
      410 LOADN                            R26 12
      411 CALL                             R24 2 1
      412 SETTABLEKS                       R24 R23 K83 ["PaddingRight"]
      414 GETIMPORT                        R24 K86 [UDim.new]
      416 LOADN                            R25 0
      417 LOADN                            R26 5
      418 CALL                             R24 2 1
      419 SETTABLEKS                       R24 R23 K102 ["PaddingTop"]
      421 GETIMPORT                        R24 K86 [UDim.new]
      423 LOADN                            R25 0
      424 LOADN                            R26 5
      425 CALL                             R24 2 1
      426 SETTABLEKS                       R24 R23 K103 ["PaddingBottom"]
      428 CALL                             R21 2 1
      429 SETTABLEKS                       R21 R20 K77 ["Padding"]
      431 GETUPVAL                         R22 0
      432 GETTABLEKS                       R21 R22 K17 ["createElement"]
      434 GETUPVAL                         R23 13
      435 GETTABLEKS                       R22 R23 K87 ["Text"]
      437 DUPTABLE                         R23 K105 [{"tag", "Text"}]
      438 LOADK                            R24 K106 ["text-caption-small auto-xy"]
      439 SETTABLEKS                       R24 R23 K35 ["tag"]
      441 SETTABLEKS                       R11 R23 K87 ["Text"]
      443 CALL                             R21 2 1
      444 SETTABLEKS                       R21 R20 K87 ["Text"]
      446 CALL                             R17 3 1
      447 JUMPIF                           R17 ; [+1]
      448 LOADNIL                          R17
      449 SETTABLEKS                       R17 R16 K79 ["Button"]
      451 CALL                             R13 3 1
      452 MOVE                             R9 R13
      453 JUMP                             ; [+80]
      454 JUMPIFNOT                        R5 ; [+78]
      455 GETUPVAL                         R11 0
      456 GETTABLEKS                       R10 R11 K17 ["createElement"]
      458 GETUPVAL                         R12 13
      459 GETTABLEKS                       R11 R12 K32 ["Image"]
      461 DUPTABLE                         R12 K108 [{"Image", "aspectRatio", "Position", "AnchorPoint", "Size", "onActivated", "stateLayer"}]
      462 GETUPVAL                         R14 11
      463 GETTABLEKS                       R13 R14 K41 ["MANNEQUIN"]
      465 SETTABLEKS                       R13 R12 K32 ["Image"]
      467 DUPTABLE                         R13 K111 [{"AspectRatio", "DominantAxis"}]
      468 LOADK                            R14 K42 [0.493472584856397]
      469 SETTABLEKS                       R14 R13 K109 ["AspectRatio"]
      471 GETIMPORT                        R14 K113 [Enum.DominantAxis.Height]
      473 SETTABLEKS                       R14 R13 K110 ["DominantAxis"]
      475 SETTABLEKS                       R13 R12 K34 ["aspectRatio"]
      477 GETIMPORT                        R13 K115 [UDim2.fromScale]
      479 LOADK                            R14 K116 [0.5]
      480 LOADK                            R15 K116 [0.5]
      481 CALL                             R13 2 1
      482 SETTABLEKS                       R13 R12 K36 ["Position"]
      484 GETIMPORT                        R13 K50 [Vector2.new]
      486 LOADK                            R14 K116 [0.5]
      487 LOADK                            R15 K116 [0.5]
      488 CALL                             R13 2 1
      489 SETTABLEKS                       R13 R12 K107 ["AnchorPoint"]
      491 GETIMPORT                        R13 K46 [UDim2.new]
      493 LOADN                            R14 1
      494 LOADN                            R15 0
      495 LOADN                            R16 1
      496 LOADN                            R17 0
      497 CALL                             R13 4 1
      498 SETTABLEKS                       R13 R12 K74 ["Size"]
      500 SETTABLEKS                       R3 R12 K38 ["onActivated"]
      502 DUPTABLE                         R13 K52 [{"affordance"}]
      503 GETUPVAL                         R17 13
      504 GETTABLEKS                       R16 R17 K53 ["Enums"]
      506 GETTABLEKS                       R15 R16 K54 ["StateLayerAffordance"]
      508 GETTABLEKS                       R14 R15 K55 ["None"]
      510 SETTABLEKS                       R14 R13 K51 ["affordance"]
      512 SETTABLEKS                       R13 R12 K39 ["stateLayer"]
      514 NEWTABLE                         R13 1 0
      516 GETUPVAL                         R15 0
      517 GETTABLEKS                       R14 R15 K17 ["createElement"]
      519 GETUPVAL                         R16 13
      520 GETTABLEKS                       R15 R16 K56 ["View"]
      522 DUPTABLE                         R16 K57 [{"tag"}]
      523 LOADK                            R17 K58 ["size-full"]
      524 SETTABLEKS                       R17 R16 K35 ["tag"]
      526 MOVE                             R17 R8
      527 CALL                             R14 3 1
      528 SETTABLEKS                       R14 R13 K59 ["Dots"]
      530 CALL                             R10 3 1
      531 MOVE                             R9 R10
      532 JUMP                             ; [+1]
      533 LOADNIL                          R9
      534 GETUPVAL                         R11 0
      535 GETTABLEKS                       R10 R11 K17 ["createElement"]
      537 GETUPVAL                         R11 15
      538 DUPTABLE                         R12 K121 [{"title", "bodyVisible", "onClose", "content"}]
      539 GETTABLEKS                       R13 R0 K62 ["localization"]
      541 LOADK                            R15 K63 ["Mannequin"]
      542 LOADK                            R16 K122 ["Title"]
      543 NAMECALL                         R13 R13 K65 ["getText"]
      545 CALL                             R13 3 1
      546 SETTABLEKS                       R13 R12 K117 ["title"]
      548 JUMPIFNOT                        R4 ; [+2]
      549 MOVE                             R13 R5
      550 JUMP                             ; [+1]
      551 LOADB                            R13 1
      552 SETTABLEKS                       R13 R12 K118 ["bodyVisible"]
      554 GETTABLEKS                       R13 R0 K119 ["onClose"]
      556 SETTABLEKS                       R13 R12 K119 ["onClose"]
      558 DUPTABLE                         R13 K124 [{"Inner"}]
      559 SETTABLEKS                       R9 R13 K123 ["Inner"]
      561 SETTABLEKS                       R13 R12 K120 ["content"]
      563 CALL                             R10 2 -1
      564 RETURN                           R10 -1

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
       87 GETTABLEKS                       R16 R0 K8 ["Src"]
       89 GETTABLEKS                       R15 R16 K12 ["Components"]
       91 GETTABLEKS                       R14 R15 K18 ["Hooks"]
       93 GETTABLEKS                       R13 R14 K22 ["useMappedInstances"]
       95 CALL                             R12 1 1
       96 GETIMPORT                        R13 K5 [require]
       98 GETTABLEKS                       R16 R0 K8 ["Src"]
      100 GETTABLEKS                       R15 R16 K23 ["Flags"]
      102 GETTABLEKS                       R14 R15 K24 ["getFFlagAdaptiveAnimationHandRig"]
      104 CALL                             R13 1 1
      105 GETIMPORT                        R14 K5 [require]
      107 GETTABLEKS                       R17 R0 K8 ["Src"]
      109 GETTABLEKS                       R16 R17 K23 ["Flags"]
      111 GETTABLEKS                       R15 R16 K25 ["getFFlagAdaptiveAnimationMannequinFix"]
      113 CALL                             R14 1 1
      114 GETIMPORT                        R15 K27 [game]
      116 LOADK                            R17 K28 ["CoreGui"]
      117 NAMECALL                         R15 R15 K29 ["GetService"]
      119 CALL                             R15 2 1
      120 GETTABLEKS                       R16 R11 K30 ["hasSpine"]
      122 GETTABLEKS                       R17 R11 K31 ["hasPelvis"]
      124 JUMPIFNOT                        R16 ; [+3]
      125 GETTABLEKS                       R18 R11 K32 ["spineLabel"]
      127 JUMP                             ; [+5]
      128 JUMPIFNOT                        R17 ; [+3]
      129 GETIMPORT                        R18 K36 [Enum.RigLabel.Pelvis]
      131 JUMP                             ; [+1]
      132 LOADNIL                          R18
      133 GETTABLEKS                       R19 R11 K37 ["LeftToeBase"]
      135 GETTABLEKS                       R20 R11 K38 ["RightToeBase"]
      137 DUPCLOSURE                       R21 K39 [PROTO_3]
      138 CAPTURE                          VAL R9
      139 CAPTURE                          VAL R14
      140 CAPTURE                          VAL R5
      141 CAPTURE                          VAL R1
      142 CAPTURE                          VAL R7
      143 CAPTURE                          VAL R3
      144 DUPCLOSURE                       R22 K40 [PROTO_7]
      145 CAPTURE                          VAL R9
      146 CAPTURE                          VAL R5
      147 CAPTURE                          VAL R14
      148 CAPTURE                          VAL R1
      149 CAPTURE                          VAL R7
      150 CAPTURE                          VAL R3
      151 DUPCLOSURE                       R23 K41 [PROTO_11]
      152 CAPTURE                          VAL R5
      153 CAPTURE                          VAL R14
      154 CAPTURE                          VAL R12
      155 CAPTURE                          VAL R21
      156 CAPTURE                          VAL R20
      157 CAPTURE                          VAL R19
      158 CAPTURE                          VAL R18
      159 CAPTURE                          VAL R16
      160 CAPTURE                          VAL R22
      161 CAPTURE                          VAL R13
      162 CAPTURE                          VAL R6
      163 CAPTURE                          VAL R2
      164 CAPTURE                          VAL R8
      165 CAPTURE                          VAL R3
      166 CAPTURE                          VAL R15
      167 CAPTURE                          VAL R4
      168 RETURN                           R23 1
