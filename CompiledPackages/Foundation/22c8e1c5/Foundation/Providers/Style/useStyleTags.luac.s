PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+16]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["FoundationUseStyleSheetRegistry"]
        6 JUMPIFNOT                        R0 ; [+8]
        7 GETUPVAL                         R0 2
        8 GETIMPORT                        R1 K3 [string.split]
       10 GETUPVAL                         R2 0
       11 LOADK                            R3 K4 [" "]
       12 CALL                             R1 2 -1
       13 CALL                             R0 -1 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R0 2
       16 GETUPVAL                         R1 0
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["useContext"]
        6 GETUPVAL                         R3 2
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K1 ["useLayoutEffect"]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          VAL R2
       15 NEWTABLE                         R5 0 2
       17 MOVE                             R6 R1
       18 GETUPVAL                         R8 3
       19 GETTABLEKS                       R8 R8 K2 ["FoundationUseStyleSheetRegistry"]
       21 JUMPIFNOT                        R8 ; [+2]
       22 MOVE                             R7 R2
       23 JUMP                             ; [+1]
       24 LOADNIL                          R7
       25 SETLIST                          R5 R6 2 [1]
       27 CALL                             R3 2 0
       28 RETURN                           R1 1

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
       20 GETTABLEKS                       R5 R0 K8 ["TagsContext"]
       22 CALL                             R4 1 1
       23 GETIMPORT                        R5 K6 [require]
       25 GETTABLEKS                       R6 R1 K9 ["Utility"]
       27 GETTABLEKS                       R6 R6 K10 ["getFormattedTags"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K6 [require]
       32 GETTABLEKS                       R7 R1 K9 ["Utility"]
       34 GETTABLEKS                       R7 R7 K11 ["Flags"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K6 [require]
       39 GETTABLEKS                       R8 R1 K12 ["Components"]
       41 GETTABLEKS                       R8 R8 K13 ["Types"]
       43 CALL                             R7 1 1
       44 DUPCLOSURE                       R8 K14 [PROTO_1]
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R6
       49 RETURN                           R8 1
