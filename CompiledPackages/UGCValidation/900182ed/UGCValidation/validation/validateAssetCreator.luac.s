PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 1
        4 LENGTH                           R2 R1
        5 JUMPIFNOTEQKN                    R2 K0 [0] ; [+2]
        7 RETURN                           R0 1
        8 GETIMPORT                        R2 K3 [string.gmatch]
       10 MOVE                             R3 R1
       11 LOADK                            R4 K4 ["([^,%s]+)"]
       12 CALL                             R2 2 3
       13 FORGPREP                         R2
       14 LOADB                            R7 1
       15 SETTABLE                         R7 R0 R5
       16 FORGLOOP                         R2 1 ; [-3]
       18 RETURN                           R0 1

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+14]
        1 GETTABLEKS                       R2 R1 K0 ["StatusCode"]
        3 JUMPIFNOTEQKN                    R2 K1 [200] ; [+11]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R4 R1 K2 ["Body"]
        8 NAMECALL                         R2 R2 K3 ["JSONDecode"]
       10 CALL                             R2 2 1
       11 GETUPVAL                         R3 1
       12 MOVE                             R4 R2
       13 CALL                             R3 1 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R2 2
       16 CALL                             R2 0 0
       17 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R4 K3 [{"assetIds", "restrictedEntities", "universeId"}]
        2 GETUPVAL                         R5 1
        3 SETTABLEKS                       R5 R4 K0 ["assetIds"]
        5 GETUPVAL                         R5 2
        6 SETTABLEKS                       R5 R4 K1 ["restrictedEntities"]
        8 GETUPVAL                         R5 3
        9 SETTABLEKS                       R5 R4 K2 ["universeId"]
       11 NAMECALL                         R2 R2 K4 ["JSONEncode"]
       13 CALL                             R2 2 1
       14 GETUPVAL                         R3 0
       15 DUPTABLE                         R5 K9 [{"Url", "Method", "Body", "Headers"}]
       16 GETUPVAL                         R6 4
       17 SETTABLEKS                       R6 R5 K5 ["Url"]
       19 LOADK                            R6 K10 ["POST"]
       20 SETTABLEKS                       R6 R5 K6 ["Method"]
       22 SETTABLEKS                       R2 R5 K7 ["Body"]
       24 NEWTABLE                         R6 2 0
       26 GETUPVAL                         R8 5
       27 GETTABLEKS                       R7 R8 K11 ["ExperienceAuthHeaderKey"]
       29 GETUPVAL                         R8 6
       30 SETTABLE                         R8 R6 R7
       31 GETUPVAL                         R8 5
       32 GETTABLEKS                       R7 R8 K12 ["ContentType"]
       34 GETUPVAL                         R9 5
       35 GETTABLEKS                       R8 R9 K13 ["ApplicationJson"]
       37 SETTABLE                         R8 R6 R7
       38 SETTABLEKS                       R6 R5 K8 ["Headers"]
       40 NAMECALL                         R3 R3 K14 ["RequestInternal"]
       42 CALL                             R3 2 1
       43 NEWCLOSURE                       R6 P0
       44 CAPTURE                          UPVAL U0
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R1
       47 NAMECALL                         R4 R3 K15 ["Start"]
       49 CALL                             R4 2 0
       50 RETURN                           R0 0

