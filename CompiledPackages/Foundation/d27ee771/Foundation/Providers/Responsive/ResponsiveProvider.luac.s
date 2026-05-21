PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K0 ["createElement"]
        7 GETUPVAL                         R3 3
        8 GETTABLEKS                       R3 R3 K1 ["Provider"]
       10 DUPTABLE                         R4 K3 [{"value"}]
       11 SETTABLEKS                       R1 R4 K2 ["value"]
       13 GETTABLEKS                       R5 R1 K4 ["children"]
       15 CALL                             R2 3 -1
       16 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K1 [script]
        7 LOADK                            R3 K3 ["Foundation"]
        8 NAMECALL                         R1 R1 K4 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETTABLEKS                       R2 R1 K2 ["Parent"]
       13 GETIMPORT                        R3 K6 [require]
       15 GETTABLEKS                       R4 R2 K7 ["React"]
       17 CALL                             R3 1 1
       18 GETIMPORT                        R4 K6 [require]
       20 GETTABLEKS                       R5 R0 K8 ["ResponsiveContext"]
       22 CALL                             R4 1 1
       23 GETIMPORT                        R5 K6 [require]
       25 GETTABLEKS                       R6 R1 K9 ["Utility"]
       27 GETTABLEKS                       R6 R6 K10 ["Responsive"]
       29 GETTABLEKS                       R6 R6 K11 ["BreakpointConfig"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K6 [require]
       34 GETTABLEKS                       R7 R1 K9 ["Utility"]
       36 GETTABLEKS                       R7 R7 K10 ["Responsive"]
       38 GETTABLEKS                       R7 R7 K12 ["GridConfig"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K6 [require]
       43 GETTABLEKS                       R8 R1 K9 ["Utility"]
       45 GETTABLEKS                       R8 R8 K13 ["withDefaults"]
       47 CALL                             R7 1 1
       48 DUPTABLE                         R8 K15 [{"config"}]
       49 DUPTABLE                         R9 K18 [{"breakpoint", "grid"}]
       50 SETTABLEKS                       R5 R9 K16 ["breakpoint"]
       52 SETTABLEKS                       R6 R9 K17 ["grid"]
       54 SETTABLEKS                       R9 R8 K14 ["config"]
       56 DUPCLOSURE                       R9 K19 [PROTO_0]
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R4
       61 RETURN                           R9 1
