PROTO_0:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+12]
        2 GETIMPORT                        R0 K1 [wait]
        4 LOADK                            R1 K2 [0.01]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K4 ["Rotation"]
       10 ADDK                             R1 R2 K3 [7]
       11 SETTABLEKS                       R1 R0 K4 ["Rotation"]
       13 JUMPBACK                         ; [-14]
       14 RETURN                           R0 0

PROTO_2:
        0 LOADB                            R1 0
        1 DUPTABLE                         R2 K1 [{"bail"}]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          REF R1
        4 SETTABLEKS                       R3 R2 K0 ["bail"]
        6 GETIMPORT                        R3 K3 [spawn]
        8 NEWCLOSURE                       R4 P1
        9 CAPTURE                          REF R1
       10 CAPTURE                          VAL R0
       11 CALL                             R3 1 0
       12 CLOSEUPVALS                      R1
       13 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["progressSpinnerRef"]
        6 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["progressSpinnerRef"]
        2 GETTABLEKS                       R1 R1 K1 ["current"]
        4 GETTABLEKS                       R2 R0 K2 ["_currentSpinnerTask"]
        6 JUMPIFNOT                        R2 ; [+5]
        7 GETTABLEKS                       R2 R0 K2 ["_currentSpinnerTask"]
        9 GETTABLEKS                       R2 R2 K3 ["bail"]
       11 CALL                             R2 0 0
       12 JUMPIFNOT                        R1 ; [+5]
       13 GETUPVAL                         R2 0
       14 MOVE                             R3 R1
       15 CALL                             R2 1 1
       16 SETTABLEKS                       R2 R0 K2 ["_currentSpinnerTask"]
       18 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_currentSpinnerTask"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["_currentSpinnerTask"]
        5 GETTABLEKS                       R1 R1 K1 ["bail"]
        7 CALL                             R1 0 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["IsBusy"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 MOVE                             R4 R2
        7 JUMPIFNOT                        R4 ; [+69]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K3 ["createElement"]
       11 LOADK                            R5 K4 ["ImageLabel"]
       12 NEWTABLE                         R6 16 0
       14 GETIMPORT                        R7 K7 [UDim2.new]
       16 LOADK                            R8 K8 [0.5]
       17 LOADN                            R9 0
       18 LOADK                            R10 K8 [0.5]
       19 LOADN                            R11 0
       20 CALL                             R7 4 1
       21 SETTABLEKS                       R7 R6 K9 ["Position"]
       23 GETIMPORT                        R7 K7 [UDim2.new]
       25 LOADN                            R8 0
       26 GETTABLEKS                       R9 R3 K10 ["Size"]
       28 LOADN                            R10 0
       29 GETTABLEKS                       R11 R3 K10 ["Size"]
       31 CALL                             R7 4 1
       32 SETTABLEKS                       R7 R6 K10 ["Size"]
       34 GETIMPORT                        R7 K12 [Vector2.new]
       36 LOADK                            R8 K8 [0.5]
       37 LOADK                            R9 K8 [0.5]
       38 CALL                             R7 2 1
       39 SETTABLEKS                       R7 R6 K13 ["AnchorPoint"]
       41 LOADN                            R7 0
       42 SETTABLEKS                       R7 R6 K14 ["BorderSizePixel"]
       44 LOADN                            R7 1
       45 SETTABLEKS                       R7 R6 K15 ["BackgroundTransparency"]
       47 LOADN                            R7 10
       48 SETTABLEKS                       R7 R6 K16 ["ZIndex"]
       50 GETTABLEKS                       R7 R3 K17 ["ProgressSpinnerImageUrl"]
       52 SETTABLEKS                       R7 R6 K18 ["Image"]
       54 GETIMPORT                        R7 K12 [Vector2.new]
       56 GETTABLEKS                       R8 R3 K19 ["ImageRectSize"]
       58 GETTABLEKS                       R9 R3 K19 ["ImageRectSize"]
       60 CALL                             R7 2 1
       61 SETTABLEKS                       R7 R6 K19 ["ImageRectSize"]
       63 GETIMPORT                        R7 K12 [Vector2.new]
       65 LOADK                            R8 K8 [0.5]
       66 LOADK                            R9 K8 [0.5]
       67 CALL                             R7 2 1
       68 SETTABLEKS                       R7 R6 K20 ["ImageRectOffset"]
       70 GETUPVAL                         R7 0
       71 GETTABLEKS                       R7 R7 K21 ["Ref"]
       73 GETTABLEKS                       R8 R0 K22 ["progressSpinnerRef"]
       75 SETTABLE                         R8 R6 R7
       76 CALL                             R4 2 1
       77 RETURN                           R4 1

PROTO_7:
        0 DUPTABLE                         R2 K1 [{"IsBusy"}]
        1 GETTABLEKS                       R3 R0 K2 ["CloudTable"]
        3 GETTABLEKS                       R3 R3 K0 ["IsBusy"]
        5 SETTABLEKS                       R3 R2 K0 ["IsBusy"]
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K10 ["withContext"]
       34 GETTABLEKS                       R6 R1 K11 ["PureComponent"]
       36 LOADK                            R8 K12 ["ProgressSpinner"]
       37 NAMECALL                         R6 R6 K13 ["extend"]
       39 CALL                             R6 2 1
       40 DUPCLOSURE                       R7 K14 [PROTO_2]
       41 DUPCLOSURE                       R8 K15 [PROTO_3]
       42 CAPTURE                          VAL R1
       43 SETTABLEKS                       R8 R6 K16 ["init"]
       45 DUPCLOSURE                       R8 K17 [PROTO_4]
       46 CAPTURE                          VAL R7
       47 SETTABLEKS                       R8 R6 K18 ["didUpdate"]
       49 DUPCLOSURE                       R8 K19 [PROTO_5]
       50 SETTABLEKS                       R8 R6 K20 ["willUnmount"]
       52 DUPCLOSURE                       R8 K21 [PROTO_6]
       53 CAPTURE                          VAL R1
       54 SETTABLEKS                       R8 R6 K22 ["render"]
       56 MOVE                             R8 R5
       57 DUPTABLE                         R9 K24 [{"Stylizer"}]
       58 GETTABLEKS                       R10 R4 K23 ["Stylizer"]
       60 SETTABLEKS                       R10 R9 K23 ["Stylizer"]
       62 CALL                             R8 1 1
       63 MOVE                             R9 R6
       64 CALL                             R8 1 1
       65 MOVE                             R6 R8
       66 DUPCLOSURE                       R8 K25 [PROTO_7]
       67 GETTABLEKS                       R9 R2 K26 ["connect"]
       69 MOVE                             R10 R8
       70 CALL                             R9 1 1
       71 MOVE                             R10 R6
       72 CALL                             R9 1 -1
       73 RETURN                           R9 -1
