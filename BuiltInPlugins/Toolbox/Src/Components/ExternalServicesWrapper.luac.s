PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["pluginGui"]
        4 GETTABLEKS                       R3 R1 K2 ["networkInterface"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["provide"]
        9 NEWTABLE                         R5 0 2
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K4 ["new"]
       14 MOVE                             R7 R2
       15 CALL                             R6 1 1
       16 GETUPVAL                         R7 2
       17 GETTABLEKS                       R7 R7 K4 ["new"]
       19 MOVE                             R8 R3
       20 CALL                             R7 1 -1
       21 SETLIST                          R5 R6 -1 [1]
       23 GETUPVAL                         R7 3
       24 GETTABLEKS                       R7 R7 K5 ["Children"]
       26 GETTABLE                         R6 R1 R7
       27 CALL                             R4 2 -1
       28 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Roact"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K7 ["Framework"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R3 R3 K8 ["ContextServices"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K9 ["Src"]
       27 GETTABLEKS                       R5 R5 K8 ["ContextServices"]
       29 GETTABLEKS                       R5 R5 K10 ["ModalContext"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R0 K9 ["Src"]
       36 GETTABLEKS                       R6 R6 K8 ["ContextServices"]
       38 GETTABLEKS                       R6 R6 K11 ["NetworkContext"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R2 K12 ["Component"]
       43 LOADK                            R8 K13 ["ExternalServicesWrapper"]
       44 NAMECALL                         R6 R6 K14 ["extend"]
       46 CALL                             R6 2 1
       47 DUPCLOSURE                       R7 K15 [PROTO_0]
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R2
       52 SETTABLEKS                       R7 R6 K16 ["render"]
       54 RETURN                           R6 1
