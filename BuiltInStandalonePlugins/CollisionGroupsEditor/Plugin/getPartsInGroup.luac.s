PROTO_0:
        0 LOADK                            R3 K0 ["WorldModel"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstAncestorWhichIsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+2]
        5 GETIMPORT                        R1 K3 [workspace]
        7 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R4 0
        3 CALL                             R4 0 1
        4 JUMPIFNOT                        R4 ; [+5]
        5 MOVE                             R3 R1
        6 JUMPIF                           R3 ; [+5]
        7 GETIMPORT                        R3 K1 [workspace]
        9 JUMP                             ; [+2]
       10 GETIMPORT                        R3 K1 [workspace]
       12 GETIMPORT                        R4 K3 [pairs]
       14 NAMECALL                         R5 R3 K4 ["GetDescendants"]
       16 CALL                             R5 1 -1
       17 CALL                             R4 -1 3
       18 FORGPREP_NEXT                    R4
       19 LOADK                            R11 K5 ["BasePart"]
       20 NAMECALL                         R9 R8 K6 ["IsA"]
       22 CALL                             R9 2 1
       23 JUMPIFNOT                        R9 ; [+23]
       24 GETTABLEKS                       R9 R8 K7 ["CollisionGroup"]
       26 JUMPIFNOTEQ                      R9 R0 ; [+20]
       28 GETUPVAL                         R9 0
       29 CALL                             R9 0 1
       30 JUMPIFNOT                        R9 ; [+9]
       31 LOADK                            R11 K8 ["WorldModel"]
       32 NAMECALL                         R9 R8 K9 ["FindFirstAncestorWhichIsA"]
       34 CALL                             R9 2 1
       35 JUMPIF                           R9 ; [+2]
       36 GETIMPORT                        R9 K1 [workspace]
       38 JUMPIFNOTEQ                      R9 R3 ; [+8]
       40 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       42 MOVE                             R10 R2
       43 MOVE                             R11 R8
       44 GETIMPORT                        R9 K12 [table.insert]
       46 CALL                             R9 2 0
       47 FORGLOOP                         R4 2 ; [-29]
       49 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["PhysicsService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K7 [script]
       11 GETTABLEKS                       R2 R2 K8 ["Parent"]
       13 GETTABLEKS                       R2 R2 K9 ["getEngineFeatureMultiworldCollisionGroups"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K10 [PROTO_0]
       17 DUPCLOSURE                       R3 K11 [PROTO_1]
       18 CAPTURE                          VAL R1
       19 RETURN                           R3 1
