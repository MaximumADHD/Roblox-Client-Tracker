PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETUPVAL                         R9 0
        7 GETTABLE                         R8 R9 R5
        8 FASTCALL2K                       ASSERT R8 K0 ; [+4]
       10 LOADK                            R9 K0 ["Body area not found in UV reference values"]
       11 GETIMPORT                        R7 K2 [assert]
       13 CALL                             R7 2 1
       14 MOVE                             R8 R7
       15 LOADNIL                          R9
       16 LOADNIL                          R10
       17 FORGPREP                         R8
       18 FASTCALL2                        TABLE_INSERT R1 R12 ; [+5]
       20 MOVE                             R14 R1
       21 MOVE                             R15 R12
       22 GETIMPORT                        R13 K5 [table.insert]
       24 CALL                             R13 2 0
       25 FORGLOOP                         R8 2 ; [-8]
       27 FORGLOOP                         R2 1 ; [-22]
       29 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["uVsDisallowedForAssetType"]
        2 JUMPIF                           R1 ; [+19]
        3 NEWTABLE                         R1 0 0
        5 GETUPVAL                         R2 0
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 GETTABLEKS                       R8 R0 K1 ["allowedParts"]
       11 GETTABLE                         R7 R8 R5
       12 JUMPIF                           R7 ; [+2]
       13 LOADB                            R7 1
       14 SETTABLE                         R7 R1 R5
       15 FORGLOOP                         R2 1 ; [-7]
       17 GETUPVAL                         R2 1
       18 MOVE                             R3 R1
       19 CALL                             R2 1 1
       20 SETTABLEKS                       R2 R0 K0 ["uVsDisallowedForAssetType"]
       22 GETTABLEKS                       R1 R0 K0 ["uVsDisallowedForAssetType"]
       24 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["uVsForAssetType"]
        2 JUMPIF                           R1 ; [+6]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R2 R0 K1 ["allowedParts"]
        6 CALL                             R1 1 1
        7 SETTABLEKS                       R1 R0 K0 ["uVsForAssetType"]
        9 GETTABLEKS                       R1 R0 K0 ["uVsForAssetType"]
       11 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["mainUVsForAssetType"]
        2 JUMPIF                           R1 ; [+6]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R2 R0 K1 ["mainParts"]
        6 CALL                             R1 1 1
        7 SETTABLEKS                       R1 R0 K0 ["mainUVsForAssetType"]
        9 GETTABLEKS                       R1 R0 K0 ["mainUVsForAssetType"]
       11 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["uploadEnum"]
        2 GETTABLEKS                       R2 R2 K1 ["assetType"]
        4 GETUPVAL                         R4 0
        5 GETTABLE                         R3 R4 R2
        6 JUMPIF                           R3 ; [+1]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R5 R1 K3 ["innerCagesData"]
       10 GETTABLEKS                       R4 R5 K2 ["Handle"]
       12 GETTABLEKS                       R6 R1 K4 ["outerCagesData"]
       14 GETTABLEKS                       R5 R6 K2 ["Handle"]
       16 JUMPIFNOT                        R4 ; [+1]
       17 JUMPIF                           R5 ; [+1]
       18 RETURN                           R0 0
       19 GETTABLEKS                       R6 R4 K5 ["origin"]
       21 GETTABLEKS                       R7 R5 K5 ["origin"]
       23 GETUPVAL                         R8 1
       24 MOVE                             R9 R3
       25 CALL                             R8 1 1
       26 LENGTH                           R9 R8
       27 LOADN                            R10 0
       28 JUMPIFNOTLT                      R10 R9 ; [+70]
       30 GETUPVAL                         R9 2
       31 MOVE                             R11 R8
       32 GETTABLEKS                       R12 R4 K6 ["editable"]
       34 MOVE                             R13 R6
       35 GETTABLEKS                       R14 R5 K6 ["editable"]
       37 MOVE                             R15 R7
       38 NAMECALL                         R9 R9 K7 ["CalculateEditableMeshNumModifiedCageUVsInSet"]
       40 CALL                             R9 6 3
       41 LENGTH                           R14 R8
       42 JUMPIFEQ                         R9 R14 ; [+2]
       44 LOADB                            R13 0 +1
       45 LOADB                            R13 1
       46 FASTCALL2K                       ASSERT R13 K8 ; [+4]
       48 LOADK                            R14 K8 ["all the UVs in allExcludedUVsForBodyArea sent in to CalculateEditableMeshNumModifiedCageUVsInSet should be unique"]
       49 GETIMPORT                        R12 K10 [assert]
       51 CALL                             R12 2 0
       52 JUMPIFEQKN                       R10 K11 [0] ; [+46]
       54 DIV                              R13 R11 R10
       55 MULK                             R12 R13 K12 [100]
       56 GETUPVAL                         R13 3
       57 JUMPIFNOTLT                      R13 R12 ; [+41]
       59 GETUPVAL                         R15 4
       60 GETTABLEKS                       R15 R15 K13 ["Keys"]
       62 GETTABLEKS                       R15 R15 K14 ["CageUV_TooManyExcludedModified"]
       64 DUPTABLE                         R16 K19 [{"modifiedPercent", "assetTypeName", "maxPercent", "allowedArea"}]
       65 FASTCALL1                        MATH_FLOOR R12 ; [+3]
       66 MOVE                             R19 R12
       67 GETIMPORT                        R18 K22 [math.floor]
       69 CALL                             R18 1 1
       70 FASTCALL1                        TOSTRING R18 ; [+2]
       71 GETIMPORT                        R17 K24 [tostring]
       73 CALL                             R17 1 1
       74 SETTABLEKS                       R17 R16 K15 ["modifiedPercent"]
       76 GETTABLEKS                       R17 R2 K25 ["Name"]
       78 SETTABLEKS                       R17 R16 K16 ["assetTypeName"]
       80 GETUPVAL                         R18 3
       81 FASTCALL1                        TOSTRING R18 ; [+2]
       82 GETIMPORT                        R17 K24 [tostring]
       84 CALL                             R17 1 1
       85 SETTABLEKS                       R17 R16 K17 ["maxPercent"]
       87 GETUPVAL                         R17 5
       88 GETTABLEKS                       R17 R17 K26 ["keysToString"]
       90 GETTABLEKS                       R18 R3 K27 ["allowedParts"]
       92 LOADK                            R19 K28 ["/"]
       93 CALL                             R17 2 1
       94 SETTABLEKS                       R17 R16 K18 ["allowedArea"]
       96 NAMECALL                         R13 R0 K29 ["fail"]
       98 CALL                             R13 3 0
       99 GETTABLEKS                       R9 R3 K30 ["mainUVsForAssetType"]
      101 JUMPIF                           R9 ; [+6]
      102 GETUPVAL                         R9 6
      103 GETTABLEKS                       R10 R3 K31 ["mainParts"]
      105 CALL                             R9 1 1
      106 SETTABLEKS                       R9 R3 K30 ["mainUVsForAssetType"]
      108 GETTABLEKS                       R8 R3 K30 ["mainUVsForAssetType"]
      110 LENGTH                           R9 R8
      111 LOADN                            R10 0
      112 JUMPIFNOTLT                      R10 R9 ; [+68]
      114 GETUPVAL                         R9 2
      115 MOVE                             R11 R8
      116 GETTABLEKS                       R12 R4 K6 ["editable"]
      118 MOVE                             R13 R6
      119 GETTABLEKS                       R14 R5 K6 ["editable"]
      121 MOVE                             R15 R7
      122 NAMECALL                         R9 R9 K7 ["CalculateEditableMeshNumModifiedCageUVsInSet"]
      124 CALL                             R9 6 3
      125 LENGTH                           R14 R8
      126 JUMPIFEQ                         R9 R14 ; [+2]
      128 LOADB                            R13 0 +1
      129 LOADB                            R13 1
      130 FASTCALL2K                       ASSERT R13 K32 ; [+4]
      132 LOADK                            R14 K32 ["all the UVs in allUVsForBodyArea sent in to CalculateEditableMeshNumModifiedCageUVsInSet should be unique"]
      133 GETIMPORT                        R12 K10 [assert]
      135 CALL                             R12 2 0
      136 DIV                              R13 R11 R9
      137 MULK                             R12 R13 K12 [100]
      138 GETUPVAL                         R13 7
      139 JUMPIFNOTLT                      R12 R13 ; [+41]
      141 GETUPVAL                         R15 4
      142 GETTABLEKS                       R15 R15 K13 ["Keys"]
      144 GETTABLEKS                       R15 R15 K33 ["CageUV_TooFewMainModified"]
      146 DUPTABLE                         R16 K37 [{"assetTypeName", "requiredPercent", "mainArea", "currentPercent"}]
      147 GETTABLEKS                       R17 R2 K25 ["Name"]
      149 SETTABLEKS                       R17 R16 K16 ["assetTypeName"]
      151 GETUPVAL                         R18 7
      152 FASTCALL1                        TOSTRING R18 ; [+2]
      153 GETIMPORT                        R17 K24 [tostring]
      155 CALL                             R17 1 1
      156 SETTABLEKS                       R17 R16 K34 ["requiredPercent"]
      158 GETUPVAL                         R17 5
      159 GETTABLEKS                       R17 R17 K26 ["keysToString"]
      161 GETTABLEKS                       R18 R3 K31 ["mainParts"]
      163 LOADK                            R19 K28 ["/"]
      164 CALL                             R17 2 1
      165 SETTABLEKS                       R17 R16 K35 ["mainArea"]
      167 FASTCALL1                        MATH_FLOOR R12 ; [+3]
      168 MOVE                             R19 R12
      169 GETIMPORT                        R18 K22 [math.floor]
      171 CALL                             R18 1 1
      172 FASTCALL1                        TOSTRING R18 ; [+2]
      173 GETIMPORT                        R17 K24 [tostring]
      175 CALL                             R17 1 1
      176 SETTABLEKS                       R17 R16 K36 ["currentPercent"]
      178 NAMECALL                         R13 R0 K29 ["fail"]
      180 CALL                             R13 3 0
      181 GETTABLEKS                       R9 R3 K38 ["uVsForAssetType"]
      183 JUMPIF                           R9 ; [+6]
      184 GETUPVAL                         R9 6
      185 GETTABLEKS                       R10 R3 K27 ["allowedParts"]
      187 CALL                             R9 1 1
      188 SETTABLEKS                       R9 R3 K38 ["uVsForAssetType"]
      190 GETTABLEKS                       R8 R3 K38 ["uVsForAssetType"]
      192 LENGTH                           R9 R8
      193 LOADN                            R10 0
      194 JUMPIFNOTLT                      R10 R9 ; [+97]
      196 GETTABLEKS                       R10 R1 K39 ["renderMeshesData"]
      198 GETTABLEKS                       R9 R10 K2 ["Handle"]
      200 JUMPIF                           R9 ; [+1]
      201 RETURN                           R0 0
      202 GETUPVAL                         R10 2
      203 MOVE                             R12 R8
      204 GETTABLEKS                       R13 R4 K6 ["editable"]
      206 MOVE                             R14 R6
      207 GETTABLEKS                       R15 R5 K6 ["editable"]
      209 MOVE                             R16 R7
      210 NAMECALL                         R10 R10 K40 ["CalculateEditableMeshModifiedCageBoundingBox"]
      212 CALL                             R10 6 2
      213 GETUPVAL                         R12 2
      214 GETTABLEKS                       R14 R9 K6 ["editable"]
      216 NAMECALL                         R12 R12 K41 ["GetEditableMeshVerts"]
      218 CALL                             R12 2 1
      219 JUMPIFNOT                        R12 ; [+3]
      220 LENGTH                           R13 R12
      221 JUMPIFNOTEQKN                    R13 K11 [0] ; [+10]
      223 GETUPVAL                         R15 4
      224 GETTABLEKS                       R15 R15 K13 ["Keys"]
      226 GETTABLEKS                       R15 R15 K42 ["CageUV_RenderMeshBoundsCheckFailed"]
      228 NAMECALL                         R13 R0 K29 ["fail"]
      230 CALL                             R13 2 0
      231 RETURN                           R0 0
      232 GETUPVAL                         R13 8
      233 MUL                              R11 R11 R13
      234 LOADN                            R13 0
      235 MOVE                             R14 R12
      236 LOADNIL                          R15
      237 LOADNIL                          R16
      238 FORGPREP                         R14
      239 GETUPVAL                         R19 9
      240 GETTABLEKS                       R19 R19 K43 ["pointInAxisAlignedBounds"]
      242 MOVE                             R20 R18
      243 MOVE                             R21 R10
      244 MOVE                             R22 R11
      245 CALL                             R19 3 1
      246 JUMPIFNOT                        R19 ; [+1]
      247 ADDK                             R13 R13 K44 [1]
      248 FORGLOOP                         R14 2 ; [-10]
      250 LENGTH                           R16 R12
      251 DIV                              R15 R13 R16
      252 MULK                             R14 R15 K12 [100]
      253 GETUPVAL                         R15 10
      254 JUMPIFNOTLT                      R14 R15 ; [+37]
      256 GETUPVAL                         R15 5
      257 GETTABLEKS                       R15 R15 K26 ["keysToString"]
      259 GETTABLEKS                       R16 R3 K27 ["allowedParts"]
      261 LOADK                            R17 K28 ["/"]
      262 CALL                             R15 2 1
      263 GETUPVAL                         R18 4
      264 GETTABLEKS                       R18 R18 K13 ["Keys"]
      266 GETTABLEKS                       R18 R18 K45 ["CageUV_RenderMeshOutsideModifiedArea"]
      268 DUPTABLE                         R19 K46 [{"currentPercent", "allowedArea", "requiredPercent"}]
      269 FASTCALL1                        MATH_FLOOR R14 ; [+3]
      270 MOVE                             R22 R14
      271 GETIMPORT                        R21 K22 [math.floor]
      273 CALL                             R21 1 1
      274 FASTCALL1                        TOSTRING R21 ; [+2]
      275 GETIMPORT                        R20 K24 [tostring]
      277 CALL                             R20 1 1
      278 SETTABLEKS                       R20 R19 K36 ["currentPercent"]
      280 SETTABLEKS                       R15 R19 K18 ["allowedArea"]
      282 GETUPVAL                         R21 10
      283 FASTCALL1                        TOSTRING R21 ; [+2]
      284 GETIMPORT                        R20 K24 [tostring]
      286 CALL                             R20 1 1
      287 SETTABLEKS                       R20 R19 K34 ["requiredPercent"]
      289 NAMECALL                         R16 R0 K29 ["fail"]
      291 CALL                             R16 3 0
      292 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UGCValidationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["util"]
       19 GETTABLEKS                       R3 R3 K10 ["Types"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R4 R1 K11 ["validationSystem"]
       26 GETTABLEKS                       R4 R4 K12 ["ValidationEnums"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K8 [require]
       31 GETTABLEKS                       R5 R1 K11 ["validationSystem"]
       33 GETTABLEKS                       R5 R5 K13 ["ErrorSourceStrings"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K8 [require]
       38 GETTABLEKS                       R6 R1 K14 ["WrapTargetCageUVReferenceValues"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K8 [require]
       43 GETTABLEKS                       R7 R1 K9 ["util"]
       45 GETTABLEKS                       R7 R7 K15 ["CollisionTestUtil"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K8 [require]
       50 GETTABLEKS                       R8 R1 K9 ["util"]
       52 GETTABLEKS                       R8 R8 K16 ["StringUtil"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K8 [require]
       57 GETTABLEKS                       R9 R1 K17 ["flags"]
       59 GETTABLEKS                       R9 R9 K18 ["getFFlagUGCValidateMigrateCageUV"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K1 [game]
       64 LOADK                            R11 K19 ["UGCValidateExcludedUVModifyRequirements"]
       65 LOADN                            R12 14
       66 NAMECALL                         R9 R9 K20 ["DefineFastInt"]
       68 CALL                             R9 3 1
       69 GETIMPORT                        R10 K1 [game]
       71 LOADK                            R12 K21 ["UGCValidatePartUVModifyRequirements"]
       72 LOADN                            R13 45
       73 NAMECALL                         R10 R10 K20 ["DefineFastInt"]
       75 CALL                             R10 3 1
       76 GETIMPORT                        R11 K1 [game]
       78 LOADK                            R13 K22 ["UGCValidateRenderMeshInsideModifiedArea"]
       79 LOADN                            R14 70
       80 NAMECALL                         R11 R11 K20 ["DefineFastInt"]
       82 CALL                             R11 3 1
       83 GETIMPORT                        R12 K1 [game]
       85 LOADK                            R14 K23 ["UGCValidateModifiedAreaPaddingModifier"]
       86 LOADK                            R15 K24 ["1.1"]
       87 NAMECALL                         R12 R12 K25 ["DefineFastString"]
       89 CALL                             R12 3 1
       90 FASTCALL1                        TONUMBER R12 ; [+3]
       91 MOVE                             R14 R12
       92 GETIMPORT                        R13 K27 [tonumber]
       94 CALL                             R13 1 1
       95 NEWTABLE                         R14 8 0
       97 NEWTABLE                         R15 2 0
       99 GETIMPORT                        R16 K31 [Enum.AssetType.LeftShoeAccessory]
      101 DUPTABLE                         R17 K34 [{"allowedParts", "mainParts"}]
      102 DUPTABLE                         R18 K39 [{["LeftFoot"] = True, ["LeftLowerLeg"] = True, ["LeftUpperLeg"] = True}]
      103 SETTABLEKS                       R18 R17 K32 ["allowedParts"]
      105 DUPTABLE                         R18 K40 [{["LeftFoot"] = True}]
      106 SETTABLEKS                       R18 R17 K33 ["mainParts"]
      108 SETTABLE                         R17 R15 R16
      109 GETIMPORT                        R16 K42 [Enum.AssetType.RightShoeAccessory]
      111 DUPTABLE                         R17 K34 [{"allowedParts", "mainParts"}]
      112 DUPTABLE                         R18 K46 [{["RightFoot"] = True, ["RightLowerLeg"] = True, ["RightUpperLeg"] = True}]
      113 SETTABLEKS                       R18 R17 K32 ["allowedParts"]
      115 DUPTABLE                         R18 K47 [{["RightFoot"] = True}]
      116 SETTABLEKS                       R18 R17 K33 ["mainParts"]
      118 SETTABLE                         R17 R15 R16
      119 NEWTABLE                         R16 0 1
      121 GETTABLEKS                       R17 R3 K48 ["UploadCategory"]
      123 GETTABLEKS                       R17 R17 K49 ["LAYERED_CLOTHING"]
      125 SETLIST                          R16 R17 1 [1]
      127 SETTABLEKS                       R16 R14 K50 ["categories"]
      129 NEWTABLE                         R16 0 3
      131 GETTABLEKS                       R17 R3 K51 ["SharedDataMember"]
      133 GETTABLEKS                       R17 R17 K52 ["innerCagesData"]
      135 GETTABLEKS                       R18 R3 K51 ["SharedDataMember"]
      137 GETTABLEKS                       R18 R18 K53 ["outerCagesData"]
      139 GETTABLEKS                       R19 R3 K51 ["SharedDataMember"]
      141 GETTABLEKS                       R19 R19 K54 ["renderMeshesData"]
      143 SETLIST                          R16 R17 3 [1]
      145 SETTABLEKS                       R16 R14 K55 ["requiredData"]
      147 NEWTABLE                         R16 0 0
      149 SETTABLEKS                       R16 R14 K56 ["conditionalData"]
      151 SETTABLEKS                       R8 R14 K57 ["fflag"]
      153 NEWTABLE                         R16 0 0
      155 SETTABLEKS                       R16 R14 K58 ["expectedFailures"]
      157 DUPCLOSURE                       R16 K59 [PROTO_0]
      158 CAPTURE                          VAL R5
      159 DUPCLOSURE                       R17 K60 [PROTO_1]
      160 CAPTURE                          VAL R5
      161 CAPTURE                          VAL R16
      162 DUPCLOSURE                       R18 K61 [PROTO_2]
      163 CAPTURE                          VAL R16
      164 DUPCLOSURE                       R19 K62 [PROTO_3]
      165 CAPTURE                          VAL R16
      166 DUPCLOSURE                       R20 K63 [PROTO_4]
      167 CAPTURE                          VAL R15
      168 CAPTURE                          VAL R17
      169 CAPTURE                          VAL R0
      170 CAPTURE                          VAL R9
      171 CAPTURE                          VAL R4
      172 CAPTURE                          VAL R7
      173 CAPTURE                          VAL R16
      174 CAPTURE                          VAL R10
      175 CAPTURE                          VAL R13
      176 CAPTURE                          VAL R6
      177 CAPTURE                          VAL R11
      178 SETTABLEKS                       R20 R14 K64 ["run"]
      180 RETURN                           R14 1
