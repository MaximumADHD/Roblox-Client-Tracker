PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K0 ["useState"]
        7 LOADNIL                          R3
        8 CALL                             R2 1 2
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K0 ["useState"]
       12 LOADNIL                          R5
       13 CALL                             R4 1 2
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K1 ["createElement"]
       17 GETUPVAL                         R7 3
       18 GETTABLEKS                       R7 R7 K2 ["Provider"]
       20 DUPTABLE                         R8 K4 [{"value"}]
       21 DUPTABLE                         R9 K11 [{"anchor", "setAnchor", "anchorUri", "setAnchorUri", "isOpen", "testId"}]
       22 SETTABLEKS                       R2 R9 K5 ["anchor"]
       24 SETTABLEKS                       R3 R9 K6 ["setAnchor"]
       26 SETTABLEKS                       R4 R9 K7 ["anchorUri"]
       28 SETTABLEKS                       R5 R9 K8 ["setAnchorUri"]
       30 GETTABLEKS                       R10 R1 K9 ["isOpen"]
       32 SETTABLEKS                       R10 R9 K9 ["isOpen"]
       34 GETTABLEKS                       R10 R1 K10 ["testId"]
       36 SETTABLEKS                       R10 R9 K10 ["testId"]
       38 SETTABLEKS                       R9 R8 K3 ["value"]
       40 GETTABLEKS                       R9 R1 K12 ["children"]
       42 CALL                             R6 3 -1
       43 RETURN                           R6 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Utility"]
       18 GETTABLEKS                       R4 R4 K9 ["withDefaults"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETIMPORT                        R5 K1 [script]
       25 GETTABLEKS                       R5 R5 K4 ["Parent"]
       27 GETTABLEKS                       R5 R5 K10 ["PopoverContext"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K8 ["Utility"]
       34 GETTABLEKS                       R6 R6 K11 ["Plugin"]
       36 GETTABLEKS                       R6 R6 K12 ["StudioUri"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R0 K13 ["Components"]
       43 GETTABLEKS                       R7 R7 K14 ["Types"]
       45 CALL                             R6 1 1
       46 DUPTABLE                         R7 K17 [{["testId"] = "--foundation-popover"}]
       47 DUPCLOSURE                       R8 K18 [PROTO_0]
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R7
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R4
       52 RETURN                           R8 1
