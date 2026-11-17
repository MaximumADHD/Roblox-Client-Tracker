PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["Id"]
        4 SETTABLE                         R0 R1 R2
        5 GETIMPORT                        R2 K2 [pairs]
        7 NAMECALL                         R3 R0 K3 ["GetDescendants"]
        9 CALL                             R3 1 -1
       10 CALL                             R2 -1 3
       11 FORGPREP_NEXT                    R2
       12 GETTABLEKS                       R7 R6 K0 ["Id"]
       14 SETTABLE                         R6 R1 R7
       15 FORGLOOP                         R2 2 ; [-4]
       17 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 DUPTABLE                         R5 K3 [{"node", "property", "assetId"}]
        2 SETTABLEKS                       R0 R5 K0 ["node"]
        4 SETTABLEKS                       R1 R5 K1 ["property"]
        6 SETTABLEKS                       R2 R5 K2 ["assetId"]
        8 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       10 GETIMPORT                        R3 K6 [table.insert]
       12 CALL                             R3 2 0
       13 GETUPVAL                         R3 1
       14 LOADB                            R4 1
       15 SETTABLE                         R4 R3 R2
       16 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOT                        R0 ; [+1]
        1 JUMPIF                           R1 ; [+6]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K0 ["HandlerControl"]
        5 GETTABLEKS                       R4 R4 K1 ["Continue"]
        7 RETURN                           R4 1
        8 LOADK                            R6 K2 ["importNodeId"]
        9 NAMECALL                         R4 R1 K3 ["GetAttribute"]
       11 CALL                             R4 2 1
       12 JUMPIF                           R4 ; [+6]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K0 ["HandlerControl"]
       16 GETTABLEKS                       R5 R5 K1 ["Continue"]
       18 RETURN                           R5 1
       19 LOADK                            R7 K4 ["MeshPart"]
       20 NAMECALL                         R5 R0 K5 ["IsA"]
       22 CALL                             R5 2 1
       23 JUMPIFNOT                        R5 ; [+75]
       24 LOADK                            R7 K4 ["MeshPart"]
       25 NAMECALL                         R5 R1 K5 ["IsA"]
       27 CALL                             R5 2 1
       28 JUMPIFNOT                        R5 ; [+70]
       29 GETUPVAL                         R6 1
       30 GETTABLE                         R5 R6 R4
       31 JUMPIFNOT                        R5 ; [+5]
       32 LOADK                            R8 K6 ["MeshImportData"]
       33 NAMECALL                         R6 R5 K5 ["IsA"]
       35 CALL                             R6 2 1
       36 JUMPIF                           R6 ; [+6]
       37 GETUPVAL                         R6 0
       38 GETTABLEKS                       R6 R6 K0 ["HandlerControl"]
       40 GETTABLEKS                       R6 R6 K1 ["Continue"]
       42 RETURN                           R6 1
       43 GETUPVAL                         R6 2
       44 GETTABLEKS                       R6 R6 K7 ["extractAssetId"]
       46 GETTABLEKS                       R7 R0 K8 ["MeshContent"]
       48 GETTABLEKS                       R7 R7 K9 ["Uri"]
       50 CALL                             R6 1 1
       51 JUMPIFNOT                        R6 ; [+14]
       52 GETUPVAL                         R8 3
       53 DUPTABLE                         R9 K14 [{["node"], ["property"] = "VersionedAssetId", ["assetId"]}]
       54 SETTABLEKS                       R5 R9 K10 ["node"]
       56 SETTABLEKS                       R6 R9 K13 ["assetId"]
       58 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
       60 GETIMPORT                        R7 K17 [table.insert]
       62 CALL                             R7 2 0
       63 GETUPVAL                         R7 4
       64 LOADB                            R8 1
       65 SETTABLE                         R8 R7 R6
       66 LOADK                            R9 K18 ["MaterialImportData"]
       67 NAMECALL                         R7 R5 K19 ["FindFirstChildOfClass"]
       69 CALL                             R7 2 1
       70 JUMPIFNOT                        R7 ; [+167]
       71 GETTABLEKS                       R8 R7 K20 ["IsPbr"]
       73 JUMPIFNOTEQKB                    R8 FALSE ; [+164]
       75 GETUPVAL                         R8 2
       76 GETTABLEKS                       R8 R8 K7 ["extractAssetId"]
       78 GETTABLEKS                       R9 R0 K21 ["TextureContent"]
       80 GETTABLEKS                       R9 R9 K9 ["Uri"]
       82 CALL                             R8 1 1
       83 JUMPIFNOT                        R8 ; [+154]
       84 GETUPVAL                         R10 3
       85 DUPTABLE                         R11 K23 [{["node"], ["property"] = "DiffuseVersionedAssetId", ["assetId"]}]
       86 SETTABLEKS                       R7 R11 K10 ["node"]
       88 SETTABLEKS                       R8 R11 K13 ["assetId"]
       90 FASTCALL2                        TABLE_INSERT R10 R11 ; [+3]
       92 GETIMPORT                        R9 K17 [table.insert]
       94 CALL                             R9 2 0
       95 GETUPVAL                         R9 4
       96 LOADB                            R10 1
       97 SETTABLE                         R10 R9 R8
       98 JUMP                             ; [+139]
       99 LOADK                            R7 K24 ["SurfaceAppearance"]
      100 NAMECALL                         R5 R0 K5 ["IsA"]
      102 CALL                             R5 2 1
      103 JUMPIFNOT                        R5 ; [+134]
      104 LOADK                            R7 K24 ["SurfaceAppearance"]
      105 NAMECALL                         R5 R1 K5 ["IsA"]
      107 CALL                             R5 2 1
      108 JUMPIFNOT                        R5 ; [+129]
      109 GETUPVAL                         R6 1
      110 GETTABLE                         R5 R6 R4
      111 JUMPIFNOT                        R5 ; [+5]
      112 LOADK                            R8 K18 ["MaterialImportData"]
      113 NAMECALL                         R6 R5 K5 ["IsA"]
      115 CALL                             R6 2 1
      116 JUMPIF                           R6 ; [+6]
      117 GETUPVAL                         R6 0
      118 GETTABLEKS                       R6 R6 K0 ["HandlerControl"]
      120 GETTABLEKS                       R6 R6 K1 ["Continue"]
      122 RETURN                           R6 1
      123 GETUPVAL                         R6 2
      124 GETTABLEKS                       R6 R6 K7 ["extractAssetId"]
      126 GETTABLEKS                       R7 R0 K25 ["ColorMapContent"]
      128 GETTABLEKS                       R7 R7 K9 ["Uri"]
      130 CALL                             R6 1 1
      131 JUMPIFNOT                        R6 ; [+14]
      132 GETUPVAL                         R8 3
      133 DUPTABLE                         R9 K23 [{["node"], ["property"] = "DiffuseVersionedAssetId", ["assetId"]}]
      134 SETTABLEKS                       R5 R9 K10 ["node"]
      136 SETTABLEKS                       R6 R9 K13 ["assetId"]
      138 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
      140 GETIMPORT                        R7 K17 [table.insert]
      142 CALL                             R7 2 0
      143 GETUPVAL                         R7 4
      144 LOADB                            R8 1
      145 SETTABLE                         R8 R7 R6
      146 GETUPVAL                         R7 2
      147 GETTABLEKS                       R7 R7 K7 ["extractAssetId"]
      149 GETTABLEKS                       R8 R0 K26 ["NormalMapContent"]
      151 GETTABLEKS                       R8 R8 K9 ["Uri"]
      153 CALL                             R7 1 1
      154 JUMPIFNOT                        R7 ; [+14]
      155 GETUPVAL                         R9 3
      156 DUPTABLE                         R10 K28 [{["node"], ["property"] = "NormalVersionedAssetId", ["assetId"]}]
      157 SETTABLEKS                       R5 R10 K10 ["node"]
      159 SETTABLEKS                       R7 R10 K13 ["assetId"]
      161 FASTCALL2                        TABLE_INSERT R9 R10 ; [+3]
      163 GETIMPORT                        R8 K17 [table.insert]
      165 CALL                             R8 2 0
      166 GETUPVAL                         R8 4
      167 LOADB                            R9 1
      168 SETTABLE                         R9 R8 R7
      169 GETUPVAL                         R8 2
      170 GETTABLEKS                       R8 R8 K7 ["extractAssetId"]
      172 GETTABLEKS                       R9 R0 K29 ["MetalnessMapContent"]
      174 GETTABLEKS                       R9 R9 K9 ["Uri"]
      176 CALL                             R8 1 1
      177 JUMPIFNOT                        R8 ; [+14]
      178 GETUPVAL                         R10 3
      179 DUPTABLE                         R11 K31 [{["node"], ["property"] = "MetalnessVersionedAssetId", ["assetId"]}]
      180 SETTABLEKS                       R5 R11 K10 ["node"]
      182 SETTABLEKS                       R8 R11 K13 ["assetId"]
      184 FASTCALL2                        TABLE_INSERT R10 R11 ; [+3]
      186 GETIMPORT                        R9 K17 [table.insert]
      188 CALL                             R9 2 0
      189 GETUPVAL                         R9 4
      190 LOADB                            R10 1
      191 SETTABLE                         R10 R9 R8
      192 GETUPVAL                         R9 2
      193 GETTABLEKS                       R9 R9 K7 ["extractAssetId"]
      195 GETTABLEKS                       R10 R0 K32 ["RoughnessMapContent"]
      197 GETTABLEKS                       R10 R10 K9 ["Uri"]
      199 CALL                             R9 1 1
      200 JUMPIFNOT                        R9 ; [+14]
      201 GETUPVAL                         R11 3
      202 DUPTABLE                         R12 K34 [{["node"], ["property"] = "RoughnessVersionedAssetId", ["assetId"]}]
      203 SETTABLEKS                       R5 R12 K10 ["node"]
      205 SETTABLEKS                       R9 R12 K13 ["assetId"]
      207 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      209 GETIMPORT                        R10 K17 [table.insert]
      211 CALL                             R10 2 0
      212 GETUPVAL                         R10 4
      213 LOADB                            R11 1
      214 SETTABLE                         R11 R10 R9
      215 GETUPVAL                         R10 2
      216 GETTABLEKS                       R10 R10 K7 ["extractAssetId"]
      218 GETTABLEKS                       R11 R0 K35 ["EmissiveMaskContent"]
      220 GETTABLEKS                       R11 R11 K9 ["Uri"]
      222 CALL                             R10 1 1
      223 JUMPIFNOT                        R10 ; [+14]
      224 GETUPVAL                         R12 3
      225 DUPTABLE                         R13 K37 [{["node"], ["property"] = "EmissiveVersionedAssetId", ["assetId"]}]
      226 SETTABLEKS                       R5 R13 K10 ["node"]
      228 SETTABLEKS                       R10 R13 K13 ["assetId"]
      230 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      232 GETIMPORT                        R11 K17 [table.insert]
      234 CALL                             R11 2 0
      235 GETUPVAL                         R11 4
      236 LOADB                            R12 1
      237 SETTABLE                         R12 R11 R10
      238 GETUPVAL                         R5 0
      239 GETTABLEKS                       R5 R5 K0 ["HandlerControl"]
      241 GETTABLEKS                       R5 R5 K1 ["Continue"]
      243 RETURN                           R5 1

