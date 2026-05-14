PROTO_0:
        0 GETIMPORT                        R3 K3 [string.match]
        2 MOVE                             R4 R0
        3 LOADK                            R5 K4 ["(%d+)$"]
        4 CALL                             R3 2 1
        5 ORK                              R2 R3 K0 [""]
        6 FASTCALL1                        TONUMBER R2 ; [+2]
        7 GETIMPORT                        R1 K6 [tonumber]
        9 CALL                             R1 1 1
       10 JUMPIF                           R1 ; [+18]
       11 GETUPVAL                         R2 0
       12 LOADK                            R4 K7 ["Failed to extract folder ID from path: %*"]
       13 MOVE                             R6 R0
       14 NAMECALL                         R4 R4 K8 ["format"]
       16 CALL                             R4 2 1
       17 MOVE                             R3 R4
       18 LOADK                            R4 K9 ["WARN"]
       19 CALL                             R2 2 0
       20 GETUPVAL                         R2 1
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R3 R3 K10 ["ScopeType"]
       24 GETTABLEKS                       R3 R3 K11 ["Folder"]
       26 LOADN                            R4 0
       27 CALL                             R2 2 -1
       28 RETURN                           R2 -1
       29 GETUPVAL                         R2 1
       30 GETUPVAL                         R3 2
       31 GETTABLEKS                       R3 R3 K10 ["ScopeType"]
       33 GETTABLEKS                       R3 R3 K11 ["Folder"]
       35 MOVE                             R4 R1
       36 CALL                             R2 2 -1
       37 RETURN                           R2 -1

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
       20 GETTABLEKS                       R3 R3 K9 ["logIfDebug"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K8 ["Util"]
       29 GETTABLEKS                       R4 R4 K10 ["createScopeUid"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K11 [PROTO_0]
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R1
       36 RETURN                           R4 1
