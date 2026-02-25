PROTO_0:
        0 LOADB                            R3 1
        1 NEWTABLE                         R4 0 0
        3 LOADK                            R7 K0 ["Handle"]
        4 NAMECALL                         R5 R0 K1 ["FindFirstChild"]
        6 CALL                             R5 2 1
        7 LOADK                            R8 K2 ["WrapLayer"]
        8 NAMECALL                         R6 R5 K3 ["FindFirstChildOfClass"]
       10 CALL                             R6 2 1
       11 FASTCALL2K                       ASSERT R6 K4 ; [+5]
       13 MOVE                             R8 R6
       14 LOADK                            R9 K4 ["calling validateInstanceTree() means we would not get this far if there was no WrapLayer"]
       15 GETIMPORT                        R7 K6 [assert]
       17 CALL                             R7 2 0
       18 GETUPVAL                         R7 0
       19 MOVE                             R8 R0
       20 MOVE                             R9 R2
       21 CALL                             R7 2 3
       22 JUMPIFNOT                        R7 ; [+2]
       23 JUMPIFNOTEQKNIL                  R9 ; [+4]
       25 LOADB                            R10 0
       26 MOVE                             R11 R8
       27 RETURN                           R10 2
       28 NEWTABLE                         R10 0 2
       30 GETTABLEN                        R11 R9 1
       31 GETTABLEN                        R12 R9 2
       32 SETLIST                          R10 R11 2 [1]
       34 FASTCALL1                        TABLE_UNPACK R10 ; [+3]
       35 MOVE                             R12 R10
       36 GETIMPORT                        R11 K8 [unpack]
       38 CALL                             R11 1 2
       39 GETUPVAL                         R13 1
       40 CALL                             R13 0 1
       41 JUMPIFNOT                        R13 ; [+30]
       42 MOVE                             R13 R10
       43 LOADNIL                          R14
       44 LOADNIL                          R15
       45 FORGPREP                         R13
       46 GETUPVAL                         R18 2
       47 MOVE                             R19 R17
       48 MOVE                             R20 R2
       49 LOADK                            R21 K9 [{1, 1, 1}]
       50 GETTABLEKS                       R22 R17 K10 ["fullName"]
       52 CALL                             R18 4 2
       53 JUMPIF                           R18 ; [+16]
       54 JUMPIFEQKNIL                     R19 ; [+15]
       56 LOADB                            R3 0
       57 MOVE                             R20 R19
       58 LOADNIL                          R21
       59 LOADNIL                          R22
       60 FORGPREP                         R20
       61 FASTCALL2                        TABLE_INSERT R4 R24 ; [+5]
       63 MOVE                             R26 R4
       64 MOVE                             R27 R24
       65 GETIMPORT                        R25 K13 [table.insert]
       67 CALL                             R25 2 0
       68 FORGLOOP                         R20 2 ; [-8]
       70 FORGLOOP                         R13 2 ; [-25]
       72 GETUPVAL                         R13 3
       73 CALL                             R13 0 1
       74 JUMPIFNOT                        R13 ; [+31]
       75 GETUPVAL                         R13 4
       76 MOVE                             R14 R11
       77 MOVE                             R15 R12
       78 MOVE                             R16 R1
       79 GETTABLEKS                       R18 R6 K14 ["ReferenceOrigin"]
       81 GETTABLEKS                       R17 R18 K15 ["Position"]
       83 GETTABLEKS                       R19 R6 K16 ["CageOrigin"]
       85 GETTABLEKS                       R18 R19 K15 ["Position"]
       87 MOVE                             R19 R2
       88 CALL                             R13 6 2
       89 JUMPIF                           R13 ; [+16]
       90 JUMPIFEQKNIL                     R14 ; [+15]
       92 LOADB                            R3 0
       93 MOVE                             R15 R14
       94 LOADNIL                          R16
       95 LOADNIL                          R17
       96 FORGPREP                         R15
       97 FASTCALL2                        TABLE_INSERT R4 R19 ; [+5]
       99 MOVE                             R21 R4
      100 MOVE                             R22 R19
      101 GETIMPORT                        R20 K13 [table.insert]
      103 CALL                             R20 2 0
      104 FORGLOOP                         R15 2 ; [-8]
      106 GETUPVAL                         R13 5
      107 MOVE                             R14 R6
      108 MOVE                             R15 R12
      109 MOVE                             R16 R1
      110 MOVE                             R17 R2
      111 CALL                             R13 4 2
      112 JUMPIF                           R13 ; [+11]
      113 MOVE                             R16 R4
      114 GETIMPORT                        R17 K18 [table.concat]
      116 MOVE                             R18 R14
      117 LOADK                            R19 K19 ["\n"]
      118 CALL                             R17 2 -1
      119 FASTCALL                         TABLE_INSERT ; [+2]
      120 GETIMPORT                        R15 K13 [table.insert]
      122 CALL                             R15 -1 0
      123 LOADB                            R3 0
      124 GETUPVAL                         R13 6
      125 CALL                             R13 0 1
      126 JUMPIFNOT                        R13 ; [+58]
      127 GETUPVAL                         R13 7
      128 CALL                             R13 0 1
      129 JUMPIFNOT                        R13 ; [+33]
      130 GETTABLEKS                       R13 R2 K20 ["assetTypeEnum"]
      132 GETIMPORT                        R14 K24 [Enum.AssetType.EyebrowAccessory]
      134 JUMPIFEQ                         R13 R14 ; [+50]
      136 GETIMPORT                        R14 K26 [Enum.AssetType.EyelashAccessory]
      138 JUMPIFEQ                         R13 R14 ; [+46]
      140 GETUPVAL                         R14 8
      141 MOVE                             R15 R11
      142 MOVE                             R16 R12
      143 MOVE                             R17 R1
      144 GETTABLEKS                       R18 R6 K14 ["ReferenceOrigin"]
      146 GETTABLEKS                       R19 R6 K16 ["CageOrigin"]
      148 MOVE                             R20 R2
      149 CALL                             R14 6 2
      150 JUMPIF                           R14 ; [+34]
      151 MOVE                             R17 R4
      152 GETIMPORT                        R18 K18 [table.concat]
      154 MOVE                             R19 R15
      155 LOADK                            R20 K19 ["\n"]
      156 CALL                             R18 2 -1
      157 FASTCALL                         TABLE_INSERT ; [+2]
      158 GETIMPORT                        R16 K13 [table.insert]
      160 CALL                             R16 -1 0
      161 LOADB                            R3 0
      162 JUMP                             ; [+22]
      163 GETUPVAL                         R13 8
      164 MOVE                             R14 R11
      165 MOVE                             R15 R12
      166 MOVE                             R16 R1
      167 GETTABLEKS                       R17 R6 K14 ["ReferenceOrigin"]
      169 GETTABLEKS                       R18 R6 K16 ["CageOrigin"]
      171 MOVE                             R19 R2
      172 CALL                             R13 6 2
      173 JUMPIF                           R13 ; [+11]
      174 MOVE                             R16 R4
      175 GETIMPORT                        R17 K18 [table.concat]
      177 MOVE                             R18 R14
      178 LOADK                            R19 K19 ["\n"]
      179 CALL                             R17 2 -1
      180 FASTCALL                         TABLE_INSERT ; [+2]
      181 GETIMPORT                        R15 K13 [table.insert]
      183 CALL                             R15 -1 0
      184 LOADB                            R3 0
      185 GETUPVAL                         R13 9
      186 CALL                             R13 0 1
      187 JUMPIFNOT                        R13 ; [+18]
      188 GETUPVAL                         R13 10
      189 MOVE                             R14 R11
      190 MOVE                             R15 R12
      191 MOVE                             R16 R1
      192 MOVE                             R17 R2
      193 CALL                             R13 4 2
      194 JUMPIF                           R13 ; [+11]
      195 MOVE                             R16 R4
      196 GETIMPORT                        R17 K18 [table.concat]
      198 MOVE                             R18 R14
      199 LOADK                            R19 K19 ["\n"]
      200 CALL                             R17 2 -1
      201 FASTCALL                         TABLE_INSERT ; [+2]
      202 GETIMPORT                        R15 K13 [table.insert]
      204 CALL                             R15 -1 0
      205 LOADB                            R3 0
      206 GETUPVAL                         R14 11
      207 GETTABLEKS                       R13 R14 K27 ["validate"]
      209 MOVE                             R14 R11
      210 GETTABLEKS                       R15 R6 K14 ["ReferenceOrigin"]
      212 MOVE                             R16 R12
      213 GETTABLEKS                       R17 R6 K16 ["CageOrigin"]
      215 MOVE                             R18 R1
      216 MOVE                             R19 R2
      217 CALL                             R13 6 2
      218 JUMPIF                           R13 ; [+11]
      219 MOVE                             R16 R4
      220 GETIMPORT                        R17 K18 [table.concat]
      222 MOVE                             R18 R14
      223 LOADK                            R19 K19 ["\n"]
      224 CALL                             R17 2 -1
      225 FASTCALL                         TABLE_INSERT ; [+2]
      226 GETIMPORT                        R15 K13 [table.insert]
      228 CALL                             R15 -1 0
      229 LOADB                            R3 0
      230 JUMPIF                           R3 ; [+33]
      231 GETUPVAL                         R13 12
      232 CALL                             R13 0 1
      233 JUMPIFEQKS                       R13 K28 [""] ; [+27]
      235 LOADNIL                          R13
      236 GETUPVAL                         R14 13
      237 CALL                             R14 0 1
      238 JUMPIFNOT                        R14 ; [+8]
      239 GETIMPORT                        R14 K31 [string.format]
      241 LOADK                            R15 K32 ["[Caging best practices](%s)"]
      242 GETUPVAL                         R16 12
      243 CALL                             R16 0 -1
      244 CALL                             R14 -1 1
      245 MOVE                             R13 R14
      246 JUMP                             ; [+7]
      247 GETIMPORT                        R14 K31 [string.format]
      249 LOADK                            R15 K33 ["To better understand caging requirements, please visit %s"]
      250 GETUPVAL                         R16 12
      251 CALL                             R16 0 -1
      252 CALL                             R14 -1 1
      253 MOVE                             R13 R14
      254 FASTCALL2                        TABLE_INSERT R4 R13 ; [+5]
      256 MOVE                             R15 R4
      257 MOVE                             R16 R13
      258 GETIMPORT                        R14 K13 [table.insert]
      260 CALL                             R14 2 0
      261 LOADB                            R13 0
      262 MOVE                             R14 R4
      263 RETURN                           R13 2
      264 LOADB                            R13 1
      265 RETURN                           R13 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["validation"]
       11 GETTABLEKS                       R2 R3 K6 ["getCageMeshInfos"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R4 R0 K7 ["flags"]
       18 GETTABLEKS                       R3 R4 K8 ["getEngineFeatureEngineUGCValidateLCCagesVerticesSimilarity"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R5 R0 K7 ["flags"]
       25 GETTABLEKS                       R4 R5 K9 ["getEngineFeatureEngineUGCValidateLCCagingRelevancy"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R6 R0 K7 ["flags"]
       32 GETTABLEKS                       R5 R6 K10 ["getFStringLCCageQualityDocumentationLink"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K4 [require]
       37 GETTABLEKS                       R7 R0 K7 ["flags"]
       39 GETTABLEKS                       R6 R7 K11 ["getEngineFeatureUGCValidateCageMeshDistance"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K4 [require]
       44 GETTABLEKS                       R8 R0 K7 ["flags"]
       46 GETTABLEKS                       R7 R8 K12 ["getFFlagUGCValidationHyperlinksInCageQuality"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K4 [require]
       51 GETTABLEKS                       R9 R0 K7 ["flags"]
       53 GETTABLEKS                       R8 R9 K13 ["getFFlagUGCValidationEyebrowEyelashSupport"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K4 [require]
       58 GETTABLEKS                       R10 R0 K7 ["flags"]
       60 GETTABLEKS                       R9 R10 K14 ["getEngineFeatureEngineUGCValidationCageUVDuplicates"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K4 [require]
       65 GETTABLEKS                       R11 R0 K5 ["validation"]
       67 GETTABLEKS                       R10 R11 K15 ["validateVerticesSimilarity"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K4 [require]
       72 GETTABLEKS                       R12 R0 K5 ["validation"]
       74 GETTABLEKS                       R11 R12 K16 ["validateLCCagingRelevancy"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K4 [require]
       79 GETTABLEKS                       R13 R0 K5 ["validation"]
       81 GETTABLEKS                       R12 R13 K17 ["validateRenderMeshInsideOuterCageMesh"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K4 [require]
       86 GETTABLEKS                       R14 R0 K5 ["validation"]
       88 GETTABLEKS                       R13 R14 K18 ["validateCageMeshDistance"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K4 [require]
       93 GETTABLEKS                       R15 R0 K5 ["validation"]
       95 GETTABLEKS                       R14 R15 K19 ["validateCageUVDuplicates"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K4 [require]
      100 GETTABLEKS                       R16 R0 K5 ["validation"]
      102 GETTABLEKS                       R15 R16 K20 ["ValidateModifiedCageArea"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K4 [require]
      107 GETTABLEKS                       R17 R0 K21 ["util"]
      109 GETTABLEKS                       R16 R17 K22 ["Types"]
      111 CALL                             R15 1 1
      112 DUPCLOSURE                       R16 K23 [PROTO_0]
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R2
      115 CAPTURE                          VAL R9
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R10
      118 CAPTURE                          VAL R11
      119 CAPTURE                          VAL R5
      120 CAPTURE                          VAL R7
      121 CAPTURE                          VAL R12
      122 CAPTURE                          VAL R8
      123 CAPTURE                          VAL R13
      124 CAPTURE                          VAL R14
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R6
      127 RETURN                           R16 1
