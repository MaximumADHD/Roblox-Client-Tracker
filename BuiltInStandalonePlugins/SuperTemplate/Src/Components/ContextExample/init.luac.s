PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["createElement"]
       10 GETUPVAL                         R3 2
       11 DUPTABLE                         R4 K4 [{"tag"}]
       12 LOADK                            R5 K5 ["auto-xy col gap-medium bg-surface-0 radius-medium"]
       13 SETTABLEKS                       R5 R4 K3 ["tag"]
       15 DUPTABLE                         R5 K7 [{"Label"}]
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R6 R7 K2 ["createElement"]
       19 GETUPVAL                         R7 3
       20 DUPTABLE                         R8 K10 [{"Text", "tag", "testId"}]
       21 ORK                              R9 R1 K11 ["No context value"]
       22 SETTABLEKS                       R9 R8 K8 ["Text"]
       24 LOADK                            R9 K12 ["auto-xy content-emphasis"]
       25 SETTABLEKS                       R9 R8 K3 ["tag"]
       27 LOADK                            R9 K13 ["--context-example-text"]
       28 SETTABLEKS                       R9 R8 K9 ["testId"]
       30 CALL                             R6 2 1
       31 SETTABLEKS                       R6 R5 K6 ["Label"]
       33 CALL                             R2 3 -1
       34 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SuperTemplate"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R5 K1 [script]
       25 GETTABLEKS                       R4 R5 K9 ["ContextExampleContext"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["View"]
       30 GETTABLEKS                       R5 R2 K11 ["Text"]
       32 DUPCLOSURE                       R6 K12 [PROTO_0]
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R5
       37 RETURN                           R6 1
