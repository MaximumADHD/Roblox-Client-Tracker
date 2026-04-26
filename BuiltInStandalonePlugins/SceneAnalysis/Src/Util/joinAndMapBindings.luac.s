PROTO_0:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        TABLE_UNPACK R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [unpack]
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 -1
        7 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["joinBindings"]
        3 NEWTABLE                         R5 0 3
        5 MOVE                             R6 R1
        6 MOVE                             R7 R2
        7 MOVE                             R8 R3
        8 SETLIST                          R5 R6 3 [1]
       10 CALL                             R4 1 1
       11 NEWCLOSURE                       R6 P0
       12 CAPTURE                          VAL R0
       13 NAMECALL                         R4 R4 K1 ["map"]
       15 CALL                             R4 2 -1
       16 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SceneAnalysis"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_1]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
