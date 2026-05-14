PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K1 [game]
        3 NAMECALL                         R0 R0 K2 ["getAvatarType"]
        5 CALL                             R0 2 1
        6 GETUPVAL                         R1 1
        7 GETUPVAL                         R3 2
        8 MOVE                             R4 R0
        9 CALL                             R3 1 -1
       10 NAMECALL                         R1 R1 K3 ["dispatch"]
       12 CALL                             R1 -1 0
       13 GETIMPORT                        R1 K5 [wait]
       15 LOADN                            R2 5
       16 CALL                             R1 1 0
       17 JUMPBACK                         ; [-18]
       18 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Actions"]
       13 GETTABLEKS                       R2 R2 K8 ["SetAvatarType"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_2]
       17 CAPTURE                          VAL R1
       18 RETURN                           R2 1
