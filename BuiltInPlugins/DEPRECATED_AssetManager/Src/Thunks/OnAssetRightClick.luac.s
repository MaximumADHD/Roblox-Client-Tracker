PROTO_0:
        0 LOADK                            R4 K0 ["Settings"]
        1 NAMECALL                         R2 R0 K1 ["GetPluginComponent"]
        3 CALL                             R2 2 1
        4 GETUPVAL                         R5 0
        5 MOVE                             R6 R1
        6 NAMECALL                         R3 R2 K2 ["SetNumberAsync"]
        8 CALL                             R3 3 0
        9 LOADK                            R5 K3 ["Actions"]
       10 NAMECALL                         R3 R0 K1 ["GetPluginComponent"]
       12 CALL                             R3 2 1
       13 DUPTABLE                         R6 K6 [{"Uri", "Checked"}]
       14 GETUPVAL                         R7 1
       15 SETTABLEKS                       R7 R6 K4 ["Uri"]
       17 LOADB                            R7 1
       18 SETTABLEKS                       R7 R6 K5 ["Checked"]
       20 NAMECALL                         R4 R3 K7 ["UpdateAsync"]
       22 CALL                             R4 2 0
       23 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R5 K1 [pairs]
        2 MOVE                             R6 R2
        3 CALL                             R5 1 3
        4 FORGPREP_NEXT                    R5
        5 GETTABLEKS                       R11 R9 K2 ["key"]
        7 GETTABLE                         R10 R3 R11
        8 JUMPIFNOT                        R10 ; [+78]
        9 GETTABLEKS                       R10 R9 K3 ["assetType"]
       11 GETIMPORT                        R11 K7 [Enum.AssetType.Place]
       13 JUMPIFNOTEQ                      R10 R11 ; [+8]
       15 GETUPVAL                         R10 0
       16 GETTABLEKS                       R12 R9 K8 ["id"]
       18 NAMECALL                         R10 R10 K9 ["RemovePlace"]
       20 CALL                             R10 2 0
       21 JUMP                             ; [+65]
       22 GETTABLEKS                       R10 R9 K3 ["assetType"]
       24 GETIMPORT                        R11 K11 [Enum.AssetType.Image]
       26 JUMPIFNOTEQ                      R10 R11 ; [+10]
       28 GETUPVAL                         R10 0
       29 LOADK                            R13 K12 ["Images/"]
       30 GETTABLEKS                       R14 R9 K13 ["name"]
       32 CONCAT                           R12 R13 R14
       33 NAMECALL                         R10 R10 K14 ["DeleteAlias"]
       35 CALL                             R10 2 0
       36 JUMP                             ; [+50]
       37 GETTABLEKS                       R10 R9 K3 ["assetType"]
       39 GETIMPORT                        R11 K16 [Enum.AssetType.MeshPart]
       41 JUMPIFNOTEQ                      R10 R11 ; [+10]
       43 GETUPVAL                         R10 0
       44 LOADK                            R13 K17 ["Meshes/"]
       45 GETTABLEKS                       R14 R9 K13 ["name"]
       47 CONCAT                           R12 R13 R14
       48 NAMECALL                         R10 R10 K14 ["DeleteAlias"]
       50 CALL                             R10 2 0
       51 JUMP                             ; [+35]
       52 GETUPVAL                         R10 1
       53 CALL                             R10 0 1
       54 JUMPIFNOT                        R10 ; [+15]
       55 GETTABLEKS                       R10 R9 K3 ["assetType"]
       57 GETIMPORT                        R11 K19 [Enum.AssetType.Audio]
       59 JUMPIFNOTEQ                      R10 R11 ; [+10]
       61 GETUPVAL                         R10 0
       62 LOADK                            R13 K20 ["Audio/"]
       63 GETTABLEKS                       R14 R9 K13 ["name"]
       65 CONCAT                           R12 R13 R14
       66 NAMECALL                         R10 R10 K14 ["DeleteAlias"]
       68 CALL                             R10 2 0
       69 JUMP                             ; [+17]
       70 GETUPVAL                         R10 2
       71 CALL                             R10 0 1
       72 JUMPIFNOT                        R10 ; [+14]
       73 GETTABLEKS                       R10 R9 K3 ["assetType"]
       75 GETIMPORT                        R11 K22 [Enum.AssetType.Video]
       77 JUMPIFNOTEQ                      R10 R11 ; [+9]
       79 GETUPVAL                         R10 0
       80 LOADK                            R13 K23 ["Video/"]
       81 GETTABLEKS                       R14 R9 K13 ["name"]
       83 CONCAT                           R12 R13 R14
       84 NAMECALL                         R10 R10 K14 ["DeleteAlias"]
       86 CALL                             R10 2 0
       87 FORGLOOP                         R5 2 ; [-83]
       89 GETUPVAL                         R7 3
       90 NEWTABLE                         R8 0 0
       92 CALL                             R7 1 -1
       93 NAMECALL                         R5 R4 K24 ["dispatch"]
       95 CALL                             R5 -1 0
       96 GETUPVAL                         R7 4
       97 DUPTABLE                         R8 K26 [{"assets"}]
       98 NEWTABLE                         R9 0 0
      100 SETTABLEKS                       R9 R8 K25 ["assets"]
      102 CALL                             R7 1 -1
      103 NAMECALL                         R5 R4 K24 ["dispatch"]
      105 CALL                             R5 -1 0
      106 GETUPVAL                         R7 5
      107 MOVE                             R8 R0
      108 GETTABLEKS                       R9 R1 K3 ["assetType"]
      110 CALL                             R7 2 -1
      111 NAMECALL                         R5 R4 K24 ["dispatch"]
      113 CALL                             R5 -1 0
      114 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 NEWTABLE                         R0 1 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["id"]
        7 LOADB                            R2 1
        8 SETTABLE                         R2 R0 R1
        9 GETUPVAL                         R1 2
       10 GETUPVAL                         R3 3
       11 MOVE                             R4 R0
       12 CALL                             R3 1 -1
       13 NAMECALL                         R1 R1 K1 ["dispatch"]
       15 CALL                             R1 -1 0
       16 GETUPVAL                         R1 4
       17 LOADK                            R3 K2 ["clickContextMenuItem"]
       18 NAMECALL                         R1 R1 K3 ["report"]
       20 CALL                             R1 2 0
       21 RETURN                           R0 0

