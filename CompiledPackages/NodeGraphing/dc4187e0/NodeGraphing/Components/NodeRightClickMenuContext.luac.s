PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 LOADB                            R3 1
        2 SETTABLEKS                       R3 R2 K0 ["current"]
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R2 1 0
        7 GETUPVAL                         R2 2
        8 MOVE                             R3 R1
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 LOADNIL                          R1
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 LOADNIL                          R1
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 RETURN                           R0 1

PROTO_5:
        0 DUPTABLE                         R0 K6 [{"targetNodeId", "anchorPosition", "showMenu", "hideMenu", "isMenuOpen", "onShowInExplorer"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["targetNodeId"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["anchorPosition"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["showMenu"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["hideMenu"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["isMenuOpen"]
       16 GETUPVAL                         R1 5
       17 GETTABLEKS                       R1 R1 K5 ["onShowInExplorer"]
       19 SETTABLEKS                       R1 R0 K5 ["onShowInExplorer"]
       21 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["useState"]
        8 LOADNIL                          R4
        9 CALL                             R3 1 2
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K1 ["useRef"]
       13 LOADB                            R6 0
       14 CALL                             R5 1 1
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K2 ["useCallback"]
       18 NEWCLOSURE                       R7 P0
       19 CAPTURE                          VAL R5
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R4
       22 NEWTABLE                         R8 0 2
       24 MOVE                             R9 R2
       25 MOVE                             R10 R4
       26 SETLIST                          R8 R9 2 [1]
       28 CALL                             R6 2 1
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R7 R7 K2 ["useCallback"]
       32 NEWCLOSURE                       R8 P1
       33 CAPTURE                          VAL R5
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R4
       36 NEWTABLE                         R9 0 2
       38 MOVE                             R10 R2
       39 MOVE                             R11 R4
       40 SETLIST                          R9 R10 2 [1]
       42 CALL                             R7 2 1
       43 GETUPVAL                         R8 0
       44 GETTABLEKS                       R8 R8 K2 ["useCallback"]
       46 NEWCLOSURE                       R9 P2
       47 CAPTURE                          VAL R5
       48 NEWTABLE                         R10 0 0
       50 CALL                             R8 2 1
       51 GETUPVAL                         R9 0
       52 GETTABLEKS                       R9 R9 K3 ["useMemo"]
       54 NEWCLOSURE                       R10 P3
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R8
       60 CAPTURE                          VAL R0
       61 NEWTABLE                         R11 0 6
       63 MOVE                             R12 R1
       64 MOVE                             R13 R3
       65 MOVE                             R14 R6
       66 MOVE                             R15 R7
       67 MOVE                             R16 R8
       68 GETTABLEKS                       R17 R0 K4 ["onShowInExplorer"]
       70 SETLIST                          R11 R12 6 [1]
       72 CALL                             R9 2 1
       73 GETUPVAL                         R10 0
       74 GETTABLEKS                       R10 R10 K5 ["createElement"]
       76 GETUPVAL                         R11 1
       77 GETTABLEKS                       R11 R11 K6 ["Provider"]
       79 DUPTABLE                         R12 K8 [{"value"}]
       80 SETTABLEKS                       R9 R12 K7 ["value"]
       82 GETTABLEKS                       R13 R0 K9 ["children"]
       84 CALL                             R10 3 -1
       85 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["NodeViewTypes"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R3 K8 ["React"]
       18 CALL                             R2 1 1
       19 DUPCLOSURE                       R3 K9 [PROTO_0]
       20 DUPTABLE                         R4 K17 [{["targetNodeId"] = , ["anchorPosition"] = , ["showMenu"], ["hideMenu"], ["isMenuOpen"], ["onShowInExplorer"] = }]
       21 SETTABLEKS                       R3 R4 K13 ["showMenu"]
       23 SETTABLEKS                       R3 R4 K14 ["hideMenu"]
       25 DUPCLOSURE                       R5 K18 [PROTO_1]
       26 SETTABLEKS                       R5 R4 K15 ["isMenuOpen"]
       28 GETTABLEKS                       R5 R2 K19 ["createContext"]
       30 MOVE                             R6 R4
       31 CALL                             R5 1 1
       32 DUPCLOSURE                       R6 K20 [PROTO_6]
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R5
       35 DUPTABLE                         R7 K23 [{"Context", "Provider"}]
       36 SETTABLEKS                       R5 R7 K21 ["Context"]
       38 SETTABLEKS                       R6 R7 K22 ["Provider"]
       40 RETURN                           R7 1
