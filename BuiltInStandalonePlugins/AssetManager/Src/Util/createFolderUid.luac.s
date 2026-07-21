PROTO_0:
        0 GETIMPORT                        R3 K3 [string.match]
        2 MOVE                             R4 R0
        3 LOADK                            R5 K4 ["(%d+)$"]
        4 CALL                             R3 2 1
        5 ORK                              R2 R3 K0 [""]
        6 FASTCALL1                        TONUMBER R2 ; [+2]
        7 GETIMPORT                        R1 K6 [tonumber]
        9 CALL                             R1 1 1
       10 JUMPIF                           R1 ; [+23]
       11 GETUPVAL                         R2 0
       12 LOADK                            R4 K7 ["Failed to extract folder ID from path: %*"]
       13 MOVE                             R6 R0
       14 NAMECALL                         R4 R4 K8 ["format"]
       16 CALL                             R4 2 1
       17 MOVE                             R3 R4
       18 LOADK                            R4 K9 ["WARN"]
       19 CALL                             R2 2 0
       20 GETUPVAL                         R2 1
       21 CALL                             R2 0 1
       22 JUMPIFNOT                        R2 ; [+2]
       23 LOADNIL                          R2
       24 RETURN                           R2 1
       25 GETUPVAL                         R2 2
       26 GETUPVAL                         R3 3
       27 GETTABLEKS                       R3 R3 K10 ["ScopeType"]
       29 GETTABLEKS                       R3 R3 K11 ["Folder"]
       31 LOADN                            R4 0
       32 CALL                             R2 2 -1
       33 RETURN                           R2 -1
       34 GETUPVAL                         R2 2
       35 GETUPVAL                         R3 3
       36 GETTABLEKS                       R3 R3 K10 ["ScopeType"]
       38 GETTABLEKS                       R3 R3 K11 ["Folder"]
       40 MOVE                             R4 R1
       41 CALL                             R2 2 -1
       42 RETURN                           R2 -1

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
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Src"]
       36 GETTABLEKS                       R5 R5 K11 ["Flags"]
       38 GETTABLEKS                       R5 R5 K12 ["getFFlagAmrAutomaticScopeRefresh"]
       40 CALL                             R4 1 1
       41 DUPCLOSURE                       R5 K13 [PROTO_0]
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R1
       46 RETURN                           R5 1
