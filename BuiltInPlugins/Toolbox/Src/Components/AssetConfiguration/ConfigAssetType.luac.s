PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isCatalogAsset"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+5]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["isUGCBundleType"]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 1
       11 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R0 K1 [{"dropdownAvatarCategoryIndex"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["dropdownAvatarCategoryIndex"]
        4 RETURN                           R0 1

PROTO_2:
        0 DUPTABLE                         R0 K1 [{"dropdownDevelopmentCategoryIndex"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["dropdownDevelopmentCategoryIndex"]
        4 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETTABLEKS                       R2 R1 K1 ["currentSelectedRadioButtonKey"]
        5 JUMPIFNOTEQKS                    R2 K2 ["AvatarItem"] ; [+8]
        7 GETUPVAL                         R2 0
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R0
       10 NAMECALL                         R2 R2 K3 ["setState"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R2 0
       15 NEWCLOSURE                       R4 P1
       16 CAPTURE                          VAL R0
       17 NAMECALL                         R2 R2 K3 ["setState"]
       19 CALL                             R2 2 0
       20 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R0 K1 [{"currentSelectedRadioButtonKey"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["currentSelectedRadioButtonKey"]
        4 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 NAMECALL                         R1 R1 K0 ["setState"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R0 K1 [{"displayValidationErrorMessages"}]
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["displayValidationErrorMessages"]
        4 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_6]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R0 K1 [{"displayValidationErrorMessages"}]
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["displayValidationErrorMessages"]
        4 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_8]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R0 K2 [{"validationState", "validationFailureReasons"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K3 ["VALIDATION_STATE"]
        4 GETTABLEKS                       R1 R1 K4 ["SUCCESS"]
        6 SETTABLEKS                       R1 R0 K0 ["validationState"]
        8 NEWTABLE                         R1 0 0
       10 SETTABLEKS                       R1 R0 K1 ["validationFailureReasons"]
       12 RETURN                           R0 1

PROTO_11:
        0 DUPTABLE                         R0 K2 [{"validationState", "validationFailureReasons"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K3 ["VALIDATION_STATE"]
        4 GETTABLEKS                       R1 R1 K4 ["FAILURE"]
        6 SETTABLEKS                       R1 R0 K0 ["validationState"]
        8 GETUPVAL                         R1 1
        9 SETTABLEKS                       R1 R0 K1 ["validationFailureReasons"]
       11 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["state"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["props"]
        6 LOADNIL                          R4
        7 GETUPVAL                         R5 1
        8 CALL                             R5 0 1
        9 JUMPIFNOT                        R5 ; [+7]
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R5 R5 K2 ["getAvatarAssetTypeAsString"]
       13 GETTABLEKS                       R6 R2 K3 ["currentAssetType"]
       15 CALL                             R5 1 1
       16 MOVE                             R4 R5
       17 GETUPVAL                         R5 3
       18 GETTABLEKS                       R5 R5 K4 ["shouldDebugWarnings"]
       20 CALL                             R5 0 1
       21 JUMPIFNOT                        R5 ; [+17]
       22 GETTABLEKS                       R7 R3 K5 ["validationState"]
       24 GETUPVAL                         R8 4
       25 GETTABLEKS                       R8 R8 K6 ["VALIDATION_STATE"]
       27 GETTABLEKS                       R8 R8 K7 ["VALIDATING"]
       29 JUMPIFEQ                         R7 R8 ; [+2]
       31 LOADB                            R6 0 +1
       32 LOADB                            R6 1
       33 FASTCALL2K                       ASSERT R6 K8 ; [+4]
       35 LOADK                            R7 K8 ["Validation state is expected to be `Validating`."]
       36 GETIMPORT                        R5 K10 [assert]
       38 CALL                             R5 2 0
       39 JUMPIFNOT                        R0 ; [+40]
       40 GETTABLEKS                       R5 R3 K11 ["setValidationState"]
       42 JUMPIFNOT                        R5 ; [+17]
       43 GETTABLEKS                       R5 R3 K12 ["setValidationFailureReasons"]
       45 JUMPIFNOT                        R5 ; [+14]
       46 GETTABLEKS                       R5 R3 K11 ["setValidationState"]
       48 GETUPVAL                         R6 4
       49 GETTABLEKS                       R6 R6 K6 ["VALIDATION_STATE"]
       51 GETTABLEKS                       R6 R6 K13 ["SUCCESS"]
       53 CALL                             R5 1 0
       54 GETTABLEKS                       R5 R3 K12 ["setValidationFailureReasons"]
       56 NEWTABLE                         R6 0 0
       58 CALL                             R5 1 0
       59 JUMP                             ; [+6]
       60 GETUPVAL                         R5 0
       61 DUPCLOSURE                       R7 K14 [PROTO_10]
       62 CAPTURE                          UPVAL U4
       63 NAMECALL                         R5 R5 K15 ["setState"]
       65 CALL                             R5 2 0
       66 GETUPVAL                         R5 1
       67 CALL                             R5 0 1
       68 JUMPIFNOT                        R5 ; [+92]
       69 GETUPVAL                         R5 5
       70 GETTABLEKS                       R5 R5 K16 ["UGCBundleValidationEvent"]
       72 GETUPVAL                         R6 5
       73 GETTABLEKS                       R6 R6 K17 ["Status"]
       75 GETTABLEKS                       R6 R6 K18 ["Success"]
       77 MOVE                             R7 R4
       78 CALL                             R5 2 0
       79 JUMP                             ; [+81]
       80 LENGTH                           R5 R1
       81 LOADN                            R6 0
       82 JUMPIFNOTLT                      R6 R5 ; [+17]
       84 GETTABLEKS                       R5 R3 K19 ["Localization"]
       86 LOADK                            R7 K20 ["AssetConfig"]
       87 LOADK                            R8 K21 ["AssetConfigOutputErrorHeading"]
       88 DUPTABLE                         R9 K23 [{"errorCount"}]
       89 LENGTH                           R10 R1
       90 SETTABLEKS                       R10 R9 K22 ["errorCount"]
       92 NAMECALL                         R5 R5 K24 ["getText"]
       94 CALL                             R5 4 1
       95 GETIMPORT                        R6 K26 [warn]
       97 MOVE                             R7 R5
       98 MOVE                             R8 R1
       99 CALL                             R6 2 0
      100 LENGTH                           R6 R1
      101 LOADN                            R7 0
      102 JUMPIFNOTLT                      R7 R6 ; [+3]
      104 MOVE                             R5 R1
      105 JUMP                             ; [+11]
      106 NEWTABLE                         R5 0 1
      108 GETTABLEKS                       R6 R3 K19 ["Localization"]
      110 LOADK                            R8 K20 ["AssetConfig"]
      111 LOADK                            R9 K27 ["ValidationErrorUnknown"]
      112 NAMECALL                         R6 R6 K24 ["getText"]
      114 CALL                             R6 3 -1
      115 SETLIST                          R5 R6 -1 [1]
      117 GETTABLEKS                       R6 R3 K11 ["setValidationState"]
      119 JUMPIFNOT                        R6 ; [+16]
      120 GETTABLEKS                       R6 R3 K12 ["setValidationFailureReasons"]
      122 JUMPIFNOT                        R6 ; [+13]
      123 GETTABLEKS                       R6 R3 K11 ["setValidationState"]
      125 GETUPVAL                         R7 4
      126 GETTABLEKS                       R7 R7 K6 ["VALIDATION_STATE"]
      128 GETTABLEKS                       R7 R7 K28 ["FAILURE"]
      130 CALL                             R6 1 0
      131 GETTABLEKS                       R6 R3 K12 ["setValidationFailureReasons"]
      133 MOVE                             R7 R5
      134 CALL                             R6 1 0
      135 JUMP                             ; [+7]
      136 GETUPVAL                         R6 0
      137 NEWCLOSURE                       R8 P1
      138 CAPTURE                          UPVAL U4
      139 CAPTURE                          VAL R5
      140 NAMECALL                         R6 R6 K15 ["setState"]
      142 CALL                             R6 2 0
      143 GETUPVAL                         R6 1
      144 CALL                             R6 0 1
      145 JUMPIFNOT                        R6 ; [+15]
      146 GETUPVAL                         R6 5
      147 GETTABLEKS                       R6 R6 K16 ["UGCBundleValidationEvent"]
      149 GETUPVAL                         R7 5
      150 GETTABLEKS                       R7 R7 K17 ["Status"]
      152 GETTABLEKS                       R7 R7 K29 ["Failure"]
      154 MOVE                             R8 R4
      155 GETUPVAL                         R9 2
      156 GETTABLEKS                       R9 R9 K30 ["getValidationFailuresAsString"]
      158 MOVE                             R10 R5
      159 CALL                             R9 1 -1
      160 CALL                             R6 -1 0
      161 GETTABLEKS                       R5 R3 K31 ["onAssetValidationResultChanged"]
      163 JUMPIFNOT                        R5 ; [+4]
      164 GETTABLEKS                       R5 R3 K31 ["onAssetValidationResultChanged"]
      166 MOVE                             R6 R0
      167 CALL                             R5 1 0
      168 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setValidationState"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["VALIDATION_STATE"]
        6 GETTABLEKS                       R1 R1 K2 ["BEGIN"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_14:
        0 NEWTABLE                         R2 0 0
        2 SETTABLEKS                       R2 R0 K0 ["dropdownItems"]
        4 GETTABLEKS                       R4 R1 K1 ["assetTypeEnum"]
        6 NAMECALL                         R2 R0 K2 ["selectedRadioButtonKeyFor"]
        8 CALL                             R2 2 2
        9 DUPTABLE                         R4 K11 [{"currentSelectedRadioButtonKey", "currentAssetType", "dropdownAvatarCategoryIndex", "dropdownDevelopmentCategoryIndex", "validationState", "validationFailureReasons", "displayValidationErrorMessages", "displayAssetSelection"}]
       10 SETTABLEKS                       R2 R4 K3 ["currentSelectedRadioButtonKey"]
       12 GETTABLEKS                       R5 R1 K1 ["assetTypeEnum"]
       14 SETTABLEKS                       R5 R4 K4 ["currentAssetType"]
       16 JUMPIFNOTEQKS                    R2 K12 ["AvatarItem"] ; [+3]
       18 MOVE                             R5 R3
       19 JUMP                             ; [+1]
       20 LOADN                            R5 0
       21 SETTABLEKS                       R5 R4 K5 ["dropdownAvatarCategoryIndex"]
       23 JUMPIFNOTEQKS                    R2 K13 ["DevelopmentItem"] ; [+3]
       25 MOVE                             R5 R3
       26 JUMP                             ; [+1]
       27 LOADN                            R5 0
       28 SETTABLEKS                       R5 R4 K6 ["dropdownDevelopmentCategoryIndex"]
       30 GETTABLEKS                       R5 R1 K7 ["validationState"]
       32 SETTABLEKS                       R5 R4 K7 ["validationState"]
       34 GETTABLEKS                       R5 R1 K8 ["validationFailureReasons"]
       36 SETTABLEKS                       R5 R4 K8 ["validationFailureReasons"]
       38 LOADB                            R5 0
       39 SETTABLEKS                       R5 R4 K9 ["displayValidationErrorMessages"]
       41 LOADNIL                          R5
       42 SETTABLEKS                       R5 R4 K10 ["displayAssetSelection"]
       44 SETTABLEKS                       R4 R0 K14 ["state"]
       46 NEWCLOSURE                       R4 P0
       47 CAPTURE                          VAL R0
       48 SETTABLEKS                       R4 R0 K15 ["setAssetCategoryIndex"]
       50 NEWCLOSURE                       R4 P1
       51 CAPTURE                          VAL R0
       52 SETTABLEKS                       R4 R0 K16 ["onRadioButtonClicked"]
       54 NEWCLOSURE                       R4 P2
       55 CAPTURE                          VAL R0
       56 SETTABLEKS                       R4 R0 K17 ["openValidationErrorMessageBox"]
       58 NEWCLOSURE                       R4 P3
       59 CAPTURE                          VAL R0
       60 SETTABLEKS                       R4 R0 K18 ["onValidationErrorMessageBoxClosed"]
       62 NEWCLOSURE                       R4 P4
       63 CAPTURE                          VAL R0
       64 CAPTURE                          UPVAL U0
       65 CAPTURE                          UPVAL U1
       66 CAPTURE                          UPVAL U2
       67 CAPTURE                          UPVAL U3
       68 CAPTURE                          UPVAL U4
       69 SETTABLEKS                       R4 R0 K19 ["validationCallback"]
       71 GETTABLEKS                       R4 R1 K1 ["assetTypeEnum"]
       73 JUMPIFEQKNIL                     R4 ; [+47]
       75 GETTABLEKS                       R5 R1 K1 ["assetTypeEnum"]
       77 GETUPVAL                         R6 1
       78 GETTABLEKS                       R6 R6 K20 ["isCatalogAsset"]
       80 MOVE                             R7 R5
       81 CALL                             R6 1 1
       82 MOVE                             R4 R6
       83 JUMPIF                           R4 ; [+6]
       84 GETUPVAL                         R6 1
       85 GETTABLEKS                       R6 R6 K21 ["isUGCBundleType"]
       87 MOVE                             R7 R5
       88 CALL                             R6 1 1
       89 MOVE                             R4 R6
       90 JUMPIFNOT                        R4 ; [+30]
       91 GETUPVAL                         R4 5
       92 JUMPIFNOT                        R4 ; [+7]
       93 GETTABLEKS                       R4 R1 K22 ["onAssetValidationResultChanged"]
       95 JUMPIFNOT                        R4 ; [+4]
       96 GETTABLEKS                       R4 R1 K22 ["onAssetValidationResultChanged"]
       98 LOADB                            R5 0
       99 CALL                             R4 1 0
      100 GETTABLEKS                       R4 R1 K23 ["setValidationState"]
      102 JUMPIFNOT                        R4 ; [+7]
      103 GETIMPORT                        R4 K26 [task.defer]
      105 NEWCLOSURE                       R5 P5
      106 CAPTURE                          VAL R1
      107 CAPTURE                          UPVAL U3
      108 CALL                             R4 1 0
      109 RETURN                           R0 0
      110 DUPTABLE                         R6 K27 [{"validationState"}]
      111 GETUPVAL                         R7 3
      112 GETTABLEKS                       R7 R7 K28 ["VALIDATION_STATE"]
      114 GETTABLEKS                       R7 R7 K29 ["BEGIN"]
      116 SETTABLEKS                       R7 R6 K7 ["validationState"]
      118 NAMECALL                         R4 R0 K30 ["setState"]
      120 CALL                             R4 2 0
      121 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R4 R1 K2 ["validationFailureReasons"]
        6 JUMPIFNOT                        R4 ; [+4]
        7 GETTABLEKS                       R4 R1 K2 ["validationFailureReasons"]
        9 LENGTH                           R3 R4
       10 JUMP                             ; [+1]
       11 LOADN                            R3 0
       12 JUMPIFNOTEQKN                    R3 K3 [1] ; [+12]
       14 GETTABLEKS                       R4 R1 K4 ["Localization"]
       16 LOADK                            R6 K5 ["AssetConfig"]
       17 LOADK                            R7 K6 ["AvatarItemsErrorTextSingular"]
       18 DUPTABLE                         R8 K8 [{"errorCount"}]
       19 SETTABLEKS                       R3 R8 K7 ["errorCount"]
       21 NAMECALL                         R4 R4 K9 ["getText"]
       23 CALL                             R4 4 -1
       24 RETURN                           R4 -1
       25 GETTABLEKS                       R4 R1 K4 ["Localization"]
       27 LOADK                            R6 K5 ["AssetConfig"]
       28 LOADK                            R7 K10 ["AvatarItemsErrorTextPlural"]
       29 DUPTABLE                         R8 K8 [{"errorCount"}]
       30 SETTABLEKS                       R3 R8 K7 ["errorCount"]
       32 NAMECALL                         R4 R4 K9 ["getText"]
       34 CALL                             R4 4 -1
       35 RETURN                           R4 -1

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 LOADK                            R3 K2 [""]
        5 GETTABLEKS                       R4 R1 K3 ["validationFailureReasons"]
        7 MOVE                             R5 R4
        8 LOADNIL                          R6
        9 LOADNIL                          R7
       10 FORGPREP                         R5
       11 GETIMPORT                        R10 K6 [table.concat]
       13 NEWTABLE                         R11 0 3
       15 MOVE                             R12 R3
       16 MOVE                             R13 R9
       17 LOADK                            R14 K7 ["\n\n"]
       18 SETLIST                          R11 R12 3 [1]
       20 CALL                             R10 1 1
       21 MOVE                             R3 R10
       22 FORGLOOP                         R5 2 ; [-12]
       24 RETURN                           R3 1

PROTO_17:
        0 NEWTABLE                         R2 0 2
        2 LOADK                            R5 K0 ["AvatarItem"]
        3 LOADK                            R6 K1 ["DevelopmentItem"]
        4 SETLIST                          R2 R5 2 [1]
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 MOVE                             R9 R6
       10 NAMECALL                         R7 R0 K2 ["getDropdownItemsFor"]
       12 CALL                             R7 2 3
       13 FORGPREP                         R7
       14 GETTABLEKS                       R12 R11 K3 ["type"]
       16 JUMPIFNOTEQ                      R12 R1 ; [+4]
       18 MOVE                             R12 R6
       19 MOVE                             R13 R10
       20 RETURN                           R12 2
       21 FORGLOOP                         R7 2 ; [-8]
       23 FORGLOOP                         R2 2 ; [-15]
       25 LOADK                            R2 K1 ["DevelopmentItem"]
       26 LOADN                            R3 0
       27 RETURN                           R2 2

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R3 R1 K1 ["currentSelectedRadioButtonKey"]
        4 JUMPIFEQKS                       R3 K2 ["AvatarItem"] ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_19:
        0 DUPTABLE                         R0 K1 [{"currentAssetType"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K2 ["None"]
        4 SETTABLEKS                       R1 R0 K0 ["currentAssetType"]
        6 RETURN                           R0 1

PROTO_20:
        0 DUPTABLE                         R0 K1 [{"currentAssetType"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K2 ["None"]
        4 SETTABLEKS                       R1 R0 K0 ["currentAssetType"]
        6 RETURN                           R0 1

PROTO_21:
        0 DUPTABLE                         R0 K1 [{"currentAssetType"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K2 ["type"]
        4 SETTABLEKS                       R1 R0 K0 ["currentAssetType"]
        6 RETURN                           R0 1

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 NAMECALL                         R2 R0 K1 ["getAssetCategoryIndex"]
        4 CALL                             R2 1 1
        5 JUMPIF                           R2 ; [+18]
        6 NAMECALL                         R3 R0 K2 ["resetValidation"]
        8 CALL                             R3 1 0
        9 DUPCLOSURE                       R5 K3 [PROTO_19]
       10 CAPTURE                          UPVAL U0
       11 NAMECALL                         R3 R0 K4 ["setState"]
       13 CALL                             R3 2 0
       14 GETTABLEKS                       R3 R1 K5 ["onAssetTypeSelected"]
       16 JUMPIFNOT                        R3 ; [+6]
       17 GETTABLEKS                       R3 R1 K5 ["onAssetTypeSelected"]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K6 ["None"]
       22 CALL                             R3 1 0
       23 RETURN                           R0 0
       24 GETTABLEKS                       R4 R0 K7 ["dropdownItems"]
       26 GETTABLE                         R3 R4 R2
       27 JUMPIFNOT                        R3 ; [+3]
       28 GETTABLEKS                       R4 R3 K8 ["type"]
       30 JUMPIF                           R4 ; [+18]
       31 NAMECALL                         R4 R0 K2 ["resetValidation"]
       33 CALL                             R4 1 0
       34 DUPCLOSURE                       R6 K9 [PROTO_20]
       35 CAPTURE                          UPVAL U0
       36 NAMECALL                         R4 R0 K4 ["setState"]
       38 CALL                             R4 2 0
       39 GETTABLEKS                       R4 R1 K5 ["onAssetTypeSelected"]
       41 JUMPIFNOT                        R4 ; [+6]
       42 GETTABLEKS                       R4 R1 K5 ["onAssetTypeSelected"]
       44 GETUPVAL                         R5 0
       45 GETTABLEKS                       R5 R5 K6 ["None"]
       47 CALL                             R4 1 0
       48 RETURN                           R0 0
       49 GETTABLEKS                       R4 R3 K8 ["type"]
       51 GETTABLEKS                       R5 R0 K10 ["state"]
       53 GETTABLEKS                       R5 R5 K11 ["currentAssetType"]
       55 JUMPIFEQ                         R4 R5 ; [+4]
       57 NAMECALL                         R4 R0 K2 ["resetValidation"]
       59 CALL                             R4 1 0
       60 GETTABLEKS                       R4 R1 K12 ["onAssetValidationResultChanged"]
       62 JUMPIFNOT                        R4 ; [+4]
       63 GETTABLEKS                       R4 R1 K12 ["onAssetValidationResultChanged"]
       65 LOADB                            R5 0
       66 CALL                             R4 1 0
       67 GETTABLEKS                       R4 R1 K13 ["setCurrentAssetType"]
       69 JUMPIFNOT                        R4 ; [+5]
       70 GETTABLEKS                       R4 R1 K13 ["setCurrentAssetType"]
       72 GETTABLEKS                       R5 R3 K8 ["type"]
       74 CALL                             R4 1 0
       75 NEWCLOSURE                       R6 P2
       76 CAPTURE                          VAL R3
       77 NAMECALL                         R4 R0 K4 ["setState"]
       79 CALL                             R4 2 0
       80 GETTABLEKS                       R4 R1 K5 ["onAssetTypeSelected"]
       82 JUMPIFNOT                        R4 ; [+5]
       83 GETTABLEKS                       R4 R1 K5 ["onAssetTypeSelected"]
       85 GETTABLEKS                       R5 R3 K8 ["type"]
       87 CALL                             R4 1 0
       88 GETTABLEKS                       R5 R3 K8 ["type"]
       90 GETUPVAL                         R6 1
       91 GETTABLEKS                       R6 R6 K14 ["isCatalogAsset"]
       93 MOVE                             R7 R5
       94 CALL                             R6 1 1
       95 MOVE                             R4 R6
       96 JUMPIF                           R4 ; [+6]
       97 GETUPVAL                         R6 1
       98 GETTABLEKS                       R6 R6 K15 ["isUGCBundleType"]
      100 MOVE                             R7 R5
      101 CALL                             R6 1 1
      102 MOVE                             R4 R6
      103 JUMPIF                           R4 ; [+4]
      104 NAMECALL                         R4 R0 K2 ["resetValidation"]
      106 CALL                             R4 1 0
      107 RETURN                           R0 0
      108 GETTABLEKS                       R4 R1 K16 ["setValidationState"]
      110 JUMPIFNOT                        R4 ; [+9]
      111 GETTABLEKS                       R4 R1 K16 ["setValidationState"]
      113 GETUPVAL                         R5 2
      114 GETTABLEKS                       R5 R5 K17 ["VALIDATION_STATE"]
      116 GETTABLEKS                       R5 R5 K18 ["BEGIN"]
      118 CALL                             R4 1 0
      119 RETURN                           R0 0
      120 DUPTABLE                         R6 K20 [{"validationState"}]
      121 GETUPVAL                         R7 2
      122 GETTABLEKS                       R7 R7 K17 ["VALIDATION_STATE"]
      124 GETTABLEKS                       R7 R7 K18 ["BEGIN"]
      126 SETTABLEKS                       R7 R6 K19 ["validationState"]
      128 NAMECALL                         R4 R0 K4 ["setState"]
      130 CALL                             R4 2 0
      131 RETURN                           R0 0

PROTO_23:
        0 DUPTABLE                         R0 K3 [{"validationState", "validationFailureReasons", "ugcBundleValidationResults"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K4 ["VALIDATION_STATE"]
        4 GETTABLEKS                       R1 R1 K5 ["NONE"]
        6 SETTABLEKS                       R1 R0 K0 ["validationState"]
        8 NEWTABLE                         R1 0 0
       10 SETTABLEKS                       R1 R0 K1 ["validationFailureReasons"]
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K6 ["None"]
       15 SETTABLEKS                       R1 R0 K2 ["ugcBundleValidationResults"]
       17 RETURN                           R0 1

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 NAMECALL                         R2 R0 K1 ["cancelValidationTasks"]
        4 CALL                             R2 1 0
        5 GETTABLEKS                       R2 R1 K2 ["setValidationState"]
        7 JUMPIFNOT                        R2 ; [+26]
        8 GETTABLEKS                       R2 R1 K3 ["setValidationFailureReasons"]
       10 JUMPIFNOT                        R2 ; [+23]
       11 GETTABLEKS                       R2 R1 K4 ["setUGCBundleValidationResults"]
       13 JUMPIFNOT                        R2 ; [+20]
       14 GETTABLEKS                       R2 R1 K2 ["setValidationState"]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K5 ["VALIDATION_STATE"]
       19 GETTABLEKS                       R3 R3 K6 ["NONE"]
       21 CALL                             R2 1 0
       22 GETTABLEKS                       R2 R1 K3 ["setValidationFailureReasons"]
       24 NEWTABLE                         R3 0 0
       26 CALL                             R2 1 0
       27 GETTABLEKS                       R2 R1 K4 ["setUGCBundleValidationResults"]
       29 GETUPVAL                         R3 1
       30 GETTABLEKS                       R3 R3 K7 ["None"]
       32 CALL                             R2 1 0
       33 JUMP                             ; [+6]
       34 DUPCLOSURE                       R4 K8 [PROTO_23]
       35 CAPTURE                          UPVAL U0
       36 CAPTURE                          UPVAL U1
       37 NAMECALL                         R2 R0 K9 ["setState"]
       39 CALL                             R2 2 0
       40 GETTABLEKS                       R2 R1 K10 ["onAssetValidationResultChanged"]
       42 JUMPIFNOT                        R2 ; [+4]
       43 GETTABLEKS                       R2 R1 K10 ["onAssetValidationResultChanged"]
       45 LOADB                            R3 0
       46 CALL                             R2 1 0
       47 RETURN                           R0 0

PROTO_25:
        0 GETTABLEKS                       R1 R0 K0 ["validationTask"]
        2 JUMPIFEQKNIL                     R1 ; [+9]
        4 GETIMPORT                        R1 K3 [task.cancel]
        6 GETTABLEKS                       R2 R0 K0 ["validationTask"]
        8 CALL                             R1 1 0
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K0 ["validationTask"]
       12 GETTABLEKS                       R1 R0 K4 ["validationPromise"]
       14 JUMPIFEQKNIL                     R1 ; [+9]
       16 GETTABLEKS                       R1 R0 K4 ["validationPromise"]
       18 NAMECALL                         R1 R1 K2 ["cancel"]
       20 CALL                             R1 1 0
       21 LOADNIL                          R1
       22 SETTABLEKS                       R1 R0 K4 ["validationPromise"]
       24 RETURN                           R0 0

PROTO_26:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 JUMPIFNOTEQKN                    R1 K1 [1] ; [+12]
        4 GETTABLEKS                       R3 R2 K2 ["Localization"]
        6 LOADK                            R5 K3 ["AssetConfig"]
        7 LOADK                            R6 K4 ["ValidationErrorSingular"]
        8 DUPTABLE                         R7 K6 [{"errorCount"}]
        9 SETTABLEKS                       R1 R7 K5 ["errorCount"]
       11 NAMECALL                         R3 R3 K7 ["getText"]
       13 CALL                             R3 4 -1
       14 RETURN                           R3 -1
       15 GETTABLEKS                       R3 R2 K2 ["Localization"]
       17 LOADK                            R5 K3 ["AssetConfig"]
       18 LOADK                            R6 K8 ["ValidationErrorPlural"]
       19 DUPTABLE                         R7 K6 [{"errorCount"}]
       20 SETTABLEKS                       R1 R7 K5 ["errorCount"]
       22 NAMECALL                         R3 R3 K7 ["getText"]
       24 CALL                             R3 4 -1
       25 RETURN                           R3 -1

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["validationState"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["VALIDATION_STATE"]
        9 GETTABLEKS                       R4 R4 K4 ["VALIDATING"]
       11 JUMPIFNOTEQ                      R3 R4 ; [+9]
       13 GETTABLEKS                       R3 R1 K5 ["Localization"]
       15 LOADK                            R5 K6 ["AssetConfig"]
       16 LOADK                            R6 K7 ["ValidatingInProgress"]
       17 NAMECALL                         R3 R3 K8 ["getText"]
       19 CALL                             R3 3 -1
       20 RETURN                           R3 -1
       21 GETTABLEKS                       R3 R1 K2 ["validationState"]
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K3 ["VALIDATION_STATE"]
       26 GETTABLEKS                       R4 R4 K9 ["SUCCESS"]
       28 JUMPIFNOTEQ                      R3 R4 ; [+9]
       30 GETTABLEKS                       R3 R1 K5 ["Localization"]
       32 LOADK                            R5 K6 ["AssetConfig"]
       33 LOADK                            R6 K10 ["ValidationSuccess"]
       34 NAMECALL                         R3 R3 K8 ["getText"]
       36 CALL                             R3 3 -1
       37 RETURN                           R3 -1
       38 GETTABLEKS                       R3 R1 K2 ["validationState"]
       40 GETUPVAL                         R4 0
       41 GETTABLEKS                       R4 R4 K3 ["VALIDATION_STATE"]
       43 GETTABLEKS                       R4 R4 K11 ["FAILURE"]
       45 JUMPIFNOTEQ                      R3 R4 ; [+25]
       47 GETTABLEKS                       R4 R1 K12 ["validationFailureReasons"]
       49 JUMPIFNOT                        R4 ; [+4]
       50 GETTABLEKS                       R4 R1 K12 ["validationFailureReasons"]
       52 LENGTH                           R3 R4
       53 JUMPIF                           R3 ; [+1]
       54 LOADN                            R3 0
       55 LOADN                            R4 0
       56 JUMPIFNOTLT                      R4 R3 ; [+6]
       58 MOVE                             R6 R3
       59 NAMECALL                         R4 R0 K13 ["getErrorMessageWithCount"]
       61 CALL                             R4 2 -1
       62 RETURN                           R4 -1
       63 GETTABLEKS                       R4 R1 K5 ["Localization"]
       65 LOADK                            R6 K6 ["AssetConfig"]
       66 LOADK                            R7 K14 ["ValidationErrorUnknown"]
       67 NAMECALL                         R4 R4 K8 ["getText"]
       69 CALL                             R4 3 -1
       70 RETURN                           R4 -1
       71 LOADK                            R3 K15 [""]
       72 RETURN                           R3 1

PROTO_28:
        0 GETTABLEKS                       R2 R0 K0 ["state"]
        2 GETTABLEKS                       R3 R0 K1 ["props"]
        4 GETTABLEKS                       R4 R3 K2 ["validationState"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K3 ["VALIDATION_STATE"]
        9 GETTABLEKS                       R5 R5 K4 ["SUCCESS"]
       11 JUMPIFNOTEQ                      R4 R5 ; [+6]
       13 GETTABLEKS                       R4 R1 K5 ["typeValidation"]
       15 GETTABLEKS                       R4 R4 K6 ["successResultColor"]
       17 RETURN                           R4 1
       18 GETTABLEKS                       R4 R3 K2 ["validationState"]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K3 ["VALIDATION_STATE"]
       23 GETTABLEKS                       R5 R5 K7 ["FAILURE"]
       25 JUMPIFNOTEQ                      R4 R5 ; [+6]
       27 GETTABLEKS                       R4 R1 K5 ["typeValidation"]
       29 GETTABLEKS                       R4 R4 K8 ["failureResultColor"]
       31 RETURN                           R4 1
       32 GETTABLEKS                       R4 R1 K9 ["TextColor"]
       34 RETURN                           R4 1

PROTO_29:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R3 R1 K1 ["currentSelectedRadioButtonKey"]
        4 JUMPIFNOTEQKS                    R3 K2 ["AvatarItem"] ; [+4]
        6 GETTABLEKS                       R2 R1 K3 ["dropdownAvatarCategoryIndex"]
        8 RETURN                           R2 1
        9 GETTABLEKS                       R2 R1 K4 ["dropdownDevelopmentCategoryIndex"]
       11 RETURN                           R2 1

PROTO_30:
        0 GETIMPORT                        R3 K3 [table.find]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R5 R0 K4 ["type"]
        5 CALL                             R3 2 1
        6 ORK                              R2 R3 K0 [∞]
        7 GETIMPORT                        R4 K3 [table.find]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R6 R1 K4 ["type"]
       12 CALL                             R4 2 1
       13 ORK                              R3 R4 K0 [∞]
       14 JUMPIFLT                         R2 R3 ; [+2]
       16 LOADB                            R4 0 +1
       17 LOADB                            R4 1
       18 RETURN                           R4 1

PROTO_31:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 NEWTABLE                         R4 0 0
        4 JUMPIFNOTEQKS                    R1 K1 ["AvatarItem"] ; [+95]
        6 GETTABLEKS                       R5 R3 K2 ["allowedBundleTypeSettings"]
        8 JUMPIFEQKNIL                     R5 ; [+55]
       10 GETTABLEKS                       R5 R3 K2 ["allowedBundleTypeSettings"]
       12 MOVE                             R6 R5
       13 LOADNIL                          R7
       14 LOADNIL                          R8
       15 FORGPREP                         R6
       16 GETUPVAL                         R11 0
       17 CALL                             R11 0 1
       18 JUMPIF                           R11 ; [+2]
       19 JUMPIFEQKS                       R9 K3 ["AvatarAnimations"] ; [+29]
       21 GETUPVAL                         R11 1
       22 GETTABLEKS                       R11 R11 K4 ["getUGCBundleTypeFromString"]
       24 MOVE                             R12 R9
       25 CALL                             R11 1 1
       26 DUPTABLE                         R14 K8 [{"name", "selectable", "type"}]
       27 JUMPIFNOT                        R2 ; [+7]
       28 GETUPVAL                         R15 1
       29 GETTABLEKS                       R15 R15 K9 ["getLocalizedUGCBundleName"]
       31 MOVE                             R16 R11
       32 MOVE                             R17 R2
       33 CALL                             R15 2 1
       34 JUMP                             ; [+1]
       35 LOADK                            R15 K10 [""]
       36 SETTABLEKS                       R15 R14 K5 ["name"]
       38 LOADB                            R15 1
       39 SETTABLEKS                       R15 R14 K6 ["selectable"]
       41 SETTABLEKS                       R11 R14 K7 ["type"]
       43 FASTCALL2                        TABLE_INSERT R4 R14 ; [+4]
       45 MOVE                             R13 R4
       46 GETIMPORT                        R12 K13 [table.insert]
       48 CALL                             R12 2 0
       49 FORGLOOP                         R6 1 ; [-34]
       51 GETIMPORT                        R6 K15 [game]
       53 LOADK                            R8 K16 ["BodyFirstInAssetsCategory"]
       54 NAMECALL                         R6 R6 K17 ["GetFastFlag"]
       56 CALL                             R6 2 1
       57 JUMPIFNOT                        R6 ; [+6]
       58 GETIMPORT                        R6 K19 [table.sort]
       60 MOVE                             R7 R4
       61 NEWCLOSURE                       R8 P0
       62 CAPTURE                          UPVAL U2
       63 CALL                             R6 2 0
       64 GETUPVAL                         R5 3
       65 GETTABLEKS                       R6 R3 K20 ["allowedAssetTypesForRelease"]
       67 CALL                             R5 1 1
       68 LENGTH                           R6 R5
       69 LOADN                            R7 0
       70 JUMPIFNOTLT                      R7 R6 ; [+77]
       72 MOVE                             R6 R5
       73 LOADNIL                          R7
       74 LOADNIL                          R8
       75 FORGPREP                         R6
       76 JUMPIFNOT                        R2 ; [+5]
       77 GETUPVAL                         R12 4
       78 MOVE                             R13 R2
       79 CALL                             R12 1 1
       80 GETTABLE                         R11 R12 R10
       81 JUMP                             ; [+1]
       82 LOADK                            R11 K10 [""]
       83 DUPTABLE                         R14 K8 [{"name", "selectable", "type"}]
       84 SETTABLEKS                       R11 R14 K5 ["name"]
       86 LOADB                            R15 1
       87 SETTABLEKS                       R15 R14 K6 ["selectable"]
       89 SETTABLEKS                       R10 R14 K7 ["type"]
       91 FASTCALL2                        TABLE_INSERT R4 R14 ; [+4]
       93 MOVE                             R13 R4
       94 GETIMPORT                        R12 K13 [table.insert]
       96 CALL                             R12 2 0
       97 FORGLOOP                         R6 2 ; [-22]
       99 RETURN                           R4 1
      100 JUMPIFNOT                        R2 ; [+6]
      101 LOADK                            R7 K21 ["General"]
      102 LOADK                            R8 K22 ["AssetTypeModel"]
      103 NAMECALL                         R5 R2 K23 ["getText"]
      105 CALL                             R5 3 1
      106 JUMP                             ; [+1]
      107 LOADK                            R5 K10 [""]
      108 JUMPIFNOT                        R2 ; [+6]
      109 LOADK                            R8 K21 ["General"]
      110 LOADK                            R9 K24 ["AssetTypeAnimation"]
      111 NAMECALL                         R6 R2 K23 ["getText"]
      113 CALL                             R6 3 1
      114 JUMP                             ; [+1]
      115 LOADK                            R6 K10 [""]
      116 DUPTABLE                         R9 K8 [{"name", "selectable", "type"}]
      117 SETTABLEKS                       R5 R9 K5 ["name"]
      119 LOADB                            R10 1
      120 SETTABLEKS                       R10 R9 K6 ["selectable"]
      122 GETIMPORT                        R10 K28 [Enum.AssetType.Model]
      124 SETTABLEKS                       R10 R9 K7 ["type"]
      126 FASTCALL2                        TABLE_INSERT R4 R9 ; [+4]
      128 MOVE                             R8 R4
      129 GETIMPORT                        R7 K13 [table.insert]
      131 CALL                             R7 2 0
      132 DUPTABLE                         R9 K8 [{"name", "selectable", "type"}]
      133 SETTABLEKS                       R6 R9 K5 ["name"]
      135 LOADB                            R10 1
      136 SETTABLEKS                       R10 R9 K6 ["selectable"]
      138 GETIMPORT                        R10 K30 [Enum.AssetType.Animation]
      140 SETTABLEKS                       R10 R9 K7 ["type"]
      142 FASTCALL2                        TABLE_INSERT R4 R9 ; [+4]
      144 MOVE                             R8 R4
      145 GETIMPORT                        R7 K13 [table.insert]
      147 CALL                             R7 2 0
      148 RETURN                           R4 1

PROTO_32:
        0 GETTABLEKS                       R2 R0 K0 ["state"]
        2 GETTABLEKS                       R5 R2 K1 ["currentSelectedRadioButtonKey"]
        4 MOVE                             R6 R1
        5 NAMECALL                         R3 R0 K2 ["getDropdownItemsFor"]
        7 CALL                             R3 3 1
        8 SETTABLEKS                       R3 R0 K3 ["dropdownItems"]
       10 GETTABLEKS                       R3 R0 K3 ["dropdownItems"]
       12 RETURN                           R3 1

PROTO_33:
        0 GETTABLEKS                       R5 R0 K0 ["props"]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R6 R6 K1 ["isUGCBundleType"]
        5 MOVE                             R7 R3
        6 CALL                             R6 1 1
        7 JUMPIF                           R6 ; [+2]
        8 LOADNIL                          R6
        9 RETURN                           R6 1
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K2 ["getOptionalBodyPartsNotFound"]
       13 MOVE                             R7 R1
       14 MOVE                             R8 R2
       15 MOVE                             R9 R3
       16 CALL                             R6 3 1
       17 JUMPIFNOT                        R6 ; [+4]
       18 LENGTH                           R7 R6
       19 LOADN                            R8 0
       20 JUMPIFNOTLE                      R7 R8 ; [+3]
       22 LOADNIL                          R7
       23 RETURN                           R7 1
       24 NEWTABLE                         R7 1 0
       26 GETUPVAL                         R8 1
       27 GETTABLEKS                       R8 R8 K3 ["new"]
       29 CALL                             R8 0 1
       30 GETUPVAL                         R9 2
       31 GETTABLEKS                       R9 R9 K4 ["createElement"]
       33 GETUPVAL                         R10 3
       34 DUPTABLE                         R11 K16 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
       35 GETIMPORT                        R12 K19 [Enum.AutomaticSize.Y]
       37 SETTABLEKS                       R12 R11 K5 ["AutomaticSize"]
       39 LOADN                            R12 1
       40 SETTABLEKS                       R12 R11 K6 ["BackgroundTransparency"]
       42 GETUPVAL                         R12 4
       43 GETTABLEKS                       R12 R12 K20 ["FONT"]
       45 SETTABLEKS                       R12 R11 K7 ["Font"]
       47 NAMECALL                         R12 R8 K21 ["getNextOrder"]
       49 CALL                             R12 1 1
       50 SETTABLEKS                       R12 R11 K8 ["LayoutOrder"]
       52 GETIMPORT                        R12 K24 [UDim2.fromScale]
       54 LOADN                            R13 1
       55 LOADN                            R14 0
       56 CALL                             R12 2 1
       57 SETTABLEKS                       R12 R11 K9 ["Size"]
       59 GETTABLEKS                       R12 R5 K25 ["Localization"]
       61 LOADK                            R14 K26 ["AssetConfig"]
       62 LOADK                            R15 K27 ["UGCMissingOptionalPartsMessage"]
       63 NAMECALL                         R12 R12 K28 ["getText"]
       65 CALL                             R12 3 1
       66 SETTABLEKS                       R12 R11 K10 ["Text"]
       68 GETTABLEKS                       R12 R4 K29 ["assetConfig"]
       70 GETTABLEKS                       R12 R12 K30 ["labelTextColor"]
       72 SETTABLEKS                       R12 R11 K11 ["TextColor"]
       74 GETUPVAL                         R12 4
       75 GETTABLEKS                       R12 R12 K31 ["FONT_SIZE_TITLE"]
       77 SETTABLEKS                       R12 R11 K12 ["TextSize"]
       79 LOADB                            R12 1
       80 SETTABLEKS                       R12 R11 K13 ["TextWrapped"]
       82 GETIMPORT                        R12 K33 [Enum.TextXAlignment.Left]
       84 SETTABLEKS                       R12 R11 K14 ["TextXAlignment"]
       86 GETIMPORT                        R12 K35 [Enum.TextYAlignment.Center]
       88 SETTABLEKS                       R12 R11 K15 ["TextYAlignment"]
       90 CALL                             R9 2 1
       91 SETTABLEKS                       R9 R7 K36 ["OptionalPartsMessage"]
       93 MOVE                             R9 R6
       94 LOADNIL                          R10
       95 LOADNIL                          R11
       96 FORGPREP                         R9
       97 GETUPVAL                         R15 5
       98 GETTABLEKS                       R16 R5 K25 ["Localization"]
      100 CALL                             R15 1 1
      101 GETTABLE                         R14 R15 R13
      102 JUMPIFEQKNIL                     R14 ; [+58]
      104 GETTABLEKS                       R15 R13 K37 ["Name"]
      106 GETUPVAL                         R16 2
      107 GETTABLEKS                       R16 R16 K4 ["createElement"]
      109 GETUPVAL                         R17 3
      110 DUPTABLE                         R18 K16 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
      111 GETIMPORT                        R19 K19 [Enum.AutomaticSize.Y]
      113 SETTABLEKS                       R19 R18 K5 ["AutomaticSize"]
      115 LOADN                            R19 1
      116 SETTABLEKS                       R19 R18 K6 ["BackgroundTransparency"]
      118 GETUPVAL                         R19 4
      119 GETTABLEKS                       R19 R19 K20 ["FONT"]
      121 SETTABLEKS                       R19 R18 K7 ["Font"]
      123 NAMECALL                         R19 R8 K21 ["getNextOrder"]
      125 CALL                             R19 1 1
      126 SETTABLEKS                       R19 R18 K8 ["LayoutOrder"]
      128 GETIMPORT                        R19 K24 [UDim2.fromScale]
      130 LOADN                            R20 1
      131 LOADN                            R21 0
      132 CALL                             R19 2 1
      133 SETTABLEKS                       R19 R18 K9 ["Size"]
      135 SETTABLEKS                       R14 R18 K10 ["Text"]
      137 GETTABLEKS                       R19 R4 K29 ["assetConfig"]
      139 GETTABLEKS                       R19 R19 K30 ["labelTextColor"]
      141 SETTABLEKS                       R19 R18 K11 ["TextColor"]
      143 GETUPVAL                         R19 4
      144 GETTABLEKS                       R19 R19 K31 ["FONT_SIZE_TITLE"]
      146 SETTABLEKS                       R19 R18 K12 ["TextSize"]
      148 LOADB                            R19 1
      149 SETTABLEKS                       R19 R18 K13 ["TextWrapped"]
      151 GETIMPORT                        R19 K33 [Enum.TextXAlignment.Left]
      153 SETTABLEKS                       R19 R18 K14 ["TextXAlignment"]
      155 GETIMPORT                        R19 K35 [Enum.TextYAlignment.Center]
      157 SETTABLEKS                       R19 R18 K15 ["TextYAlignment"]
      159 CALL                             R16 2 1
      160 SETTABLE                         R16 R7 R15
      161 FORGLOOP                         R9 2 ; [-65]
      163 RETURN                           R7 1

PROTO_34:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K1 ["isUGCBundleType"]
        5 MOVE                             R6 R2
        6 CALL                             R5 1 1
        7 JUMPIF                           R5 ; [+2]
        8 LOADNIL                          R5
        9 RETURN                           R5 1
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K2 ["getUnknownMeshPartNames"]
       13 MOVE                             R6 R1
       14 CALL                             R5 1 1
       15 JUMPIFNOT                        R5 ; [+4]
       16 LENGTH                           R6 R5
       17 LOADN                            R7 0
       18 JUMPIFNOTLE                      R6 R7 ; [+3]
       20 LOADNIL                          R6
       21 RETURN                           R6 1
       22 NEWTABLE                         R6 1 0
       24 GETUPVAL                         R7 1
       25 GETTABLEKS                       R7 R7 K3 ["new"]
       27 CALL                             R7 0 1
       28 GETUPVAL                         R8 2
       29 GETTABLEKS                       R8 R8 K4 ["createElement"]
       31 GETUPVAL                         R9 3
       32 DUPTABLE                         R10 K16 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
       33 GETIMPORT                        R11 K19 [Enum.AutomaticSize.Y]
       35 SETTABLEKS                       R11 R10 K5 ["AutomaticSize"]
       37 LOADN                            R11 1
       38 SETTABLEKS                       R11 R10 K6 ["BackgroundTransparency"]
       40 GETUPVAL                         R11 4
       41 GETTABLEKS                       R11 R11 K20 ["FONT"]
       43 SETTABLEKS                       R11 R10 K7 ["Font"]
       45 NAMECALL                         R11 R7 K21 ["getNextOrder"]
       47 CALL                             R11 1 1
       48 SETTABLEKS                       R11 R10 K8 ["LayoutOrder"]
       50 GETIMPORT                        R11 K24 [UDim2.fromScale]
       52 LOADN                            R12 1
       53 LOADN                            R13 0
       54 CALL                             R11 2 1
       55 SETTABLEKS                       R11 R10 K9 ["Size"]
       57 GETTABLEKS                       R11 R4 K25 ["Localization"]
       59 LOADK                            R13 K26 ["AssetConfig"]
       60 LOADK                            R14 K27 ["UGCUnknownMeshPartsMessage"]
       61 NAMECALL                         R11 R11 K28 ["getText"]
       63 CALL                             R11 3 1
       64 SETTABLEKS                       R11 R10 K10 ["Text"]
       66 GETTABLEKS                       R11 R3 K29 ["assetConfig"]
       68 GETTABLEKS                       R11 R11 K30 ["labelTextColor"]
       70 SETTABLEKS                       R11 R10 K11 ["TextColor"]
       72 GETUPVAL                         R11 4
       73 GETTABLEKS                       R11 R11 K31 ["FONT_SIZE_TITLE"]
       75 SETTABLEKS                       R11 R10 K12 ["TextSize"]
       77 LOADB                            R11 1
       78 SETTABLEKS                       R11 R10 K13 ["TextWrapped"]
       80 GETIMPORT                        R11 K33 [Enum.TextXAlignment.Left]
       82 SETTABLEKS                       R11 R10 K14 ["TextXAlignment"]
       84 GETIMPORT                        R11 K35 [Enum.TextYAlignment.Center]
       86 SETTABLEKS                       R11 R10 K15 ["TextYAlignment"]
       88 CALL                             R8 2 1
       89 SETTABLEKS                       R8 R6 K36 ["OptionalPartsMessage"]
       91 MOVE                             R8 R5
       92 LOADNIL                          R9
       93 LOADNIL                          R10
       94 FORGPREP                         R8
       95 GETUPVAL                         R13 2
       96 GETTABLEKS                       R13 R13 K4 ["createElement"]
       98 GETUPVAL                         R14 3
       99 DUPTABLE                         R15 K16 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
      100 GETIMPORT                        R16 K19 [Enum.AutomaticSize.Y]
      102 SETTABLEKS                       R16 R15 K5 ["AutomaticSize"]
      104 LOADN                            R16 1
      105 SETTABLEKS                       R16 R15 K6 ["BackgroundTransparency"]
      107 GETUPVAL                         R16 4
      108 GETTABLEKS                       R16 R16 K20 ["FONT"]
      110 SETTABLEKS                       R16 R15 K7 ["Font"]
      112 NAMECALL                         R16 R7 K21 ["getNextOrder"]
      114 CALL                             R16 1 1
      115 SETTABLEKS                       R16 R15 K8 ["LayoutOrder"]
      117 GETIMPORT                        R16 K24 [UDim2.fromScale]
      119 LOADN                            R17 1
      120 LOADN                            R18 0
      121 CALL                             R16 2 1
      122 SETTABLEKS                       R16 R15 K9 ["Size"]
      124 SETTABLEKS                       R12 R15 K10 ["Text"]
      126 GETTABLEKS                       R16 R3 K29 ["assetConfig"]
      128 GETTABLEKS                       R16 R16 K30 ["labelTextColor"]
      130 SETTABLEKS                       R16 R15 K11 ["TextColor"]
      132 GETUPVAL                         R16 4
      133 GETTABLEKS                       R16 R16 K31 ["FONT_SIZE_TITLE"]
      135 SETTABLEKS                       R16 R15 K12 ["TextSize"]
      137 LOADB                            R16 1
      138 SETTABLEKS                       R16 R15 K13 ["TextWrapped"]
      140 GETIMPORT                        R16 K33 [Enum.TextXAlignment.Left]
      142 SETTABLEKS                       R16 R15 K14 ["TextXAlignment"]
      144 GETIMPORT                        R16 K35 [Enum.TextYAlignment.Center]
      146 SETTABLEKS                       R16 R15 K15 ["TextYAlignment"]
      148 CALL                             R13 2 1
      149 SETTABLE                         R13 R6 R12
      150 FORGLOOP                         R8 2 ; [-56]
      152 RETURN                           R6 1

PROTO_35:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 JUMPIF                           R2 ; [+2]
        4 NEWTABLE                         R2 0 0
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 NAMECALL                         R7 R6 K0 ["Clone"]
       11 CALL                             R7 1 1
       12 GETUPVAL                         R8 0
       13 MOVE                             R9 R7
       14 CALL                             R8 1 0
       15 SETTABLE                         R7 R1 R5
       16 FORGLOOP                         R2 2 ; [-8]
       18 RETURN                           R1 1

PROTO_36:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getValidationErrorText"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["Localization"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_37:
        0 DUPCLOSURE                       R0 K0 [PROTO_35]
        1 CAPTURE                          UPVAL U0
        2 LOADNIL                          R1
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 LOADB                            R4 1
        6 GETUPVAL                         R5 1
        7 CALL                             R5 0 1
        8 JUMPIFNOT                        R5 ; [+29]
        9 GETUPVAL                         R5 2
       10 CALL                             R5 0 1
       11 MOVE                             R3 R5
       12 JUMPIFNOT                        R3 ; [+25]
       13 JUMPIFEQKS                       R3 K1 [""] ; [+24]
       15 GETIMPORT                        R5 K4 [string.gmatch]
       17 MOVE                             R6 R3
       18 LOADK                            R7 K5 ["([^,]+)"]
       19 CALL                             R5 2 3
       20 FORGPREP                         R5
       21 GETIMPORT                        R10 K7 [string.gsub]
       23 MOVE                             R11 R8
       24 LOADK                            R12 K8 ["^%s*(.-)%s*$"]
       25 LOADK                            R13 K9 ["%1"]
       26 CALL                             R10 3 1
       27 MOVE                             R8 R10
       28 GETUPVAL                         R10 3
       29 GETTABLEKS                       R10 R10 K10 ["currentAssetType"]
       31 GETTABLEKS                       R10 R10 K11 ["Name"]
       33 JUMPIFNOTEQ                      R8 R10 ; [+2]
       35 LOADB                            R4 0
       36 FORGLOOP                         R5 1 ; [-16]
       38 JUMPIFNOT                        R4 ; [+15]
       39 GETUPVAL                         R5 4
       40 GETTABLEKS                       R5 R5 K12 ["validate"]
       42 MOVE                             R6 R0
       43 GETUPVAL                         R7 5
       44 GETTABLEKS                       R7 R7 K13 ["instances"]
       46 CALL                             R6 1 1
       47 GETUPVAL                         R7 3
       48 GETTABLEKS                       R7 R7 K10 ["currentAssetType"]
       50 CALL                             R5 2 2
       51 MOVE                             R1 R5
       52 MOVE                             R2 R6
       53 JUMP                             ; [+3]
       54 LOADB                            R1 1
       55 NEWTABLE                         R2 0 0
       57 JUMPIFNOT                        R4 ; [+49]
       58 GETUPVAL                         R5 4
       59 GETTABLEKS                       R5 R5 K14 ["isFolderStructureEnabled"]
       61 JUMPIFNOT                        R5 ; [+45]
       62 GETUPVAL                         R5 4
       63 GETTABLEKS                       R5 R5 K14 ["isFolderStructureEnabled"]
       65 CALL                             R5 0 1
       66 JUMPIFNOT                        R5 ; [+40]
       67 GETUPVAL                         R5 4
       68 GETTABLEKS                       R5 R5 K15 ["ValidateAsset"]
       70 MOVE                             R6 R0
       71 GETUPVAL                         R7 5
       72 GETTABLEKS                       R7 R7 K13 ["instances"]
       74 CALL                             R6 1 1
       75 GETUPVAL                         R7 3
       76 GETTABLEKS                       R7 R7 K10 ["currentAssetType"]
       78 DUPTABLE                         R8 K18 [{"source", "enforceR15FolderStructure"}]
       79 LOADK                            R9 K19 ["Toolbox"]
       80 SETTABLEKS                       R9 R8 K16 ["source"]
       82 LOADB                            R9 0
       83 SETTABLEKS                       R9 R8 K17 ["enforceR15FolderStructure"]
       85 CALL                             R5 3 1
       86 GETUPVAL                         R6 4
       87 GETTABLEKS                       R6 R6 K20 ["isEntrypointMergingEnabled"]
       89 JUMPIFNOT                        R6 ; [+17]
       90 GETUPVAL                         R6 4
       91 GETTABLEKS                       R6 R6 K20 ["isEntrypointMergingEnabled"]
       93 CALL                             R6 0 1
       94 JUMPIFNOT                        R6 ; [+12]
       95 GETUPVAL                         R6 4
       96 GETTABLEKS                       R6 R6 K21 ["combineResultsIntoLegacy"]
       98 MOVE                             R7 R1
       99 MOVE                             R8 R2
      100 MOVE                             R9 R5
      101 NEWCLOSURE                       R10 P1
      102 CAPTURE                          UPVAL U6
      103 CAPTURE                          UPVAL U5
      104 CALL                             R6 4 2
      105 MOVE                             R1 R6
      106 MOVE                             R2 R7
      107 GETUPVAL                         R5 7
      108 GETTABLEKS                       R5 R5 K22 ["validationCallback"]
      110 MOVE                             R6 R1
      111 MOVE                             R7 R2
      112 CALL                             R5 2 0
      113 RETURN                           R0 0

PROTO_38:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R0 K1 ["state"]
        4 GETTABLEKS                       R5 R4 K2 ["currentSelectedRadioButtonKey"]
        6 GETTABLEKS                       R6 R2 K2 ["currentSelectedRadioButtonKey"]
        8 JUMPIFNOTEQ                      R5 R6 ; [+13]
       10 GETTABLEKS                       R5 R4 K3 ["dropdownAvatarCategoryIndex"]
       12 GETTABLEKS                       R6 R2 K3 ["dropdownAvatarCategoryIndex"]
       14 JUMPIFNOTEQ                      R5 R6 ; [+7]
       16 GETTABLEKS                       R5 R4 K4 ["dropdownDevelopmentCategoryIndex"]
       18 GETTABLEKS                       R6 R2 K4 ["dropdownDevelopmentCategoryIndex"]
       20 JUMPIFEQ                         R5 R6 ; [+4]
       22 NAMECALL                         R5 R0 K5 ["onAssetTypeChanged"]
       24 CALL                             R5 1 0
       25 GETTABLEKS                       R5 R3 K6 ["validationState"]
       27 GETTABLEKS                       R6 R1 K6 ["validationState"]
       29 JUMPIFEQ                         R5 R6 ; [+52]
       31 GETTABLEKS                       R5 R3 K6 ["validationState"]
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R6 R6 K7 ["VALIDATION_STATE"]
       36 GETTABLEKS                       R6 R6 K8 ["BEGIN"]
       38 JUMPIFNOTEQ                      R5 R6 ; [+13]
       40 GETTABLEKS                       R5 R3 K9 ["setValidationState"]
       42 JUMPIFNOT                        R5 ; [+9]
       43 GETTABLEKS                       R5 R3 K9 ["setValidationState"]
       45 GETUPVAL                         R6 0
       46 GETTABLEKS                       R6 R6 K7 ["VALIDATION_STATE"]
       48 GETTABLEKS                       R6 R6 K10 ["VALIDATING"]
       50 CALL                             R5 1 0
       51 RETURN                           R0 0
       52 GETTABLEKS                       R5 R3 K6 ["validationState"]
       54 GETUPVAL                         R6 0
       55 GETTABLEKS                       R6 R6 K7 ["VALIDATION_STATE"]
       57 GETTABLEKS                       R6 R6 K10 ["VALIDATING"]
       59 JUMPIFNOTEQ                      R5 R6 ; [+22]
       61 GETUPVAL                         R5 1
       62 GETTABLEKS                       R5 R5 K11 ["isUGCBundleType"]
       64 GETTABLEKS                       R6 R4 K12 ["currentAssetType"]
       66 CALL                             R5 1 1
       67 JUMPIF                           R5 ; [+14]
       68 GETIMPORT                        R5 K15 [task.spawn]
       70 NEWCLOSURE                       R6 P0
       71 CAPTURE                          UPVAL U2
       72 CAPTURE                          UPVAL U3
       73 CAPTURE                          UPVAL U4
       74 CAPTURE                          VAL R4
       75 CAPTURE                          UPVAL U5
       76 CAPTURE                          VAL R3
       77 CAPTURE                          UPVAL U1
       78 CAPTURE                          VAL R0
       79 CALL                             R5 1 1
       80 SETTABLEKS                       R5 R0 K16 ["validationTask"]
       82 RETURN                           R0 0

PROTO_39:
        0 NAMECALL                         R1 R0 K0 ["cancelValidationTasks"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_40:
        0 DUPTABLE                         R0 K1 [{"displayAssetSelection"}]
        1 GETUPVAL                         R2 0
        2 NOT                              R1 R2
        3 SETTABLEKS                       R1 R0 K0 ["displayAssetSelection"]
        5 RETURN                           R0 1

PROTO_41:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["Stylizer"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["new"]
       11 CALL                             R5 0 1
       12 GETTABLEKS                       R7 R1 K5 ["validationState"]
       14 GETUPVAL                         R8 1
       15 GETTABLEKS                       R8 R8 K6 ["VALIDATION_STATE"]
       17 GETTABLEKS                       R8 R8 K7 ["FAILURE"]
       19 JUMPIFEQ                         R7 R8 ; [+2]
       21 LOADB                            R6 0 +1
       22 LOADB                            R6 1
       23 JUMPIFNOT                        R6 ; [+2]
       24 LOADN                            R7 24
       25 JUMP                             ; [+1]
       26 LOADN                            R7 0
       27 GETUPVAL                         R8 2
       28 GETTABLEKS                       R8 R8 K8 ["FONT_SIZE_TITLE"]
       30 GETTABLEKS                       R9 R2 K9 ["currentAssetType"]
       32 GETIMPORT                        R11 K13 [Enum.AssetType.Model]
       34 JUMPIFEQ                         R9 R11 ; [+2]
       36 LOADB                            R10 0 +1
       37 LOADB                            R10 1
       38 GETTABLEKS                       R12 R1 K14 ["assetTypeEnum"]
       40 GETIMPORT                        R13 K16 [Enum.AssetType.Animation]
       42 JUMPIFEQ                         R12 R13 ; [+2]
       44 LOADB                            R11 0 +1
       45 LOADB                            R11 1
       46 LOADK                            R14 K17 ["AssetConfig"]
       47 LOADK                            R15 K18 ["AvatarItemsErrorTitle"]
       48 NAMECALL                         R12 R3 K19 ["getText"]
       50 CALL                             R12 3 1
       51 LOADK                            R15 K20 ["Common"]
       52 LOADK                            R16 K21 ["Close"]
       53 NAMECALL                         R13 R3 K19 ["getText"]
       55 CALL                             R13 3 1
       56 LOADK                            R16 K22 ["General"]
       57 LOADK                            R17 K23 ["ContentType"]
       58 NAMECALL                         R14 R3 K19 ["getText"]
       60 CALL                             R14 3 1
       61 LOADK                            R17 K17 ["AssetConfig"]
       62 LOADK                            R18 K24 ["DevelopmentItem"]
       63 NAMECALL                         R15 R3 K19 ["getText"]
       65 CALL                             R15 3 1
       66 LOADK                            R18 K17 ["AssetConfig"]
       67 LOADK                            R19 K25 ["AvatarItem"]
       68 NAMECALL                         R16 R3 K19 ["getText"]
       70 CALL                             R16 3 1
       71 LOADK                            R19 K22 ["General"]
       72 LOADK                            R20 K26 ["AssetCategory"]
       73 NAMECALL                         R17 R3 K19 ["getText"]
       75 CALL                             R17 3 1
       76 LOADNIL                          R18
       77 JUMPIFNOT                        R10 ; [+8]
       78 GETUPVAL                         R19 3
       79 JUMPIF                           R19 ; [+6]
       80 LOADK                            R21 K17 ["AssetConfig"]
       81 LOADK                            R22 K27 ["ModelPublishWarning"]
       82 NAMECALL                         R19 R3 K19 ["getText"]
       84 CALL                             R19 3 1
       85 MOVE                             R18 R19
       86 GETTABLEKS                       R19 R1 K28 ["canAffordUploadFee"]
       88 GETTABLEKS                       R20 R1 K29 ["uploadFee"]
       90 LOADN                            R22 0
       91 JUMPIFNOTLT                      R22 R20 ; [+3]
       93 NOT                              R21 R19
       94 JUMP                             ; [+1]
       95 LOADB                            R21 0
       96 LOADNIL                          R22
       97 JUMPIFNOT                        R21 ; [+6]
       98 LOADK                            R25 K17 ["AssetConfig"]
       99 LOADK                            R26 K30 ["InsufficientRobuxWarning"]
      100 NAMECALL                         R23 R3 K19 ["getText"]
      102 CALL                             R23 3 1
      103 MOVE                             R22 R23
      104 GETTABLEKS                       R23 R2 K31 ["displayValidationErrorMessages"]
      106 NEWTABLE                         R24 0 0
      108 LOADK                            R27 K17 ["AssetConfig"]
      109 LOADK                            R28 K32 ["EmoteAnimationWarning"]
      110 NAMECALL                         R25 R3 K19 ["getText"]
      112 CALL                             R25 3 1
      113 GETUPVAL                         R26 4
      114 JUMPIFNOT                        R26 ; [+9]
      115 GETTABLEKS                       R26 R2 K33 ["displayAssetSelection"]
      117 JUMPIFNOTEQKNIL                  R26 ; [+6]
      119 NEWCLOSURE                       R28 P0
      120 CAPTURE                          VAL R11
      121 NAMECALL                         R26 R0 K34 ["setState"]
      123 CALL                             R26 2 0
      124 GETUPVAL                         R27 4
      125 JUMPIFNOT                        R27 ; [+3]
      126 GETTABLEKS                       R26 R2 K33 ["displayAssetSelection"]
      128 JUMP                             ; [+1]
      129 NOT                              R26 R11
      130 GETUPVAL                         R27 5
      131 GETTABLEKS                       R27 R27 K35 ["createElement"]
      133 GETUPVAL                         R28 6
      134 DUPTABLE                         R29 K45 [{"AutomaticSize", "BackgroundColor3", "BackgroundTransparency", "HorizontalAlignment", "Layout", "LayoutOrder", "Padding", "Spacing", "VerticalAlignment"}]
      135 GETIMPORT                        R30 K47 [Enum.AutomaticSize.XY]
      137 SETTABLEKS                       R30 R29 K36 ["AutomaticSize"]
      139 GETTABLEKS                       R30 R4 K48 ["typeSelection"]
      141 GETTABLEKS                       R30 R30 K49 ["background"]
      143 SETTABLEKS                       R30 R29 K37 ["BackgroundColor3"]
      145 LOADN                            R30 1
      146 SETTABLEKS                       R30 R29 K38 ["BackgroundTransparency"]
      148 GETIMPORT                        R30 K51 [Enum.HorizontalAlignment.Left]
      150 SETTABLEKS                       R30 R29 K39 ["HorizontalAlignment"]
      152 GETIMPORT                        R30 K54 [Enum.FillDirection.Vertical]
      154 SETTABLEKS                       R30 R29 K40 ["Layout"]
      156 GETTABLEKS                       R30 R1 K41 ["LayoutOrder"]
      158 SETTABLEKS                       R30 R29 K41 ["LayoutOrder"]
      160 DUPTABLE                         R30 K56 [{"Bottom"}]
      161 LOADN                            R31 32
      162 SETTABLEKS                       R31 R30 K55 ["Bottom"]
      164 SETTABLEKS                       R30 R29 K42 ["Padding"]
      166 LOADN                            R30 30
      167 SETTABLEKS                       R30 R29 K43 ["Spacing"]
      169 GETIMPORT                        R30 K58 [Enum.VerticalAlignment.Top]
      171 SETTABLEKS                       R30 R29 K44 ["VerticalAlignment"]
      173 DUPTABLE                         R30 K62 [{"ValidationErrorMessageBox", "ContentTypeRadioButtons", "AssetCategoryDropDown", "EmoteAnimationWarning"}]
      174 JUMPIFNOT                        R23 ; [+59]
      175 GETUPVAL                         R31 5
      176 GETTABLEKS                       R31 R31 K35 ["createElement"]
      178 GETUPVAL                         R32 7
      179 DUPTABLE                         R33 K73 [{"buttons", "Icon", "InformativeText", "onButtonClicked", "onClose", "Text", "Title", "isScrollable", "messageBoxHeight", "isResizable"}]
      180 NEWTABLE                         R34 0 1
      182 DUPTABLE                         R35 K77 [{"Text", "Font", "TextSize", "action"}]
      183 SETTABLEKS                       R13 R35 K68 ["Text"]
      185 GETTABLEKS                       R36 R4 K74 ["Font"]
      187 SETTABLEKS                       R36 R35 K74 ["Font"]
      189 GETTABLEKS                       R36 R4 K75 ["TextSize"]
      191 SETTABLEKS                       R36 R35 K75 ["TextSize"]
      193 LOADK                            R36 K78 ["yes"]
      194 SETTABLEKS                       R36 R35 K76 ["action"]
      196 SETLIST                          R34 R35 1 [1]
      198 SETTABLEKS                       R34 R33 K63 ["buttons"]
      200 LOADK                            R34 K79 ["rbxasset://textures/ui/ErrorIcon.png"]
      201 SETTABLEKS                       R34 R33 K64 ["Icon"]
      203 NAMECALL                         R34 R0 K80 ["getAvatarItemCategoryErrors"]
      205 CALL                             R34 1 1
      206 SETTABLEKS                       R34 R33 K65 ["InformativeText"]
      208 GETTABLEKS                       R34 R0 K81 ["onValidationErrorMessageBoxClosed"]
      210 SETTABLEKS                       R34 R33 K66 ["onButtonClicked"]
      212 GETTABLEKS                       R34 R0 K81 ["onValidationErrorMessageBoxClosed"]
      214 SETTABLEKS                       R34 R33 K67 ["onClose"]
      216 NAMECALL                         R34 R0 K82 ["getAvatarItemCategoryErrorsPrimaryText"]
      218 CALL                             R34 1 1
      219 SETTABLEKS                       R34 R33 K68 ["Text"]
      221 SETTABLEKS                       R12 R33 K69 ["Title"]
      223 LOADB                            R34 1
      224 SETTABLEKS                       R34 R33 K70 ["isScrollable"]
      226 LOADN                            R34 244
      227 SETTABLEKS                       R34 R33 K71 ["messageBoxHeight"]
      229 LOADB                            R34 1
      230 SETTABLEKS                       R34 R33 K72 ["isResizable"]
      232 CALL                             R31 2 1
      233 JUMP                             ; [+1]
      234 LOADNIL                          R31
      235 SETTABLEKS                       R31 R30 K59 ["ValidationErrorMessageBox"]
      237 JUMPIFNOT                        R26 ; [+51]
      238 GETUPVAL                         R31 8
      239 GETTABLEKS                       R31 R31 K35 ["createElement"]
      241 GETUPVAL                         R32 9
      242 DUPTABLE                         R33 K95 [{"layoutOrder", "contentTypeTitle", "currentSelectedRadioButtonKey", "onRadioButtonClicked", "radioButtonDevelopmentItemText", "radioButtonAvatarItemText", "warningMessageText", "warningMessageLinkMap", "isModel", "modelPublishWarningText", "insufficientRobuxWarningText", "theme"}]
      243 NAMECALL                         R34 R5 K96 ["getNextOrder"]
      245 CALL                             R34 1 1
      246 SETTABLEKS                       R34 R33 K83 ["layoutOrder"]
      248 SETTABLEKS                       R14 R33 K84 ["contentTypeTitle"]
      250 GETTABLEKS                       R34 R2 K85 ["currentSelectedRadioButtonKey"]
      252 SETTABLEKS                       R34 R33 K85 ["currentSelectedRadioButtonKey"]
      254 GETTABLEKS                       R34 R0 K86 ["onRadioButtonClicked"]
      256 SETTABLEKS                       R34 R33 K86 ["onRadioButtonClicked"]
      258 GETUPVAL                         R35 10
      259 CALL                             R35 0 1
      260 JUMPIFNOT                        R35 ; [+2]
      261 LOADNIL                          R34
      262 JUMP                             ; [+1]
      263 MOVE                             R34 R15
      264 SETTABLEKS                       R34 R33 K87 ["radioButtonDevelopmentItemText"]
      266 GETUPVAL                         R35 10
      267 CALL                             R35 0 1
      268 JUMPIFNOT                        R35 ; [+2]
      269 LOADNIL                          R34
      270 JUMP                             ; [+1]
      271 MOVE                             R34 R16
      272 SETTABLEKS                       R34 R33 K88 ["radioButtonAvatarItemText"]
      274 LOADNIL                          R34
      275 SETTABLEKS                       R34 R33 K89 ["warningMessageText"]
      277 SETTABLEKS                       R24 R33 K90 ["warningMessageLinkMap"]
      279 SETTABLEKS                       R10 R33 K91 ["isModel"]
      281 SETTABLEKS                       R18 R33 K92 ["modelPublishWarningText"]
      283 SETTABLEKS                       R22 R33 K93 ["insufficientRobuxWarningText"]
      285 SETTABLEKS                       R4 R33 K94 ["theme"]
      287 CALL                             R31 2 1
      288 JUMP                             ; [+1]
      289 LOADNIL                          R31
      290 SETTABLEKS                       R31 R30 K60 ["ContentTypeRadioButtons"]
      292 JUMPIFNOT                        R26 ; [+293]
      293 GETUPVAL                         R32 10
      294 CALL                             R32 0 1
      295 JUMPIFNOT                        R32 ; [+65]
      296 GETUPVAL                         R31 8
      297 GETTABLEKS                       R31 R31 K35 ["createElement"]
      299 GETUPVAL                         R32 11
      300 DUPTABLE                         R33 K97 [{"LayoutOrder", "Title"}]
      301 NAMECALL                         R34 R5 K96 ["getNextOrder"]
      303 CALL                             R34 1 1
      304 SETTABLEKS                       R34 R33 K41 ["LayoutOrder"]
      306 SETTABLEKS                       R17 R33 K69 ["Title"]
      308 DUPTABLE                         R34 K99 [{"AssetCategoryRow"}]
      309 GETUPVAL                         R35 8
      310 GETTABLEKS                       R35 R35 K35 ["createElement"]
      312 GETUPVAL                         R36 12
      313 DUPTABLE                         R37 K109 [{"dropdownItems", "selectedDropDownIndex", "onItemClicked", "placeholder", "dropdownWidth", "showError", "validationStatusMessage", "validationStatusColor", "onErrorClicked"}]
      314 MOVE                             R40 R3
      315 NAMECALL                         R38 R0 K110 ["getDropdownItems"]
      317 CALL                             R38 2 1
      318 SETTABLEKS                       R38 R37 K100 ["dropdownItems"]
      320 NAMECALL                         R38 R0 K111 ["getAssetCategoryIndex"]
      322 CALL                             R38 1 1
      323 SETTABLEKS                       R38 R37 K101 ["selectedDropDownIndex"]
      325 GETTABLEKS                       R38 R0 K112 ["setAssetCategoryIndex"]
      327 SETTABLEKS                       R38 R37 K102 ["onItemClicked"]
      329 LOADK                            R40 K113 ["Dropdown"]
      330 LOADK                            R41 K114 ["ChooseOne"]
      331 NAMECALL                         R38 R3 K19 ["getText"]
      333 CALL                             R38 3 1
      334 SETTABLEKS                       R38 R37 K103 ["placeholder"]
      336 LOADN                            R38 144
      337 SETTABLEKS                       R38 R37 K104 ["dropdownWidth"]
      339 SETTABLEKS                       R6 R37 K105 ["showError"]
      341 NAMECALL                         R38 R0 K115 ["getValidationStatusMessage"]
      343 CALL                             R38 1 1
      344 SETTABLEKS                       R38 R37 K106 ["validationStatusMessage"]
      346 MOVE                             R40 R4
      347 NAMECALL                         R38 R0 K116 ["getValidationStatusColor"]
      349 CALL                             R38 2 1
      350 SETTABLEKS                       R38 R37 K107 ["validationStatusColor"]
      352 GETTABLEKS                       R38 R0 K117 ["openValidationErrorMessageBox"]
      354 SETTABLEKS                       R38 R37 K108 ["onErrorClicked"]
      356 CALL                             R35 2 1
      357 SETTABLEKS                       R35 R34 K98 ["AssetCategoryRow"]
      359 CALL                             R31 3 1
      360 JUMP                             ; [+226]
      361 GETUPVAL                         R31 5
      362 GETTABLEKS                       R31 R31 K35 ["createElement"]
      364 GETUPVAL                         R32 11
      365 DUPTABLE                         R33 K118 [{"AutomaticSize", "LayoutOrder", "Title"}]
      366 GETIMPORT                        R34 K47 [Enum.AutomaticSize.XY]
      368 SETTABLEKS                       R34 R33 K36 ["AutomaticSize"]
      370 NAMECALL                         R34 R5 K96 ["getNextOrder"]
      372 CALL                             R34 1 1
      373 SETTABLEKS                       R34 R33 K41 ["LayoutOrder"]
      375 SETTABLEKS                       R17 R33 K69 ["Title"]
      377 DUPTABLE                         R34 K122 [{"Dropdown", "ValidationResult", "ErrorIconButton", "ErrorMessageTextButton"}]
      378 GETUPVAL                         R35 5
      379 GETTABLEKS                       R35 R35 K35 ["createElement"]
      381 GETUPVAL                         R36 13
      382 DUPTABLE                         R37 K128 [{"fontSize", "items", "onItemClicked", "rowHeight", "selectedDropDownIndex", "Size", "visibleDropDownCount"}]
      383 LOADN                            R38 20
      384 SETTABLEKS                       R38 R37 K123 ["fontSize"]
      386 MOVE                             R40 R3
      387 NAMECALL                         R38 R0 K110 ["getDropdownItems"]
      389 CALL                             R38 2 1
      390 SETTABLEKS                       R38 R37 K124 ["items"]
      392 GETTABLEKS                       R38 R0 K112 ["setAssetCategoryIndex"]
      394 SETTABLEKS                       R38 R37 K102 ["onItemClicked"]
      396 LOADN                            R38 24
      397 SETTABLEKS                       R38 R37 K125 ["rowHeight"]
      399 NAMECALL                         R38 R0 K111 ["getAssetCategoryIndex"]
      401 CALL                             R38 1 1
      402 SETTABLEKS                       R38 R37 K101 ["selectedDropDownIndex"]
      404 GETIMPORT                        R38 K130 [UDim2.new]
      406 LOADN                            R39 0
      407 LOADN                            R40 144
      408 LOADN                            R41 0
      409 LOADN                            R42 40
      410 CALL                             R38 4 1
      411 SETTABLEKS                       R38 R37 K126 ["Size"]
      413 LOADN                            R38 6
      414 SETTABLEKS                       R38 R37 K127 ["visibleDropDownCount"]
      416 CALL                             R35 2 1
      417 SETTABLEKS                       R35 R34 K113 ["Dropdown"]
      419 JUMPIF                           R6 ; [+44]
      420 GETUPVAL                         R35 5
      421 GETTABLEKS                       R35 R35 K35 ["createElement"]
      423 GETUPVAL                         R36 14
      424 DUPTABLE                         R37 K136 [{"AutomaticSize", "Position", "Text", "TextColor", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
      425 GETIMPORT                        R38 K47 [Enum.AutomaticSize.XY]
      427 SETTABLEKS                       R38 R37 K36 ["AutomaticSize"]
      429 GETIMPORT                        R38 K130 [UDim2.new]
      431 LOADN                            R39 0
      432 ADDK                             R41 R7 K138 [400]
      433 ADDK                             R40 R41 K137 [16]
      434 LOADN                            R41 0
      435 SUBRK                            R43 R140 K8 ["FONT_SIZE_TITLE"]
      436 DIVK                             R42 R43 K139 [2]
      437 CALL                             R38 4 1
      438 SETTABLEKS                       R38 R37 K131 ["Position"]
      440 NAMECALL                         R38 R0 K115 ["getValidationStatusMessage"]
      442 CALL                             R38 1 1
      443 SETTABLEKS                       R38 R37 K68 ["Text"]
      445 MOVE                             R40 R4
      446 NAMECALL                         R38 R0 K116 ["getValidationStatusColor"]
      448 CALL                             R38 2 1
      449 SETTABLEKS                       R38 R37 K132 ["TextColor"]
      451 LOADB                            R38 1
      452 SETTABLEKS                       R38 R37 K133 ["TextWrapped"]
      454 GETIMPORT                        R38 K141 [Enum.TextXAlignment.Left]
      456 SETTABLEKS                       R38 R37 K134 ["TextXAlignment"]
      458 GETIMPORT                        R38 K143 [Enum.TextYAlignment.Center]
      460 SETTABLEKS                       R38 R37 K135 ["TextYAlignment"]
      462 CALL                             R35 2 1
      463 JUMP                             ; [+1]
      464 LOADNIL                          R35
      465 SETTABLEKS                       R35 R34 K119 ["ValidationResult"]
      467 JUMPIFNOT                        R6 ; [+47]
      468 GETUPVAL                         R35 5
      469 GETTABLEKS                       R35 R35 K35 ["createElement"]
      471 LOADK                            R36 K144 ["ImageButton"]
      472 NEWTABLE                         R37 8 0
      474 LOADB                            R38 0
      475 SETTABLEKS                       R38 R37 K145 ["AutoButtonColor"]
      477 LOADN                            R38 1
      478 SETTABLEKS                       R38 R37 K38 ["BackgroundTransparency"]
      480 LOADK                            R38 K79 ["rbxasset://textures/ui/ErrorIcon.png"]
      481 SETTABLEKS                       R38 R37 K146 ["Image"]
      483 MOVE                             R40 R4
      484 NAMECALL                         R38 R0 K116 ["getValidationStatusColor"]
      486 CALL                             R38 2 1
      487 SETTABLEKS                       R38 R37 K147 ["ImageColor3"]
      489 GETIMPORT                        R38 K130 [UDim2.new]
      491 LOADN                            R39 0
      492 LOADN                            R40 152
      493 LOADN                            R41 0
      494 LOADN                            R42 8
      495 CALL                             R38 4 1
      496 SETTABLEKS                       R38 R37 K131 ["Position"]
      498 GETIMPORT                        R38 K149 [UDim2.fromOffset]
      500 LOADN                            R39 24
      501 LOADN                            R40 24
      502 CALL                             R38 2 1
      503 SETTABLEKS                       R38 R37 K126 ["Size"]
      505 GETUPVAL                         R38 5
      506 GETTABLEKS                       R38 R38 K150 ["Event"]
      508 GETTABLEKS                       R38 R38 K151 ["Activated"]
      510 GETTABLEKS                       R39 R0 K117 ["openValidationErrorMessageBox"]
      512 SETTABLE                         R39 R37 R38
      513 CALL                             R35 2 1
      514 JUMP                             ; [+1]
      515 LOADNIL                          R35
      516 SETTABLEKS                       R35 R34 K120 ["ErrorIconButton"]
      518 JUMPIFNOT                        R6 ; [+62]
      519 GETUPVAL                         R35 5
      520 GETTABLEKS                       R35 R35 K35 ["createElement"]
      522 LOADK                            R36 K152 ["TextButton"]
      523 NEWTABLE                         R37 16 0
      525 GETIMPORT                        R38 K47 [Enum.AutomaticSize.XY]
      527 SETTABLEKS                       R38 R37 K36 ["AutomaticSize"]
      529 LOADN                            R38 1
      530 SETTABLEKS                       R38 R37 K38 ["BackgroundTransparency"]
      532 GETTABLEKS                       R38 R4 K74 ["Font"]
      534 SETTABLEKS                       R38 R37 K74 ["Font"]
      536 GETIMPORT                        R38 K130 [UDim2.new]
      538 LOADN                            R39 0
      539 ADDK                             R41 R7 K138 [400]
      540 ADDK                             R40 R41 K137 [16]
      541 LOADN                            R41 0
      542 SUBRK                            R43 R140 K8 ["FONT_SIZE_TITLE"]
      543 DIVK                             R42 R43 K139 [2]
      544 CALL                             R38 4 1
      545 SETTABLEKS                       R38 R37 K131 ["Position"]
      547 NAMECALL                         R38 R0 K115 ["getValidationStatusMessage"]
      549 CALL                             R38 1 1
      550 SETTABLEKS                       R38 R37 K68 ["Text"]
      552 MOVE                             R40 R4
      553 NAMECALL                         R38 R0 K116 ["getValidationStatusColor"]
      555 CALL                             R38 2 1
      556 SETTABLEKS                       R38 R37 K153 ["TextColor3"]
      558 GETUPVAL                         R38 2
      559 GETTABLEKS                       R38 R38 K8 ["FONT_SIZE_TITLE"]
      561 SETTABLEKS                       R38 R37 K75 ["TextSize"]
      563 GETIMPORT                        R38 K141 [Enum.TextXAlignment.Left]
      565 SETTABLEKS                       R38 R37 K134 ["TextXAlignment"]
      567 GETIMPORT                        R38 K143 [Enum.TextYAlignment.Center]
      569 SETTABLEKS                       R38 R37 K135 ["TextYAlignment"]
      571 GETUPVAL                         R38 5
      572 GETTABLEKS                       R38 R38 K150 ["Event"]
      574 GETTABLEKS                       R38 R38 K151 ["Activated"]
      576 GETTABLEKS                       R39 R0 K117 ["openValidationErrorMessageBox"]
      578 SETTABLE                         R39 R37 R38
      579 CALL                             R35 2 1
      580 JUMP                             ; [+1]
      581 LOADNIL                          R35
      582 SETTABLEKS                       R35 R34 K121 ["ErrorMessageTextButton"]
      584 CALL                             R31 3 1
      585 JUMP                             ; [+1]
      586 LOADNIL                          R31
      587 SETTABLEKS                       R31 R30 K61 ["AssetCategoryDropDown"]
      589 GETIMPORT                        R32 K155 [Enum.AssetType.EmoteAnimation]
      591 JUMPIFNOTEQ                      R9 R32 ; [+124]
      593 GETUPVAL                         R31 5
      594 GETTABLEKS                       R31 R31 K35 ["createElement"]
      596 GETUPVAL                         R32 6
      597 DUPTABLE                         R33 K156 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing", "VerticalAlignment"}]
      598 GETIMPORT                        R34 K158 [Enum.AutomaticSize.Y]
      600 SETTABLEKS                       R34 R33 K36 ["AutomaticSize"]
      602 GETIMPORT                        R34 K51 [Enum.HorizontalAlignment.Left]
      604 SETTABLEKS                       R34 R33 K39 ["HorizontalAlignment"]
      606 GETIMPORT                        R34 K160 [Enum.FillDirection.Horizontal]
      608 SETTABLEKS                       R34 R33 K40 ["Layout"]
      610 NAMECALL                         R34 R5 K96 ["getNextOrder"]
      612 CALL                             R34 1 1
      613 SETTABLEKS                       R34 R33 K41 ["LayoutOrder"]
      615 GETIMPORT                        R34 K162 [UDim2.fromScale]
      617 LOADN                            R35 1
      618 LOADN                            R36 0
      619 CALL                             R34 2 1
      620 SETTABLEKS                       R34 R33 K126 ["Size"]
      622 LOADN                            R34 8
      623 SETTABLEKS                       R34 R33 K43 ["Spacing"]
      625 GETIMPORT                        R34 K58 [Enum.VerticalAlignment.Top]
      627 SETTABLEKS                       R34 R33 K44 ["VerticalAlignment"]
      629 DUPTABLE                         R34 K164 [{"Icon", "UGCWarningText"}]
      630 GETUPVAL                         R35 5
      631 GETTABLEKS                       R35 R35 K35 ["createElement"]
      633 LOADK                            R36 K165 ["ImageLabel"]
      634 DUPTABLE                         R37 K166 [{"BackgroundTransparency", "Image", "ImageColor3", "LayoutOrder", "Size"}]
      635 LOADN                            R38 1
      636 SETTABLEKS                       R38 R37 K38 ["BackgroundTransparency"]
      638 GETUPVAL                         R38 15
      639 GETTABLEKS                       R38 R38 K167 ["WARNING_ICON"]
      641 SETTABLEKS                       R38 R37 K146 ["Image"]
      643 GETTABLEKS                       R38 R4 K168 ["assetConfig"]
      645 GETTABLEKS                       R38 R38 K169 ["warningColor"]
      647 SETTABLEKS                       R38 R37 K147 ["ImageColor3"]
      649 LOADN                            R38 1
      650 SETTABLEKS                       R38 R37 K41 ["LayoutOrder"]
      652 GETIMPORT                        R38 K149 [UDim2.fromOffset]
      654 LOADN                            R39 24
      655 LOADN                            R40 24
      656 CALL                             R38 2 1
      657 SETTABLEKS                       R38 R37 K126 ["Size"]
      659 CALL                             R35 2 1
      660 SETTABLEKS                       R35 R34 K64 ["Icon"]
      662 GETUPVAL                         R35 5
      663 GETTABLEKS                       R35 R35 K35 ["createElement"]
      665 LOADK                            R36 K170 ["TextLabel"]
      666 DUPTABLE                         R37 K171 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor3", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
      667 GETIMPORT                        R38 K158 [Enum.AutomaticSize.Y]
      669 SETTABLEKS                       R38 R37 K36 ["AutomaticSize"]
      671 LOADN                            R38 1
      672 SETTABLEKS                       R38 R37 K38 ["BackgroundTransparency"]
      674 GETUPVAL                         R38 2
      675 GETTABLEKS                       R38 R38 K172 ["FONT"]
      677 SETTABLEKS                       R38 R37 K74 ["Font"]
      679 LOADN                            R38 2
      680 SETTABLEKS                       R38 R37 K41 ["LayoutOrder"]
      682 GETIMPORT                        R38 K130 [UDim2.new]
      684 LOADN                            R39 1
      685 LOADN                            R40 224
      686 CALL                             R38 2 1
      687 SETTABLEKS                       R38 R37 K126 ["Size"]
      689 SETTABLEKS                       R25 R37 K68 ["Text"]
      691 GETTABLEKS                       R38 R4 K168 ["assetConfig"]
      693 GETTABLEKS                       R38 R38 K169 ["warningColor"]
      695 SETTABLEKS                       R38 R37 K153 ["TextColor3"]
      697 LOADN                            R38 24
      698 SETTABLEKS                       R38 R37 K75 ["TextSize"]
      700 LOADB                            R38 1
      701 SETTABLEKS                       R38 R37 K133 ["TextWrapped"]
      703 GETIMPORT                        R38 K141 [Enum.TextXAlignment.Left]
      705 SETTABLEKS                       R38 R37 K134 ["TextXAlignment"]
      707 GETIMPORT                        R38 K143 [Enum.TextYAlignment.Center]
      709 SETTABLEKS                       R38 R37 K135 ["TextYAlignment"]
      711 CALL                             R35 2 1
      712 SETTABLEKS                       R35 R34 K163 ["UGCWarningText"]
      714 CALL                             R31 3 1
      715 JUMP                             ; [+1]
      716 LOADNIL                          R31
      717 SETTABLEKS                       R31 R30 K32 ["EmoteAnimationWarning"]
      719 CALL                             R27 3 -1
      720 RETURN                           R27 -1

PROTO_42:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 MOVE                             R0 R1
        5 DUPTABLE                         R1 K6 [{"allowedAssetTypesForRelease", "allowedBundleTypeSettings", "assetTypeEnum", "canAffordUploadFee", "instances", "uploadFee"}]
        6 GETTABLEKS                       R2 R0 K0 ["allowedAssetTypesForRelease"]
        8 SETTABLEKS                       R2 R1 K0 ["allowedAssetTypesForRelease"]
       10 GETTABLEKS                       R2 R0 K1 ["allowedBundleTypeSettings"]
       12 SETTABLEKS                       R2 R1 K1 ["allowedBundleTypeSettings"]
       14 GETTABLEKS                       R2 R0 K2 ["assetTypeEnum"]
       16 SETTABLEKS                       R2 R1 K2 ["assetTypeEnum"]
       18 GETTABLEKS                       R3 R0 K3 ["canAffordUploadFee"]
       20 ORK                              R2 R3 K7 [False]
       21 SETTABLEKS                       R2 R1 K3 ["canAffordUploadFee"]
       23 GETTABLEKS                       R2 R0 K4 ["instances"]
       25 SETTABLEKS                       R2 R1 K4 ["instances"]
       27 GETTABLEKS                       R3 R0 K5 ["uploadFee"]
       29 ORK                              R2 R3 K8 [0]
       30 SETTABLEKS                       R2 R1 K5 ["uploadFee"]
       32 RETURN                           R1 1

PROTO_43:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 CALL                             R5 1 -1
        4 CALL                             R4 -1 0
        5 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_45:
        0 DUPTABLE                         R1 K2 [{"onAssetTypeSelected", "onAssetValidationResultChanged"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["onAssetTypeSelected"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["onAssetValidationResultChanged"]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Cryo"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Framework"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["Roact"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R1 K11 ["RoactRodux"]
       33 CALL                             R6 1 1
       34 GETIMPORT                        R7 K6 [require]
       36 GETTABLEKS                       R8 R1 K12 ["Foundation"]
       38 CALL                             R7 1 1
       39 GETIMPORT                        R8 K6 [require]
       41 GETTABLEKS                       R9 R1 K13 ["UGCValidation"]
       43 CALL                             R8 1 1
       44 GETTABLEKS                       R9 R3 K14 ["ContextServices"]
       46 GETTABLEKS                       R10 R9 K15 ["withContext"]
       48 GETIMPORT                        R11 K6 [require]
       50 GETTABLEKS                       R12 R0 K16 ["Src"]
       52 GETTABLEKS                       R12 R12 K14 ["ContextServices"]
       54 GETTABLEKS                       R12 R12 K17 ["NetworkContext"]
       56 CALL                             R11 1 1
       57 GETTABLEKS                       R12 R0 K16 ["Src"]
       59 GETTABLEKS                       R12 R12 K18 ["Util"]
       61 GETIMPORT                        R13 K6 [require]
       63 GETTABLEKS                       R14 R12 K19 ["Analytics"]
       65 GETTABLEKS                       R14 R14 K19 ["Analytics"]
       67 CALL                             R13 1 1
       68 GETIMPORT                        R14 K6 [require]
       70 GETTABLEKS                       R15 R12 K20 ["AssetConfigUtil"]
       72 CALL                             R14 1 1
       73 GETIMPORT                        R15 K6 [require]
       75 GETTABLEKS                       R16 R12 K21 ["fixUpPreValidation"]
       77 CALL                             R15 1 1
       78 GETIMPORT                        R16 K6 [require]
       80 GETTABLEKS                       R17 R12 K22 ["Constants"]
       82 CALL                             R16 1 1
       83 GETIMPORT                        R17 K6 [require]
       85 GETTABLEKS                       R18 R12 K23 ["DebugFlags"]
       87 CALL                             R17 1 1
       88 GETIMPORT                        R18 K6 [require]
       90 GETTABLEKS                       R19 R12 K24 ["Images"]
       92 CALL                             R18 1 1
       93 GETIMPORT                        R19 K6 [require]
       95 GETTABLEKS                       R20 R12 K25 ["SharedFlags"]
       97 GETTABLEKS                       R20 R20 K26 ["getFFlagUGCBundleValidationFullBodyErrors"]
       99 CALL                             R19 1 1
      100 GETIMPORT                        R20 K6 [require]
      102 GETTABLEKS                       R21 R12 K27 ["getAllowedAssetTypeEnums"]
      104 CALL                             R20 1 1
      105 GETIMPORT                        R21 K6 [require]
      107 GETTABLEKS                       R22 R0 K16 ["Src"]
      109 GETTABLEKS                       R22 R22 K28 ["Localization"]
      111 GETTABLEKS                       R22 R22 K29 ["getLocalizedAssetTextMap"]
      113 CALL                             R21 1 1
      114 GETTABLEKS                       R22 R3 K18 ["Util"]
      116 GETTABLEKS                       R22 R22 K30 ["LayoutOrderIterator"]
      118 GETTABLEKS                       R23 R3 K31 ["UI"]
      120 GETTABLEKS                       R24 R23 K32 ["Pane"]
      122 GETTABLEKS                       R25 R23 K33 ["TextLabel"]
      124 GETIMPORT                        R26 K6 [require]
      126 GETTABLEKS                       R27 R0 K16 ["Src"]
      128 GETTABLEKS                       R27 R27 K34 ["Actions"]
      130 GETTABLEKS                       R27 R27 K35 ["SetUploadAssetType"]
      132 CALL                             R26 1 1
      133 GETIMPORT                        R27 K6 [require]
      135 GETTABLEKS                       R28 R0 K16 ["Src"]
      137 GETTABLEKS                       R28 R28 K34 ["Actions"]
      139 GETTABLEKS                       R28 R28 K36 ["SetUploadAssetValidationStatus"]
      141 CALL                             R27 1 1
      142 GETIMPORT                        R28 K6 [require]
      144 GETTABLEKS                       R29 R0 K16 ["Src"]
      146 GETTABLEKS                       R29 R29 K37 ["Components"]
      148 GETTABLEKS                       R29 R29 K38 ["DropdownMenu"]
      150 CALL                             R28 1 1
      151 GETIMPORT                        R29 K6 [require]
      153 GETTABLEKS                       R30 R0 K16 ["Src"]
      155 GETTABLEKS                       R30 R30 K37 ["Components"]
      157 GETTABLEKS                       R30 R30 K39 ["MessageBox"]
      159 GETTABLEKS                       R30 R30 K39 ["MessageBox"]
      161 CALL                             R29 1 1
      162 GETIMPORT                        R30 K6 [require]
      164 GETTABLEKS                       R31 R0 K16 ["Src"]
      166 GETTABLEKS                       R31 R31 K37 ["Components"]
      168 GETTABLEKS                       R31 R31 K40 ["StyledScrollingFrame"]
      170 CALL                             R30 1 1
      171 GETTABLEKS                       R31 R0 K16 ["Src"]
      173 GETTABLEKS                       R31 R31 K37 ["Components"]
      175 GETTABLEKS                       R31 R31 K41 ["AssetConfiguration"]
      177 GETIMPORT                        R32 K6 [require]
      179 GETTABLEKS                       R33 R31 K42 ["AssetCategoryRow"]
      181 CALL                             R32 1 1
      182 GETIMPORT                        R33 K6 [require]
      184 GETTABLEKS                       R34 R31 K43 ["AssetConfigDropdown"]
      186 CALL                             R33 1 1
      187 GETIMPORT                        R34 K6 [require]
      189 GETTABLEKS                       R35 R31 K44 ["ConfigSectionWrapper"]
      191 CALL                             R34 1 1
      192 GETIMPORT                        R35 K6 [require]
      194 GETTABLEKS                       R36 R31 K45 ["ContentTypeRadioButtons"]
      196 CALL                             R35 1 1
      197 GETIMPORT                        R36 K6 [require]
      199 GETTABLEKS                       R37 R0 K16 ["Src"]
      201 GETTABLEKS                       R37 R37 K46 ["Flags"]
      203 GETTABLEKS                       R37 R37 K47 ["getFFlagToolboxAssetConfigFoundationMigration"]
      205 CALL                             R36 1 1
      206 GETIMPORT                        R37 K6 [require]
      208 GETTABLEKS                       R38 R31 K48 ["UGCBundleValidation"]
      210 CALL                             R37 1 1
      211 GETIMPORT                        R38 K6 [require]
      213 GETTABLEKS                       R39 R31 K49 ["ValidationStatus"]
      215 CALL                             R38 1 1
      216 GETIMPORT                        R39 K6 [require]
      218 GETTABLEKS                       R40 R12 K50 ["AssetConfigConstants"]
      220 CALL                             R39 1 1
      221 GETIMPORT                        R40 K6 [require]
      223 GETTABLEKS                       R41 R31 K51 ["DataConsentToggle"]
      225 CALL                             R40 1 1
      226 GETIMPORT                        R41 K53 [game]
      228 LOADK                            R43 K54 ["BodyFirstInAssetsCategory"]
      229 LOADB                            R44 0
      230 NAMECALL                         R41 R41 K55 ["DefineFastFlag"]
      232 CALL                             R41 3 0
      233 GETIMPORT                        R41 K53 [game]
      235 LOADK                            R43 K56 ["DisableSubmitButtonForValidationInInit"]
      236 LOADB                            R44 0
      237 NAMECALL                         R41 R41 K55 ["DefineFastFlag"]
      239 CALL                             R41 3 1
      240 GETIMPORT                        R42 K6 [require]
      242 GETTABLEKS                       R43 R12 K25 ["SharedFlags"]
      244 GETTABLEKS                       R43 R43 K57 ["getFFlagEnableUGCUploadFlowAnalytics"]
      246 CALL                             R42 1 1
      247 GETIMPORT                        R43 K6 [require]
      249 GETTABLEKS                       R44 R12 K25 ["SharedFlags"]
      251 GETTABLEKS                       R44 R44 K58 ["getFFlagEnableUGCBundleUploadBodyScale"]
      253 CALL                             R43 1 1
      254 GETIMPORT                        R44 K6 [require]
      256 GETTABLEKS                       R45 R0 K16 ["Src"]
      258 GETTABLEKS                       R45 R45 K46 ["Flags"]
      260 GETTABLEKS                       R45 R45 K59 ["getFFlagRequireBodyColorsForBodyUpload"]
      262 CALL                             R44 1 1
      263 GETIMPORT                        R45 K6 [require]
      265 GETTABLEKS                       R46 R0 K16 ["Src"]
      267 GETTABLEKS                       R46 R46 K46 ["Flags"]
      269 GETTABLEKS                       R46 R46 K60 ["getFStringAssetsToBypassValidation"]
      271 CALL                             R45 1 1
      272 GETIMPORT                        R46 K6 [require]
      274 GETTABLEKS                       R47 R0 K16 ["Src"]
      276 GETTABLEKS                       R47 R47 K46 ["Flags"]
      278 GETTABLEKS                       R47 R47 K61 ["getFFlagAssetBypassValidation"]
      280 CALL                             R46 1 1
      281 GETIMPORT                        R47 K53 [game]
      283 LOADK                            R49 K62 ["ToolboxFixUGCBundleValidationCryoThingy1"]
      284 LOADB                            R50 0
      285 NAMECALL                         R47 R47 K55 ["DefineFastFlag"]
      287 CALL                             R47 3 1
      288 GETIMPORT                        R48 K53 [game]
      290 LOADK                            R50 K63 ["ToolboxShowAnimationAssetSelection"]
      291 LOADB                            R51 0
      292 NAMECALL                         R48 R48 K55 ["DefineFastFlag"]
      294 CALL                             R48 3 1
      295 GETIMPORT                        R49 K53 [game]
      297 LOADK                            R51 K64 ["ToolboxRemoveRestrictedAssetWarning2"]
      298 NAMECALL                         R49 R49 K65 ["GetFastFlag"]
      300 CALL                             R49 2 1
      301 GETIMPORT                        R50 K6 [require]
      303 GETTABLEKS                       R51 R0 K16 ["Src"]
      305 GETTABLEKS                       R51 R51 K46 ["Flags"]
      307 GETTABLEKS                       R51 R51 K66 ["getFFlagEnableUploadingAvatarAnimations"]
      309 CALL                             R50 1 1
      310 GETTABLEKS                       R51 R5 K67 ["PureComponent"]
      312 LOADK                            R53 K68 ["ConfigAssetType"]
      313 NAMECALL                         R51 R51 K69 ["extend"]
      315 CALL                             R51 2 1
      316 NEWTABLE                         R52 0 0
      318 GETIMPORT                        R53 K53 [game]
      320 LOADK                            R55 K54 ["BodyFirstInAssetsCategory"]
      321 NAMECALL                         R53 R53 K65 ["GetFastFlag"]
      323 CALL                             R53 2 1
      324 JUMPIFNOT                        R53 ; [+30]
      325 NEWTABLE                         R53 0 3
      327 GETTABLEKS                       R54 R39 K70 ["UGCBundleTypes"]
      329 GETTABLEKS                       R54 R54 K71 ["Body"]
      331 GETTABLEKS                       R55 R39 K70 ["UGCBundleTypes"]
      333 GETTABLEKS                       R55 R55 K72 ["DynamicHead"]
      335 GETTABLEKS                       R56 R39 K70 ["UGCBundleTypes"]
      337 GETTABLEKS                       R56 R56 K73 ["Shoes"]
      339 SETLIST                          R53 R54 3 [1]
      341 MOVE                             R52 R53
      342 MOVE                             R53 R50
      343 CALL                             R53 0 1
      344 JUMPIFNOT                        R53 ; [+10]
      345 GETTABLEKS                       R55 R39 K70 ["UGCBundleTypes"]
      347 GETTABLEKS                       R55 R55 K74 ["AvatarAnimations"]
      349 FASTCALL2                        TABLE_INSERT R52 R55 ; [+4]
      351 MOVE                             R54 R52
      352 GETIMPORT                        R53 K77 [table.insert]
      354 CALL                             R53 2 0
      355 DUPCLOSURE                       R53 K78 [PROTO_0]
      356 CAPTURE                          VAL R14
      357 DUPCLOSURE                       R54 K79 [PROTO_14]
      358 CAPTURE                          VAL R42
      359 CAPTURE                          VAL R14
      360 CAPTURE                          VAL R17
      361 CAPTURE                          VAL R39
      362 CAPTURE                          VAL R13
      363 CAPTURE                          VAL R41
      364 SETTABLEKS                       R54 R51 K80 ["init"]
      366 DUPCLOSURE                       R54 K81 [PROTO_15]
      367 SETTABLEKS                       R54 R51 K82 ["getAvatarItemCategoryErrorsPrimaryText"]
      369 DUPCLOSURE                       R54 K83 [PROTO_16]
      370 SETTABLEKS                       R54 R51 K84 ["getAvatarItemCategoryErrors"]
      372 DUPCLOSURE                       R54 K85 [PROTO_17]
      373 SETTABLEKS                       R54 R51 K86 ["selectedRadioButtonKeyFor"]
      375 DUPCLOSURE                       R54 K87 [PROTO_18]
      376 SETTABLEKS                       R54 R51 K88 ["isAvatarItemCategorySelected"]
      378 DUPCLOSURE                       R54 K89 [PROTO_22]
      379 CAPTURE                          VAL R2
      380 CAPTURE                          VAL R14
      381 CAPTURE                          VAL R39
      382 SETTABLEKS                       R54 R51 K90 ["onAssetTypeChanged"]
      384 DUPCLOSURE                       R54 K91 [PROTO_24]
      385 CAPTURE                          VAL R39
      386 CAPTURE                          VAL R2
      387 SETTABLEKS                       R54 R51 K92 ["resetValidation"]
      389 DUPCLOSURE                       R54 K93 [PROTO_25]
      390 SETTABLEKS                       R54 R51 K94 ["cancelValidationTasks"]
      392 DUPCLOSURE                       R54 K95 [PROTO_26]
      393 SETTABLEKS                       R54 R51 K96 ["getErrorMessageWithCount"]
      395 DUPCLOSURE                       R54 K97 [PROTO_27]
      396 CAPTURE                          VAL R39
      397 SETTABLEKS                       R54 R51 K98 ["getValidationStatusMessage"]
      399 DUPCLOSURE                       R54 K99 [PROTO_28]
      400 CAPTURE                          VAL R39
      401 SETTABLEKS                       R54 R51 K100 ["getValidationStatusColor"]
      403 DUPCLOSURE                       R54 K101 [PROTO_29]
      404 SETTABLEKS                       R54 R51 K102 ["getAssetCategoryIndex"]
      406 NEWCLOSURE                       R54 P13
      407 CAPTURE                          VAL R50
      408 CAPTURE                          VAL R14
      409 CAPTURE                          REF R52
      410 CAPTURE                          VAL R20
      411 CAPTURE                          VAL R21
      412 SETTABLEKS                       R54 R51 K103 ["getDropdownItemsFor"]
      414 DUPCLOSURE                       R54 K104 [PROTO_32]
      415 SETTABLEKS                       R54 R51 K105 ["getDropdownItems"]
      417 DUPCLOSURE                       R54 K106 [PROTO_33]
      418 CAPTURE                          VAL R14
      419 CAPTURE                          VAL R22
      420 CAPTURE                          VAL R5
      421 CAPTURE                          VAL R25
      422 CAPTURE                          VAL R16
      423 CAPTURE                          VAL R21
      424 SETTABLEKS                       R54 R51 K107 ["getMissingOptionalPartsMessage"]
      426 DUPCLOSURE                       R54 K108 [PROTO_34]
      427 CAPTURE                          VAL R14
      428 CAPTURE                          VAL R22
      429 CAPTURE                          VAL R5
      430 CAPTURE                          VAL R25
      431 CAPTURE                          VAL R16
      432 SETTABLEKS                       R54 R51 K109 ["getUnknownMeshPartMessage"]
      434 DUPCLOSURE                       R54 K110 [PROTO_38]
      435 CAPTURE                          VAL R39
      436 CAPTURE                          VAL R14
      437 CAPTURE                          VAL R15
      438 CAPTURE                          VAL R46
      439 CAPTURE                          VAL R45
      440 CAPTURE                          VAL R8
      441 SETTABLEKS                       R54 R51 K111 ["didUpdate"]
      443 DUPCLOSURE                       R54 K112 [PROTO_39]
      444 SETTABLEKS                       R54 R51 K113 ["willUnmount"]
      446 DUPCLOSURE                       R54 K114 [PROTO_41]
      447 CAPTURE                          VAL R22
      448 CAPTURE                          VAL R39
      449 CAPTURE                          VAL R16
      450 CAPTURE                          VAL R49
      451 CAPTURE                          VAL R48
      452 CAPTURE                          VAL R5
      453 CAPTURE                          VAL R24
      454 CAPTURE                          VAL R29
      455 CAPTURE                          VAL R4
      456 CAPTURE                          VAL R35
      457 CAPTURE                          VAL R36
      458 CAPTURE                          VAL R34
      459 CAPTURE                          VAL R32
      460 CAPTURE                          VAL R28
      461 CAPTURE                          VAL R25
      462 CAPTURE                          VAL R18
      463 SETTABLEKS                       R54 R51 K115 ["render"]
      465 DUPCLOSURE                       R54 K116 [PROTO_42]
      466 DUPCLOSURE                       R55 K117 [PROTO_45]
      467 CAPTURE                          VAL R26
      468 CAPTURE                          VAL R27
      469 MOVE                             R56 R10
      470 DUPTABLE                         R57 K119 [{"Stylizer", "Localization"}]
      471 GETTABLEKS                       R58 R9 K118 ["Stylizer"]
      473 SETTABLEKS                       R58 R57 K118 ["Stylizer"]
      475 GETTABLEKS                       R58 R9 K28 ["Localization"]
      477 SETTABLEKS                       R58 R57 K28 ["Localization"]
      479 CALL                             R56 1 1
      480 MOVE                             R57 R51
      481 CALL                             R56 1 1
      482 MOVE                             R51 R56
      483 GETTABLEKS                       R56 R6 K120 ["connect"]
      485 MOVE                             R57 R54
      486 MOVE                             R58 R55
      487 CALL                             R56 2 1
      488 MOVE                             R57 R51
      489 CALL                             R56 1 -1
      490 CLOSEUPVALS                      R52
      491 RETURN                           R56 -1
