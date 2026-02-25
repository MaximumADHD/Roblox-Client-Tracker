PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R2 R3 K0 ["useState"]
        7 LOADNIL                          R3
        8 CALL                             R2 1 2
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R4 R5 K1 ["createElement"]
       12 GETUPVAL                         R6 3
       13 GETTABLEKS                       R5 R6 K2 ["Provider"]
       15 DUPTABLE                         R6 K4 [{"value"}]
       16 DUPTABLE                         R7 K9 [{"anchor", "setAnchor", "isOpen", "testId"}]
       17 SETTABLEKS                       R2 R7 K5 ["anchor"]
       19 SETTABLEKS                       R3 R7 K6 ["setAnchor"]
       21 GETTABLEKS                       R8 R1 K7 ["isOpen"]
       23 SETTABLEKS                       R8 R7 K7 ["isOpen"]
       25 GETTABLEKS                       R8 R1 K8 ["testId"]
       27 SETTABLEKS                       R8 R7 K8 ["testId"]
       29 SETTABLEKS                       R7 R6 K3 ["value"]
       31 GETTABLEKS                       R7 R1 K10 ["children"]
       33 CALL                             R4 3 -1
       34 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Utility"]
       18 GETTABLEKS                       R4 R5 K9 ["withDefaults"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETIMPORT                        R7 K1 [script]
       25 GETTABLEKS                       R6 R7 K4 ["Parent"]
       27 GETTABLEKS                       R5 R6 K10 ["PopoverContext"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R7 R0 K11 ["Components"]
       34 GETTABLEKS                       R6 R7 K12 ["Types"]
       36 CALL                             R5 1 1
       37 DUPTABLE                         R6 K14 [{"testId"}]
       38 LOADK                            R7 K15 ["--foundation-popover"]
       39 SETTABLEKS                       R7 R6 K13 ["testId"]
       41 DUPCLOSURE                       R7 K16 [PROTO_0]
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R6
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R4
       46 RETURN                           R7 1
