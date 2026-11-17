PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["DataModel"]
        3 LOADK                            R2 K1 ["rbxassetid://%*"]
        4 GETUPVAL                         R4 1
        5 NAMECALL                         R2 R2 K2 ["format"]
        7 CALL                             R2 2 1
        8 NAMECALL                         R0 R0 K3 ["InsertObjectsAndJoinIfLegacyAsync"]
       10 CALL                             R0 2 -1
       11 RETURN                           R0 -1

PROTO_1:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 FASTPCALL                        pcall 1 ; [+2]
        4 GETIMPORT                        R2 K1 [pcall]
        6 CALL                             R2 1 2
        7 JUMPIFNOT                        R2 ; [+7]
        8 FASTCALL1                        TYPE R3 ; [+3]
        9 MOVE                             R5 R3
       10 GETIMPORT                        R4 K3 [type]
       12 CALL                             R4 1 1
       13 JUMPIFEQKS                       R4 K4 ["table"] ; [+12]
       15 GETUPVAL                         R4 1
       16 LOADK                            R5 K5 ["Failed to get asset instances for %*: %*"]
       17 GETTABLEKS                       R7 R1 K6 ["Name"]
       19 MOVE                             R8 R3
       20 NAMECALL                         R5 R5 K7 ["format"]
       22 CALL                             R5 3 1
       23 CALL                             R4 1 0
       24 LOADNIL                          R4
       25 RETURN                           R4 1
       26 NEWTABLE                         R4 0 0
       28 MOVE                             R5 R3
       29 LOADNIL                          R6
       30 LOADNIL                          R7
       31 FORGPREP                         R5
       32 LOADNIL                          R10
       33 SETTABLEKS                       R10 R9 K8 ["Parent"]
       35 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       37 MOVE                             R11 R4
       38 MOVE                             R12 R9
       39 GETIMPORT                        R10 K10 [table.insert]
       41 CALL                             R10 2 0
       42 FORGLOOP                         R5 2 ; [-11]
       44 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Services"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K4 [require]
       12 GETTABLEKS                       R3 R0 K6 ["Utils"]
       14 GETTABLEKS                       R3 R3 K7 ["logIfDebug"]
       16 CALL                             R2 1 1
       17 DUPCLOSURE                       R3 K8 [PROTO_1]
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R2
       20 RETURN                           R3 1
