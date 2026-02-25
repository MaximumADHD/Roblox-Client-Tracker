PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R3 R0 K0 ["propertiesInOrder"]
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 GETUPVAL                         R8 1
       10 GETTABLEKS                       R9 R7 K1 ["id"]
       12 CALL                             R8 1 1
       13 GETUPVAL                         R9 2
       14 GETUPVAL                         R10 3
       15 DUPTABLE                         R11 K6 [{"LayoutOrder", "session", "property", "labelWidthBinding"}]
       16 MOVE                             R12 R2
       17 CALL                             R12 0 1
       18 SETTABLEKS                       R12 R11 K2 ["LayoutOrder"]
       20 GETTABLEKS                       R12 R0 K3 ["session"]
       22 SETTABLEKS                       R12 R11 K3 ["session"]
       24 SETTABLEKS                       R7 R11 K4 ["property"]
       26 GETTABLEKS                       R12 R0 K5 ["labelWidthBinding"]
       28 SETTABLEKS                       R12 R11 K5 ["labelWidthBinding"]
       30 CALL                             R9 2 1
       31 SETTABLE                         R9 R1 R8
       32 FORGLOOP                         R3 2 ; [-24]
       34 GETUPVAL                         R4 4
       35 GETTABLEKS                       R3 R4 K7 ["createElement"]
       37 GETUPVAL                         R5 4
       38 GETTABLEKS                       R4 R5 K8 ["Fragment"]
       40 NEWTABLE                         R5 0 0
       42 MOVE                             R6 R1
       43 CALL                             R3 3 -1
       44 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R5 R0 K7 ["Components"]
       13 GETTABLEKS                       R4 R5 K8 ["PropertyEntries"]
       15 GETTABLEKS                       R3 R4 K9 ["PropertyRow"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R0 K10 ["PropertyTypes"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R1 K11 ["React"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K12 ["RpcTypes"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K13 ["Util"]
       37 GETTABLEKS                       R7 R8 K14 ["createNextOrder"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R9 R0 K13 ["Util"]
       44 GETTABLEKS                       R8 R9 K15 ["propertyIdToString"]
       46 CALL                             R7 1 1
       47 GETTABLEKS                       R8 R4 K16 ["createElement"]
       49 DUPCLOSURE                       R9 K17 [PROTO_0]
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R8
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R4
       55 RETURN                           R9 1
