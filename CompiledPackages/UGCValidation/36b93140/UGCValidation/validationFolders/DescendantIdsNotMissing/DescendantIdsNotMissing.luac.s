PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["CONTENT_ID_EDITABLE_PROPERTY"]
        3 GETTABLEKS                       R4 R0 K1 ["ClassName"]
        5 GETTABLE                         R2 R3 R4
        6 MOVE                             R3 R2
        7 JUMPIFNOT                        R3 ; [+1]
        8 GETTABLE                         R3 R2 R1
        9 JUMPIF                           R3 ; [+2]
       10 LOADB                            R4 0
       11 RETURN                           R4 1
       12 GETTABLE                         R5 R0 R3
       13 GETTABLEKS                       R5 R5 K2 ["SourceType"]
       15 GETIMPORT                        R6 K6 [Enum.ContentSourceType.Object]
       17 JUMPIFEQ                         R5 R6 ; [+2]
       19 LOADB                            R4 0 +1
       20 LOADB                            R4 1
       21 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R3 K0 ["rbxassetid://"]
        2 GETUPVAL                         R4 1
        3 CONCAT                           R2 R3 R4
        4 NAMECALL                         R0 R0 K1 ["CanLoadAsset"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_2:
        0 GETTABLEKS                       R3 R1 K0 ["consumerConfig"]
        2 GETTABLEKS                       R3 R3 K1 ["consumerEnv"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["ConsumerEnv"]
        7 GETTABLEKS                       R4 R4 K3 ["IEC"]
        9 JUMPIFEQ                         R3 R4 ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 NEWTABLE                         R3 0 0
       15 GETTABLEKS                       R4 R1 K4 ["contentIds"]
       17 LOADNIL                          R5
       18 LOADNIL                          R6
       19 FORGPREP                         R4
       20 MOVE                             R9 R8
       21 LOADNIL                          R10
       22 LOADNIL                          R11
       23 FORGPREP                         R9
       24 GETTABLEKS                       R15 R13 K5 ["instance"]
       26 GETTABLE                         R14 R3 R15
       27 JUMPIF                           R14 ; [+5]
       28 NEWTABLE                         R14 0 0
       30 GETTABLEKS                       R15 R13 K5 ["instance"]
       32 SETTABLE                         R14 R3 R15
       33 GETTABLEKS                       R15 R13 K6 ["fieldName"]
       35 LOADB                            R16 1
       36 SETTABLE                         R16 R14 R15
       37 FORGLOOP                         R9 2 ; [-14]
       39 FORGLOOP                         R4 2 ; [-20]
       41 GETTABLEKS                       R4 R1 K7 ["rootInstance"]
       43 NAMECALL                         R4 R4 K8 ["GetDescendants"]
       45 CALL                             R4 1 1
       46 GETTABLEKS                       R7 R1 K7 ["rootInstance"]
       48 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
       50 MOVE                             R6 R4
       51 GETIMPORT                        R5 K11 [table.insert]
       53 CALL                             R5 2 0
       54 MOVE                             R5 R4
       55 LOADNIL                          R6
       56 LOADNIL                          R7
       57 FORGPREP                         R5
       58 GETUPVAL                         R11 1
       59 GETTABLEKS                       R11 R11 K12 ["CONTENT_ID_FIELDS"]
       61 GETTABLEKS                       R12 R9 K13 ["ClassName"]
       63 GETTABLE                         R10 R11 R12
       64 JUMPIFNOT                        R10 ; [+130]
       65 GETUPVAL                         R12 1
       66 GETTABLEKS                       R12 R12 K14 ["CONTENT_ID_REQUIRED_FIELDS"]
       68 GETTABLEKS                       R13 R9 K13 ["ClassName"]
       70 GETTABLE                         R11 R12 R13
       71 GETTABLE                         R12 R3 R9
       72 MOVE                             R13 R10
       73 LOADNIL                          R14
       74 LOADNIL                          R15
       75 FORGPREP                         R13
       76 GETTABLE                         R18 R9 R17
       77 LOADB                            R19 0
       78 JUMPIFEQKNIL                     R11 ; [+6]
       80 GETTABLE                         R20 R11 R17
       81 JUMPIFEQKB                       R20 TRUE ; [+2]
       83 LOADB                            R19 0 +1
       84 LOADB                            R19 1
       85 JUMPIFEQKS                       R18 K15 [""] ; [+21]
       87 JUMPIFNOT                        R12 ; [+2]
       88 GETTABLE                         R20 R12 R17
       89 JUMPIF                           R20 ; [+57]
       90 GETUPVAL                         R22 2
       91 GETTABLEKS                       R22 R22 K16 ["Keys"]
       93 GETTABLEKS                       R22 R22 K17 ["DescendantIdMalformed"]
       95 DUPTABLE                         R23 K20 [{"InstanceFullName", "FieldName"}]
       96 NAMECALL                         R24 R9 K21 ["GetFullName"]
       98 CALL                             R24 1 1
       99 SETTABLEKS                       R24 R23 K18 ["InstanceFullName"]
      101 SETTABLEKS                       R17 R23 K19 ["FieldName"]
      103 NAMECALL                         R20 R0 K22 ["fail"]
      105 CALL                             R20 3 0
      106 JUMP                             ; [+40]
      107 JUMPIFNOT                        R19 ; [+39]
      108 JUMPIFNOT                        R2 ; [+22]
      109 GETUPVAL                         R22 1
      110 GETTABLEKS                       R22 R22 K23 ["CONTENT_ID_EDITABLE_PROPERTY"]
      112 GETTABLEKS                       R23 R9 K13 ["ClassName"]
      114 GETTABLE                         R21 R22 R23
      115 MOVE                             R22 R21
      116 JUMPIFNOT                        R22 ; [+1]
      117 GETTABLE                         R22 R21 R17
      118 JUMPIF                           R22 ; [+2]
      119 LOADB                            R20 0
      120 JUMP                             ; [+9]
      121 GETTABLE                         R23 R9 R22
      122 GETTABLEKS                       R23 R23 K24 ["SourceType"]
      124 GETIMPORT                        R24 K28 [Enum.ContentSourceType.Object]
      126 JUMPIFEQ                         R23 R24 ; [+2]
      128 LOADB                            R20 0 +1
      129 LOADB                            R20 1
      130 JUMPIF                           R20 ; [+16]
      131 GETUPVAL                         R22 2
      132 GETTABLEKS                       R22 R22 K16 ["Keys"]
      134 GETTABLEKS                       R22 R22 K29 ["DescendantIdMissing"]
      136 DUPTABLE                         R23 K20 [{"InstanceFullName", "FieldName"}]
      137 NAMECALL                         R24 R9 K21 ["GetFullName"]
      139 CALL                             R24 1 1
      140 SETTABLEKS                       R24 R23 K18 ["InstanceFullName"]
      142 SETTABLEKS                       R17 R23 K19 ["FieldName"]
      144 NAMECALL                         R20 R0 K22 ["fail"]
      146 CALL                             R20 3 0
      147 FORGLOOP                         R13 2 ; [-72]
      149 GETUPVAL                         R13 3
      150 CALL                             R13 0 1
      151 JUMPIFNOT                        R13 ; [+43]
      152 GETUPVAL                         R14 1
      153 GETTABLEKS                       R14 R14 K30 ["CONTENT_FIELDS_WITHOUT_CONTENTID"]
      155 GETTABLEKS                       R15 R9 K13 ["ClassName"]
      157 GETTABLE                         R13 R14 R15
      158 JUMPIFNOT                        R13 ; [+36]
      159 MOVE                             R14 R13
      160 LOADNIL                          R15
      161 LOADNIL                          R16
      162 FORGPREP                         R14
      163 GETTABLE                         R19 R9 R18
      164 GETTABLEKS                       R20 R19 K24 ["SourceType"]
      166 GETIMPORT                        R21 K32 [Enum.ContentSourceType.Uri]
      168 JUMPIFNOTEQ                      R20 R21 ; [+24]
      170 GETTABLEKS                       R20 R19 K31 ["Uri"]
      172 JUMPIFEQKS                       R20 K15 [""] ; [+20]
      174 JUMPIFNOT                        R12 ; [+2]
      175 GETTABLE                         R20 R12 R18
      176 JUMPIF                           R20 ; [+16]
      177 GETUPVAL                         R22 2
      178 GETTABLEKS                       R22 R22 K16 ["Keys"]
      180 GETTABLEKS                       R22 R22 K17 ["DescendantIdMalformed"]
      182 DUPTABLE                         R23 K20 [{"InstanceFullName", "FieldName"}]
      183 NAMECALL                         R24 R9 K21 ["GetFullName"]
      185 CALL                             R24 1 1
      186 SETTABLEKS                       R24 R23 K18 ["InstanceFullName"]
      188 SETTABLEKS                       R18 R23 K19 ["FieldName"]
      190 NAMECALL                         R20 R0 K22 ["fail"]
      192 CALL                             R20 3 0
      193 FORGLOOP                         R14 2 ; [-31]
      195 FORGLOOP                         R5 2 ; [-138]
      197 GETTABLEKS                       R6 R1 K0 ["consumerConfig"]
      199 GETTABLEKS                       R6 R6 K1 ["consumerEnv"]
      201 GETUPVAL                         R7 0
      202 GETTABLEKS                       R7 R7 K2 ["ConsumerEnv"]
      204 GETTABLEKS                       R7 R7 K33 ["Backend"]
      206 JUMPIFEQ                         R6 R7 ; [+2]
      208 LOADB                            R5 0 +1
      209 LOADB                            R5 1
      210 JUMPIF                           R5 ; [+3]
      211 GETUPVAL                         R6 4
      212 CALL                             R6 0 1
      213 JUMPIFNOT                        R6 ; [+50]
      214 GETTABLEKS                       R6 R1 K4 ["contentIds"]
      216 LOADNIL                          R7
      217 LOADNIL                          R8
      218 FORGPREP                         R6
      219 GETTABLEN                        R11 R10 1
      220 GETIMPORT                        R12 K35 [pcall]
      222 NEWCLOSURE                       R13 P0
      223 CAPTURE                          UPVAL U5
      224 CAPTURE                          VAL R9
      225 CALL                             R12 1 2
      226 JUMPIFNOT                        R12 ; [+1]
      227 JUMPIF                           R13 ; [+34]
      228 JUMPIFNOT                        R5 ; [+15]
      229 GETIMPORT                        R16 K38 [string.format]
      231 LOADK                            R17 K39 ["Failed to load asset referenced by %s.%s. Make sure the asset exists and try again."]
      232 GETTABLEKS                       R18 R11 K5 ["instance"]
      234 NAMECALL                         R18 R18 K21 ["GetFullName"]
      236 CALL                             R18 1 1
      237 GETTABLEKS                       R19 R11 K6 ["fieldName"]
      239 CALL                             R16 3 -1
      240 NAMECALL                         R14 R0 K40 ["fetchError"]
      242 CALL                             R14 -1 0
      243 JUMP                             ; [+18]
      244 GETUPVAL                         R16 2
      245 GETTABLEKS                       R16 R16 K16 ["Keys"]
      247 GETTABLEKS                       R16 R16 K41 ["AssetDoesNotExist"]
      249 DUPTABLE                         R17 K44 [{"AssetId", "InstancePath"}]
      250 SETTABLEKS                       R9 R17 K42 ["AssetId"]
      252 GETTABLEKS                       R18 R11 K5 ["instance"]
      254 NAMECALL                         R18 R18 K21 ["GetFullName"]
      256 CALL                             R18 1 1
      257 SETTABLEKS                       R18 R17 K43 ["InstancePath"]
      259 NAMECALL                         R14 R0 K22 ["fail"]
      261 CALL                             R14 3 0
      262 FORGLOOP                         R6 2 ; [-44]
      264 RETURN                           R0 0

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
       22 GETTABLEKS                       R4 R1 K10 ["validationSystem"]
       24 GETTABLEKS                       R4 R4 K11 ["ErrorSourceStrings"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K8 [require]
       29 GETTABLEKS                       R5 R1 K12 ["util"]
       31 GETTABLEKS                       R5 R5 K13 ["Types"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K8 [require]
       36 GETTABLEKS                       R6 R1 K10 ["validationSystem"]
       38 GETTABLEKS                       R6 R6 K14 ["ValidationEnums"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K8 [require]
       43 GETTABLEKS                       R7 R1 K15 ["flags"]
       45 GETTABLEKS                       R7 R7 K16 ["getFFlagUGCValidateMigrateSchemaProperties"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K8 [require]
       50 GETTABLEKS                       R8 R1 K15 ["flags"]
       52 GETTABLEKS                       R8 R8 K17 ["getFFlagUGCValidateCheckDescendantIdsLoadable"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K8 [require]
       57 GETTABLEKS                       R9 R1 K15 ["flags"]
       59 GETTABLEKS                       R9 R9 K18 ["getFFlagUGCValidateAllowEmissives"]
       61 CALL                             R8 1 1
       62 DUPCLOSURE                       R9 K19 [PROTO_0]
       63 CAPTURE                          VAL R2
       64 NEWTABLE                         R10 8 0
       66 GETTABLEKS                       R11 R2 K20 ["AllAssetUploadCategories"]
       68 SETTABLEKS                       R11 R10 K21 ["categories"]
       70 NEWTABLE                         R11 0 3
       72 GETTABLEKS                       R12 R5 K22 ["SharedDataMember"]
       74 GETTABLEKS                       R12 R12 K23 ["rootInstance"]
       76 GETTABLEKS                       R13 R5 K22 ["SharedDataMember"]
       78 GETTABLEKS                       R13 R13 K24 ["consumerConfig"]
       80 GETTABLEKS                       R14 R5 K22 ["SharedDataMember"]
       82 GETTABLEKS                       R14 R14 K25 ["contentIds"]
       84 SETLIST                          R11 R12 3 [1]
       86 SETTABLEKS                       R11 R10 K26 ["requiredData"]
       88 SETTABLEKS                       R6 R10 K27 ["fflag"]
       90 NEWTABLE                         R11 0 0
       92 SETTABLEKS                       R11 R10 K28 ["expectedFailures"]
       94 DUPCLOSURE                       R11 K29 [PROTO_2]
       95 CAPTURE                          VAL R5
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R3
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R0
      101 SETTABLEKS                       R11 R10 K30 ["run"]
      103 RETURN                           R10 1
