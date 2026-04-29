PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [table.pack]
        3 GETUPVAL                         R2 1
        4 CALL                             R2 0 -1
        5 CALL                             R1 -1 1
        6 SETTABLEKS                       R1 R0 K3 ["current"]
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 FASTCALL1                        TABLE_UNPACK R1 ; [+2]
        4 GETIMPORT                        R0 K3 [table.unpack]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createRef"]
        3 CALL                             R2 0 1
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R2
        6 CAPTURE                          VAL R0
        7 GETUPVAL                         R4 1
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K1 ["createElement"]
       11 MOVE                             R6 R3
       12 CALL                             R5 1 1
       13 DUPTABLE                         R6 K3 [{"wrapper"}]
       14 JUMPIFNOT                        R1 ; [+3]
       15 GETTABLEKS                       R7 R1 K2 ["wrapper"]
       17 JUMP                             ; [+1]
       18 LOADNIL                          R7
       19 SETTABLEKS                       R7 R6 K2 ["wrapper"]
       21 CALL                             R4 2 0
       22 NEWCLOSURE                       R4 P1
       23 CAPTURE                          VAL R2
       24 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReactTestingUtils"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["ReactTestingLibrary"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K9 ["render"]
       21 DUPCLOSURE                       R5 K10 [PROTO_2]
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R4
       24 RETURN                           R5 1
