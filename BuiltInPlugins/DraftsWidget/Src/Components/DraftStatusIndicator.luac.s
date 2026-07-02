PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Tooltip"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["Icon"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K3 ["createElement"]
       11 LOADK                            R4 K4 ["ImageLabel"]
       12 DUPTABLE                         R5 K11 [{["BackgroundTransparency"] = 1, ["Size"], ["Position"], ["AnchorPoint"], ["Image"]}]
       13 GETIMPORT                        R6 K14 [UDim2.fromOffset]
       15 LOADN                            R7 16
       16 LOADN                            R8 16
       17 CALL                             R6 2 1
       18 SETTABLEKS                       R6 R5 K7 ["Size"]
       20 GETIMPORT                        R6 K16 [UDim2.new]
       22 LOADK                            R7 K17 [0.5]
       23 LOADN                            R8 0
       24 LOADK                            R9 K17 [0.5]
       25 LOADN                            R10 0
       26 CALL                             R6 4 1
       27 SETTABLEKS                       R6 R5 K8 ["Position"]
       29 GETIMPORT                        R6 K19 [Vector2.new]
       31 LOADK                            R7 K17 [0.5]
       32 LOADK                            R8 K17 [0.5]
       33 CALL                             R6 2 1
       34 SETTABLEKS                       R6 R5 K9 ["AnchorPoint"]
       36 SETTABLEKS                       R2 R5 K10 ["Image"]
       38 DUPTABLE                         R6 K20 [{"Tooltip"}]
       39 MOVE                             R7 R1
       40 JUMPIFNOT                        R7 ; [+8]
       41 GETUPVAL                         R7 0
       42 GETTABLEKS                       R7 R7 K3 ["createElement"]
       44 GETUPVAL                         R8 1
       45 DUPTABLE                         R9 K24 [{["Text"], ["Enabled"] = True}]
       46 SETTABLEKS                       R1 R9 K21 ["Text"]
       48 CALL                             R7 2 1
       49 SETTABLEKS                       R7 R6 K1 ["Tooltip"]
       51 CALL                             R3 3 -1
       52 RETURN                           R3 -1

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
