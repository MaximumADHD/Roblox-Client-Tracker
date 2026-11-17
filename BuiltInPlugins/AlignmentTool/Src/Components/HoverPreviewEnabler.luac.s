PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["previewVisible"]
        5 JUMPIF                           R0 ; [+7]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["props"]
        9 GETTABLEKS                       R0 R0 K2 ["setPreviewVisible"]
       11 LOADB                            R1 1
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["setPreviewVisible"]
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["mouseMoved"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R1 R0 K1 ["mouseLeave"]
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetMouseLocation"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 JUMPIFEQ                         R1 R0 ; [+14]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K1 ["props"]
       10 GETTABLEKS                       R1 R1 K2 ["previewVisible"]
       12 JUMPIFNOT                        R1 ; [+7]
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R1 R1 K1 ["props"]
       16 GETTABLEKS                       R1 R1 K3 ["setPreviewVisible"]
       18 LOADB                            R2 0
       19 CALL                             R1 1 0
       20 SETUPVAL                         R0 1
       21 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["GetMouseLocation"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K1 ["getMouseLocation"]
        6 LOADN                            R5 1
        7 NEWCLOSURE                       R6 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          REF R1
       10 CAPTURE                          VAL R0
       11 NAMECALL                         R2 R2 K2 ["BindToRenderStep"]
       13 CALL                             R2 4 0
       14 CLOSEUPVALS                      R1
       15 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["mouseLeave"]
        2 CALL                             R1 0 0
        3 GETUPVAL                         R1 0
        4 LOADK                            R3 K1 ["getMouseLocation"]
        5 NAMECALL                         R1 R1 K2 ["UnbindFromRenderStep"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 LOADK                            R2 K1 ["Frame"]
        4 NEWTABLE                         R3 4 0
        6 LOADN                            R4 1
        7 SETTABLEKS                       R4 R3 K2 ["BackgroundTransparency"]
        9 GETIMPORT                        R4 K5 [UDim2.new]
       11 LOADN                            R5 1
       12 LOADN                            R6 0
       13 LOADN                            R7 1
       14 LOADN                            R8 0
       15 CALL                             R4 4 1
       16 SETTABLEKS                       R4 R3 K6 ["Size"]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K7 ["Event"]
       21 GETTABLEKS                       R4 R4 K8 ["MouseMoved"]
       23 GETTABLEKS                       R5 R0 K9 ["mouseMoved"]
       25 SETTABLE                         R5 R3 R4
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K7 ["Event"]
       29 GETTABLEKS                       R4 R4 K10 ["MouseLeave"]
       31 GETTABLEKS                       R5 R0 K11 ["mouseLeave"]
       33 SETTABLE                         R5 R3 R4
       34 GETTABLEKS                       R5 R0 K12 ["props"]
       36 GETUPVAL                         R6 0
       37 GETTABLEKS                       R6 R6 K13 ["Children"]
       39 GETTABLE                         R4 R5 R6
       40 CALL                             R1 3 -1
       41 RETURN                           R1 -1

PROTO_7:
        0 DUPTABLE                         R2 K1 [{"previewVisible"}]
        1 GETTABLEKS                       R3 R0 K0 ["previewVisible"]
        3 SETTABLEKS                       R3 R2 K0 ["previewVisible"]
        5 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R1 K1 [{"setPreviewVisible"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["setPreviewVisible"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UserInputService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["RunService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 GETTABLEKS                       R2 R2 K7 ["Parent"]
       17 GETTABLEKS                       R2 R2 K7 ["Parent"]
       19 GETTABLEKS                       R2 R2 K7 ["Parent"]
       21 GETIMPORT                        R3 K9 [require]
       23 GETTABLEKS                       R4 R2 K10 ["Packages"]
       25 GETTABLEKS                       R4 R4 K11 ["Roact"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K9 [require]
       30 GETTABLEKS                       R5 R2 K10 ["Packages"]
       32 GETTABLEKS                       R5 R5 K12 ["RoactRodux"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K9 [require]
       37 GETTABLEKS                       R6 R2 K13 ["Src"]
       39 GETTABLEKS                       R6 R6 K14 ["Actions"]
       41 GETTABLEKS                       R6 R6 K15 ["SetPreviewVisible"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R3 K16 ["PureComponent"]
       46 LOADK                            R8 K17 ["HoverPreviewEnabler"]
       47 NAMECALL                         R6 R6 K18 ["extend"]
       49 CALL                             R6 2 1
       50 DUPCLOSURE                       R7 K19 [PROTO_2]
       51 SETTABLEKS                       R7 R6 K20 ["init"]
       53 DUPCLOSURE                       R7 K21 [PROTO_4]
       54 CAPTURE                          VAL R0
       55 CAPTURE                          VAL R1
       56 SETTABLEKS                       R7 R6 K22 ["didMount"]
       58 DUPCLOSURE                       R7 K23 [PROTO_5]
       59 CAPTURE                          VAL R1
       60 SETTABLEKS                       R7 R6 K24 ["willUnmount"]
       62 DUPCLOSURE                       R7 K25 [PROTO_6]
       63 CAPTURE                          VAL R3
       64 SETTABLEKS                       R7 R6 K26 ["render"]
       66 DUPCLOSURE                       R7 K27 [PROTO_7]
       67 DUPCLOSURE                       R8 K28 [PROTO_9]
       68 CAPTURE                          VAL R5
       69 GETTABLEKS                       R9 R4 K29 ["connect"]
       71 MOVE                             R10 R7
       72 MOVE                             R11 R8
       73 CALL                             R9 2 1
       74 MOVE                             R10 R6
       75 CALL                             R9 1 -1
       76 RETURN                           R9 -1
