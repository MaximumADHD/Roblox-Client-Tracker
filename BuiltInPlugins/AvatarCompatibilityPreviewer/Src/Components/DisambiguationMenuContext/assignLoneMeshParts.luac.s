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
        6 JUMPIFEQKNIL                     R6 ; [+314]
        8 GETTABLEKS                       R6 R5 K1 ["meshPart"]
       10 GETTABLEKS                       R6 R6 K2 ["Parent"]
       12 JUMPIFEQKNIL                     R6 ; [+308]
       14 LOADK                            R9 K3 ["Humanoid"]
       15 NAMECALL                         R7 R6 K4 ["FindFirstChildWhichIsA"]
       17 CALL                             R7 2 1
       18 JUMPIFEQKNIL                     R7 ; [+302]
       20 GETUPVAL                         R8 0
       21 MOVE                             R9 R6
       22 GETTABLEKS                       R10 R5 K5 ["attachmentName"]
       24 CALL                             R8 2 1
       25 JUMPIFNOTEQKNIL                  R8 ; [+11]
       27 GETIMPORT                        R9 K7 [warn]
       29 LOADK                            R10 K8 ["Could not find attachment %*"]
       30 GETTABLEKS                       R12 R5 K5 ["attachmentName"]
       32 NAMECALL                         R10 R10 K9 ["format"]
       34 CALL                             R10 2 1
       35 CALL                             R9 1 0
       36 JUMP                             ; [+284]
       37 GETUPVAL                         R10 1
       38 GETTABLEKS                       R10 R10 K10 ["ASSET_TYPE_TO_ACCESSORY_TYPE"]
       40 GETTABLEKS                       R11 R5 K0 ["assetType"]
       42 GETTABLE                         R9 R10 R11
       43 JUMPIFNOTEQKNIL                  R9 ; [+11]
       45 GETIMPORT                        R10 K7 [warn]
       47 LOADK                            R11 K11 ["Could not find accessory type for asset type %*"]
       48 GETTABLEKS                       R13 R5 K0 ["assetType"]
       50 NAMECALL                         R11 R11 K9 ["format"]
       52 CALL                             R11 2 1
       53 CALL                             R10 1 0
       54 JUMP                             ; [+266]
       55 GETIMPORT                        R10 K14 [Instance.new]
       57 LOADK                            R11 K15 ["Accessory"]
       58 CALL                             R10 1 1
       59 GETTABLEKS                       R11 R5 K1 ["meshPart"]
       61 GETTABLEKS                       R11 R11 K16 ["Name"]
       63 SETTABLEKS                       R11 R10 K16 ["Name"]
       65 SETTABLEKS                       R9 R10 K17 ["AccessoryType"]
       67 GETUPVAL                         R12 2
       68 CALL                             R12 0 1
       69 JUMPIFNOT                        R12 ; [+5]
       70 LOADK                            R13 K18 ["BasePart"]
       71 NAMECALL                         R11 R8 K19 ["FindFirstAncestorWhichIsA"]
       73 CALL                             R11 2 1
       74 JUMP                             ; [+2]
       75 GETTABLEKS                       R11 R8 K2 ["Parent"]
       77 FASTCALL2K                       ASSERT R11 K20 ; [+5]
       79 MOVE                             R13 R11
       80 LOADK                            R14 K20 ["No parent"]
       81 GETIMPORT                        R12 K22 [assert]
       83 CALL                             R12 2 0
       84 GETTABLEKS                       R14 R5 K1 ["meshPart"]
       86 MOVE                             R17 R11
       87 NAMECALL                         R15 R7 K23 ["GetBodyPartR15"]
       89 CALL                             R15 2 -1
       90 NAMECALL                         R12 R7 K24 ["GetAccessoryHandleScale"]
       92 CALL                             R12 -1 1
       93 LOADNIL                          R13
       94 GETTABLEKS                       R14 R5 K1 ["meshPart"]
       96 LOADK                            R16 K25 ["WrapLayer"]
       97 NAMECALL                         R14 R14 K4 ["FindFirstChildWhichIsA"]
       99 CALL                             R14 2 1
      100 JUMPIFNOTEQKNIL                  R14 ; [+147]
      102 GETIMPORT                        R14 K14 [Instance.new]
      104 LOADK                            R15 K26 ["Part"]
      105 CALL                             R14 1 1
      106 MOVE                             R13 R14
      107 GETIMPORT                        R14 K30 [Enum.SurfaceType.Smooth]
      109 SETTABLEKS                       R14 R13 K31 ["TopSurface"]
      111 GETIMPORT                        R14 K30 [Enum.SurfaceType.Smooth]
      113 SETTABLEKS                       R14 R13 K32 ["BottomSurface"]
      115 LOADK                            R14 K33 ["Handle"]
      116 SETTABLEKS                       R14 R13 K16 ["Name"]
      118 GETTABLEKS                       R14 R5 K1 ["meshPart"]
      120 GETTABLEKS                       R14 R14 K34 ["CFrame"]
      122 SETTABLEKS                       R14 R13 K34 ["CFrame"]
      124 GETTABLEKS                       R14 R5 K1 ["meshPart"]
      126 GETTABLEKS                       R14 R14 K35 ["Size"]
      128 SETTABLEKS                       R14 R13 K35 ["Size"]
      130 GETIMPORT                        R14 K14 [Instance.new]
      132 LOADK                            R15 K36 ["SpecialMesh"]
      133 CALL                             R14 1 1
      134 GETIMPORT                        R15 K39 [Enum.MeshType.FileMesh]
      136 SETTABLEKS                       R15 R14 K37 ["MeshType"]
      138 GETTABLEKS                       R16 R5 K1 ["meshPart"]
      140 GETTABLEKS                       R16 R16 K35 ["Size"]
      142 GETTABLEKS                       R17 R5 K1 ["meshPart"]
      144 GETTABLEKS                       R17 R17 K40 ["MeshSize"]
      146 DIV                              R15 R16 R17
      147 SETTABLEKS                       R15 R14 K41 ["Scale"]
      149 GETTABLEKS                       R15 R5 K1 ["meshPart"]
      151 GETTABLEKS                       R15 R15 K42 ["MeshId"]
      153 SETTABLEKS                       R15 R14 K42 ["MeshId"]
      155 GETTABLEKS                       R15 R5 K1 ["meshPart"]
      157 GETUPVAL                         R17 1
      158 GETTABLEKS                       R17 R17 K43 ["ATTRIBUTE_CREATED_BY_AUTO_SETUP"]
      160 NAMECALL                         R15 R15 K44 ["GetAttribute"]
      162 CALL                             R15 2 1
      163 JUMPIFNOT                        R15 ; [+7]
      164 GETUPVAL                         R17 1
      165 GETTABLEKS                       R17 R17 K43 ["ATTRIBUTE_CREATED_BY_AUTO_SETUP"]
      167 LOADB                            R18 1
      168 NAMECALL                         R15 R13 K45 ["SetAttribute"]
      170 CALL                             R15 3 0
      171 GETTABLEKS                       R15 R5 K1 ["meshPart"]
      173 LOADK                            R17 K46 ["SurfaceAppearance"]
      174 NAMECALL                         R15 R15 K4 ["FindFirstChildWhichIsA"]
      176 CALL                             R15 2 1
      177 JUMPIFNOT                        R15 ; [+5]
      178 GETTABLEKS                       R16 R15 K47 ["ColorMap"]
      180 SETTABLEKS                       R16 R14 K48 ["TextureId"]
      182 JUMP                             ; [+6]
      183 GETTABLEKS                       R16 R5 K1 ["meshPart"]
      185 GETTABLEKS                       R16 R16 K49 ["TextureID"]
      187 SETTABLEKS                       R16 R14 K48 ["TextureId"]
      189 GETTABLEKS                       R16 R5 K1 ["meshPart"]
      191 LOADK                            R18 K50 ["AvatarPartScaleType"]
      192 NAMECALL                         R16 R16 K51 ["FindFirstChild"]
      194 CALL                             R16 2 1
      195 JUMPIFNOT                        R16 ; [+6]
      196 GETIMPORT                        R17 K53 [Instance.fromExisting]
      198 MOVE                             R18 R16
      199 CALL                             R17 1 1
      200 SETTABLEKS                       R13 R17 K2 ["Parent"]
      202 GETTABLEKS                       R17 R5 K1 ["meshPart"]
      204 LOADK                            R19 K54 ["OriginalSize"]
      205 NAMECALL                         R17 R17 K51 ["FindFirstChild"]
      207 CALL                             R17 2 1
      208 JUMPIFNOT                        R17 ; [+7]
      209 GETIMPORT                        R18 K53 [Instance.fromExisting]
      211 MOVE                             R19 R17
      212 CALL                             R18 1 1
      213 SETTABLEKS                       R13 R18 K2 ["Parent"]
      215 JUMP                             ; [+8]
      216 GETUPVAL                         R18 3
      217 GETTABLEKS                       R18 R18 K55 ["setOriginalSize"]
      219 MOVE                             R19 R13
      220 GETTABLEKS                       R21 R13 K35 ["Size"]
      222 DIV                              R20 R21 R12
      223 CALL                             R18 2 0
      224 GETTABLEKS                       R18 R5 K1 ["meshPart"]
      226 NAMECALL                         R18 R18 K56 ["GetChildren"]
      228 CALL                             R18 1 3
      229 FORGPREP                         R18
      230 LOADK                            R25 K25 ["WrapLayer"]
      231 NAMECALL                         R23 R22 K57 ["IsA"]
      233 CALL                             R23 2 1
      234 JUMPIFNOT                        R23 ; [+6]
      235 NAMECALL                         R23 R22 K58 ["Clone"]
      237 CALL                             R23 1 1
      238 JUMPIFNOT                        R23 ; [+2]
      239 SETTABLEKS                       R13 R23 K2 ["Parent"]
      241 FORGLOOP                         R18 2 ; [-12]
      243 SETTABLEKS                       R13 R14 K2 ["Parent"]
      245 SETTABLEKS                       R10 R13 K2 ["Parent"]
      247 JUMP                             ; [+23]
      248 GETTABLEKS                       R14 R5 K1 ["meshPart"]
      250 NAMECALL                         R14 R14 K58 ["Clone"]
      252 CALL                             R14 1 1
      253 MOVE                             R13 R14
      254 LOADK                            R14 K33 ["Handle"]
      255 SETTABLEKS                       R14 R13 K16 ["Name"]
      257 SETTABLEKS                       R10 R13 K2 ["Parent"]
      259 LOADK                            R16 K54 ["OriginalSize"]
      260 NAMECALL                         R14 R13 K51 ["FindFirstChild"]
      262 CALL                             R14 2 1
      263 JUMPIF                           R14 ; [+7]
      264 GETUPVAL                         R14 3
      265 GETTABLEKS                       R14 R14 K55 ["setOriginalSize"]
      267 MOVE                             R15 R13
      268 GETTABLEKS                       R16 R13 K35 ["Size"]
      270 CALL                             R14 2 0
      271 GETIMPORT                        R14 K14 [Instance.new]
      273 LOADK                            R15 K59 ["Attachment"]
      274 CALL                             R14 1 1
      275 GETTABLEKS                       R15 R5 K5 ["attachmentName"]
      277 SETTABLEKS                       R15 R14 K16 ["Name"]
      279 GETTABLEKS                       R15 R5 K1 ["meshPart"]
      281 GETTABLEKS                       R15 R15 K34 ["CFrame"]
      283 GETTABLEKS                       R17 R8 K60 ["WorldCFrame"]
      285 NAMECALL                         R15 R15 K61 ["ToObjectSpace"]
      287 CALL                             R15 2 1
      288 SETTABLEKS                       R15 R14 K34 ["CFrame"]
      290 SETTABLEKS                       R13 R14 K2 ["Parent"]
      292 GETTABLEKS                       R15 R5 K1 ["meshPart"]
      294 NAMECALL                         R15 R15 K62 ["Destroy"]
      296 CALL                             R15 1 0
      297 SETTABLEKS                       R6 R10 K2 ["Parent"]
      299 GETUPVAL                         R15 4
      300 CALL                             R15 0 1
      301 JUMPIFNOT                        R15 ; [+11]
      302 LOADK                            R17 K25 ["WrapLayer"]
      303 NAMECALL                         R15 R13 K4 ["FindFirstChildWhichIsA"]
      305 CALL                             R15 2 1
      306 JUMPIFEQKNIL                     R15 ; [+6]
      308 GETIMPORT                        R15 K63 [CFrame.new]
      310 CALL                             R15 0 1
      311 SETTABLEKS                       R15 R14 K34 ["CFrame"]
      313 GETUPVAL                         R15 3
      314 GETTABLEKS                       R15 R15 K64 ["setOriginalPosition"]
      316 MOVE                             R16 R14
      317 GETTABLEKS                       R18 R14 K65 ["Position"]
      319 MUL                              R17 R18 R12
      320 CALL                             R15 2 0
      321 FORGLOOP                         R1 2 ; [-318]
      323 RETURN                           R0 0

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
