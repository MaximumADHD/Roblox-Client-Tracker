PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Tooltip"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["Icon"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K3 ["createElement"]
       11 LOADK                            R4 K4 ["ImageLabel"]
       12 DUPTABLE                         R5 K10 [{"BackgroundTransparency", "Size", "Position", "AnchorPoint", "Image"}]
       13 LOADN                            R6 1
       14 SETTABLEKS                       R6 R5 K5 ["BackgroundTransparency"]
       16 GETIMPORT                        R6 K13 [UDim2.fromOffset]
       18 LOADN                            R7 16
       19 LOADN                            R8 16
       20 CALL                             R6 2 1
       21 SETTABLEKS                       R6 R5 K6 ["Size"]
       23 GETIMPORT                        R6 K15 [UDim2.new]
       25 LOADK                            R7 K16 [0.5]
       26 LOADN                            R8 0
       27 LOADK                            R9 K16 [0.5]
       28 LOADN                            R10 0
       29 CALL                             R6 4 1
       30 SETTABLEKS                       R6 R5 K7 ["Position"]
       32 GETIMPORT                        R6 K18 [Vector2.new]
       34 LOADK                            R7 K16 [0.5]
       35 LOADK                            R8 K16 [0.5]
       36 CALL                             R6 2 1
       37 SETTABLEKS                       R6 R5 K8 ["AnchorPoint"]
       39 SETTABLEKS                       R2 R5 K9 ["Image"]
       41 DUPTABLE                         R6 K19 [{"Tooltip"}]
       42 MOVE                             R7 R1
       43 JUMPIFNOT                        R7 ; [+11]
       44 GETUPVAL                         R7 0
       45 GETTABLEKS                       R7 R7 K3 ["createElement"]
       47 GETUPVAL                         R8 1
       48 DUPTABLE                         R9 K22 [{"Text", "Enabled"}]
       49 SETTABLEKS                       R1 R9 K20 ["Text"]
       51 LOADB                            R10 1
       52 SETTABLEKS                       R10 R9 K21 ["Enabled"]
       54 CALL                             R7 2 1
       55 SETTABLEKS                       R7 R6 K1 ["Tooltip"]
       57 CALL                             R3 3 -1
       58 RETURN                           R3 -1

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
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["UI"]
       25 GETTABLEKS                       R3 R3 K9 ["Tooltip"]
       27 GETTABLEKS                       R4 R1 K10 ["PureComponent"]
       29 LOADK                            R6 K11 ["DraftStatusIndicator"]
       30 NAMECALL                         R4 R4 K12 ["extend"]
       32 CALL                             R4 2 1
       33 DUPCLOSURE                       R5 K13 [PROTO_0]
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R3
       36 SETTABLEKS                       R5 R4 K14 ["render"]
       38 RETURN                           R4 1
