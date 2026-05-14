PROTO_0:
        0 GETUPVAL                         R6 0
        1 MOVE                             R7 R1
        2 MOVE                             R8 R2
        3 MOVE                             R9 R4
        4 CALL                             R6 3 1
        5 MOVE                             R7 R6
        6 LOADNIL                          R8
        7 LOADNIL                          R9
        8 FORGPREP                         R7
        9 GETUPVAL                         R13 1
       10 GETTABLEKS                       R13 R13 K0 ["FoundationDisableTokenScaling"]
       12 JUMPIFNOT                        R13 ; [+2]
       13 MOVE                             R12 R11
       14 JUMP                             ; [+4]
       15 GETUPVAL                         R12 2
       16 MOVE                             R13 R11
       17 MOVE                             R14 R3
       18 CALL                             R12 2 1
       19 MOVE                             R15 R10
       20 MOVE                             R16 R12
       21 NAMECALL                         R13 R0 K1 ["SetAttribute"]
       23 CALL                             R13 3 0
       24 JUMPIFNOT                        R5 ; [+1]
       25 SETTABLE                         R12 R5 R10
       26 FORGLOOP                         R7 2 ; [-18]
       28 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R2 K7 ["Device"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Utility"]
       18 GETTABLEKS                       R3 R3 K9 ["Flags"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Enums"]
       25 GETTABLEKS                       R4 R4 K10 ["Theme"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Providers"]
       32 GETTABLEKS                       R5 R5 K12 ["Style"]
       34 GETTABLEKS                       R5 R5 K13 ["Tokens"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETIMPORT                        R6 K1 [script]
       41 GETTABLEKS                       R6 R6 K14 ["Parent"]
       43 GETTABLEKS                       R6 R6 K15 ["createStyleSheetRules"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETIMPORT                        R7 K1 [script]
       50 GETTABLEKS                       R7 R7 K14 ["Parent"]
       52 GETTABLEKS                       R7 R7 K16 ["getOverrideAttributes"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K8 ["Utility"]
       59 GETTABLEKS                       R8 R8 K17 ["scaleValue"]
       61 CALL                             R7 1 1
       62 DUPCLOSURE                       R8 K18 [PROTO_0]
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R7
       66 RETURN                           R8 1
