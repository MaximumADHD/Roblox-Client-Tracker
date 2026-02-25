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
        2 LOADNIL                          R3
        3 GETUPVAL                         R4 0
        4 CALL                             R4 0 1
        5 JUMPIFNOT                        R4 ; [+9]
        6 GETTABLEKS                       R4 R1 K1 ["restrictedUserIds"]
        8 JUMPIFNOT                        R4 ; [+3]
        9 GETTABLEKS                       R3 R1 K1 ["restrictedUserIds"]
       11 JUMP                             ; [+5]
       12 NEWTABLE                         R3 0 0
       14 JUMP                             ; [+2]
       15 GETTABLEKS                       R3 R1 K1 ["restrictedUserIds"]
       17 GETTABLEKS                       R4 R1 K2 ["token"]
       19 GETTABLEKS                       R5 R1 K3 ["universeId"]
       21 GETUPVAL                         R7 1
       22 JUMPIFNOT                        R2 ; [+2]
       23 LOADK                            R8 K4 ["packages-api/v1/rcc/canPublish"]
       24 JUMP                             ; [+1]
       25 LOADK                            R8 K5 ["packages-api/v1/canPublish"]
       26 CONCAT                           R6 R7 R8
       27 DUPTABLE                         R7 K8 [{"User", "Group"}]
       28 NEWTABLE                         R8 0 0
       30 SETTABLEKS                       R8 R7 K6 ["User"]
       32 NEWTABLE                         R8 0 0
       34 SETTABLEKS                       R8 R7 K7 ["Group"]
       36 GETUPVAL                         R9 2
       37 GETTABLEKS                       R8 R9 K9 ["new"]
       39 CALL                             R8 0 1
       40 NEWTABLE                         R9 0 0
       42 NEWTABLE                         R10 0 0
       44 LOADN                            R11 0
       45 GETIMPORT                        R12 K11 [ipairs]
       47 MOVE                             R13 R3
       48 CALL                             R12 1 3
       49 FORGPREP_INEXT                   R12
       50 GETTABLEKS                       R18 R16 K12 ["creatorType"]
       52 GETTABLE                         R17 R7 R18
       53 GETTABLEKS                       R19 R16 K13 ["id"]
       55 FASTCALL1                        TONUMBER R19 ; [+2]
       56 GETIMPORT                        R18 K15 [tonumber]
       58 CALL                             R18 1 1
       59 LOADB                            R19 1
       60 SETTABLE                         R19 R17 R18
       61 FORGLOOP                         R12 2 [inext] ; [-12]
       63 MOVE                             R12 R0
       64 LOADNIL                          R13
       65 LOADNIL                          R14
       66 FORGPREP                         R12
       67 GETTABLE                         R17 R9 R15
       68 JUMPIF                           R17 ; [+3]
       69 ADDK                             R11 R11 K16 [1]
       70 LOADB                            R17 1
       71 SETTABLE                         R17 R9 R15
       72 FORGLOOP                         R12 2 ; [-6]
       74 GETUPVAL                         R12 3
       75 JUMPIFNOTLT                      R12 R11 ; [+19]
       77 GETUPVAL                         R13 4
       78 GETTABLEKS                       R12 R13 K17 ["reportFailure"]
       80 GETUPVAL                         R15 4
       81 GETTABLEKS                       R14 R15 K18 ["ErrorType"]
       83 GETTABLEKS                       R13 R14 K19 ["validateAssetCreator_TooManyDependencies"]
       85 LOADNIL                          R14
       86 MOVE                             R15 R1
       87 CALL                             R12 3 0
       88 LOADB                            R12 0
       89 NEWTABLE                         R13 0 1
       91 LOADK                            R14 K20 ["Upload of model has too many children assets (Meshes, Textures, etc.) and cannot be processed as is. You need to rearrange the model."]
       92 SETLIST                          R13 R14 1 [1]
       94 RETURN                           R12 2
       95 NEWTABLE                         R12 0 0
       97 MOVE                             R13 R9
       98 LOADNIL                          R14
       99 LOADNIL                          R15
      100 FORGPREP                         R13
      101 GETUPVAL                         R18 5
      102 CALL                             R18 0 1
      103 JUMPIFNOT                        R18 ; [+2]
      104 JUMPIFEQKN                       R16 K21 [0] ; [+46]
      106 FASTCALL2                        TABLE_INSERT R12 R16 ; [+5]
      108 MOVE                             R19 R12
      109 MOVE                             R20 R16
      110 GETIMPORT                        R18 K24 [table.insert]
      112 CALL                             R18 2 0
      113 LENGTH                           R18 R12
      114 GETUPVAL                         R19 6
      115 JUMPIFNOTLE                      R19 R18 ; [+35]
      117 MOVE                             R19 R12
      118 MOVE                             R20 R3
      119 LENGTH                           R21 R19
      120 JUMPIFNOTEQKN                    R21 K21 [0] ; [+7]
      122 GETUPVAL                         R22 7
      123 GETTABLEKS                       R21 R22 K25 ["resolve"]
      125 CALL                             R21 0 1
      126 MOVE                             R18 R21
      127 JUMP                             ; [+14]
      128 GETUPVAL                         R22 7
      129 GETTABLEKS                       R21 R22 K9 ["new"]
      131 NEWCLOSURE                       R22 P0
      132 CAPTURE                          UPVAL U8
      133 CAPTURE                          VAL R19
      134 CAPTURE                          VAL R20
      135 CAPTURE                          VAL R5
      136 CAPTURE                          VAL R6
      137 CAPTURE                          UPVAL U9
      138 CAPTURE                          VAL R4
      139 CALL                             R21 1 1
      140 MOVE                             R18 R21
      141 JUMP                             ; [0]
      142 FASTCALL2                        TABLE_INSERT R10 R18 ; [+5]
      144 MOVE                             R20 R10
      145 MOVE                             R21 R18
      146 GETIMPORT                        R19 K24 [table.insert]
      148 CALL                             R19 2 0
      149 NEWTABLE                         R12 0 0
      151 FORGLOOP                         R13 2 ; [-51]
      153 LENGTH                           R13 R12
      154 LOADN                            R14 0
      155 JUMPIFNOTLT                      R14 R13 ; [+33]
      157 MOVE                             R14 R12
      158 MOVE                             R15 R3
      159 LENGTH                           R16 R14
      160 JUMPIFNOTEQKN                    R16 K21 [0] ; [+7]
      162 GETUPVAL                         R17 7
      163 GETTABLEKS                       R16 R17 K25 ["resolve"]
      165 CALL                             R16 0 1
      166 MOVE                             R13 R16
      167 JUMP                             ; [+14]
      168 GETUPVAL                         R17 7
      169 GETTABLEKS                       R16 R17 K9 ["new"]
      171 NEWCLOSURE                       R17 P0
      172 CAPTURE                          UPVAL U8
      173 CAPTURE                          VAL R14
      174 CAPTURE                          VAL R15
      175 CAPTURE                          VAL R5
      176 CAPTURE                          VAL R6
      177 CAPTURE                          UPVAL U9
      178 CAPTURE                          VAL R4
      179 CALL                             R16 1 1
      180 MOVE                             R13 R16
      181 JUMP                             ; [0]
      182 FASTCALL2                        TABLE_INSERT R10 R13 ; [+5]
      184 MOVE                             R15 R10
      185 MOVE                             R16 R13
      186 GETIMPORT                        R14 K24 [table.insert]
      188 CALL                             R14 2 0
      189 GETUPVAL                         R14 7
      190 GETTABLEKS                       R13 R14 K26 ["all"]
      192 MOVE                             R14 R10
      193 CALL                             R13 1 1
      194 NAMECALL                         R13 R13 K27 ["await"]
      196 CALL                             R13 1 2
      197 JUMPIF                           R13 ; [+18]
      198 GETUPVAL                         R16 4
      199 GETTABLEKS                       R15 R16 K17 ["reportFailure"]
      201 GETUPVAL                         R18 4
      202 GETTABLEKS                       R17 R18 K18 ["ErrorType"]
      204 GETTABLEKS                       R16 R17 K28 ["validateAssetCreator_FailedToLoad"]
      206 LOADNIL                          R17
      207 MOVE                             R18 R1
      208 CALL                             R15 3 0
      209 LOADB                            R15 0
      210 NEWTABLE                         R16 0 1
      212 LOADK                            R17 K29 ["Failed to load detailed information for model assets. Make sure all model assets exist and try again."]
      213 SETLIST                          R16 R17 1 [1]
      215 RETURN                           R15 2
      216 GETUPVAL                         R16 10
      217 CALL                             R16 0 1
      218 JUMPIFNOTEQKS                    R16 K30 [""] ; [+2]
      220 LOADB                            R15 0 +1
      221 LOADB                            R15 1
      222 JUMPIFNOT                        R15 ; [+3]
      223 GETUPVAL                         R16 11
      224 CALL                             R16 0 1
      225 JUMP                             ; [+2]
      226 NEWTABLE                         R16 0 0
      228 MOVE                             R17 R14
      229 LOADNIL                          R18
      230 LOADNIL                          R19
      231 FORGPREP                         R17
      232 GETTABLEKS                       R22 R21 K31 ["result"]
      234 GETIMPORT                        R23 K33 [pairs]
      236 MOVE                             R24 R22
      237 CALL                             R23 1 3
      238 FORGPREP_NEXT                    R23
      239 MOVE                             R28 R27
      240 JUMPIFNOT                        R15 ; [+4]
      241 MOVE                             R29 R27
      242 JUMPIF                           R29 ; [+1]
      243 GETTABLE                         R29 R16 R26
      244 MOVE                             R28 R29
      245 JUMPIF                           R28 ; [+11]
      246 GETUPVAL                         R30 4
      247 GETTABLEKS                       R29 R30 K17 ["reportFailure"]
      249 GETUPVAL                         R32 4
      250 GETTABLEKS                       R31 R32 K18 ["ErrorType"]
      252 GETTABLEKS                       R30 R31 K34 ["validateAssetCreator_DependencyNotOwnedByCreator"]
      254 LOADNIL                          R31
      255 MOVE                             R32 R1
      256 CALL                             R29 3 0
      257 GETTABLE                         R29 R0 R26
      258 GETIMPORT                        R30 K37 [string.format]
      260 LOADK                            R31 K38 ["%s.%s ( %s ) being used is not owned by the experience creator or player. You can only publish assets that you own."]
      261 GETTABLEKS                       R32 R29 K39 ["instance"]
      263 NAMECALL                         R32 R32 K40 ["GetFullName"]
      265 CALL                             R32 1 1
      266 GETTABLEKS                       R33 R29 K41 ["fieldName"]
      268 MOVE                             R34 R26
      269 CALL                             R30 4 1
      270 MOVE                             R33 R28
      271 NEWTABLE                         R34 0 1
      273 MOVE                             R35 R30
      274 SETLIST                          R34 R35 1 [1]
      276 NAMECALL                         R31 R8 K42 ["updateReasons"]
      278 CALL                             R31 3 0
      279 FORGLOOP                         R23 2 ; [-41]
      281 FORGLOOP                         R17 2 ; [-50]
      283 NAMECALL                         R17 R8 K43 ["getFinalResults"]
      285 CALL                             R17 1 -1
      286 RETURN                           R17 -1

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
       89 GETTABLEKS                       R13 R14 K26 ["getFFlagFixPackageIDFieldName"]
       91 CALL                             R12 1 1
       92 GETIMPORT                        R13 K4 [require]
       94 GETTABLEKS                       R15 R0 K25 ["flags"]
       96 GETTABLEKS                       R14 R15 K27 ["getFFlagUGCValidateAccessoriesRCCOwnership"]
       98 CALL                             R13 1 1
       99 GETIMPORT                        R14 K4 [require]
      101 GETTABLEKS                       R16 R0 K25 ["flags"]
      103 GETTABLEKS                       R15 R16 K28 ["getFStringUGCValidationReferenceMeshIdWhitelistForIEC"]
      105 CALL                             R14 1 1
      106 DUPCLOSURE                       R15 K29 [PROTO_0]
      107 CAPTURE                          VAL R14
      108 DUPCLOSURE                       R16 K30 [PROTO_3]
      109 CAPTURE                          VAL R1
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R10
      112 DUPCLOSURE                       R17 K31 [PROTO_4]
      113 CAPTURE                          VAL R13
      114 CAPTURE                          VAL R7
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R9
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R8
      120 CAPTURE                          VAL R1
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R10
      123 CAPTURE                          VAL R14
      124 CAPTURE                          VAL R15
      125 RETURN                           R17 1
