PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 2
        2 MOVE                             R4 R0
        3 JUMPIFNOT                        R1 ; [+7]
        4 GETIMPORT                        R5 K2 [table.clone]
        6 MOVE                             R6 R0
        7 CALL                             R5 1 1
        8 MOVE                             R4 R5
        9 SETTABLEKS                       R1 R4 K3 ["ref"]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K4 ["FoundationPopoverPluginSupport"]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K5 ["FoundationPopoverPluginSecurityGate"]
       17 JUMPIFNOT                        R6 ; [+5]
       18 MOVE                             R6 R5
       19 JUMPIFNOT                        R6 ; [+2]
       20 GETUPVAL                         R6 2
       21 CALL                             R6 0 1
       22 MOVE                             R5 R6
       23 JUMPIFNOT                        R5 ; [+8]
       24 JUMPIFNOT                        R3 ; [+7]
       25 GETUPVAL                         R6 3
       26 GETTABLEKS                       R6 R6 K6 ["createElement"]
       28 GETUPVAL                         R7 4
       29 MOVE                             R8 R4
       30 CALL                             R6 2 -1
       31 RETURN                           R6 -1
       32 GETUPVAL                         R6 3
       33 GETTABLEKS                       R6 R6 K6 ["createElement"]
       35 GETUPVAL                         R7 5
       36 MOVE                             R8 R4
       37 CALL                             R6 2 -1
       38 RETURN                           R6 -1

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
       16 GETIMPORT                        R4 K1 [script]
       18 GETTABLEKS                       R4 R4 K4 ["Parent"]
       20 GETTABLEKS                       R4 R4 K8 ["Content"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETIMPORT                        R5 K1 [script]
       27 GETTABLEKS                       R5 R5 K4 ["Parent"]
       29 GETTABLEKS                       R5 R5 K9 ["ContentPlugin"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R0 K10 ["Utility"]
       36 GETTABLEKS                       R6 R6 K11 ["Flags"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R0 K10 ["Utility"]
       43 GETTABLEKS                       R7 R7 K12 ["isPluginSecurity"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K6 [require]
       48 GETTABLEKS                       R8 R0 K13 ["Providers"]
       50 GETTABLEKS                       R8 R8 K14 ["Plugin"]
       52 GETTABLEKS                       R8 R8 K15 ["usePlugin"]
       54 CALL                             R7 1 1
       55 DUPCLOSURE                       R8 K16 [PROTO_0]
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R3
       62 GETTABLEKS                       R9 R2 K17 ["forwardRef"]
       64 MOVE                             R10 R8
       65 CALL                             R9 1 -1
       66 RETURN                           R9 -1
