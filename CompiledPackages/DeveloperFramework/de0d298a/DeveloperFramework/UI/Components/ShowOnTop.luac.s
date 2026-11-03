PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Focus"]
        4 NAMECALL                         R2 R2 K2 ["get"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R4 R0 K0 ["props"]
        9 GETTABLEKS                       R4 R4 K4 ["Priority"]
       11 ORK                              R3 R4 K3 [0]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K5 ["createElement"]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K6 ["Portal"]
       18 DUPTABLE                         R6 K8 [{"target"}]
       19 SETTABLEKS                       R2 R6 K7 ["target"]
       21 DUPTABLE                         R7 K10 [{"TopLevelFrame"}]
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R8 R8 K5 ["createElement"]
       25 LOADK                            R9 K11 ["Frame"]
       26 DUPTABLE                         R10 K16 [{["ZIndex"], ["Size"], ["BackgroundTransparency"] = 1}]
       27 ADDK                             R11 R3 K17 [1000000]
       28 SETTABLEKS                       R11 R10 K12 ["ZIndex"]
       30 GETIMPORT                        R11 K20 [UDim2.new]
       32 LOADN                            R12 1
       33 LOADN                            R13 0
       34 LOADN                            R14 1
       35 LOADN                            R15 0
       36 CALL                             R11 4 1
       37 SETTABLEKS                       R11 R10 K13 ["Size"]
       39 GETTABLEKS                       R12 R0 K0 ["props"]
       41 GETUPVAL                         R13 0
       42 GETTABLEKS                       R13 R13 K21 ["Children"]
       44 GETTABLE                         R11 R12 R13
       45 CALL                             R8 3 1
       46 SETTABLEKS                       R8 R7 K9 ["TopLevelFrame"]
       48 CALL                             R4 3 -1
       49 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["withContext"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K10 ["Util"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R4 R4 K11 ["Typecheck"]
       32 GETTABLEKS                       R5 R1 K12 ["PureComponent"]
       34 LOADK                            R7 K13 ["ShowOnTop"]
       35 NAMECALL                         R5 R5 K14 ["extend"]
       37 CALL                             R5 2 1
       38 GETTABLEKS                       R6 R4 K15 ["wrap"]
       40 MOVE                             R7 R5
       41 GETIMPORT                        R8 K1 [script]
       43 CALL                             R6 2 0
       44 DUPCLOSURE                       R6 K16 [PROTO_0]
       45 CAPTURE                          VAL R1
       46 SETTABLEKS                       R6 R5 K17 ["render"]
       48 MOVE                             R6 R3
       49 DUPTABLE                         R7 K19 [{"Focus"}]
       50 GETTABLEKS                       R8 R2 K18 ["Focus"]
       52 SETTABLEKS                       R8 R7 K18 ["Focus"]
       54 CALL                             R6 1 1
       55 MOVE                             R7 R5
       56 CALL                             R6 1 1
       57 MOVE                             R5 R6
       58 RETURN                           R5 1
