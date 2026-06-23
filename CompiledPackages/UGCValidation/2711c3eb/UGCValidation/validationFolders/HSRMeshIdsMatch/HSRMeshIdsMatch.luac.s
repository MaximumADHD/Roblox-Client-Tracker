PROTO_0:
        0 LENGTH                           R3 R0
        1 JUMPIFEQKN                       R3 K0 [1] ; [+17]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K1 ["Keys"]
        6 GETTABLEKS                       R5 R5 K2 ["HSRAssetInvalidRoot"]
        8 DUPTABLE                         R6 K4 [{"InstancePath"}]
        9 NAMECALL                         R7 R1 K5 ["GetFullName"]
       11 CALL                             R7 1 1
       12 SETTABLEKS                       R7 R6 K3 ["InstancePath"]
       14 NAMECALL                         R3 R2 K6 ["fail"]
       16 CALL                             R3 3 0
       17 LOADNIL                          R3
       18 RETURN                           R3 1
       19 GETTABLEN                        R3 R0 1
       20 LOADK                            R6 K7 ["HiddenSurfaceRemovalAsset"]
       21 NAMECALL                         R4 R3 K8 ["IsA"]
       23 CALL                             R4 2 1
       24 JUMPIF                           R4 ; [+16]
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R6 R6 K1 ["Keys"]
       28 GETTABLEKS                       R6 R6 K2 ["HSRAssetInvalidRoot"]
       30 DUPTABLE                         R7 K4 [{"InstancePath"}]
       31 NAMECALL                         R8 R1 K5 ["GetFullName"]
       33 CALL                             R8 1 1
       34 SETTABLEKS                       R8 R7 K3 ["InstancePath"]
       36 NAMECALL                         R4 R2 K6 ["fail"]
       38 CALL                             R4 3 0
       39 LOADNIL                          R4
       40 RETURN                           R4 1
       41 NAMECALL                         R5 R3 K9 ["GetDescendants"]
       43 CALL                             R5 1 1
       44 LENGTH                           R4 R5
       45 LOADN                            R5 0
       46 JUMPIFNOTLT                      R5 R4 ; [+17]
       48 GETUPVAL                         R6 0
       49 GETTABLEKS                       R6 R6 K1 ["Keys"]
       51 GETTABLEKS                       R6 R6 K10 ["HSRAssetHasChildren"]
       53 DUPTABLE                         R7 K4 [{"InstancePath"}]
       54 NAMECALL                         R8 R1 K5 ["GetFullName"]
       56 CALL                             R8 1 1
       57 SETTABLEKS                       R8 R7 K3 ["InstancePath"]
       59 NAMECALL                         R4 R2 K6 ["fail"]
       61 CALL                             R4 3 0
       62 LOADNIL                          R4
       63 RETURN                           R4 1
       64 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["ValidateHSRMeshIds"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["consumerConfig"]
        2 GETTABLEKS                       R2 R2 K1 ["consumerEnv"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["ConsumerEnv"]
        7 GETTABLEKS                       R3 R3 K3 ["IEC"]
        9 JUMPIFNOTEQ                      R2 R3 ; [+2]
       11 RETURN                           R0 0
       12 GETTABLEKS                       R3 R1 K0 ["consumerConfig"]
       14 GETTABLEKS                       R3 R3 K1 ["consumerEnv"]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K2 ["ConsumerEnv"]
       19 GETTABLEKS                       R4 R4 K4 ["Backend"]
       21 JUMPIFEQ                         R3 R4 ; [+2]
       23 LOADB                            R2 0 +1
       24 LOADB                            R2 1
       25 GETUPVAL                         R3 1
       26 CALL                             R3 0 1
       27 GETTABLEKS                       R4 R1 K5 ["rootInstance"]
       29 NAMECALL                         R4 R4 K6 ["GetDescendants"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R7 R1 K5 ["rootInstance"]
       34 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
       36 MOVE                             R6 R4
       37 GETIMPORT                        R5 K9 [table.insert]
       39 CALL                             R5 2 0
       40 MOVE                             R5 R4
       41 LOADNIL                          R6
       42 LOADNIL                          R7
       43 FORGPREP                         R5
       44 LOADK                            R12 K10 ["WrapLayer"]
       45 NAMECALL                         R10 R9 K11 ["IsA"]
       47 CALL                             R10 2 1
       48 JUMPIFNOT                        R10 ; [+92]
       49 GETTABLEKS                       R10 R9 K12 ["HSRAssetId"]
       51 JUMPIFNOT                        R10 ; [+2]
       52 JUMPIFNOTEQKS                    R10 K13 [""] ; [+17]
       54 JUMPIFNOT                        R2 ; [+86]
       55 GETUPVAL                         R13 2
       56 GETTABLEKS                       R13 R13 K14 ["Keys"]
       58 GETTABLEKS                       R13 R13 K15 ["HSRAssetIdRequired"]
       60 DUPTABLE                         R14 K17 [{"InstancePath"}]
       61 NAMECALL                         R15 R9 K18 ["GetFullName"]
       63 CALL                             R15 1 1
       64 SETTABLEKS                       R15 R14 K16 ["InstancePath"]
       66 NAMECALL                         R11 R0 K19 ["fail"]
       68 CALL                             R11 3 0
       69 JUMP                             ; [+71]
       70 GETUPVAL                         R11 3
       71 GETTABLEKS                       R11 R11 K20 ["tryGetAssetIdFromContentId"]
       73 MOVE                             R12 R10
       74 CALL                             R11 1 1
       75 JUMPIF                           R11 ; [+15]
       76 GETUPVAL                         R14 2
       77 GETTABLEKS                       R14 R14 K14 ["Keys"]
       79 GETTABLEKS                       R14 R14 K21 ["HSRAssetIdInvalidUrl"]
       81 DUPTABLE                         R15 K17 [{"InstancePath"}]
       82 NAMECALL                         R16 R9 K18 ["GetFullName"]
       84 CALL                             R16 1 1
       85 SETTABLEKS                       R16 R15 K16 ["InstancePath"]
       87 NAMECALL                         R12 R0 K19 ["fail"]
       89 CALL                             R12 3 0
       90 JUMP                             ; [+50]
       91 GETTABLEKS                       R13 R1 K22 ["hsrAssets"]
       93 GETTABLE                         R12 R13 R11
       94 JUMPIFNOT                        R12 ; [+46]
       95 GETUPVAL                         R13 4
       96 MOVE                             R14 R12
       97 MOVE                             R15 R9
       98 MOVE                             R16 R0
       99 CALL                             R13 3 1
      100 JUMPIFNOT                        R13 ; [+40]
      101 JUMPIFNOT                        R3 ; [+39]
      102 GETUPVAL                         R14 5
      103 NEWCLOSURE                       R15 P0
      104 CAPTURE                          UPVAL U6
      105 CAPTURE                          VAL R9
      106 CAPTURE                          VAL R13
      107 NEWTABLE                         R16 0 0
      109 CALL                             R14 2 2
      110 JUMPIF                           R14 ; [+15]
      111 GETUPVAL                         R18 2
      112 GETTABLEKS                       R18 R18 K14 ["Keys"]
      114 GETTABLEKS                       R18 R18 K23 ["HSRMeshIdValidationError"]
      116 DUPTABLE                         R19 K17 [{"InstancePath"}]
      117 NAMECALL                         R20 R9 K18 ["GetFullName"]
      119 CALL                             R20 1 1
      120 SETTABLEKS                       R20 R19 K16 ["InstancePath"]
      122 NAMECALL                         R16 R0 K19 ["fail"]
      124 CALL                             R16 3 0
      125 JUMP                             ; [+15]
      126 JUMPIF                           R15 ; [+14]
      127 GETUPVAL                         R18 2
      128 GETTABLEKS                       R18 R18 K14 ["Keys"]
      130 GETTABLEKS                       R18 R18 K24 ["HSRMeshIdsMismatch"]
      132 DUPTABLE                         R19 K17 [{"InstancePath"}]
      133 NAMECALL                         R20 R9 K18 ["GetFullName"]
      135 CALL                             R20 1 1
      136 SETTABLEKS                       R20 R19 K16 ["InstancePath"]
      138 NAMECALL                         R16 R0 K19 ["fail"]
      140 CALL                             R16 3 0
      141 FORGLOOP                         R5 2 ; [-98]
      143 RETURN                           R0 0

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
       17 GETTABLEKS                       R3 R1 K9 ["util"]
       19 GETTABLEKS                       R3 R3 K10 ["Types"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R4 R1 K11 ["validationSystem"]
       26 GETTABLEKS                       R4 R4 K12 ["ValidationEnums"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K8 [require]
       31 GETTABLEKS                       R5 R1 K11 ["validationSystem"]
       33 GETTABLEKS                       R5 R5 K13 ["ErrorSourceStrings"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K8 [require]
       38 GETTABLEKS                       R6 R1 K9 ["util"]
       40 GETTABLEKS                       R6 R6 K14 ["ParseContentIds"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K8 [require]
       45 GETTABLEKS                       R7 R1 K9 ["util"]
       47 GETTABLEKS                       R7 R7 K15 ["pcallDeferred"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K8 [require]
       52 GETTABLEKS                       R8 R1 K16 ["flags"]
       54 GETTABLEKS                       R8 R8 K17 ["getFFlagUGCValidateMigrateSchemaProperties"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K8 [require]
       59 GETTABLEKS                       R9 R1 K16 ["flags"]
       61 GETTABLEKS                       R9 R9 K18 ["getFFlagUGCValidateHSRMeshIds"]
       63 CALL                             R8 1 1
       64 NEWTABLE                         R9 8 0
       66 NEWTABLE                         R10 0 3
       68 GETTABLEKS                       R11 R3 K19 ["UploadCategory"]
       70 GETTABLEKS                       R11 R11 K20 ["TORSO_AND_LIMBS"]
       72 GETTABLEKS                       R12 R3 K19 ["UploadCategory"]
       74 GETTABLEKS                       R12 R12 K21 ["DYNAMIC_HEAD"]
       76 GETTABLEKS                       R13 R3 K19 ["UploadCategory"]
       78 GETTABLEKS                       R13 R13 K22 ["LAYERED_CLOTHING"]
       80 SETLIST                          R10 R11 3 [1]
       82 SETTABLEKS                       R10 R9 K23 ["categories"]
       84 NEWTABLE                         R10 0 3
       86 GETTABLEKS                       R11 R3 K24 ["SharedDataMember"]
       88 GETTABLEKS                       R11 R11 K25 ["rootInstance"]
       90 GETTABLEKS                       R12 R3 K24 ["SharedDataMember"]
       92 GETTABLEKS                       R12 R12 K26 ["consumerConfig"]
       94 GETTABLEKS                       R13 R3 K24 ["SharedDataMember"]
       96 GETTABLEKS                       R13 R13 K27 ["hsrAssets"]
       98 SETLIST                          R10 R11 3 [1]
      100 SETTABLEKS                       R10 R9 K28 ["requiredData"]
      102 SETTABLEKS                       R7 R9 K29 ["fflag"]
      104 NEWTABLE                         R10 0 0
      106 SETTABLEKS                       R10 R9 K30 ["expectedFailures"]
      108 DUPCLOSURE                       R10 K31 [PROTO_0]
      109 CAPTURE                          VAL R4
      110 DUPCLOSURE                       R11 K32 [PROTO_2]
      111 CAPTURE                          VAL R3
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R4
      114 CAPTURE                          VAL R5
      115 CAPTURE                          VAL R10
      116 CAPTURE                          VAL R6
      117 CAPTURE                          VAL R0
      118 SETTABLEKS                       R11 R9 K33 ["run"]
      120 RETURN                           R9 1
