PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [pairs]
        4 MOVE                             R4 R1
        5 CALL                             R3 1 3
        6 FORGPREP_NEXT                    R3
        7 DUPTABLE                         R10 K4 [{"Name", "Collides"}]
        8 GETTABLEKS                       R11 R7 K5 ["name"]
       10 SETTABLEKS                       R11 R10 K2 ["Name"]
       12 GETUPVAL                         R11 0
       13 GETTABLEKS                       R13 R0 K5 ["name"]
       15 GETTABLEKS                       R14 R7 K5 ["name"]
       17 NAMECALL                         R11 R11 K6 ["CollisionGroupsAreCollidable"]
       19 CALL                             R11 3 1
       20 SETTABLEKS                       R11 R10 K3 ["Collides"]
       22 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       24 MOVE                             R9 R2
       25 GETIMPORT                        R8 K9 [table.insert]
       27 CALL                             R8 2 0
       28 FORGLOOP                         R3 2 ; [-22]
       30 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R1 K1 [pairs]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 3
        4 FORGPREP_NEXT                    R1
        5 GETTABLEKS                       R6 R5 K2 ["Name"]
        7 JUMPIFNOTEQKS                    R6 K3 ["Default"] ; [+2]
        9 RETURN                           R5 1
       10 FORGLOOP                         R1 2 ; [-6]
       12 GETIMPORT                        R1 K5 [error]
       14 LOADK                            R2 K6 ["Default group not found"]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_2:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETTABLEKS                       R6 R5 K0 ["Name"]
        6 GETUPVAL                         R8 0
        7 GETTABLEKS                       R7 R8 K1 ["CursorGroupName"]
        9 JUMPIFNOTEQ                      R6 R7 ; [+2]
       11 RETURN                           R5 1
       12 FORGLOOP                         R1 2 ; [-9]
       14 DUPTABLE                         R1 K5 [{"Name", "Id", "Virtual", "Collisions"}]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K1 ["CursorGroupName"]
       18 SETTABLEKS                       R2 R1 K0 ["Name"]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R2 R3 K1 ["CursorGroupName"]
       23 SETTABLEKS                       R2 R1 K2 ["Id"]
       25 LOADB                            R2 1
       26 SETTABLEKS                       R2 R1 K3 ["Virtual"]
       28 NEWTABLE                         R2 0 1
       30 DUPTABLE                         R3 K7 [{"Name", "Collides"}]
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R4 R5 K1 ["CursorGroupName"]
       34 SETTABLEKS                       R4 R3 K0 ["Name"]
       36 LOADB                            R4 1
       37 SETTABLEKS                       R4 R3 K6 ["Collides"]
       39 SETLIST                          R2 R3 1 [1]
       41 SETTABLEKS                       R2 R1 K4 ["Collisions"]
       43 MOVE                             R2 R0
       44 LOADNIL                          R3
       45 LOADNIL                          R4
       46 FORGPREP                         R2
       47 GETTABLEKS                       R8 R1 K4 ["Collisions"]
       49 DUPTABLE                         R9 K7 [{"Name", "Collides"}]
       50 GETTABLEKS                       R10 R6 K0 ["Name"]
       52 SETTABLEKS                       R10 R9 K0 ["Name"]
       54 LOADB                            R10 1
       55 SETTABLEKS                       R10 R9 K6 ["Collides"]
       57 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
       59 GETIMPORT                        R7 K10 [table.insert]
       61 CALL                             R7 2 0
       62 GETTABLEKS                       R8 R6 K4 ["Collisions"]
       64 DUPTABLE                         R9 K7 [{"Name", "Collides"}]
       65 GETUPVAL                         R11 0
       66 GETTABLEKS                       R10 R11 K1 ["CursorGroupName"]
       68 SETTABLEKS                       R10 R9 K0 ["Name"]
       70 LOADB                            R10 1
       71 SETTABLEKS                       R10 R9 K6 ["Collides"]
       73 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
       75 GETIMPORT                        R7 K10 [table.insert]
       77 CALL                             R7 2 0
       78 FORGLOOP                         R2 2 ; [-32]
       80 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["Name"]
        2 GETTABLEKS                       R4 R1 K0 ["Name"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_4:
        0 GETIMPORT                        R2 K1 [pairs]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 3
        4 FORGPREP_NEXT                    R2
        5 GETTABLEKS                       R7 R6 K2 ["Name"]
        7 JUMPIFNOTEQKS                    R7 K3 ["Default"] ; [+3]
        9 MOVE                             R1 R6
       10 JUMP                             ; [+7]
       11 FORGLOOP                         R2 2 ; [-7]
       13 GETIMPORT                        R2 K5 [error]
       15 LOADK                            R3 K6 ["Default group not found"]
       16 CALL                             R2 1 0
       17 LOADNIL                          R1
       18 GETUPVAL                         R2 0
       19 MOVE                             R3 R0
       20 CALL                             R2 1 1
       21 NEWTABLE                         R3 0 0
       23 GETIMPORT                        R4 K1 [pairs]
       25 MOVE                             R5 R0
       26 CALL                             R4 1 3
       27 FORGPREP_NEXT                    R4
       28 JUMPIFEQ                         R8 R1 ; [+10]
       30 JUMPIFEQ                         R8 R2 ; [+8]
       32 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       34 MOVE                             R10 R3
       35 MOVE                             R11 R8
       36 GETIMPORT                        R9 K9 [table.insert]
       38 CALL                             R9 2 0
       39 FORGLOOP                         R4 2 ; [-12]
       41 GETIMPORT                        R4 K11 [table.sort]
       43 MOVE                             R5 R3
       44 DUPCLOSURE                       R6 K12 [PROTO_3]
       45 CALL                             R4 2 0
       46 NEWTABLE                         R4 0 2
       48 MOVE                             R5 R1
       49 MOVE                             R6 R2
       50 SETLIST                          R4 R5 2 [1]
       52 LOADN                            R7 1
       53 LENGTH                           R5 R3
       54 LOADN                            R6 1
       55 FORNPREP                         R5
       56 GETTABLE                         R10 R3 R7
       57 FASTCALL2                        TABLE_INSERT R4 R10 ; [+4]
       59 MOVE                             R9 R4
       60 GETIMPORT                        R8 K9 [table.insert]
       62 CALL                             R8 2 0
       63 FORNLOOP                         R5
       64 RETURN                           R4 1

PROTO_5:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 NAMECALL                         R1 R1 K0 ["GetRegisteredCollisionGroups"]
        5 CALL                             R1 1 1
        6 GETIMPORT                        R2 K2 [pairs]
        8 MOVE                             R3 R1
        9 CALL                             R2 1 3
       10 FORGPREP_NEXT                    R2
       11 DUPTABLE                         R9 K6 [{"Name", "Id", "Collisions"}]
       12 GETTABLEKS                       R10 R6 K7 ["name"]
       14 SETTABLEKS                       R10 R9 K3 ["Name"]
       16 GETTABLEKS                       R10 R6 K7 ["name"]
       18 SETTABLEKS                       R10 R9 K4 ["Id"]
       20 GETUPVAL                         R10 1
       21 MOVE                             R11 R6
       22 MOVE                             R12 R1
       23 CALL                             R10 2 1
       24 SETTABLEKS                       R10 R9 K5 ["Collisions"]
       26 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
       28 MOVE                             R8 R0
       29 GETIMPORT                        R7 K10 [table.insert]
       31 CALL                             R7 2 0
       32 FORGLOOP                         R2 2 ; [-22]
       34 GETUPVAL                         R2 2
       35 MOVE                             R3 R0
       36 CALL                             R2 1 1
       37 MOVE                             R0 R2
       38 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["PhysicsService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R4 K7 [script]
       11 GETTABLEKS                       R3 R4 K8 ["Parent"]
       13 GETTABLEKS                       R2 R3 K9 ["Constants"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K10 [PROTO_0]
       17 CAPTURE                          VAL R0
       18 DUPCLOSURE                       R3 K11 [PROTO_1]
       19 DUPCLOSURE                       R4 K12 [PROTO_2]
       20 CAPTURE                          VAL R1
       21 DUPCLOSURE                       R5 K13 [PROTO_4]
       22 CAPTURE                          VAL R4
       23 DUPCLOSURE                       R6 K14 [PROTO_5]
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R5
       27 RETURN                           R6 1
