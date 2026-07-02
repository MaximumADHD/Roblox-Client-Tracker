PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetEditableImageSize"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R6 K1 [pcall]
        2 NEWCLOSURE                       R7 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R1
        5 CALL                             R6 1 2
        6 JUMPIF                           R6 ; [+21]
        7 JUMPIFNOT                        R5 ; [+8]
        8 GETIMPORT                        R10 K4 [string.format]
       10 LOADK                            R11 K5 ["Failed to load texture data for '%s'. Make sure the texture exists and try again."]
       11 MOVE                             R12 R2
       12 CALL                             R10 2 -1
       13 NAMECALL                         R8 R0 K6 ["forceError"]
       15 CALL                             R8 -1 0
       16 GETUPVAL                         R10 1
       17 GETTABLEKS                       R10 R10 K7 ["Keys"]
       19 GETTABLEKS                       R10 R10 K8 ["MakeupDecal_FailedToLoadTextureData"]
       21 DUPTABLE                         R11 K10 [{"fullName"}]
       22 SETTABLEKS                       R2 R11 K9 ["fullName"]
       24 NAMECALL                         R8 R0 K11 ["fail"]
       26 CALL                             R8 3 0
       27 RETURN                           R0 0
       28 GETTABLEKS                       R8 R7 K12 ["X"]
       30 JUMPIFLT                         R4 R8 ; [+5]
       32 GETTABLEKS                       R8 R7 K13 ["Y"]
       34 JUMPIFNOTLT                      R4 R8 ; [+37]
       36 GETUPVAL                         R10 1
       37 GETTABLEKS                       R10 R10 K7 ["Keys"]
       39 GETTABLEKS                       R10 R10 K14 ["MakeupDecal_TextureTooBig"]
       41 DUPTABLE                         R11 K19 [{"sizeX", "sizeY", "fullName", "maxSize", "fieldName"}]
       42 GETTABLEKS                       R13 R7 K12 ["X"]
       44 FASTCALL1                        TOSTRING R13 ; [+2]
       45 GETIMPORT                        R12 K21 [tostring]
       47 CALL                             R12 1 1
       48 SETTABLEKS                       R12 R11 K15 ["sizeX"]
       50 GETTABLEKS                       R13 R7 K13 ["Y"]
       52 FASTCALL1                        TOSTRING R13 ; [+2]
       53 GETIMPORT                        R12 K21 [tostring]
       55 CALL                             R12 1 1
       56 SETTABLEKS                       R12 R11 K16 ["sizeY"]
       58 SETTABLEKS                       R2 R11 K9 ["fullName"]
       60 FASTCALL1                        TOSTRING R4 ; [+3]
       61 MOVE                             R13 R4
       62 GETIMPORT                        R12 K21 [tostring]
       64 CALL                             R12 1 1
       65 SETTABLEKS                       R12 R11 K17 ["maxSize"]
       67 SETTABLEKS                       R3 R11 K18 ["fieldName"]
       69 NAMECALL                         R8 R0 K11 ["fail"]
       71 CALL                             R8 3 0
       72 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R12 R4 K2 ["X"]
        2 GETTABLEKS                       R13 R3 K2 ["X"]
        4 SUB                              R11 R12 R13
        5 GETTABLEKS                       R13 R4 K3 ["Y"]
        7 GETTABLEKS                       R14 R3 K3 ["Y"]
        9 SUB                              R12 R13 R14
       10 MUL                              R10 R11 R12
       11 GETUPVAL                         R11 0
       12 MUL                              R9 R10 R11
       13 DIVK                             R8 R9 K1 [10000]
       14 MULK                             R7 R8 K0 [255]
       15 LOADN                            R8 0
       16 GETIMPORT                        R11 K6 [Vector2.new]
       18 LOADN                            R12 0
       19 LOADN                            R13 0
       20 CALL                             R11 2 1
       21 GETTABLEKS                       R12 R2 K7 ["Size"]
       23 NAMECALL                         R9 R2 K8 ["ReadPixelsBuffer"]
       25 CALL                             R9 3 1
       26 LOADN                            R10 0
       27 GETTABLEKS                       R12 R2 K7 ["Size"]
       29 GETTABLEKS                       R12 R12 K3 ["Y"]
       31 SUBK                             R11 R12 K9 [1]
       32 LOADN                            R14 0
       33 GETIMPORT                        R15 K12 [buffer.len]
       35 MOVE                             R16 R9
       36 CALL                             R15 1 1
       37 SUBK                             R12 R15 K9 [1]
       38 LOADN                            R13 4
       39 FORNPREP                         R12
       40 GETTABLEKS                       R15 R2 K7 ["Size"]
       42 GETTABLEKS                       R15 R15 K2 ["X"]
       44 JUMPIFNOTEQ                      R10 R15 ; [+3]
       46 LOADN                            R10 0
       47 SUBK                             R11 R11 K9 [1]
       48 ADDK                             R17 R14 K13 [3]
       49 FASTCALL2                        BUFFER_READU8 R9 R17 ; [+4]
       51 MOVE                             R16 R9
       52 GETIMPORT                        R15 K15 [buffer.readu8]
       54 CALL                             R15 2 1
       55 LOADN                            R16 0
       56 JUMPIFNOTLT                      R16 R15 ; [+18]
       58 GETTABLEKS                       R16 R3 K2 ["X"]
       60 JUMPIFLT                         R10 R16 ; [+13]
       62 GETTABLEKS                       R16 R3 K3 ["Y"]
       64 JUMPIFLT                         R11 R16 ; [+9]
       66 GETTABLEKS                       R16 R4 K2 ["X"]
       68 JUMPIFLT                         R16 R10 ; [+5]
       70 GETTABLEKS                       R16 R4 K3 ["Y"]
       72 JUMPIFNOTLT                      R16 R11 ; [+2]
       74 ADD                              R8 R8 R15
       75 ADDK                             R10 R10 K9 [1]
       76 FORNLOOP                         R12
       77 JUMPIFNOTLT                      R7 R8 ; [+32]
       79 GETUPVAL                         R14 1
       80 GETTABLEKS                       R14 R14 K16 ["Keys"]
       82 GETTABLEKS                       R14 R14 K17 ["MakeupDecal_UVZoneIncludeViolation"]
       84 DUPTABLE                         R15 K22 [{"instanceName", "minBound", "maxBound", "assetTypeName"}]
       85 GETTABLEKS                       R16 R1 K23 ["Name"]
       87 SETTABLEKS                       R16 R15 K18 ["instanceName"]
       89 GETTABLEKS                       R17 R5 K24 ["MinBound"]
       91 FASTCALL1                        TOSTRING R17 ; [+2]
       92 GETIMPORT                        R16 K26 [tostring]
       94 CALL                             R16 1 1
       95 SETTABLEKS                       R16 R15 K19 ["minBound"]
       97 GETTABLEKS                       R17 R5 K27 ["MaxBound"]
       99 FASTCALL1                        TOSTRING R17 ; [+2]
      100 GETIMPORT                        R16 K26 [tostring]
      102 CALL                             R16 1 1
      103 SETTABLEKS                       R16 R15 K20 ["maxBound"]
      105 SETTABLEKS                       R6 R15 K21 ["assetTypeName"]
      107 NAMECALL                         R12 R0 K28 ["fail"]
      109 CALL                             R12 3 0
      110 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R12 R4 K2 ["X"]
        2 GETTABLEKS                       R13 R3 K2 ["X"]
        4 SUB                              R11 R12 R13
        5 GETTABLEKS                       R13 R4 K3 ["Y"]
        7 GETTABLEKS                       R14 R3 K3 ["Y"]
        9 SUB                              R12 R13 R14
       10 MUL                              R10 R11 R12
       11 GETUPVAL                         R11 0
       12 MUL                              R9 R10 R11
       13 DIVK                             R8 R9 K1 [10000]
       14 MULK                             R7 R8 K0 [255]
       15 LOADN                            R8 0
       16 GETIMPORT                        R11 K6 [Vector2.new]
       18 LOADN                            R12 0
       19 LOADN                            R13 0
       20 CALL                             R11 2 1
       21 GETTABLEKS                       R12 R2 K7 ["Size"]
       23 NAMECALL                         R9 R2 K8 ["ReadPixelsBuffer"]
       25 CALL                             R9 3 1
       26 LOADN                            R10 0
       27 GETTABLEKS                       R12 R2 K7 ["Size"]
       29 GETTABLEKS                       R12 R12 K3 ["Y"]
       31 SUBK                             R11 R12 K9 [1]
       32 LOADN                            R14 0
       33 GETIMPORT                        R15 K12 [buffer.len]
       35 MOVE                             R16 R9
       36 CALL                             R15 1 1
       37 SUBK                             R12 R15 K9 [1]
       38 LOADN                            R13 4
       39 FORNPREP                         R12
       40 GETTABLEKS                       R15 R2 K7 ["Size"]
       42 GETTABLEKS                       R15 R15 K2 ["X"]
       44 JUMPIFNOTEQ                      R10 R15 ; [+3]
       46 LOADN                            R10 0
       47 SUBK                             R11 R11 K9 [1]
       48 ADDK                             R17 R14 K13 [3]
       49 FASTCALL2                        BUFFER_READU8 R9 R17 ; [+4]
       51 MOVE                             R16 R9
       52 GETIMPORT                        R15 K15 [buffer.readu8]
       54 CALL                             R15 2 1
       55 LOADN                            R16 0
       56 JUMPIFNOTLT                      R16 R15 ; [+18]
       58 GETTABLEKS                       R16 R3 K2 ["X"]
       60 JUMPIFNOTLT                      R16 R10 ; [+14]
       62 GETTABLEKS                       R16 R3 K3 ["Y"]
       64 JUMPIFNOTLT                      R16 R11 ; [+10]
       66 GETTABLEKS                       R16 R4 K2 ["X"]
       68 JUMPIFNOTLT                      R10 R16 ; [+6]
       70 GETTABLEKS                       R16 R4 K3 ["Y"]
       72 JUMPIFNOTLT                      R11 R16 ; [+2]
       74 ADD                              R8 R8 R15
       75 ADDK                             R10 R10 K9 [1]
       76 FORNLOOP                         R12
       77 JUMPIFNOTLT                      R7 R8 ; [+32]
       79 GETUPVAL                         R14 1
       80 GETTABLEKS                       R14 R14 K16 ["Keys"]
       82 GETTABLEKS                       R14 R14 K17 ["MakeupDecal_UVZoneExcludeViolation"]
       84 DUPTABLE                         R15 K22 [{"instanceName", "minBound", "maxBound", "assetTypeName"}]
       85 GETTABLEKS                       R16 R1 K23 ["Name"]
       87 SETTABLEKS                       R16 R15 K18 ["instanceName"]
       89 GETTABLEKS                       R17 R5 K24 ["MinBound"]
       91 FASTCALL1                        TOSTRING R17 ; [+2]
       92 GETIMPORT                        R16 K26 [tostring]
       94 CALL                             R16 1 1
       95 SETTABLEKS                       R16 R15 K19 ["minBound"]
       97 GETTABLEKS                       R17 R5 K27 ["MaxBound"]
       99 FASTCALL1                        TOSTRING R17 ; [+2]
      100 GETIMPORT                        R16 K26 [tostring]
      102 CALL                             R16 1 1
      103 SETTABLEKS                       R16 R15 K20 ["maxBound"]
      105 SETTABLEKS                       R6 R15 K21 ["assetTypeName"]
      107 NAMECALL                         R12 R0 K28 ["fail"]
      109 CALL                             R12 3 0
      110 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R7 R3 K0 ["UVMaxBound"]
        2 GETTABLEKS                       R8 R3 K1 ["UVMinBound"]
        4 SUB                              R6 R7 R8
        5 MOVE                             R7 R4
        6 LOADNIL                          R8
        7 LOADNIL                          R9
        8 FORGPREP                         R7
        9 GETTABLEKS                       R14 R11 K2 ["MinBound"]
       11 GETTABLEKS                       R15 R3 K1 ["UVMinBound"]
       13 SUB                              R13 R14 R15
       14 DIV                              R12 R13 R6
       15 GETTABLEKS                       R15 R11 K3 ["MaxBound"]
       17 GETTABLEKS                       R16 R3 K1 ["UVMinBound"]
       19 SUB                              R14 R15 R16
       20 DIV                              R13 R14 R6
       21 GETTABLEKS                       R15 R2 K4 ["Size"]
       23 MUL                              R14 R12 R15
       24 GETTABLEKS                       R16 R2 K4 ["Size"]
       26 MUL                              R15 R13 R16
       27 GETTABLEKS                       R16 R11 K5 ["isIncludeBound"]
       29 JUMPIFNOT                        R16 ; [+10]
       30 GETUPVAL                         R16 0
       31 MOVE                             R17 R0
       32 MOVE                             R18 R1
       33 MOVE                             R19 R2
       34 MOVE                             R20 R14
       35 MOVE                             R21 R15
       36 MOVE                             R22 R11
       37 MOVE                             R23 R5
       38 CALL                             R16 7 0
       39 JUMP                             ; [+9]
       40 GETUPVAL                         R16 1
       41 MOVE                             R17 R0
       42 MOVE                             R18 R1
       43 MOVE                             R19 R2
       44 MOVE                             R20 R14
       45 MOVE                             R21 R15
       46 MOVE                             R22 R11
       47 MOVE                             R23 R5
       48 CALL                             R16 7 0
       49 FORGLOOP                         R7 2 ; [-41]
       51 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R1 K0 ["rootInstance"]
        2 GETTABLEKS                       R3 R1 K1 ["uploadEnum"]
        4 GETTABLEKS                       R3 R3 K2 ["assetType"]
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R7 R1 K3 ["consumerConfig"]
        9 GETTABLEKS                       R7 R7 K4 ["source"]
       11 GETTABLE                         R5 R6 R7
       12 JUMPIFEQKB                       R5 TRUE ; [+2]
       14 LOADB                            R4 0 +1
       15 LOADB                            R4 1
       16 LOADK                            R7 K5 ["WrapTextureTransfer"]
       17 NAMECALL                         R5 R2 K6 ["FindFirstChildOfClass"]
       19 CALL                             R5 2 1
       20 JUMPIFNOTEQKNIL                  R5 ; [+10]
       22 GETIMPORT                        R6 K8 [error]
       24 GETIMPORT                        R7 K11 [string.format]
       26 LOADK                            R8 K12 ["WrapTextureTransfer child not found for %s"]
       27 GETTABLEKS                       R9 R2 K13 ["Name"]
       29 CALL                             R7 2 -1
       30 CALL                             R6 -1 0
       31 MOVE                             R8 R2
       32 NAMECALL                         R6 R0 K14 ["setReportingInstance"]
       34 CALL                             R6 2 0
       35 GETTABLEKS                       R6 R1 K3 ["consumerConfig"]
       37 GETTABLEKS                       R6 R6 K15 ["preloadedEditableImages"]
       39 GETUPVAL                         R9 1
       40 GETTABLEKS                       R10 R1 K3 ["consumerConfig"]
       42 GETTABLEKS                       R10 R10 K4 ["source"]
       44 GETTABLE                         R8 R9 R10
       45 JUMPIFEQKB                       R8 TRUE ; [+2]
       47 LOADB                            R7 0 +1
       48 LOADB                            R7 1
       49 GETUPVAL                         R9 2
       50 GETTABLEKS                       R9 R9 K17 ["TEXTURE_CONTENT_ID_FIELDS"]
       52 GETTABLEKS                       R8 R9 K16 ["Decal"]
       54 JUMPIF                           R8 ; [+4]
       55 GETIMPORT                        R9 K8 [error]
       57 LOADK                            R10 K18 ["No texture content ID fields defined for Decal class"]
       58 CALL                             R9 1 0
       59 LOADNIL                          R9
       60 MOVE                             R10 R8
       61 LOADNIL                          R11
       62 LOADNIL                          R12
       63 FORGPREP                         R10
       64 MOVE                             R17 R14
       65 LOADK                            R18 K19 ["Content"]
       66 CONCAT                           R16 R17 R18
       67 GETTABLE                         R15 R2 R16
       68 JUMPIFNOT                        R15 ; [+8]
       69 GETTABLEKS                       R16 R15 K20 ["Uri"]
       71 JUMPIFEQKNIL                     R16 ; [+5]
       73 GETTABLEKS                       R16 R15 K20 ["Uri"]
       75 JUMPIFNOTEQKS                    R16 K21 [""] ; [+6]
       77 JUMPIFNOT                        R7 ; [+79]
       78 JUMPIFNOT                        R15 ; [+78]
       79 GETTABLEKS                       R16 R15 K22 ["Object"]
       81 JUMPIFNOT                        R16 ; [+75]
       82 GETUPVAL                         R16 3
       83 GETTABLEKS                       R16 R16 K23 ["getEditableInstanceInfo"]
       85 MOVE                             R17 R15
       86 MOVE                             R18 R6
       87 LOADK                            R19 K24 ["EditableImage"]
       88 MOVE                             R20 R7
       89 CALL                             R16 4 2
       90 JUMPIFNOT                        R16 ; [+4]
       91 JUMPIFNOT                        R17 ; [+3]
       92 GETTABLEKS                       R18 R17 K25 ["instance"]
       94 JUMPIF                           R18 ; [+27]
       95 JUMPIFNOT                        R4 ; [+10]
       96 GETIMPORT                        R20 K11 [string.format]
       98 LOADK                            R21 K26 ["Failed to load %s for Decal %s"]
       99 MOVE                             R22 R14
      100 GETTABLEKS                       R23 R2 K13 ["Name"]
      102 CALL                             R20 3 -1
      103 NAMECALL                         R18 R0 K27 ["forceError"]
      105 CALL                             R18 -1 0
      106 GETUPVAL                         R20 4
      107 GETTABLEKS                       R20 R20 K28 ["Keys"]
      109 GETTABLEKS                       R20 R20 K29 ["MakeupDecal_FailedToLoadTexture"]
      111 DUPTABLE                         R21 K32 [{"fieldName", "instanceName"}]
      112 SETTABLEKS                       R14 R21 K30 ["fieldName"]
      114 GETTABLEKS                       R22 R2 K13 ["Name"]
      116 SETTABLEKS                       R22 R21 K31 ["instanceName"]
      118 NAMECALL                         R18 R0 K33 ["fail"]
      120 CALL                             R18 3 0
      121 JUMP                             ; [+35]
      122 GETTABLEKS                       R18 R17 K25 ["instance"]
      124 JUMPIFNOTEQKS                    R14 K34 ["ColorMap"] ; [+2]
      126 MOVE                             R9 R18
      127 GETUPVAL                         R19 2
      128 GETTABLEKS                       R19 R19 K35 ["MAX_TEXTURE_SIZE"]
      130 GETUPVAL                         R20 5
      131 CALL                             R20 0 1
      132 JUMPIFNOT                        R20 ; [+9]
      133 JUMPIFNOT                        R3 ; [+8]
      134 GETUPVAL                         R20 6
      135 GETTABLEKS                       R20 R20 K36 ["getTextureLimit"]
      137 MOVE                             R21 R3
      138 MOVE                             R22 R2
      139 MOVE                             R23 R14
      140 CALL                             R20 3 1
      141 MOVE                             R19 R20
      142 NAMECALL                         R24 R2 K37 ["GetFullName"]
      144 CALL                             R24 1 1
      145 MOVE                             R21 R24
      146 LOADK                            R22 K38 ["."]
      147 MOVE                             R23 R14
      148 CONCAT                           R20 R21 R23
      149 GETUPVAL                         R21 7
      150 MOVE                             R22 R0
      151 MOVE                             R23 R18
      152 MOVE                             R24 R20
      153 MOVE                             R25 R14
      154 MOVE                             R26 R19
      155 MOVE                             R27 R4
      156 CALL                             R21 6 0
      157 FORGLOOP                         R10 2 ; [-94]
      159 JUMPIF                           R9 ; [+14]
      160 GETUPVAL                         R12 4
      161 GETTABLEKS                       R12 R12 K28 ["Keys"]
      163 GETTABLEKS                       R12 R12 K39 ["MakeupDecal_NoColorMap"]
      165 DUPTABLE                         R13 K40 [{"instanceName"}]
      166 GETTABLEKS                       R14 R2 K13 ["Name"]
      168 SETTABLEKS                       R14 R13 K31 ["instanceName"]
      170 NAMECALL                         R10 R0 K33 ["fail"]
      172 CALL                             R10 3 0
      173 RETURN                           R0 0
      174 GETUPVAL                         R11 2
      175 GETTABLEKS                       R11 R11 K41 ["MAKEUP_INFO"]
      177 GETTABLEKS                       R11 R11 K42 ["AssetUVBounds"]
      179 GETTABLE                         R10 R11 R3
      180 JUMPIFNOT                        R10 ; [+9]
      181 GETUPVAL                         R11 8
      182 MOVE                             R12 R0
      183 MOVE                             R13 R2
      184 MOVE                             R14 R9
      185 MOVE                             R15 R5
      186 MOVE                             R16 R10
      187 GETTABLEKS                       R17 R3 K13 ["Name"]
      189 CALL                             R11 6 0
      190 RETURN                           R0 0

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
       17 GETTABLEKS                       R3 R1 K9 ["Constants"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K8 [require]
       22 GETTABLEKS                       R4 R1 K10 ["ConstantsInterface"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K8 [require]
       27 GETTABLEKS                       R5 R1 K11 ["util"]
       29 GETTABLEKS                       R5 R5 K12 ["Types"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K8 [require]
       34 GETTABLEKS                       R6 R1 K13 ["validationSystem"]
       36 GETTABLEKS                       R6 R6 K14 ["ValidationEnums"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K8 [require]
       41 GETTABLEKS                       R7 R1 K13 ["validationSystem"]
       43 GETTABLEKS                       R7 R7 K15 ["ErrorSourceStrings"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K8 [require]
       48 GETTABLEKS                       R8 R1 K11 ["util"]
       50 GETTABLEKS                       R8 R8 K16 ["createEditableInstancesForContext"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K8 [require]
       55 GETTABLEKS                       R9 R1 K17 ["flags"]
       57 GETTABLEKS                       R9 R9 K18 ["getFFlagUGCValidateMigrateWrapAndMakeup"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K8 [require]
       62 GETTABLEKS                       R10 R1 K17 ["flags"]
       64 GETTABLEKS                       R10 R10 K19 ["getFFlagUGCValidateDecalTextureLimits"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K1 [game]
       69 LOADK                            R12 K20 ["ValidateMakeupZoneIncludeToleranceHundredthsPercent"]
       70 LOADN                            R13 100
       71 NAMECALL                         R10 R10 K21 ["DefineFastInt"]
       73 CALL                             R10 3 1
       74 GETIMPORT                        R11 K1 [game]
       76 LOADK                            R13 K22 ["ValidateMakeupZoneExcludeHundredthsPercent"]
       77 LOADN                            R14 200
       78 NAMECALL                         R11 R11 K21 ["DefineFastInt"]
       80 CALL                             R11 3 1
       81 DUPTABLE                         R12 K28 [{["Publish"] = True, ["Backend"] = True, ["Internal"] = True, ["InExpServer"] = True}]
       82 DUPTABLE                         R13 K30 [{["InExpServer"] = True, ["InExpClient"] = True}]
       83 NEWTABLE                         R14 8 0
       85 SETTABLEKS                       R8 R14 K31 ["fflag"]
       87 NEWTABLE                         R15 0 1
       89 GETTABLEKS                       R16 R5 K32 ["UploadCategory"]
       91 GETTABLEKS                       R16 R16 K33 ["MAKEUP"]
       93 SETLIST                          R15 R16 1 [1]
       95 SETTABLEKS                       R15 R14 K34 ["categories"]
       97 NEWTABLE                         R15 0 3
       99 GETTABLEKS                       R16 R5 K35 ["SharedDataMember"]
      101 GETTABLEKS                       R16 R16 K36 ["rootInstance"]
      103 GETTABLEKS                       R17 R5 K35 ["SharedDataMember"]
      105 GETTABLEKS                       R17 R17 K37 ["consumerConfig"]
      107 GETTABLEKS                       R18 R5 K35 ["SharedDataMember"]
      109 GETTABLEKS                       R18 R18 K38 ["uploadEnum"]
      111 SETLIST                          R15 R16 3 [1]
      113 SETTABLEKS                       R15 R14 K39 ["requiredData"]
      115 NEWTABLE                         R15 0 0
      117 SETTABLEKS                       R15 R14 K40 ["expectedFailures"]
      119 DUPCLOSURE                       R15 K41 [PROTO_1]
      120 CAPTURE                          VAL R0
      121 CAPTURE                          VAL R6
      122 DUPCLOSURE                       R16 K42 [PROTO_2]
      123 CAPTURE                          VAL R10
      124 CAPTURE                          VAL R6
      125 DUPCLOSURE                       R17 K43 [PROTO_3]
      126 CAPTURE                          VAL R11
      127 CAPTURE                          VAL R6
      128 DUPCLOSURE                       R18 K44 [PROTO_4]
      129 CAPTURE                          VAL R16
      130 CAPTURE                          VAL R17
      131 DUPCLOSURE                       R19 K45 [PROTO_5]
      132 CAPTURE                          VAL R12
      133 CAPTURE                          VAL R13
      134 CAPTURE                          VAL R2
      135 CAPTURE                          VAL R7
      136 CAPTURE                          VAL R6
      137 CAPTURE                          VAL R9
      138 CAPTURE                          VAL R3
      139 CAPTURE                          VAL R15
      140 CAPTURE                          VAL R18
      141 SETTABLEKS                       R19 R14 K46 ["run"]
      143 RETURN                           R14 1
