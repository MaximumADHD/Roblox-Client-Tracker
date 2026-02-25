MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Rodux"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R5 K1 [script]
       18 GETTABLEKS                       R4 R5 K8 ["Parent"]
       20 GETTABLEKS                       R3 R4 K9 ["DebugData"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETIMPORT                        R6 K1 [script]
       27 GETTABLEKS                       R5 R6 K8 ["Parent"]
       29 GETTABLEKS                       R4 R5 K10 ["Status"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R1 K11 ["combineReducers"]
       34 DUPTABLE                         R5 K12 [{"DebugData", "Status"}]
       35 SETTABLEKS                       R2 R5 K9 ["DebugData"]
       37 SETTABLEKS                       R3 R5 K10 ["Status"]
       39 CALL                             R4 1 -1
       40 RETURN                           R4 -1
