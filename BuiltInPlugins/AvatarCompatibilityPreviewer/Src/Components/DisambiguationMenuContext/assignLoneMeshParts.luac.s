PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["LIMBS"]
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 MOVE                             R10 R7
        9 NAMECALL                         R8 R0 K1 ["FindFirstChild"]
       11 CALL                             R8 2 1
       12 JUMPIFEQKNIL                     R8 ; [+14]
       14 MOVE                             R11 R1
       15 MOVE                             R12 R2
       16 NAMECALL                         R9 R8 K1 ["FindFirstChild"]
       18 CALL                             R9 3 1
       19 JUMPIFEQKNIL                     R9 ; [+7]
       21 LOADK                            R12 K2 ["Attachment"]
       22 NAMECALL                         R10 R9 K3 ["IsA"]
       24 CALL                             R10 2 1
       25 JUMPIFNOT                        R10 ; [+1]
       26 RETURN                           R9 1
       27 FORGLOOP                         R3 2 ; [-20]
       29 LOADNIL                          R3
       30 RETURN                           R3 1

PROTO_1:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETTABLEKS                       R6 R5 K0 ["assetType"]
        6 JUMPIFEQKNIL                     R6 ; [+316]
        8 GETTABLEKS                       R6 R5 K1 ["meshPart"]
       10 GETTABLEKS                       R6 R6 K2 ["Parent"]
       12 JUMPIFEQKNIL                     R6 ; [+310]
       14 LOADK                            R9 K3 ["Humanoid"]
       15 NAMECALL                         R7 R6 K4 ["FindFirstChildWhichIsA"]
       17 CALL                             R7 2 1
       18 JUMPIFEQKNIL                     R7 ; [+304]
       20 GETUPVAL                         R8 0
       21 MOVE                             R9 R6
       22 GETTABLEKS                       R10 R5 K5 ["attachmentName"]
       24 CALL                             R8 2 1
       25 JUMPIFNOTEQKNIL                  R8 ; [+12]
       27 GETIMPORT                        R9 K7 [warn]
       29 LOADK                            R11 K8 ["Could not find attachment %*"]
       30 GETTABLEKS                       R13 R5 K5 ["attachmentName"]
       32 NAMECALL                         R11 R11 K9 ["format"]
       34 CALL                             R11 2 1
       35 MOVE                             R10 R11
       36 CALL                             R9 1 0
       37 JUMP                             ; [+285]
       38 GETUPVAL                         R10 1
       39 GETTABLEKS                       R10 R10 K10 ["ASSET_TYPE_TO_ACCESSORY_TYPE"]
       41 GETTABLEKS                       R11 R5 K0 ["assetType"]
       43 GETTABLE                         R9 R10 R11
       44 JUMPIFNOTEQKNIL                  R9 ; [+12]
       46 GETIMPORT                        R10 K7 [warn]
       48 LOADK                            R12 K11 ["Could not find accessory type for asset type %*"]
       49 GETTABLEKS                       R14 R5 K0 ["assetType"]
       51 NAMECALL                         R12 R12 K9 ["format"]
       53 CALL                             R12 2 1
       54 MOVE                             R11 R12
       55 CALL                             R10 1 0
       56 JUMP                             ; [+266]
       57 GETIMPORT                        R10 K14 [Instance.new]
       59 LOADK                            R11 K15 ["Accessory"]
       60 CALL                             R10 1 1
       61 GETTABLEKS                       R11 R5 K1 ["meshPart"]
       63 GETTABLEKS                       R11 R11 K16 ["Name"]
       65 SETTABLEKS                       R11 R10 K16 ["Name"]
       67 SETTABLEKS                       R9 R10 K17 ["AccessoryType"]
       69 GETUPVAL                         R12 2
       70 CALL                             R12 0 1
       71 JUMPIFNOT                        R12 ; [+5]
       72 LOADK                            R13 K18 ["BasePart"]
       73 NAMECALL                         R11 R8 K19 ["FindFirstAncestorWhichIsA"]
       75 CALL                             R11 2 1
       76 JUMP                             ; [+2]
       77 GETTABLEKS                       R11 R8 K2 ["Parent"]
       79 FASTCALL2K                       ASSERT R11 K20 ; [+5]
       81 MOVE                             R13 R11
       82 LOADK                            R14 K20 ["No parent"]
       83 GETIMPORT                        R12 K22 [assert]
       85 CALL                             R12 2 0
       86 GETTABLEKS                       R14 R5 K1 ["meshPart"]
       88 MOVE                             R17 R11
       89 NAMECALL                         R15 R7 K23 ["GetBodyPartR15"]
       91 CALL                             R15 2 -1
       92 NAMECALL                         R12 R7 K24 ["GetAccessoryHandleScale"]
       94 CALL                             R12 -1 1
       95 LOADNIL                          R13
       96 GETTABLEKS                       R14 R5 K1 ["meshPart"]
       98 LOADK                            R16 K25 ["WrapLayer"]
       99 NAMECALL                         R14 R14 K4 ["FindFirstChildWhichIsA"]
      101 CALL                             R14 2 1
      102 JUMPIFNOTEQKNIL                  R14 ; [+147]
      104 GETIMPORT                        R14 K14 [Instance.new]
      106 LOADK                            R15 K26 ["Part"]
      107 CALL                             R14 1 1
      108 MOVE                             R13 R14
      109 GETIMPORT                        R14 K30 [Enum.SurfaceType.Smooth]
      111 SETTABLEKS                       R14 R13 K31 ["TopSurface"]
      113 GETIMPORT                        R14 K30 [Enum.SurfaceType.Smooth]
      115 SETTABLEKS                       R14 R13 K32 ["BottomSurface"]
      117 LOADK                            R14 K33 ["Handle"]
      118 SETTABLEKS                       R14 R13 K16 ["Name"]
      120 GETTABLEKS                       R14 R5 K1 ["meshPart"]
      122 GETTABLEKS                       R14 R14 K34 ["CFrame"]
      124 SETTABLEKS                       R14 R13 K34 ["CFrame"]
      126 GETTABLEKS                       R14 R5 K1 ["meshPart"]
      128 GETTABLEKS                       R14 R14 K35 ["Size"]
      130 SETTABLEKS                       R14 R13 K35 ["Size"]
      132 GETIMPORT                        R14 K14 [Instance.new]
      134 LOADK                            R15 K36 ["SpecialMesh"]
      135 CALL                             R14 1 1
      136 GETIMPORT                        R15 K39 [Enum.MeshType.FileMesh]
      138 SETTABLEKS                       R15 R14 K37 ["MeshType"]
      140 GETTABLEKS                       R16 R5 K1 ["meshPart"]
      142 GETTABLEKS                       R16 R16 K35 ["Size"]
      144 GETTABLEKS                       R17 R5 K1 ["meshPart"]
      146 GETTABLEKS                       R17 R17 K40 ["MeshSize"]
      148 DIV                              R15 R16 R17
      149 SETTABLEKS                       R15 R14 K41 ["Scale"]
      151 GETTABLEKS                       R15 R5 K1 ["meshPart"]
      153 GETTABLEKS                       R15 R15 K42 ["MeshId"]
      155 SETTABLEKS                       R15 R14 K42 ["MeshId"]
      157 GETTABLEKS                       R15 R5 K1 ["meshPart"]
      159 GETUPVAL                         R17 1
      160 GETTABLEKS                       R17 R17 K43 ["ATTRIBUTE_CREATED_BY_AUTO_SETUP"]
      162 NAMECALL                         R15 R15 K44 ["GetAttribute"]
      164 CALL                             R15 2 1
      165 JUMPIFNOT                        R15 ; [+7]
      166 GETUPVAL                         R17 1
      167 GETTABLEKS                       R17 R17 K43 ["ATTRIBUTE_CREATED_BY_AUTO_SETUP"]
      169 LOADB                            R18 1
      170 NAMECALL                         R15 R13 K45 ["SetAttribute"]
      172 CALL                             R15 3 0
      173 GETTABLEKS                       R15 R5 K1 ["meshPart"]
      175 LOADK                            R17 K46 ["SurfaceAppearance"]
      176 NAMECALL                         R15 R15 K4 ["FindFirstChildWhichIsA"]
      178 CALL                             R15 2 1
      179 JUMPIFNOT                        R15 ; [+5]
      180 GETTABLEKS                       R16 R15 K47 ["ColorMap"]
      182 SETTABLEKS                       R16 R14 K48 ["TextureId"]
      184 JUMP                             ; [+6]
      185 GETTABLEKS                       R16 R5 K1 ["meshPart"]
      187 GETTABLEKS                       R16 R16 K49 ["TextureID"]
      189 SETTABLEKS                       R16 R14 K48 ["TextureId"]
      191 GETTABLEKS                       R16 R5 K1 ["meshPart"]
      193 LOADK                            R18 K50 ["AvatarPartScaleType"]
      194 NAMECALL                         R16 R16 K51 ["FindFirstChild"]
      196 CALL                             R16 2 1
      197 JUMPIFNOT                        R16 ; [+6]
      198 GETIMPORT                        R17 K53 [Instance.fromExisting]
      200 MOVE                             R18 R16
      201 CALL                             R17 1 1
      202 SETTABLEKS                       R13 R17 K2 ["Parent"]
      204 GETTABLEKS                       R17 R5 K1 ["meshPart"]
      206 LOADK                            R19 K54 ["OriginalSize"]
      207 NAMECALL                         R17 R17 K51 ["FindFirstChild"]
      209 CALL                             R17 2 1
      210 JUMPIFNOT                        R17 ; [+7]
      211 GETIMPORT                        R18 K53 [Instance.fromExisting]
      213 MOVE                             R19 R17
      214 CALL                             R18 1 1
      215 SETTABLEKS                       R13 R18 K2 ["Parent"]
      217 JUMP                             ; [+8]
      218 GETUPVAL                         R18 3
      219 GETTABLEKS                       R18 R18 K55 ["setOriginalSize"]
      221 MOVE                             R19 R13
      222 GETTABLEKS                       R21 R13 K35 ["Size"]
      224 DIV                              R20 R21 R12
      225 CALL                             R18 2 0
      226 GETTABLEKS                       R18 R5 K1 ["meshPart"]
      228 NAMECALL                         R18 R18 K56 ["GetChildren"]
      230 CALL                             R18 1 3
      231 FORGPREP                         R18
      232 LOADK                            R25 K25 ["WrapLayer"]
      233 NAMECALL                         R23 R22 K57 ["IsA"]
      235 CALL                             R23 2 1
      236 JUMPIFNOT                        R23 ; [+6]
      237 NAMECALL                         R23 R22 K58 ["Clone"]
      239 CALL                             R23 1 1
      240 JUMPIFNOT                        R23 ; [+2]
      241 SETTABLEKS                       R13 R23 K2 ["Parent"]
      243 FORGLOOP                         R18 2 ; [-12]
      245 SETTABLEKS                       R13 R14 K2 ["Parent"]
      247 SETTABLEKS                       R10 R13 K2 ["Parent"]
      249 JUMP                             ; [+23]
      250 GETTABLEKS                       R14 R5 K1 ["meshPart"]
      252 NAMECALL                         R14 R14 K58 ["Clone"]
      254 CALL                             R14 1 1
      255 MOVE                             R13 R14
      256 LOADK                            R14 K33 ["Handle"]
      257 SETTABLEKS                       R14 R13 K16 ["Name"]
      259 SETTABLEKS                       R10 R13 K2 ["Parent"]
      261 LOADK                            R16 K54 ["OriginalSize"]
      262 NAMECALL                         R14 R13 K51 ["FindFirstChild"]
      264 CALL                             R14 2 1
      265 JUMPIF                           R14 ; [+7]
      266 GETUPVAL                         R14 3
      267 GETTABLEKS                       R14 R14 K55 ["setOriginalSize"]
      269 MOVE                             R15 R13
      270 GETTABLEKS                       R16 R13 K35 ["Size"]
      272 CALL                             R14 2 0
      273 GETIMPORT                        R14 K14 [Instance.new]
      275 LOADK                            R15 K59 ["Attachment"]
      276 CALL                             R14 1 1
      277 GETTABLEKS                       R15 R5 K5 ["attachmentName"]
      279 SETTABLEKS                       R15 R14 K16 ["Name"]
      281 GETTABLEKS                       R15 R5 K1 ["meshPart"]
      283 GETTABLEKS                       R15 R15 K34 ["CFrame"]
      285 GETTABLEKS                       R17 R8 K60 ["WorldCFrame"]
      287 NAMECALL                         R15 R15 K61 ["ToObjectSpace"]
      289 CALL                             R15 2 1
      290 SETTABLEKS                       R15 R14 K34 ["CFrame"]
      292 SETTABLEKS                       R13 R14 K2 ["Parent"]
      294 GETTABLEKS                       R15 R5 K1 ["meshPart"]
      296 NAMECALL                         R15 R15 K62 ["Destroy"]
      298 CALL                             R15 1 0
      299 SETTABLEKS                       R6 R10 K2 ["Parent"]
      301 GETUPVAL                         R15 4
      302 CALL                             R15 0 1
      303 JUMPIFNOT                        R15 ; [+11]
      304 LOADK                            R17 K25 ["WrapLayer"]
      305 NAMECALL                         R15 R13 K4 ["FindFirstChildWhichIsA"]
      307 CALL                             R15 2 1
      308 JUMPIFEQKNIL                     R15 ; [+6]
      310 GETIMPORT                        R15 K63 [CFrame.new]
      312 CALL                             R15 0 1
      313 SETTABLEKS                       R15 R14 K34 ["CFrame"]
      315 GETUPVAL                         R15 3
      316 GETTABLEKS                       R15 R15 K64 ["setOriginalPosition"]
      318 MOVE                             R16 R14
      319 GETTABLEKS                       R18 R14 K65 ["Position"]
      321 MUL                              R17 R18 R12
      322 CALL                             R15 2 0
      323 FORGLOOP                         R1 2 ; [-320]
      325 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFFlagAvatarPreviewerBoneNestedAttachmentFix"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Flags"]
       22 GETTABLEKS                       R3 R3 K9 ["getFFlagAvatarPreviewerLayeredAttachmentFix"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K10 ["Types"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Src"]
       36 GETTABLEKS                       R5 R5 K11 ["Util"]
       38 GETTABLEKS                       R5 R5 K12 ["Constants"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K6 ["Src"]
       45 GETTABLEKS                       R6 R6 K11 ["Util"]
       47 GETTABLEKS                       R6 R6 K13 ["HumanoidValueUtil"]
       49 CALL                             R5 1 1
       50 DUPCLOSURE                       R6 K14 [PROTO_0]
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R4
       53 DUPCLOSURE                       R7 K15 [PROTO_1]
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R2
       59 RETURN                           R7 1
