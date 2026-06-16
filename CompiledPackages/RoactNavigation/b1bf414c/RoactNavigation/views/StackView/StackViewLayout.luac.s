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
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["transitionProps"]
        4 GETTABLEKS                       R1 R1 K2 ["navigation"]
        6 GETTABLEKS                       R1 R1 K3 ["state"]
        8 GETTABLEKS                       R1 R1 K4 ["index"]
       10 LOADB                            R2 0
       11 SETTABLEKS                       R2 R0 K5 ["_isMounted"]
       13 SETTABLEKS                       R1 R0 K6 ["_positionLastValue"]
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R2 R0 K7 ["_renderScene"]
       19 NEWCLOSURE                       R2 P1
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R2 R0 K8 ["_subscribeToOverlayUpdates"]
       23 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R3 K1 ["transitionProps"]
        4 GETTABLEKS                       R4 R0 K0 ["props"]
        6 GETTABLEKS                       R4 R4 K2 ["lastTransitionProps"]
        8 GETTABLEKS                       R5 R0 K3 ["state"]
       10 GETTABLEKS                       R5 R5 K4 ["transitionConfig"]
       12 GETTABLEKS                       R6 R2 K5 ["cardColor3"]
       14 GETTABLEKS                       R7 R2 K6 ["overlayEnabled"]
       16 GETTABLEKS                       R8 R3 K7 ["scene"]
       18 GETTABLEKS                       R8 R8 K8 ["index"]
       20 JUMPIFNOT                        R4 ; [+4]
       21 GETTABLEKS                       R9 R4 K7 ["scene"]
       23 GETTABLEKS                       R8 R9 K8 ["index"]
       25 NEWTABLE                         R9 0 0
       27 GETTABLEKS                       R10 R5 K9 ["screenInterpolator"]
       29 JUMPIFNOT                        R10 ; [+15]
       30 MOVE                             R11 R10
       31 GETUPVAL                         R12 0
       32 GETTABLEKS                       R12 R12 K10 ["Dictionary"]
       34 GETTABLEKS                       R12 R12 K11 ["join"]
       36 MOVE                             R13 R3
       37 DUPTABLE                         R14 K13 [{"initialPositionValue", "scene"}]
       38 SETTABLEKS                       R8 R14 K12 ["initialPositionValue"]
       40 SETTABLEKS                       R1 R14 K7 ["scene"]
       42 CALL                             R12 2 -1
       43 CALL                             R11 -1 1
       44 MOVE                             R9 R11
       45 GETUPVAL                         R11 1
       46 GETTABLEKS                       R11 R11 K14 ["createElement"]
       48 GETUPVAL                         R12 2
       49 GETUPVAL                         R13 0
       50 GETTABLEKS                       R13 R13 K10 ["Dictionary"]
       52 GETTABLEKS                       R13 R13 K11 ["join"]
       54 MOVE                             R14 R3
       55 MOVE                             R15 R9
       56 DUPTABLE                         R16 K18 [{"key", "scene", "renderScene", "transparent", "cardColor3"}]
       57 LOADK                            R18 K19 ["card_"]
       58 GETTABLEKS                       R20 R1 K15 ["key"]
       60 FASTCALL1                        TOSTRING R20 ; [+2]
       61 GETIMPORT                        R19 K21 [tostring]
       63 CALL                             R19 1 1
       64 CONCAT                           R17 R18 R19
       65 SETTABLEKS                       R17 R16 K15 ["key"]
       67 SETTABLEKS                       R1 R16 K7 ["scene"]
       69 GETTABLEKS                       R17 R0 K22 ["_renderScene"]
       71 SETTABLEKS                       R17 R16 K16 ["renderScene"]
       73 SETTABLEKS                       R7 R16 K17 ["transparent"]
       75 SETTABLEKS                       R6 R16 K5 ["cardColor3"]
       77 CALL                             R13 3 -1
       78 CALL                             R11 -1 -1
       79 RETURN                           R11 -1

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
        0 LOADB                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["index"]
        3 GETUPVAL                         R3 0
        4 JUMPIFNOTLT                      R2 R3 ; [+4]
        6 GETTABLEKS                       R2 R0 K1 ["isActive"]
        8 NOT                              R1 R2
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K2 ["Dictionary"]
       12 GETTABLEKS                       R2 R2 K3 ["join"]
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R4 R0 K4 ["descriptor"]
       17 GETTABLEKS                       R4 R4 K5 ["options"]
       19 JUMPIF                           R4 ; [+2]
       20 NEWTABLE                         R4 0 0
       22 CALL                             R2 2 1
       23 GETTABLEKS                       R3 R2 K6 ["overlayEnabled"]
       25 GETTABLEKS                       R4 R2 K7 ["absorbInput"]
       27 GETTABLEKS                       R5 R2 K8 ["renderOverlay"]
       29 LOADNIL                          R6
       30 JUMPIFNOT                        R3 ; [+58]
       31 GETUPVAL                         R7 3
       32 GETTABLEKS                       R7 R7 K9 ["createElement"]
       34 LOADK                            R8 K10 ["Frame"]
       35 DUPTABLE                         R9 K16 [{"Size", "BackgroundTransparency", "ClipsDescendants", "BorderSizePixel", "ZIndex"}]
       36 GETIMPORT                        R10 K19 [UDim2.new]
       38 LOADN                            R11 1
       39 LOADN                            R12 0
       40 LOADN                            R13 1
       41 LOADN                            R14 0
       42 CALL                             R10 4 1
       43 SETTABLEKS                       R10 R9 K11 ["Size"]
       45 LOADN                            R10 1
       46 SETTABLEKS                       R10 R9 K12 ["BackgroundTransparency"]
       48 LOADB                            R10 1
       49 SETTABLEKS                       R10 R9 K13 ["ClipsDescendants"]
       51 LOADN                            R10 0
       52 SETTABLEKS                       R10 R9 K14 ["BorderSizePixel"]
       54 LOADN                            R10 1
       55 SETTABLEKS                       R10 R9 K15 ["ZIndex"]
       57 DUPTABLE                         R10 K21 [{"Overlay"}]
       58 MOVE                             R11 R5
       59 MOVE                             R12 R2
       60 GETTABLEKS                       R14 R0 K0 ["index"]
       62 GETUPVAL                         R15 4
       63 GETTABLEKS                       R15 R15 K22 ["_positionLastValue"]
       65 LOADN                            R20 1
       66 ADD                              R19 R20 R15
       67 SUB                              R18 R19 R14
       68 FASTCALL2K                       MATH_MIN R18 K23 ; [+4]
       70 LOADK                            R19 K23 [1]
       71 GETIMPORT                        R17 K26 [math.min]
       73 CALL                             R17 2 1
       74 FASTCALL2K                       MATH_MAX R17 K27 ; [+4]
       76 LOADK                            R18 K27 [0]
       77 GETIMPORT                        R16 K29 [math.max]
       79 CALL                             R16 2 1
       80 MOVE                             R13 R16
       81 GETUPVAL                         R14 4
       82 GETTABLEKS                       R14 R14 K30 ["_subscribeToOverlayUpdates"]
       84 CALL                             R11 3 1
       85 SETTABLEKS                       R11 R10 K20 ["Overlay"]
       87 CALL                             R7 3 1
       88 MOVE                             R6 R7
       89 GETUPVAL                         R7 3
       90 GETTABLEKS                       R7 R7 K9 ["createElement"]
       92 LOADK                            R8 K31 ["TextButton"]
       93 DUPTABLE                         R9 K36 [{"Size", "BackgroundTransparency", "AutoButtonColor", "BorderSizePixel", "ClipsDescendants", "Text", "ZIndex", "Visible", "Active"}]
       94 GETIMPORT                        R10 K19 [UDim2.new]
       96 LOADN                            R11 1
       97 LOADN                            R12 0
       98 LOADN                            R13 1
       99 LOADN                            R14 0
      100 CALL                             R10 4 1
      101 SETTABLEKS                       R10 R9 K11 ["Size"]
      103 LOADN                            R10 1
      104 SETTABLEKS                       R10 R9 K12 ["BackgroundTransparency"]
      106 LOADB                            R10 0
      107 SETTABLEKS                       R10 R9 K32 ["AutoButtonColor"]
      109 LOADN                            R10 0
      110 SETTABLEKS                       R10 R9 K14 ["BorderSizePixel"]
      112 LOADB                            R10 1
      113 SETTABLEKS                       R10 R9 K13 ["ClipsDescendants"]
      115 LOADK                            R10 K37 [" "]
      116 SETTABLEKS                       R10 R9 K33 ["Text"]
      118 GETTABLEKS                       R10 R0 K0 ["index"]
      120 SETTABLEKS                       R10 R9 K15 ["ZIndex"]
      122 NOT                              R10 R1
      123 SETTABLEKS                       R10 R9 K34 ["Visible"]
      125 NOT                              R11 R1
      126 AND                              R10 R11 R4
      127 SETTABLEKS                       R10 R9 K35 ["Active"]
      129 DUPTABLE                         R10 K40 [{"StationaryContent", "DynamicContent"}]
      130 SETTABLEKS                       R6 R10 K38 ["StationaryContent"]
      132 GETUPVAL                         R11 3
      133 GETTABLEKS                       R11 R11 K9 ["createElement"]
      135 LOADK                            R12 K10 ["Frame"]
      136 DUPTABLE                         R13 K16 [{"Size", "BackgroundTransparency", "ClipsDescendants", "BorderSizePixel", "ZIndex"}]
      137 GETIMPORT                        R14 K19 [UDim2.new]
      139 LOADN                            R15 1
      140 LOADN                            R16 0
      141 LOADN                            R17 1
      142 LOADN                            R18 0
      143 CALL                             R14 4 1
      144 SETTABLEKS                       R14 R13 K11 ["Size"]
      146 LOADN                            R14 1
      147 SETTABLEKS                       R14 R13 K12 ["BackgroundTransparency"]
      149 LOADB                            R14 1
      150 SETTABLEKS                       R14 R13 K13 ["ClipsDescendants"]
      152 LOADN                            R14 0
      153 SETTABLEKS                       R14 R13 K14 ["BorderSizePixel"]
      155 LOADN                            R14 2
      156 SETTABLEKS                       R14 R13 K15 ["ZIndex"]
      158 NEWTABLE                         R14 1 0
      160 LOADK                            R16 K41 ["card_"]
      161 GETTABLEKS                       R17 R0 K42 ["key"]
      163 CONCAT                           R15 R16 R17
      164 GETUPVAL                         R16 4
      165 MOVE                             R18 R0
      166 MOVE                             R19 R2
      167 NAMECALL                         R16 R16 K43 ["_renderCard"]
      169 CALL                             R16 3 1
      170 SETTABLE                         R16 R14 R15
      171 CALL                             R11 3 1
      172 SETTABLEKS                       R11 R10 K39 ["DynamicContent"]
      174 CALL                             R7 3 -1
      175 RETURN                           R7 -1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["transitionProps"]
        4 GETTABLEKS                       R2 R0 K2 ["state"]
        6 GETTABLEKS                       R2 R2 K3 ["topMostOpaqueSceneIndex"]
        8 GETTABLEKS                       R3 R1 K4 ["scenes"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K5 ["List"]
       13 GETTABLEKS                       R4 R4 K6 ["map"]
       15 MOVE                             R5 R3
       16 NEWCLOSURE                       R6 P0
       17 CAPTURE                          VAL R2
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          VAL R0
       22 CALL                             R4 2 1
       23 GETUPVAL                         R5 2
       24 GETTABLEKS                       R5 R5 K7 ["createElement"]
       26 LOADK                            R6 K8 ["Frame"]
       27 DUPTABLE                         R7 K13 [{"Size", "BackgroundTransparency", "ClipsDescendants", "BorderSizePixel"}]
       28 GETIMPORT                        R8 K16 [UDim2.new]
       30 LOADN                            R9 1
       31 LOADN                            R10 0
       32 LOADN                            R11 1
       33 LOADN                            R12 0
       34 CALL                             R8 4 1
       35 SETTABLEKS                       R8 R7 K9 ["Size"]
       37 LOADN                            R8 1
       38 SETTABLEKS                       R8 R7 K10 ["BackgroundTransparency"]
       40 LOADB                            R8 1
       41 SETTABLEKS                       R8 R7 K11 ["ClipsDescendants"]
       43 LOADN                            R8 0
       44 SETTABLEKS                       R8 R7 K12 ["BorderSizePixel"]
       46 MOVE                             R8 R4
       47 CALL                             R5 3 -1
       48 RETURN                           R5 -1

PROTO_10:
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
       29 JUMPIFNOT                        R7 ; [+29]
       30 MOVE                             R11 R6
       31 LOADN                            R9 1
       32 LOADN                            R10 255
       33 FORNPREP                         R9
       34 GETTABLE                         R12 R3 R11
       35 GETUPVAL                         R13 1
       36 GETTABLEKS                       R13 R13 K8 ["Dictionary"]
       38 GETTABLEKS                       R13 R13 K9 ["join"]
       40 GETUPVAL                         R14 2
       41 GETTABLEKS                       R15 R12 K10 ["descriptor"]
       43 GETTABLEKS                       R15 R15 K11 ["options"]
       45 JUMPIF                           R15 ; [+2]
       46 NEWTABLE                         R15 0 0
       48 CALL                             R13 2 1
       49 GETTABLEKS                       R14 R13 K12 ["overlayEnabled"]
       51 JUMPIF                           R14 ; [+5]
       52 JUMPIFNOT                        R5 ; [+2]
       53 JUMPIFEQ                         R11 R6 ; [+3]
       55 MOVE                             R8 R11
       56 JUMP                             ; [+12]
       57 FORNLOOP                         R9
       58 JUMP                             ; [+10]
       59 MOVE                             R11 R6
       60 LOADN                            R9 1
       61 LOADN                            R10 255
       62 FORNPREP                         R9
       63 JUMPIFNOT                        R5 ; [+2]
       64 JUMPIFEQ                         R11 R6 ; [+3]
       66 MOVE                             R8 R11
       67 JUMP                             ; [+1]
       68 FORNLOOP                         R9
       69 DUPTABLE                         R9 K15 [{"topMostOpaqueSceneIndex", "transitionConfig"}]
       70 SETTABLEKS                       R8 R9 K13 ["topMostOpaqueSceneIndex"]
       72 GETUPVAL                         R10 3
       73 GETTABLEKS                       R10 R10 K16 ["getTransitionConfig"]
       75 GETTABLEKS                       R11 R0 K14 ["transitionConfig"]
       77 GETTABLEKS                       R12 R0 K0 ["transitionProps"]
       79 GETTABLEKS                       R13 R0 K17 ["lastTransitionProps"]
       81 GETTABLEKS                       R14 R0 K5 ["mode"]
       83 CALL                             R10 4 1
       84 SETTABLEKS                       R10 R9 K14 ["transitionConfig"]
       86 RETURN                           R9 1

PROTO_11:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["_onPositionStep"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["_isMounted"]
        3 GETTABLEKS                       R1 R0 K1 ["_positionDisconnector"]
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETTABLEKS                       R1 R0 K1 ["_positionDisconnector"]
        8 CALL                             R1 0 0
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K1 ["_positionDisconnector"]
       12 RETURN                           R0 0

PROTO_14:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["_onPositionStep"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_15:
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

PROTO_16:
        0 GETTABLEKS                       R2 R0 K0 ["_isMounted"]
        2 JUMPIFNOT                        R2 ; [+2]
        3 SETTABLEKS                       R1 R0 K1 ["_positionLastValue"]
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K4 ["Parent"]
       11 GETTABLEKS                       R1 R1 K4 ["Parent"]
       13 GETTABLEKS                       R1 R1 K5 ["Cryo"]
       15 CALL                             R0 1 1
       16 GETIMPORT                        R1 K1 [require]
       18 GETIMPORT                        R2 K3 [script]
       20 GETTABLEKS                       R2 R2 K4 ["Parent"]
       22 GETTABLEKS                       R2 R2 K4 ["Parent"]
       24 GETTABLEKS                       R2 R2 K4 ["Parent"]
       26 GETTABLEKS                       R2 R2 K4 ["Parent"]
       28 GETTABLEKS                       R2 R2 K6 ["Roact"]
       30 CALL                             R1 1 1
       31 GETIMPORT                        R2 K1 [require]
       33 GETIMPORT                        R3 K3 [script]
       35 GETTABLEKS                       R3 R3 K4 ["Parent"]
       37 GETTABLEKS                       R3 R3 K7 ["StackPresentationStyle"]
       39 CALL                             R2 1 1
       40 GETIMPORT                        R3 K1 [require]
       42 GETIMPORT                        R4 K3 [script]
       44 GETTABLEKS                       R4 R4 K4 ["Parent"]
       46 GETTABLEKS                       R4 R4 K8 ["StackViewTransitionConfigs"]
       48 CALL                             R3 1 1
       49 GETIMPORT                        R4 K1 [require]
       51 GETIMPORT                        R5 K3 [script]
       53 GETTABLEKS                       R5 R5 K4 ["Parent"]
       55 GETTABLEKS                       R5 R5 K9 ["StackViewOverlayFrame"]
       57 CALL                             R4 1 1
       58 GETIMPORT                        R5 K1 [require]
       60 GETIMPORT                        R6 K3 [script]
       62 GETTABLEKS                       R6 R6 K4 ["Parent"]
       64 GETTABLEKS                       R6 R6 K10 ["StackViewCard"]
       66 CALL                             R5 1 1
       67 GETIMPORT                        R6 K1 [require]
       69 GETIMPORT                        R7 K3 [script]
       71 GETTABLEKS                       R7 R7 K4 ["Parent"]
       73 GETTABLEKS                       R7 R7 K4 ["Parent"]
       75 GETTABLEKS                       R7 R7 K11 ["SceneView"]
       77 CALL                             R6 1 1
       78 DUPTABLE                         R7 K17 [{"absorbInput", "overlayEnabled", "overlayColor3", "overlayTransparency", "renderOverlay"}]
       79 LOADB                            R8 1
       80 SETTABLEKS                       R8 R7 K12 ["absorbInput"]
       82 LOADB                            R8 0
       83 SETTABLEKS                       R8 R7 K13 ["overlayEnabled"]
       85 GETIMPORT                        R8 K20 [Color3.new]
       87 LOADN                            R9 0
       88 LOADN                            R10 0
       89 LOADN                            R11 0
       90 CALL                             R8 3 1
       91 SETTABLEKS                       R8 R7 K14 ["overlayColor3"]
       93 LOADK                            R8 K21 [0.7]
       94 SETTABLEKS                       R8 R7 K15 ["overlayTransparency"]
       96 DUPCLOSURE                       R8 K22 [PROTO_0]
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R4
       99 SETTABLEKS                       R8 R7 K16 ["renderOverlay"]
      101 DUPCLOSURE                       R8 K23 [PROTO_1]
      102 GETTABLEKS                       R9 R1 K24 ["Component"]
      104 LOADK                            R11 K25 ["StackViewLayout"]
      105 NAMECALL                         R9 R9 K26 ["extend"]
      107 CALL                             R9 2 1
      108 DUPCLOSURE                       R10 K27 [PROTO_5]
      109 SETTABLEKS                       R10 R9 K28 ["init"]
      111 DUPCLOSURE                       R10 K29 [PROTO_6]
      112 CAPTURE                          VAL R0
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R5
      115 SETTABLEKS                       R10 R9 K30 ["_renderCard"]
      117 DUPCLOSURE                       R10 K31 [PROTO_7]
      118 CAPTURE                          VAL R1
      119 CAPTURE                          VAL R6
      120 SETTABLEKS                       R10 R9 K32 ["_renderInnerScene"]
      122 DUPCLOSURE                       R10 K33 [PROTO_9]
      123 CAPTURE                          VAL R0
      124 CAPTURE                          VAL R7
      125 CAPTURE                          VAL R1
      126 SETTABLEKS                       R10 R9 K34 ["render"]
      128 DUPCLOSURE                       R10 K35 [PROTO_10]
      129 CAPTURE                          VAL R2
      130 CAPTURE                          VAL R0
      131 CAPTURE                          VAL R7
      132 CAPTURE                          VAL R3
      133 SETTABLEKS                       R10 R9 K36 ["getDerivedStateFromProps"]
      135 DUPCLOSURE                       R10 K37 [PROTO_12]
      136 SETTABLEKS                       R10 R9 K38 ["didMount"]
      138 DUPCLOSURE                       R10 K39 [PROTO_13]
      139 SETTABLEKS                       R10 R9 K40 ["willUnmount"]
      141 DUPCLOSURE                       R10 K41 [PROTO_15]
      142 SETTABLEKS                       R10 R9 K42 ["didUpdate"]
      144 DUPCLOSURE                       R10 K43 [PROTO_16]
      145 SETTABLEKS                       R10 R9 K44 ["_onPositionStep"]
      147 RETURN                           R9 1
