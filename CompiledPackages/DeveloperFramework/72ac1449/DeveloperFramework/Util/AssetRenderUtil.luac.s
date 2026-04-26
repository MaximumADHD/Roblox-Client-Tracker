PROTO_0:
        0 NOT                              R2 R1
        1 JUMPIF                           R2 ; [+9]
        2 FASTCALL1                        TYPEOF R1 ; [+3]
        3 MOVE                             R4 R1
        4 GETIMPORT                        R3 K1 [typeof]
        6 CALL                             R3 1 1
        7 JUMPIFNOTEQKS                    R3 K2 ["Instance"] ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 JUMPIFNOT                        R2 ; [+2]
       12 LOADNIL                          R3
       13 RETURN                           R3 1
       14 GETTABLEKS                       R3 R1 K3 ["className"]
       16 GETUPVAL                         R5 0
       17 GETTABLE                         R4 R5 R3
       18 JUMPIFNOT                        R4 ; [+1]
       19 RETURN                           R4 1
       20 GETUPVAL                         R7 1
       21 GETTABLEKS                       R6 R7 K4 ["AssetRenderType"]
       23 GETTABLEKS                       R5 R6 K5 ["Other"]
       25 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["SharedFlags"]
       11 GETTABLEKS                       R2 R3 K6 ["getFFlagAudioAssetInsertUsesNewApiLua"]
       13 CALL                             R1 1 1
       14 CALL                             R1 0 1
       15 GETIMPORT                        R2 K4 [require]
       17 GETTABLEKS                       R4 R0 K7 ["Util"]
       19 GETTABLEKS                       R3 R4 K8 ["enumerate"]
       21 CALL                             R2 1 1
       22 NEWTABLE                         R3 2 0
       24 MOVE                             R4 R2
       25 LOADK                            R5 K9 ["AssetRenderType"]
       26 NEWTABLE                         R6 0 6
       28 LOADK                            R7 K10 ["Model"]
       29 LOADK                            R8 K11 ["Image"]
       30 LOADK                            R9 K12 ["Sound"]
       31 LOADK                            R10 K13 ["Script"]
       32 LOADK                            R11 K14 ["Video"]
       33 LOADK                            R12 K15 ["Other"]
       34 SETLIST                          R6 R7 6 [1]
       36 CALL                             R4 2 1
       37 SETTABLEKS                       R4 R3 K9 ["AssetRenderType"]
       39 DUPTABLE                         R4 K29 [{"BasePart", "Model", "BackpackItem", "Accoutrement", "Part", "MeshPart", "Decal", "ImageLabel", "ImageButton", "Texture", "Sky", "Sound", "AudioPlayer", "VideoFrame", "BaseScript"}]
       40 GETTABLEKS                       R6 R3 K9 ["AssetRenderType"]
       42 GETTABLEKS                       R5 R6 K10 ["Model"]
       44 SETTABLEKS                       R5 R4 K16 ["BasePart"]
       46 GETTABLEKS                       R6 R3 K9 ["AssetRenderType"]
       48 GETTABLEKS                       R5 R6 K10 ["Model"]
       50 SETTABLEKS                       R5 R4 K10 ["Model"]
       52 GETTABLEKS                       R6 R3 K9 ["AssetRenderType"]
       54 GETTABLEKS                       R5 R6 K10 ["Model"]
       56 SETTABLEKS                       R5 R4 K17 ["BackpackItem"]
       58 GETTABLEKS                       R6 R3 K9 ["AssetRenderType"]
       60 GETTABLEKS                       R5 R6 K10 ["Model"]
       62 SETTABLEKS                       R5 R4 K18 ["Accoutrement"]
       64 GETTABLEKS                       R6 R3 K9 ["AssetRenderType"]
       66 GETTABLEKS                       R5 R6 K10 ["Model"]
       68 SETTABLEKS                       R5 R4 K19 ["Part"]
       70 GETTABLEKS                       R6 R3 K9 ["AssetRenderType"]
       72 GETTABLEKS                       R5 R6 K10 ["Model"]
       74 SETTABLEKS                       R5 R4 K20 ["MeshPart"]
       76 GETTABLEKS                       R6 R3 K9 ["AssetRenderType"]
       78 GETTABLEKS                       R5 R6 K11 ["Image"]
       80 SETTABLEKS                       R5 R4 K21 ["Decal"]
       82 GETTABLEKS                       R6 R3 K9 ["AssetRenderType"]
       84 GETTABLEKS                       R5 R6 K11 ["Image"]
       86 SETTABLEKS                       R5 R4 K22 ["ImageLabel"]
       88 GETTABLEKS                       R6 R3 K9 ["AssetRenderType"]
       90 GETTABLEKS                       R5 R6 K11 ["Image"]
       92 SETTABLEKS                       R5 R4 K23 ["ImageButton"]
       94 GETTABLEKS                       R6 R3 K9 ["AssetRenderType"]
       96 GETTABLEKS                       R5 R6 K11 ["Image"]
       98 SETTABLEKS                       R5 R4 K24 ["Texture"]
      100 GETTABLEKS                       R6 R3 K9 ["AssetRenderType"]
      102 GETTABLEKS                       R5 R6 K11 ["Image"]
      104 SETTABLEKS                       R5 R4 K25 ["Sky"]
      106 GETTABLEKS                       R6 R3 K9 ["AssetRenderType"]
      108 GETTABLEKS                       R5 R6 K12 ["Sound"]
      110 SETTABLEKS                       R5 R4 K12 ["Sound"]
      112 JUMPIFNOT                        R1 ; [+5]
      113 GETTABLEKS                       R6 R3 K9 ["AssetRenderType"]
      115 GETTABLEKS                       R5 R6 K12 ["Sound"]
      117 JUMP                             ; [+1]
      118 LOADNIL                          R5
      119 SETTABLEKS                       R5 R4 K26 ["AudioPlayer"]
      121 GETTABLEKS                       R6 R3 K9 ["AssetRenderType"]
      123 GETTABLEKS                       R5 R6 K14 ["Video"]
      125 SETTABLEKS                       R5 R4 K27 ["VideoFrame"]
      127 GETTABLEKS                       R6 R3 K9 ["AssetRenderType"]
      129 GETTABLEKS                       R5 R6 K13 ["Script"]
      131 SETTABLEKS                       R5 R4 K28 ["BaseScript"]
      133 DUPCLOSURE                       R5 K30 [PROTO_0]
      134 CAPTURE                          VAL R4
      135 CAPTURE                          VAL R3
      136 SETTABLEKS                       R5 R3 K31 ["getRenderType"]
      138 RETURN                           R3 1
