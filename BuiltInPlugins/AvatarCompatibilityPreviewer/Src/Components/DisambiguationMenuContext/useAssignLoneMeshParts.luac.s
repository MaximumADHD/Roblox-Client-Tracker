PROTO_0:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 NOT                              R3 R4
        3 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        5 LOADK                            R4 K0 ["DEPRECATED_findAssociatedAttachment should only be used when FFlagFixLayeredClothingAssignment is disabled"]
        6 GETIMPORT                        R2 K2 [assert]
        8 CALL                             R2 2 0
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R2 R5 K3 ["LIMBS"]
       12 LOADNIL                          R3
       13 LOADNIL                          R4
       14 FORGPREP                         R2
       15 MOVE                             R9 R6
       16 NAMECALL                         R7 R0 K4 ["FindFirstChild"]
       18 CALL                             R7 2 1
       19 JUMPIFEQKNIL                     R7 ; [+13]
       21 MOVE                             R10 R1
       22 NAMECALL                         R8 R7 K4 ["FindFirstChild"]
       24 CALL                             R8 2 1
       25 JUMPIFEQKNIL                     R8 ; [+7]
       27 LOADK                            R11 K5 ["Attachment"]
       28 NAMECALL                         R9 R8 K6 ["IsA"]
       30 CALL                             R9 2 1
       31 JUMPIFNOT                        R9 ; [+1]
       32 RETURN                           R8 1
       33 FORGLOOP                         R2 2 ; [-19]
       35 LOADNIL                          R2
       36 RETURN                           R2 1

