PROTO_0:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R2 R5 K0 ["LIMBS"]
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 MOVE                             R9 R6
        7 NAMECALL                         R7 R0 K1 ["FindFirstChild"]
        9 CALL                             R7 2 1
       10 JUMPIFEQKNIL                     R7 ; [+13]
       12 MOVE                             R10 R1
       13 NAMECALL                         R8 R7 K1 ["FindFirstChild"]
       15 CALL                             R8 2 1
       16 JUMPIFEQKNIL                     R8 ; [+7]
       18 LOADK                            R11 K2 ["Attachment"]
       19 NAMECALL                         R9 R8 K3 ["IsA"]
       21 CALL                             R9 2 1
       22 JUMPIFNOT                        R9 ; [+1]
       23 RETURN                           R8 1
       24 FORGLOOP                         R2 2 ; [-19]
       26 LOADNIL                          R2
       27 RETURN                           R2 1

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
       14 JUMPIFEQKNIL                     R6 ; [+293]
       16 GETTABLEKS                       R7 R5 K4 ["meshPart"]
       18 GETTABLEKS                       R6 R7 K5 ["Parent"]
       20 JUMPIFEQKNIL                     R6 ; [+287]
       22 LOADK                            R9 K6 ["Humanoid"]
       23 NAMECALL                         R7 R6 K7 ["FindFirstChildWhichIsA"]
       25 CALL                             R7 2 1
       26 JUMPIFEQKNIL                     R7 ; [+281]
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
       45 JUMP                             ; [+262]
       46 GETUPVAL                         R11 2
       47 GETTABLEKS                       R10 R11 K13 ["ASSET_TYPE_TO_ACCESSORY_TYPE"]
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
       64 JUMP                             ; [+243]
       65 GETIMPORT                        R10 K17 [Instance.new]
       67 LOADK                            R11 K18 ["Accessory"]
       68 CALL                             R10 1 1
       69 GETTABLEKS                       R12 R5 K4 ["meshPart"]
       71 GETTABLEKS                       R11 R12 K19 ["Name"]
       73 SETTABLEKS                       R11 R10 K19 ["Name"]
       75 SETTABLEKS                       R9 R10 K20 ["AccessoryType"]
       77 GETTABLEKS                       R12 R8 K5 ["Parent"]
       79 FASTCALL2K                       ASSERT R12 K21 ; [+4]
       81 LOADK                            R13 K21 ["No parent"]
       82 GETIMPORT                        R11 K2 [assert]
       84 CALL                             R11 2 1
       85 GETTABLEKS                       R14 R5 K4 ["meshPart"]
       87 MOVE                             R17 R11
       88 NAMECALL                         R15 R7 K22 ["GetBodyPartR15"]
       90 CALL                             R15 2 -1
       91 NAMECALL                         R12 R7 K23 ["GetAccessoryHandleScale"]
       93 CALL                             R12 -1 1
       94 LOADNIL                          R13
       95 GETTABLEKS                       R14 R5 K4 ["meshPart"]
       97 LOADK                            R16 K24 ["WrapLayer"]
       98 NAMECALL                         R14 R14 K7 ["FindFirstChildWhichIsA"]
      100 CALL                             R14 2 1
      101 JUMPIFNOTEQKNIL                  R14 ; [+147]
      103 GETIMPORT                        R14 K17 [Instance.new]
      105 LOADK                            R15 K25 ["Part"]
      106 CALL                             R14 1 1
      107 MOVE                             R13 R14
      108 GETIMPORT                        R14 K29 [Enum.SurfaceType.Smooth]
      110 SETTABLEKS                       R14 R13 K30 ["TopSurface"]
      112 GETIMPORT                        R14 K29 [Enum.SurfaceType.Smooth]
      114 SETTABLEKS                       R14 R13 K31 ["BottomSurface"]
      116 LOADK                            R14 K32 ["Handle"]
      117 SETTABLEKS                       R14 R13 K19 ["Name"]
      119 GETTABLEKS                       R15 R5 K4 ["meshPart"]
      121 GETTABLEKS                       R14 R15 K33 ["CFrame"]
      123 SETTABLEKS                       R14 R13 K33 ["CFrame"]
      125 GETTABLEKS                       R15 R5 K4 ["meshPart"]
      127 GETTABLEKS                       R14 R15 K34 ["Size"]
      129 SETTABLEKS                       R14 R13 K34 ["Size"]
      131 GETIMPORT                        R14 K17 [Instance.new]
      133 LOADK                            R15 K35 ["SpecialMesh"]
      134 CALL                             R14 1 1
      135 GETIMPORT                        R15 K38 [Enum.MeshType.FileMesh]
      137 SETTABLEKS                       R15 R14 K36 ["MeshType"]
      139 GETTABLEKS                       R17 R5 K4 ["meshPart"]
      141 GETTABLEKS                       R16 R17 K34 ["Size"]
      143 GETTABLEKS                       R18 R5 K4 ["meshPart"]
      145 GETTABLEKS                       R17 R18 K39 ["MeshSize"]
      147 DIV                              R15 R16 R17
      148 SETTABLEKS                       R15 R14 K40 ["Scale"]
      150 GETTABLEKS                       R16 R5 K4 ["meshPart"]
      152 GETTABLEKS                       R15 R16 K41 ["MeshId"]
      154 SETTABLEKS                       R15 R14 K41 ["MeshId"]
      156 GETTABLEKS                       R15 R5 K4 ["meshPart"]
      158 GETUPVAL                         R18 2
      159 GETTABLEKS                       R17 R18 K42 ["ATTRIBUTE_CREATED_BY_AUTO_SETUP"]
      161 NAMECALL                         R15 R15 K43 ["GetAttribute"]
      163 CALL                             R15 2 1
      164 JUMPIFNOT                        R15 ; [+7]
      165 GETUPVAL                         R18 2
      166 GETTABLEKS                       R17 R18 K42 ["ATTRIBUTE_CREATED_BY_AUTO_SETUP"]
      168 LOADB                            R18 1
      169 NAMECALL                         R15 R13 K44 ["SetAttribute"]
      171 CALL                             R15 3 0
      172 GETTABLEKS                       R15 R5 K4 ["meshPart"]
      174 LOADK                            R17 K45 ["SurfaceAppearance"]
      175 NAMECALL                         R15 R15 K7 ["FindFirstChildWhichIsA"]
      177 CALL                             R15 2 1
      178 JUMPIFNOT                        R15 ; [+5]
      179 GETTABLEKS                       R16 R15 K46 ["ColorMap"]
      181 SETTABLEKS                       R16 R14 K47 ["TextureId"]
      183 JUMP                             ; [+6]
      184 GETTABLEKS                       R17 R5 K4 ["meshPart"]
      186 GETTABLEKS                       R16 R17 K48 ["TextureID"]
      188 SETTABLEKS                       R16 R14 K47 ["TextureId"]
      190 GETTABLEKS                       R16 R5 K4 ["meshPart"]
      192 LOADK                            R18 K49 ["AvatarPartScaleType"]
      193 NAMECALL                         R16 R16 K50 ["FindFirstChild"]
      195 CALL                             R16 2 1
      196 JUMPIFNOT                        R16 ; [+6]
      197 GETIMPORT                        R17 K52 [Instance.fromExisting]
      199 MOVE                             R18 R16
      200 CALL                             R17 1 1
      201 SETTABLEKS                       R13 R17 K5 ["Parent"]
      203 GETTABLEKS                       R17 R5 K4 ["meshPart"]
      205 LOADK                            R19 K53 ["OriginalSize"]
      206 NAMECALL                         R17 R17 K50 ["FindFirstChild"]
      208 CALL                             R17 2 1
      209 JUMPIFNOT                        R17 ; [+7]
      210 GETIMPORT                        R18 K52 [Instance.fromExisting]
      212 MOVE                             R19 R17
      213 CALL                             R18 1 1
      214 SETTABLEKS                       R13 R18 K5 ["Parent"]
      216 JUMP                             ; [+8]
      217 GETUPVAL                         R19 3
      218 GETTABLEKS                       R18 R19 K54 ["setOriginalSize"]
      220 MOVE                             R19 R13
      221 GETTABLEKS                       R21 R13 K34 ["Size"]
      223 DIV                              R20 R21 R12
      224 CALL                             R18 2 0
      225 GETTABLEKS                       R18 R5 K4 ["meshPart"]
      227 NAMECALL                         R18 R18 K55 ["GetChildren"]
      229 CALL                             R18 1 3
      230 FORGPREP                         R18
      231 LOADK                            R25 K24 ["WrapLayer"]
      232 NAMECALL                         R23 R22 K56 ["IsA"]
      234 CALL                             R23 2 1
      235 JUMPIFNOT                        R23 ; [+6]
      236 NAMECALL                         R23 R22 K57 ["Clone"]
      238 CALL                             R23 1 1
      239 JUMPIFNOT                        R23 ; [+2]
      240 SETTABLEKS                       R13 R23 K5 ["Parent"]
      242 FORGLOOP                         R18 2 ; [-12]
      244 SETTABLEKS                       R13 R14 K5 ["Parent"]
      246 SETTABLEKS                       R10 R13 K5 ["Parent"]
      248 JUMP                             ; [+23]
      249 GETTABLEKS                       R14 R5 K4 ["meshPart"]
      251 NAMECALL                         R14 R14 K57 ["Clone"]
      253 CALL                             R14 1 1
      254 MOVE                             R13 R14
      255 LOADK                            R14 K32 ["Handle"]
      256 SETTABLEKS                       R14 R13 K19 ["Name"]
      258 SETTABLEKS                       R10 R13 K5 ["Parent"]
      260 LOADK                            R16 K53 ["OriginalSize"]
      261 NAMECALL                         R14 R13 K50 ["FindFirstChild"]
      263 CALL                             R14 2 1
      264 JUMPIF                           R14 ; [+7]
      265 GETUPVAL                         R15 3
      266 GETTABLEKS                       R14 R15 K54 ["setOriginalSize"]
      268 MOVE                             R15 R13
      269 GETTABLEKS                       R16 R13 K34 ["Size"]
      271 CALL                             R14 2 0
      272 GETIMPORT                        R14 K17 [Instance.new]
      274 LOADK                            R15 K58 ["Attachment"]
      275 CALL                             R14 1 1
      276 GETTABLEKS                       R15 R5 K8 ["attachmentName"]
      278 SETTABLEKS                       R15 R14 K19 ["Name"]
      280 GETTABLEKS                       R16 R5 K4 ["meshPart"]
      282 GETTABLEKS                       R15 R16 K33 ["CFrame"]
      284 GETTABLEKS                       R17 R8 K59 ["WorldCFrame"]
      286 NAMECALL                         R15 R15 K60 ["ToObjectSpace"]
      288 CALL                             R15 2 1
      289 SETTABLEKS                       R15 R14 K33 ["CFrame"]
      291 SETTABLEKS                       R13 R14 K5 ["Parent"]
      293 GETUPVAL                         R16 3
      294 GETTABLEKS                       R15 R16 K61 ["setOriginalPosition"]
      296 MOVE                             R16 R14
      297 GETTABLEKS                       R18 R14 K62 ["Position"]
      299 MUL                              R17 R18 R12
      300 CALL                             R15 2 0
      301 GETTABLEKS                       R15 R5 K4 ["meshPart"]
      303 NAMECALL                         R15 R15 K63 ["Destroy"]
      305 CALL                             R15 1 0
      306 SETTABLEKS                       R6 R10 K5 ["Parent"]
      308 FORGLOOP                         R1 2 ; [-297]
      310 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Flags"]
       13 GETTABLEKS                       R2 R3 K8 ["getFFlagFixLayeredClothingAssignment"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R4 K9 ["Types"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K6 ["Src"]
       27 GETTABLEKS                       R5 R6 K10 ["Util"]
       29 GETTABLEKS                       R4 R5 K11 ["Constants"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K6 ["Src"]
       36 GETTABLEKS                       R6 R7 K10 ["Util"]
       38 GETTABLEKS                       R5 R6 K12 ["HumanoidValueUtil"]
       40 CALL                             R4 1 1
       41 DUPCLOSURE                       R5 K13 [PROTO_0]
       42 CAPTURE                          VAL R3
       43 DUPCLOSURE                       R6 K14 [PROTO_1]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R4
       48 RETURN                           R6 1
