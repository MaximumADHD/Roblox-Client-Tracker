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
       30 JUMPIFNOT                        R3 ; [+46]
       31 GETUPVAL                         R7 3
       32 GETTABLEKS                       R7 R7 K9 ["createElement"]
       34 LOADK                            R8 K10 ["Frame"]
       35 DUPTABLE                         R9 K19 [{["Size"], ["BackgroundTransparency"] = 1, ["ClipsDescendants"] = True, ["BorderSizePixel"] = 0, ["ZIndex"] = 1}]
       36 GETIMPORT                        R10 K22 [UDim2.new]
       38 LOADN                            R11 1
       39 LOADN                            R12 0
       40 LOADN                            R13 1
       41 LOADN                            R14 0
       42 CALL                             R10 4 1
       43 SETTABLEKS                       R10 R9 K11 ["Size"]
       45 DUPTABLE                         R10 K24 [{"Overlay"}]
       46 MOVE                             R11 R5
       47 MOVE                             R12 R2
       48 GETTABLEKS                       R14 R0 K0 ["index"]
       50 GETUPVAL                         R15 4
       51 GETTABLEKS                       R15 R15 K25 ["_positionLastValue"]
       53 LOADN                            R20 1
       54 ADD                              R19 R20 R15
       55 SUB                              R18 R19 R14
       56 FASTCALL2K                       MATH_MIN R18 K13 ; [+4]
       58 LOADK                            R19 K13 [1]
       59 GETIMPORT                        R17 K28 [math.min]
       61 CALL                             R17 2 1
       62 FASTCALL2K                       MATH_MAX R17 K17 ; [+4]
       64 LOADK                            R18 K17 [0]
       65 GETIMPORT                        R16 K30 [math.max]
       67 CALL                             R16 2 1
       68 MOVE                             R13 R16
       69 GETUPVAL                         R14 4
       70 GETTABLEKS                       R14 R14 K31 ["_subscribeToOverlayUpdates"]
       72 CALL                             R11 3 1
       73 SETTABLEKS                       R11 R10 K23 ["Overlay"]
       75 CALL                             R7 3 1
       76 MOVE                             R6 R7
       77 GETUPVAL                         R7 3
       78 GETTABLEKS                       R7 R7 K9 ["createElement"]
       80 LOADK                            R8 K32 ["TextButton"]
       81 DUPTABLE                         R9 K39 [{["Size"], ["BackgroundTransparency"] = 1, ["AutoButtonColor"] = False, ["BorderSizePixel"] = 0, ["ClipsDescendants"] = True, ["Text"] = " ", ["ZIndex"], ["Visible"], ["Active"]}]
       82 GETIMPORT                        R10 K22 [UDim2.new]
       84 LOADN                            R11 1
       85 LOADN                            R12 0
       86 LOADN                            R13 1
       87 LOADN                            R14 0
       88 CALL                             R10 4 1
       89 SETTABLEKS                       R10 R9 K11 ["Size"]
       91 GETTABLEKS                       R10 R0 K0 ["index"]
       93 SETTABLEKS                       R10 R9 K18 ["ZIndex"]
       95 NOT                              R10 R1
       96 SETTABLEKS                       R10 R9 K37 ["Visible"]
       98 NOT                              R11 R1
       99 AND                              R10 R11 R4
      100 SETTABLEKS                       R10 R9 K38 ["Active"]
      102 DUPTABLE                         R10 K42 [{"StationaryContent", "DynamicContent"}]
      103 SETTABLEKS                       R6 R10 K40 ["StationaryContent"]
      105 GETUPVAL                         R11 3
      106 GETTABLEKS                       R11 R11 K9 ["createElement"]
      108 LOADK                            R12 K10 ["Frame"]
      109 DUPTABLE                         R13 K44 [{["Size"], ["BackgroundTransparency"] = 1, ["ClipsDescendants"] = True, ["BorderSizePixel"] = 0, ["ZIndex"] = 2}]
      110 GETIMPORT                        R14 K22 [UDim2.new]
      112 LOADN                            R15 1
      113 LOADN                            R16 0
      114 LOADN                            R17 1
      115 LOADN                            R18 0
      116 CALL                             R14 4 1
      117 SETTABLEKS                       R14 R13 K11 ["Size"]
      119 NEWTABLE                         R14 1 0
      121 LOADK                            R16 K45 ["card_"]
      122 GETTABLEKS                       R17 R0 K46 ["key"]
      124 CONCAT                           R15 R16 R17
      125 GETUPVAL                         R16 4
      126 MOVE                             R18 R0
      127 MOVE                             R19 R2
      128 NAMECALL                         R16 R16 K47 ["_renderCard"]
      130 CALL                             R16 3 1
      131 SETTABLE                         R16 R14 R15
      132 CALL                             R11 3 1
      133 SETTABLEKS                       R11 R10 K41 ["DynamicContent"]
      135 CALL                             R7 3 -1
      136 RETURN                           R7 -1

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
       27 DUPTABLE                         R7 K16 [{["Size"], ["BackgroundTransparency"] = 1, ["ClipsDescendants"] = True, ["BorderSizePixel"] = 0}]
       28 GETIMPORT                        R8 K19 [UDim2.new]
       30 LOADN                            R9 1
       31 LOADN                            R10 0
       32 LOADN                            R11 1
       33 LOADN                            R12 0
       34 CALL                             R8 4 1
       35 SETTABLEKS                       R8 R7 K9 ["Size"]
       37 MOVE                             R8 R4
       38 CALL                             R5 3 -1
       39 RETURN                           R5 -1

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
       32 LOADN                            R10 -1
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
       61 LOADN                            R10 -1
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
       78 DUPTABLE                         R7 K20 [{["absorbInput"] = True, ["overlayEnabled"] = False, ["overlayColor3"], ["overlayTransparency"] = 0.7, ["renderOverlay"]}]
       79 GETIMPORT                        R8 K23 [Color3.new]
       81 LOADN                            R9 0
       82 LOADN                            R10 0
       83 LOADN                            R11 0
       84 CALL                             R8 3 1
       85 SETTABLEKS                       R8 R7 K16 ["overlayColor3"]
       87 DUPCLOSURE                       R8 K24 [PROTO_0]
       88 CAPTURE                          VAL R1
       89 CAPTURE                          VAL R4
       90 SETTABLEKS                       R8 R7 K19 ["renderOverlay"]
       92 DUPCLOSURE                       R8 K25 [PROTO_1]
       93 GETTABLEKS                       R9 R1 K26 ["Component"]
       95 LOADK                            R11 K27 ["StackViewLayout"]
       96 NAMECALL                         R9 R9 K28 ["extend"]
       98 CALL                             R9 2 1
       99 DUPCLOSURE                       R10 K29 [PROTO_5]
      100 SETTABLEKS                       R10 R9 K30 ["init"]
      102 DUPCLOSURE                       R10 K31 [PROTO_6]
      103 CAPTURE                          VAL R0
      104 CAPTURE                          VAL R1
      105 CAPTURE                          VAL R5
      106 SETTABLEKS                       R10 R9 K32 ["_renderCard"]
      108 DUPCLOSURE                       R10 K33 [PROTO_7]
      109 CAPTURE                          VAL R1
      110 CAPTURE                          VAL R6
      111 SETTABLEKS                       R10 R9 K34 ["_renderInnerScene"]
      113 DUPCLOSURE                       R10 K35 [PROTO_9]
      114 CAPTURE                          VAL R0
      115 CAPTURE                          VAL R7
      116 CAPTURE                          VAL R1
      117 SETTABLEKS                       R10 R9 K36 ["render"]
      119 DUPCLOSURE                       R10 K37 [PROTO_10]
      120 CAPTURE                          VAL R2
      121 CAPTURE                          VAL R0
      122 CAPTURE                          VAL R7
      123 CAPTURE                          VAL R3
      124 SETTABLEKS                       R10 R9 K38 ["getDerivedStateFromProps"]
      126 DUPCLOSURE                       R10 K39 [PROTO_12]
      127 SETTABLEKS                       R10 R9 K40 ["didMount"]
      129 DUPCLOSURE                       R10 K41 [PROTO_13]
      130 SETTABLEKS                       R10 R9 K42 ["willUnmount"]
      132 DUPCLOSURE                       R10 K43 [PROTO_15]
      133 SETTABLEKS                       R10 R9 K44 ["didUpdate"]
      135 DUPCLOSURE                       R10 K45 [PROTO_16]
      136 SETTABLEKS                       R10 R9 K46 ["_onPositionStep"]
      138 RETURN                           R9 1