PROTO_1:
        0 LENGTH                           R3 R0
        1 LOADN                            R4 0
        2 JUMPIFLT                         R4 R3 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        8 LOADK                            R3 K0 ["assignLoneMeshParts called with no lone mesh part assignments"]
        9 GETIMPORT                        R1 K2 [assert]
       11 CALL                             R1 2 0
       12 MOVE                             R1 R0
       13 LOADNIL                          R2
       14 LOADNIL                          R3
       15 FORGPREP                         R1
       16 GETTABLEKS                       R6 R5 K3 ["assetType"]
       18 JUMPIFEQKNIL                     R6 ; [+246]
       20 GETTABLEKS                       R8 R5 K3 ["assetType"]
       22 JUMPIFNOTEQKNIL                  R8 ; [+2]
       24 LOADB                            R7 0 +1
       25 LOADB                            R7 1
       26 GETUPVAL                         R9 0
       27 GETTABLEKS                       R8 R9 K4 ["LUAU_ANALYZE_ERROR"]
       29 FASTCALL2                        ASSERT R7 R8 ; [+3]
       31 GETIMPORT                        R6 K2 [assert]
       33 CALL                             R6 2 0
       34 GETTABLEKS                       R7 R5 K5 ["meshPart"]
       36 GETTABLEKS                       R6 R7 K6 ["Parent"]
       38 JUMPIFEQKNIL                     R6 ; [+226]
       40 JUMPIFNOTEQKNIL                  R6 ; [+2]
       42 LOADB                            R8 0 +1
       43 LOADB                            R8 1
       44 GETUPVAL                         R10 0
       45 GETTABLEKS                       R9 R10 K4 ["LUAU_ANALYZE_ERROR"]
       47 FASTCALL2                        ASSERT R8 R9 ; [+3]
       49 GETIMPORT                        R7 K2 [assert]
       51 CALL                             R7 2 0
       52 LOADK                            R9 K7 ["Humanoid"]
       53 NAMECALL                         R7 R6 K8 ["FindFirstChildWhichIsA"]
       55 CALL                             R7 2 1
       56 JUMPIFEQKNIL                     R7 ; [+208]
       58 GETUPVAL                         R11 0
       59 GETTABLEKS                       R10 R11 K4 ["LUAU_ANALYZE_ERROR"]
       61 FASTCALL2                        ASSERT R7 R10 ; [+4]
       63 MOVE                             R9 R7
       64 GETIMPORT                        R8 K2 [assert]
       66 CALL                             R8 2 1
       67 GETUPVAL                         R9 1
       68 MOVE                             R10 R6
       69 GETTABLEKS                       R11 R5 K9 ["attachmentName"]
       71 CALL                             R9 2 1
       72 JUMPIFNOTEQKNIL                  R9 ; [+12]
       74 GETIMPORT                        R10 K11 [warn]
       76 LOADK                            R12 K12 ["Could not find attachment %*"]
       77 GETTABLEKS                       R14 R5 K9 ["attachmentName"]
       79 NAMECALL                         R12 R12 K13 ["format"]
       81 CALL                             R12 2 1
       82 MOVE                             R11 R12
       83 CALL                             R10 1 0
       84 JUMP                             ; [+180]
       85 JUMPIFNOTEQKNIL                  R9 ; [+2]
       87 LOADB                            R11 0 +1
       88 LOADB                            R11 1
       89 GETUPVAL                         R13 0
       90 GETTABLEKS                       R12 R13 K4 ["LUAU_ANALYZE_ERROR"]
       92 FASTCALL2                        ASSERT R11 R12 ; [+3]
       94 GETIMPORT                        R10 K2 [assert]
       96 CALL                             R10 2 0
       97 GETIMPORT                        R10 K16 [Instance.new]
       99 LOADK                            R11 K17 ["Accessory"]
      100 CALL                             R10 1 1
      101 GETTABLEKS                       R12 R5 K5 ["meshPart"]
      103 GETTABLEKS                       R11 R12 K18 ["Name"]
      105 SETTABLEKS                       R11 R10 K18 ["Name"]
      107 GETUPVAL                         R14 0
      108 GETTABLEKS                       R13 R14 K19 ["ASSET_TYPE_TO_ACCESSORY_TYPE"]
      110 GETTABLEKS                       R14 R5 K3 ["assetType"]
      112 GETTABLE                         R12 R13 R14
      113 FASTCALL2K                       ASSERT R12 K20 ; [+4]
      115 LOADK                            R13 K20 ["Couldn't find accessory type for asset type"]
      116 GETIMPORT                        R11 K2 [assert]
      118 CALL                             R11 2 1
      119 SETTABLEKS                       R11 R10 K21 ["AccessoryType"]
      121 LOADNIL                          R11
      122 GETTABLEKS                       R12 R5 K5 ["meshPart"]
      124 LOADK                            R14 K22 ["WrapLayer"]
      125 NAMECALL                         R12 R12 K8 ["FindFirstChildWhichIsA"]
      127 CALL                             R12 2 1
      128 JUMPIFNOTEQKNIL                  R12 ; [+66]
      130 GETIMPORT                        R12 K16 [Instance.new]
      132 LOADK                            R13 K23 ["Part"]
      133 CALL                             R12 1 1
      134 MOVE                             R11 R12
      135 GETIMPORT                        R12 K27 [Enum.SurfaceType.Smooth]
      137 SETTABLEKS                       R12 R11 K28 ["TopSurface"]
      139 GETIMPORT                        R12 K27 [Enum.SurfaceType.Smooth]
      141 SETTABLEKS                       R12 R11 K29 ["BottomSurface"]
      143 LOADK                            R12 K30 ["Handle"]
      144 SETTABLEKS                       R12 R11 K18 ["Name"]
      146 GETTABLEKS                       R13 R5 K5 ["meshPart"]
      148 GETTABLEKS                       R12 R13 K31 ["CFrame"]
      150 SETTABLEKS                       R12 R11 K31 ["CFrame"]
      152 GETTABLEKS                       R13 R5 K5 ["meshPart"]
      154 GETTABLEKS                       R12 R13 K32 ["Size"]
      156 SETTABLEKS                       R12 R11 K32 ["Size"]
      158 GETIMPORT                        R12 K16 [Instance.new]
      160 LOADK                            R13 K33 ["SpecialMesh"]
      161 CALL                             R12 1 1
      162 GETTABLEKS                       R14 R5 K5 ["meshPart"]
      164 GETTABLEKS                       R13 R14 K34 ["MeshId"]
      166 SETTABLEKS                       R13 R12 K34 ["MeshId"]
      168 GETTABLEKS                       R13 R5 K5 ["meshPart"]
      170 LOADK                            R15 K35 ["SurfaceAppearance"]
      171 NAMECALL                         R13 R13 K8 ["FindFirstChildWhichIsA"]
      173 CALL                             R13 2 1
      174 JUMPIFNOT                        R13 ; [+5]
      175 GETTABLEKS                       R14 R13 K36 ["ColorMap"]
      177 SETTABLEKS                       R14 R12 K37 ["TextureId"]
      179 JUMP                             ; [+6]
      180 GETTABLEKS                       R15 R5 K5 ["meshPart"]
      182 GETTABLEKS                       R14 R15 K38 ["TextureID"]
      184 SETTABLEKS                       R14 R12 K37 ["TextureId"]
      186 GETIMPORT                        R14 K41 [Enum.MeshType.FileMesh]
      188 SETTABLEKS                       R14 R12 K39 ["MeshType"]
      190 SETTABLEKS                       R11 R12 K6 ["Parent"]
      192 SETTABLEKS                       R10 R11 K6 ["Parent"]
      194 JUMP                             ; [+11]
      195 GETTABLEKS                       R12 R5 K5 ["meshPart"]
      197 NAMECALL                         R12 R12 K42 ["Clone"]
      199 CALL                             R12 1 1
      200 MOVE                             R11 R12
      201 LOADK                            R12 K30 ["Handle"]
      202 SETTABLEKS                       R12 R11 K18 ["Name"]
      204 SETTABLEKS                       R10 R11 K6 ["Parent"]
      206 GETTABLEKS                       R13 R9 K6 ["Parent"]
      208 FASTCALL2K                       ASSERT R13 K43 ; [+4]
      210 LOADK                            R14 K43 ["No parent"]
      211 GETIMPORT                        R12 K2 [assert]
      213 CALL                             R12 2 1
      214 GETIMPORT                        R13 K16 [Instance.new]
      216 LOADK                            R14 K44 ["Vector3Value"]
      217 CALL                             R13 1 1
      218 LOADK                            R14 K45 ["OriginalSize"]
      219 SETTABLEKS                       R14 R13 K18 ["Name"]
      221 GETTABLEKS                       R15 R11 K32 ["Size"]
      223 GETTABLEKS                       R18 R5 K5 ["meshPart"]
      225 MOVE                             R21 R12
      226 NAMECALL                         R19 R8 K46 ["GetBodyPartR15"]
      228 CALL                             R19 2 -1
      229 NAMECALL                         R16 R8 K47 ["GetAccessoryHandleScale"]
      231 CALL                             R16 -1 1
      232 DIV                              R14 R15 R16
      233 SETTABLEKS                       R14 R13 K48 ["Value"]
      235 SETTABLEKS                       R11 R13 K6 ["Parent"]
      237 GETIMPORT                        R14 K16 [Instance.new]
      239 LOADK                            R15 K49 ["Attachment"]
      240 CALL                             R14 1 1
      241 GETTABLEKS                       R15 R5 K9 ["attachmentName"]
      243 SETTABLEKS                       R15 R14 K18 ["Name"]
      245 GETTABLEKS                       R16 R5 K5 ["meshPart"]
      247 GETTABLEKS                       R15 R16 K31 ["CFrame"]
      249 GETTABLEKS                       R17 R9 K50 ["WorldCFrame"]
      251 NAMECALL                         R15 R15 K51 ["ToObjectSpace"]
      253 CALL                             R15 2 1
      254 SETTABLEKS                       R15 R14 K31 ["CFrame"]
      256 SETTABLEKS                       R11 R14 K6 ["Parent"]
      258 GETTABLEKS                       R15 R5 K5 ["meshPart"]
      260 NAMECALL                         R15 R15 K52 ["Destroy"]
      262 CALL                             R15 1 0
      263 SETTABLEKS                       R6 R10 K6 ["Parent"]
      265 FORGLOOP                         R1 2 ; [-250]
      267 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+8]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["useCallback"]
        6 GETUPVAL                         R1 2
        7 NEWTABLE                         R2 0 0
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R0 R1 K0 ["useCallback"]
       14 DUPCLOSURE                       R1 K1 [PROTO_1]
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U4
       17 NEWTABLE                         R2 0 0
       19 CALL                             R0 2 -1
       20 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Util"]
       20 GETTABLEKS                       R3 R4 K10 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R5 K11 ["Types"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K8 ["Src"]
       34 GETTABLEKS                       R6 R7 K12 ["Flags"]
       36 GETTABLEKS                       R5 R6 K13 ["getFFlagFixLayeredClothingAssignment"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R9 R0 K8 ["Src"]
       43 GETTABLEKS                       R8 R9 K14 ["Components"]
       45 GETTABLEKS                       R7 R8 K15 ["DisambiguationMenuContext"]
       47 GETTABLEKS                       R6 R7 K16 ["assignLoneMeshParts"]
       49 CALL                             R5 1 1
       50 DUPCLOSURE                       R6 K17 [PROTO_0]
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R2
       53 DUPCLOSURE                       R7 K18 [PROTO_2]
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R6
       59 RETURN                           R7 1
