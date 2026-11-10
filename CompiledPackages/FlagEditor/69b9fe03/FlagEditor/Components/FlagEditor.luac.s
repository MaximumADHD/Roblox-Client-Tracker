PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["onSaved"]
        3 GETTABLEKS                       R3 R0 K1 ["reloadToken"]
        5 CALL                             R1 2 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["createElement"]
        9 GETUPVAL                         R3 2
       10 DUPTABLE                         R4 K7 [{"flags", "overrides", "saveOverrides", "onSaved", "Size"}]
       11 GETTABLEKS                       R5 R1 K3 ["flags"]
       13 SETTABLEKS                       R5 R4 K3 ["flags"]
       15 GETTABLEKS                       R5 R1 K4 ["overrides"]
       17 SETTABLEKS                       R5 R4 K4 ["overrides"]
       19 GETTABLEKS                       R5 R1 K5 ["saveOverrides"]
       21 SETTABLEKS                       R5 R4 K5 ["saveOverrides"]
       23 GETTABLEKS                       R5 R0 K0 ["onSaved"]
       25 SETTABLEKS                       R5 R4 K0 ["onSaved"]
       27 GETTABLEKS                       R5 R0 K6 ["Size"]
       29 SETTABLEKS                       R5 R4 K6 ["Size"]
       31 CALL                             R2 2 -1
       32 RETURN                           R2 -1

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
       25 GETTABLEKS                       R5 R0 K9 ["Hooks"]
       27 GETTABLEKS                       R5 R5 K10 ["useFlags"]
       29 CALL                             R4 1 1
       30 DUPCLOSURE                       R5 K11 [PROTO_0]
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R3
       34 RETURN                           R5 1
