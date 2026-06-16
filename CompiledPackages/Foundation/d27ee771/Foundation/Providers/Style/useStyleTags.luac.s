PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 0
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["FoundationDisableStylingPolyfill"]
        6 JUMPIF                           R2 ; [+1]
        7 RETURN                           R1 1
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K1 ["useContext"]
       11 GETUPVAL                         R3 3
       12 CALL                             R2 1 1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K2 ["useLayoutEffect"]
       16 NEWCLOSURE                       R4 P0
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R2
       19 NEWTABLE                         R5 0 1
       21 MOVE                             R6 R1
       22 SETLIST                          R5 R6 1 [1]
       24 CALL                             R3 2 0
       25 RETURN                           R1 1

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
       15 GETTABLEKS                       R4 R1 K7 ["Utility"]
       17 GETTABLEKS                       R4 R4 K8 ["Flags"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K6 [require]
       22 GETTABLEKS                       R5 R1 K7 ["Utility"]
       24 GETTABLEKS                       R5 R5 K9 ["getFormattedTags"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K6 [require]
       29 GETTABLEKS                       R6 R0 K10 ["TagsContext"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K6 [require]
       34 GETTABLEKS                       R7 R2 K11 ["React"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K6 [require]
       39 GETTABLEKS                       R8 R1 K12 ["Components"]
       41 GETTABLEKS                       R8 R8 K13 ["Types"]
       43 CALL                             R7 1 1
       44 DUPCLOSURE                       R8 K14 [PROTO_1]
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R5
       49 RETURN                           R8 1
