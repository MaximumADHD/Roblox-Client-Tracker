PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["TextureID"]
        2 JUMPIFEQKS                       R1 K1 [""] ; [+4]
        4 GETTABLEKS                       R1 R0 K0 ["TextureID"]
        6 RETURN                           R1 1
        7 LOADK                            R3 K2 ["SurfaceAppearance"]
        8 NAMECALL                         R1 R0 K3 ["FindFirstChildWhichIsA"]
       10 CALL                             R1 2 1
       11 JUMPIFEQKNIL                     R1 ; [+8]
       13 GETTABLEKS                       R2 R1 K4 ["ColorMap"]
       15 JUMPIFEQKS                       R2 K1 [""] ; [+4]
       17 GETTABLEKS                       R2 R1 K4 ["ColorMap"]
       19 RETURN                           R2 1
       20 LOADNIL                          R2
       21 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K2 [Content.fromUri]
        3 GETUPVAL                         R3 1
        4 CALL                             R2 1 -1
        5 NAMECALL                         R0 R0 K3 ["CreateEditableImageAsync"]
        7 CALL                             R0 -1 -1
        8 RETURN                           R0 -1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R2 R5 K0 ["LIMBS"]
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 MOVE                             R9 R6
        9 NAMECALL                         R7 R0 K1 ["FindFirstChild"]
       11 CALL                             R7 2 1
       12 LOADB                            R9 0
       13 JUMPIFEQKNIL                     R7 ; [+5]
       15 LOADK                            R11 K2 ["MeshPart"]
       16 NAMECALL                         R9 R7 K3 ["IsA"]
       18 CALL                             R9 2 1
       19 FASTCALL2K                       ASSERT R9 K4 ; [+4]
       21 LOADK                            R10 K4 ["Couldn't find limb part"]
       22 GETIMPORT                        R8 K6 [assert]
       24 CALL                             R8 2 0
       25 GETTABLEKS                       R9 R7 K7 ["TextureID"]
       27 JUMPIFEQKS                       R9 K8 [""] ; [+4]
       29 GETTABLEKS                       R8 R7 K7 ["TextureID"]
       31 JUMP                             ; [+14]
       32 LOADK                            R11 K9 ["SurfaceAppearance"]
       33 NAMECALL                         R9 R7 K10 ["FindFirstChildWhichIsA"]
       35 CALL                             R9 2 1
       36 JUMPIFEQKNIL                     R9 ; [+8]
       38 GETTABLEKS                       R10 R9 K11 ["ColorMap"]
       40 JUMPIFEQKS                       R10 K8 [""] ; [+4]
       42 GETTABLEKS                       R8 R9 K11 ["ColorMap"]
       44 JUMP                             ; [+1]
       45 LOADNIL                          R8
       46 JUMPIFNOTEQKNIL                  R8 ; [+3]
       48 LOADB                            R9 1
       49 RETURN                           R9 1
       50 JUMPIFNOTEQKNIL                  R8 ; [+2]
       52 LOADB                            R10 0 +1
       53 LOADB                            R10 1
       54 GETUPVAL                         R12 0
       55 GETTABLEKS                       R11 R12 K12 ["LUAU_ANALYZE_ERROR"]
       57 FASTCALL2                        ASSERT R10 R11 ; [+3]
       59 GETIMPORT                        R9 K6 [assert]
       61 CALL                             R9 2 0
       62 GETTABLE                         R9 R1 R8
       63 JUMPIF                           R9 ; [+39]
       64 LOADB                            R9 1
       65 SETTABLE                         R9 R1 R8
       66 GETIMPORT                        R9 K14 [pcall]
       68 NEWCLOSURE                       R10 P0
       69 CAPTURE                          UPVAL U1
       70 CAPTURE                          VAL R8
       71 CALL                             R9 1 2
       72 JUMPIF                           R9 ; [+2]
       73 LOADB                            R11 1
       74 RETURN                           R11 1
       75 GETIMPORT                        R13 K17 [Vector2.new]
       77 CALL                             R13 0 1
       78 GETTABLEKS                       R14 R10 K18 ["Size"]
       80 NAMECALL                         R11 R10 K19 ["ReadPixelsBuffer"]
       82 CALL                             R11 3 1
       83 LOADN                            R14 3
       84 GETIMPORT                        R15 K22 [buffer.len]
       86 MOVE                             R16 R11
       87 CALL                             R15 1 1
       88 MOVE                             R12 R15
       89 LOADN                            R13 4
       90 FORNPREP                         R12
       91 FASTCALL2                        BUFFER_READU8 R11 R14 ; [+5]
       93 MOVE                             R16 R11
       94 MOVE                             R17 R14
       95 GETIMPORT                        R15 K24 [buffer.readu8]
       97 CALL                             R15 2 1
       98 JUMPIFEQKN                       R15 K25 [255] ; [+3]
      100 LOADB                            R15 1
      101 RETURN                           R15 1
      102 FORNLOOP                         R12
      103 FORGLOOP                         R2 2 ; [-96]
      105 LOADB                            R2 0
      106 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AssetService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AvatarCompatibilityPreviewer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R5 R1 K10 ["Src"]
       17 GETTABLEKS                       R4 R5 K11 ["Util"]
       19 GETTABLEKS                       R3 R4 K12 ["Constants"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R5 R1 K10 ["Src"]
       26 GETTABLEKS                       R4 R5 K13 ["Types"]
       28 CALL                             R3 1 1
       29 DUPCLOSURE                       R4 K14 [PROTO_0]
       30 DUPCLOSURE                       R5 K15 [PROTO_2]
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R0
       33 RETURN                           R5 1
