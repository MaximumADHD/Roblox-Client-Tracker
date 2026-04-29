MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["Symbol"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R4 K3 [script]
       14 GETTABLEKS                       R3 R4 K4 ["Parent"]
       16 GETTABLEKS                       R2 R3 K6 ["strict"]
       18 CALL                             R1 1 1
       19 MOVE                             R2 R1
       20 DUPTABLE                         R3 K16 [{"Init", "Render", "ShouldUpdate", "WillUpdate", "DidMount", "DidUpdate", "WillUnmount", "ReconcileChildren", "Idle"}]
       21 GETTABLEKS                       R4 R0 K17 ["named"]
       23 LOADK                            R5 K18 ["init"]
       24 CALL                             R4 1 1
       25 SETTABLEKS                       R4 R3 K7 ["Init"]
       27 GETTABLEKS                       R4 R0 K17 ["named"]
       29 LOADK                            R5 K19 ["render"]
       30 CALL                             R4 1 1
       31 SETTABLEKS                       R4 R3 K8 ["Render"]
       33 GETTABLEKS                       R4 R0 K17 ["named"]
       35 LOADK                            R5 K20 ["shouldUpdate"]
       36 CALL                             R4 1 1
       37 SETTABLEKS                       R4 R3 K9 ["ShouldUpdate"]
       39 GETTABLEKS                       R4 R0 K17 ["named"]
       41 LOADK                            R5 K21 ["willUpdate"]
       42 CALL                             R4 1 1
       43 SETTABLEKS                       R4 R3 K10 ["WillUpdate"]
       45 GETTABLEKS                       R4 R0 K17 ["named"]
       47 LOADK                            R5 K22 ["didMount"]
       48 CALL                             R4 1 1
       49 SETTABLEKS                       R4 R3 K11 ["DidMount"]
       51 GETTABLEKS                       R4 R0 K17 ["named"]
       53 LOADK                            R5 K23 ["didUpdate"]
       54 CALL                             R4 1 1
       55 SETTABLEKS                       R4 R3 K12 ["DidUpdate"]
       57 GETTABLEKS                       R4 R0 K17 ["named"]
       59 LOADK                            R5 K24 ["willUnmount"]
       60 CALL                             R4 1 1
       61 SETTABLEKS                       R4 R3 K13 ["WillUnmount"]
       63 GETTABLEKS                       R4 R0 K17 ["named"]
       65 LOADK                            R5 K25 ["reconcileChildren"]
       66 CALL                             R4 1 1
       67 SETTABLEKS                       R4 R3 K14 ["ReconcileChildren"]
       69 GETTABLEKS                       R4 R0 K17 ["named"]
       71 LOADK                            R5 K26 ["idle"]
       72 CALL                             R4 1 1
       73 SETTABLEKS                       R4 R3 K15 ["Idle"]
       75 LOADK                            R4 K27 ["ComponentLifecyclePhase"]
       76 CALL                             R2 2 1
       77 RETURN                           R2 1
