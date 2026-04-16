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
       42 MOVE                             R15 R10
       43 LOADNIL                          R16
       44 LOADNIL                          R17
       45 FORGPREP                         R15
       46 GETUPVAL                         R20 1
       47 MOVE                             R21 R19
       48 MOVE                             R22 R2
       49 LOADK                            R23 K9 [{1, 1, 1}]
       50 GETTABLEKS                       R24 R19 K10 ["fullName"]
       52 CALL                             R20 4 2
       53 MOVE                             R13 R20
       54 MOVE                             R14 R21
       55 JUMPIF                           R13 ; [+16]
       56 JUMPIFEQKNIL                     R14 ; [+15]
       58 LOADB                            R3 0
       59 MOVE                             R20 R14
       60 LOADNIL                          R21
       61 LOADNIL                          R22
       62 FORGPREP                         R20
       63 FASTCALL2                        TABLE_INSERT R4 R24 ; [+5]
       65 MOVE                             R26 R4
       66 MOVE                             R27 R24
       67 GETIMPORT                        R25 K13 [table.insert]
       69 CALL                             R25 2 0
       70 FORGLOOP                         R20 2 ; [-8]
       72 FORGLOOP                         R15 2 ; [-27]
       74 GETUPVAL                         R15 2
       75 MOVE                             R16 R11
       76 MOVE                             R17 R12
       77 MOVE                             R18 R1
       78 GETTABLEKS                       R20 R6 K14 ["ReferenceOrigin"]
       80 GETTABLEKS                       R19 R20 K15 ["Position"]
       82 GETTABLEKS                       R21 R6 K16 ["CageOrigin"]
       84 GETTABLEKS                       R20 R21 K15 ["Position"]
       86 MOVE                             R21 R2
       87 CALL                             R15 6 2
       88 MOVE                             R13 R15
       89 MOVE                             R14 R16
       90 JUMPIF                           R13 ; [+16]
       91 JUMPIFEQKNIL                     R14 ; [+15]
       93 LOADB                            R3 0
       94 MOVE                             R15 R14
       95 LOADNIL                          R16
       96 LOADNIL                          R17
       97 FORGPREP                         R15
       98 FASTCALL2                        TABLE_INSERT R4 R19 ; [+5]
      100 MOVE                             R21 R4
      101 MOVE                             R22 R19
      102 GETIMPORT                        R20 K13 [table.insert]
      104 CALL                             R20 2 0
      105 FORGLOOP                         R15 2 ; [-8]
      107 GETUPVAL                         R15 3
      108 MOVE                             R16 R6
      109 MOVE                             R17 R12
      110 MOVE                             R18 R1
      111 MOVE                             R19 R2
      112 CALL                             R15 4 2
      113 MOVE                             R13 R15
      114 MOVE                             R14 R16
      115 JUMPIF                           R13 ; [+11]
      116 MOVE                             R16 R4
      117 GETIMPORT                        R17 K18 [table.concat]
      119 MOVE                             R18 R14
      120 LOADK                            R19 K19 ["\n"]
      121 CALL                             R17 2 -1
      122 FASTCALL                         TABLE_INSERT ; [+2]
      123 GETIMPORT                        R15 K13 [table.insert]
      125 CALL                             R15 -1 0
      126 LOADB                            R3 0
      127 GETUPVAL                         R15 4
      128 CALL                             R15 0 1
      129 JUMPIFNOT                        R15 ; [+35]
      130 GETTABLEKS                       R15 R2 K20 ["assetTypeEnum"]
      132 GETIMPORT                        R16 K24 [Enum.AssetType.EyebrowAccessory]
      134 JUMPIFEQ                         R15 R16 ; [+54]
      136 GETIMPORT                        R16 K26 [Enum.AssetType.EyelashAccessory]
      138 JUMPIFEQ                         R15 R16 ; [+50]
      140 GETUPVAL                         R16 5
      141 MOVE                             R17 R11
      142 MOVE                             R18 R12
      143 MOVE                             R19 R1
      144 GETTABLEKS                       R20 R6 K14 ["ReferenceOrigin"]
      146 GETTABLEKS                       R21 R6 K16 ["CageOrigin"]
      148 MOVE                             R22 R2
      149 CALL                             R16 6 2
      150 MOVE                             R13 R16
      151 MOVE                             R14 R17
      152 JUMPIF                           R13 ; [+36]
      153 MOVE                             R17 R4
      154 GETIMPORT                        R18 K18 [table.concat]
      156 MOVE                             R19 R14
      157 LOADK                            R20 K19 ["\n"]
      158 CALL                             R18 2 -1
      159 FASTCALL                         TABLE_INSERT ; [+2]
      160 GETIMPORT                        R16 K13 [table.insert]
      162 CALL                             R16 -1 0
      163 LOADB                            R3 0
      164 JUMP                             ; [+24]
      165 GETUPVAL                         R15 5
      166 MOVE                             R16 R11
      167 MOVE                             R17 R12
      168 MOVE                             R18 R1
      169 GETTABLEKS                       R19 R6 K14 ["ReferenceOrigin"]
      171 GETTABLEKS                       R20 R6 K16 ["CageOrigin"]
      173 MOVE                             R21 R2
      174 CALL                             R15 6 2
      175 MOVE                             R13 R15
      176 MOVE                             R14 R16
      177 JUMPIF                           R13 ; [+11]
      178 MOVE                             R16 R4
      179 GETIMPORT                        R17 K18 [table.concat]
      181 MOVE                             R18 R14
      182 LOADK                            R19 K19 ["\n"]
      183 CALL                             R17 2 -1
      184 FASTCALL                         TABLE_INSERT ; [+2]
      185 GETIMPORT                        R15 K13 [table.insert]
      187 CALL                             R15 -1 0
      188 LOADB                            R3 0
      189 GETUPVAL                         R15 6
      190 MOVE                             R16 R11
      191 MOVE                             R17 R12
      192 MOVE                             R18 R1
      193 MOVE                             R19 R2
      194 CALL                             R15 4 2
      195 MOVE                             R13 R15
      196 MOVE                             R14 R16
      197 JUMPIF                           R13 ; [+11]
      198 MOVE                             R16 R4
      199 GETIMPORT                        R17 K18 [table.concat]
      201 MOVE                             R18 R14
      202 LOADK                            R19 K19 ["\n"]
      203 CALL                             R17 2 -1
      204 FASTCALL                         TABLE_INSERT ; [+2]
      205 GETIMPORT                        R15 K13 [table.insert]
      207 CALL                             R15 -1 0
      208 LOADB                            R3 0
      209 GETUPVAL                         R16 7
      210 GETTABLEKS                       R15 R16 K27 ["validate"]
      212 MOVE                             R16 R11
      213 GETTABLEKS                       R17 R6 K14 ["ReferenceOrigin"]
      215 MOVE                             R18 R12
      216 GETTABLEKS                       R19 R6 K16 ["CageOrigin"]
      218 MOVE                             R20 R1
      219 MOVE                             R21 R2
      220 CALL                             R15 6 2
      221 MOVE                             R13 R15
      222 MOVE                             R14 R16
      223 JUMPIF                           R13 ; [+11]
      224 MOVE                             R16 R4
      225 GETIMPORT                        R17 K18 [table.concat]
      227 MOVE                             R18 R14
      228 LOADK                            R19 K19 ["\n"]
      229 CALL                             R17 2 -1
      230 FASTCALL                         TABLE_INSERT ; [+2]
      231 GETIMPORT                        R15 K13 [table.insert]
      233 CALL                             R15 -1 0
      234 LOADB                            R3 0
      235 JUMPIF                           R3 ; [+20]
      236 GETUPVAL                         R15 8
      237 CALL                             R15 0 1
      238 JUMPIFEQKS                       R15 K28 [""] ; [+14]
      240 GETIMPORT                        R15 K31 [string.format]
      242 LOADK                            R16 K32 ["[Caging best practices](%s)"]
      243 GETUPVAL                         R17 8
      244 CALL                             R17 0 -1
      245 CALL                             R15 -1 1
      246 FASTCALL2                        TABLE_INSERT R4 R15 ; [+5]
      248 MOVE                             R17 R4
      249 MOVE                             R18 R15
      250 GETIMPORT                        R16 K13 [table.insert]
      252 CALL                             R16 2 0
      253 LOADB                            R15 0
      254 MOVE                             R16 R4
      255 RETURN                           R15 2
      256 LOADB                            R15 1
      257 RETURN                           R15 1

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
       18 GETTABLEKS                       R3 R4 K8 ["getFStringLCCageQualityDocumentationLink"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R5 R0 K7 ["flags"]
       25 GETTABLEKS                       R4 R5 K9 ["getFFlagUGCValidationEyebrowEyelashSupport"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R6 R0 K5 ["validation"]
       32 GETTABLEKS                       R5 R6 K10 ["validateVerticesSimilarity"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K4 [require]
       37 GETTABLEKS                       R7 R0 K5 ["validation"]
       39 GETTABLEKS                       R6 R7 K11 ["validateLCCagingRelevancy"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K4 [require]
       44 GETTABLEKS                       R8 R0 K5 ["validation"]
       46 GETTABLEKS                       R7 R8 K12 ["validateRenderMeshInsideOuterCageMesh"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K4 [require]
       51 GETTABLEKS                       R9 R0 K5 ["validation"]
       53 GETTABLEKS                       R8 R9 K13 ["validateCageMeshDistance"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K4 [require]
       58 GETTABLEKS                       R10 R0 K5 ["validation"]
       60 GETTABLEKS                       R9 R10 K14 ["validateCageUVDuplicates"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K4 [require]
       65 GETTABLEKS                       R11 R0 K5 ["validation"]
       67 GETTABLEKS                       R10 R11 K15 ["ValidateModifiedCageArea"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K4 [require]
       72 GETTABLEKS                       R12 R0 K16 ["util"]
       74 GETTABLEKS                       R11 R12 K17 ["Types"]
       76 CALL                             R10 1 1
       77 DUPCLOSURE                       R11 K18 [PROTO_0]
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R2
       87 RETURN                           R11 1
