PROTO_0:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R3 1
        4 SETLIST                          R2 R3 1 [1]
        6 NAMECALL                         R0 R0 K0 ["GetUserInfosByUserIdsAsync"]
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["GetUserId"]
        3 CALL                             R1 1 1
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R1
        7 FASTPCALL                        pcall 1 ; [+2]
        8 GETIMPORT                        R2 K2 [pcall]
       10 CALL                             R2 1 2
       11 JUMPIFNOT                        R2 ; [+2]
       12 GETTABLEN                        R4 R3 1
       13 JUMP                             ; [+1]
       14 LOADNIL                          R4
       15 JUMPIFNOTEQKNIL                  R4 ; [+6]
       17 MOVE                             R5 R0
       18 LOADK                            R6 K3 [""]
       19 LOADB                            R7 1
       20 CALL                             R5 2 0
       21 RETURN                           R0 0
       22 MOVE                             R5 R0
       23 GETTABLEKS                       R6 R4 K4 ["Username"]
       25 LOADB                            R7 0
       26 CALL                             R5 2 0
       27 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManagement"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Services"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K7 ["GetService"]
       14 LOADK                            R3 K8 ["StudioService"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R1 K7 ["GetService"]
       18 LOADK                            R4 K9 ["UserService"]
       19 CALL                             R3 1 1
       20 DUPCLOSURE                       R4 K10 [PROTO_1]
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R3
       23 RETURN                           R4 1
