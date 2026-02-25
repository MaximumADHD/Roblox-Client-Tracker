PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 NEWTABLE                         R2 0 0
        4 GETIMPORT                        R3 K1 [pairs]
        6 MOVE                             R4 R1
        7 CALL                             R3 1 3
        8 FORGPREP_NEXT                    R3
        9 GETIMPORT                        R8 K1 [pairs]
       11 MOVE                             R9 R0
       12 CALL                             R8 1 3
       13 FORGPREP_NEXT                    R8
       14 GETTABLEKS                       R13 R7 K2 ["CollisionGroup"]
       16 GETTABLEKS                       R14 R12 K3 ["Name"]
       18 JUMPIFNOTEQ                      R13 R14 ; [+4]
       20 LOADB                            R13 1
       21 SETTABLE                         R13 R2 R12
       22 JUMP                             ; [+2]
       23 FORGLOOP                         R8 2 ; [-10]
       25 FORGLOOP                         R3 2 ; [-17]
       27 NEWTABLE                         R3 0 0
       29 GETIMPORT                        R4 K1 [pairs]
       31 MOVE                             R5 R2
       32 CALL                             R4 1 3
       33 FORGPREP_NEXT                    R4
       34 GETTABLEKS                       R11 R7 K4 ["Id"]
       36 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       38 MOVE                             R10 R3
       39 GETIMPORT                        R9 K7 [table.insert]
       41 CALL                             R9 2 0
       42 FORGLOOP                         R4 2 ; [-9]
       44 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["PhysicsService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R4 K7 [script]
       11 GETTABLEKS                       R3 R4 K8 ["Parent"]
       13 GETTABLEKS                       R2 R3 K9 ["getSelectedParts"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K10 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 RETURN                           R2 1
