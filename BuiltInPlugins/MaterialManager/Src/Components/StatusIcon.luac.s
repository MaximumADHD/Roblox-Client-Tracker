PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R2 K2 ["StatusIcon"]
        6 GETTABLEKS                       R3 R1 K3 ["Status"]
        8 LOADNIL                          R4
        9 GETTABLEKS                       R6 R1 K5 ["StatusText"]
       11 ORK                              R5 R6 K4 [""]
       12 GETIMPORT                        R6 K9 [Enum.PropertyStatus.Error]
       14 JUMPIFNOTEQ                      R3 R6 ; [+4]
       16 GETTABLEKS                       R4 R2 K8 ["Error"]
       18 JUMP                             ; [+29]
       19 GETIMPORT                        R6 K11 [Enum.PropertyStatus.Warning]
       21 JUMPIFNOTEQ                      R3 R6 ; [+4]
       23 GETTABLEKS                       R4 R2 K10 ["Warning"]
       25 JUMP                             ; [+22]
       26 GETIMPORT                        R6 K13 [Enum.PropertyStatus.Ok]
       28 JUMPIFNOTEQ                      R3 R6 ; [+19]
       30 GETUPVAL                         R6 0
       31 GETTABLEKS                       R6 R6 K14 ["createElement"]
       33 GETUPVAL                         R7 1
       34 DUPTABLE                         R8 K17 [{"LayoutOrder", "Size"}]
       35 GETTABLEKS                       R9 R1 K15 ["LayoutOrder"]
       37 SETTABLEKS                       R9 R8 K15 ["LayoutOrder"]
       39 GETIMPORT                        R9 K20 [UDim2.fromOffset]
       41 LOADN                            R10 0
       42 LOADN                            R11 0
       43 CALL                             R9 2 1
       44 SETTABLEKS                       R9 R8 K16 ["Size"]
       46 CALL                             R6 2 -1
       47 RETURN                           R6 -1
       48 GETUPVAL                         R6 0
       49 GETTABLEKS                       R6 R6 K14 ["createElement"]
       51 GETUPVAL                         R7 2
       52 DUPTABLE                         R8 K23 [{"LayoutOrder", "Position", "Size", "ZIndex"}]
       53 GETTABLEKS                       R9 R1 K15 ["LayoutOrder"]
       55 SETTABLEKS                       R9 R8 K15 ["LayoutOrder"]
       57 GETTABLEKS                       R9 R1 K21 ["Position"]
       59 SETTABLEKS                       R9 R8 K21 ["Position"]
       61 GETTABLEKS                       R9 R1 K16 ["Size"]
       63 SETTABLEKS                       R9 R8 K16 ["Size"]
       65 GETTABLEKS                       R9 R1 K22 ["ZIndex"]
       67 SETTABLEKS                       R9 R8 K22 ["ZIndex"]
       69 DUPTABLE                         R9 K26 [{"Image", "Tooltip"}]
       70 GETUPVAL                         R10 0
       71 GETTABLEKS                       R10 R10 K14 ["createElement"]
       73 GETUPVAL                         R11 3
       74 DUPTABLE                         R12 K28 [{"Style"}]
       75 SETTABLEKS                       R4 R12 K27 ["Style"]
       77 CALL                             R10 2 1
       78 SETTABLEKS                       R10 R9 K24 ["Image"]
       80 GETUPVAL                         R10 0
       81 GETTABLEKS                       R10 R10 K14 ["createElement"]
       83 GETUPVAL                         R11 4
       84 DUPTABLE                         R12 K30 [{"Text"}]
       85 SETTABLEKS                       R5 R12 K29 ["Text"]
       87 CALL                             R10 2 1
       88 SETTABLEKS                       R10 R9 K25 ["Tooltip"]
       90 CALL                             R6 3 -1
       91 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Packages"]
       20 GETTABLEKS                       R3 R3 K8 ["Roact"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K7 ["Packages"]
       27 GETTABLEKS                       R4 R4 K9 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K11 ["withContext"]
       34 GETTABLEKS                       R6 R4 K12 ["Analytics"]
       36 GETTABLEKS                       R7 R3 K13 ["Style"]
       38 GETTABLEKS                       R7 R7 K14 ["Stylizer"]
       40 GETTABLEKS                       R8 R3 K15 ["UI"]
       42 GETTABLEKS                       R9 R8 K16 ["Container"]
       44 GETTABLEKS                       R10 R8 K17 ["Image"]
       46 GETTABLEKS                       R11 R8 K18 ["Pane"]
       48 GETTABLEKS                       R12 R8 K19 ["Tooltip"]
       50 GETTABLEKS                       R13 R2 K20 ["PureComponent"]
       52 LOADK                            R15 K21 ["StatusIcon"]
       53 NAMECALL                         R13 R13 K22 ["extend"]
       55 CALL                             R13 2 1
       56 DUPCLOSURE                       R14 K23 [PROTO_0]
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R11
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R10
       61 CAPTURE                          VAL R12
       62 SETTABLEKS                       R14 R13 K24 ["render"]
       64 MOVE                             R14 R5
       65 DUPTABLE                         R15 K25 [{"Analytics", "Stylizer"}]
       66 SETTABLEKS                       R6 R15 K12 ["Analytics"]
       68 SETTABLEKS                       R7 R15 K14 ["Stylizer"]
       70 CALL                             R14 1 1
       71 MOVE                             R15 R13
       72 CALL                             R14 1 1
       73 MOVE                             R13 R14
       74 RETURN                           R13 1
