PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 GETUPVAL                         R0 1
        4 RETURN                           R0 1
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 2
        7 GETTABLE                         R0 R1 R2
        8 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 NEWCLOSURE                       R0 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 GETUPVAL                         R1 0
        9 GETUPVAL                         R3 3
       10 NAMECALL                         R1 R1 K0 ["GetPropertyChangedSignal"]
       12 CALL                             R1 2 1
       13 MOVE                             R3 R0
       14 NAMECALL                         R1 R1 K1 ["Connect"]
       16 CALL                             R1 2 1
       17 NEWCLOSURE                       R2 P1
       18 CAPTURE                          VAL R1
       19 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useCallback"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R2
        6 CAPTURE                          VAL R1
        7 NEWTABLE                         R5 0 2
        9 MOVE                             R6 R0
       10 MOVE                             R7 R1
       11 SETLIST                          R5 R6 2 [1]
       13 CALL                             R3 2 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K1 ["useState"]
       17 MOVE                             R5 R3
       18 CALL                             R4 1 2
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R6 R6 K2 ["useEffect"]
       22 NEWCLOSURE                       R7 P1
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R5
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R1
       27 NEWTABLE                         R8 0 2
       29 MOVE                             R9 R0
       30 MOVE                             R10 R1
       31 SETLIST                          R8 R9 2 [1]
       33 CALL                             R6 2 0
       34 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FaceControlEditorComponent"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 DUPCLOSURE                       R3 K8 [PROTO_4]
       15 CAPTURE                          VAL R2
       16 RETURN                           R3 1
