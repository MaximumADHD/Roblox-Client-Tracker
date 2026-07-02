PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 MOVE                             R3 R1
        4 MOVE                             R4 R0
        5 MOVE                             R5 R2
        6 CALL                             R3 2 3
        7 GETUPVAL                         R7 1
        8 GETTABLEKS                       R7 R7 K0 ["FoundationMigrateCryoToDash"]
       10 JUMPIFNOT                        R7 ; [+8]
       11 GETUPVAL                         R6 2
       12 GETTABLEKS                       R6 R6 K1 ["joinArrays"]
       14 MOVE                             R7 R3
       15 MOVE                             R8 R4
       16 MOVE                             R9 R5
       17 CALL                             R6 3 1
       18 JUMP                             ; [+9]
       19 GETUPVAL                         R6 3
       20 GETTABLEKS                       R6 R6 K2 ["List"]
       22 GETTABLEKS                       R6 R6 K3 ["join"]
       24 MOVE                             R7 R3
       25 MOVE                             R8 R4
       26 MOVE                             R9 R5
       27 CALL                             R6 3 1
       28 MOVE                             R7 R6
       29 MOVE                             R8 R3
       30 MOVE                             R9 R4
       31 MOVE                             R10 R5
       32 RETURN                           R7 4

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Cryo"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Providers"]
       23 GETTABLEKS                       R5 R5 K10 ["Style"]
       25 GETTABLEKS                       R5 R5 K11 ["Tokens"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETIMPORT                        R6 K1 [script]
       32 GETTABLEKS                       R6 R6 K4 ["Parent"]
       34 GETTABLEKS                       R6 R6 K12 ["Rules"]
       36 GETTABLEKS                       R6 R6 K13 ["Types"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETIMPORT                        R7 K1 [script]
       43 GETTABLEKS                       R7 R7 K4 ["Parent"]
       45 GETTABLEKS                       R7 R7 K14 ["formatTokens"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K6 [require]
       50 GETTABLEKS                       R8 R0 K15 ["Utility"]
       52 GETTABLEKS                       R8 R8 K16 ["Flags"]
       54 CALL                             R7 1 1
       55 DUPCLOSURE                       R8 K17 [PROTO_0]
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R2
       60 RETURN                           R8 1
