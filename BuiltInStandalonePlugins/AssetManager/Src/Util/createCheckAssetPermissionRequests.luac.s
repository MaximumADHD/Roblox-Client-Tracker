PROTO_0:
        0 NEWTABLE                         R4 0 0
        2 MOVE                             R5 R3
        3 LOADNIL                          R6
        4 LOADNIL                          R7
        5 FORGPREP                         R5
        6 DUPTABLE                         R12 K3 [{"subject", "action", "assetId"}]
        7 DUPTABLE                         R13 K6 [{"subjectType", "subjectId"}]
        8 SETTABLEKS                       R0 R13 K4 ["subjectType"]
       10 FASTCALL1                        TOSTRING R1 ; [+3]
       11 MOVE                             R15 R1
       12 GETIMPORT                        R14 K8 [tostring]
       14 CALL                             R14 1 1
       15 SETTABLEKS                       R14 R13 K5 ["subjectId"]
       17 SETTABLEKS                       R13 R12 K0 ["subject"]
       19 SETTABLEKS                       R2 R12 K1 ["action"]
       21 SETTABLEKS                       R9 R12 K2 ["assetId"]
       23 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       25 MOVE                             R11 R4
       26 GETIMPORT                        R10 K11 [table.insert]
       28 CALL                             R10 2 0
       29 FORGLOOP                         R5 2 ; [-24]
       31 RETURN                           R4 1

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
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 RETURN                           R2 1
