PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K2 [{"plugin", "dialogConfig"}]
        2 GETUPVAL                         R3 1
        3 SETTABLEKS                       R3 R2 K0 ["plugin"]
        5 DUPTABLE                         R3 K6 [{["kind"] = "error", ["props"]}]
        6 SETTABLEKS                       R0 R3 K5 ["props"]
        8 SETTABLEKS                       R3 R2 K1 ["dialogConfig"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["fromProps"]
        3 DUPTABLE                         R3 K3 [{"errors", "target"}]
        4 SETTABLEKS                       R0 R3 K1 ["errors"]
        6 SETTABLEKS                       R1 R3 K2 ["target"]
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

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
       15 GETTABLEKS                       R3 R0 K8 ["Src"]
       17 GETTABLEKS                       R3 R3 K9 ["Dialogs"]
       19 GETTABLEKS                       R3 R3 K10 ["ErrorDialog"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K7 [require]
       24 GETTABLEKS                       R4 R0 K11 ["Lib"]
       26 GETTABLEKS                       R4 R4 K12 ["DialogRegistry"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K7 [require]
       31 GETTABLEKS                       R5 R0 K11 ["Lib"]
       33 GETTABLEKS                       R5 R5 K12 ["DialogRegistry"]
       35 GETTABLEKS                       R5 R5 K13 ["Types"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K7 [require]
       40 GETTABLEKS                       R6 R0 K14 ["Bin"]
       42 GETTABLEKS                       R6 R6 K15 ["Common"]
       44 GETTABLEKS                       R6 R6 K16 ["RenderUi"]
       46 CALL                             R5 1 1
       47 NEWTABLE                         R6 2 0
       49 DUPCLOSURE                       R7 K17 [PROTO_0]
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R1
       52 SETTABLEKS                       R7 R6 K18 ["fromProps"]
       54 DUPCLOSURE                       R7 K19 [PROTO_1]
       55 CAPTURE                          VAL R6
       56 SETTABLEKS                       R7 R6 K20 ["fromErrors"]
       58 GETTABLEKS                       R8 R3 K21 ["errors"]
       60 GETTABLEKS                       R8 R8 K22 ["register"]
       62 GETTABLEKS                       R9 R6 K20 ["fromErrors"]
       64 CALL                             R8 1 0
       65 RETURN                           R6 1
