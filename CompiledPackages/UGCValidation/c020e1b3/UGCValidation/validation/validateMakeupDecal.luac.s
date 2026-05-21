PROTO_0:
        0 GETIMPORT                        R2 K1 [tick]
        2 CALL                             R2 0 1
        3 GETTABLEKS                       R3 R1 K2 ["assetTypeEnum"]
        5 LOADK                            R6 K3 ["WrapTextureTransfer"]
        6 NAMECALL                         R4 R0 K4 ["FindFirstChildOfClass"]
        8 CALL                             R4 2 1
        9 JUMPIFNOTEQKNIL                  R4 ; [+2]
       11 LOADB                            R6 0 +1
       12 LOADB                            R6 1
       13 GETIMPORT                        R7 K7 [string.format]
       15 LOADK                            R8 K8 ["WrapTextureTransfer child not found for %s"]
       16 GETTABLEKS                       R9 R0 K9 ["Name"]
       18 CALL                             R7 2 -1
       19 FASTCALL                         ASSERT ; [+2]
       20 GETIMPORT                        R5 K11 [assert]
       22 CALL                             R5 -1 0
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R5 R5 K12 ["new"]
       26 CALL                             R5 0 1
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R6 R6 K13 ["parse"]
       30 MOVE                             R7 R0
       31 GETUPVAL                         R8 2
       32 GETTABLEKS                       R8 R8 K14 ["TEXTURE_CONTENT_ID_FIELDS"]
       34 MOVE                             R9 R1
       35 CALL                             R6 3 1
       36 LOADNIL                          R7
       37 MOVE                             R8 R6
       38 LOADNIL                          R9
       39 LOADNIL                          R10
       40 FORGPREP                         R8
       41 DUPTABLE                         R13 K18 [{"fullName", "fieldName", "contentId"}]
       42 GETTABLEKS                       R18 R12 K19 ["instance"]
       44 NAMECALL                         R18 R18 K20 ["GetFullName"]
       46 CALL                             R18 1 1
       47 MOVE                             R15 R18
       48 LOADK                            R16 K21 ["."]
       49 GETTABLEKS                       R17 R12 K16 ["fieldName"]
       51 CONCAT                           R14 R15 R17
       52 SETTABLEKS                       R14 R13 K15 ["fullName"]
       54 GETTABLEKS                       R14 R12 K16 ["fieldName"]
       56 SETTABLEKS                       R14 R13 K16 ["fieldName"]
       58 GETTABLEKS                       R15 R12 K19 ["instance"]
       60 GETTABLEKS                       R16 R12 K16 ["fieldName"]
       62 GETTABLE                         R14 R15 R16
       63 SETTABLEKS                       R14 R13 K17 ["contentId"]
       65 GETUPVAL                         R14 3
       66 GETTABLEKS                       R15 R12 K19 ["instance"]
       68 GETTABLEKS                       R16 R12 K16 ["fieldName"]
       70 MOVE                             R17 R1
       71 CALL                             R14 3 2
       72 JUMPIF                           R14 ; [+27]
       73 GETUPVAL                         R16 4
       74 GETTABLEKS                       R16 R16 K22 ["reportFailure"]
       76 GETUPVAL                         R17 4
       77 GETTABLEKS                       R17 R17 K23 ["ErrorType"]
       79 GETTABLEKS                       R17 R17 K24 ["validateMakeupDecal_FailedToLoadTexture"]
       81 LOADNIL                          R18
       82 MOVE                             R19 R1
       83 CALL                             R16 3 0
       84 LOADB                            R18 0
       85 NEWTABLE                         R19 0 1
       87 GETIMPORT                        R20 K7 [string.format]
       89 LOADK                            R21 K25 ["Failed to load %s for Decal %s. Make sure TextureContent exists and is valid and try again."]
       90 GETTABLEKS                       R22 R13 K16 ["fieldName"]
       92 GETTABLEKS                       R23 R0 K9 ["Name"]
       94 CALL                             R20 3 -1
       95 SETLIST                          R19 R20 -1 [1]
       97 NAMECALL                         R16 R5 K26 ["updateReasons"]
       99 CALL                             R16 3 0
      100 SETTABLEKS                       R15 R13 K27 ["editableImage"]
      102 GETTABLEKS                       R16 R12 K16 ["fieldName"]
      104 JUMPIFNOTEQKS                    R16 K28 ["ColorMap"] ; [+2]
      106 MOVE                             R7 R15
      107 LOADNIL                          R16
      108 GETUPVAL                         R17 5
      109 CALL                             R17 0 1
      110 JUMPIFNOT                        R17 ; [+11]
      111 JUMPIFNOT                        R3 ; [+10]
      112 GETUPVAL                         R17 6
      113 GETTABLEKS                       R17 R17 K29 ["getTextureLimit"]
      115 MOVE                             R18 R3
      116 GETTABLEKS                       R19 R12 K19 ["instance"]
      118 GETTABLEKS                       R20 R12 K16 ["fieldName"]
      120 CALL                             R17 3 1
      121 MOVE                             R16 R17
      122 GETUPVAL                         R19 7
      123 MOVE                             R20 R13
      124 LOADNIL                          R21
      125 MOVE                             R22 R1
      126 MOVE                             R23 R16
      127 CALL                             R19 4 -1
      128 NAMECALL                         R17 R5 K26 ["updateReasons"]
      130 CALL                             R17 -1 0
      131 FORGLOOP                         R8 2 ; [-91]
      133 JUMPIF                           R7 ; [+23]
      134 GETUPVAL                         R8 4
      135 GETTABLEKS                       R8 R8 K22 ["reportFailure"]
      137 GETUPVAL                         R9 4
      138 GETTABLEKS                       R9 R9 K23 ["ErrorType"]
      140 GETTABLEKS                       R9 R9 K30 ["validateMakeupDecal_NoColorMap"]
      142 LOADNIL                          R10
      143 MOVE                             R11 R1
      144 CALL                             R8 3 0
      145 LOADB                            R8 0
      146 NEWTABLE                         R9 0 1
      148 GETIMPORT                        R10 K7 [string.format]
      150 LOADK                            R11 K31 ["No ColorMap found for Decal %s. Makeup Decals are required to have a valid ColorMap."]
      151 GETTABLEKS                       R12 R0 K9 ["Name"]
      153 CALL                             R10 2 -1
      154 SETLIST                          R9 R10 -1 [1]
      156 RETURN                           R8 2
      157 GETUPVAL                         R10 8
      158 MOVE                             R11 R0
      159 MOVE                             R12 R7
      160 MOVE                             R13 R4
      161 GETUPVAL                         R15 2
      162 GETTABLEKS                       R15 R15 K32 ["MAKEUP_INFO"]
      164 GETTABLEKS                       R15 R15 K33 ["AssetUVBounds"]
      166 GETTABLE                         R14 R15 R3
      167 MOVE                             R15 R1
      168 CALL                             R10 5 -1
      169 NAMECALL                         R8 R5 K26 ["updateReasons"]
      171 CALL                             R8 -1 0
      172 GETUPVAL                         R8 4
      173 GETTABLEKS                       R8 R8 K34 ["recordScriptTime"]
      175 GETIMPORT                        R9 K36 [script]
      177 GETTABLEKS                       R9 R9 K9 ["Name"]
      179 MOVE                             R10 R2
      180 MOVE                             R11 R1
      181 CALL                             R8 3 0
      182 NAMECALL                         R8 R5 K37 ["getFinalResults"]
      184 CALL                             R8 1 -1
      185 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Analytics"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["Constants"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K4 [require]
       19 GETTABLEKS                       R4 R0 K7 ["ConstantsInterface"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K4 [require]
       24 GETTABLEKS                       R5 R0 K8 ["util"]
       26 GETTABLEKS                       R5 R5 K9 ["Types"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K4 [require]
       31 GETTABLEKS                       R6 R0 K8 ["util"]
       33 GETTABLEKS                       R6 R6 K10 ["FailureReasonsAccumulator"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K4 [require]
       38 GETTABLEKS                       R7 R0 K8 ["util"]
       40 GETTABLEKS                       R7 R7 K11 ["getEditableImageFromContext"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K4 [require]
       45 GETTABLEKS                       R8 R0 K8 ["util"]
       47 GETTABLEKS                       R8 R8 K12 ["ParseContentIds"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K4 [require]
       52 GETTABLEKS                       R9 R0 K13 ["validation"]
       54 GETTABLEKS                       R9 R9 K14 ["validateMakeupDecalUVZones"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K4 [require]
       59 GETTABLEKS                       R10 R0 K15 ["flags"]
       61 GETTABLEKS                       R10 R10 K16 ["getFFlagUGCValidateDecalTextureLimits"]
       63 CALL                             R9 1 1
       64 GETIMPORT                        R10 K4 [require]
       66 GETTABLEKS                       R11 R0 K13 ["validation"]
       68 GETTABLEKS                       R11 R11 K17 ["validateTextureSize"]
       70 CALL                             R10 1 1
       71 DUPCLOSURE                       R11 K18 [PROTO_0]
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R10
       80 CAPTURE                          VAL R8
       81 RETURN                           R11 1
