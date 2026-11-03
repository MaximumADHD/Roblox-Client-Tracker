PROTO_0:
        0 GETIMPORT                        R3 K3 [string.match]
        2 MOVE                             R4 R0
        3 LOADK                            R5 K4 ["(%d+)$"]
        4 CALL                             R3 2 1
        5 ORK                              R2 R3 K0 [""]
        6 FASTCALL1                        TONUMBER R2 ; [+2]
        7 GETIMPORT                        R1 K6 [tonumber]
        9 CALL                             R1 1 1
       10 JUMPIF                           R1 ; [+9]
       11 GETUPVAL                         R2 0
       12 LOADK                            R3 K7 ["Failed to extract folder ID from path: %*"]
       13 MOVE                             R5 R0
       14 NAMECALL                         R3 R3 K8 ["format"]
       16 CALL                             R3 2 1
       17 CALL                             R2 1 0
       18 LOADNIL                          R2
       19 RETURN                           R2 1
       20 GETUPVAL                         R2 1
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R3 R3 K9 ["ScopeType"]
       24 GETTABLEKS                       R3 R3 K10 ["Folder"]
       26 MOVE                             R4 R1
       27 CALL                             R2 2 -1
       28 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManagement"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Enums"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Types"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K5 [require]
       19 GETTABLEKS                       R4 R0 K8 ["Utils"]
       21 GETTABLEKS                       R4 R4 K9 ["createScopeUid"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K5 [require]
       26 GETTABLEKS                       R5 R0 K8 ["Utils"]
       28 GETTABLEKS                       R5 R5 K10 ["logIfDebug"]
       30 CALL                             R4 1 1
       31 DUPCLOSURE                       R5 K11 [PROTO_0]
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R1
       35 RETURN                           R5 1
