PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["updateTime"]
        2 GETTABLEKS                       R3 R1 K0 ["updateTime"]
        4 JUMPIFEQ                         R2 R3 ; [+10]
        6 GETTABLEKS                       R3 R0 K0 ["updateTime"]
        8 GETTABLEKS                       R4 R1 K0 ["updateTime"]
       10 JUMPIFLT                         R4 R3 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1
       15 GETTABLEKS                       R2 R0 K1 ["displayName"]
       17 GETTABLEKS                       R3 R1 K1 ["displayName"]
       19 JUMPIFEQ                         R2 R3 ; [+10]
       21 GETTABLEKS                       R3 R0 K1 ["displayName"]
       23 GETTABLEKS                       R4 R1 K1 ["displayName"]
       25 JUMPIFLT                         R3 R4 ; [+2]
       27 LOADB                            R2 0 +1
       28 LOADB                            R2 1
       29 RETURN                           R2 1
       30 GETTABLEKS                       R3 R0 K2 ["assetId"]
       32 GETTABLEKS                       R4 R1 K2 ["assetId"]
       34 JUMPIFLT                         R3 R4 ; [+2]
       36 LOADB                            R2 0 +1
       37 LOADB                            R2 1
       38 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLEKS                       R9 R7 K0 ["assetItem"]
        8 GETTABLEKS                       R8 R9 K1 ["asset"]
       10 GETUPVAL                         R9 0
       11 GETTABLEKS                       R10 R8 K2 ["assetType"]
       13 CALL                             R9 1 1
       14 SETTABLEKS                       R9 R8 K2 ["assetType"]
       16 GETTABLEKS                       R9 R8 K2 ["assetType"]
       18 JUMPIFNOTEQ                      R9 R1 ; [+8]
       20 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       22 MOVE                             R10 R2
       23 MOVE                             R11 R8
       24 GETIMPORT                        R9 K5 [table.insert]
       26 CALL                             R9 2 0
       27 FORGLOOP                         R3 2 ; [-22]
       29 GETIMPORT                        R3 K7 [table.sort]
       31 MOVE                             R4 R2
       32 DUPCLOSURE                       R5 K8 [PROTO_0]
       33 CALL                             R3 2 0
       34 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetPicker"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R4 R0 K7 ["Util"]
       16 GETTABLEKS                       R3 R4 K8 ["convertAssetTypeStringToEnum"]
       18 CALL                             R2 1 1
       19 DUPCLOSURE                       R3 K9 [PROTO_1]
       20 CAPTURE                          VAL R2
       21 RETURN                           R3 1
