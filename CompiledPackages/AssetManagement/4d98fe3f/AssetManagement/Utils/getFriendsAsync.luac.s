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
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 2
        6 MOVE                             R2 R0
        7 CALL                             R1 1 1
        8 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetUserId"]
        3 CALL                             R0 1 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U2
        8 FASTPCALL                        pcall 1 ; [+2]
        9 GETIMPORT                        R1 K2 [pcall]
       11 CALL                             R1 1 2
       12 GETUPVAL                         R3 3
       13 JUMPIFNOT                        R1 ; [+2]
       14 MOVE                             R4 R2
       15 JUMP                             ; [+1]
       16 LOADNIL                          R4
       17 CALL                             R3 1 0
       18 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManagement"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Services"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Types"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R3 R1 K8 ["GetService"]
       19 LOADK                            R4 K9 ["Players"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R1 K8 ["GetService"]
       23 LOADK                            R5 K10 ["StudioService"]
       24 CALL                             R4 1 1
       25 DUPCLOSURE                       R5 K11 [PROTO_0]
       26 DUPCLOSURE                       R6 K12 [PROTO_3]
       27 CAPTURE                          VAL R4
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R5
       30 RETURN                           R6 1
