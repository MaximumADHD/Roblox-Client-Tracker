MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Util"]
       15 GETTABLEKS                       R2 R2 K7 ["Symbol"]
       17 CALL                             R1 1 1
       18 DUPTABLE                         R2 K12 [{"Outdated", "Deleted", "Committed", "Autosaved"}]
       19 GETTABLEKS                       R3 R1 K13 ["named"]
       21 LOADK                            R4 K14 ["DraftStateOudated"]
       22 CALL                             R3 1 1
       23 SETTABLEKS                       R3 R2 K8 ["Outdated"]
       25 GETTABLEKS                       R3 R1 K13 ["named"]
       27 LOADK                            R4 K15 ["DraftStateDeleted"]
       28 CALL                             R3 1 1
       29 SETTABLEKS                       R3 R2 K9 ["Deleted"]
       31 GETTABLEKS                       R3 R1 K13 ["named"]
       33 LOADK                            R4 K16 ["DraftStateCommitted"]
       34 CALL                             R3 1 1
       35 SETTABLEKS                       R3 R2 K10 ["Committed"]
       37 GETTABLEKS                       R3 R1 K13 ["named"]
       39 LOADK                            R4 K17 ["DraftStateAutosaved"]
       40 CALL                             R3 1 1
       41 SETTABLEKS                       R3 R2 K11 ["Autosaved"]
       43 RETURN                           R2 1