PROTO_3:
        0 LENGTH                           R5 R1
        1 JUMPIFNOTEQKN                    R5 K0 [0] ; [+6]
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R5 R6 K1 ["resolve"]
        6 CALL                             R5 0 -1
        7 RETURN                           R5 -1
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K2 ["new"]
       11 NEWCLOSURE                       R6 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R4
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          VAL R3
       19 CALL                             R5 1 -1
       20 RETURN                           R5 -1

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["isServer"]
        2 GETTABLEKS                       R4 R1 K1 ["restrictedUserIds"]
        4 JUMPIFNOT                        R4 ; [+3]
        5 GETTABLEKS                       R3 R1 K1 ["restrictedUserIds"]
        7 JUMP                             ; [+2]
        8 NEWTABLE                         R3 0 0
       10 GETTABLEKS                       R4 R1 K2 ["token"]
       12 GETTABLEKS                       R5 R1 K3 ["universeId"]
       14 GETUPVAL                         R7 0
       15 JUMPIFNOT                        R2 ; [+2]
       16 LOADK                            R8 K4 ["packages-api/v1/rcc/canPublish"]
       17 JUMP                             ; [+1]
       18 LOADK                            R8 K5 ["packages-api/v1/canPublish"]
       19 CONCAT                           R6 R7 R8
       20 DUPTABLE                         R7 K8 [{"User", "Group"}]
       21 NEWTABLE                         R8 0 0
       23 SETTABLEKS                       R8 R7 K6 ["User"]
       25 NEWTABLE                         R8 0 0
       27 SETTABLEKS                       R8 R7 K7 ["Group"]
       29 GETUPVAL                         R9 1
       30 GETTABLEKS                       R8 R9 K9 ["new"]
       32 CALL                             R8 0 1
       33 NEWTABLE                         R9 0 0
       35 NEWTABLE                         R10 0 0
       37 LOADN                            R11 0
       38 GETIMPORT                        R12 K11 [ipairs]
       40 MOVE                             R13 R3
       41 CALL                             R12 1 3
       42 FORGPREP_INEXT                   R12
       43 GETTABLEKS                       R18 R16 K12 ["creatorType"]
       45 GETTABLE                         R17 R7 R18
       46 GETTABLEKS                       R19 R16 K13 ["id"]
       48 FASTCALL1                        TONUMBER R19 ; [+2]
       49 GETIMPORT                        R18 K15 [tonumber]
       51 CALL                             R18 1 1
       52 LOADB                            R19 1
       53 SETTABLE                         R19 R17 R18
       54 FORGLOOP                         R12 2 [inext] ; [-12]
       56 MOVE                             R12 R0
       57 LOADNIL                          R13
       58 LOADNIL                          R14
       59 FORGPREP                         R12
       60 GETTABLE                         R17 R9 R15
       61 JUMPIF                           R17 ; [+3]
       62 ADDK                             R11 R11 K16 [1]
       63 LOADB                            R17 1
       64 SETTABLE                         R17 R9 R15
       65 FORGLOOP                         R12 2 ; [-6]
       67 GETUPVAL                         R12 2
       68 JUMPIFNOTLT                      R12 R11 ; [+19]
       70 GETUPVAL                         R13 3
       71 GETTABLEKS                       R12 R13 K17 ["reportFailure"]
       73 GETUPVAL                         R15 3
       74 GETTABLEKS                       R14 R15 K18 ["ErrorType"]
       76 GETTABLEKS                       R13 R14 K19 ["validateAssetCreator_TooManyDependencies"]
       78 LOADNIL                          R14
       79 MOVE                             R15 R1
       80 CALL                             R12 3 0
       81 LOADB                            R12 0
       82 NEWTABLE                         R13 0 1
       84 LOADK                            R14 K20 ["Upload of model has too many children assets (Meshes, Textures, etc.) and cannot be processed as is. You need to rearrange the model."]
       85 SETLIST                          R13 R14 1 [1]
       87 RETURN                           R12 2
       88 NEWTABLE                         R12 0 0
       90 MOVE                             R13 R9
       91 LOADNIL                          R14
       92 LOADNIL                          R15
       93 FORGPREP                         R13
       94 FASTCALL2                        TABLE_INSERT R12 R16 ; [+5]
       96 MOVE                             R19 R12
       97 MOVE                             R20 R16
       98 GETIMPORT                        R18 K23 [table.insert]
      100 CALL                             R18 2 0
      101 LENGTH                           R18 R12
      102 GETUPVAL                         R19 4
      103 JUMPIFNOTLE                      R19 R18 ; [+34]
      105 MOVE                             R19 R12
      106 LENGTH                           R20 R19
      107 JUMPIFNOTEQKN                    R20 K24 [0] ; [+7]
      109 GETUPVAL                         R21 5
      110 GETTABLEKS                       R20 R21 K25 ["resolve"]
      112 CALL                             R20 0 1
      113 MOVE                             R18 R20
      114 JUMP                             ; [+14]
      115 GETUPVAL                         R21 5
      116 GETTABLEKS                       R20 R21 K9 ["new"]
      118 NEWCLOSURE                       R21 P0
      119 CAPTURE                          UPVAL U6
      120 CAPTURE                          VAL R19
      121 CAPTURE                          VAL R3
      122 CAPTURE                          VAL R5
      123 CAPTURE                          VAL R6
      124 CAPTURE                          UPVAL U7
      125 CAPTURE                          VAL R4
      126 CALL                             R20 1 1
      127 MOVE                             R18 R20
      128 JUMP                             ; [0]
      129 FASTCALL2                        TABLE_INSERT R10 R18 ; [+5]
      131 MOVE                             R20 R10
      132 MOVE                             R21 R18
      133 GETIMPORT                        R19 K23 [table.insert]
      135 CALL                             R19 2 0
      136 NEWTABLE                         R12 0 0
      138 FORGLOOP                         R13 2 ; [-45]
      140 LENGTH                           R13 R12
      141 LOADN                            R14 0
      142 JUMPIFNOTLT                      R14 R13 ; [+32]
      144 MOVE                             R14 R12
      145 LENGTH                           R15 R14
      146 JUMPIFNOTEQKN                    R15 K24 [0] ; [+7]
      148 GETUPVAL                         R16 5
      149 GETTABLEKS                       R15 R16 K25 ["resolve"]
      151 CALL                             R15 0 1
      152 MOVE                             R13 R15
      153 JUMP                             ; [+14]
      154 GETUPVAL                         R16 5
      155 GETTABLEKS                       R15 R16 K9 ["new"]
      157 NEWCLOSURE                       R16 P0
      158 CAPTURE                          UPVAL U6
      159 CAPTURE                          VAL R14
      160 CAPTURE                          VAL R3
      161 CAPTURE                          VAL R5
      162 CAPTURE                          VAL R6
      163 CAPTURE                          UPVAL U7
      164 CAPTURE                          VAL R4
      165 CALL                             R15 1 1
      166 MOVE                             R13 R15
      167 JUMP                             ; [0]
      168 FASTCALL2                        TABLE_INSERT R10 R13 ; [+5]
      170 MOVE                             R15 R10
      171 MOVE                             R16 R13
      172 GETIMPORT                        R14 K23 [table.insert]
      174 CALL                             R14 2 0
      175 GETUPVAL                         R14 5
      176 GETTABLEKS                       R13 R14 K26 ["all"]
      178 MOVE                             R14 R10
      179 CALL                             R13 1 1
      180 NAMECALL                         R13 R13 K27 ["await"]
      182 CALL                             R13 1 2
      183 JUMPIF                           R13 ; [+18]
      184 GETUPVAL                         R16 3
      185 GETTABLEKS                       R15 R16 K17 ["reportFailure"]
      187 GETUPVAL                         R18 3
      188 GETTABLEKS                       R17 R18 K18 ["ErrorType"]
      190 GETTABLEKS                       R16 R17 K28 ["validateAssetCreator_FailedToLoad"]
      192 LOADNIL                          R17
      193 MOVE                             R18 R1
      194 CALL                             R15 3 0
      195 LOADB                            R15 0
      196 NEWTABLE                         R16 0 1
      198 LOADK                            R17 K29 ["Failed to load detailed information for model assets. Make sure all model assets exist and try again."]
      199 SETLIST                          R16 R17 1 [1]
      201 RETURN                           R15 2
      202 GETUPVAL                         R16 8
      203 CALL                             R16 0 1
      204 JUMPIFNOTEQKS                    R16 K30 [""] ; [+2]
      206 LOADB                            R15 0 +1
      207 LOADB                            R15 1
      208 JUMPIFNOT                        R15 ; [+3]
      209 GETUPVAL                         R16 9
      210 CALL                             R16 0 1
      211 JUMP                             ; [+2]
      212 NEWTABLE                         R16 0 0
      214 MOVE                             R17 R14
      215 LOADNIL                          R18
      216 LOADNIL                          R19
      217 FORGPREP                         R17
      218 GETTABLEKS                       R22 R21 K31 ["result"]
      220 GETIMPORT                        R23 K33 [pairs]
      222 MOVE                             R24 R22
      223 CALL                             R23 1 3
      224 FORGPREP_NEXT                    R23
      225 MOVE                             R28 R27
      226 JUMPIFNOT                        R15 ; [+4]
      227 MOVE                             R29 R27
      228 JUMPIF                           R29 ; [+1]
      229 GETTABLE                         R29 R16 R26
      230 MOVE                             R28 R29
      231 JUMPIF                           R28 ; [+11]
      232 GETUPVAL                         R30 3
      233 GETTABLEKS                       R29 R30 K17 ["reportFailure"]
      235 GETUPVAL                         R32 3
      236 GETTABLEKS                       R31 R32 K18 ["ErrorType"]
      238 GETTABLEKS                       R30 R31 K34 ["validateAssetCreator_DependencyNotOwnedByCreator"]
      240 LOADNIL                          R31
      241 MOVE                             R32 R1
      242 CALL                             R29 3 0
      243 GETTABLE                         R29 R0 R26
      244 GETIMPORT                        R30 K37 [string.format]
      246 LOADK                            R31 K38 ["%s.%s ( %s ) being used is not owned by the experience creator or player. You can only publish assets that you own."]
      247 GETTABLEKS                       R32 R29 K39 ["instance"]
      249 NAMECALL                         R32 R32 K40 ["GetFullName"]
      251 CALL                             R32 1 1
      252 GETTABLEKS                       R33 R29 K41 ["fieldName"]
      254 MOVE                             R34 R26
      255 CALL                             R30 4 1
      256 MOVE                             R33 R28
      257 NEWTABLE                         R34 0 1
      259 MOVE                             R35 R30
      260 SETLIST                          R34 R35 1 [1]
      262 NAMECALL                         R31 R8 K42 ["updateReasons"]
      264 CALL                             R31 3 0
      265 FORGLOOP                         R23 2 ; [-41]
      267 FORGLOOP                         R17 2 ; [-50]
      269 NAMECALL                         R17 R8 K43 ["getFinalResults"]
      271 CALL                             R17 1 -1
      272 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K2 ["Parent"]
       11 GETTABLEKS                       R2 R3 K5 ["Promise"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K7 [game]
       16 LOADK                            R4 K8 ["UGCValidationCanPublishRequestPageSize"]
       17 LOADN                            R5 50
       18 NAMECALL                         R2 R2 K9 ["DefineFastInt"]
       20 CALL                             R2 3 0
       21 GETIMPORT                        R2 K7 [game]
       23 LOADK                            R4 K10 ["UGCValidationMaxAssetSizeAllowed"]
       24 LOADN                            R5 244
       25 NAMECALL                         R2 R2 K9 ["DefineFastInt"]
       27 CALL                             R2 3 0
       28 GETIMPORT                        R2 K4 [require]
       30 GETTABLEKS                       R3 R0 K11 ["Analytics"]
       32 CALL                             R2 1 1
       33 GETIMPORT                        R3 K4 [require]
       35 GETTABLEKS                       R5 R0 K12 ["util"]
       37 GETTABLEKS                       R4 R5 K13 ["APIUtil"]
       39 CALL                             R3 1 1
       40 GETIMPORT                        R4 K4 [require]
       42 GETTABLEKS                       R6 R0 K12 ["util"]
       44 GETTABLEKS                       R5 R6 K14 ["Types"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K7 [game]
       49 LOADK                            R7 K15 ["HttpService"]
       50 NAMECALL                         R5 R5 K16 ["GetService"]
       52 CALL                             R5 2 1
       53 GETTABLEKS                       R6 R3 K17 ["getBaseDomain"]
       55 CALL                             R6 0 1
       56 GETIMPORT                        R7 K20 [string.format]
       58 LOADK                            R8 K21 ["https://apis.%s"]
       59 MOVE                             R9 R6
       60 CALL                             R7 2 1
       61 GETIMPORT                        R8 K7 [game]
       63 LOADK                            R10 K8 ["UGCValidationCanPublishRequestPageSize"]
       64 NAMECALL                         R8 R8 K22 ["GetFastInt"]
       66 CALL                             R8 2 1
       67 GETIMPORT                        R9 K7 [game]
       69 LOADK                            R11 K10 ["UGCValidationMaxAssetSizeAllowed"]
       70 NAMECALL                         R9 R9 K22 ["GetFastInt"]
       72 CALL                             R9 2 1
       73 GETIMPORT                        R10 K4 [require]
       75 GETTABLEKS                       R11 R0 K23 ["Constants"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K4 [require]
       80 GETTABLEKS                       R13 R0 K12 ["util"]
       82 GETTABLEKS                       R12 R13 K24 ["FailureReasonsAccumulator"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K4 [require]
       87 GETTABLEKS                       R14 R0 K25 ["flags"]
       89 GETTABLEKS                       R13 R14 K26 ["getFStringUGCValidationReferenceMeshIdWhitelistForIEC"]
       91 CALL                             R12 1 1
       92 DUPCLOSURE                       R13 K27 [PROTO_0]
       93 CAPTURE                          VAL R12
       94 DUPCLOSURE                       R14 K28 [PROTO_3]
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R10
       98 DUPCLOSURE                       R15 K29 [PROTO_4]
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R11
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R1
      105 CAPTURE                          VAL R5
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R12
      108 CAPTURE                          VAL R13
      109 RETURN                           R15 1
