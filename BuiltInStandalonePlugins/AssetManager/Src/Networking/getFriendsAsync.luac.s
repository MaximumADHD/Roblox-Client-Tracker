PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 NAMECALL                         R2 R0 K0 ["GetCurrentPage"]
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
        8 MOVE                             R8 R1
        9 MOVE                             R9 R6
       10 GETIMPORT                        R7 K3 [table.insert]
       12 CALL                             R7 2 0
       13 FORGLOOP                         R2 2 ; [-8]
       15 GETTABLEKS                       R2 R0 K4 ["IsFinished"]
       17 JUMPIF                           R2 ; [+4]
       18 NAMECALL                         R2 R0 K5 ["AdvanceToNextPageAsync"]
       20 CALL                             R2 1 0
       21 JUMPBACK                         ; [-20]
       22 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetFriendsAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetUserId"]
        3 CALL                             R0 1 1
        4 GETIMPORT                        R1 K2 [pcall]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 CALL                             R1 1 2
       10 JUMPIFNOT                        R1 ; [+1]
       11 JUMPIF                           R2 ; [+4]
       12 GETUPVAL                         R3 2
       13 LOADNIL                          R4
       14 CALL                             R3 1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R3 3
       17 MOVE                             R4 R2
       18 CALL                             R3 1 1
       19 GETUPVAL                         R4 2
       20 MOVE                             R5 R3
       21 CALL                             R4 1 0
       22 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["Services"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K10 ["GetService"]
       25 LOADK                            R4 K11 ["StudioService"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R2 K10 ["GetService"]
       29 LOADK                            R5 K12 ["Players"]
       30 CALL                             R4 1 1
       31 DUPCLOSURE                       R5 K13 [PROTO_0]
       32 DUPCLOSURE                       R6 K14 [PROTO_3]
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R5
       36 RETURN                           R6 1
