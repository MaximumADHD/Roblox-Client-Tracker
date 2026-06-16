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
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["_signalDisconnect"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["createRef"]
        6 CALL                             R1 0 1
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R1
       11 SETTABLEKS                       R2 R0 K2 ["_getRef"]
       13 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["navigationOptions"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["initialTransitionValue"]
        8 GETUPVAL                         R3 0
        9 LOADN                            R4 1
       10 GETTABLEKS                       R5 R1 K3 ["overlayTransparency"]
       12 MOVE                             R6 R2
       13 CALL                             R3 3 1
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K4 ["createElement"]
       17 LOADK                            R5 K5 ["Frame"]
       18 NEWTABLE                         R6 8 0
       20 GETIMPORT                        R7 K8 [UDim2.new]
       22 LOADN                            R8 1
       23 LOADN                            R9 0
       24 LOADN                            R10 1
       25 LOADN                            R11 0
       26 CALL                             R7 4 1
       27 SETTABLEKS                       R7 R6 K9 ["Size"]
       29 GETTABLEKS                       R7 R1 K10 ["overlayColor3"]
       31 SETTABLEKS                       R7 R6 K11 ["BackgroundColor3"]
       33 SETTABLEKS                       R3 R6 K12 ["BackgroundTransparency"]
       35 LOADN                            R7 0
       36 SETTABLEKS                       R7 R6 K13 ["BorderSizePixel"]
       38 GETUPVAL                         R7 1
       39 GETTABLEKS                       R7 R7 K14 ["Ref"]
       41 NAMECALL                         R8 R0 K15 ["_getRef"]
       43 CALL                             R8 1 1
       44 SETTABLE                         R8 R6 R7
       45 CALL                             R4 2 -1
       46 RETURN                           R4 -1

PROTO_3:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["_transitionChanged"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["transitionChangedSignal"]
        4 GETTABLEKS                       R3 R1 K1 ["transitionChangedSignal"]
        6 JUMPIFEQ                         R2 R3 ; [+13]
        8 GETTABLEKS                       R3 R0 K2 ["_signalDisconnect"]
       10 JUMPIFNOT                        R3 ; [+3]
       11 GETTABLEKS                       R3 R0 K2 ["_signalDisconnect"]
       13 CALL                             R3 0 0
       14 MOVE                             R3 R2
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          VAL R0
       17 CALL                             R3 1 1
       18 SETTABLEKS                       R3 R0 K2 ["_signalDisconnect"]
       20 RETURN                           R0 0

PROTO_5:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["_transitionChanged"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_6:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["_isMounted"]
        3 GETTABLEKS                       R1 R0 K1 ["props"]
        5 GETTABLEKS                       R1 R1 K2 ["transitionChangedSignal"]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          VAL R0
        9 CALL                             R1 1 1
       10 SETTABLEKS                       R1 R0 K3 ["_signalDisconnect"]
       12 RETURN                           R0 0

PROTO_7:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["_isMounted"]
        3 GETTABLEKS                       R1 R0 K1 ["_signalDisconnect"]
        5 JUMPIFNOT                        R1 ; [+3]
        6 GETTABLEKS                       R1 R0 K1 ["_signalDisconnect"]
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["_isMounted"]
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 NAMECALL                         R2 R0 K1 ["_getRef"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R3 R2 K2 ["current"]
        9 JUMPIFNOT                        R3 ; [+14]
       10 GETTABLEKS                       R3 R0 K3 ["props"]
       12 GETTABLEKS                       R3 R3 K4 ["navigationOptions"]
       14 GETUPVAL                         R4 0
       15 LOADN                            R5 1
       16 GETTABLEKS                       R6 R3 K5 ["overlayTransparency"]
       18 MOVE                             R7 R1
       19 CALL                             R4 3 1
       20 GETTABLEKS                       R5 R2 K2 ["current"]
       22 SETTABLEKS                       R4 R5 K6 ["BackgroundTransparency"]
       24 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K4 ["Parent"]
       11 GETTABLEKS                       R1 R1 K4 ["Parent"]
       13 GETTABLEKS                       R1 R1 K5 ["Roact"]
       15 CALL                             R0 1 1
       16 GETIMPORT                        R1 K1 [require]
       18 GETIMPORT                        R2 K3 [script]
       20 GETTABLEKS                       R2 R2 K4 ["Parent"]
       22 GETTABLEKS                       R2 R2 K4 ["Parent"]
       24 GETTABLEKS                       R2 R2 K4 ["Parent"]
       26 GETTABLEKS                       R2 R2 K6 ["utils"]
       28 GETTABLEKS                       R2 R2 K7 ["lerp"]
       30 CALL                             R1 1 1
       31 GETTABLEKS                       R2 R0 K8 ["Component"]
       33 LOADK                            R4 K9 ["StackViewOverlayFrame"]
       34 NAMECALL                         R2 R2 K10 ["extend"]
       36 CALL                             R2 2 1
       37 DUPCLOSURE                       R3 K11 [PROTO_1]
       38 CAPTURE                          VAL R0
       39 SETTABLEKS                       R3 R2 K12 ["init"]
       41 DUPCLOSURE                       R3 K13 [PROTO_2]
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R0
       44 SETTABLEKS                       R3 R2 K14 ["render"]
       46 DUPCLOSURE                       R3 K15 [PROTO_4]
       47 SETTABLEKS                       R3 R2 K16 ["didUpdate"]
       49 DUPCLOSURE                       R3 K17 [PROTO_6]
       50 SETTABLEKS                       R3 R2 K18 ["didMount"]
       52 DUPCLOSURE                       R3 K19 [PROTO_7]
       53 SETTABLEKS                       R3 R2 K20 ["willUnmount"]
       55 DUPCLOSURE                       R3 K21 [PROTO_8]
       56 CAPTURE                          VAL R1
       57 SETTABLEKS                       R3 R2 K22 ["_transitionChanged"]
       59 RETURN                           R2 1
