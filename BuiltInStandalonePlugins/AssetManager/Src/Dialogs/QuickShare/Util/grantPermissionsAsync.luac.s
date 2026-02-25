PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLE                         R2 R3 R4
        3 LENGTH                           R3 R1
        4 LOADN                            R4 0
        5 JUMPIFNOTLT                      R4 R3 ; [+3]
        7 GETUPVAL                         R3 2
        8 SETTABLE                         R1 R3 R2
        9 GETUPVAL                         R3 1
       10 ADDK                             R3 R3 K0 [1]
       11 SETUPVAL                         R3 1
       12 GETUPVAL                         R3 1
       13 GETUPVAL                         R5 0
       14 LENGTH                           R4 R5
       15 JUMPIFNOTLE                      R3 R4 ; [+4]
       17 GETUPVAL                         R3 3
       18 CALL                             R3 0 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R3 4
       21 MOVE                             R4 R0
       22 GETUPVAL                         R5 2
       23 CALL                             R3 2 0
       24 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 GETTABLEKS                       R2 R0 K0 ["subject"]
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R4 R5 K1 ["PermissionsGrantSubject"]
        8 GETTABLEKS                       R3 R4 K2 ["Universe"]
       10 JUMPIFEQ                         R2 R3 ; [+2]
       12 LOADB                            R1 0 +1
       13 LOADB                            R1 1
       14 GETUPVAL                         R2 3
       15 GETUPVAL                         R4 4
       16 GETTABLEKS                       R5 R0 K0 ["subject"]
       18 GETTABLEKS                       R6 R0 K3 ["id"]
       20 GETTABLEKS                       R7 R0 K4 ["action"]
       22 MOVE                             R8 R1
       23 GETUPVAL                         R9 5
       24 NAMECALL                         R2 R2 K5 ["grantAssetsPermissions"]
       26 CALL                             R2 7 0
       27 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R4 0 0
        2 LOADN                            R5 1
        3 LOADNIL                          R6
        4 NEWCLOSURE                       R7 P0
        5 CAPTURE                          VAL R2
        6 CAPTURE                          REF R5
        7 CAPTURE                          VAL R4
        8 CAPTURE                          REF R6
        9 CAPTURE                          VAL R3
       10 NEWCLOSURE                       R6 P1
       11 CAPTURE                          VAL R2
       12 CAPTURE                          REF R5
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R7
       17 LENGTH                           R8 R2
       18 LOADN                            R9 0
       19 JUMPIFNOTLT                      R9 R8 ; [+4]
       21 MOVE                             R8 R6
       22 CALL                             R8 0 0
       23 JUMP                             ; [+5]
       24 MOVE                             R8 R3
       25 LOADB                            R9 1
       26 NEWTABLE                         R10 0 0
       28 CALL                             R8 2 0
       29 CLOSEUPVALS                      R5
       30 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_2]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