PROTO_3:
        0 NAMECALL                         R3 R0 K0 ["GetPlaceholderInstanceTree"]
        2 CALL                             R3 1 1
        3 JUMPIF                           R3 ; [+3]
        4 LOADB                            R4 0
        5 LOADK                            R5 K1 ["Reimport failed to construct model"]
        6 RETURN                           R4 2
        7 NAMECALL                         R4 R0 K2 ["GetImportTree"]
        9 CALL                             R4 1 1
       10 JUMPIF                           R4 ; [+3]
       11 LOADB                            R5 0
       12 LOADK                            R6 K3 ["Reimport failed to construct import tree"]
       13 RETURN                           R5 2
       14 GETUPVAL                         R5 0
       15 MOVE                             R6 R4
       16 CALL                             R5 1 1
       17 NEWTABLE                         R6 0 0
       19 NEWTABLE                         R7 0 0
       21 NEWCLOSURE                       R8 P0
       22 CAPTURE                          VAL R6
       23 CAPTURE                          VAL R7
       24 GETUPVAL                         R9 1
       25 GETTABLEKS                       R9 R9 K4 ["matchTrees"]
       27 MOVE                             R10 R1
       28 MOVE                             R11 R3
       29 NEWCLOSURE                       R12 P1
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          VAL R5
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          VAL R6
       34 CAPTURE                          VAL R7
       35 CALL                             R9 3 0
       36 GETUPVAL                         R9 3
       37 GETTABLEKS                       R9 R9 K5 ["getAssetCreatorIdsAsync"]
       39 GETUPVAL                         R10 4
       40 GETTABLEKS                       R10 R10 K6 ["keys"]
       42 MOVE                             R11 R7
       43 CALL                             R10 1 -1
       44 CALL                             R9 -1 2
       45 JUMPIF                           R9 ; [+3]
       46 LOADB                            R11 0
       47 MOVE                             R12 R10
       48 RETURN                           R11 2
       49 JUMPIF                           R2 ; [+5]
       50 GETUPVAL                         R11 5
       51 NAMECALL                         R11 R11 K7 ["GetUserId"]
       53 CALL                             R11 1 1
       54 MOVE                             R2 R11
       55 MOVE                             R11 R6
       56 LOADNIL                          R12
       57 LOADNIL                          R13
       58 FORGPREP                         R11
       59 GETTABLEKS                       R17 R15 K8 ["assetId"]
       61 GETTABLE                         R16 R10 R17
       62 JUMPIFNOTEQ                      R16 R2 ; [+8]
       64 GETTABLEKS                       R17 R15 K9 ["node"]
       66 GETTABLEKS                       R18 R15 K10 ["property"]
       68 GETTABLEKS                       R19 R15 K8 ["assetId"]
       70 SETTABLE                         R19 R17 R18
       71 FORGLOOP                         R11 2 ; [-13]
       73 LOADB                            R11 1
       74 LOADK                            R12 K11 [""]
       75 RETURN                           R11 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Lib"]
       18 GETTABLEKS                       R3 R3 K9 ["Reimport"]
       20 GETTABLEKS                       R3 R3 K10 ["TreeMerge"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Lib"]
       27 GETTABLEKS                       R4 R4 K11 ["Util"]
       29 GETTABLEKS                       R4 R4 K12 ["AssetUri"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Lib"]
       36 GETTABLEKS                       R5 R5 K13 ["Networking"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K8 ["Lib"]
       43 GETTABLEKS                       R6 R6 K14 ["External"]
       45 GETTABLEKS                       R6 R6 K15 ["StudioService"]
       47 CALL                             R5 1 1
       48 DUPCLOSURE                       R6 K16 [PROTO_0]
       49 DUPCLOSURE                       R7 K17 [PROTO_3]
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R5
       56 RETURN                           R7 1
