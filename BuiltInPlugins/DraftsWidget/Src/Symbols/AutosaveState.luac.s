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
       18 DUPTABLE                         R2 K11 [{"Saved", "Saving", "SaveFailed"}]
       19 GETTABLEKS                       R3 R1 K12 ["named"]
       21 LOADK                            R4 K13 ["AutosaveStateSaved"]
       22 CALL                             R3 1 1
       23 SETTABLEKS                       R3 R2 K8 ["Saved"]
       25 GETTABLEKS                       R3 R1 K12 ["named"]
       27 LOADK                            R4 K14 ["AutosaveStateSaving"]
       28 CALL                             R3 1 1
       29 SETTABLEKS                       R3 R2 K9 ["Saving"]
       31 GETTABLEKS                       R3 R1 K12 ["named"]
       33 LOADK                            R4 K15 ["AutosaveStateSaveFailed"]
       34 CALL                             R3 1 1
       35 SETTABLEKS                       R3 R2 K10 ["SaveFailed"]
       37 RETURN                           R2 1
