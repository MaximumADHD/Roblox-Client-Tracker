PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["GetTags"]
        2 CALL                             R1 1 3
        3 FORGPREP                         R1
        4 MOVE                             R8 R5
        5 NAMECALL                         R6 R0 K1 ["RemoveTag"]
        7 CALL                             R6 2 0
        8 FORGLOOP                         R1 2 ; [-5]
       10 RETURN                           R0 0

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["GetDescendants"]
        2 CALL                             R1 1 3
        3 FORGPREP                         R1
        4 NAMECALL                         R6 R5 K1 ["GetTags"]
        6 CALL                             R6 1 3
        7 FORGPREP                         R6
        8 MOVE                             R13 R10
        9 NAMECALL                         R11 R5 K2 ["RemoveTag"]
       11 CALL                             R11 2 0
       12 FORGLOOP                         R6 2 ; [-5]
       14 LOADK                            R8 K3 ["Script"]
       15 NAMECALL                         R6 R5 K4 ["IsA"]
       17 CALL                             R6 2 1
       18 JUMPIF                           R6 ; [+10]
       19 LOADK                            R8 K5 ["LocalScript"]
       20 NAMECALL                         R6 R5 K4 ["IsA"]
       22 CALL                             R6 2 1
       23 JUMPIF                           R6 ; [+5]
       24 LOADK                            R8 K6 ["ModuleScript"]
       25 NAMECALL                         R6 R5 K4 ["IsA"]
       27 CALL                             R6 2 1
       28 JUMPIFNOT                        R6 ; [+3]
       29 NAMECALL                         R6 R5 K7 ["Remove"]
       31 CALL                             R6 1 0
       32 FORGLOOP                         R1 2 ; [-29]
       34 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 RETURN                           R1 1
