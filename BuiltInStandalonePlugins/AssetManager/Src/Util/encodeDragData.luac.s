PROTO_0:
        0 GETIMPORT                        R1 K2 [table.create]
        2 GETTABLEKS                       R3 R0 K3 ["Ids"]
        4 LENGTH                           R2 R3
        5 CALL                             R1 1 1
        6 GETTABLEKS                       R2 R0 K3 ["Ids"]
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 GETTABLEKS                       R8 R0 K4 ["Types"]
       13 GETTABLE                         R7 R8 R5
       14 DUPTABLE                         R10 K9 [{"AssetId", "VersionNumber", "Name", "AssetType"}]
       15 SETTABLEKS                       R6 R10 K5 ["AssetId"]
       17 GETTABLEKS                       R12 R0 K10 ["VersionNumbers"]
       19 GETTABLE                         R11 R12 R5
       20 SETTABLEKS                       R11 R10 K6 ["VersionNumber"]
       22 GETTABLEKS                       R12 R0 K11 ["Names"]
       24 GETTABLE                         R11 R12 R5
       25 SETTABLEKS                       R11 R10 K7 ["Name"]
       27 JUMPIFNOT                        R7 ; [+3]
       28 GETTABLEKS                       R11 R7 K7 ["Name"]
       30 JUMP                             ; [+1]
       31 LOADNIL                          R11
       32 SETTABLEKS                       R11 R10 K8 ["AssetType"]
       34 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       36 MOVE                             R9 R1
       37 GETIMPORT                        R8 K13 [table.insert]
       39 CALL                             R8 2 0
       40 FORGLOOP                         R2 2 ; [-30]
       42 GETUPVAL                         R2 0
       43 DUPTABLE                         R4 K15 [{"Items"}]
       44 SETTABLEKS                       R1 R4 K14 ["Items"]
       46 NAMECALL                         R2 R2 K16 ["JSONEncode"]
       48 CALL                             R2 2 -1
       49 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AssetManager"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["Types"]
       19 CALL                             R2 1 1
       20 DUPCLOSURE                       R3 K12 [PROTO_0]
       21 CAPTURE                          VAL R0
       22 RETURN                           R3 1
