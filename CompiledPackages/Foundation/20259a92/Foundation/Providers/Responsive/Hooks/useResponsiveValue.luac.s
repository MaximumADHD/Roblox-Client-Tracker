PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 CALL                             R3 0 1
        5 GETTABLEKS                       R5 R3 K0 ["config"]
        7 GETTABLEKS                       R4 R5 K1 ["breakpoint"]
        9 GETTABLEKS                       R6 R4 K2 ["shortNames"]
       11 GETTABLE                         R5 R6 R2
       12 GETTABLE                         R6 R1 R5
       13 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R3 K7 ["Breakpoint"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Providers"]
       18 GETTABLEKS                       R4 R5 K9 ["Responsive"]
       20 GETTABLEKS                       R3 R4 K10 ["ResponsiveContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Components"]
       27 GETTABLEKS                       R4 R5 K12 ["Types"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETIMPORT                        R7 K1 [script]
       34 GETTABLEKS                       R6 R7 K13 ["Parent"]
       36 GETTABLEKS                       R5 R6 K14 ["useBreakpoint"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R8 R0 K8 ["Providers"]
       43 GETTABLEKS                       R7 R8 K9 ["Responsive"]
       45 GETTABLEKS                       R6 R7 K15 ["useResponsive"]
       47 CALL                             R5 1 1
       48 DUPCLOSURE                       R6 K16 [PROTO_0]
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R5
       51 RETURN                           R6 1
