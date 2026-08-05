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
       23 JUMPIFNOT                        R5 ; [+51]
       24 LOADK                            R7 K4 ["MeshPart"]
       25 NAMECALL                         R5 R1 K5 ["IsA"]
       27 CALL                             R5 2 1
       28 JUMPIFNOT                        R5 ; [+46]
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
       51 JUMPIFNOT                        R6 ; [+2]
       52 SETTABLEKS                       R6 R5 K10 ["VersionedAssetId"]
       54 LOADK                            R9 K11 ["MaterialImportData"]
       55 NAMECALL                         R7 R5 K12 ["FindFirstChildOfClass"]
       57 CALL                             R7 2 1
       58 JUMPIFNOT                        R7 ; [+95]
       59 GETTABLEKS                       R8 R7 K13 ["IsPbr"]
       61 JUMPIFNOTEQKB                    R8 FALSE ; [+92]
       63 GETUPVAL                         R8 2
       64 GETTABLEKS                       R8 R8 K7 ["extractAssetId"]
       66 GETTABLEKS                       R9 R0 K14 ["TextureContent"]
       68 GETTABLEKS                       R9 R9 K9 ["Uri"]
       70 CALL                             R8 1 1
       71 JUMPIFNOT                        R8 ; [+82]
       72 SETTABLEKS                       R8 R7 K15 ["DiffuseVersionedAssetId"]
       74 JUMP                             ; [+79]
       75 LOADK                            R7 K16 ["SurfaceAppearance"]
       76 NAMECALL                         R5 R0 K5 ["IsA"]
       78 CALL                             R5 2 1
       79 JUMPIFNOT                        R5 ; [+74]
       80 LOADK                            R7 K16 ["SurfaceAppearance"]
       81 NAMECALL                         R5 R1 K5 ["IsA"]
       83 CALL                             R5 2 1
       84 JUMPIFNOT                        R5 ; [+69]
       85 GETUPVAL                         R6 1
       86 GETTABLE                         R5 R6 R4
       87 JUMPIFNOT                        R5 ; [+5]
       88 LOADK                            R8 K11 ["MaterialImportData"]
       89 NAMECALL                         R6 R5 K5 ["IsA"]
       91 CALL                             R6 2 1
       92 JUMPIF                           R6 ; [+6]
       93 GETUPVAL                         R6 0
       94 GETTABLEKS                       R6 R6 K0 ["HandlerControl"]
       96 GETTABLEKS                       R6 R6 K1 ["Continue"]
       98 RETURN                           R6 1
       99 GETUPVAL                         R6 2
      100 GETTABLEKS                       R6 R6 K7 ["extractAssetId"]
      102 GETTABLEKS                       R7 R0 K17 ["ColorMapContent"]
      104 GETTABLEKS                       R7 R7 K9 ["Uri"]
      106 CALL                             R6 1 1
      107 JUMPIFNOT                        R6 ; [+2]
      108 SETTABLEKS                       R6 R5 K15 ["DiffuseVersionedAssetId"]
      110 GETUPVAL                         R7 2
      111 GETTABLEKS                       R7 R7 K7 ["extractAssetId"]
      113 GETTABLEKS                       R8 R0 K18 ["NormalMapContent"]
      115 GETTABLEKS                       R8 R8 K9 ["Uri"]
      117 CALL                             R7 1 1
      118 JUMPIFNOT                        R7 ; [+2]
      119 SETTABLEKS                       R7 R5 K19 ["NormalVersionedAssetId"]
      121 GETUPVAL                         R8 2
      122 GETTABLEKS                       R8 R8 K7 ["extractAssetId"]
      124 GETTABLEKS                       R9 R0 K20 ["MetalnessMapContent"]
      126 GETTABLEKS                       R9 R9 K9 ["Uri"]
      128 CALL                             R8 1 1
      129 JUMPIFNOT                        R8 ; [+2]
      130 SETTABLEKS                       R8 R5 K21 ["MetalnessVersionedAssetId"]
      132 GETUPVAL                         R9 2
      133 GETTABLEKS                       R9 R9 K7 ["extractAssetId"]
      135 GETTABLEKS                       R10 R0 K22 ["RoughnessMapContent"]
      137 GETTABLEKS                       R10 R10 K9 ["Uri"]
      139 CALL                             R9 1 1
      140 JUMPIFNOT                        R9 ; [+2]
      141 SETTABLEKS                       R9 R5 K23 ["RoughnessVersionedAssetId"]
      143 GETUPVAL                         R10 2
      144 GETTABLEKS                       R10 R10 K7 ["extractAssetId"]
      146 GETTABLEKS                       R11 R0 K24 ["EmissiveMaskContent"]
      148 GETTABLEKS                       R11 R11 K9 ["Uri"]
      150 CALL                             R10 1 1
      151 JUMPIFNOT                        R10 ; [+2]
      152 SETTABLEKS                       R10 R5 K25 ["EmissiveVersionedAssetId"]
      154 GETUPVAL                         R5 0
      155 GETTABLEKS                       R5 R5 K0 ["HandlerControl"]
      157 GETTABLEKS                       R5 R5 K1 ["Continue"]
      159 RETURN                           R5 1

PROTO_2:
        0 NAMECALL                         R2 R0 K0 ["GetPlaceholderInstanceTree"]
        2 CALL                             R2 1 1
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 NAMECALL                         R3 R0 K1 ["GetImportTree"]
        7 CALL                             R3 1 1
        8 JUMPIF                           R3 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R4 0
       11 MOVE                             R5 R3
       12 CALL                             R4 1 1
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R5 R5 K2 ["matchTrees"]
       16 MOVE                             R6 R1
       17 MOVE                             R7 R2
       18 NEWCLOSURE                       R8 P0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R4
       21 CAPTURE                          UPVAL U2
       22 CALL                             R5 3 0
       23 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Lib"]
       11 GETTABLEKS                       R2 R2 K7 ["Reimport"]
       13 GETTABLEKS                       R2 R2 K8 ["TreeMerge"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Lib"]
       20 GETTABLEKS                       R3 R3 K9 ["Util"]
       22 GETTABLEKS                       R3 R3 K10 ["AssetUri"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K11 [PROTO_0]
       26 DUPCLOSURE                       R4 K12 [PROTO_2]
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R2
       30 RETURN                           R4 1
