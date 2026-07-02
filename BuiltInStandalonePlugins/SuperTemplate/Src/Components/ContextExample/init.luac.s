PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["createElement"]
       10 GETUPVAL                         R3 2
       11 DUPTABLE                         R4 K5 [{["tag"] = "col gap-medium auto-xy radius-medium bg-surface-0"}]
       12 DUPTABLE                         R5 K7 [{"Label"}]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K2 ["createElement"]
       16 GETUPVAL                         R7 3
       17 DUPTABLE                         R8 K12 [{["Text"], ["tag"] = "auto-xy content-emphasis", ["testId"] = "--context-example-text"}]
       18 ORK                              R9 R1 K13 ["No context value"]
       19 SETTABLEKS                       R9 R8 K8 ["Text"]
       21 CALL                             R6 2 1
       22 SETTABLEKS                       R6 R5 K6 ["Label"]
       24 CALL                             R2 3 -1
       25 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SuperTemplate"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K9 ["ContextExampleContext"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["View"]
       30 GETTABLEKS                       R5 R2 K11 ["Text"]
       32 DUPCLOSURE                       R6 K12 [PROTO_0]
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R5
       37 RETURN                           R6 1
