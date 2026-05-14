PROTO_0:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R0 R1
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R4 0
        7 GETTABLE                         R3 R0 R4
        8 JUMPIFNOTEQKNIL                  R3 ; [+7]
       10 GETUPVAL                         R2 1
       11 GETUPVAL                         R3 2
       12 GETUPVAL                         R4 0
       13 CALL                             R3 1 -1
       14 CALL                             R2 -1 1
       15 JUMP                             ; [+4]
       16 GETUPVAL                         R2 1
       17 GETUPVAL                         R4 0
       18 GETTABLE                         R3 R0 R4
       19 CALL                             R2 1 1
       20 SETTABLE                         R2 R0 R1
       21 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useState"]
        3 NEWTABLE                         R3 0 0
        5 CALL                             R2 1 2
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K1 ["useCallback"]
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          VAL R3
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R0
       13 NEWTABLE                         R6 0 2
       15 MOVE                             R7 R1
       16 MOVE                             R8 R0
       17 SETLIST                          R6 R7 2 [1]
       19 CALL                             R4 2 1
       20 GETTABLE                         R6 R2 R1
       21 JUMPIFNOTEQKNIL                  R6 ; [+5]
       23 MOVE                             R5 R0
       24 MOVE                             R6 R1
       25 CALL                             R5 1 1
       26 JUMP                             ; [+1]
       27 GETTABLE                         R5 R2 R1
       28 MOVE                             R6 R4
       29 RETURN                           R5 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_2]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
