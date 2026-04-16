PROTO_0:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        TYPEOF R2 ; [+2]
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["function"] ; [+8]
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R2 0
        9 GETUPVAL                         R4 1
       10 GETTABLE                         R3 R0 R4
       11 CALL                             R2 1 1
       12 SETTABLE                         R2 R0 R1
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 1
       15 GETUPVAL                         R2 0
       16 SETTABLE                         R2 R0 R1
       17 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["editThisContent"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["contentId"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["useCallback"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R2
        6 NEWTABLE                         R5 0 2
        8 GETTABLEKS                       R6 R0 K1 ["editThisContent"]
       10 GETTABLEKS                       R7 R0 K2 ["contentId"]
       12 SETLIST                          R5 R6 2 [1]
       14 CALL                             R3 2 1
       15 MOVE                             R4 R1
       16 MOVE                             R5 R3
       17 RETURN                           R4 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Types"]
       18 CALL                             R2 1 1
       19 DUPCLOSURE                       R3 K9 [PROTO_2]
       20 CAPTURE                          VAL R1
       21 RETURN                           R3 1
