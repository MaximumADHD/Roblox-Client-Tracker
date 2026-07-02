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
       39 LOADB                            R13 0
       40 NEWTABLE                         R14 0 0
       42 GETUPVAL                         R15 1
       43 CALL                             R15 0 1
       44 JUMPIF                           R15 ; [+32]
       45 MOVE                             R15 R10
       46 LOADNIL                          R16
       47 LOADNIL                          R17
       48 FORGPREP                         R15
       49 GETUPVAL                         R20 2
       50 MOVE                             R21 R19
       51 MOVE                             R22 R2
       52 LOADK                            R23 K9 [{1, 1, 1}]
       53 GETTABLEKS                       R24 R19 K10 ["fullName"]
       55 CALL                             R20 4 2
       56 MOVE                             R13 R20
       57 MOVE                             R14 R21
       58 JUMPIF                           R13 ; [+16]
       59 JUMPIFEQKNIL                     R14 ; [+15]
       61 LOADB                            R3 0
       62 MOVE                             R20 R14
       63 LOADNIL                          R21
       64 LOADNIL                          R22
       65 FORGPREP                         R20
       66 FASTCALL2                        TABLE_INSERT R4 R24 ; [+5]
       68 MOVE                             R26 R4
       69 MOVE                             R27 R24
       70 GETIMPORT                        R25 K13 [table.insert]
       72 CALL                             R25 2 0
       73 FORGLOOP                         R20 2 ; [-8]
       75 FORGLOOP                         R15 2 ; [-27]
       77 GETUPVAL                         R15 3
       78 MOVE                             R16 R11
       79 MOVE                             R17 R12
       80 MOVE                             R18 R1
       81 GETTABLEKS                       R19 R6 K14 ["ReferenceOrigin"]
       83 GETTABLEKS                       R19 R19 K15 ["Position"]
       85 GETTABLEKS                       R20 R6 K16 ["CageOrigin"]
       87 GETTABLEKS                       R20 R20 K15 ["Position"]
       89 MOVE                             R21 R2
       90 CALL                             R15 6 2
       91 MOVE                             R13 R15
       92 MOVE                             R14 R16
       93 JUMPIF                           R13 ; [+16]
       94 JUMPIFEQKNIL                     R14 ; [+15]
       96 LOADB                            R3 0
       97 MOVE                             R15 R14
       98 LOADNIL                          R16
       99 LOADNIL                          R17
      100 FORGPREP                         R15
      101 FASTCALL2                        TABLE_INSERT R4 R19 ; [+5]
      103 MOVE                             R21 R4
      104 MOVE                             R22 R19
      105 GETIMPORT                        R20 K13 [table.insert]
      107 CALL                             R20 2 0
      108 FORGLOOP                         R15 2 ; [-8]
      110 GETUPVAL                         R15 4
      111 MOVE                             R16 R6
      112 MOVE                             R17 R12
      113 MOVE                             R18 R1
      114 MOVE                             R19 R2
      115 CALL                             R15 4 2
      116 MOVE                             R13 R15
      117 MOVE                             R14 R16
      118 JUMPIF                           R13 ; [+11]
      119 MOVE                             R16 R4
      120 GETIMPORT                        R17 K18 [table.concat]
      122 MOVE                             R18 R14
      123 LOADK                            R19 K19 ["\n"]
      124 CALL                             R17 2 -1
      125 FASTCALL                         TABLE_INSERT ; [+2]
      126 GETIMPORT                        R15 K13 [table.insert]
      128 CALL                             R15 -1 0
      129 LOADB                            R3 0
      130 GETUPVAL                         R15 1
      131 CALL                             R15 0 1
      132 JUMPIF                           R15 ; [+62]
      133 GETUPVAL                         R15 5
      134 CALL                             R15 0 1
      135 JUMPIFNOT                        R15 ; [+35]
      136 GETTABLEKS                       R15 R2 K20 ["assetTypeEnum"]
      138 GETIMPORT                        R16 K24 [Enum.AssetType.EyebrowAccessory]
      140 JUMPIFEQ                         R15 R16 ; [+54]
      142 GETIMPORT                        R16 K26 [Enum.AssetType.EyelashAccessory]
      144 JUMPIFEQ                         R15 R16 ; [+50]
      146 GETUPVAL                         R16 6
      147 MOVE                             R17 R11
      148 MOVE                             R18 R12
      149 MOVE                             R19 R1
      150 GETTABLEKS                       R20 R6 K14 ["ReferenceOrigin"]
      152 GETTABLEKS                       R21 R6 K16 ["CageOrigin"]
      154 MOVE                             R22 R2
      155 CALL                             R16 6 2
      156 MOVE                             R13 R16
      157 MOVE                             R14 R17
      158 JUMPIF                           R13 ; [+36]
      159 MOVE                             R17 R4
      160 GETIMPORT                        R18 K18 [table.concat]
      162 MOVE                             R19 R14
      163 LOADK                            R20 K19 ["\n"]
      164 CALL                             R18 2 -1
      165 FASTCALL                         TABLE_INSERT ; [+2]
      166 GETIMPORT                        R16 K13 [table.insert]
      168 CALL                             R16 -1 0
      169 LOADB                            R3 0
      170 JUMP                             ; [+24]
      171 GETUPVAL                         R15 6
      172 MOVE                             R16 R11
      173 MOVE                             R17 R12
      174 MOVE                             R18 R1
      175 GETTABLEKS                       R19 R6 K14 ["ReferenceOrigin"]
      177 GETTABLEKS                       R20 R6 K16 ["CageOrigin"]
      179 MOVE                             R21 R2
      180 CALL                             R15 6 2
      181 MOVE                             R13 R15
      182 MOVE                             R14 R16
      183 JUMPIF                           R13 ; [+11]
      184 MOVE                             R16 R4
      185 GETIMPORT                        R17 K18 [table.concat]
      187 MOVE                             R18 R14
      188 LOADK                            R19 K19 ["\n"]
      189 CALL                             R17 2 -1
      190 FASTCALL                         TABLE_INSERT ; [+2]
      191 GETIMPORT                        R15 K13 [table.insert]
      193 CALL                             R15 -1 0
      194 LOADB                            R3 0
      195 GETUPVAL                         R15 7
      196 MOVE                             R16 R11
      197 MOVE                             R17 R12
      198 MOVE                             R18 R1
      199 MOVE                             R19 R2
      200 CALL                             R15 4 2
      201 MOVE                             R13 R15
      202 MOVE                             R14 R16
      203 JUMPIF                           R13 ; [+11]
      204 MOVE                             R16 R4
      205 GETIMPORT                        R17 K18 [table.concat]
      207 MOVE                             R18 R14
      208 LOADK                            R19 K19 ["\n"]
      209 CALL                             R17 2 -1
      210 FASTCALL                         TABLE_INSERT ; [+2]
      211 GETIMPORT                        R15 K13 [table.insert]
      213 CALL                             R15 -1 0
      214 LOADB                            R3 0
      215 GETUPVAL                         R15 8
      216 GETTABLEKS                       R15 R15 K27 ["validate"]
      218 MOVE                             R16 R11
      219 GETTABLEKS                       R17 R6 K14 ["ReferenceOrigin"]
      221 MOVE                             R18 R12
      222 GETTABLEKS                       R19 R6 K16 ["CageOrigin"]
      224 MOVE                             R20 R1
      225 MOVE                             R21 R2
      226 CALL                             R15 6 2
      227 MOVE                             R13 R15
      228 MOVE                             R14 R16
      229 JUMPIF                           R13 ; [+11]
      230 MOVE                             R16 R4
      231 GETIMPORT                        R17 K18 [table.concat]
      233 MOVE                             R18 R14
      234 LOADK                            R19 K19 ["\n"]
      235 CALL                             R17 2 -1
      236 FASTCALL                         TABLE_INSERT ; [+2]
      237 GETIMPORT                        R15 K13 [table.insert]
      239 CALL                             R15 -1 0
      240 LOADB                            R3 0
      241 JUMPIF                           R3 ; [+20]
      242 GETUPVAL                         R15 9
      243 CALL                             R15 0 1
      244 JUMPIFEQKS                       R15 K28 [""] ; [+14]
      246 GETIMPORT                        R15 K31 [string.format]
      248 LOADK                            R16 K32 ["[Caging best practices](%s)"]
      249 GETUPVAL                         R17 9
      250 CALL                             R17 0 -1
      251 CALL                             R15 -1 1
      252 FASTCALL2                        TABLE_INSERT R4 R15 ; [+5]
      254 MOVE                             R17 R4
      255 MOVE                             R18 R15
      256 GETIMPORT                        R16 K13 [table.insert]
      258 CALL                             R16 2 0
      259 LOADB                            R15 0
      260 MOVE                             R16 R4
      261 RETURN                           R15 2
      262 LOADB                            R15 1
      263 RETURN                           R15 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["validation"]
       11 GETTABLEKS                       R2 R2 K6 ["getCageMeshInfos"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K7 ["flags"]
       18 GETTABLEKS                       R3 R3 K8 ["getFStringLCCageQualityDocumentationLink"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K7 ["flags"]
       25 GETTABLEKS                       R4 R4 K9 ["getFFlagUGCValidationEyebrowEyelashSupport"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R5 R0 K7 ["flags"]
       32 GETTABLEKS                       R5 R5 K10 ["getFFlagUGCValidateMigrateCageGeometry"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K4 [require]
       37 GETTABLEKS                       R6 R0 K5 ["validation"]
       39 GETTABLEKS                       R6 R6 K11 ["validateVerticesSimilarity"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K4 [require]
       44 GETTABLEKS                       R7 R0 K5 ["validation"]
       46 GETTABLEKS                       R7 R7 K12 ["validateLCCagingRelevancy"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K4 [require]
       51 GETTABLEKS                       R8 R0 K5 ["validation"]
       53 GETTABLEKS                       R8 R8 K13 ["validateRenderMeshInsideOuterCageMesh"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K4 [require]
       58 GETTABLEKS                       R9 R0 K5 ["validation"]
       60 GETTABLEKS                       R9 R9 K14 ["validateCageMeshDistance"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K4 [require]
       65 GETTABLEKS                       R10 R0 K5 ["validation"]
       67 GETTABLEKS                       R10 R10 K15 ["validateCageUVDuplicates"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K4 [require]
       72 GETTABLEKS                       R11 R0 K5 ["validation"]
       74 GETTABLEKS                       R11 R11 K16 ["ValidateModifiedCageArea"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K4 [require]
       79 GETTABLEKS                       R12 R0 K17 ["util"]
       81 GETTABLEKS                       R12 R12 K18 ["Types"]
       83 CALL                             R11 1 1
       84 DUPCLOSURE                       R12 K19 [PROTO_0]
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R2
       95 RETURN                           R12 1
