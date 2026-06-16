PROTO_0:
        0 LOADNIL                          R1
        1 GETTABLEKS                       R2 R0 K0 ["assetType"]
        3 JUMPIFNOTEQKS                    R2 K1 ["Animation"] ; [+3]
        5 LOADNIL                          R1
        6 JUMP                             ; [+16]
        7 GETTABLEKS                       R2 R0 K0 ["assetType"]
        9 JUMPIFNOTEQKS                    R2 K2 ["AnimationGraph"] ; [+3]
       11 LOADK                            R1 K2 ["AnimationGraph"]
       12 JUMP                             ; [+10]
       13 GETIMPORT                        R2 K4 [error]
       15 LOADK                            R4 K5 ["Unsupported animation asset type: %*"]
       16 GETTABLEKS                       R6 R0 K0 ["assetType"]
       18 NAMECALL                         R4 R4 K6 ["format"]
       20 CALL                             R4 2 1
       21 MOVE                             R3 R4
       22 CALL                             R2 1 0
       23 GETTABLEKS                       R2 R0 K7 ["source"]
       25 LOADNIL                          R3
       26 LOADNIL                          R4
       27 FORGPREP                         R2
       28 GETTABLEKS                       R7 R6 K8 ["assetItem"]
       30 GETTABLEKS                       R7 R7 K9 ["asset"]
       32 GETTABLEKS                       R7 R7 K10 ["assetSubType"]
       34 JUMPIFNOTEQ                      R7 R1 ; [+9]
       36 GETTABLEKS                       R8 R0 K11 ["target"]
       38 FASTCALL2                        TABLE_INSERT R8 R6 ; [+4]
       40 MOVE                             R9 R6
       41 GETIMPORT                        R7 K14 [table.insert]
       43 CALL                             R7 2 0
       44 FORGLOOP                         R2 2 ; [-17]
       46 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetPicker"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 DUPCLOSURE                       R2 K7 [PROTO_0]
       13 RETURN                           R2 1
