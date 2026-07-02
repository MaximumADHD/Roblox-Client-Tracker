PROTO_0:
        0 NAMECALL                         R3 R1 K0 ["GetDescendants"]
        2 CALL                             R3 1 1
        3 FASTCALL2                        TABLE_INSERT R3 R1 ; [+5]
        5 MOVE                             R5 R3
        6 MOVE                             R6 R1
        7 GETIMPORT                        R4 K3 [table.insert]
        9 CALL                             R4 2 0
       10 MOVE                             R4 R3
       11 LOADNIL                          R5
       12 LOADNIL                          R6
       13 FORGPREP                         R4
       14 GETUPVAL                         R9 0
       15 MOVE                             R11 R8
       16 GETTABLEKS                       R13 R8 K4 ["ClassName"]
       18 GETTABLE                         R12 R2 R13
       19 NAMECALL                         R9 R9 K5 ["ValidatePropertiesSensible"]
       21 CALL                             R9 3 2
       22 JUMPIF                           R9 ; [+25]
       23 GETUPVAL                         R13 1
       24 GETTABLEKS                       R13 R13 K6 ["Keys"]
       26 GETTABLEKS                       R13 R13 K7 ["PropertiesNotSensible"]
       28 DUPTABLE                         R14 K10 [{"ClassName", "InstancePath", "ProblematicProperties"}]
       29 GETTABLEKS                       R15 R8 K4 ["ClassName"]
       31 SETTABLEKS                       R15 R14 K4 ["ClassName"]
       33 NAMECALL                         R15 R8 K11 ["GetFullName"]
       35 CALL                             R15 1 1
       36 SETTABLEKS                       R15 R14 K8 ["InstancePath"]
       38 GETIMPORT                        R15 K13 [table.concat]
       40 MOVE                             R16 R10
       41 LOADK                            R17 K14 [", "]
       42 CALL                             R15 2 1
       43 SETTABLEKS                       R15 R14 K9 ["ProblematicProperties"]
       45 NAMECALL                         R11 R0 K15 ["fail"]
       47 CALL                             R11 3 0
       48 FORGLOOP                         R4 2 ; [-35]
       50 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 DUPTABLE                         R2 K1 [{"HiddenSurfaceRemovalAsset"}]
        5 DUPTABLE                         R3 K3 [{"HSRData"}]
        6 GETUPVAL                         R4 1
        7 CALL                             R4 0 1
        8 SETTABLEKS                       R4 R3 K2 ["HSRData"]
       10 SETTABLEKS                       R3 R2 K0 ["HiddenSurfaceRemovalAsset"]
       12 GETUPVAL                         R3 2
       13 MOVE                             R4 R0
       14 GETTABLEKS                       R5 R1 K4 ["rootInstance"]
       16 MOVE                             R6 R2
       17 CALL                             R3 3 0
       18 GETTABLEKS                       R3 R1 K5 ["hsrAssets"]
       20 LOADNIL                          R4
       21 LOADNIL                          R5
       22 FORGPREP                         R3
       23 MOVE                             R8 R7
       24 LOADNIL                          R9
       25 LOADNIL                          R10
       26 FORGPREP                         R8
       27 GETUPVAL                         R13 2
       28 MOVE                             R14 R0
       29 MOVE                             R15 R12
       30 MOVE                             R16 R2
       31 CALL                             R13 3 0
       32 FORGLOOP                         R8 2 ; [-6]
       34 FORGLOOP                         R3 2 ; [-12]
       36 RETURN                           R0 0

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
       22 GETTABLEKS                       R4 R1 K10 ["util"]
       24 GETTABLEKS                       R4 R4 K11 ["Types"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K8 [require]
       29 GETTABLEKS                       R5 R1 K12 ["validationSystem"]
       31 GETTABLEKS                       R5 R5 K13 ["ValidationEnums"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K8 [require]
       36 GETTABLEKS                       R6 R1 K12 ["validationSystem"]
       38 GETTABLEKS                       R6 R6 K14 ["ErrorSourceStrings"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K8 [require]
       43 GETTABLEKS                       R7 R1 K15 ["flags"]
       45 GETTABLEKS                       R7 R7 K16 ["getFFlagUGCValidateMigrateSchemaProperties"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K8 [require]
       50 GETTABLEKS                       R8 R1 K15 ["flags"]
       52 GETTABLEKS                       R8 R8 K17 ["getEngineFeatureEngineUGCValidatePropertiesSensible"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K8 [require]
       57 GETTABLEKS                       R9 R1 K15 ["flags"]
       59 GETTABLEKS                       R9 R9 K18 ["getFIntUGCValidateMaxHSRDataLen"]
       61 CALL                             R8 1 1
       62 NEWTABLE                         R9 8 0
       64 GETTABLEKS                       R10 R2 K19 ["AllAssetUploadCategoriesIncludingMakeup"]
       66 SETTABLEKS                       R10 R9 K20 ["categories"]
       68 NEWTABLE                         R10 0 2
       70 GETTABLEKS                       R11 R4 K21 ["SharedDataMember"]
       72 GETTABLEKS                       R11 R11 K22 ["rootInstance"]
       74 GETTABLEKS                       R12 R4 K21 ["SharedDataMember"]
       76 GETTABLEKS                       R12 R12 K23 ["hsrAssets"]
       78 SETLIST                          R10 R11 2 [1]
       80 SETTABLEKS                       R10 R9 K24 ["requiredData"]
       82 SETTABLEKS                       R6 R9 K25 ["fflag"]
       84 NEWTABLE                         R10 0 0
       86 SETTABLEKS                       R10 R9 K26 ["expectedFailures"]
       88 DUPCLOSURE                       R10 K27 [PROTO_0]
       89 CAPTURE                          VAL R0
       90 CAPTURE                          VAL R5
       91 DUPCLOSURE                       R11 K28 [PROTO_1]
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R10
       95 SETTABLEKS                       R11 R9 K29 ["run"]
       97 RETURN                           R9 1
