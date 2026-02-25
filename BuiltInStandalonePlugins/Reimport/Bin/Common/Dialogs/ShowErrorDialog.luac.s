PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K2 [{"plugin", "dialogConfig"}]
        2 GETUPVAL                         R3 1
        3 SETTABLEKS                       R3 R2 K0 ["plugin"]
        5 DUPTABLE                         R3 K5 [{"kind", "props"}]
        6 LOADK                            R4 K6 ["error"]
        7 SETTABLEKS                       R4 R3 K3 ["kind"]
        9 SETTABLEKS                       R0 R3 K4 ["props"]
       11 SETTABLEKS                       R3 R2 K1 ["dialogConfig"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["fromProps"]
        3 DUPTABLE                         R2 K2 [{"errors"}]
        4 SETTABLEKS                       R0 R2 K1 ["errors"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [script]
        9 LOADK                            R3 K4 ["Plugin"]
       10 NAMECALL                         R1 R1 K5 ["FindFirstAncestorWhichIsA"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K7 [require]
       15 GETTABLEKS                       R5 R0 K8 ["Src"]
       17 GETTABLEKS                       R4 R5 K9 ["Dialogs"]
       19 GETTABLEKS                       R3 R4 K10 ["ErrorDialog"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K7 [require]
       24 GETTABLEKS                       R6 R0 K11 ["Bin"]
       26 GETTABLEKS                       R5 R6 K12 ["Common"]
       28 GETTABLEKS                       R4 R5 K13 ["RenderUi"]
       30 CALL                             R3 1 1
       31 NEWTABLE                         R4 2 0
       33 DUPCLOSURE                       R5 K14 [PROTO_0]
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R1
       36 SETTABLEKS                       R5 R4 K15 ["fromProps"]
       38 DUPCLOSURE                       R5 K16 [PROTO_1]
       39 CAPTURE                          VAL R4
       40 SETTABLEKS                       R5 R4 K17 ["fromErrors"]
       42 RETURN                           R4 1