PROTO_3:
        0 LOADK                            R8 K0 ["RenameAlias"]
        1 LOADK                            R11 K1 ["ContextMenu"]
        2 LOADK                            R12 K0 ["RenameAlias"]
        3 NAMECALL                         R9 R3 K2 ["getText"]
        5 CALL                             R9 3 -1
        6 NAMECALL                         R6 R0 K3 ["AddNewAction"]
        8 CALL                             R6 -1 1
        9 GETTABLEKS                       R6 R6 K4 ["Triggered"]
       11 NEWCLOSURE                       R8 P0
       12 CAPTURE                          VAL R4
       13 CAPTURE                          VAL R2
       14 CAPTURE                          VAL R5
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          VAL R1
       17 NAMECALL                         R6 R6 K5 ["connect"]
       19 CALL                             R6 2 0
       20 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["OpenAssetConfiguration"]
        2 GETUPVAL                         R3 1
        3 DUPTABLE                         R5 K3 [{"id", "assetType"}]
        4 GETUPVAL                         R6 2
        5 GETTABLEKS                       R6 R6 K1 ["id"]
        7 SETTABLEKS                       R6 R5 K1 ["id"]
        9 GETUPVAL                         R6 3
       10 SETTABLEKS                       R6 R5 K2 ["assetType"]
       12 NAMECALL                         R3 R3 K4 ["JSONEncode"]
       14 CALL                             R3 2 -1
       15 NAMECALL                         R0 R0 K5 ["Fire"]
       17 CALL                             R0 -1 0
       18 GETUPVAL                         R0 4
       19 LOADK                            R2 K6 ["clickContextMenuItem"]
       20 NAMECALL                         R0 R0 K7 ["report"]
       22 CALL                             R0 2 0
       23 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R5 0
        1 NAMECALL                         R5 R5 K0 ["IsEdit"]
        3 CALL                             R5 1 1
        4 JUMPIFNOT                        R5 ; [+20]
        5 LOADK                            R7 K1 ["EditAsset"]
        6 LOADK                            R10 K2 ["ContextMenu"]
        7 LOADK                            R11 K1 ["EditAsset"]
        8 NAMECALL                         R8 R3 K3 ["getText"]
       10 CALL                             R8 3 -1
       11 NAMECALL                         R5 R0 K4 ["AddNewAction"]
       13 CALL                             R5 -1 1
       14 GETTABLEKS                       R5 R5 K5 ["Triggered"]
       16 NEWCLOSURE                       R7 P0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          VAL R2
       20 CAPTURE                          VAL R4
       21 CAPTURE                          VAL R1
       22 NAMECALL                         R5 R5 K6 ["connect"]
       24 CALL                             R5 2 0
       25 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 GETUPVAL                         R4 4
        5 GETUPVAL                         R5 5
        6 CALL                             R0 5 0
        7 GETUPVAL                         R0 6
        8 CALL                             R0 0 0
        9 GETUPVAL                         R0 7
       10 LOADK                            R2 K0 ["clickContextMenuItem"]
       11 NAMECALL                         R0 R0 K1 ["report"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R8 R7 K0 ["AssetManagerReducer"]
        2 GETTABLEKS                       R8 R8 K1 ["assetsTable"]
        4 GETTABLEKS                       R8 R8 K2 ["assets"]
        6 GETTABLEKS                       R9 R7 K0 ["AssetManagerReducer"]
        8 GETTABLEKS                       R9 R9 K3 ["selectedAssets"]
       10 LOADK                            R12 K4 ["RemoveFromGame"]
       11 LOADK                            R15 K5 ["ContextMenu"]
       12 LOADK                            R16 K4 ["RemoveFromGame"]
       13 NAMECALL                         R13 R4 K6 ["getText"]
       15 CALL                             R13 3 -1
       16 NAMECALL                         R10 R0 K7 ["AddNewAction"]
       18 CALL                             R10 -1 1
       19 GETTABLEKS                       R10 R10 K8 ["Triggered"]
       21 NEWCLOSURE                       R12 P0
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R8
       26 CAPTURE                          VAL R9
       27 CAPTURE                          VAL R6
       28 CAPTURE                          VAL R5
       29 CAPTURE                          VAL R2
       30 NAMECALL                         R10 R10 K9 ["connect"]
       32 CALL                             R10 2 0
       33 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETTABLEKS                       R3 R3 K0 ["Screen"]
        5 CALL                             R2 1 -1
        6 NAMECALL                         R0 R0 K1 ["dispatch"]
        8 CALL                             R0 -1 0
        9 GETUPVAL                         R0 3
       10 LOADK                            R2 K2 ["clickContextMenuItem"]
       11 NAMECALL                         R0 R0 K3 ["report"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETIMPORT                        R3 K3 [Enum.AssetType.Image]
        4 GETTABLEKS                       R3 R3 K4 ["Value"]
        6 CALL                             R2 1 -1
        7 NAMECALL                         R0 R0 K5 ["dispatch"]
        9 CALL                             R0 -1 0
       10 GETUPVAL                         R0 2
       11 LOADK                            R2 K6 ["clickContextMenuItem"]
       12 NAMECALL                         R0 R0 K7 ["report"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETIMPORT                        R3 K3 [Enum.AssetType.Audio]
        4 GETTABLEKS                       R3 R3 K4 ["Value"]
        6 CALL                             R2 1 -1
        7 NAMECALL                         R0 R0 K5 ["dispatch"]
        9 CALL                             R0 -1 0
       10 GETUPVAL                         R0 2
       11 LOADK                            R2 K6 ["clickContextMenuItem"]
       12 NAMECALL                         R0 R0 K7 ["report"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETIMPORT                        R3 K3 [Enum.AssetType.Video]
        4 GETTABLEKS                       R3 R3 K4 ["Value"]
        6 CALL                             R2 1 -1
        7 NAMECALL                         R0 R0 K5 ["dispatch"]
        9 CALL                             R0 -1 0
       10 GETUPVAL                         R0 2
       11 LOADK                            R2 K6 ["clickContextMenuItem"]
       12 NAMECALL                         R0 R0 K7 ["report"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETIMPORT                        R3 K3 [Enum.AssetType.MeshPart]
        4 GETTABLEKS                       R3 R3 K4 ["Value"]
        6 CALL                             R2 1 -1
        7 NAMECALL                         R0 R0 K5 ["dispatch"]
        9 CALL                             R0 -1 0
       10 GETUPVAL                         R0 2
       11 LOADK                            R2 K6 ["clickContextMenuItem"]
       12 NAMECALL                         R0 R0 K7 ["report"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["AddNewPlace"]
        3 CALL                             R0 1 2
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETIMPORT                        R2 K2 [error]
        7 MOVE                             R3 R1
        8 CALL                             R2 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R2 1
       11 GETUPVAL                         R4 2
       12 DUPTABLE                         R5 K4 [{"assets"}]
       13 NEWTABLE                         R6 0 0
       15 SETTABLEKS                       R6 R5 K3 ["assets"]
       17 CALL                             R4 1 -1
       18 NAMECALL                         R2 R2 K5 ["dispatch"]
       20 CALL                             R2 -1 0
       21 GETUPVAL                         R2 1
       22 NAMECALL                         R2 R2 K6 ["getState"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K7 ["Screen"]
       27 GETTABLEKS                       R3 R3 K8 ["currentScreen"]
       29 GETTABLEKS                       R3 R3 K9 ["Path"]
       31 GETUPVAL                         R4 3
       32 GETTABLEKS                       R4 R4 K10 ["PLACES"]
       34 GETTABLEKS                       R4 R4 K9 ["Path"]
       36 JUMPIFNOTEQ                      R3 R4 ; [+14]
       38 GETUPVAL                         R3 1
       39 GETUPVAL                         R5 4
       40 GETUPVAL                         R6 5
       41 GETUPVAL                         R7 3
       42 GETTABLEKS                       R7 R7 K10 ["PLACES"]
       44 GETTABLEKS                       R7 R7 K11 ["AssetType"]
       46 CALL                             R5 2 -1
       47 NAMECALL                         R3 R3 K5 ["dispatch"]
       49 CALL                             R3 -1 0
       50 JUMP                             ; [+9]
       51 GETUPVAL                         R3 1
       52 GETUPVAL                         R5 6
       53 GETUPVAL                         R6 3
       54 GETTABLEKS                       R6 R6 K10 ["PLACES"]
       56 CALL                             R5 1 -1
       57 NAMECALL                         R3 R3 K5 ["dispatch"]
       59 CALL                             R3 -1 0
       60 GETUPVAL                         R3 7
       61 LOADK                            R5 K12 ["clickContextMenuItem"]
       62 NAMECALL                         R3 R3 K13 ["report"]
       64 CALL                             R3 2 0
       65 RETURN                           R0 0

PROTO_14:
        0 LOADK                            R8 K0 ["OpenFolder"]
        1 LOADK                            R11 K1 ["ContextMenu"]
        2 LOADK                            R12 K0 ["OpenFolder"]
        3 NAMECALL                         R9 R4 K2 ["getText"]
        5 CALL                             R9 3 -1
        6 NAMECALL                         R6 R3 K3 ["AddNewAction"]
        8 CALL                             R6 -1 1
        9 GETTABLEKS                       R6 R6 K4 ["Triggered"]
       11 NEWCLOSURE                       R8 P0
       12 CAPTURE                          VAL R5
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R0
       16 NAMECALL                         R6 R6 K5 ["connect"]
       18 CALL                             R6 2 0
       19 GETTABLEKS                       R6 R2 K6 ["Screen"]
       21 GETTABLEKS                       R6 R6 K7 ["Path"]
       23 GETUPVAL                         R7 1
       24 GETTABLEKS                       R7 R7 K8 ["IMAGES"]
       26 GETTABLEKS                       R7 R7 K7 ["Path"]
       28 JUMPIFNOTEQ                      R6 R7 ; [+20]
       30 LOADK                            R8 K9 ["AddImages"]
       31 LOADK                            R11 K1 ["ContextMenu"]
       32 LOADK                            R12 K9 ["AddImages"]
       33 NAMECALL                         R9 R4 K2 ["getText"]
       35 CALL                             R9 3 -1
       36 NAMECALL                         R6 R3 K3 ["AddNewAction"]
       38 CALL                             R6 -1 1
       39 GETTABLEKS                       R6 R6 K4 ["Triggered"]
       41 NEWCLOSURE                       R8 P1
       42 CAPTURE                          VAL R5
       43 CAPTURE                          UPVAL U2
       44 CAPTURE                          VAL R0
       45 NAMECALL                         R6 R6 K5 ["connect"]
       47 CALL                             R6 2 0
       48 JUMP                             ; [+130]
       49 GETUPVAL                         R6 3
       50 CALL                             R6 0 1
       51 JUMPIFNOT                        R6 ; [+30]
       52 GETTABLEKS                       R6 R2 K6 ["Screen"]
       54 GETTABLEKS                       R6 R6 K7 ["Path"]
       56 GETUPVAL                         R7 1
       57 GETTABLEKS                       R7 R7 K10 ["AUDIO"]
       59 GETTABLEKS                       R7 R7 K7 ["Path"]
       61 JUMPIFNOTEQ                      R6 R7 ; [+20]
       63 LOADK                            R8 K11 ["AddAudio"]
       64 LOADK                            R11 K1 ["ContextMenu"]
       65 LOADK                            R12 K11 ["AddAudio"]
       66 NAMECALL                         R9 R4 K2 ["getText"]
       68 CALL                             R9 3 -1
       69 NAMECALL                         R6 R3 K3 ["AddNewAction"]
       71 CALL                             R6 -1 1
       72 GETTABLEKS                       R6 R6 K4 ["Triggered"]
       74 NEWCLOSURE                       R8 P2
       75 CAPTURE                          VAL R5
       76 CAPTURE                          UPVAL U2
       77 CAPTURE                          VAL R0
       78 NAMECALL                         R6 R6 K5 ["connect"]
       80 CALL                             R6 2 0
       81 JUMP                             ; [+97]
       82 GETUPVAL                         R6 4
       83 CALL                             R6 0 1
       84 JUMPIFNOT                        R6 ; [+30]
       85 GETTABLEKS                       R6 R2 K6 ["Screen"]
       87 GETTABLEKS                       R6 R6 K7 ["Path"]
       89 GETUPVAL                         R7 1
       90 GETTABLEKS                       R7 R7 K12 ["VIDEO"]
       92 GETTABLEKS                       R7 R7 K7 ["Path"]
       94 JUMPIFNOTEQ                      R6 R7 ; [+20]
       96 LOADK                            R8 K13 ["AddVideo"]
       97 LOADK                            R11 K1 ["ContextMenu"]
       98 LOADK                            R12 K13 ["AddVideo"]
       99 NAMECALL                         R9 R4 K2 ["getText"]
      101 CALL                             R9 3 -1
      102 NAMECALL                         R6 R3 K3 ["AddNewAction"]
      104 CALL                             R6 -1 1
      105 GETTABLEKS                       R6 R6 K4 ["Triggered"]
      107 NEWCLOSURE                       R8 P3
      108 CAPTURE                          VAL R5
      109 CAPTURE                          UPVAL U2
      110 CAPTURE                          VAL R0
      111 NAMECALL                         R6 R6 K5 ["connect"]
      113 CALL                             R6 2 0
      114 JUMP                             ; [+64]
      115 GETTABLEKS                       R6 R2 K6 ["Screen"]
      117 GETTABLEKS                       R6 R6 K7 ["Path"]
      119 GETUPVAL                         R7 1
      120 GETTABLEKS                       R7 R7 K14 ["MESHES"]
      122 GETTABLEKS                       R7 R7 K7 ["Path"]
      124 JUMPIFNOTEQ                      R6 R7 ; [+20]
      126 LOADK                            R8 K15 ["AddMeshes"]
      127 LOADK                            R11 K1 ["ContextMenu"]
      128 LOADK                            R12 K15 ["AddMeshes"]
      129 NAMECALL                         R9 R4 K2 ["getText"]
      131 CALL                             R9 3 -1
      132 NAMECALL                         R6 R3 K3 ["AddNewAction"]
      134 CALL                             R6 -1 1
      135 GETTABLEKS                       R6 R6 K4 ["Triggered"]
      137 NEWCLOSURE                       R8 P4
      138 CAPTURE                          VAL R5
      139 CAPTURE                          UPVAL U2
      140 CAPTURE                          VAL R0
      141 NAMECALL                         R6 R6 K5 ["connect"]
      143 CALL                             R6 2 0
      144 JUMP                             ; [+34]
      145 GETTABLEKS                       R6 R2 K6 ["Screen"]
      147 GETTABLEKS                       R6 R6 K7 ["Path"]
      149 GETUPVAL                         R7 1
      150 GETTABLEKS                       R7 R7 K16 ["PLACES"]
      152 GETTABLEKS                       R7 R7 K7 ["Path"]
      154 JUMPIFNOTEQ                      R6 R7 ; [+24]
      156 LOADK                            R8 K17 ["AddPlace"]
      157 LOADK                            R11 K1 ["ContextMenu"]
      158 LOADK                            R12 K18 ["AddNewPlace"]
      159 NAMECALL                         R9 R4 K2 ["getText"]
      161 CALL                             R9 3 -1
      162 NAMECALL                         R6 R3 K3 ["AddNewAction"]
      164 CALL                             R6 -1 1
      165 GETTABLEKS                       R6 R6 K4 ["Triggered"]
      167 NEWCLOSURE                       R8 P5
      168 CAPTURE                          UPVAL U5
      169 CAPTURE                          VAL R5
      170 CAPTURE                          UPVAL U6
      171 CAPTURE                          UPVAL U1
      172 CAPTURE                          UPVAL U7
      173 CAPTURE                          VAL R1
      174 CAPTURE                          UPVAL U0
      175 CAPTURE                          VAL R0
      176 NAMECALL                         R6 R6 K5 ["connect"]
      178 CALL                             R6 2 0
      179 NAMECALL                         R6 R3 K19 ["ShowAsync"]
      181 CALL                             R6 1 0
      182 NAMECALL                         R6 R3 K20 ["Destroy"]
      184 CALL                             R6 1 0
      185 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 NEWTABLE                         R0 1 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["id"]
        7 LOADB                            R2 1
        8 SETTABLE                         R2 R0 R1
        9 GETUPVAL                         R1 2
       10 GETUPVAL                         R3 3
       11 MOVE                             R4 R0
       12 CALL                             R3 1 -1
       13 NAMECALL                         R1 R1 K1 ["dispatch"]
       15 CALL                             R1 -1 0
       16 GETUPVAL                         R1 4
       17 LOADK                            R3 K2 ["clickContextMenuItem"]
       18 NAMECALL                         R1 R1 K3 ["report"]
       20 CALL                             R1 2 0
       21 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["id"]
        4 NAMECALL                         R0 R0 K1 ["CopyToClipboard"]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 2
        8 LOADK                            R2 K2 ["clickContextMenuItem"]
        9 NAMECALL                         R0 R0 K3 ["report"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 GETUPVAL                         R2 3
        5 GETTABLEKS                       R2 R2 K0 ["id"]
        7 CALL                             R0 2 0
        8 JUMP                             ; [+7]
        9 GETUPVAL                         R0 4
       10 GETUPVAL                         R2 3
       11 GETTABLEKS                       R2 R2 K0 ["id"]
       13 NAMECALL                         R0 R0 K1 ["ShowPlaceVersionHistoryDialog"]
       15 CALL                             R0 2 0
       16 GETUPVAL                         R0 5
       17 LOADK                            R2 K2 ["clickContextMenuItem"]
       18 NAMECALL                         R0 R0 K3 ["report"]
       20 CALL                             R0 2 0
       21 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 GETUPVAL                         R4 4
        5 GETUPVAL                         R5 5
        6 CALL                             R0 5 0
        7 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 LOADK                            R2 K0 ["RemovePlaceConfirmed"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 NAMECALL                         R0 R0 K1 ["Bind"]
       13 CALL                             R0 3 0
       14 GETUPVAL                         R0 8
       15 LOADK                            R2 K2 ["clickContextMenuItem"]
       16 NAMECALL                         R0 R0 K3 ["report"]
       18 CALL                             R0 2 0
       19 RETURN                           R0 0

PROTO_20:
        0 NAMECALL                         R9 R7 K0 ["getState"]
        2 CALL                             R9 1 1
        3 GETTABLEKS                       R10 R9 K1 ["AssetManagerReducer"]
        5 GETTABLEKS                       R10 R10 K2 ["assetsTable"]
        7 GETTABLEKS                       R10 R10 K3 ["assets"]
        9 GETTABLEKS                       R11 R9 K1 ["AssetManagerReducer"]
       11 GETTABLEKS                       R11 R11 K4 ["selectedAssets"]
       13 LOADK                            R14 K5 ["Rename"]
       14 LOADK                            R17 K6 ["ContextMenu"]
       15 LOADK                            R18 K5 ["Rename"]
       16 NAMECALL                         R15 R4 K7 ["getText"]
       18 CALL                             R15 3 -1
       19 NAMECALL                         R12 R3 K8 ["AddNewAction"]
       21 CALL                             R12 -1 1
       22 GETTABLEKS                       R12 R12 K9 ["Triggered"]
       24 NEWCLOSURE                       R14 P0
       25 CAPTURE                          VAL R5
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R7
       28 CAPTURE                          UPVAL U0
       29 CAPTURE                          VAL R0
       30 NAMECALL                         R12 R12 K10 ["connect"]
       32 CALL                             R12 2 0
       33 LOADK                            R14 K11 ["CopyIdToClipboard"]
       34 LOADK                            R17 K6 ["ContextMenu"]
       35 LOADK                            R18 K11 ["CopyIdToClipboard"]
       36 NAMECALL                         R15 R4 K7 ["getText"]
       38 CALL                             R15 3 -1
       39 NAMECALL                         R12 R3 K8 ["AddNewAction"]
       41 CALL                             R12 -1 1
       42 GETTABLEKS                       R12 R12 K9 ["Triggered"]
       44 NEWCLOSURE                       R14 P1
       45 CAPTURE                          UPVAL U1
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R0
       48 NAMECALL                         R12 R12 K10 ["connect"]
       50 CALL                             R12 2 0
       51 LOADK                            R14 K12 ["ViewPlaceHistory"]
       52 LOADK                            R17 K6 ["ContextMenu"]
       53 LOADK                            R18 K12 ["ViewPlaceHistory"]
       54 NAMECALL                         R15 R4 K7 ["getText"]
       56 CALL                             R15 3 -1
       57 NAMECALL                         R12 R3 K8 ["AddNewAction"]
       59 CALL                             R12 -1 1
       60 GETTABLEKS                       R12 R12 K9 ["Triggered"]
       62 NEWCLOSURE                       R14 P2
       63 CAPTURE                          UPVAL U2
       64 CAPTURE                          UPVAL U3
       65 CAPTURE                          VAL R8
       66 CAPTURE                          VAL R2
       67 CAPTURE                          UPVAL U1
       68 CAPTURE                          VAL R0
       69 NAMECALL                         R12 R12 K10 ["connect"]
       71 CALL                             R12 2 0
       72 GETTABLEKS                       R12 R2 K13 ["isRootPlace"]
       74 JUMPIF                           R12 ; [+24]
       75 LOADK                            R14 K14 ["RemoveFromGame"]
       76 LOADK                            R17 K6 ["ContextMenu"]
       77 LOADK                            R18 K14 ["RemoveFromGame"]
       78 NAMECALL                         R15 R4 K7 ["getText"]
       80 CALL                             R15 3 -1
       81 NAMECALL                         R12 R3 K8 ["AddNewAction"]
       83 CALL                             R12 -1 1
       84 GETTABLEKS                       R12 R12 K9 ["Triggered"]
       86 NEWCLOSURE                       R14 P3
       87 CAPTURE                          VAL R6
       88 CAPTURE                          UPVAL U4
       89 CAPTURE                          UPVAL U5
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R11
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R0
       96 NAMECALL                         R12 R12 K10 ["connect"]
       98 CALL                             R12 2 0
       99 NAMECALL                         R12 R3 K15 ["ShowAsync"]
      101 CALL                             R12 1 0
      102 NAMECALL                         R12 R3 K16 ["Destroy"]
      104 CALL                             R12 1 0
      105 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NEWTABLE                         R3 1 0
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R4 R4 K0 ["key"]
        7 LOADB                            R5 1
        8 SETTABLE                         R5 R3 R4
        9 CALL                             R2 1 -1
       10 NAMECALL                         R0 R0 K1 ["dispatch"]
       12 CALL                             R0 -1 0
       13 GETUPVAL                         R0 3
       14 GETUPVAL                         R1 2
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["id"]
        4 NAMECALL                         R0 R0 K1 ["InsertPackage"]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 2
        8 LOADK                            R2 K2 ["clickContextMenuItem"]
        9 NAMECALL                         R0 R0 K3 ["report"]
       11 CALL                             R0 2 0
       12 GETUPVAL                         R0 3
       13 NAMECALL                         R0 R0 K4 ["getState"]
       15 CALL                             R0 1 1
       16 GETTABLEKS                       R1 R0 K5 ["AssetManagerReducer"]
       18 GETTABLEKS                       R1 R1 K6 ["searchTerm"]
       20 GETIMPORT                        R2 K9 [utf8.len]
       22 MOVE                             R3 R1
       23 CALL                             R2 1 1
       24 JUMPIFEQKN                       R2 K10 [0] ; [+6]
       26 GETUPVAL                         R2 2
       27 LOADK                            R4 K11 ["insertAfterSearch"]
       28 NAMECALL                         R2 R2 K3 ["report"]
       30 CALL                             R2 2 0
       31 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["id"]
        4 NAMECALL                         R0 R0 K1 ["UpdateAllPackages"]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 2
        8 LOADK                            R2 K2 ["clickContextMenuItem"]
        9 NAMECALL                         R0 R0 K3 ["report"]
       11 CALL                             R0 2 0
       12 GETUPVAL                         R0 3
       13 JUMPIFNOT                        R0 ; [+5]
       14 GETUPVAL                         R0 2
       15 LOADK                            R2 K4 ["massUpdateFromAssetManager"]
       16 NAMECALL                         R0 R0 K3 ["report"]
       18 CALL                             R0 2 0
       19 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["id"]
        4 NAMECALL                         R0 R0 K1 ["ViewPackageOnWebsite"]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 2
        8 LOADK                            R2 K2 ["clickContextMenuItem"]
        9 NAMECALL                         R0 R0 K3 ["report"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["id"]
        4 NAMECALL                         R0 R0 K1 ["CopyToClipboard"]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 2
        8 LOADK                            R2 K2 ["clickContextMenuItem"]
        9 NAMECALL                         R0 R0 K3 ["report"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["id"]
        4 NAMECALL                         R0 R0 K1 ["ShowPackageDetails"]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 2
        8 LOADK                            R2 K2 ["clickContextMenuItem"]
        9 NAMECALL                         R0 R0 K3 ["report"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_27:
        0 NAMECALL                         R7 R6 K0 ["getState"]
        2 CALL                             R7 1 1
        3 GETTABLEKS                       R8 R7 K1 ["AssetManagerReducer"]
        5 GETTABLEKS                       R8 R8 K2 ["view"]
        7 LOADB                            R9 1
        8 GETTABLEKS                       R10 R1 K3 ["action"]
       10 JUMPIFEQKS                       R10 K4 ["Edit"] ; [+7]
       12 GETTABLEKS                       R10 R1 K3 ["action"]
       14 JUMPIFEQKS                       R10 K5 ["Own"] ; [+2]
       16 LOADB                            R9 0 +1
       17 LOADB                            R9 1
       18 GETTABLEKS                       R10 R8 K6 ["Key"]
       20 GETUPVAL                         R11 0
       21 GETTABLEKS                       R11 R11 K7 ["LIST"]
       23 GETTABLEKS                       R11 R11 K6 ["Key"]
       25 JUMPIFNOTEQ                      R10 R11 ; [+21]
       27 JUMPIF                           R3 ; [+19]
       28 LOADK                            R12 K8 ["AssetPreview"]
       29 LOADK                            R15 K9 ["ContextMenu"]
       30 LOADK                            R16 K8 ["AssetPreview"]
       31 NAMECALL                         R13 R4 K10 ["getText"]
       33 CALL                             R13 3 -1
       34 NAMECALL                         R10 R2 K11 ["AddNewAction"]
       36 CALL                             R10 -1 1
       37 GETTABLEKS                       R10 R10 K12 ["Triggered"]
       39 NEWCLOSURE                       R12 P0
       40 CAPTURE                          VAL R6
       41 CAPTURE                          UPVAL U1
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R5
       44 NAMECALL                         R10 R10 K13 ["connect"]
       46 CALL                             R10 2 0
       47 GETUPVAL                         R10 2
       48 NAMECALL                         R10 R10 K14 ["IsEdit"]
       50 CALL                             R10 1 1
       51 JUMPIFNOT                        R10 ; [+19]
       52 LOADK                            R12 K15 ["Insert"]
       53 LOADK                            R15 K9 ["ContextMenu"]
       54 LOADK                            R16 K15 ["Insert"]
       55 NAMECALL                         R13 R4 K10 ["getText"]
       57 CALL                             R13 3 -1
       58 NAMECALL                         R10 R2 K11 ["AddNewAction"]
       60 CALL                             R10 -1 1
       61 GETTABLEKS                       R10 R10 K12 ["Triggered"]
       63 NEWCLOSURE                       R12 P1
       64 CAPTURE                          UPVAL U3
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R0
       67 CAPTURE                          VAL R6
       68 NAMECALL                         R10 R10 K13 ["connect"]
       70 CALL                             R10 2 0
       71 GETUPVAL                         R10 2
       72 NAMECALL                         R10 R10 K14 ["IsEdit"]
       74 CALL                             R10 1 1
       75 JUMPIFNOT                        R10 ; [+19]
       76 LOADK                            R12 K16 ["UpdateAll"]
       77 LOADK                            R15 K9 ["ContextMenu"]
       78 LOADK                            R16 K16 ["UpdateAll"]
       79 NAMECALL                         R13 R4 K10 ["getText"]
       81 CALL                             R13 3 -1
       82 NAMECALL                         R10 R2 K11 ["AddNewAction"]
       84 CALL                             R10 -1 1
       85 GETTABLEKS                       R10 R10 K12 ["Triggered"]
       87 NEWCLOSURE                       R12 P2
       88 CAPTURE                          UPVAL U3
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R0
       91 CAPTURE                          UPVAL U4
       92 NAMECALL                         R10 R10 K13 ["connect"]
       94 CALL                             R10 2 0
       95 LOADK                            R12 K17 ["ViewOnWebsite"]
       96 LOADK                            R15 K9 ["ContextMenu"]
       97 LOADK                            R16 K17 ["ViewOnWebsite"]
       98 NAMECALL                         R13 R4 K10 ["getText"]
      100 CALL                             R13 3 -1
      101 NAMECALL                         R10 R2 K11 ["AddNewAction"]
      103 CALL                             R10 -1 1
      104 GETTABLEKS                       R10 R10 K12 ["Triggered"]
      106 NEWCLOSURE                       R12 P3
      107 CAPTURE                          UPVAL U3
      108 CAPTURE                          VAL R1
      109 CAPTURE                          VAL R0
      110 NAMECALL                         R10 R10 K13 ["connect"]
      112 CALL                             R10 2 0
      113 LOADK                            R12 K18 ["CopyIdToClipboard"]
      114 LOADK                            R15 K9 ["ContextMenu"]
      115 LOADK                            R16 K18 ["CopyIdToClipboard"]
      116 NAMECALL                         R13 R4 K10 ["getText"]
      118 CALL                             R13 3 -1
      119 NAMECALL                         R10 R2 K11 ["AddNewAction"]
      121 CALL                             R10 -1 1
      122 GETTABLEKS                       R10 R10 K12 ["Triggered"]
      124 NEWCLOSURE                       R12 P4
      125 CAPTURE                          UPVAL U5
      126 CAPTURE                          VAL R1
      127 CAPTURE                          VAL R0
      128 NAMECALL                         R10 R10 K13 ["connect"]
      130 CALL                             R10 2 0
      131 GETUPVAL                         R10 2
      132 NAMECALL                         R10 R10 K14 ["IsEdit"]
      134 CALL                             R10 1 1
      135 JUMPIFNOT                        R10 ; [+19]
      136 JUMPIFNOT                        R9 ; [+18]
      137 LOADK                            R12 K19 ["PackageDetails"]
      138 LOADK                            R15 K9 ["ContextMenu"]
      139 LOADK                            R16 K19 ["PackageDetails"]
      140 NAMECALL                         R13 R4 K10 ["getText"]
      142 CALL                             R13 3 -1
      143 NAMECALL                         R10 R2 K11 ["AddNewAction"]
      145 CALL                             R10 -1 1
      146 GETTABLEKS                       R10 R10 K12 ["Triggered"]
      148 NEWCLOSURE                       R12 P5
      149 CAPTURE                          UPVAL U3
      150 CAPTURE                          VAL R1
      151 CAPTURE                          VAL R0
      152 NAMECALL                         R10 R10 K13 ["connect"]
      154 CALL                             R10 2 0
      155 NAMECALL                         R10 R2 K20 ["ShowAsync"]
      157 CALL                             R10 1 0
      158 NAMECALL                         R10 R2 K21 ["Destroy"]
      160 CALL                             R10 1 0
      161 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NEWTABLE                         R3 1 0
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R4 R4 K0 ["key"]
        7 LOADB                            R5 1
        8 SETTABLE                         R5 R3 R4
        9 CALL                             R2 1 -1
       10 NAMECALL                         R0 R0 K1 ["dispatch"]
       12 CALL                             R0 -1 0
       13 GETUPVAL                         R0 3
       14 GETUPVAL                         R1 2
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["AssetManagerReducer"]
        3 GETTABLEKS                       R0 R0 K1 ["assetsTable"]
        5 GETTABLEKS                       R0 R0 K2 ["assets"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["AssetManagerReducer"]
       10 GETTABLEKS                       R1 R1 K3 ["selectedAssets"]
       12 LENGTH                           R2 R1
       13 JUMPIFNOTEQKN                    R2 K4 [1] ; [+9]
       15 GETUPVAL                         R2 1
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K5 ["id"]
       19 NAMECALL                         R2 R2 K6 ["InsertImage"]
       21 CALL                             R2 2 0
       22 JUMP                             ; [+26]
       23 NEWTABLE                         R2 0 0
       25 GETIMPORT                        R3 K8 [pairs]
       27 MOVE                             R4 R0
       28 CALL                             R3 1 3
       29 FORGPREP_NEXT                    R3
       30 GETTABLEKS                       R8 R7 K9 ["layoutOrder"]
       32 GETTABLE                         R9 R1 R8
       33 JUMPIFNOT                        R9 ; [+8]
       34 GETTABLEKS                       R11 R7 K5 ["id"]
       36 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       38 MOVE                             R10 R2
       39 GETIMPORT                        R9 K12 [table.insert]
       41 CALL                             R9 2 0
       42 FORGLOOP                         R3 2 ; [-13]
       44 GETUPVAL                         R3 1
       45 MOVE                             R5 R2
       46 NAMECALL                         R3 R3 K13 ["InsertImages"]
       48 CALL                             R3 2 0
       49 GETUPVAL                         R2 3
       50 LOADK                            R4 K14 ["clickContextMenuItem"]
       51 NAMECALL                         R2 R2 K15 ["report"]
       53 CALL                             R2 2 0
       54 GETUPVAL                         R2 0
       55 GETTABLEKS                       R2 R2 K0 ["AssetManagerReducer"]
       57 GETTABLEKS                       R2 R2 K16 ["searchTerm"]
       59 GETIMPORT                        R3 K19 [utf8.len]
       61 MOVE                             R4 R2
       62 CALL                             R3 1 1
       63 JUMPIFEQKN                       R3 K20 [0] ; [+6]
       65 GETUPVAL                         R3 3
       66 LOADK                            R5 K21 ["insertAfterSearch"]
       67 NAMECALL                         R3 R3 K15 ["report"]
       69 CALL                             R3 2 0
       70 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 LOADK                            R3 K0 ["rbxassetid://"]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["id"]
        5 CONCAT                           R2 R3 R4
        6 NAMECALL                         R0 R0 K2 ["CopyToClipboard"]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 2
       10 LOADK                            R2 K3 ["clickContextMenuItem"]
       11 NAMECALL                         R0 R0 K4 ["report"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_31:
        0 NAMECALL                         R9 R8 K0 ["getState"]
        2 CALL                             R9 1 1
        3 GETTABLEKS                       R10 R9 K1 ["AssetManagerReducer"]
        5 GETTABLEKS                       R10 R10 K2 ["view"]
        7 GETTABLEKS                       R11 R10 K3 ["Key"]
        9 GETUPVAL                         R12 0
       10 GETTABLEKS                       R12 R12 K4 ["LIST"]
       12 GETTABLEKS                       R12 R12 K3 ["Key"]
       14 JUMPIFNOTEQ                      R11 R12 ; [+21]
       16 JUMPIF                           R4 ; [+19]
       17 LOADK                            R13 K5 ["AssetPreview"]
       18 LOADK                            R16 K6 ["ContextMenu"]
       19 LOADK                            R17 K5 ["AssetPreview"]
       20 NAMECALL                         R14 R5 K7 ["getText"]
       22 CALL                             R14 3 -1
       23 NAMECALL                         R11 R3 K8 ["AddNewAction"]
       25 CALL                             R11 -1 1
       26 GETTABLEKS                       R11 R11 K9 ["Triggered"]
       28 NEWCLOSURE                       R13 P0
       29 CAPTURE                          VAL R8
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R6
       33 NAMECALL                         R11 R11 K10 ["connect"]
       35 CALL                             R11 2 0
       36 GETUPVAL                         R11 2
       37 MOVE                             R12 R3
       38 MOVE                             R13 R0
       39 MOVE                             R14 R2
       40 MOVE                             R15 R5
       41 GETIMPORT                        R16 K14 [Enum.AssetType.Image]
       43 GETTABLEKS                       R16 R16 K15 ["Value"]
       45 CALL                             R11 5 0
       46 LOADK                            R13 K16 ["RenameAlias"]
       47 LOADK                            R16 K6 ["ContextMenu"]
       48 LOADK                            R17 K16 ["RenameAlias"]
       49 NAMECALL                         R14 R5 K7 ["getText"]
       51 CALL                             R14 3 -1
       52 NAMECALL                         R11 R3 K8 ["AddNewAction"]
       54 CALL                             R11 -1 1
       55 GETTABLEKS                       R11 R11 K9 ["Triggered"]
       57 NEWCLOSURE                       R13 P1
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R8
       61 CAPTURE                          UPVAL U3
       62 CAPTURE                          VAL R0
       63 NAMECALL                         R11 R11 K10 ["connect"]
       65 CALL                             R11 2 0
       66 LOADK                            R13 K17 ["Insert"]
       67 LOADK                            R16 K6 ["ContextMenu"]
       68 LOADK                            R17 K17 ["Insert"]
       69 NAMECALL                         R14 R5 K7 ["getText"]
       71 CALL                             R14 3 -1
       72 NAMECALL                         R11 R3 K8 ["AddNewAction"]
       74 CALL                             R11 -1 1
       75 GETTABLEKS                       R11 R11 K9 ["Triggered"]
       77 NEWCLOSURE                       R13 P2
       78 CAPTURE                          VAL R9
       79 CAPTURE                          UPVAL U4
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R0
       82 NAMECALL                         R11 R11 K10 ["connect"]
       84 CALL                             R11 2 0
       85 LOADK                            R13 K18 ["CopyIdToClipboard"]
       86 LOADK                            R16 K6 ["ContextMenu"]
       87 LOADK                            R17 K18 ["CopyIdToClipboard"]
       88 NAMECALL                         R14 R5 K7 ["getText"]
       90 CALL                             R14 3 -1
       91 NAMECALL                         R11 R3 K8 ["AddNewAction"]
       93 CALL                             R11 -1 1
       94 GETTABLEKS                       R11 R11 K9 ["Triggered"]
       96 NEWCLOSURE                       R13 P3
       97 CAPTURE                          UPVAL U5
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R0
      100 NAMECALL                         R11 R11 K10 ["connect"]
      102 CALL                             R11 2 0
      103 GETUPVAL                         R11 6
      104 MOVE                             R12 R3
      105 MOVE                             R13 R1
      106 MOVE                             R14 R0
      107 MOVE                             R15 R2
      108 MOVE                             R16 R5
      109 MOVE                             R17 R7
      110 MOVE                             R18 R8
      111 MOVE                             R19 R9
      112 CALL                             R11 8 0
      113 NAMECALL                         R11 R3 K19 ["ShowAsync"]
      115 CALL                             R11 1 0
      116 NAMECALL                         R11 R3 K20 ["Destroy"]
      118 CALL                             R11 1 0
      119 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["id"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["name"]
        7 NAMECALL                         R0 R0 K2 ["InsertAudio"]
        9 CALL                             R0 3 0
       10 GETUPVAL                         R0 2
       11 LOADK                            R2 K3 ["clickContextMenuItem"]
       12 NAMECALL                         R0 R0 K4 ["report"]
       14 CALL                             R0 2 0
       15 GETUPVAL                         R0 3
       16 GETTABLEKS                       R0 R0 K5 ["AssetManagerReducer"]
       18 GETTABLEKS                       R0 R0 K6 ["searchTerm"]
       20 GETIMPORT                        R1 K9 [utf8.len]
       22 MOVE                             R2 R0
       23 CALL                             R1 1 1
       24 JUMPIFEQKN                       R1 K10 [0] ; [+6]
       26 GETUPVAL                         R1 2
       27 LOADK                            R3 K11 ["insertAfterSearch"]
       28 NAMECALL                         R1 R1 K4 ["report"]
       30 CALL                             R1 2 0
       31 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 LOADK                            R3 K0 ["rbxassetid://"]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["id"]
        5 CONCAT                           R2 R3 R4
        6 NAMECALL                         R0 R0 K2 ["CopyToClipboard"]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 2
       10 LOADK                            R2 K3 ["clickContextMenuItem"]
       11 NAMECALL                         R0 R0 K4 ["report"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_35:
        0 NAMECALL                         R9 R8 K0 ["getState"]
        2 CALL                             R9 1 1
        3 GETTABLEKS                       R10 R9 K1 ["AssetManagerReducer"]
        5 GETTABLEKS                       R10 R10 K2 ["view"]
        7 GETTABLEKS                       R11 R10 K3 ["Key"]
        9 GETUPVAL                         R12 0
       10 GETTABLEKS                       R12 R12 K4 ["LIST"]
       12 GETTABLEKS                       R12 R12 K3 ["Key"]
       14 JUMPIFNOTEQ                      R11 R12 ; [+19]
       16 JUMPIF                           R4 ; [+17]
       17 LOADK                            R13 K5 ["AssetPreview"]
       18 LOADK                            R16 K6 ["ContextMenu"]
       19 LOADK                            R17 K5 ["AssetPreview"]
       20 NAMECALL                         R14 R5 K7 ["getText"]
       22 CALL                             R14 3 -1
       23 NAMECALL                         R11 R3 K8 ["AddNewAction"]
       25 CALL                             R11 -1 1
       26 GETTABLEKS                       R11 R11 K9 ["Triggered"]
       28 NEWCLOSURE                       R13 P0
       29 CAPTURE                          VAL R6
       30 CAPTURE                          VAL R2
       31 NAMECALL                         R11 R11 K10 ["connect"]
       33 CALL                             R11 2 0
       34 GETUPVAL                         R11 1
       35 MOVE                             R12 R3
       36 MOVE                             R13 R0
       37 MOVE                             R14 R2
       38 MOVE                             R15 R5
       39 GETIMPORT                        R16 K14 [Enum.AssetType.Audio]
       41 GETTABLEKS                       R16 R16 K15 ["Value"]
       43 CALL                             R11 5 0
       44 LOADK                            R13 K16 ["RenameAlias"]
       45 LOADK                            R16 K6 ["ContextMenu"]
       46 LOADK                            R17 K16 ["RenameAlias"]
       47 NAMECALL                         R14 R5 K7 ["getText"]
       49 CALL                             R14 3 -1
       50 NAMECALL                         R11 R3 K8 ["AddNewAction"]
       52 CALL                             R11 -1 1
       53 GETTABLEKS                       R11 R11 K9 ["Triggered"]
       55 NEWCLOSURE                       R13 P1
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R8
       59 CAPTURE                          UPVAL U2
       60 CAPTURE                          VAL R0
       61 NAMECALL                         R11 R11 K10 ["connect"]
       63 CALL                             R11 2 0
       64 LOADK                            R13 K17 ["Insert"]
       65 LOADK                            R16 K6 ["ContextMenu"]
       66 LOADK                            R17 K17 ["Insert"]
       67 NAMECALL                         R14 R5 K7 ["getText"]
       69 CALL                             R14 3 -1
       70 NAMECALL                         R11 R3 K8 ["AddNewAction"]
       72 CALL                             R11 -1 1
       73 GETTABLEKS                       R11 R11 K9 ["Triggered"]
       75 NEWCLOSURE                       R13 P2
       76 CAPTURE                          UPVAL U3
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R0
       79 CAPTURE                          VAL R9
       80 NAMECALL                         R11 R11 K10 ["connect"]
       82 CALL                             R11 2 0
       83 LOADK                            R13 K18 ["CopyIdToClipboard"]
       84 LOADK                            R16 K6 ["ContextMenu"]
       85 LOADK                            R17 K18 ["CopyIdToClipboard"]
       86 NAMECALL                         R14 R5 K7 ["getText"]
       88 CALL                             R14 3 -1
       89 NAMECALL                         R11 R3 K8 ["AddNewAction"]
       91 CALL                             R11 -1 1
       92 GETTABLEKS                       R11 R11 K9 ["Triggered"]
       94 NEWCLOSURE                       R13 P3
       95 CAPTURE                          UPVAL U4
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R0
       98 NAMECALL                         R11 R11 K10 ["connect"]
      100 CALL                             R11 2 0
      101 GETUPVAL                         R11 5
      102 MOVE                             R12 R3
      103 MOVE                             R13 R1
      104 MOVE                             R14 R0
      105 MOVE                             R15 R2
      106 MOVE                             R16 R5
      107 MOVE                             R17 R7
      108 MOVE                             R18 R8
      109 MOVE                             R19 R9
      110 CALL                             R11 8 0
      111 NAMECALL                         R11 R3 K19 ["ShowAsync"]
      113 CALL                             R11 1 0
      114 NAMECALL                         R11 R3 K20 ["Destroy"]
      116 CALL                             R11 1 0
      117 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["id"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["name"]
        7 NAMECALL                         R0 R0 K2 ["InsertVideo"]
        9 CALL                             R0 3 0
       10 GETUPVAL                         R0 2
       11 LOADK                            R2 K3 ["clickContextMenuItem"]
       12 NAMECALL                         R0 R0 K4 ["report"]
       14 CALL                             R0 2 0
       15 GETUPVAL                         R0 3
       16 GETTABLEKS                       R0 R0 K5 ["AssetManagerReducer"]
       18 GETTABLEKS                       R0 R0 K6 ["searchTerm"]
       20 GETIMPORT                        R1 K9 [utf8.len]
       22 MOVE                             R2 R0
       23 CALL                             R1 1 1
       24 JUMPIFEQKN                       R1 K10 [0] ; [+6]
       26 GETUPVAL                         R1 2
       27 LOADK                            R3 K11 ["insertAfterSearch"]
       28 NAMECALL                         R1 R1 K4 ["report"]
       30 CALL                             R1 2 0
       31 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R0 0
        1 LOADK                            R3 K0 ["rbxassetid://"]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["id"]
        5 CONCAT                           R2 R3 R4
        6 NAMECALL                         R0 R0 K2 ["CopyToClipboard"]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 2
       10 LOADK                            R2 K3 ["clickContextMenuItem"]
       11 NAMECALL                         R0 R0 K4 ["report"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_39:
        0 NAMECALL                         R9 R8 K0 ["getState"]
        2 CALL                             R9 1 1
        3 GETTABLEKS                       R10 R9 K1 ["AssetManagerReducer"]
        5 GETTABLEKS                       R10 R10 K2 ["view"]
        7 GETTABLEKS                       R11 R10 K3 ["Key"]
        9 GETUPVAL                         R12 0
       10 GETTABLEKS                       R12 R12 K4 ["LIST"]
       12 GETTABLEKS                       R12 R12 K3 ["Key"]
       14 JUMPIFNOTEQ                      R11 R12 ; [+19]
       16 JUMPIF                           R4 ; [+17]
       17 LOADK                            R13 K5 ["AssetPreview"]
       18 LOADK                            R16 K6 ["ContextMenu"]
       19 LOADK                            R17 K5 ["AssetPreview"]
       20 NAMECALL                         R14 R5 K7 ["getText"]
       22 CALL                             R14 3 -1
       23 NAMECALL                         R11 R3 K8 ["AddNewAction"]
       25 CALL                             R11 -1 1
       26 GETTABLEKS                       R11 R11 K9 ["Triggered"]
       28 NEWCLOSURE                       R13 P0
       29 CAPTURE                          VAL R6
       30 CAPTURE                          VAL R2
       31 NAMECALL                         R11 R11 K10 ["connect"]
       33 CALL                             R11 2 0
       34 GETUPVAL                         R11 1
       35 MOVE                             R12 R3
       36 MOVE                             R13 R0
       37 MOVE                             R14 R2
       38 MOVE                             R15 R5
       39 GETIMPORT                        R16 K14 [Enum.AssetType.Video]
       41 GETTABLEKS                       R16 R16 K15 ["Value"]
       43 CALL                             R11 5 0
       44 LOADK                            R13 K16 ["RenameAlias"]
       45 LOADK                            R16 K6 ["ContextMenu"]
       46 LOADK                            R17 K16 ["RenameAlias"]
       47 NAMECALL                         R14 R5 K7 ["getText"]
       49 CALL                             R14 3 -1
       50 NAMECALL                         R11 R3 K8 ["AddNewAction"]
       52 CALL                             R11 -1 1
       53 GETTABLEKS                       R11 R11 K9 ["Triggered"]
       55 NEWCLOSURE                       R13 P1
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R8
       59 CAPTURE                          UPVAL U2
       60 CAPTURE                          VAL R0
       61 NAMECALL                         R11 R11 K10 ["connect"]
       63 CALL                             R11 2 0
       64 LOADK                            R13 K17 ["Insert"]
       65 LOADK                            R16 K6 ["ContextMenu"]
       66 LOADK                            R17 K17 ["Insert"]
       67 NAMECALL                         R14 R5 K7 ["getText"]
       69 CALL                             R14 3 -1
       70 NAMECALL                         R11 R3 K8 ["AddNewAction"]
       72 CALL                             R11 -1 1
       73 GETTABLEKS                       R11 R11 K9 ["Triggered"]
       75 NEWCLOSURE                       R13 P2
       76 CAPTURE                          UPVAL U3
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R0
       79 CAPTURE                          VAL R9
       80 NAMECALL                         R11 R11 K10 ["connect"]
       82 CALL                             R11 2 0
       83 LOADK                            R13 K18 ["CopyIdToClipboard"]
       84 LOADK                            R16 K6 ["ContextMenu"]
       85 LOADK                            R17 K18 ["CopyIdToClipboard"]
       86 NAMECALL                         R14 R5 K7 ["getText"]
       88 CALL                             R14 3 -1
       89 NAMECALL                         R11 R3 K8 ["AddNewAction"]
       91 CALL                             R11 -1 1
       92 GETTABLEKS                       R11 R11 K9 ["Triggered"]
       94 NEWCLOSURE                       R13 P3
       95 CAPTURE                          UPVAL U4
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R0
       98 NAMECALL                         R11 R11 K10 ["connect"]
      100 CALL                             R11 2 0
      101 GETUPVAL                         R11 5
      102 MOVE                             R12 R3
      103 MOVE                             R13 R1
      104 MOVE                             R14 R0
      105 MOVE                             R15 R2
      106 MOVE                             R16 R5
      107 MOVE                             R17 R7
      108 MOVE                             R18 R8
      109 MOVE                             R19 R9
      110 CALL                             R11 8 0
      111 NAMECALL                         R11 R3 K19 ["ShowAsync"]
      113 CALL                             R11 1 0
      114 NAMECALL                         R11 R3 K20 ["Destroy"]
      116 CALL                             R11 1 0
      117 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NEWTABLE                         R3 1 0
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R4 R4 K0 ["key"]
        7 LOADB                            R5 1
        8 SETTABLE                         R5 R3 R4
        9 CALL                             R2 1 -1
       10 NAMECALL                         R0 R0 K1 ["dispatch"]
       12 CALL                             R0 -1 0
       13 GETUPVAL                         R0 3
       14 GETUPVAL                         R1 2
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R0 0
        1 LOADK                            R3 K0 ["Meshes/"]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["name"]
        5 CONCAT                           R2 R3 R4
        6 LOADB                            R3 0
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K2 ["id"]
       10 NAMECALL                         R0 R0 K3 ["InsertMesh"]
       12 CALL                             R0 4 0
       13 GETUPVAL                         R0 2
       14 LOADK                            R2 K4 ["clickContextMenuItem"]
       15 NAMECALL                         R0 R0 K5 ["report"]
       17 CALL                             R0 2 0
       18 GETUPVAL                         R0 3
       19 GETTABLEKS                       R0 R0 K6 ["AssetManagerReducer"]
       21 GETTABLEKS                       R0 R0 K7 ["searchTerm"]
       23 GETIMPORT                        R1 K10 [utf8.len]
       25 MOVE                             R2 R0
       26 CALL                             R1 1 1
       27 JUMPIFEQKN                       R1 K11 [0] ; [+6]
       29 GETUPVAL                         R1 2
       30 LOADK                            R3 K12 ["insertAfterSearch"]
       31 NAMECALL                         R1 R1 K5 ["report"]
       33 CALL                             R1 2 0
       34 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKN                    R0 K0 [1] ; [+31]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+14]
        5 GETUPVAL                         R0 2
        6 LOADK                            R3 K1 ["Meshes/"]
        7 GETUPVAL                         R4 3
        8 GETTABLEKS                       R4 R4 K2 ["name"]
       10 CONCAT                           R2 R3 R4
       11 LOADB                            R3 1
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K3 ["id"]
       15 NAMECALL                         R0 R0 K4 ["InsertMesh"]
       17 CALL                             R0 4 0
       18 JUMP                             ; [+54]
       19 GETUPVAL                         R0 2
       20 LOADK                            R3 K1 ["Meshes/"]
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R4 R4 K2 ["name"]
       24 CONCAT                           R2 R3 R4
       25 LOADB                            R3 0
       26 GETUPVAL                         R4 3
       27 GETTABLEKS                       R4 R4 K3 ["id"]
       29 NAMECALL                         R0 R0 K4 ["InsertMesh"]
       31 CALL                             R0 4 0
       32 JUMP                             ; [+40]
       33 NEWTABLE                         R0 0 0
       35 NEWTABLE                         R1 0 0
       37 GETIMPORT                        R2 K6 [pairs]
       39 GETUPVAL                         R3 4
       40 CALL                             R2 1 3
       41 FORGPREP_NEXT                    R2
       42 GETTABLEKS                       R7 R6 K7 ["layoutOrder"]
       44 GETUPVAL                         R9 5
       45 GETTABLE                         R8 R9 R7
       46 JUMPIFNOT                        R8 ; [+18]
       47 LOADK                            R11 K1 ["Meshes/"]
       48 GETTABLEKS                       R12 R6 K2 ["name"]
       50 CONCAT                           R10 R11 R12
       51 FASTCALL2                        TABLE_INSERT R0 R10 ; [+4]
       53 MOVE                             R9 R0
       54 GETIMPORT                        R8 K10 [table.insert]
       56 CALL                             R8 2 0
       57 GETTABLEKS                       R10 R6 K3 ["id"]
       59 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       61 MOVE                             R9 R1
       62 GETIMPORT                        R8 K10 [table.insert]
       64 CALL                             R8 2 0
       65 FORGLOOP                         R2 2 ; [-24]
       67 GETUPVAL                         R2 2
       68 MOVE                             R4 R0
       69 MOVE                             R5 R1
       70 NAMECALL                         R2 R2 K11 ["InsertMeshesWithLocation"]
       72 CALL                             R2 3 0
       73 GETUPVAL                         R0 6
       74 LOADK                            R2 K12 ["clickContextMenuItem"]
       75 NAMECALL                         R0 R0 K13 ["report"]
       77 CALL                             R0 2 0
       78 GETUPVAL                         R0 7
       79 GETTABLEKS                       R0 R0 K14 ["AssetManagerReducer"]
       81 GETTABLEKS                       R0 R0 K15 ["searchTerm"]
       83 GETIMPORT                        R1 K18 [utf8.len]
       85 MOVE                             R2 R0
       86 CALL                             R1 1 1
       87 JUMPIFEQKN                       R1 K19 [0] ; [+6]
       89 GETUPVAL                         R1 6
       90 LOADK                            R3 K20 ["insertAfterSearch"]
       91 NAMECALL                         R1 R1 K13 ["report"]
       93 CALL                             R1 2 0
       94 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["CopyToClipboard"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 2
        6 LOADK                            R2 K1 ["clickContextMenuItem"]
        7 NAMECALL                         R0 R0 K2 ["report"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["CopyToClipboard"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 2
        6 LOADK                            R2 K1 ["clickContextMenuItem"]
        7 NAMECALL                         R0 R0 K2 ["report"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_45:
        0 NAMECALL                         R9 R8 K0 ["getState"]
        2 CALL                             R9 1 1
        3 GETTABLEKS                       R10 R9 K1 ["AssetManagerReducer"]
        5 GETTABLEKS                       R10 R10 K2 ["assetsTable"]
        7 GETTABLEKS                       R10 R10 K3 ["assets"]
        9 GETTABLEKS                       R11 R9 K1 ["AssetManagerReducer"]
       11 GETTABLEKS                       R11 R11 K4 ["selectedAssets"]
       13 LOADN                            R12 0
       14 GETIMPORT                        R13 K6 [pairs]
       16 MOVE                             R14 R11
       17 CALL                             R13 1 3
       18 FORGPREP_NEXT                    R13
       19 ADDK                             R12 R12 K7 [1]
       20 FORGLOOP                         R13 2 ; [-2]
       22 GETTABLEKS                       R13 R9 K1 ["AssetManagerReducer"]
       24 GETTABLEKS                       R13 R13 K8 ["view"]
       26 GETTABLEKS                       R14 R13 K9 ["Key"]
       28 GETUPVAL                         R15 0
       29 GETTABLEKS                       R15 R15 K10 ["LIST"]
       31 GETTABLEKS                       R15 R15 K9 ["Key"]
       33 JUMPIFNOTEQ                      R14 R15 ; [+21]
       35 JUMPIF                           R4 ; [+19]
       36 LOADK                            R16 K11 ["AssetPreview"]
       37 LOADK                            R19 K12 ["ContextMenu"]
       38 LOADK                            R20 K11 ["AssetPreview"]
       39 NAMECALL                         R17 R5 K13 ["getText"]
       41 CALL                             R17 3 -1
       42 NAMECALL                         R14 R3 K14 ["AddNewAction"]
       44 CALL                             R14 -1 1
       45 GETTABLEKS                       R14 R14 K15 ["Triggered"]
       47 NEWCLOSURE                       R16 P0
       48 CAPTURE                          VAL R8
       49 CAPTURE                          UPVAL U1
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R6
       52 NAMECALL                         R14 R14 K16 ["connect"]
       54 CALL                             R14 2 0
       55 GETUPVAL                         R14 2
       56 MOVE                             R15 R3
       57 MOVE                             R16 R0
       58 MOVE                             R17 R2
       59 MOVE                             R18 R5
       60 GETIMPORT                        R19 K20 [Enum.AssetType.MeshPart]
       62 GETTABLEKS                       R19 R19 K21 ["Value"]
       64 CALL                             R14 5 0
       65 LOADK                            R16 K22 ["RenameAlias"]
       66 LOADK                            R19 K12 ["ContextMenu"]
       67 LOADK                            R20 K22 ["RenameAlias"]
       68 NAMECALL                         R17 R5 K13 ["getText"]
       70 CALL                             R17 3 -1
       71 NAMECALL                         R14 R3 K14 ["AddNewAction"]
       73 CALL                             R14 -1 1
       74 GETTABLEKS                       R14 R14 K15 ["Triggered"]
       76 NEWCLOSURE                       R16 P1
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R8
       80 CAPTURE                          UPVAL U3
       81 CAPTURE                          VAL R0
       82 NAMECALL                         R14 R14 K16 ["connect"]
       84 CALL                             R14 2 0
       85 JUMPIFNOTEQKN                    R12 K7 [1] ; [+20]
       87 LOADK                            R16 K23 ["Insert"]
       88 LOADK                            R19 K12 ["ContextMenu"]
       89 LOADK                            R20 K23 ["Insert"]
       90 NAMECALL                         R17 R5 K13 ["getText"]
       92 CALL                             R17 3 -1
       93 NAMECALL                         R14 R3 K14 ["AddNewAction"]
       95 CALL                             R14 -1 1
       96 GETTABLEKS                       R14 R14 K15 ["Triggered"]
       98 NEWCLOSURE                       R16 P2
       99 CAPTURE                          UPVAL U4
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R0
      102 CAPTURE                          VAL R9
      103 NAMECALL                         R14 R14 K16 ["connect"]
      105 CALL                             R14 2 0
      106 LOADK                            R16 K24 ["InsertWithLocation"]
      107 LOADK                            R19 K12 ["ContextMenu"]
      108 LOADK                            R20 K24 ["InsertWithLocation"]
      109 NAMECALL                         R17 R5 K13 ["getText"]
      111 CALL                             R17 3 -1
      112 NAMECALL                         R14 R3 K14 ["AddNewAction"]
      114 CALL                             R14 -1 1
      115 GETTABLEKS                       R14 R14 K15 ["Triggered"]
      117 NEWCLOSURE                       R16 P3
      118 CAPTURE                          REF R12
      119 CAPTURE                          UPVAL U5
      120 CAPTURE                          UPVAL U4
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R10
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R0
      125 CAPTURE                          VAL R9
      126 NAMECALL                         R14 R14 K16 ["connect"]
      128 CALL                             R14 2 0
      129 GETIMPORT                        R14 K26 [pcall]
      131 GETUPVAL                         R15 4
      132 GETTABLEKS                       R15 R15 K27 ["GetMeshIdFromAliasName"]
      134 GETUPVAL                         R16 4
      135 LOADK                            R18 K28 ["Meshes/"]
      136 GETTABLEKS                       R19 R2 K29 ["name"]
      138 CONCAT                           R17 R18 R19
      139 CALL                             R14 3 2
      140 GETIMPORT                        R16 K26 [pcall]
      142 GETUPVAL                         R17 4
      143 GETTABLEKS                       R17 R17 K30 ["GetTextureIdFromAliasName"]
      145 GETUPVAL                         R18 4
      146 LOADK                            R20 K28 ["Meshes/"]
      147 GETTABLEKS                       R21 R2 K29 ["name"]
      149 CONCAT                           R19 R20 R21
      150 CALL                             R16 3 2
      151 JUMPIFNOT                        R14 ; [+19]
      152 LOADK                            R20 K31 ["CopyMeshIdToClipboard"]
      153 LOADK                            R23 K12 ["ContextMenu"]
      154 LOADK                            R24 K31 ["CopyMeshIdToClipboard"]
      155 NAMECALL                         R21 R5 K13 ["getText"]
      157 CALL                             R21 3 -1
      158 NAMECALL                         R18 R3 K14 ["AddNewAction"]
      160 CALL                             R18 -1 1
      161 GETTABLEKS                       R18 R18 K15 ["Triggered"]
      163 NEWCLOSURE                       R20 P4
      164 CAPTURE                          UPVAL U6
      165 CAPTURE                          VAL R15
      166 CAPTURE                          VAL R0
      167 NAMECALL                         R18 R18 K16 ["connect"]
      169 CALL                             R18 2 0
      170 JUMP                             ; [+7]
      171 GETIMPORT                        R18 K33 [warn]
      173 LOADK                            R20 K34 ["Failed to get mesh id for asset id "]
      174 GETTABLEKS                       R21 R2 K35 ["id"]
      176 CONCAT                           R19 R20 R21
      177 CALL                             R18 1 0
      178 JUMPIFNOT                        R16 ; [+18]
      179 LOADK                            R20 K36 ["CopyTextureIdToClipboard"]
      180 LOADK                            R23 K12 ["ContextMenu"]
      181 LOADK                            R24 K36 ["CopyTextureIdToClipboard"]
      182 NAMECALL                         R21 R5 K13 ["getText"]
      184 CALL                             R21 3 -1
      185 NAMECALL                         R18 R3 K14 ["AddNewAction"]
      187 CALL                             R18 -1 1
      188 GETTABLEKS                       R18 R18 K15 ["Triggered"]
      190 NEWCLOSURE                       R20 P5
      191 CAPTURE                          UPVAL U6
      192 CAPTURE                          VAL R17
      193 CAPTURE                          VAL R0
      194 NAMECALL                         R18 R18 K16 ["connect"]
      196 CALL                             R18 2 0
      197 GETUPVAL                         R18 7
      198 MOVE                             R19 R3
      199 MOVE                             R20 R1
      200 MOVE                             R21 R0
      201 MOVE                             R22 R2
      202 MOVE                             R23 R5
      203 MOVE                             R24 R7
      204 MOVE                             R25 R8
      205 MOVE                             R26 R9
      206 CALL                             R18 8 0
      207 NAMECALL                         R18 R3 K37 ["ShowAsync"]
      209 CALL                             R18 1 0
      210 NAMECALL                         R18 R3 K38 ["Destroy"]
      212 CALL                             R18 1 0
      213 CLOSEUPVALS                      R12
      214 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NEWTABLE                         R3 1 0
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R4 R4 K0 ["key"]
        7 LOADB                            R5 1
        8 SETTABLE                         R5 R3 R4
        9 CALL                             R2 1 -1
       10 NAMECALL                         R0 R0 K1 ["dispatch"]
       12 CALL                             R0 -1 0
       13 GETUPVAL                         R0 3
       14 GETUPVAL                         R1 2
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["clickContextMenuItem"]
        2 NAMECALL                         R0 R0 K1 ["report"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K2 ["id"]
        9 NAMECALL                         R0 R0 K3 ["InsertModel"]
       11 CALL                             R0 2 0
       12 GETUPVAL                         R0 3
       13 GETTABLEKS                       R0 R0 K4 ["AssetManagerReducer"]
       15 GETTABLEKS                       R0 R0 K5 ["searchTerm"]
       17 GETIMPORT                        R1 K8 [utf8.len]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 1
       21 JUMPIFEQKN                       R1 K9 [0] ; [+6]
       23 GETUPVAL                         R1 0
       24 LOADK                            R3 K10 ["insertAfterSearch"]
       25 NAMECALL                         R1 R1 K1 ["report"]
       27 CALL                             R1 2 0
       28 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R0 0
        1 LOADK                            R3 K0 ["rbxassetid://"]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["id"]
        5 CONCAT                           R2 R3 R4
        6 NAMECALL                         R0 R0 K2 ["CopyToClipboard"]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 2
       10 LOADK                            R2 K3 ["clickContextMenuItem"]
       11 NAMECALL                         R0 R0 K4 ["report"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_49:
        0 NAMECALL                         R9 R8 K0 ["getState"]
        2 CALL                             R9 1 1
        3 GETTABLEKS                       R10 R9 K1 ["AssetManagerReducer"]
        5 GETTABLEKS                       R10 R10 K2 ["view"]
        7 GETTABLEKS                       R11 R10 K3 ["Key"]
        9 GETUPVAL                         R12 0
       10 GETTABLEKS                       R12 R12 K4 ["LIST"]
       12 GETTABLEKS                       R12 R12 K3 ["Key"]
       14 JUMPIFNOTEQ                      R11 R12 ; [+21]
       16 JUMPIF                           R4 ; [+19]
       17 LOADK                            R13 K5 ["AssetPreview"]
       18 LOADK                            R16 K6 ["ContextMenu"]
       19 LOADK                            R17 K5 ["AssetPreview"]
       20 NAMECALL                         R14 R5 K7 ["getText"]
       22 CALL                             R14 3 -1
       23 NAMECALL                         R11 R3 K8 ["AddNewAction"]
       25 CALL                             R11 -1 1
       26 GETTABLEKS                       R11 R11 K9 ["Triggered"]
       28 NEWCLOSURE                       R13 P0
       29 CAPTURE                          VAL R8
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R6
       33 NAMECALL                         R11 R11 K10 ["connect"]
       35 CALL                             R11 2 0
       36 GETUPVAL                         R11 2
       37 MOVE                             R12 R3
       38 MOVE                             R13 R0
       39 MOVE                             R14 R2
       40 MOVE                             R15 R5
       41 GETIMPORT                        R16 K14 [Enum.AssetType.Model]
       43 GETTABLEKS                       R16 R16 K15 ["Value"]
       45 CALL                             R11 5 0
       46 LOADK                            R13 K16 ["RenameAlias"]
       47 LOADK                            R16 K6 ["ContextMenu"]
       48 LOADK                            R17 K16 ["RenameAlias"]
       49 NAMECALL                         R14 R5 K7 ["getText"]
       51 CALL                             R14 3 -1
       52 NAMECALL                         R11 R3 K8 ["AddNewAction"]
       54 CALL                             R11 -1 1
       55 GETTABLEKS                       R11 R11 K9 ["Triggered"]
       57 NEWCLOSURE                       R13 P1
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R8
       61 CAPTURE                          UPVAL U3
       62 CAPTURE                          VAL R0
       63 NAMECALL                         R11 R11 K10 ["connect"]
       65 CALL                             R11 2 0
       66 LOADK                            R13 K17 ["Insert"]
       67 LOADK                            R16 K6 ["ContextMenu"]
       68 LOADK                            R17 K17 ["Insert"]
       69 NAMECALL                         R14 R5 K7 ["getText"]
       71 CALL                             R14 3 -1
       72 NAMECALL                         R11 R3 K8 ["AddNewAction"]
       74 CALL                             R11 -1 1
       75 GETTABLEKS                       R11 R11 K9 ["Triggered"]
       77 NEWCLOSURE                       R13 P2
       78 CAPTURE                          VAL R0
       79 CAPTURE                          UPVAL U4
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R9
       82 NAMECALL                         R11 R11 K10 ["connect"]
       84 CALL                             R11 2 0
       85 LOADK                            R13 K18 ["CopyIdToClipboard"]
       86 LOADK                            R16 K6 ["ContextMenu"]
       87 LOADK                            R17 K18 ["CopyIdToClipboard"]
       88 NAMECALL                         R14 R5 K7 ["getText"]
       90 CALL                             R14 3 -1
       91 NAMECALL                         R11 R3 K8 ["AddNewAction"]
       93 CALL                             R11 -1 1
       94 GETTABLEKS                       R11 R11 K9 ["Triggered"]
       96 NEWCLOSURE                       R13 P3
       97 CAPTURE                          UPVAL U5
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R0
      100 NAMECALL                         R11 R11 K10 ["connect"]
      102 CALL                             R11 2 0
      103 GETUPVAL                         R11 6
      104 MOVE                             R12 R3
      105 MOVE                             R13 R1
      106 MOVE                             R14 R0
      107 MOVE                             R15 R2
      108 MOVE                             R16 R5
      109 MOVE                             R17 R7
      110 MOVE                             R18 R8
      111 MOVE                             R19 R9
      112 CALL                             R11 8 0
      113 NAMECALL                         R11 R3 K19 ["ShowAsync"]
      115 CALL                             R11 1 0
      116 NAMECALL                         R11 R3 K20 ["Destroy"]
      118 CALL                             R11 1 0
      119 RETURN                           R0 0

PROTO_50:
        0 GETTABLEKS                       R11 R2 K0 ["assetType"]
        2 GETIMPORT                        R12 K4 [Enum.AssetType.Place]
        4 JUMPIFNOTEQ                      R11 R12 ; [+13]
        6 GETUPVAL                         R12 0
        7 MOVE                             R13 R0
        8 MOVE                             R14 R1
        9 MOVE                             R15 R2
       10 MOVE                             R16 R3
       11 MOVE                             R17 R5
       12 MOVE                             R18 R7
       13 MOVE                             R19 R8
       14 MOVE                             R20 R9
       15 MOVE                             R21 R10
       16 CALL                             R12 9 0
       17 RETURN                           R0 0
       18 GETIMPORT                        R12 K6 [Enum.AssetType.Package]
       20 JUMPIFNOTEQ                      R11 R12 ; [+11]
       22 GETUPVAL                         R12 1
       23 MOVE                             R13 R0
       24 MOVE                             R14 R2
       25 MOVE                             R15 R3
       26 MOVE                             R16 R4
       27 MOVE                             R17 R5
       28 MOVE                             R18 R6
       29 MOVE                             R19 R9
       30 CALL                             R12 7 0
       31 RETURN                           R0 0
       32 GETIMPORT                        R12 K8 [Enum.AssetType.Image]
       34 JUMPIFNOTEQ                      R11 R12 ; [+13]
       36 GETUPVAL                         R12 2
       37 MOVE                             R13 R0
       38 MOVE                             R14 R1
       39 MOVE                             R15 R2
       40 MOVE                             R16 R3
       41 MOVE                             R17 R4
       42 MOVE                             R18 R5
       43 MOVE                             R19 R6
       44 MOVE                             R20 R7
       45 MOVE                             R21 R9
       46 CALL                             R12 9 0
       47 RETURN                           R0 0
       48 GETIMPORT                        R12 K10 [Enum.AssetType.MeshPart]
       50 JUMPIFNOTEQ                      R11 R12 ; [+13]
       52 GETUPVAL                         R12 3
       53 MOVE                             R13 R0
       54 MOVE                             R14 R1
       55 MOVE                             R15 R2
       56 MOVE                             R16 R3
       57 MOVE                             R17 R4
       58 MOVE                             R18 R5
       59 MOVE                             R19 R6
       60 MOVE                             R20 R7
       61 MOVE                             R21 R9
       62 CALL                             R12 9 0
       63 RETURN                           R0 0
       64 GETUPVAL                         R12 4
       65 CALL                             R12 0 1
       66 JUMPIFNOT                        R12 ; [+16]
       67 GETIMPORT                        R12 K12 [Enum.AssetType.Audio]
       69 JUMPIFNOTEQ                      R11 R12 ; [+13]
       71 GETUPVAL                         R12 5
       72 MOVE                             R13 R0
       73 MOVE                             R14 R1
       74 MOVE                             R15 R2
       75 MOVE                             R16 R3
       76 MOVE                             R17 R4
       77 MOVE                             R18 R5
       78 MOVE                             R19 R6
       79 MOVE                             R20 R7
       80 MOVE                             R21 R9
       81 CALL                             R12 9 0
       82 RETURN                           R0 0
       83 GETUPVAL                         R12 6
       84 CALL                             R12 0 1
       85 JUMPIFNOT                        R12 ; [+16]
       86 GETIMPORT                        R12 K14 [Enum.AssetType.Video]
       88 JUMPIFNOTEQ                      R11 R12 ; [+13]
       90 GETUPVAL                         R12 7
       91 MOVE                             R13 R0
       92 MOVE                             R14 R1
       93 MOVE                             R15 R2
       94 MOVE                             R16 R3
       95 MOVE                             R17 R4
       96 MOVE                             R18 R5
       97 MOVE                             R19 R6
       98 MOVE                             R20 R7
       99 MOVE                             R21 R9
      100 CALL                             R12 9 0
      101 RETURN                           R0 0
      102 GETIMPORT                        R12 K16 [Enum.AssetType.Model]
      104 JUMPIFNOTEQ                      R11 R12 ; [+12]
      106 GETUPVAL                         R12 8
      107 MOVE                             R13 R0
      108 MOVE                             R14 R1
      109 MOVE                             R15 R2
      110 MOVE                             R16 R3
      111 MOVE                             R17 R4
      112 MOVE                             R18 R5
      113 MOVE                             R19 R6
      114 MOVE                             R20 R7
      115 MOVE                             R21 R9
      116 CALL                             R12 9 0
      117 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Analytics"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["API"]
        6 NAMECALL                         R2 R2 K2 ["get"]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K3 ["AssetData"]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K4 ["IsAssetPreviewMenu"]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K5 ["Localization"]
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R6 R6 K6 ["Plugin"]
       21 NAMECALL                         R6 R6 K2 ["get"]
       23 CALL                             R6 1 1
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R7 R7 K7 ["OnOpenAssetPreview"]
       27 GETUPVAL                         R8 0
       28 GETTABLEKS                       R8 R8 K8 ["OnAssetPreviewClose"]
       30 GETUPVAL                         R9 0
       31 GETTABLEKS                       R9 R9 K9 ["OnOpenConfirmRemovePlaceDialog"]
       33 LOADK                            R12 K10 ["AssetManagerContextMenu"]
       34 NAMECALL                         R10 R6 K11 ["CreatePluginMenu"]
       36 CALL                             R10 2 1
       37 GETTABLEKS                       R12 R3 K12 ["ClassName"]
       39 JUMPIFEQKS                       R12 K13 ["Folder"] ; [+2]
       41 LOADB                            R11 0 +1
       42 LOADB                            R11 1
       43 JUMPIFNOT                        R11 ; [+9]
       44 GETUPVAL                         R12 1
       45 MOVE                             R13 R1
       46 MOVE                             R14 R2
       47 MOVE                             R15 R3
       48 MOVE                             R16 R10
       49 MOVE                             R17 R5
       50 MOVE                             R18 R0
       51 CALL                             R12 6 0
       52 RETURN                           R0 0
       53 GETUPVAL                         R12 2
       54 MOVE                             R13 R1
       55 MOVE                             R14 R2
       56 MOVE                             R15 R3
       57 MOVE                             R16 R10
       58 MOVE                             R17 R4
       59 MOVE                             R18 R5
       60 MOVE                             R19 R7
       61 MOVE                             R20 R8
       62 MOVE                             R21 R9
       63 MOVE                             R22 R0
       64 MOVE                             R23 R6
       65 CALL                             R12 11 0
       66 RETURN                           R0 0

PROTO_52:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Actions"]
       15 GETTABLEKS                       R2 R2 K7 ["SetAssets"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R3 R3 K6 ["Actions"]
       24 GETTABLEKS                       R3 R3 K8 ["SetEditingAssets"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K5 ["Src"]
       31 GETTABLEKS                       R4 R4 K6 ["Actions"]
       33 GETTABLEKS                       R4 R4 K9 ["SetScreen"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K4 [require]
       38 GETTABLEKS                       R5 R0 K5 ["Src"]
       40 GETTABLEKS                       R5 R5 K6 ["Actions"]
       42 GETTABLEKS                       R5 R5 K10 ["SetSelectedAssets"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K4 [require]
       47 GETTABLEKS                       R6 R0 K5 ["Src"]
       49 GETTABLEKS                       R6 R6 K11 ["Thunks"]
       51 GETTABLEKS                       R6 R6 K12 ["GetAssets"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K4 [require]
       56 GETTABLEKS                       R7 R0 K5 ["Src"]
       58 GETTABLEKS                       R7 R7 K11 ["Thunks"]
       60 GETTABLEKS                       R7 R7 K13 ["LaunchBulkImport"]
       62 CALL                             R6 1 1
       63 GETIMPORT                        R7 K4 [require]
       65 GETTABLEKS                       R8 R0 K5 ["Src"]
       67 GETTABLEKS                       R8 R8 K14 ["Util"]
       69 GETTABLEKS                       R8 R8 K15 ["AssetManagerUtilities"]
       71 CALL                             R7 1 1
       72 GETTABLEKS                       R7 R7 K16 ["enableAudioImport"]
       74 GETIMPORT                        R8 K4 [require]
       76 GETTABLEKS                       R9 R0 K5 ["Src"]
       78 GETTABLEKS                       R9 R9 K14 ["Util"]
       80 GETTABLEKS                       R9 R9 K15 ["AssetManagerUtilities"]
       82 CALL                             R8 1 1
       83 GETTABLEKS                       R8 R8 K17 ["enableVideoImport"]
       85 GETIMPORT                        R9 K4 [require]
       87 GETTABLEKS                       R10 R0 K5 ["Src"]
       89 GETTABLEKS                       R10 R10 K14 ["Util"]
       91 GETTABLEKS                       R10 R10 K18 ["Screens"]
       93 CALL                             R9 1 1
       94 GETIMPORT                        R10 K4 [require]
       96 GETTABLEKS                       R11 R0 K5 ["Src"]
       98 GETTABLEKS                       R11 R11 K14 ["Util"]
      100 GETTABLEKS                       R11 R11 K19 ["View"]
      102 CALL                             R10 1 1
      103 GETIMPORT                        R11 K21 [game]
      105 LOADK                            R13 K22 ["AssetManagerService"]
      106 NAMECALL                         R11 R11 K23 ["GetService"]
      108 CALL                             R11 2 1
      109 GETIMPORT                        R12 K21 [game]
      111 LOADK                            R14 K24 ["HttpService"]
      112 NAMECALL                         R12 R12 K23 ["GetService"]
      114 CALL                             R12 2 1
      115 GETIMPORT                        R13 K21 [game]
      117 LOADK                            R15 K25 ["MemStorageService"]
      118 NAMECALL                         R13 R13 K23 ["GetService"]
      120 CALL                             R13 2 1
      121 GETIMPORT                        R14 K21 [game]
      123 LOADK                            R16 K26 ["RunService"]
      124 NAMECALL                         R14 R14 K23 ["GetService"]
      126 CALL                             R14 2 1
      127 GETIMPORT                        R15 K21 [game]
      129 LOADK                            R17 K27 ["StudioService"]
      130 NAMECALL                         R15 R15 K23 ["GetService"]
      132 CALL                             R15 2 1
      133 GETIMPORT                        R16 K21 [game]
      135 LOADK                            R18 K28 ["PlaceVersionHistory"]
      136 NAMECALL                         R16 R16 K29 ["GetEngineFeature"]
      138 CALL                             R16 2 1
      139 GETIMPORT                        R17 K21 [game]
      141 LOADK                            R19 K30 ["NewPackageAnalyticsWithRefactor2"]
      142 NAMECALL                         R17 R17 K31 ["GetFastFlag"]
      144 CALL                             R17 2 1
      145 GETIMPORT                        R18 K21 [game]
      147 LOADK                            R20 K32 ["AssetManagerInsertMeshCorrectly"]
      148 LOADB                            R21 0
      149 NAMECALL                         R18 R18 K33 ["DefineFastFlag"]
      151 CALL                             R18 3 1
      152 DUPTABLE                         R19 K38 [{"DataModel", "PluginId", "Category", "ItemId"}]
      153 LOADK                            R20 K39 ["Standalone"]
      154 SETTABLEKS                       R20 R19 K34 ["DataModel"]
      156 LOADK                            R20 K28 ["PlaceVersionHistory"]
      157 SETTABLEKS                       R20 R19 K35 ["PluginId"]
      159 LOADK                            R20 K6 ["Actions"]
      160 SETTABLEKS                       R20 R19 K36 ["Category"]
      162 LOADK                            R20 K40 ["Toggle"]
      163 SETTABLEKS                       R20 R19 K37 ["ItemId"]
      165 DUPTABLE                         R20 K38 [{"DataModel", "PluginId", "Category", "ItemId"}]
      166 LOADK                            R21 K39 ["Standalone"]
      167 SETTABLEKS                       R21 R20 K34 ["DataModel"]
      169 LOADK                            R21 K28 ["PlaceVersionHistory"]
      170 SETTABLEKS                       R21 R20 K35 ["PluginId"]
      172 LOADK                            R21 K41 ["Settings"]
      173 SETTABLEKS                       R21 R20 K36 ["Category"]
      175 LOADK                            R21 K42 ["PlaceId"]
      176 SETTABLEKS                       R21 R20 K37 ["ItemId"]
      178 DUPCLOSURE                       R21 K43 [PROTO_0]
      179 CAPTURE                          VAL R20
      180 CAPTURE                          VAL R19
      181 DUPCLOSURE                       R22 K44 [PROTO_1]
      182 CAPTURE                          VAL R11
      183 CAPTURE                          VAL R7
      184 CAPTURE                          VAL R8
      185 CAPTURE                          VAL R4
      186 CAPTURE                          VAL R1
      187 CAPTURE                          VAL R5
      188 DUPCLOSURE                       R23 K45 [PROTO_3]
      189 CAPTURE                          VAL R2
      190 DUPCLOSURE                       R24 K46 [PROTO_5]
      191 CAPTURE                          VAL R14
      192 CAPTURE                          VAL R13
      193 CAPTURE                          VAL R12
      194 DUPCLOSURE                       R25 K47 [PROTO_7]
      195 CAPTURE                          VAL R22
      196 DUPCLOSURE                       R26 K48 [PROTO_14]
      197 CAPTURE                          VAL R3
      198 CAPTURE                          VAL R9
      199 CAPTURE                          VAL R6
      200 CAPTURE                          VAL R7
      201 CAPTURE                          VAL R8
      202 CAPTURE                          VAL R11
      203 CAPTURE                          VAL R1
      204 CAPTURE                          VAL R5
      205 DUPCLOSURE                       R27 K49 [PROTO_20]
      206 CAPTURE                          VAL R2
      207 CAPTURE                          VAL R15
      208 CAPTURE                          VAL R16
      209 CAPTURE                          VAL R21
      210 CAPTURE                          VAL R13
      211 CAPTURE                          VAL R22
      212 DUPCLOSURE                       R28 K50 [PROTO_27]
      213 CAPTURE                          VAL R10
      214 CAPTURE                          VAL R4
      215 CAPTURE                          VAL R14
      216 CAPTURE                          VAL R11
      217 CAPTURE                          VAL R17
      218 CAPTURE                          VAL R15
      219 DUPCLOSURE                       R29 K51 [PROTO_31]
      220 CAPTURE                          VAL R10
      221 CAPTURE                          VAL R4
      222 CAPTURE                          VAL R24
      223 CAPTURE                          VAL R2
      224 CAPTURE                          VAL R11
      225 CAPTURE                          VAL R15
      226 CAPTURE                          VAL R25
      227 DUPCLOSURE                       R30 K52 [PROTO_35]
      228 CAPTURE                          VAL R10
      229 CAPTURE                          VAL R24
      230 CAPTURE                          VAL R2
      231 CAPTURE                          VAL R11
      232 CAPTURE                          VAL R15
      233 CAPTURE                          VAL R25
      234 DUPCLOSURE                       R31 K53 [PROTO_39]
      235 CAPTURE                          VAL R10
      236 CAPTURE                          VAL R24
      237 CAPTURE                          VAL R2
      238 CAPTURE                          VAL R11
      239 CAPTURE                          VAL R15
      240 CAPTURE                          VAL R25
      241 DUPCLOSURE                       R32 K54 [PROTO_45]
      242 CAPTURE                          VAL R10
      243 CAPTURE                          VAL R4
      244 CAPTURE                          VAL R24
      245 CAPTURE                          VAL R2
      246 CAPTURE                          VAL R11
      247 CAPTURE                          VAL R18
      248 CAPTURE                          VAL R15
      249 CAPTURE                          VAL R25
      250 DUPCLOSURE                       R33 K55 [PROTO_49]
      251 CAPTURE                          VAL R10
      252 CAPTURE                          VAL R4
      253 CAPTURE                          VAL R24
      254 CAPTURE                          VAL R2
      255 CAPTURE                          VAL R11
      256 CAPTURE                          VAL R15
      257 CAPTURE                          VAL R25
      258 DUPCLOSURE                       R34 K56 [PROTO_50]
      259 CAPTURE                          VAL R27
      260 CAPTURE                          VAL R28
      261 CAPTURE                          VAL R29
      262 CAPTURE                          VAL R32
      263 CAPTURE                          VAL R7
      264 CAPTURE                          VAL R30
      265 CAPTURE                          VAL R8
      266 CAPTURE                          VAL R31
      267 CAPTURE                          VAL R33
      268 DUPCLOSURE                       R35 K57 [PROTO_52]
      269 CAPTURE                          VAL R26
      270 CAPTURE                          VAL R34
      271 RETURN                           R35 1
