PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
        8 MOVE                             R8 R1
        9 MOVE                             R9 R5
       10 GETIMPORT                        R7 K2 [table.insert]
       12 CALL                             R7 2 0
       13 FORGLOOP                         R2 2 ; [-8]
       15 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R4 0 0
        2 MOVE                             R5 R2
        3 LOADNIL                          R6
        4 LOADNIL                          R7
        5 FORGPREP                         R5
        6 FASTCALL2                        TABLE_INSERT R4 R8 ; [+5]
        8 MOVE                             R11 R4
        9 MOVE                             R12 R8
       10 GETIMPORT                        R10 K2 [table.insert]
       12 CALL                             R10 2 0
       13 FORGLOOP                         R5 2 ; [-8]
       15 MOVE                             R3 R4
       16 LENGTH                           R4 R3
       17 JUMPIFNOTEQKN                    R4 K3 [0] ; [+2]
       19 RETURN                           R0 0
       20 GETUPVAL                         R4 0
       21 MOVE                             R5 R3
       22 CALL                             R4 1 2
       23 JUMPIFNOT                        R4 ; [+4]
       24 LENGTH                           R6 R5
       25 LENGTH                           R7 R3
       26 JUMPIFEQ                         R6 R7 ; [+16]
       28 GETUPVAL                         R8 1
       29 GETTABLEKS                       R8 R8 K4 ["Keys"]
       31 GETTABLEKS                       R8 R8 K5 ["DescendantIdFetchFailed"]
       33 DUPTABLE                         R9 K7 [{"InstanceFullName"}]
       34 NAMECALL                         R10 R1 K8 ["GetFullName"]
       36 CALL                             R10 1 1
       37 SETTABLEKS                       R10 R9 K6 ["InstanceFullName"]
       39 NAMECALL                         R6 R0 K9 ["fail"]
       41 CALL                             R6 3 0
       42 RETURN                           R0 0
       43 MOVE                             R6 R5
       44 LOADNIL                          R7
       45 LOADNIL                          R8
       46 FORGPREP                         R6
       47 LOADB                            R11 1
       48 GETTABLEKS                       R12 R10 K10 ["status"]
       50 GETUPVAL                         R13 2
       51 GETTABLEKS                       R13 R13 K11 ["ASSET_STATUS"]
       53 GETTABLEKS                       R13 R13 K12 ["UNKNOWN"]
       55 JUMPIFEQ                         R12 R13 ; [+22]
       57 LOADB                            R11 1
       58 GETTABLEKS                       R12 R10 K10 ["status"]
       60 GETUPVAL                         R13 2
       61 GETTABLEKS                       R13 R13 K11 ["ASSET_STATUS"]
       63 GETTABLEKS                       R13 R13 K13 ["REVIEW_PENDING"]
       65 JUMPIFEQ                         R12 R13 ; [+12]
       67 GETTABLEKS                       R12 R10 K10 ["status"]
       69 GETUPVAL                         R13 2
       70 GETTABLEKS                       R13 R13 K11 ["ASSET_STATUS"]
       72 GETTABLEKS                       R13 R13 K14 ["MODERATED"]
       74 JUMPIFEQ                         R12 R13 ; [+2]
       76 LOADB                            R11 0 +1
       77 LOADB                            R11 1
       78 JUMPIFNOT                        R11 ; [+35]
       79 GETTABLEKS                       R13 R10 K15 ["assetId"]
       81 FASTCALL1                        TOSTRING R13 ; [+2]
       82 GETIMPORT                        R12 K17 [tostring]
       84 CALL                             R12 1 1
       85 GETTABLE                         R13 R2 R12
       86 JUMPIFNOT                        R13 ; [+15]
       87 GETIMPORT                        R14 K20 [string.format]
       89 LOADK                            R15 K21 ["%s.%s ( %s )"]
       90 GETTABLEN                        R16 R13 1
       91 GETTABLEKS                       R16 R16 K22 ["instance"]
       93 NAMECALL                         R16 R16 K8 ["GetFullName"]
       95 CALL                             R16 1 1
       96 GETTABLEN                        R17 R13 1
       97 GETTABLEKS                       R17 R17 K23 ["fieldName"]
       99 MOVE                             R18 R12
      100 CALL                             R14 4 1
      101 JUMP                             ; [+1]
      102 MOVE                             R14 R12
      103 GETUPVAL                         R17 1
      104 GETTABLEKS                       R17 R17 K4 ["Keys"]
      106 GETTABLEKS                       R17 R17 K24 ["DescendantIdNotApproved"]
      108 DUPTABLE                         R18 K26 [{"ModerationMessages"}]
      109 SETTABLEKS                       R14 R18 K25 ["ModerationMessages"]
      111 NAMECALL                         R15 R0 K9 ["fail"]
      113 CALL                             R15 3 0
      114 FORGLOOP                         R6 2 ; [-68]
      116 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R8 R6 K0 ["id"]
        8 FASTCALL1                        TONUMBER R8 ; [+2]
        9 GETIMPORT                        R7 K2 [tonumber]
       11 CALL                             R7 1 1
       12 LOADB                            R8 1
       13 SETTABLE                         R8 R1 R7
       14 FORGLOOP                         R2 2 ; [-9]
       16 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R3 R2 K0 ["restrictedUserIds"]
        2 JUMPIFNOT                        R3 ; [+3]
        3 LENGTH                           R4 R3
        4 JUMPIFNOTEQKN                    R4 K1 [0] ; [+2]
        6 RETURN                           R0 0
        7 NEWTABLE                         R5 0 0
        9 MOVE                             R6 R3
       10 LOADNIL                          R7
       11 LOADNIL                          R8
       12 FORGPREP                         R6
       13 GETTABLEKS                       R12 R10 K2 ["id"]
       15 FASTCALL1                        TONUMBER R12 ; [+2]
       16 GETIMPORT                        R11 K4 [tonumber]
       18 CALL                             R11 1 1
       19 LOADB                            R12 1
       20 SETTABLE                         R12 R5 R11
       21 FORGLOOP                         R6 2 ; [-9]
       23 MOVE                             R4 R5
       24 MOVE                             R5 R1
       25 LOADNIL                          R6
       26 LOADNIL                          R7
       27 FORGPREP                         R5
       28 GETTABLEN                        R10 R9 1
       29 GETUPVAL                         R11 0
       30 MOVE                             R12 R8
       31 CALL                             R11 1 2
       32 JUMPIF                           R11 ; [+4]
       33 LOADK                            R15 K5 ["Failed to load asset"]
       34 NAMECALL                         R13 R0 K6 ["forceError"]
       36 CALL                             R13 2 0
       37 GETTABLEKS                       R13 R12 K7 ["creationContext"]
       39 GETTABLEKS                       R13 R13 K8 ["creator"]
       41 GETTABLEKS                       R15 R13 K9 ["userId"]
       43 JUMPIFNOT                        R15 ; [+3]
       44 GETTABLEKS                       R14 R13 K9 ["userId"]
       46 JUMP                             ; [+2]
       47 GETTABLEKS                       R14 R13 K10 ["groupId"]
       49 FASTCALL1                        TONUMBER R14 ; [+3]
       50 MOVE                             R17 R14
       51 GETIMPORT                        R16 K4 [tonumber]
       53 CALL                             R16 1 1
       54 GETTABLE                         R15 R4 R16
       55 JUMPIF                           R15 ; [+22]
       56 GETUPVAL                         R17 1
       57 GETTABLEKS                       R17 R17 K11 ["Keys"]
       59 GETTABLEKS                       R17 R17 K12 ["DescendantIdNotOwned"]
       61 DUPTABLE                         R18 K16 [{"AssetId", "InstanceFullName", "FieldName"}]
       62 SETTABLEKS                       R8 R18 K13 ["AssetId"]
       64 GETTABLEKS                       R19 R10 K17 ["instance"]
       66 NAMECALL                         R19 R19 K18 ["GetFullName"]
       68 CALL                             R19 1 1
       69 SETTABLEKS                       R19 R18 K14 ["InstanceFullName"]
       71 GETTABLEKS                       R19 R10 K19 ["fieldName"]
       73 SETTABLEKS                       R19 R18 K15 ["FieldName"]
       75 NAMECALL                         R15 R0 K20 ["fail"]
       77 CALL                             R15 3 0
       78 GETTABLEKS                       R15 R12 K21 ["moderationResult"]
       80 GETTABLEKS                       R15 R15 K22 ["moderationState"]
       82 GETUPVAL                         R17 2
       83 GETTABLE                         R16 R17 R15
       84 JUMPIFNOT                        R16 ; [+17]
       85 LOADK                            R19 K23 ["Failed to load asset "]
       86 GETTABLEKS                       R26 R10 K17 ["instance"]
       88 NAMECALL                         R26 R26 K18 ["GetFullName"]
       90 CALL                             R26 1 1
       91 MOVE                             R20 R26
       92 LOADK                            R21 K24 ["."]
       93 GETTABLEKS                       R22 R10 K19 ["fieldName"]
       95 LOADK                            R23 K25 [" ( "]
       96 MOVE                             R24 R8
       97 LOADK                            R25 K26 [" ) that is still going through the review process. Please, wait for a notification of completion from the review process and try again."]
       98 CONCAT                           R18 R19 R25
       99 NAMECALL                         R16 R0 K6 ["forceError"]
      101 CALL                             R16 2 0
      102 GETUPVAL                         R17 3
      103 GETTABLE                         R16 R17 R15
      104 JUMPIF                           R16 ; [+23]
      105 GETUPVAL                         R18 1
      106 GETTABLEKS                       R18 R18 K11 ["Keys"]
      108 GETTABLEKS                       R18 R18 K27 ["DescendantIdNotApproved"]
      110 DUPTABLE                         R19 K29 [{"ModerationMessages"}]
      111 GETIMPORT                        R20 K32 [string.format]
      113 LOADK                            R21 K33 ["%s.%s ( %s )"]
      114 GETTABLEKS                       R22 R10 K17 ["instance"]
      116 NAMECALL                         R22 R22 K18 ["GetFullName"]
      118 CALL                             R22 1 1
      119 GETTABLEKS                       R23 R10 K19 ["fieldName"]
      121 MOVE                             R24 R8
      122 CALL                             R20 4 1
      123 SETTABLEKS                       R20 R19 K28 ["ModerationMessages"]
      125 NAMECALL                         R16 R0 K20 ["fail"]
      127 CALL                             R16 3 0
      128 FORGLOOP                         R5 2 ; [-101]
      130 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R4 R3 K0 ["token"]
        2 JUMPIF                           R4 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R4 0
        5 MOVE                             R5 R2
        6 NEWTABLE                         R6 0 0
        8 GETTABLEKS                       R7 R3 K0 ["token"]
       10 GETTABLEKS                       R8 R3 K1 ["universeId"]
       12 LOADB                            R9 1
       13 CALL                             R4 5 1
       14 GETTABLEKS                       R5 R4 K2 ["status"]
       16 JUMPIFNOTEQKS                    R5 K3 ["tooManyAssets"] ; [+16]
       18 GETUPVAL                         R7 1
       19 GETTABLEKS                       R7 R7 K4 ["Keys"]
       21 GETTABLEKS                       R7 R7 K5 ["DescendantIdsTooMany"]
       23 DUPTABLE                         R8 K7 [{"InstanceFullName"}]
       24 NAMECALL                         R9 R1 K8 ["GetFullName"]
       26 CALL                             R9 1 1
       27 SETTABLEKS                       R9 R8 K6 ["InstanceFullName"]
       29 NAMECALL                         R5 R0 K9 ["fail"]
       31 CALL                             R5 3 0
       32 RETURN                           R0 0
       33 GETTABLEKS                       R5 R4 K2 ["status"]
       35 JUMPIFNOTEQKS                    R5 K10 ["loadFailed"] ; [+16]
       37 GETUPVAL                         R7 1
       38 GETTABLEKS                       R7 R7 K4 ["Keys"]
       40 GETTABLEKS                       R7 R7 K11 ["DescendantIdFetchFailed"]
       42 DUPTABLE                         R8 K7 [{"InstanceFullName"}]
       43 NAMECALL                         R9 R1 K8 ["GetFullName"]
       45 CALL                             R9 1 1
       46 SETTABLEKS                       R9 R8 K6 ["InstanceFullName"]
       48 NAMECALL                         R5 R0 K9 ["fail"]
       50 CALL                             R5 3 0
       51 RETURN                           R0 0
       52 GETTABLEKS                       R5 R4 K12 ["verdicts"]
       54 JUMPIF                           R5 ; [+1]
       55 RETURN                           R0 0
       56 MOVE                             R6 R5
       57 LOADNIL                          R7
       58 LOADNIL                          R8
       59 FORGPREP                         R6
       60 GETTABLEKS                       R11 R10 K13 ["allowed"]
       62 JUMPIF                           R11 ; [+28]
       63 GETUPVAL                         R13 1
       64 GETTABLEKS                       R13 R13 K4 ["Keys"]
       66 GETTABLEKS                       R13 R13 K14 ["DescendantIdNotOwned"]
       68 DUPTABLE                         R14 K17 [{"AssetId", "InstanceFullName", "FieldName"}]
       69 GETTABLEKS                       R15 R10 K18 ["assetId"]
       71 SETTABLEKS                       R15 R14 K15 ["AssetId"]
       73 GETTABLEKS                       R15 R10 K19 ["entry"]
       75 GETTABLEKS                       R15 R15 K20 ["instance"]
       77 NAMECALL                         R15 R15 K8 ["GetFullName"]
       79 CALL                             R15 1 1
       80 SETTABLEKS                       R15 R14 K6 ["InstanceFullName"]
       82 GETTABLEKS                       R15 R10 K19 ["entry"]
       84 GETTABLEKS                       R15 R15 K21 ["fieldName"]
       86 SETTABLEKS                       R15 R14 K16 ["FieldName"]
       88 NAMECALL                         R11 R0 K9 ["fail"]
       90 CALL                             R11 3 0
       91 FORGLOOP                         R6 2 ; [-32]
       93 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R1 K0 ["consumerConfig"]
        2 GETTABLEKS                       R3 R2 K1 ["source"]
        4 JUMPIFNOTEQKS                    R3 K2 ["AutoSetup"] ; [+2]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R3 R1 K3 ["rootInstance"]
        9 GETTABLEKS                       R4 R1 K4 ["contentIds"]
       11 GETTABLEKS                       R5 R2 K5 ["consumerEnv"]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K6 ["ConsumerEnv"]
       16 GETTABLEKS                       R6 R6 K7 ["Studio"]
       18 JUMPIFNOTEQ                      R5 R6 ; [+7]
       20 GETUPVAL                         R5 1
       21 MOVE                             R6 R0
       22 MOVE                             R7 R3
       23 MOVE                             R8 R4
       24 CALL                             R5 3 0
       25 RETURN                           R0 0
       26 GETTABLEKS                       R5 R2 K5 ["consumerEnv"]
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R6 R6 K6 ["ConsumerEnv"]
       31 GETTABLEKS                       R6 R6 K8 ["Backend"]
       33 JUMPIFNOTEQ                      R5 R6 ; [+8]
       35 GETUPVAL                         R5 2
       36 MOVE                             R6 R0
       37 MOVE                             R7 R4
       38 GETTABLEKS                       R8 R2 K9 ["backendConfigs"]
       40 CALL                             R5 3 0
       41 RETURN                           R0 0
       42 GETTABLEKS                       R5 R2 K5 ["consumerEnv"]
       44 GETUPVAL                         R6 0
       45 GETTABLEKS                       R6 R6 K6 ["ConsumerEnv"]
       47 GETTABLEKS                       R6 R6 K10 ["IEC"]
       49 JUMPIFNOTEQ                      R5 R6 ; [+8]
       51 GETUPVAL                         R5 3
       52 MOVE                             R6 R0
       53 MOVE                             R7 R3
       54 MOVE                             R8 R4
       55 GETTABLEKS                       R9 R2 K11 ["iecConfigs"]
       57 CALL                             R5 4 0
       58 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K6 ["validationSystem"]
       18 GETTABLEKS                       R3 R3 K7 ["ErrorSourceStrings"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K8 ["util"]
       25 GETTABLEKS                       R4 R4 K9 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R5 R0 K6 ["validationSystem"]
       32 GETTABLEKS                       R5 R5 K10 ["ValidationEnums"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K4 [require]
       37 GETTABLEKS                       R6 R0 K8 ["util"]
       39 GETTABLEKS                       R6 R6 K11 ["canPublishAssets"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K4 [require]
       44 GETTABLEKS                       R7 R0 K8 ["util"]
       46 GETTABLEKS                       R7 R7 K12 ["getAssetCreationDetails"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K4 [require]
       51 GETTABLEKS                       R8 R0 K8 ["util"]
       53 GETTABLEKS                       R8 R8 K13 ["getAssetCreationDetailsRCC"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K4 [require]
       58 GETTABLEKS                       R9 R0 K14 ["flags"]
       60 GETTABLEKS                       R9 R9 K15 ["getFFlagUGCValidateMigrateSchemaProperties"]
       62 CALL                             R8 1 1
       63 NEWTABLE                         R9 2 0
       65 LOADB                            R10 1
       66 SETTABLEKS                       R10 R9 K16 ["MODERATION_STATE_REVIEWING"]
       68 LOADB                            R10 1
       69 SETTABLEKS                       R10 R9 K17 ["Reviewing"]
       71 NEWTABLE                         R10 2 0
       73 LOADB                            R11 1
       74 SETTABLEKS                       R11 R10 K18 ["MODERATION_STATE_APPROVED"]
       76 LOADB                            R11 1
       77 SETTABLEKS                       R11 R10 K19 ["Approved"]
       79 DUPCLOSURE                       R11 K20 [PROTO_0]
       80 DUPCLOSURE                       R12 K21 [PROTO_1]
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R1
       84 DUPCLOSURE                       R13 K22 [PROTO_2]
       85 DUPCLOSURE                       R14 K23 [PROTO_3]
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R10
       90 DUPCLOSURE                       R15 K24 [PROTO_4]
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R2
       93 NEWTABLE                         R16 8 0
       95 GETTABLEKS                       R17 R1 K25 ["AllAssetUploadCategoriesIncludingMakeup"]
       97 SETTABLEKS                       R17 R16 K26 ["categories"]
       99 NEWTABLE                         R17 0 3
      101 GETTABLEKS                       R18 R4 K27 ["SharedDataMember"]
      103 GETTABLEKS                       R18 R18 K28 ["rootInstance"]
      105 GETTABLEKS                       R19 R4 K27 ["SharedDataMember"]
      107 GETTABLEKS                       R19 R19 K29 ["consumerConfig"]
      109 GETTABLEKS                       R20 R4 K27 ["SharedDataMember"]
      111 GETTABLEKS                       R20 R20 K30 ["contentIds"]
      113 SETLIST                          R17 R18 3 [1]
      115 SETTABLEKS                       R17 R16 K31 ["requiredData"]
      117 SETTABLEKS                       R8 R16 K32 ["fflag"]
      119 NEWTABLE                         R17 0 0
      121 SETTABLEKS                       R17 R16 K33 ["expectedFailures"]
      123 DUPCLOSURE                       R17 K34 [PROTO_5]
      124 CAPTURE                          VAL R4
      125 CAPTURE                          VAL R12
      126 CAPTURE                          VAL R14
      127 CAPTURE                          VAL R15
      128 SETTABLEKS                       R17 R16 K35 ["run"]
      130 RETURN                           R16 1
