PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETIMPORT                        R3 K1 [next]
        6 MOVE                             R4 R1
        7 CALL                             R3 1 1
        8 JUMPIFEQKNIL                     R3 ; [+12]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K2 ["createElement"]
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R4 R4 K3 ["Fragment"]
       16 LOADNIL                          R5
       17 GETTABLEKS                       R6 R0 K4 ["children"]
       19 CALL                             R3 3 -1
       20 RETURN                           R3 -1
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R3 R3 K2 ["createElement"]
       24 GETUPVAL                         R4 3
       25 DUPTABLE                         R5 K6 [{"theme"}]
       26 SETTABLEKS                       R2 R5 K5 ["theme"]
       28 GETTABLEKS                       R6 R0 K4 ["children"]
       30 CALL                             R3 3 -1
       31 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K4 ["Parent"]
       20 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R4 R0 K2 ["UI"]
       27 GETTABLEKS                       R4 R4 K9 ["Hooks"]
       29 GETTABLEKS                       R4 R4 K10 ["useStudioThemeName"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R2 K11 ["FoundationProvider"]
       34 GETTABLEKS                       R5 R2 K9 ["Hooks"]
       36 GETTABLEKS                       R5 R5 K12 ["useTokens"]
       38 DUPCLOSURE                       R6 K13 [PROTO_0]
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R4
       43 RETURN                           R6 1
