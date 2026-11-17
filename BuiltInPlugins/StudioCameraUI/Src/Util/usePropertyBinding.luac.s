PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETTABLE                         R1 R2 R3
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetPropertyChangedSignal"]
        4 CALL                             R0 2 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          UPVAL U1
        9 NAMECALL                         R0 R0 K1 ["Connect"]
       11 CALL                             R0 2 1
       12 NEWCLOSURE                       R1 P1
       13 CAPTURE                          VAL R0
       14 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 SETTABLE                         R0 R1 R2
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useBinding"]
        3 GETTABLE                         R3 R0 R1
        4 CALL                             R2 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K1 ["useEffect"]
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          VAL R3
       12 NEWTABLE                         R6 0 2
       14 MOVE                             R7 R0
       15 MOVE                             R8 R1
       16 SETLIST                          R6 R7 2 [1]
       18 CALL                             R4 2 0
       19 MOVE                             R4 R2
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K2 ["useCallback"]
       23 NEWCLOSURE                       R6 P1
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R1
       26 NEWTABLE                         R7 0 2
       28 MOVE                             R8 R0
       29 MOVE                             R9 R1
       30 SETLIST                          R7 R8 2 [1]
       32 CALL                             R5 2 -1
       33 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioCameraUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_4]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
