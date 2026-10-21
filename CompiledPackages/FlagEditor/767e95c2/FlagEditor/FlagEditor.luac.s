PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["onSaved"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
        7 GETUPVAL                         R3 2
        8 DUPTABLE                         R4 K6 [{"flags", "overrides", "saveOverrides", "onSaved", "Size"}]
        9 GETTABLEKS                       R5 R1 K2 ["flags"]
       11 SETTABLEKS                       R5 R4 K2 ["flags"]
       13 GETTABLEKS                       R5 R1 K3 ["overrides"]
       15 SETTABLEKS                       R5 R4 K3 ["overrides"]
       17 GETTABLEKS                       R5 R1 K4 ["saveOverrides"]
       19 SETTABLEKS                       R5 R4 K4 ["saveOverrides"]
       21 GETTABLEKS                       R5 R0 K0 ["onSaved"]
       23 SETTABLEKS                       R5 R4 K0 ["onSaved"]
       25 GETTABLEKS                       R5 R0 K5 ["Size"]
       27 SETTABLEKS                       R5 R4 K5 ["Size"]
       29 CALL                             R2 2 -1
       30 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FlagEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETIMPORT                        R4 K1 [script]
       18 GETTABLEKS                       R4 R4 K4 ["Parent"]
       20 GETTABLEKS                       R4 R4 K8 ["FlagEditorView"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETIMPORT                        R5 K1 [script]
       27 GETTABLEKS                       R5 R5 K4 ["Parent"]
       29 GETTABLEKS                       R5 R5 K9 ["useFlags"]
       31 CALL                             R4 1 1
       32 DUPCLOSURE                       R5 K10 [PROTO_0]
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R3
       36 RETURN                           R5 1
