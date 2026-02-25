MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R3 R4 K6 ["Util"]
       15 GETTABLEKS                       R2 R3 K7 ["Symbol"]
       17 CALL                             R1 1 1
       18 DUPTABLE                         R2 K11 [{"Uncommitted", "Committing", "Committed"}]
       19 GETTABLEKS                       R3 R1 K12 ["named"]
       21 LOADK                            R4 K13 ["CommitStatusUncommitted"]
       22 CALL                             R3 1 1
       23 SETTABLEKS                       R3 R2 K8 ["Uncommitted"]
       25 GETTABLEKS                       R3 R1 K12 ["named"]
       27 LOADK                            R4 K14 ["CommitStatusCommitting"]
       28 CALL                             R3 1 1
       29 SETTABLEKS                       R3 R2 K9 ["Committing"]
       31 GETTABLEKS                       R3 R1 K12 ["named"]
       33 LOADK                            R4 K15 ["CommitStatusCommitted"]
       34 CALL                             R3 1 1
       35 SETTABLEKS                       R3 R2 K10 ["Committed"]
       37 RETURN                           R2 1
