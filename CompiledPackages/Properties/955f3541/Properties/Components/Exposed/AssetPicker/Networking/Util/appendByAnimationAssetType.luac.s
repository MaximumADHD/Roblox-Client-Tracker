PROTO_0:
        0 LOADNIL                          R1
        1 GETTABLEKS                       R2 R0 K0 ["assetType"]
        3 JUMPIFNOTEQKS                    R2 K1 ["Animation"] ; [+3]
        5 LOADNIL                          R1
        6 JUMP                             ; [+15]
        7 GETTABLEKS                       R2 R0 K0 ["assetType"]
        9 JUMPIFNOTEQKS                    R2 K2 ["AnimationGraph"] ; [+3]
       11 LOADK                            R1 K2 ["AnimationGraph"]
       12 JUMP                             ; [+9]
       13 GETIMPORT                        R2 K4 [error]
       15 LOADK                            R3 K5 ["Unsupported animation asset type: %*"]
       16 GETTABLEKS                       R5 R0 K0 ["assetType"]
       18 NAMECALL                         R3 R3 K6 ["format"]
       20 CALL                             R3 2 1
       21 CALL                             R2 1 0
       22 GETTABLEKS                       R2 R0 K7 ["source"]
       24 LOADNIL                          R3
       25 LOADNIL                          R4
       26 FORGPREP                         R2
       27 GETTABLEKS                       R7 R6 K8 ["assetItem"]
       29 GETTABLEKS                       R7 R7 K9 ["asset"]
       31 GETTABLEKS                       R7 R7 K10 ["assetSubType"]
       33 JUMPIFNOTEQ                      R7 R1 ; [+9]
       35 GETTABLEKS                       R8 R0 K11 ["target"]
       37 FASTCALL2                        TABLE_INSERT R8 R6 ; [+4]
       39 MOVE                             R9 R6
       40 GETIMPORT                        R7 K14 [table.insert]
       42 CALL                             R7 2 0
       43 FORGLOOP                         R2 2 ; [-17]
       45 RETURN                           R0 0

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
