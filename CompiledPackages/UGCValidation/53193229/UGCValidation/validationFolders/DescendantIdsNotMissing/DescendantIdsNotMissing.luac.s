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
       64 JUMPIFNOT                        R10 ; [+84]
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
      149 FORGLOOP                         R5 2 ; [-92]
      151 GETTABLEKS                       R6 R1 K0 ["consumerConfig"]
      153 GETTABLEKS                       R6 R6 K1 ["consumerEnv"]
      155 GETUPVAL                         R7 0
      156 GETTABLEKS                       R7 R7 K2 ["ConsumerEnv"]
      158 GETTABLEKS                       R7 R7 K30 ["Backend"]
      160 JUMPIFEQ                         R6 R7 ; [+2]
      162 LOADB                            R5 0 +1
      163 LOADB                            R5 1
      164 JUMPIF                           R5 ; [+3]
      165 GETUPVAL                         R6 3
      166 CALL                             R6 0 1
      167 JUMPIFNOT                        R6 ; [+50]
      168 GETTABLEKS                       R6 R1 K4 ["contentIds"]
      170 LOADNIL                          R7
      171 LOADNIL                          R8
      172 FORGPREP                         R6
      173 GETTABLEN                        R11 R10 1
      174 GETIMPORT                        R12 K32 [pcall]
      176 NEWCLOSURE                       R13 P0
      177 CAPTURE                          UPVAL U4
      178 CAPTURE                          VAL R9
      179 CALL                             R12 1 2
      180 JUMPIFNOT                        R12 ; [+1]
      181 JUMPIF                           R13 ; [+34]
      182 JUMPIFNOT                        R5 ; [+15]
      183 GETIMPORT                        R16 K35 [string.format]
      185 LOADK                            R17 K36 ["Failed to load asset referenced by %s.%s. Make sure the asset exists and try again."]
      186 GETTABLEKS                       R18 R11 K5 ["instance"]
      188 NAMECALL                         R18 R18 K21 ["GetFullName"]
      190 CALL                             R18 1 1
      191 GETTABLEKS                       R19 R11 K6 ["fieldName"]
      193 CALL                             R16 3 -1
      194 NAMECALL                         R14 R0 K37 ["fetchError"]
      196 CALL                             R14 -1 0
      197 JUMP                             ; [+18]
      198 GETUPVAL                         R16 2
      199 GETTABLEKS                       R16 R16 K16 ["Keys"]
      201 GETTABLEKS                       R16 R16 K38 ["AssetDoesNotExist"]
      203 DUPTABLE                         R17 K41 [{"AssetId", "InstancePath"}]
      204 SETTABLEKS                       R9 R17 K39 ["AssetId"]
      206 GETTABLEKS                       R18 R11 K5 ["instance"]
      208 NAMECALL                         R18 R18 K21 ["GetFullName"]
      210 CALL                             R18 1 1
      211 SETTABLEKS                       R18 R17 K40 ["InstancePath"]
      213 NAMECALL                         R14 R0 K22 ["fail"]
      215 CALL                             R14 3 0
      216 FORGLOOP                         R6 2 ; [-44]
      218 RETURN                           R0 0

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
       55 DUPCLOSURE                       R8 K18 [PROTO_0]
       56 CAPTURE                          VAL R2
       57 NEWTABLE                         R9 8 0
       59 GETTABLEKS                       R10 R2 K19 ["AllAssetUploadCategories"]
       61 SETTABLEKS                       R10 R9 K20 ["categories"]
       63 NEWTABLE                         R10 0 3
       65 GETTABLEKS                       R11 R5 K21 ["SharedDataMember"]
       67 GETTABLEKS                       R11 R11 K22 ["rootInstance"]
       69 GETTABLEKS                       R12 R5 K21 ["SharedDataMember"]
       71 GETTABLEKS                       R12 R12 K23 ["consumerConfig"]
       73 GETTABLEKS                       R13 R5 K21 ["SharedDataMember"]
       75 GETTABLEKS                       R13 R13 K24 ["contentIds"]
       77 SETLIST                          R10 R11 3 [1]
       79 SETTABLEKS                       R10 R9 K25 ["requiredData"]
       81 SETTABLEKS                       R6 R9 K26 ["fflag"]
       83 NEWTABLE                         R10 0 0
       85 SETTABLEKS                       R10 R9 K27 ["expectedFailures"]
       87 DUPCLOSURE                       R10 K28 [PROTO_2]
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R0
       93 SETTABLEKS                       R10 R9 K29 ["run"]
       95 RETURN                           R9 1
