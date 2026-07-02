PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Ref"]
        6 GETTABLE                         R0 R1 R2
        7 JUMPIF                           R0 ; [+1]
        8 GETUPVAL                         R0 2
        9 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["navigation"]
        4 GETTABLEKS                       R1 R1 K2 ["state"]
        6 GETTABLEKS                       R1 R1 K3 ["index"]
        8 LOADB                            R2 0
        9 SETTABLEKS                       R2 R0 K4 ["_isMounted"]
       11 SETTABLEKS                       R1 R0 K5 ["_positionLastValue"]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K6 ["createRef"]
       16 CALL                             R2 0 1
       17 NEWCLOSURE                       R3 P0
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          VAL R2
       21 SETTABLEKS                       R3 R0 K7 ["_getRef"]
       23 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["forceHidden"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["cardColor3"]
        8 GETTABLEKS                       R3 R0 K0 ["props"]
       10 GETTABLEKS                       R3 R3 K3 ["transparent"]
       12 GETTABLEKS                       R4 R0 K0 ["props"]
       14 GETTABLEKS                       R4 R4 K4 ["initialPosition"]
       16 GETTABLEKS                       R5 R0 K0 ["props"]
       18 GETTABLEKS                       R5 R5 K5 ["renderScene"]
       20 GETTABLEKS                       R6 R0 K0 ["props"]
       22 GETTABLEKS                       R6 R6 K6 ["scene"]
       24 GETUPVAL                         R7 0
       25 FASTCALL1                        TYPE R5 ; [+3]
       26 MOVE                             R10 R5
       27 GETIMPORT                        R9 K8 [type]
       29 CALL                             R9 1 1
       30 JUMPIFEQKS                       R9 K9 ["function"] ; [+2]
       32 LOADB                            R8 0 +1
       33 LOADB                            R8 1
       34 LOADK                            R9 K10 ["renderScene must be a function"]
       35 CALL                             R7 2 0
       36 GETUPVAL                         R7 1
       37 GETTABLEKS                       R7 R7 K11 ["createElement"]
       39 LOADK                            R8 K12 ["Frame"]
       40 NEWTABLE                         R9 8 0
       42 SETTABLEKS                       R4 R9 K13 ["Position"]
       44 GETIMPORT                        R10 K16 [UDim2.new]
       46 LOADN                            R11 1
       47 LOADN                            R12 0
       48 LOADN                            R13 1
       49 LOADN                            R14 0
       50 CALL                             R10 4 1
       51 SETTABLEKS                       R10 R9 K17 ["Size"]
       53 SETTABLEKS                       R2 R9 K18 ["BackgroundColor3"]
       55 JUMPIFNOT                        R3 ; [+2]
       56 LOADN                            R10 1
       57 JUMP                             ; [+1]
       58 LOADNIL                          R10
       59 SETTABLEKS                       R10 R9 K19 ["BackgroundTransparency"]
       61 LOADN                            R10 0
       62 SETTABLEKS                       R10 R9 K20 ["BorderSizePixel"]
       64 LOADB                            R10 0
       65 SETTABLEKS                       R10 R9 K21 ["ClipsDescendants"]
       67 NOT                              R10 R1
       68 SETTABLEKS                       R10 R9 K22 ["Visible"]
       70 GETUPVAL                         R10 1
       71 GETTABLEKS                       R10 R10 K23 ["Ref"]
       73 NAMECALL                         R11 R0 K24 ["_getRef"]
       75 CALL                             R11 1 1
       76 SETTABLE                         R11 R9 R10
       77 DUPTABLE                         R10 K26 [{"Content"}]
       78 MOVE                             R11 R5
       79 MOVE                             R12 R6
       80 CALL                             R11 1 1
       81 SETTABLEKS                       R11 R10 K25 ["Content"]
       83 CALL                             R7 3 -1
       84 RETURN                           R7 -1

PROTO_3:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["_onPositionStep"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_4:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["_isMounted"]
        3 GETTABLEKS                       R1 R0 K1 ["props"]
        5 GETTABLEKS                       R1 R1 K2 ["position"]
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          VAL R0
        9 NAMECALL                         R2 R1 K3 ["onStep"]
       11 CALL                             R2 2 1
       12 SETTABLEKS                       R2 R0 K4 ["_positionDisconnector"]
       14 RETURN                           R0 0

PROTO_5:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["_isMounted"]
        3 GETTABLEKS                       R1 R0 K1 ["_positionDisconnector"]
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETTABLEKS                       R1 R0 K1 ["_positionDisconnector"]
        8 CALL                             R1 0 0
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K1 ["_positionDisconnector"]
       12 RETURN                           R0 0

PROTO_6:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["_onPositionStep"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["position"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R3 K2 ["positionStep"]
        8 GETTABLEKS                       R4 R1 K1 ["position"]
       10 JUMPIFEQ                         R2 R4 ; [+11]
       12 GETTABLEKS                       R4 R0 K3 ["_positionDisconnector"]
       14 CALL                             R4 0 0
       15 NEWCLOSURE                       R6 P0
       16 CAPTURE                          VAL R0
       17 NAMECALL                         R4 R2 K4 ["onStep"]
       19 CALL                             R4 2 1
       20 SETTABLEKS                       R4 R0 K3 ["_positionDisconnector"]
       22 GETTABLEKS                       R4 R1 K2 ["positionStep"]
       24 JUMPIFEQ                         R3 R4 ; [+6]
       26 GETTABLEKS                       R6 R0 K5 ["_positionLastValue"]
       28 NAMECALL                         R4 R0 K6 ["_onPositionStep"]
       30 CALL                             R4 2 0
       31 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["_isMounted"]
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R2 R0 K1 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["positionStep"]
        8 JUMPIFNOT                        R2 ; [+6]
        9 MOVE                             R3 R2
       10 NAMECALL                         R4 R0 K3 ["_getRef"]
       12 CALL                             R4 1 1
       13 MOVE                             R5 R1
       14 CALL                             R3 2 0
       15 SETTABLEKS                       R1 R0 K4 ["_positionLastValue"]
       17 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETTABLEKS                       R2 R1 K2 ["Parent"]
        9 GETTABLEKS                       R3 R2 K2 ["Parent"]
       11 GETIMPORT                        R4 K4 [require]
       13 GETTABLEKS                       R5 R3 K5 ["Roact"]
       15 CALL                             R4 1 1
       16 GETIMPORT                        R5 K4 [require]
       18 GETTABLEKS                       R6 R2 K6 ["utils"]
       20 GETTABLEKS                       R6 R6 K7 ["invariant"]
       22 CALL                             R5 1 1
       23 GETTABLEKS                       R6 R4 K8 ["Component"]
       25 LOADK                            R8 K9 ["StackViewCard"]
       26 NAMECALL                         R6 R6 K10 ["extend"]
       28 CALL                             R6 2 1
       29 DUPTABLE                         R7 K14 [{["transparent"] = False, ["cardColor3"]}]
       30 GETIMPORT                        R8 K17 [Color3.new]
       32 LOADN                            R9 1
       33 LOADN                            R10 1
       34 LOADN                            R11 1
       35 CALL                             R8 3 1
       36 SETTABLEKS                       R8 R7 K13 ["cardColor3"]
       38 SETTABLEKS                       R7 R6 K18 ["defaultProps"]
       40 DUPCLOSURE                       R7 K19 [PROTO_1]
       41 CAPTURE                          VAL R4
       42 SETTABLEKS                       R7 R6 K20 ["init"]
       44 DUPCLOSURE                       R7 K21 [PROTO_2]
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R4
       47 SETTABLEKS                       R7 R6 K22 ["render"]
       49 DUPCLOSURE                       R7 K23 [PROTO_4]
       50 SETTABLEKS                       R7 R6 K24 ["didMount"]
       52 DUPCLOSURE                       R7 K25 [PROTO_5]
       53 SETTABLEKS                       R7 R6 K26 ["willUnmount"]
       55 DUPCLOSURE                       R7 K27 [PROTO_7]
       56 SETTABLEKS                       R7 R6 K28 ["didUpdate"]
       58 DUPCLOSURE                       R7 K29 [PROTO_8]
       59 SETTABLEKS                       R7 R6 K30 ["_onPositionStep"]
       61 RETURN                           R6 1
