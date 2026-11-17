PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["uploadSucceeded"]
        4 JUMPIFEQKNIL                     R3 ; [+10]
        6 GETTABLEKS                       R3 R1 K1 ["uploadSucceeded"]
        8 GETTABLEKS                       R4 R2 K1 ["uploadSucceeded"]
       10 JUMPIFEQ                         R3 R4 ; [+4]
       12 GETTABLEKS                       R3 R2 K2 ["onFinish"]
       14 CALL                             R3 0 0
       15 RETURN                           R0 0

PROTO_1:
        0 LOADNIL                          R1
        1 RETURN                           R1 1

PROTO_2:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 DUPTABLE                         R2 K4 [{"progress", "progressText", "progressTitle", "uploadSucceeded"}]
        6 GETTABLEKS                       R3 R0 K5 ["progressPercentage"]
        8 SETTABLEKS                       R3 R2 K0 ["progress"]
       10 GETTABLEKS                       R3 R0 K1 ["progressText"]
       12 SETTABLEKS                       R3 R2 K1 ["progressText"]
       14 GETTABLEKS                       R3 R0 K2 ["progressTitle"]
       16 SETTABLEKS                       R3 R2 K2 ["progressTitle"]
       18 GETTABLEKS                       R3 R0 K3 ["uploadSucceeded"]
       20 SETTABLEKS                       R3 R2 K3 ["uploadSucceeded"]
       22 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Framework"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Roact"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["RoactRodux"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R2 K10 ["ContextServices"]
       26 GETTABLEKS                       R6 R5 K11 ["withContext"]
       28 GETTABLEKS                       R7 R3 K12 ["Component"]
       30 LOADK                            R9 K13 ["ProgressBarWrapper"]
       31 NAMECALL                         R7 R7 K14 ["extend"]
       33 CALL                             R7 2 1
       34 DUPCLOSURE                       R8 K15 [PROTO_0]
       35 SETTABLEKS                       R8 R7 K16 ["didUpdate"]
       37 DUPCLOSURE                       R8 K17 [PROTO_1]
       38 SETTABLEKS                       R8 R7 K18 ["render"]
       40 DUPCLOSURE                       R8 K19 [PROTO_2]
       41 MOVE                             R9 R6
       42 DUPTABLE                         R10 K22 [{"Localization", "Stylizer"}]
       43 GETTABLEKS                       R11 R5 K20 ["Localization"]
       45 SETTABLEKS                       R11 R10 K20 ["Localization"]
       47 GETTABLEKS                       R11 R5 K21 ["Stylizer"]
       49 SETTABLEKS                       R11 R10 K21 ["Stylizer"]
       51 CALL                             R9 1 1
       52 MOVE                             R10 R7
       53 CALL                             R9 1 1
       54 MOVE                             R7 R9
       55 GETTABLEKS                       R9 R4 K23 ["connect"]
       57 MOVE                             R10 R8
       58 CALL                             R9 1 1
       59 MOVE                             R10 R7
       60 CALL                             R9 1 -1
       61 RETURN                           R9 -1
