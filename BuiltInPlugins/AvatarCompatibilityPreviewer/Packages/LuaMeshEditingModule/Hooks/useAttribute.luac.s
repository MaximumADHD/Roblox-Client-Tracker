PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 GETUPVAL                         R0 1
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 0
        6 GETUPVAL                         R2 2
        7 NAMECALL                         R0 R0 K0 ["GetAttribute"]
        9 CALL                             R0 2 1
       10 JUMPIFNOTEQKNIL                  R0 ; [+3]
       12 GETUPVAL                         R1 1
       13 RETURN                           R1 1
       14 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

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
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R1 2
        7 CALL                             R1 0 -1
        8 CALL                             R0 -1 0
        9 GETUPVAL                         R0 0
       10 GETUPVAL                         R2 3
       11 NAMECALL                         R0 R0 K0 ["GetAttributeChangedSignal"]
       13 CALL                             R0 2 1
       14 NEWCLOSURE                       R2 P0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U2
       17 NAMECALL                         R0 R0 K1 ["Connect"]
       19 CALL                             R0 2 1
       20 NEWCLOSURE                       R1 P1
       21 CAPTURE                          VAL R0
       22 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useCallback"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R2
        6 CAPTURE                          VAL R1
        7 NEWTABLE                         R5 0 3
        9 MOVE                             R6 R0
       10 MOVE                             R7 R1
       11 MOVE                             R8 R2
       12 SETLIST                          R5 R6 3 [1]
       14 CALL                             R3 2 1
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K1 ["useState"]
       18 MOVE                             R5 R3
       19 CALL                             R4 1 2
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K2 ["useEffect"]
       23 NEWCLOSURE                       R7 P1
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R5
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R1
       28 NEWTABLE                         R8 0 2
       30 MOVE                             R9 R0
       31 MOVE                             R10 R3
       32 SETLIST                          R8 R9 2 [1]
       34 CALL                             R6 2 0
       35 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LuaMeshEditingModule"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_4]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
