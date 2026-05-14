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
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["assignLoneMeshParts should only be used when FFlagFixLayeredClothingAssignment is disabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 MOVE                             R1 R0
        9 LOADNIL                          R2
       10 LOADNIL                          R3
       11 FORGPREP                         R1
       12 GETTABLEKS                       R6 R5 K3 ["assetType"]
       14 JUMPIFEQKNIL                     R6 ; [+316]
       16 GETTABLEKS                       R6 R5 K4 ["meshPart"]
       18 GETTABLEKS                       R6 R6 K5 ["Parent"]
       20 JUMPIFEQKNIL                     R6 ; [+310]
       22 LOADK                            R9 K6 ["Humanoid"]
       23 NAMECALL                         R7 R6 K7 ["FindFirstChildWhichIsA"]
       25 CALL                             R7 2 1
       26 JUMPIFEQKNIL                     R7 ; [+304]
       28 GETUPVAL                         R8 1
       29 MOVE                             R9 R6
       30 GETTABLEKS                       R10 R5 K8 ["attachmentName"]
       32 CALL                             R8 2 1
       33 JUMPIFNOTEQKNIL                  R8 ; [+12]
       35 GETIMPORT                        R9 K10 [warn]
       37 LOADK                            R11 K11 ["Could not find attachment %*"]
       38 GETTABLEKS                       R13 R5 K8 ["attachmentName"]
       40 NAMECALL                         R11 R11 K12 ["format"]
       42 CALL                             R11 2 1
       43 MOVE                             R10 R11
       44 CALL                             R9 1 0
       45 JUMP                             ; [+285]
       46 GETUPVAL                         R10 2
       47 GETTABLEKS                       R10 R10 K13 ["ASSET_TYPE_TO_ACCESSORY_TYPE"]
       49 GETTABLEKS                       R11 R5 K3 ["assetType"]
       51 GETTABLE                         R9 R10 R11
       52 JUMPIFNOTEQKNIL                  R9 ; [+12]
       54 GETIMPORT                        R10 K10 [warn]
       56 LOADK                            R12 K14 ["Could not find accessory type for asset type %*"]
       57 GETTABLEKS                       R14 R5 K3 ["assetType"]
       59 NAMECALL                         R12 R12 K12 ["format"]
       61 CALL                             R12 2 1
       62 MOVE                             R11 R12
       63 CALL                             R10 1 0
       64 JUMP                             ; [+266]
       65 GETIMPORT                        R10 K17 [Instance.new]
       67 LOADK                            R11 K18 ["Accessory"]
       68 CALL                             R10 1 1
       69 GETTABLEKS                       R11 R5 K4 ["meshPart"]
       71 GETTABLEKS                       R11 R11 K19 ["Name"]
       73 SETTABLEKS                       R11 R10 K19 ["Name"]
       75 SETTABLEKS                       R9 R10 K20 ["AccessoryType"]
       77 GETUPVAL                         R12 3
       78 CALL                             R12 0 1
       79 JUMPIFNOT                        R12 ; [+5]
       80 LOADK                            R13 K21 ["BasePart"]
       81 NAMECALL                         R11 R8 K22 ["FindFirstAncestorWhichIsA"]
       83 CALL                             R11 2 1
       84 JUMP                             ; [+2]
       85 GETTABLEKS                       R11 R8 K5 ["Parent"]
       87 FASTCALL2K                       ASSERT R11 K23 ; [+5]
       89 MOVE                             R13 R11
       90 LOADK                            R14 K23 ["No parent"]
       91 GETIMPORT                        R12 K2 [assert]
       93 CALL                             R12 2 0
       94 GETTABLEKS                       R14 R5 K4 ["meshPart"]
       96 MOVE                             R17 R11
       97 NAMECALL                         R15 R7 K24 ["GetBodyPartR15"]
       99 CALL                             R15 2 -1
      100 NAMECALL                         R12 R7 K25 ["GetAccessoryHandleScale"]
      102 CALL                             R12 -1 1
      103 LOADNIL                          R13
      104 GETTABLEKS                       R14 R5 K4 ["meshPart"]
      106 LOADK                            R16 K26 ["WrapLayer"]
      107 NAMECALL                         R14 R14 K7 ["FindFirstChildWhichIsA"]
      109 CALL                             R14 2 1
      110 JUMPIFNOTEQKNIL                  R14 ; [+147]
      112 GETIMPORT                        R14 K17 [Instance.new]
      114 LOADK                            R15 K27 ["Part"]
      115 CALL                             R14 1 1
      116 MOVE                             R13 R14
      117 GETIMPORT                        R14 K31 [Enum.SurfaceType.Smooth]
      119 SETTABLEKS                       R14 R13 K32 ["TopSurface"]
      121 GETIMPORT                        R14 K31 [Enum.SurfaceType.Smooth]
      123 SETTABLEKS                       R14 R13 K33 ["BottomSurface"]
      125 LOADK                            R14 K34 ["Handle"]
      126 SETTABLEKS                       R14 R13 K19 ["Name"]
      128 GETTABLEKS                       R14 R5 K4 ["meshPart"]
      130 GETTABLEKS                       R14 R14 K35 ["CFrame"]
      132 SETTABLEKS                       R14 R13 K35 ["CFrame"]
      134 GETTABLEKS                       R14 R5 K4 ["meshPart"]
      136 GETTABLEKS                       R14 R14 K36 ["Size"]
      138 SETTABLEKS                       R14 R13 K36 ["Size"]
      140 GETIMPORT                        R14 K17 [Instance.new]
      142 LOADK                            R15 K37 ["SpecialMesh"]
      143 CALL                             R14 1 1
      144 GETIMPORT                        R15 K40 [Enum.MeshType.FileMesh]
      146 SETTABLEKS                       R15 R14 K38 ["MeshType"]
      148 GETTABLEKS                       R16 R5 K4 ["meshPart"]
      150 GETTABLEKS                       R16 R16 K36 ["Size"]
      152 GETTABLEKS                       R17 R5 K4 ["meshPart"]
      154 GETTABLEKS                       R17 R17 K41 ["MeshSize"]
      156 DIV                              R15 R16 R17
      157 SETTABLEKS                       R15 R14 K42 ["Scale"]
      159 GETTABLEKS                       R15 R5 K4 ["meshPart"]
      161 GETTABLEKS                       R15 R15 K43 ["MeshId"]
      163 SETTABLEKS                       R15 R14 K43 ["MeshId"]
      165 GETTABLEKS                       R15 R5 K4 ["meshPart"]
      167 GETUPVAL                         R17 2
      168 GETTABLEKS                       R17 R17 K44 ["ATTRIBUTE_CREATED_BY_AUTO_SETUP"]
      170 NAMECALL                         R15 R15 K45 ["GetAttribute"]
      172 CALL                             R15 2 1
      173 JUMPIFNOT                        R15 ; [+7]
      174 GETUPVAL                         R17 2
      175 GETTABLEKS                       R17 R17 K44 ["ATTRIBUTE_CREATED_BY_AUTO_SETUP"]
      177 LOADB                            R18 1
      178 NAMECALL                         R15 R13 K46 ["SetAttribute"]
      180 CALL                             R15 3 0
      181 GETTABLEKS                       R15 R5 K4 ["meshPart"]
      183 LOADK                            R17 K47 ["SurfaceAppearance"]
      184 NAMECALL                         R15 R15 K7 ["FindFirstChildWhichIsA"]
      186 CALL                             R15 2 1
      187 JUMPIFNOT                        R15 ; [+5]
      188 GETTABLEKS                       R16 R15 K48 ["ColorMap"]
      190 SETTABLEKS                       R16 R14 K49 ["TextureId"]
      192 JUMP                             ; [+6]
      193 GETTABLEKS                       R16 R5 K4 ["meshPart"]
      195 GETTABLEKS                       R16 R16 K50 ["TextureID"]
      197 SETTABLEKS                       R16 R14 K49 ["TextureId"]
      199 GETTABLEKS                       R16 R5 K4 ["meshPart"]
      201 LOADK                            R18 K51 ["AvatarPartScaleType"]
      202 NAMECALL                         R16 R16 K52 ["FindFirstChild"]
      204 CALL                             R16 2 1
      205 JUMPIFNOT                        R16 ; [+6]
      206 GETIMPORT                        R17 K54 [Instance.fromExisting]
      208 MOVE                             R18 R16
      209 CALL                             R17 1 1
      210 SETTABLEKS                       R13 R17 K5 ["Parent"]
      212 GETTABLEKS                       R17 R5 K4 ["meshPart"]
      214 LOADK                            R19 K55 ["OriginalSize"]
      215 NAMECALL                         R17 R17 K52 ["FindFirstChild"]
      217 CALL                             R17 2 1
      218 JUMPIFNOT                        R17 ; [+7]
      219 GETIMPORT                        R18 K54 [Instance.fromExisting]
      221 MOVE                             R19 R17
      222 CALL                             R18 1 1
      223 SETTABLEKS                       R13 R18 K5 ["Parent"]
      225 JUMP                             ; [+8]
      226 GETUPVAL                         R18 4
      227 GETTABLEKS                       R18 R18 K56 ["setOriginalSize"]
      229 MOVE                             R19 R13
      230 GETTABLEKS                       R21 R13 K36 ["Size"]
      232 DIV                              R20 R21 R12
      233 CALL                             R18 2 0
      234 GETTABLEKS                       R18 R5 K4 ["meshPart"]
      236 NAMECALL                         R18 R18 K57 ["GetChildren"]
      238 CALL                             R18 1 3
      239 FORGPREP                         R18
      240 LOADK                            R25 K26 ["WrapLayer"]
      241 NAMECALL                         R23 R22 K58 ["IsA"]
      243 CALL                             R23 2 1
      244 JUMPIFNOT                        R23 ; [+6]
      245 NAMECALL                         R23 R22 K59 ["Clone"]
      247 CALL                             R23 1 1
      248 JUMPIFNOT                        R23 ; [+2]
      249 SETTABLEKS                       R13 R23 K5 ["Parent"]
      251 FORGLOOP                         R18 2 ; [-12]
      253 SETTABLEKS                       R13 R14 K5 ["Parent"]
      255 SETTABLEKS                       R10 R13 K5 ["Parent"]
      257 JUMP                             ; [+23]
      258 GETTABLEKS                       R14 R5 K4 ["meshPart"]
      260 NAMECALL                         R14 R14 K59 ["Clone"]
      262 CALL                             R14 1 1
      263 MOVE                             R13 R14
      264 LOADK                            R14 K34 ["Handle"]
      265 SETTABLEKS                       R14 R13 K19 ["Name"]
      267 SETTABLEKS                       R10 R13 K5 ["Parent"]
      269 LOADK                            R16 K55 ["OriginalSize"]
      270 NAMECALL                         R14 R13 K52 ["FindFirstChild"]
      272 CALL                             R14 2 1
      273 JUMPIF                           R14 ; [+7]
      274 GETUPVAL                         R14 4
      275 GETTABLEKS                       R14 R14 K56 ["setOriginalSize"]
      277 MOVE                             R15 R13
      278 GETTABLEKS                       R16 R13 K36 ["Size"]
      280 CALL                             R14 2 0
      281 GETIMPORT                        R14 K17 [Instance.new]
      283 LOADK                            R15 K60 ["Attachment"]
      284 CALL                             R14 1 1
      285 GETTABLEKS                       R15 R5 K8 ["attachmentName"]
      287 SETTABLEKS                       R15 R14 K19 ["Name"]
      289 GETTABLEKS                       R15 R5 K4 ["meshPart"]
      291 GETTABLEKS                       R15 R15 K35 ["CFrame"]
      293 GETTABLEKS                       R17 R8 K61 ["WorldCFrame"]
      295 NAMECALL                         R15 R15 K62 ["ToObjectSpace"]
      297 CALL                             R15 2 1
      298 SETTABLEKS                       R15 R14 K35 ["CFrame"]
      300 SETTABLEKS                       R13 R14 K5 ["Parent"]
      302 GETTABLEKS                       R15 R5 K4 ["meshPart"]
      304 NAMECALL                         R15 R15 K63 ["Destroy"]
      306 CALL                             R15 1 0
      307 SETTABLEKS                       R6 R10 K5 ["Parent"]
      309 GETUPVAL                         R15 5
      310 CALL                             R15 0 1
      311 JUMPIFNOT                        R15 ; [+11]
      312 LOADK                            R17 K26 ["WrapLayer"]
      313 NAMECALL                         R15 R13 K7 ["FindFirstChildWhichIsA"]
      315 CALL                             R15 2 1
      316 JUMPIFEQKNIL                     R15 ; [+6]
      318 GETIMPORT                        R15 K64 [CFrame.new]
      320 CALL                             R15 0 1
      321 SETTABLEKS                       R15 R14 K35 ["CFrame"]
      323 GETUPVAL                         R15 4
      324 GETTABLEKS                       R15 R15 K65 ["setOriginalPosition"]
      326 MOVE                             R16 R14
      327 GETTABLEKS                       R18 R14 K66 ["Position"]
      329 MUL                              R17 R18 R12
      330 CALL                             R15 2 0
      331 FORGLOOP                         R1 2 ; [-320]
      333 RETURN                           R0 0

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
       29 GETTABLEKS                       R4 R4 K7 ["Flags"]
       31 GETTABLEKS                       R4 R4 K10 ["getFFlagFixLayeredClothingAssignment"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K11 ["Types"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K6 ["Src"]
       45 GETTABLEKS                       R6 R6 K12 ["Util"]
       47 GETTABLEKS                       R6 R6 K13 ["Constants"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K6 ["Src"]
       54 GETTABLEKS                       R7 R7 K12 ["Util"]
       56 GETTABLEKS                       R7 R7 K14 ["HumanoidValueUtil"]
       58 CALL                             R6 1 1
       59 DUPCLOSURE                       R7 K15 [PROTO_0]
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R5
       62 DUPCLOSURE                       R8 K16 [PROTO_1]
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R2
       69 RETURN                           R8 1
