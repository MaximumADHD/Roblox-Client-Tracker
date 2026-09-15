PROTO_0:
        0 JUMPIFNOT                        R0 ; [+13]
        1 JUMPIFEQKS                       R0 K0 [""] ; [+12]
        3 GETIMPORT                        R2 K3 [string.match]
        5 MOVE                             R3 R0
        6 LOADK                            R4 K4 ["rbxassetid://(%d+)"]
        7 CALL                             R2 2 -1
        8 FASTCALL                         TONUMBER ; [+2]
        9 GETIMPORT                        R1 K6 [tonumber]
       11 CALL                             R1 -1 1
       12 JUMPIFNOT                        R1 ; [+1]
       13 RETURN                           R1 1
       14 LOADNIL                          R1
       15 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+7]
        3 LOADK                            R2 K0 ["rbxassetid://%*&version=%*"]
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 NAMECALL                         R2 R2 K1 ["format"]
        8 CALL                             R2 3 1
        9 RETURN                           R2 1
       10 LOADK                            R3 K2 ["rbxassetid://"]
       11 MOVE                             R4 R0
       12 CONCAT                           R2 R3 R4
       13 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 GETTABLEKS                       R2 R2 K7 ["GetFFlagReimportVersionedImageUpload"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 2 0
       16 DUPCLOSURE                       R3 K8 [PROTO_0]
       17 SETTABLEKS                       R3 R2 K9 ["extractAssetId"]
       19 DUPCLOSURE                       R3 K10 [PROTO_1]
       20 CAPTURE                          VAL R1
       21 SETTABLEKS                       R3 R2 K11 ["buildAssetUri"]
       23 RETURN                           R2 1
