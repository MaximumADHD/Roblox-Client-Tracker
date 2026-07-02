PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["createElement"]
        3 GETUPVAL                         R4 1
        4 DUPTABLE                         R5 K4 [{"navigationOptions", "initialTransitionValue", "transitionChangedSignal"}]
        5 SETTABLEKS                       R0 R5 K1 ["navigationOptions"]
        7 SETTABLEKS                       R1 R5 K2 ["initialTransitionValue"]
        9 SETTABLEKS                       R2 R5 K3 ["transitionChangedSignal"]
       11 CALL                             R3 2 -1
       12 RETURN                           R3 -1

PROTO_1:
        0 LOADN                            R6 1
        1 ADD                              R5 R6 R1
        2 SUB                              R4 R5 R0
        3 FASTCALL2K                       MATH_MIN R4 K0 ; [+4]
        5 LOADK                            R5 K0 [1]
        6 GETIMPORT                        R3 K3 [math.min]
        8 CALL                             R3 2 1
        9 FASTCALL2K                       MATH_MAX R3 K4 ; [+4]
       11 LOADK                            R4 K4 [0]
       12 GETIMPORT                        R2 K6 [math.max]
       14 CALL                             R2 2 1
       15 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["_renderInnerScene"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 LOADN                            R8 1
        3 ADD                              R7 R8 R0
        4 SUB                              R6 R7 R3
        5 FASTCALL2K                       MATH_MIN R6 K0 ; [+4]
        7 LOADK                            R7 K0 [1]
        8 GETIMPORT                        R5 K3 [math.min]
       10 CALL                             R5 2 1
       11 FASTCALL2K                       MATH_MAX R5 K4 ; [+4]
       13 LOADK                            R6 K4 [0]
       14 GETIMPORT                        R4 K6 [math.max]
       16 CALL                             R4 2 1
       17 MOVE                             R2 R4
       18 CALL                             R1 1 0
       19 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["transitionProps"]
        5 GETTABLEKS                       R1 R1 K2 ["position"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["props"]
       10 GETTABLEKS                       R2 R2 K1 ["transitionProps"]
       12 GETTABLEKS                       R2 R2 K3 ["scene"]
       14 GETTABLEKS                       R2 R2 K4 ["index"]
       16 NEWCLOSURE                       R5 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R2
       19 NAMECALL                         R3 R1 K5 ["onStep"]
       21 CALL                             R3 2 -1
       22 RETURN                           R3 -1

PROTO_5:
        0 NEWTABLE                         R3 0 0
        2 NAMECALL                         R1 R0 K0 ["setState"]
        4 CALL                             R1 2 0
        5 GETTABLEKS                       R1 R0 K1 ["props"]
        7 GETTABLEKS                       R1 R1 K2 ["transitionProps"]
        9 GETTABLEKS                       R1 R1 K3 ["navigation"]
       11 GETTABLEKS                       R1 R1 K4 ["state"]
       13 GETTABLEKS                       R1 R1 K5 ["index"]
       15 LOADB                            R2 0
       16 SETTABLEKS                       R2 R0 K6 ["_isMounted"]
       18 SETTABLEKS                       R1 R0 K7 ["_positionLastValue"]
       20 NEWCLOSURE                       R2 P0
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R2 R0 K8 ["_renderScene"]
       24 NEWCLOSURE                       R2 P1
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R2 R0 K9 ["_subscribeToOverlayUpdates"]
       28 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R3 K1 ["transitionProps"]
        4 GETTABLEKS                       R4 R0 K0 ["props"]
        6 GETTABLEKS                       R4 R4 K2 ["lastTransitionProps"]
        8 GETTABLEKS                       R5 R0 K3 ["state"]
       10 GETTABLEKS                       R5 R5 K4 ["transitionConfig"]
       12 GETTABLEKS                       R6 R2 K5 ["cardColor3"]
       14 GETTABLEKS                       R7 R2 K6 ["overlayEnabled"]
       16 GETTABLEKS                       R8 R2 K7 ["transparent"]
       18 GETTABLEKS                       R9 R3 K8 ["scene"]
       20 GETTABLEKS                       R9 R9 K9 ["index"]
       22 JUMPIFNOT                        R4 ; [+4]
       23 GETTABLEKS                       R10 R4 K8 ["scene"]
       25 GETTABLEKS                       R9 R10 K9 ["index"]
       27 NEWTABLE                         R10 0 0
       29 GETTABLEKS                       R11 R5 K10 ["screenInterpolator"]
       31 JUMPIFNOT                        R11 ; [+16]
       32 MOVE                             R12 R11
       33 GETUPVAL                         R13 0
       34 GETTABLEKS                       R13 R13 K11 ["assign"]
       36 GETIMPORT                        R14 K14 [table.clone]
       38 MOVE                             R15 R3
       39 CALL                             R14 1 1
       40 DUPTABLE                         R15 K16 [{"initialPositionValue", "scene"}]
       41 SETTABLEKS                       R9 R15 K15 ["initialPositionValue"]
       43 SETTABLEKS                       R1 R15 K8 ["scene"]
       45 CALL                             R13 2 -1
       46 CALL                             R12 -1 1
       47 MOVE                             R10 R12
       48 GETUPVAL                         R12 1
       49 GETTABLEKS                       R12 R12 K17 ["createElement"]
       51 GETUPVAL                         R13 2
       52 GETUPVAL                         R14 0
       53 GETTABLEKS                       R14 R14 K11 ["assign"]
       55 GETIMPORT                        R15 K14 [table.clone]
       57 MOVE                             R16 R3
       58 CALL                             R15 1 1
       59 MOVE                             R16 R10
       60 DUPTABLE                         R17 K20 [{"key", "scene", "renderScene", "transparent", "cardColor3"}]
       61 LOADK                            R19 K21 ["card_"]
       62 GETTABLEKS                       R21 R1 K18 ["key"]
       64 FASTCALL1                        TOSTRING R21 ; [+2]
       65 GETIMPORT                        R20 K23 [tostring]
       67 CALL                             R20 1 1
       68 CONCAT                           R18 R19 R20
       69 SETTABLEKS                       R18 R17 K18 ["key"]
       71 SETTABLEKS                       R1 R17 K8 ["scene"]
       73 GETTABLEKS                       R18 R0 K24 ["_renderScene"]
       75 SETTABLEKS                       R18 R17 K19 ["renderScene"]
       77 OR                               R18 R7 R8
       78 SETTABLEKS                       R18 R17 K7 ["transparent"]
       80 SETTABLEKS                       R6 R17 K5 ["cardColor3"]
       82 CALL                             R14 3 -1
       83 CALL                             R12 -1 -1
       84 RETURN                           R12 -1

PROTO_7:
        0 GETTABLEKS                       R2 R1 K0 ["descriptor"]
        2 GETTABLEKS                       R2 R2 K1 ["navigation"]
        4 GETTABLEKS                       R3 R1 K0 ["descriptor"]
        6 GETTABLEKS                       R3 R3 K2 ["getComponent"]
        8 CALL                             R3 0 1
        9 GETTABLEKS                       R4 R0 K3 ["props"]
       11 GETTABLEKS                       R4 R4 K4 ["screenProps"]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K5 ["createElement"]
       16 GETUPVAL                         R6 1
       17 DUPTABLE                         R7 K7 [{"screenProps", "navigation", "component"}]
       18 SETTABLEKS                       R4 R7 K4 ["screenProps"]
       20 SETTABLEKS                       R2 R7 K1 ["navigation"]
       22 SETTABLEKS                       R3 R7 K6 ["component"]
       24 CALL                             R5 2 -1
       25 RETURN                           R5 -1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["transitionProps"]
        4 GETTABLEKS                       R2 R0 K2 ["state"]
        6 GETTABLEKS                       R2 R2 K3 ["topMostOpaqueSceneIndex"]
        8 GETTABLEKS                       R3 R1 K4 ["scenes"]
       10 NEWTABLE                         R4 0 0
       12 MOVE                             R5 R3
       13 LOADNIL                          R6
       14 LOADNIL                          R7
       15 FORGPREP                         R5
       16 LOADB                            R10 0
       17 GETTABLEKS                       R11 R9 K5 ["index"]
       19 JUMPIFNOTLT                      R11 R2 ; [+4]
       21 GETTABLEKS                       R11 R9 K6 ["isActive"]
       23 NOT                              R10 R11
       24 GETTABLEKS                       R12 R9 K7 ["descriptor"]
       26 GETTABLEKS                       R12 R12 K8 ["options"]
       28 JUMPIFNOT                        R12 ; [+13]
       29 GETUPVAL                         R11 0
       30 GETTABLEKS                       R11 R11 K9 ["assign"]
       32 GETIMPORT                        R12 K12 [table.clone]
       34 GETUPVAL                         R13 1
       35 CALL                             R12 1 1
       36 GETTABLEKS                       R13 R9 K7 ["descriptor"]
       38 GETTABLEKS                       R13 R13 K8 ["options"]
       40 CALL                             R11 2 1
       41 JUMP                             ; [+4]
       42 GETIMPORT                        R11 K12 [table.clone]
       44 GETUPVAL                         R12 1
       45 CALL                             R11 1 1
       46 GETTABLEKS                       R12 R11 K13 ["overlayEnabled"]
       48 GETTABLEKS                       R13 R11 K14 ["absorbInput"]
       50 GETTABLEKS                       R14 R11 K15 ["renderOverlay"]
       52 LOADNIL                          R15
       53 JUMPIFNOT                        R12 ; [+44]
       54 GETUPVAL                         R16 2
       55 GETTABLEKS                       R16 R16 K16 ["createElement"]
       57 LOADK                            R17 K17 ["Frame"]
       58 DUPTABLE                         R18 K26 [{["Size"], ["BackgroundTransparency"] = 1, ["ClipsDescendants"] = True, ["BorderSizePixel"] = 0, ["ZIndex"] = 1}]
       59 GETIMPORT                        R19 K29 [UDim2.new]
       61 LOADN                            R20 1
       62 LOADN                            R21 0
       63 LOADN                            R22 1
       64 LOADN                            R23 0
       65 CALL                             R19 4 1
       66 SETTABLEKS                       R19 R18 K18 ["Size"]
       68 DUPTABLE                         R19 K31 [{"Overlay"}]
       69 MOVE                             R20 R14
       70 MOVE                             R21 R11
       71 GETTABLEKS                       R23 R9 K5 ["index"]
       73 GETTABLEKS                       R24 R0 K32 ["_positionLastValue"]
       75 LOADN                            R29 1
       76 ADD                              R28 R29 R24
       77 SUB                              R27 R28 R23
       78 FASTCALL2K                       MATH_MIN R27 K20 ; [+4]
       80 LOADK                            R28 K20 [1]
       81 GETIMPORT                        R26 K35 [math.min]
       83 CALL                             R26 2 1
       84 FASTCALL2K                       MATH_MAX R26 K24 ; [+4]
       86 LOADK                            R27 K24 [0]
       87 GETIMPORT                        R25 K37 [math.max]
       89 CALL                             R25 2 1
       90 MOVE                             R22 R25
       91 GETTABLEKS                       R23 R0 K38 ["_subscribeToOverlayUpdates"]
       93 CALL                             R20 3 1
       94 SETTABLEKS                       R20 R19 K30 ["Overlay"]
       96 CALL                             R16 3 1
       97 MOVE                             R15 R16
       98 LOADNIL                          R16
       99 JUMPIF                           R10 ; [+24]
      100 JUMPIFNOT                        R13 ; [+23]
      101 GETUPVAL                         R17 2
      102 GETTABLEKS                       R17 R17 K16 ["createElement"]
      104 LOADK                            R18 K39 ["TextButton"]
      105 DUPTABLE                         R19 K45 [{["Active"] = True, ["AutoButtonColor"] = False, ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Size"], ["Text"] = " ", ["ZIndex"]}]
      106 GETIMPORT                        R20 K29 [UDim2.new]
      108 LOADN                            R21 1
      109 LOADN                            R22 0
      110 LOADN                            R23 1
      111 LOADN                            R24 0
      112 CALL                             R20 4 1
      113 SETTABLEKS                       R20 R19 K18 ["Size"]
      115 LOADN                            R22 2
      116 GETTABLEKS                       R23 R9 K5 ["index"]
      118 MUL                              R21 R22 R23
      119 SUBK                             R20 R21 K20 [1]
      120 SETTABLEKS                       R20 R19 K25 ["ZIndex"]
      122 CALL                             R17 2 1
      123 MOVE                             R16 R17
      124 GETUPVAL                         R17 2
      125 GETTABLEKS                       R17 R17 K46 ["createFragment"]
      127 NEWTABLE                         R18 2 0
      129 SETTABLEKS                       R16 R18 K47 ["AbsorbInput"]
      131 GETTABLEKS                       R20 R9 K5 ["index"]
      133 FASTCALL1                        TOSTRING R20 ; [+2]
      134 GETIMPORT                        R19 K49 [tostring]
      136 CALL                             R19 1 1
      137 GETUPVAL                         R20 2
      138 GETTABLEKS                       R20 R20 K16 ["createElement"]
      140 LOADK                            R21 K17 ["Frame"]
      141 DUPTABLE                         R22 K51 [{["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ClipsDescendants"] = False, ["ZIndex"], ["Visible"]}]
      142 GETIMPORT                        R23 K29 [UDim2.new]
      144 LOADN                            R24 1
      145 LOADN                            R25 0
      146 LOADN                            R26 1
      147 LOADN                            R27 0
      148 CALL                             R23 4 1
      149 SETTABLEKS                       R23 R22 K18 ["Size"]
      151 LOADN                            R24 2
      152 GETTABLEKS                       R25 R9 K5 ["index"]
      154 MUL                              R23 R24 R25
      155 SETTABLEKS                       R23 R22 K25 ["ZIndex"]
      157 NOT                              R23 R10
      158 SETTABLEKS                       R23 R22 K50 ["Visible"]
      160 DUPTABLE                         R23 K54 [{"StationaryContent", "DynamicContent"}]
      161 SETTABLEKS                       R15 R23 K52 ["StationaryContent"]
      163 GETUPVAL                         R24 2
      164 GETTABLEKS                       R24 R24 K16 ["createElement"]
      166 LOADK                            R25 K17 ["Frame"]
      167 DUPTABLE                         R26 K56 [{["Size"], ["BackgroundTransparency"] = 1, ["ClipsDescendants"] = False, ["BorderSizePixel"] = 0, ["ZIndex"] = 2}]
      168 GETIMPORT                        R27 K29 [UDim2.new]
      170 LOADN                            R28 1
      171 LOADN                            R29 0
      172 LOADN                            R30 1
      173 LOADN                            R31 0
      174 CALL                             R27 4 1
      175 SETTABLEKS                       R27 R26 K18 ["Size"]
      177 NEWTABLE                         R27 1 0
      179 LOADK                            R29 K57 ["card_"]
      180 GETTABLEKS                       R30 R9 K58 ["key"]
      182 CONCAT                           R28 R29 R30
      183 MOVE                             R31 R9
      184 MOVE                             R32 R11
      185 NAMECALL                         R29 R0 K59 ["_renderCard"]
      187 CALL                             R29 3 1
      188 SETTABLE                         R29 R27 R28
      189 CALL                             R24 3 1
      190 SETTABLEKS                       R24 R23 K53 ["DynamicContent"]
      192 CALL                             R20 3 1
      193 SETTABLE                         R20 R18 R19
      194 CALL                             R17 1 1
      195 GETTABLEKS                       R19 R9 K58 ["key"]
      197 FASTCALL1                        TOSTRING R19 ; [+2]
      198 GETIMPORT                        R18 K49 [tostring]
      200 CALL                             R18 1 1
      201 SETTABLE                         R17 R4 R18
      202 FORGLOOP                         R5 2 ; [-187]
      204 GETUPVAL                         R5 2
      205 GETTABLEKS                       R5 R5 K16 ["createElement"]
      207 LOADK                            R6 K17 ["Frame"]
      208 DUPTABLE                         R7 K60 [{["Size"], ["BackgroundTransparency"] = 1, ["ClipsDescendants"] = False, ["BorderSizePixel"] = 0}]
      209 GETIMPORT                        R8 K29 [UDim2.new]
      211 LOADN                            R9 1
      212 LOADN                            R10 0
      213 LOADN                            R11 1
      214 LOADN                            R12 0
      215 CALL                             R8 4 1
      216 SETTABLEKS                       R8 R7 K18 ["Size"]
      218 MOVE                             R8 R4
      219 CALL                             R5 3 -1
      220 RETURN                           R5 -1

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["transitionProps"]
        2 GETTABLEKS                       R3 R2 K1 ["scenes"]
        4 GETTABLEKS                       R4 R2 K2 ["navigation"]
        6 GETTABLEKS                       R4 R4 K3 ["state"]
        8 GETTABLEKS                       R5 R4 K4 ["isTransitioning"]
       10 LENGTH                           R6 R3
       11 LOADB                            R7 1
       12 GETTABLEKS                       R8 R0 K5 ["mode"]
       14 GETUPVAL                         R9 0
       15 GETTABLEKS                       R9 R9 K6 ["Modal"]
       17 JUMPIFEQ                         R8 R9 ; [+10]
       19 GETTABLEKS                       R8 R0 K5 ["mode"]
       21 GETUPVAL                         R9 0
       22 GETTABLEKS                       R9 R9 K7 ["Overlay"]
       24 JUMPIFEQ                         R8 R9 ; [+2]
       26 LOADB                            R7 0 +1
       27 LOADB                            R7 1
       28 LOADN                            R8 0
       29 JUMPIFNOT                        R7 ; [+37]
       30 MOVE                             R11 R6
       31 LOADN                            R9 1
       32 LOADN                            R10 -1
       33 FORNPREP                         R9
       34 GETTABLE                         R12 R3 R11
       35 GETTABLEKS                       R14 R12 K8 ["descriptor"]
       37 GETTABLEKS                       R14 R14 K9 ["options"]
       39 JUMPIFNOT                        R14 ; [+13]
       40 GETUPVAL                         R13 1
       41 GETTABLEKS                       R13 R13 K10 ["assign"]
       43 GETIMPORT                        R14 K13 [table.clone]
       45 GETUPVAL                         R15 2
       46 CALL                             R14 1 1
       47 GETTABLEKS                       R15 R12 K8 ["descriptor"]
       49 GETTABLEKS                       R15 R15 K9 ["options"]
       51 CALL                             R13 2 1
       52 JUMP                             ; [+4]
       53 GETIMPORT                        R13 K13 [table.clone]
       55 GETUPVAL                         R14 2
       56 CALL                             R13 1 1
       57 GETTABLEKS                       R14 R13 K14 ["overlayEnabled"]
       59 JUMPIF                           R14 ; [+5]
       60 JUMPIFNOT                        R5 ; [+2]
       61 JUMPIFEQ                         R11 R6 ; [+3]
       63 MOVE                             R8 R11
       64 JUMP                             ; [+12]
       65 FORNLOOP                         R9
       66 JUMP                             ; [+10]
       67 MOVE                             R11 R6
       68 LOADN                            R9 1
       69 LOADN                            R10 -1
       70 FORNPREP                         R9
       71 JUMPIFNOT                        R5 ; [+2]
       72 JUMPIFEQ                         R11 R6 ; [+3]
       74 MOVE                             R8 R11
       75 JUMP                             ; [+1]
       76 FORNLOOP                         R9
       77 DUPTABLE                         R9 K17 [{"topMostOpaqueSceneIndex", "transitionConfig"}]
       78 SETTABLEKS                       R8 R9 K15 ["topMostOpaqueSceneIndex"]
       80 GETUPVAL                         R10 3
       81 GETTABLEKS                       R10 R10 K18 ["getTransitionConfig"]
       83 GETTABLEKS                       R11 R0 K16 ["transitionConfig"]
       85 GETTABLEKS                       R12 R0 K0 ["transitionProps"]
       87 GETTABLEKS                       R13 R0 K19 ["lastTransitionProps"]
       89 GETTABLEKS                       R14 R0 K5 ["mode"]
       91 CALL                             R10 4 1
       92 SETTABLEKS                       R10 R9 K16 ["transitionConfig"]
       94 RETURN                           R9 1

PROTO_10:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["_onPositionStep"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_11:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["_isMounted"]
        3 GETTABLEKS                       R1 R0 K1 ["props"]
        5 GETTABLEKS                       R1 R1 K2 ["transitionProps"]
        7 GETTABLEKS                       R1 R1 K3 ["position"]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R0
       11 NAMECALL                         R1 R1 K4 ["onStep"]
       13 CALL                             R1 2 1
       14 SETTABLEKS                       R1 R0 K5 ["_positionDisconnector"]
       16 RETURN                           R0 0

PROTO_12:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["_isMounted"]
        3 GETTABLEKS                       R1 R0 K1 ["_positionDisconnector"]
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETTABLEKS                       R1 R0 K1 ["_positionDisconnector"]
        8 CALL                             R1 0 0
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K1 ["_positionDisconnector"]
       12 RETURN                           R0 0

PROTO_13:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["_onPositionStep"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["transitionProps"]
        4 GETTABLEKS                       R2 R2 K2 ["position"]
        6 GETTABLEKS                       R3 R1 K1 ["transitionProps"]
        8 GETTABLEKS                       R3 R3 K2 ["position"]
       10 JUMPIFEQ                         R2 R3 ; [+11]
       12 GETTABLEKS                       R3 R0 K3 ["_positionDisconnector"]
       14 CALL                             R3 0 0
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          VAL R0
       17 NAMECALL                         R3 R2 K4 ["onStep"]
       19 CALL                             R3 2 1
       20 SETTABLEKS                       R3 R0 K3 ["_positionDisconnector"]
       22 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R2 R0 K0 ["_isMounted"]
        2 JUMPIFNOT                        R2 ; [+2]
        3 SETTABLEKS                       R1 R0 K1 ["_positionLastValue"]
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETTABLEKS                       R2 R1 K2 ["Parent"]
        9 GETTABLEKS                       R3 R2 K2 ["Parent"]
       11 GETIMPORT                        R4 K4 [require]
       13 GETTABLEKS                       R5 R3 K5 ["LuauPolyfill"]
       15 CALL                             R4 1 1
       16 GETTABLEKS                       R5 R4 K6 ["Object"]
       18 GETIMPORT                        R6 K4 [require]
       20 GETTABLEKS                       R7 R3 K7 ["Roact"]
       22 CALL                             R6 1 1
       23 GETIMPORT                        R7 K4 [require]
       25 GETTABLEKS                       R8 R0 K8 ["StackPresentationStyle"]
       27 CALL                             R7 1 1
       28 GETIMPORT                        R8 K4 [require]
       30 GETTABLEKS                       R9 R0 K9 ["StackViewTransitionConfigs"]
       32 CALL                             R8 1 1
       33 GETIMPORT                        R9 K4 [require]
       35 GETTABLEKS                       R10 R0 K10 ["StackViewOverlayFrame"]
       37 CALL                             R9 1 1
       38 GETIMPORT                        R10 K4 [require]
       40 GETTABLEKS                       R11 R0 K11 ["StackViewCard"]
       42 CALL                             R10 1 1
       43 GETIMPORT                        R11 K4 [require]
       45 GETTABLEKS                       R12 R1 K12 ["SceneView"]
       47 CALL                             R11 1 1
       48 DUPTABLE                         R12 K22 [{["absorbInput"] = True, ["overlayEnabled"] = False, ["overlayColor3"], ["overlayTransparency"] = 0.7, ["renderOverlay"], ["transparent"] = False}]
       49 GETIMPORT                        R13 K25 [Color3.new]
       51 LOADN                            R14 0
       52 LOADN                            R15 0
       53 LOADN                            R16 0
       54 CALL                             R13 3 1
       55 SETTABLEKS                       R13 R12 K17 ["overlayColor3"]
       57 DUPCLOSURE                       R13 K26 [PROTO_0]
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R9
       60 SETTABLEKS                       R13 R12 K20 ["renderOverlay"]
       62 DUPCLOSURE                       R13 K27 [PROTO_1]
       63 GETTABLEKS                       R14 R6 K28 ["Component"]
       65 LOADK                            R16 K29 ["StackViewLayout"]
       66 NAMECALL                         R14 R14 K30 ["extend"]
       68 CALL                             R14 2 1
       69 DUPCLOSURE                       R15 K31 [PROTO_5]
       70 SETTABLEKS                       R15 R14 K32 ["init"]
       72 DUPCLOSURE                       R15 K33 [PROTO_6]
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R10
       76 SETTABLEKS                       R15 R14 K34 ["_renderCard"]
       78 DUPCLOSURE                       R15 K35 [PROTO_7]
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R11
       81 SETTABLEKS                       R15 R14 K36 ["_renderInnerScene"]
       83 DUPCLOSURE                       R15 K37 [PROTO_8]
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R12
       86 CAPTURE                          VAL R6
       87 SETTABLEKS                       R15 R14 K38 ["render"]
       89 DUPCLOSURE                       R15 K39 [PROTO_9]
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R12
       93 CAPTURE                          VAL R8
       94 SETTABLEKS                       R15 R14 K40 ["getDerivedStateFromProps"]
       96 DUPCLOSURE                       R15 K41 [PROTO_11]
       97 SETTABLEKS                       R15 R14 K42 ["didMount"]
       99 DUPCLOSURE                       R15 K43 [PROTO_12]
      100 SETTABLEKS                       R15 R14 K44 ["willUnmount"]
      102 DUPCLOSURE                       R15 K45 [PROTO_14]
      103 SETTABLEKS                       R15 R14 K46 ["didUpdate"]
      105 DUPCLOSURE                       R15 K47 [PROTO_15]
      106 SETTABLEKS                       R15 R14 K48 ["_onPositionStep"]
      108 RETURN                           R14 1
