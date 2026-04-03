MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["NavigationSymbol"]
        9 CALL                             R0 1 1
       10 MOVE                             R1 R0
       11 LOADK                            R2 K6 ["NONE"]
       12 CALL                             R1 1 1
       13 MOVE                             R2 R0
       14 LOADK                            R3 K7 ["INITIAL_ROUTE"]
       15 CALL                             R2 1 1
       16 MOVE                             R3 R0
       17 LOADK                            R4 K8 ["ORDER"]
       18 CALL                             R3 1 1
       19 MOVE                             R4 R0
       20 LOADK                            R5 K9 ["HISTORY"]
       21 CALL                             R4 1 1
       22 DUPTABLE                         R5 K14 [{"None", "InitialRoute", "Order", "History"}]
       23 SETTABLEKS                       R1 R5 K10 ["None"]
       25 SETTABLEKS                       R2 R5 K11 ["InitialRoute"]
       27 SETTABLEKS                       R3 R5 K12 ["Order"]
       29 SETTABLEKS                       R4 R5 K13 ["History"]
       31 RETURN                           R5 1
