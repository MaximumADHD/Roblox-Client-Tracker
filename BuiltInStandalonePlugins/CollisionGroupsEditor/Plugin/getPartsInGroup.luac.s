PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 GETIMPORT                        R3 K3 [workspace]
        6 NAMECALL                         R3 R3 K4 ["GetDescendants"]
        8 CALL                             R3 1 -1
        9 CALL                             R2 -1 3
       10 FORGPREP_NEXT                    R2
       11 LOADK                            R9 K5 ["BasePart"]
       12 NAMECALL                         R7 R6 K6 ["IsA"]
       14 CALL                             R7 2 1
       15 JUMPIFNOT                        R7 ; [+11]
       16 GETTABLEKS                       R7 R6 K7 ["CollisionGroup"]
       18 JUMPIFNOTEQ                      R7 R0 ; [+8]
       20 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       22 MOVE                             R8 R1
       23 MOVE                             R9 R6
       24 GETIMPORT                        R7 K10 [table.insert]
       26 CALL                             R7 2 0
       27 FORGLOOP                         R2 2 ; [-17]
       29 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["PhysicsService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 RETURN                           R1 1
