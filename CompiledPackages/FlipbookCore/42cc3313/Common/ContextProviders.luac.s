PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["get"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R0 R1 K1 ["setPlugin"]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K2 ["plugin"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R0
        6 NEWTABLE                         R4 0 1
        8 GETTABLEKS                       R5 R0 K0 ["plugin"]
       10 SETLIST                          R4 R5 1 [1]
       12 CALL                             R2 2 0
       13 GETUPVAL                         R3 3
       14 GETTABLEKS                       R2 R3 K1 ["createElement"]
       16 GETUPVAL                         R3 4
       17 DUPTABLE                         R4 K3 [{"providers"}]
       18 NEWTABLE                         R5 0 3
       20 GETUPVAL                         R7 3
       21 GETTABLEKS                       R6 R7 K1 ["createElement"]
       23 GETUPVAL                         R8 5
       24 GETTABLEKS                       R7 R8 K4 ["FoundationProvider"]
       26 DUPTABLE                         R8 K7 [{"theme", "overlayGui"}]
       27 SETTABLEKS                       R1 R8 K5 ["theme"]
       29 GETTABLEKS                       R9 R0 K6 ["overlayGui"]
       31 SETTABLEKS                       R9 R8 K6 ["overlayGui"]
       33 CALL                             R6 2 1
       34 GETUPVAL                         R8 3
       35 GETTABLEKS                       R7 R8 K1 ["createElement"]
       37 GETUPVAL                         R9 6
       38 GETTABLEKS                       R8 R9 K8 ["Provider"]
       40 DUPTABLE                         R9 K10 [{"defaultScreen"}]
       41 LOADK                            R10 K11 ["Home"]
       42 SETTABLEKS                       R10 R9 K9 ["defaultScreen"]
       44 CALL                             R7 2 1
       45 GETUPVAL                         R9 3
       46 GETTABLEKS                       R8 R9 K1 ["createElement"]
       48 GETUPVAL                         R10 7
       49 GETTABLEKS                       R9 R10 K12 ["TreeViewProvider"]
       51 CALL                             R8 1 -1
       52 SETLIST                          R5 R6 -1 [1]
       54 SETTABLEKS                       R5 R4 K2 ["providers"]
       56 GETTABLEKS                       R5 R0 K13 ["children"]
       58 CALL                             R2 3 -1
       59 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R5 K3 [script]
        5 GETTABLEKS                       R4 R5 K4 ["Parent"]
        7 GETTABLEKS                       R3 R4 K4 ["Parent"]
        9 GETTABLEKS                       R2 R3 K5 ["RobloxPackages"]
       11 GETTABLEKS                       R1 R2 K6 ["Foundation"]
       13 CALL                             R0 1 1
       14 GETIMPORT                        R1 K1 [require]
       16 GETIMPORT                        R6 K3 [script]
       18 GETTABLEKS                       R5 R6 K4 ["Parent"]
       20 GETTABLEKS                       R4 R5 K4 ["Parent"]
       22 GETTABLEKS                       R3 R4 K7 ["Packages"]
       24 GETTABLEKS                       R2 R3 K8 ["React"]
       26 CALL                             R1 1 1
       27 GETIMPORT                        R2 K1 [require]
       29 GETIMPORT                        R5 K3 [script]
       31 GETTABLEKS                       R4 R5 K4 ["Parent"]
       33 GETTABLEKS                       R3 R4 K9 ["ContextStack"]
       35 CALL                             R2 1 1
       36 GETIMPORT                        R3 K1 [require]
       38 GETIMPORT                        R8 K3 [script]
       40 GETTABLEKS                       R7 R8 K4 ["Parent"]
       42 GETTABLEKS                       R6 R7 K4 ["Parent"]
       44 GETTABLEKS                       R5 R6 K10 ["Navigation"]
       46 GETTABLEKS                       R4 R5 K11 ["NavigationContext"]
       48 CALL                             R3 1 1
       49 GETIMPORT                        R4 K1 [require]
       51 GETIMPORT                        R9 K3 [script]
       53 GETTABLEKS                       R8 R9 K4 ["Parent"]
       55 GETTABLEKS                       R7 R8 K4 ["Parent"]
       57 GETTABLEKS                       R6 R7 K12 ["Plugin"]
       59 GETTABLEKS                       R5 R6 K13 ["PluginStore"]
       61 CALL                             R4 1 1
       62 GETIMPORT                        R5 K1 [require]
       64 GETIMPORT                        R9 K3 [script]
       66 GETTABLEKS                       R8 R9 K4 ["Parent"]
       68 GETTABLEKS                       R7 R8 K4 ["Parent"]
       70 GETTABLEKS                       R6 R7 K14 ["TreeView"]
       72 CALL                             R5 1 1
       73 GETIMPORT                        R6 K1 [require]
       75 GETIMPORT                        R9 K3 [script]
       77 GETTABLEKS                       R8 R9 K4 ["Parent"]
       79 GETTABLEKS                       R7 R8 K15 ["useThemeName"]
       81 CALL                             R6 1 1
       82 GETTABLEKS                       R7 R1 K16 ["useEffect"]
       84 DUPCLOSURE                       R8 K17 [PROTO_1]
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R1
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R0
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R5
       93 RETURN                           R8 1
