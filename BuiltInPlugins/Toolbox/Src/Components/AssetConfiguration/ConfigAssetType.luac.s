PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["isCatalogAsset"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+5]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K1 ["isUGCBundleType"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["state"]
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
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K3 ["VALIDATION_STATE"]
        4 GETTABLEKS                       R1 R2 K4 ["SUCCESS"]
        6 SETTABLEKS                       R1 R0 K0 ["validationState"]
        8 NEWTABLE                         R1 0 0
       10 SETTABLEKS                       R1 R0 K1 ["validationFailureReasons"]
       12 RETURN                           R0 1

PROTO_11:
        0 DUPTABLE                         R0 K2 [{"validationState", "validationFailureReasons"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K3 ["VALIDATION_STATE"]
        4 GETTABLEKS                       R1 R2 K4 ["FAILURE"]
        6 SETTABLEKS                       R1 R0 K0 ["validationState"]
        8 GETUPVAL                         R1 1
        9 SETTABLEKS                       R1 R0 K1 ["validationFailureReasons"]
       11 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["state"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K1 ["props"]
        6 LOADNIL                          R4
        7 GETUPVAL                         R5 1
        8 CALL                             R5 0 1
        9 JUMPIFNOT                        R5 ; [+7]
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R5 R6 K2 ["getAvatarAssetTypeAsString"]
       13 GETTABLEKS                       R6 R2 K3 ["currentAssetType"]
       15 CALL                             R5 1 1
       16 MOVE                             R4 R5
       17 GETUPVAL                         R6 3
       18 GETTABLEKS                       R5 R6 K4 ["shouldDebugWarnings"]
       20 CALL                             R5 0 1
       21 JUMPIFNOT                        R5 ; [+17]
       22 GETTABLEKS                       R7 R3 K5 ["validationState"]
       24 GETUPVAL                         R10 4
       25 GETTABLEKS                       R9 R10 K6 ["VALIDATION_STATE"]
       27 GETTABLEKS                       R8 R9 K7 ["VALIDATING"]
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
       48 GETUPVAL                         R8 4
       49 GETTABLEKS                       R7 R8 K6 ["VALIDATION_STATE"]
       51 GETTABLEKS                       R6 R7 K13 ["SUCCESS"]
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
       69 GETUPVAL                         R6 5
       70 GETTABLEKS                       R5 R6 K16 ["UGCBundleValidationEvent"]
       72 GETUPVAL                         R8 5
       73 GETTABLEKS                       R7 R8 K17 ["Status"]
       75 GETTABLEKS                       R6 R7 K18 ["Success"]
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
      125 GETUPVAL                         R9 4
      126 GETTABLEKS                       R8 R9 K6 ["VALIDATION_STATE"]
      128 GETTABLEKS                       R7 R8 K28 ["FAILURE"]
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
      146 GETUPVAL                         R7 5
      147 GETTABLEKS                       R6 R7 K16 ["UGCBundleValidationEvent"]
      149 GETUPVAL                         R9 5
      150 GETTABLEKS                       R8 R9 K17 ["Status"]
      152 GETTABLEKS                       R7 R8 K29 ["Failure"]
      154 MOVE                             R8 R4
      155 GETUPVAL                         R10 2
      156 GETTABLEKS                       R9 R10 K30 ["getValidationFailuresAsString"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setValidationState"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["VALIDATION_STATE"]
        6 GETTABLEKS                       R1 R2 K2 ["BEGIN"]
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
       77 GETUPVAL                         R7 1
       78 GETTABLEKS                       R6 R7 K20 ["isCatalogAsset"]
       80 MOVE                             R7 R5
       81 CALL                             R6 1 1
       82 MOVE                             R4 R6
       83 JUMPIF                           R4 ; [+6]
       84 GETUPVAL                         R7 1
       85 GETTABLEKS                       R6 R7 K21 ["isUGCBundleType"]
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
      111 GETUPVAL                         R9 3
      112 GETTABLEKS                       R8 R9 K28 ["VALIDATION_STATE"]
      114 GETTABLEKS                       R7 R8 K29 ["BEGIN"]
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
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K2 ["None"]
        4 SETTABLEKS                       R1 R0 K0 ["currentAssetType"]
        6 RETURN                           R0 1

PROTO_20:
        0 DUPTABLE                         R0 K1 [{"currentAssetType"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K2 ["None"]
        4 SETTABLEKS                       R1 R0 K0 ["currentAssetType"]
        6 RETURN                           R0 1

PROTO_21:
        0 DUPTABLE                         R0 K1 [{"currentAssetType"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K2 ["type"]
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
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R4 R5 K6 ["None"]
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
       44 GETUPVAL                         R6 0
       45 GETTABLEKS                       R5 R6 K6 ["None"]
       47 CALL                             R4 1 0
       48 RETURN                           R0 0
       49 GETTABLEKS                       R4 R3 K8 ["type"]
       51 GETTABLEKS                       R6 R0 K10 ["state"]
       53 GETTABLEKS                       R5 R6 K11 ["currentAssetType"]
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
       88 GETUPVAL                         R4 1
       89 CALL                             R4 0 1
       90 JUMPIFNOT                        R4 ; [+10]
       91 GETTABLEKS                       R4 R1 K14 ["onCategoryChange"]
       93 JUMPIFNOT                        R4 ; [+7]
       94 GETTABLEKS                       R4 R1 K14 ["onCategoryChange"]
       96 GETTABLEKS                       R6 R0 K10 ["state"]
       98 GETTABLEKS                       R5 R6 K15 ["currentSelectedRadioButtonKey"]
      100 CALL                             R4 1 0
      101 GETTABLEKS                       R5 R3 K8 ["type"]
      103 GETUPVAL                         R7 2
      104 GETTABLEKS                       R6 R7 K16 ["isCatalogAsset"]
      106 MOVE                             R7 R5
      107 CALL                             R6 1 1
      108 MOVE                             R4 R6
      109 JUMPIF                           R4 ; [+6]
      110 GETUPVAL                         R7 2
      111 GETTABLEKS                       R6 R7 K17 ["isUGCBundleType"]
      113 MOVE                             R7 R5
      114 CALL                             R6 1 1
      115 MOVE                             R4 R6
      116 JUMPIF                           R4 ; [+4]
      117 NAMECALL                         R4 R0 K2 ["resetValidation"]
      119 CALL                             R4 1 0
      120 RETURN                           R0 0
      121 GETTABLEKS                       R4 R1 K18 ["setValidationState"]
      123 JUMPIFNOT                        R4 ; [+9]
      124 GETTABLEKS                       R4 R1 K18 ["setValidationState"]
      126 GETUPVAL                         R7 3
      127 GETTABLEKS                       R6 R7 K19 ["VALIDATION_STATE"]
      129 GETTABLEKS                       R5 R6 K20 ["BEGIN"]
      131 CALL                             R4 1 0
      132 RETURN                           R0 0
      133 DUPTABLE                         R6 K22 [{"validationState"}]
      134 GETUPVAL                         R9 3
      135 GETTABLEKS                       R8 R9 K19 ["VALIDATION_STATE"]
      137 GETTABLEKS                       R7 R8 K20 ["BEGIN"]
      139 SETTABLEKS                       R7 R6 K21 ["validationState"]
      141 NAMECALL                         R4 R0 K4 ["setState"]
      143 CALL                             R4 2 0
      144 RETURN                           R0 0

PROTO_23:
        0 DUPTABLE                         R0 K3 [{"validationState", "validationFailureReasons", "ugcBundleValidationResults"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K4 ["VALIDATION_STATE"]
        4 GETTABLEKS                       R1 R2 K5 ["NONE"]
        6 SETTABLEKS                       R1 R0 K0 ["validationState"]
        8 NEWTABLE                         R1 0 0
       10 SETTABLEKS                       R1 R0 K1 ["validationFailureReasons"]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R1 R2 K6 ["None"]
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
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R4 R5 K5 ["VALIDATION_STATE"]
       19 GETTABLEKS                       R3 R4 K6 ["NONE"]
       21 CALL                             R2 1 0
       22 GETTABLEKS                       R2 R1 K3 ["setValidationFailureReasons"]
       24 NEWTABLE                         R3 0 0
       26 CALL                             R2 1 0
       27 GETTABLEKS                       R2 R1 K4 ["setUGCBundleValidationResults"]
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R3 R4 K7 ["None"]
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
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R5 R6 K3 ["VALIDATION_STATE"]
        9 GETTABLEKS                       R4 R5 K4 ["VALIDATING"]
       11 JUMPIFNOTEQ                      R3 R4 ; [+9]
       13 GETTABLEKS                       R3 R1 K5 ["Localization"]
       15 LOADK                            R5 K6 ["AssetConfig"]
       16 LOADK                            R6 K7 ["ValidatingInProgress"]
       17 NAMECALL                         R3 R3 K8 ["getText"]
       19 CALL                             R3 3 -1
       20 RETURN                           R3 -1
       21 GETTABLEKS                       R3 R1 K2 ["validationState"]
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R5 R6 K3 ["VALIDATION_STATE"]
       26 GETTABLEKS                       R4 R5 K9 ["SUCCESS"]
       28 JUMPIFNOTEQ                      R3 R4 ; [+9]
       30 GETTABLEKS                       R3 R1 K5 ["Localization"]
       32 LOADK                            R5 K6 ["AssetConfig"]
       33 LOADK                            R6 K10 ["ValidationSuccess"]
       34 NAMECALL                         R3 R3 K8 ["getText"]
       36 CALL                             R3 3 -1
       37 RETURN                           R3 -1
       38 GETTABLEKS                       R3 R1 K2 ["validationState"]
       40 GETUPVAL                         R6 0
       41 GETTABLEKS                       R5 R6 K3 ["VALIDATION_STATE"]
       43 GETTABLEKS                       R4 R5 K11 ["FAILURE"]
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
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R6 R7 K3 ["VALIDATION_STATE"]
        9 GETTABLEKS                       R5 R6 K4 ["SUCCESS"]
       11 JUMPIFNOTEQ                      R4 R5 ; [+6]
       13 GETTABLEKS                       R5 R1 K5 ["typeValidation"]
       15 GETTABLEKS                       R4 R5 K6 ["successResultColor"]
       17 RETURN                           R4 1
       18 GETTABLEKS                       R4 R3 K2 ["validationState"]
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R6 R7 K3 ["VALIDATION_STATE"]
       23 GETTABLEKS                       R5 R6 K7 ["FAILURE"]
       25 JUMPIFNOTEQ                      R4 R5 ; [+6]
       27 GETTABLEKS                       R5 R1 K5 ["typeValidation"]
       29 GETTABLEKS                       R4 R5 K8 ["failureResultColor"]
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
        4 JUMPIFNOTEQKS                    R1 K1 ["AvatarItem"] ; [+90]
        6 GETTABLEKS                       R5 R3 K2 ["allowedBundleTypeSettings"]
        8 JUMPIFEQKNIL                     R5 ; [+50]
       10 GETTABLEKS                       R5 R3 K2 ["allowedBundleTypeSettings"]
       12 MOVE                             R6 R5
       13 LOADNIL                          R7
       14 LOADNIL                          R8
       15 FORGPREP                         R6
       16 GETUPVAL                         R12 0
       17 GETTABLEKS                       R11 R12 K3 ["getUGCBundleTypeFromString"]
       19 MOVE                             R12 R9
       20 CALL                             R11 1 1
       21 DUPTABLE                         R14 K7 [{"name", "selectable", "type"}]
       22 JUMPIFNOT                        R2 ; [+7]
       23 GETUPVAL                         R16 0
       24 GETTABLEKS                       R15 R16 K8 ["getLocalizedUGCBundleName"]
       26 MOVE                             R16 R11
       27 MOVE                             R17 R2
       28 CALL                             R15 2 1
       29 JUMP                             ; [+1]
       30 LOADK                            R15 K9 [""]
       31 SETTABLEKS                       R15 R14 K4 ["name"]
       33 LOADB                            R15 1
       34 SETTABLEKS                       R15 R14 K5 ["selectable"]
       36 SETTABLEKS                       R11 R14 K6 ["type"]
       38 FASTCALL2                        TABLE_INSERT R4 R14 ; [+4]
       40 MOVE                             R13 R4
       41 GETIMPORT                        R12 K12 [table.insert]
       43 CALL                             R12 2 0
       44 FORGLOOP                         R6 1 ; [-29]
       46 GETIMPORT                        R6 K14 [game]
       48 LOADK                            R8 K15 ["BodyFirstInAssetsCategory"]
       49 NAMECALL                         R6 R6 K16 ["GetFastFlag"]
       51 CALL                             R6 2 1
       52 JUMPIFNOT                        R6 ; [+6]
       53 GETIMPORT                        R6 K18 [table.sort]
       55 MOVE                             R7 R4
       56 NEWCLOSURE                       R8 P0
       57 CAPTURE                          UPVAL U1
       58 CALL                             R6 2 0
       59 GETUPVAL                         R5 2
       60 GETTABLEKS                       R6 R3 K19 ["allowedAssetTypesForRelease"]
       62 CALL                             R5 1 1
       63 LENGTH                           R6 R5
       64 LOADN                            R7 0
       65 JUMPIFNOTLT                      R7 R6 ; [+77]
       67 MOVE                             R6 R5
       68 LOADNIL                          R7
       69 LOADNIL                          R8
       70 FORGPREP                         R6
       71 JUMPIFNOT                        R2 ; [+5]
       72 GETUPVAL                         R12 3
       73 MOVE                             R13 R2
       74 CALL                             R12 1 1
       75 GETTABLE                         R11 R12 R10
       76 JUMP                             ; [+1]
       77 LOADK                            R11 K9 [""]
       78 DUPTABLE                         R14 K7 [{"name", "selectable", "type"}]
       79 SETTABLEKS                       R11 R14 K4 ["name"]
       81 LOADB                            R15 1
       82 SETTABLEKS                       R15 R14 K5 ["selectable"]
       84 SETTABLEKS                       R10 R14 K6 ["type"]
       86 FASTCALL2                        TABLE_INSERT R4 R14 ; [+4]
       88 MOVE                             R13 R4
       89 GETIMPORT                        R12 K12 [table.insert]
       91 CALL                             R12 2 0
       92 FORGLOOP                         R6 2 ; [-22]
       94 RETURN                           R4 1
       95 JUMPIFNOT                        R2 ; [+6]
       96 LOADK                            R7 K20 ["General"]
       97 LOADK                            R8 K21 ["AssetTypeModel"]
       98 NAMECALL                         R5 R2 K22 ["getText"]
      100 CALL                             R5 3 1
      101 JUMP                             ; [+1]
      102 LOADK                            R5 K9 [""]
      103 JUMPIFNOT                        R2 ; [+6]
      104 LOADK                            R8 K20 ["General"]
      105 LOADK                            R9 K23 ["AssetTypeAnimation"]
      106 NAMECALL                         R6 R2 K22 ["getText"]
      108 CALL                             R6 3 1
      109 JUMP                             ; [+1]
      110 LOADK                            R6 K9 [""]
      111 DUPTABLE                         R9 K7 [{"name", "selectable", "type"}]
      112 SETTABLEKS                       R5 R9 K4 ["name"]
      114 LOADB                            R10 1
      115 SETTABLEKS                       R10 R9 K5 ["selectable"]
      117 GETIMPORT                        R10 K27 [Enum.AssetType.Model]
      119 SETTABLEKS                       R10 R9 K6 ["type"]
      121 FASTCALL2                        TABLE_INSERT R4 R9 ; [+4]
      123 MOVE                             R8 R4
      124 GETIMPORT                        R7 K12 [table.insert]
      126 CALL                             R7 2 0
      127 DUPTABLE                         R9 K7 [{"name", "selectable", "type"}]
      128 SETTABLEKS                       R6 R9 K4 ["name"]
      130 LOADB                            R10 1
      131 SETTABLEKS                       R10 R9 K5 ["selectable"]
      133 GETIMPORT                        R10 K29 [Enum.AssetType.Animation]
      135 SETTABLEKS                       R10 R9 K6 ["type"]
      137 FASTCALL2                        TABLE_INSERT R4 R9 ; [+4]
      139 MOVE                             R8 R4
      140 GETIMPORT                        R7 K12 [table.insert]
      142 CALL                             R7 2 0
      143 RETURN                           R4 1

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
        2 GETUPVAL                         R7 0
        3 GETTABLEKS                       R6 R7 K1 ["isUGCBundleType"]
        5 MOVE                             R7 R3
        6 CALL                             R6 1 1
        7 JUMPIF                           R6 ; [+2]
        8 LOADNIL                          R6
        9 RETURN                           R6 1
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R6 R7 K2 ["getOptionalBodyPartsNotFound"]
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
       26 GETUPVAL                         R9 1
       27 GETTABLEKS                       R8 R9 K3 ["new"]
       29 CALL                             R8 0 1
       30 GETUPVAL                         R10 2
       31 GETTABLEKS                       R9 R10 K4 ["createElement"]
       33 GETUPVAL                         R10 3
       34 DUPTABLE                         R11 K16 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
       35 GETIMPORT                        R12 K19 [Enum.AutomaticSize.Y]
       37 SETTABLEKS                       R12 R11 K5 ["AutomaticSize"]
       39 LOADN                            R12 1
       40 SETTABLEKS                       R12 R11 K6 ["BackgroundTransparency"]
       42 GETUPVAL                         R13 4
       43 GETTABLEKS                       R12 R13 K20 ["FONT"]
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
       68 GETTABLEKS                       R13 R4 K29 ["assetConfig"]
       70 GETTABLEKS                       R12 R13 K30 ["labelTextColor"]
       72 SETTABLEKS                       R12 R11 K11 ["TextColor"]
       74 GETUPVAL                         R13 4
       75 GETTABLEKS                       R12 R13 K31 ["FONT_SIZE_TITLE"]
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
      106 GETUPVAL                         R17 2
      107 GETTABLEKS                       R16 R17 K4 ["createElement"]
      109 GETUPVAL                         R17 3
      110 DUPTABLE                         R18 K16 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
      111 GETIMPORT                        R19 K19 [Enum.AutomaticSize.Y]
      113 SETTABLEKS                       R19 R18 K5 ["AutomaticSize"]
      115 LOADN                            R19 1
      116 SETTABLEKS                       R19 R18 K6 ["BackgroundTransparency"]
      118 GETUPVAL                         R20 4
      119 GETTABLEKS                       R19 R20 K20 ["FONT"]
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
      137 GETTABLEKS                       R20 R4 K29 ["assetConfig"]
      139 GETTABLEKS                       R19 R20 K30 ["labelTextColor"]
      141 SETTABLEKS                       R19 R18 K11 ["TextColor"]
      143 GETUPVAL                         R20 4
      144 GETTABLEKS                       R19 R20 K31 ["FONT_SIZE_TITLE"]
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
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R5 R6 K1 ["isUGCBundleType"]
        5 MOVE                             R6 R2
        6 CALL                             R5 1 1
        7 JUMPIF                           R5 ; [+2]
        8 LOADNIL                          R5
        9 RETURN                           R5 1
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R5 R6 K2 ["getUnknownMeshPartNames"]
       13 MOVE                             R6 R1
       14 CALL                             R5 1 1
       15 JUMPIFNOT                        R5 ; [+4]
       16 LENGTH                           R6 R5
       17 LOADN                            R7 0
       18 JUMPIFNOTLE                      R6 R7 ; [+3]
       20 LOADNIL                          R6
       21 RETURN                           R6 1
       22 NEWTABLE                         R6 1 0
       24 GETUPVAL                         R8 1
       25 GETTABLEKS                       R7 R8 K3 ["new"]
       27 CALL                             R7 0 1
       28 GETUPVAL                         R9 2
       29 GETTABLEKS                       R8 R9 K4 ["createElement"]
       31 GETUPVAL                         R9 3
       32 DUPTABLE                         R10 K16 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
       33 GETIMPORT                        R11 K19 [Enum.AutomaticSize.Y]
       35 SETTABLEKS                       R11 R10 K5 ["AutomaticSize"]
       37 LOADN                            R11 1
       38 SETTABLEKS                       R11 R10 K6 ["BackgroundTransparency"]
       40 GETUPVAL                         R12 4
       41 GETTABLEKS                       R11 R12 K20 ["FONT"]
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
       66 GETTABLEKS                       R12 R3 K29 ["assetConfig"]
       68 GETTABLEKS                       R11 R12 K30 ["labelTextColor"]
       70 SETTABLEKS                       R11 R10 K11 ["TextColor"]
       72 GETUPVAL                         R12 4
       73 GETTABLEKS                       R11 R12 K31 ["FONT_SIZE_TITLE"]
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
       95 GETUPVAL                         R14 2
       96 GETTABLEKS                       R13 R14 K4 ["createElement"]
       98 GETUPVAL                         R14 3
       99 DUPTABLE                         R15 K16 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
      100 GETIMPORT                        R16 K19 [Enum.AutomaticSize.Y]
      102 SETTABLEKS                       R16 R15 K5 ["AutomaticSize"]
      104 LOADN                            R16 1
      105 SETTABLEKS                       R16 R15 K6 ["BackgroundTransparency"]
      107 GETUPVAL                         R17 4
      108 GETTABLEKS                       R16 R17 K20 ["FONT"]
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
      126 GETTABLEKS                       R17 R3 K29 ["assetConfig"]
      128 GETTABLEKS                       R16 R17 K30 ["labelTextColor"]
      130 SETTABLEKS                       R16 R15 K11 ["TextColor"]
      132 GETUPVAL                         R17 4
      133 GETTABLEKS                       R16 R17 K31 ["FONT_SIZE_TITLE"]
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
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_37:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R3 K1 ["Localization"]
        4 LOADNIL                          R5
        5 NEWTABLE                         R6 0 0
        7 GETTABLEKS                       R7 R3 K2 ["canUploadWithUgcRestrictions"]
        9 GETTABLEKS                       R8 R3 K3 ["canUploadWithUgcRestrictionsDenyReason"]
       11 NAMECALL                         R9 R0 K4 ["isAvatarItemCategorySelected"]
       13 CALL                             R9 1 1
       14 JUMPIFNOT                        R9 ; [+65]
       15 JUMPIFEQKNIL                     R7 ; [+81]
       17 JUMPIFNOTEQKB                    R7 FALSE ; [+79]
       19 JUMPIFNOTEQKS                    R8 K5 ["MissingIdVerification"] ; [+8]
       21 LOADK                            R11 K6 ["AssetConfig"]
       22 LOADK                            R12 K7 ["UploadDenied_MissingIdVerification_Text"]
       23 NAMECALL                         R9 R4 K8 ["getText"]
       25 CALL                             R9 3 1
       26 MOVE                             R5 R9
       27 JUMP                             ; [+18]
       28 JUMPIFNOTEQKS                    R8 K9 ["MissingPremiumSubscriptionTier"] ; [+8]
       30 LOADK                            R11 K6 ["AssetConfig"]
       31 LOADK                            R12 K10 ["UploadDenied_MissingPremiumSubscriptionTier_Text"]
       32 NAMECALL                         R9 R4 K8 ["getText"]
       34 CALL                             R9 3 1
       35 MOVE                             R5 R9
       36 JUMP                             ; [+9]
       37 LOADK                            R11 K6 ["AssetConfig"]
       38 LOADK                            R12 K11 ["UploadDenied_UnknownError"]
       39 DUPTABLE                         R13 K13 [{"errorCode"}]
       40 SETTABLEKS                       R8 R13 K12 ["errorCode"]
       42 NAMECALL                         R9 R4 K8 ["getText"]
       44 CALL                             R9 4 1
       45 MOVE                             R5 R9
       46 NEWTABLE                         R9 2 0
       48 DUPTABLE                         R10 K16 [{"LinkText", "LinkCallback"}]
       49 LOADK                            R13 K6 ["AssetConfig"]
       50 LOADK                            R14 K17 ["UploadDenied_MissingIdVerification_Link"]
       51 NAMECALL                         R11 R4 K8 ["getText"]
       53 CALL                             R11 3 1
       54 SETTABLEKS                       R11 R10 K14 ["LinkText"]
       56 DUPCLOSURE                       R11 K18 [PROTO_35]
       57 CAPTURE                          UPVAL U0
       58 CAPTURE                          UPVAL U1
       59 SETTABLEKS                       R11 R10 K15 ["LinkCallback"]
       61 SETTABLEKS                       R10 R9 K19 ["[Age_Verified]"]
       63 DUPTABLE                         R10 K16 [{"LinkText", "LinkCallback"}]
       64 LOADK                            R13 K6 ["AssetConfig"]
       65 LOADK                            R14 K20 ["UploadDenied_MissingPremiumSubscriptionTier_Link"]
       66 NAMECALL                         R11 R4 K8 ["getText"]
       68 CALL                             R11 3 1
       69 SETTABLEKS                       R11 R10 K14 ["LinkText"]
       71 DUPCLOSURE                       R11 K21 [PROTO_36]
       72 CAPTURE                          UPVAL U0
       73 CAPTURE                          UPVAL U2
       74 SETTABLEKS                       R11 R10 K15 ["LinkCallback"]
       76 SETTABLEKS                       R10 R9 K22 ["[Premium_1000_Or_2200_Subscription]"]
       78 MOVE                             R6 R9
       79 RETURN                           R5 2
       80 JUMPIFNOT                        R1 ; [+7]
       81 LOADK                            R11 K6 ["AssetConfig"]
       82 LOADK                            R12 K23 ["InsufficientRobuxWarning"]
       83 NAMECALL                         R9 R4 K8 ["getText"]
       85 CALL                             R9 3 1
       86 MOVE                             R5 R9
       87 RETURN                           R5 2
       88 JUMPIFNOT                        R2 ; [+8]
       89 GETUPVAL                         R9 3
       90 JUMPIF                           R9 ; [+6]
       91 LOADK                            R11 K6 ["AssetConfig"]
       92 LOADK                            R12 K24 ["ModelPublishWarning"]
       93 NAMECALL                         R9 R4 K8 ["getText"]
       95 CALL                             R9 3 1
       96 MOVE                             R5 R9
       97 RETURN                           R5 2

PROTO_38:
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

PROTO_39:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getValidationErrorText"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K1 ["Localization"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_40:
        0 DUPCLOSURE                       R0 K0 [PROTO_38]
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
       28 GETUPVAL                         R12 3
       29 GETTABLEKS                       R11 R12 K10 ["currentAssetType"]
       31 GETTABLEKS                       R10 R11 K11 ["Name"]
       33 JUMPIFNOTEQ                      R8 R10 ; [+2]
       35 LOADB                            R4 0
       36 FORGLOOP                         R5 1 ; [-16]
       38 JUMPIFNOT                        R4 ; [+15]
       39 GETUPVAL                         R6 4
       40 GETTABLEKS                       R5 R6 K12 ["validate"]
       42 MOVE                             R6 R0
       43 GETUPVAL                         R8 5
       44 GETTABLEKS                       R7 R8 K13 ["instances"]
       46 CALL                             R6 1 1
       47 GETUPVAL                         R8 3
       48 GETTABLEKS                       R7 R8 K10 ["currentAssetType"]
       50 CALL                             R5 2 2
       51 MOVE                             R1 R5
       52 MOVE                             R2 R6
       53 JUMP                             ; [+3]
       54 LOADB                            R1 1
       55 NEWTABLE                         R2 0 0
       57 JUMPIFNOT                        R4 ; [+49]
       58 GETUPVAL                         R6 4
       59 GETTABLEKS                       R5 R6 K14 ["isFolderStructureEnabled"]
       61 JUMPIFNOT                        R5 ; [+45]
       62 GETUPVAL                         R6 4
       63 GETTABLEKS                       R5 R6 K14 ["isFolderStructureEnabled"]
       65 CALL                             R5 0 1
       66 JUMPIFNOT                        R5 ; [+40]
       67 GETUPVAL                         R6 4
       68 GETTABLEKS                       R5 R6 K15 ["ValidateAsset"]
       70 MOVE                             R6 R0
       71 GETUPVAL                         R8 5
       72 GETTABLEKS                       R7 R8 K13 ["instances"]
       74 CALL                             R6 1 1
       75 GETUPVAL                         R8 3
       76 GETTABLEKS                       R7 R8 K10 ["currentAssetType"]
       78 DUPTABLE                         R8 K18 [{"source", "enforceR15FolderStructure"}]
       79 LOADK                            R9 K19 ["Toolbox"]
       80 SETTABLEKS                       R9 R8 K16 ["source"]
       82 LOADB                            R9 0
       83 SETTABLEKS                       R9 R8 K17 ["enforceR15FolderStructure"]
       85 CALL                             R5 3 1
       86 GETUPVAL                         R7 4
       87 GETTABLEKS                       R6 R7 K20 ["isEntrypointMergingEnabled"]
       89 JUMPIFNOT                        R6 ; [+17]
       90 GETUPVAL                         R7 4
       91 GETTABLEKS                       R6 R7 K20 ["isEntrypointMergingEnabled"]
       93 CALL                             R6 0 1
       94 JUMPIFNOT                        R6 ; [+12]
       95 GETUPVAL                         R7 4
       96 GETTABLEKS                       R6 R7 K21 ["combineResultsIntoLegacy"]
       98 MOVE                             R7 R1
       99 MOVE                             R8 R2
      100 MOVE                             R9 R5
      101 NEWCLOSURE                       R10 P1
      102 CAPTURE                          UPVAL U6
      103 CAPTURE                          UPVAL U5
      104 CALL                             R6 4 2
      105 MOVE                             R1 R6
      106 MOVE                             R2 R7
      107 GETUPVAL                         R6 7
      108 GETTABLEKS                       R5 R6 K22 ["validationCallback"]
      110 MOVE                             R6 R1
      111 MOVE                             R7 R2
      112 CALL                             R5 2 0
      113 RETURN                           R0 0

PROTO_41:
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
       33 GETUPVAL                         R8 0
       34 GETTABLEKS                       R7 R8 K7 ["VALIDATION_STATE"]
       36 GETTABLEKS                       R6 R7 K8 ["BEGIN"]
       38 JUMPIFNOTEQ                      R5 R6 ; [+13]
       40 GETTABLEKS                       R5 R3 K9 ["setValidationState"]
       42 JUMPIFNOT                        R5 ; [+9]
       43 GETTABLEKS                       R5 R3 K9 ["setValidationState"]
       45 GETUPVAL                         R8 0
       46 GETTABLEKS                       R7 R8 K7 ["VALIDATION_STATE"]
       48 GETTABLEKS                       R6 R7 K10 ["VALIDATING"]
       50 CALL                             R5 1 0
       51 RETURN                           R0 0
       52 GETTABLEKS                       R5 R3 K6 ["validationState"]
       54 GETUPVAL                         R8 0
       55 GETTABLEKS                       R7 R8 K7 ["VALIDATION_STATE"]
       57 GETTABLEKS                       R6 R7 K10 ["VALIDATING"]
       59 JUMPIFNOTEQ                      R5 R6 ; [+22]
       61 GETUPVAL                         R6 1
       62 GETTABLEKS                       R5 R6 K11 ["isUGCBundleType"]
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

PROTO_42:
        0 NAMECALL                         R1 R0 K0 ["cancelValidationTasks"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_43:
        0 DUPTABLE                         R0 K1 [{"displayAssetSelection"}]
        1 GETUPVAL                         R2 0
        2 NOT                              R1 R2
        3 SETTABLEKS                       R1 R0 K0 ["displayAssetSelection"]
        5 RETURN                           R0 1

PROTO_44:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["Stylizer"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K4 ["new"]
       11 CALL                             R5 0 1
       12 GETTABLEKS                       R7 R1 K5 ["validationState"]
       14 GETUPVAL                         R10 1
       15 GETTABLEKS                       R9 R10 K6 ["VALIDATION_STATE"]
       17 GETTABLEKS                       R8 R9 K7 ["FAILURE"]
       19 JUMPIFEQ                         R7 R8 ; [+2]
       21 LOADB                            R6 0 +1
       22 LOADB                            R6 1
       23 JUMPIFNOT                        R6 ; [+2]
       24 LOADN                            R7 24
       25 JUMP                             ; [+1]
       26 LOADN                            R7 0
       27 GETUPVAL                         R9 2
       28 GETTABLEKS                       R8 R9 K8 ["FONT_SIZE_TITLE"]
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
       77 GETUPVAL                         R19 3
       78 CALL                             R19 0 1
       79 JUMPIF                           R19 ; [+9]
       80 JUMPIFNOT                        R10 ; [+8]
       81 GETUPVAL                         R19 4
       82 JUMPIF                           R19 ; [+6]
       83 LOADK                            R21 K17 ["AssetConfig"]
       84 LOADK                            R22 K27 ["ModelPublishWarning"]
       85 NAMECALL                         R19 R3 K19 ["getText"]
       87 CALL                             R19 3 1
       88 MOVE                             R18 R19
       89 GETTABLEKS                       R19 R1 K28 ["canAffordUploadFee"]
       91 GETTABLEKS                       R20 R1 K29 ["uploadFee"]
       93 LOADN                            R22 0
       94 JUMPIFNOTLT                      R22 R20 ; [+3]
       96 NOT                              R21 R19
       97 JUMP                             ; [+1]
       98 LOADB                            R21 0
       99 LOADNIL                          R22
      100 GETUPVAL                         R23 3
      101 CALL                             R23 0 1
      102 JUMPIF                           R23 ; [+7]
      103 JUMPIFNOT                        R21 ; [+6]
      104 LOADK                            R25 K17 ["AssetConfig"]
      105 LOADK                            R26 K30 ["InsufficientRobuxWarning"]
      106 NAMECALL                         R23 R3 K19 ["getText"]
      108 CALL                             R23 3 1
      109 MOVE                             R22 R23
      110 GETTABLEKS                       R23 R2 K31 ["displayValidationErrorMessages"]
      112 LOADNIL                          R24
      113 NEWTABLE                         R25 0 0
      115 GETUPVAL                         R26 3
      116 CALL                             R26 0 1
      117 JUMPIFNOT                        R26 ; [+7]
      118 MOVE                             R28 R21
      119 MOVE                             R29 R10
      120 NAMECALL                         R26 R0 K32 ["getUgcRestrictionsWarningText"]
      122 CALL                             R26 3 2
      123 MOVE                             R24 R26
      124 MOVE                             R25 R27
      125 LOADNIL                          R26
      126 GETUPVAL                         R27 5
      127 CALL                             R27 0 1
      128 JUMPIFNOT                        R27 ; [+6]
      129 LOADK                            R29 K17 ["AssetConfig"]
      130 LOADK                            R30 K33 ["EmoteAnimationWarning"]
      131 NAMECALL                         R27 R3 K19 ["getText"]
      133 CALL                             R27 3 1
      134 MOVE                             R26 R27
      135 GETUPVAL                         R27 6
      136 JUMPIFNOT                        R27 ; [+9]
      137 GETTABLEKS                       R27 R2 K34 ["displayAssetSelection"]
      139 JUMPIFNOTEQKNIL                  R27 ; [+6]
      141 NEWCLOSURE                       R29 P0
      142 CAPTURE                          VAL R11
      143 NAMECALL                         R27 R0 K35 ["setState"]
      145 CALL                             R27 2 0
      146 GETUPVAL                         R28 6
      147 JUMPIFNOT                        R28 ; [+3]
      148 GETTABLEKS                       R27 R2 K34 ["displayAssetSelection"]
      150 JUMP                             ; [+1]
      151 NOT                              R27 R11
      152 GETUPVAL                         R29 7
      153 GETTABLEKS                       R28 R29 K36 ["createElement"]
      155 GETUPVAL                         R29 8
      156 DUPTABLE                         R30 K46 [{"AutomaticSize", "BackgroundColor3", "BackgroundTransparency", "HorizontalAlignment", "Layout", "LayoutOrder", "Padding", "Spacing", "VerticalAlignment"}]
      157 GETIMPORT                        R31 K48 [Enum.AutomaticSize.XY]
      159 SETTABLEKS                       R31 R30 K37 ["AutomaticSize"]
      161 GETTABLEKS                       R32 R4 K49 ["typeSelection"]
      163 GETTABLEKS                       R31 R32 K50 ["background"]
      165 SETTABLEKS                       R31 R30 K38 ["BackgroundColor3"]
      167 LOADN                            R31 1
      168 SETTABLEKS                       R31 R30 K39 ["BackgroundTransparency"]
      170 GETIMPORT                        R31 K52 [Enum.HorizontalAlignment.Left]
      172 SETTABLEKS                       R31 R30 K40 ["HorizontalAlignment"]
      174 GETIMPORT                        R31 K55 [Enum.FillDirection.Vertical]
      176 SETTABLEKS                       R31 R30 K41 ["Layout"]
      178 GETTABLEKS                       R31 R1 K42 ["LayoutOrder"]
      180 SETTABLEKS                       R31 R30 K42 ["LayoutOrder"]
      182 DUPTABLE                         R31 K57 [{"Bottom"}]
      183 LOADN                            R32 32
      184 SETTABLEKS                       R32 R31 K56 ["Bottom"]
      186 SETTABLEKS                       R31 R30 K43 ["Padding"]
      188 LOADN                            R31 30
      189 SETTABLEKS                       R31 R30 K44 ["Spacing"]
      191 GETIMPORT                        R31 K59 [Enum.VerticalAlignment.Top]
      193 SETTABLEKS                       R31 R30 K45 ["VerticalAlignment"]
      195 DUPTABLE                         R31 K63 [{"ValidationErrorMessageBox", "ContentTypeRadioButtons", "AssetCategoryDropDown", "EmoteAnimationWarning"}]
      196 JUMPIFNOT                        R23 ; [+59]
      197 GETUPVAL                         R33 7
      198 GETTABLEKS                       R32 R33 K36 ["createElement"]
      200 GETUPVAL                         R33 9
      201 DUPTABLE                         R34 K74 [{"buttons", "Icon", "InformativeText", "onButtonClicked", "onClose", "Text", "Title", "isScrollable", "messageBoxHeight", "isResizable"}]
      202 NEWTABLE                         R35 0 1
      204 DUPTABLE                         R36 K78 [{"Text", "Font", "TextSize", "action"}]
      205 SETTABLEKS                       R13 R36 K69 ["Text"]
      207 GETTABLEKS                       R37 R4 K75 ["Font"]
      209 SETTABLEKS                       R37 R36 K75 ["Font"]
      211 GETTABLEKS                       R37 R4 K76 ["TextSize"]
      213 SETTABLEKS                       R37 R36 K76 ["TextSize"]
      215 LOADK                            R37 K79 ["yes"]
      216 SETTABLEKS                       R37 R36 K77 ["action"]
      218 SETLIST                          R35 R36 1 [1]
      220 SETTABLEKS                       R35 R34 K64 ["buttons"]
      222 LOADK                            R35 K80 ["rbxasset://textures/ui/ErrorIcon.png"]
      223 SETTABLEKS                       R35 R34 K65 ["Icon"]
      225 NAMECALL                         R35 R0 K81 ["getAvatarItemCategoryErrors"]
      227 CALL                             R35 1 1
      228 SETTABLEKS                       R35 R34 K66 ["InformativeText"]
      230 GETTABLEKS                       R35 R0 K82 ["onValidationErrorMessageBoxClosed"]
      232 SETTABLEKS                       R35 R34 K67 ["onButtonClicked"]
      234 GETTABLEKS                       R35 R0 K82 ["onValidationErrorMessageBoxClosed"]
      236 SETTABLEKS                       R35 R34 K68 ["onClose"]
      238 NAMECALL                         R35 R0 K83 ["getAvatarItemCategoryErrorsPrimaryText"]
      240 CALL                             R35 1 1
      241 SETTABLEKS                       R35 R34 K69 ["Text"]
      243 SETTABLEKS                       R12 R34 K70 ["Title"]
      245 LOADB                            R35 1
      246 SETTABLEKS                       R35 R34 K71 ["isScrollable"]
      248 LOADN                            R35 244
      249 SETTABLEKS                       R35 R34 K72 ["messageBoxHeight"]
      251 LOADB                            R35 1
      252 SETTABLEKS                       R35 R34 K73 ["isResizable"]
      254 CALL                             R32 2 1
      255 JUMP                             ; [+1]
      256 LOADNIL                          R32
      257 SETTABLEKS                       R32 R31 K60 ["ValidationErrorMessageBox"]
      259 JUMPIFNOT                        R27 ; [+50]
      260 GETUPVAL                         R33 10
      261 GETTABLEKS                       R32 R33 K36 ["createElement"]
      263 GETUPVAL                         R33 11
      264 DUPTABLE                         R34 K96 [{"layoutOrder", "contentTypeTitle", "currentSelectedRadioButtonKey", "onRadioButtonClicked", "radioButtonDevelopmentItemText", "radioButtonAvatarItemText", "warningMessageText", "warningMessageLinkMap", "isModel", "modelPublishWarningText", "insufficientRobuxWarningText", "theme"}]
      265 NAMECALL                         R35 R5 K97 ["getNextOrder"]
      267 CALL                             R35 1 1
      268 SETTABLEKS                       R35 R34 K84 ["layoutOrder"]
      270 SETTABLEKS                       R14 R34 K85 ["contentTypeTitle"]
      272 GETTABLEKS                       R35 R2 K86 ["currentSelectedRadioButtonKey"]
      274 SETTABLEKS                       R35 R34 K86 ["currentSelectedRadioButtonKey"]
      276 GETTABLEKS                       R35 R0 K87 ["onRadioButtonClicked"]
      278 SETTABLEKS                       R35 R34 K87 ["onRadioButtonClicked"]
      280 GETUPVAL                         R36 12
      281 CALL                             R36 0 1
      282 JUMPIFNOT                        R36 ; [+2]
      283 LOADNIL                          R35
      284 JUMP                             ; [+1]
      285 MOVE                             R35 R15
      286 SETTABLEKS                       R35 R34 K88 ["radioButtonDevelopmentItemText"]
      288 GETUPVAL                         R36 12
      289 CALL                             R36 0 1
      290 JUMPIFNOT                        R36 ; [+2]
      291 LOADNIL                          R35
      292 JUMP                             ; [+1]
      293 MOVE                             R35 R16
      294 SETTABLEKS                       R35 R34 K89 ["radioButtonAvatarItemText"]
      296 SETTABLEKS                       R24 R34 K90 ["warningMessageText"]
      298 SETTABLEKS                       R25 R34 K91 ["warningMessageLinkMap"]
      300 SETTABLEKS                       R10 R34 K92 ["isModel"]
      302 SETTABLEKS                       R18 R34 K93 ["modelPublishWarningText"]
      304 SETTABLEKS                       R22 R34 K94 ["insufficientRobuxWarningText"]
      306 SETTABLEKS                       R4 R34 K95 ["theme"]
      308 CALL                             R32 2 1
      309 JUMP                             ; [+1]
      310 LOADNIL                          R32
      311 SETTABLEKS                       R32 R31 K61 ["ContentTypeRadioButtons"]
      313 JUMPIFNOT                        R27 ; [+266]
      314 GETUPVAL                         R33 7
      315 GETTABLEKS                       R32 R33 K36 ["createElement"]
      317 GETUPVAL                         R33 13
      318 DUPTABLE                         R34 K98 [{"AutomaticSize", "LayoutOrder", "Title"}]
      319 GETIMPORT                        R35 K48 [Enum.AutomaticSize.XY]
      321 SETTABLEKS                       R35 R34 K37 ["AutomaticSize"]
      323 NAMECALL                         R35 R5 K97 ["getNextOrder"]
      325 CALL                             R35 1 1
      326 SETTABLEKS                       R35 R34 K42 ["LayoutOrder"]
      328 SETTABLEKS                       R17 R34 K70 ["Title"]
      330 DUPTABLE                         R35 K103 [{"Dropdown", "ValidationResult", "ErrorIconButton", "ErrorMessageTextButton"}]
      331 GETUPVAL                         R37 12
      332 CALL                             R37 0 1
      333 JUMPIFNOT                        R37 ; [+38]
      334 GETUPVAL                         R37 10
      335 GETTABLEKS                       R36 R37 K36 ["createElement"]
      337 GETUPVAL                         R37 14
      338 DUPTABLE                         R38 K110 [{"LayoutOrder", "items", "selectedDropDownIndex", "onItemClicked", "placeholder", "isDisabled", "width"}]
      339 LOADN                            R39 1
      340 SETTABLEKS                       R39 R38 K42 ["LayoutOrder"]
      342 MOVE                             R41 R3
      343 NAMECALL                         R39 R0 K111 ["getDropdownItems"]
      345 CALL                             R39 2 1
      346 SETTABLEKS                       R39 R38 K104 ["items"]
      348 NAMECALL                         R39 R0 K112 ["getAssetCategoryIndex"]
      350 CALL                             R39 1 1
      351 SETTABLEKS                       R39 R38 K105 ["selectedDropDownIndex"]
      353 GETTABLEKS                       R39 R0 K113 ["setAssetCategoryIndex"]
      355 SETTABLEKS                       R39 R38 K106 ["onItemClicked"]
      357 LOADK                            R41 K99 ["Dropdown"]
      358 LOADK                            R42 K114 ["ChooseOne"]
      359 NAMECALL                         R39 R3 K19 ["getText"]
      361 CALL                             R39 3 1
      362 SETTABLEKS                       R39 R38 K107 ["placeholder"]
      364 LOADB                            R39 0
      365 SETTABLEKS                       R39 R38 K108 ["isDisabled"]
      367 LOADN                            R39 144
      368 SETTABLEKS                       R39 R38 K109 ["width"]
      370 CALL                             R36 2 1
      371 JUMP                             ; [+39]
      372 GETUPVAL                         R37 7
      373 GETTABLEKS                       R36 R37 K36 ["createElement"]
      375 GETUPVAL                         R37 15
      376 DUPTABLE                         R38 K119 [{"fontSize", "items", "onItemClicked", "rowHeight", "selectedDropDownIndex", "Size", "visibleDropDownCount"}]
      377 LOADN                            R39 20
      378 SETTABLEKS                       R39 R38 K115 ["fontSize"]
      380 MOVE                             R41 R3
      381 NAMECALL                         R39 R0 K111 ["getDropdownItems"]
      383 CALL                             R39 2 1
      384 SETTABLEKS                       R39 R38 K104 ["items"]
      386 GETTABLEKS                       R39 R0 K113 ["setAssetCategoryIndex"]
      388 SETTABLEKS                       R39 R38 K106 ["onItemClicked"]
      390 LOADN                            R39 24
      391 SETTABLEKS                       R39 R38 K116 ["rowHeight"]
      393 NAMECALL                         R39 R0 K112 ["getAssetCategoryIndex"]
      395 CALL                             R39 1 1
      396 SETTABLEKS                       R39 R38 K105 ["selectedDropDownIndex"]
      398 GETIMPORT                        R39 K121 [UDim2.new]
      400 LOADN                            R40 0
      401 LOADN                            R41 144
      402 LOADN                            R42 0
      403 LOADN                            R43 40
      404 CALL                             R39 4 1
      405 SETTABLEKS                       R39 R38 K117 ["Size"]
      407 LOADN                            R39 6
      408 SETTABLEKS                       R39 R38 K118 ["visibleDropDownCount"]
      410 CALL                             R36 2 1
      411 SETTABLEKS                       R36 R35 K99 ["Dropdown"]
      413 JUMPIF                           R6 ; [+44]
      414 GETUPVAL                         R37 7
      415 GETTABLEKS                       R36 R37 K36 ["createElement"]
      417 GETUPVAL                         R37 16
      418 DUPTABLE                         R38 K127 [{"AutomaticSize", "Position", "Text", "TextColor", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
      419 GETIMPORT                        R39 K48 [Enum.AutomaticSize.XY]
      421 SETTABLEKS                       R39 R38 K37 ["AutomaticSize"]
      423 GETIMPORT                        R39 K121 [UDim2.new]
      425 LOADN                            R40 0
      426 ADDK                             R42 R7 K129 [400]
      427 ADDK                             R41 R42 K128 [16]
      428 LOADN                            R42 0
      429 SUBRK                            R44 R131 K8 ["FONT_SIZE_TITLE"]
      430 DIVK                             R43 R44 K130 [2]
      431 CALL                             R39 4 1
      432 SETTABLEKS                       R39 R38 K122 ["Position"]
      434 NAMECALL                         R39 R0 K132 ["getValidationStatusMessage"]
      436 CALL                             R39 1 1
      437 SETTABLEKS                       R39 R38 K69 ["Text"]
      439 MOVE                             R41 R4
      440 NAMECALL                         R39 R0 K133 ["getValidationStatusColor"]
      442 CALL                             R39 2 1
      443 SETTABLEKS                       R39 R38 K123 ["TextColor"]
      445 LOADB                            R39 1
      446 SETTABLEKS                       R39 R38 K124 ["TextWrapped"]
      448 GETIMPORT                        R39 K134 [Enum.TextXAlignment.Left]
      450 SETTABLEKS                       R39 R38 K125 ["TextXAlignment"]
      452 GETIMPORT                        R39 K136 [Enum.TextYAlignment.Center]
      454 SETTABLEKS                       R39 R38 K126 ["TextYAlignment"]
      456 CALL                             R36 2 1
      457 JUMP                             ; [+1]
      458 LOADNIL                          R36
      459 SETTABLEKS                       R36 R35 K100 ["ValidationResult"]
      461 JUMPIFNOT                        R6 ; [+47]
      462 GETUPVAL                         R37 7
      463 GETTABLEKS                       R36 R37 K36 ["createElement"]
      465 LOADK                            R37 K137 ["ImageButton"]
      466 NEWTABLE                         R38 8 0
      468 LOADB                            R39 0
      469 SETTABLEKS                       R39 R38 K138 ["AutoButtonColor"]
      471 LOADN                            R39 1
      472 SETTABLEKS                       R39 R38 K39 ["BackgroundTransparency"]
      474 LOADK                            R39 K80 ["rbxasset://textures/ui/ErrorIcon.png"]
      475 SETTABLEKS                       R39 R38 K139 ["Image"]
      477 MOVE                             R41 R4
      478 NAMECALL                         R39 R0 K133 ["getValidationStatusColor"]
      480 CALL                             R39 2 1
      481 SETTABLEKS                       R39 R38 K140 ["ImageColor3"]
      483 GETIMPORT                        R39 K121 [UDim2.new]
      485 LOADN                            R40 0
      486 LOADN                            R41 152
      487 LOADN                            R42 0
      488 LOADN                            R43 8
      489 CALL                             R39 4 1
      490 SETTABLEKS                       R39 R38 K122 ["Position"]
      492 GETIMPORT                        R39 K142 [UDim2.fromOffset]
      494 LOADN                            R40 24
      495 LOADN                            R41 24
      496 CALL                             R39 2 1
      497 SETTABLEKS                       R39 R38 K117 ["Size"]
      499 GETUPVAL                         R41 7
      500 GETTABLEKS                       R40 R41 K143 ["Event"]
      502 GETTABLEKS                       R39 R40 K144 ["Activated"]
      504 GETTABLEKS                       R40 R0 K145 ["openValidationErrorMessageBox"]
      506 SETTABLE                         R40 R38 R39
      507 CALL                             R36 2 1
      508 JUMP                             ; [+1]
      509 LOADNIL                          R36
      510 SETTABLEKS                       R36 R35 K101 ["ErrorIconButton"]
      512 JUMPIFNOT                        R6 ; [+62]
      513 GETUPVAL                         R37 7
      514 GETTABLEKS                       R36 R37 K36 ["createElement"]
      516 LOADK                            R37 K146 ["TextButton"]
      517 NEWTABLE                         R38 16 0
      519 GETIMPORT                        R39 K48 [Enum.AutomaticSize.XY]
      521 SETTABLEKS                       R39 R38 K37 ["AutomaticSize"]
      523 LOADN                            R39 1
      524 SETTABLEKS                       R39 R38 K39 ["BackgroundTransparency"]
      526 GETTABLEKS                       R39 R4 K75 ["Font"]
      528 SETTABLEKS                       R39 R38 K75 ["Font"]
      530 GETIMPORT                        R39 K121 [UDim2.new]
      532 LOADN                            R40 0
      533 ADDK                             R42 R7 K129 [400]
      534 ADDK                             R41 R42 K128 [16]
      535 LOADN                            R42 0
      536 SUBRK                            R44 R131 K8 ["FONT_SIZE_TITLE"]
      537 DIVK                             R43 R44 K130 [2]
      538 CALL                             R39 4 1
      539 SETTABLEKS                       R39 R38 K122 ["Position"]
      541 NAMECALL                         R39 R0 K132 ["getValidationStatusMessage"]
      543 CALL                             R39 1 1
      544 SETTABLEKS                       R39 R38 K69 ["Text"]
      546 MOVE                             R41 R4
      547 NAMECALL                         R39 R0 K133 ["getValidationStatusColor"]
      549 CALL                             R39 2 1
      550 SETTABLEKS                       R39 R38 K147 ["TextColor3"]
      552 GETUPVAL                         R40 2
      553 GETTABLEKS                       R39 R40 K8 ["FONT_SIZE_TITLE"]
      555 SETTABLEKS                       R39 R38 K76 ["TextSize"]
      557 GETIMPORT                        R39 K134 [Enum.TextXAlignment.Left]
      559 SETTABLEKS                       R39 R38 K125 ["TextXAlignment"]
      561 GETIMPORT                        R39 K136 [Enum.TextYAlignment.Center]
      563 SETTABLEKS                       R39 R38 K126 ["TextYAlignment"]
      565 GETUPVAL                         R41 7
      566 GETTABLEKS                       R40 R41 K143 ["Event"]
      568 GETTABLEKS                       R39 R40 K144 ["Activated"]
      570 GETTABLEKS                       R40 R0 K145 ["openValidationErrorMessageBox"]
      572 SETTABLE                         R40 R38 R39
      573 CALL                             R36 2 1
      574 JUMP                             ; [+1]
      575 LOADNIL                          R36
      576 SETTABLEKS                       R36 R35 K102 ["ErrorMessageTextButton"]
      578 CALL                             R32 3 1
      579 JUMP                             ; [+1]
      580 LOADNIL                          R32
      581 SETTABLEKS                       R32 R31 K62 ["AssetCategoryDropDown"]
      583 GETUPVAL                         R33 5
      584 CALL                             R33 0 1
      585 JUMPIFNOT                        R33 ; [+127]
      586 GETIMPORT                        R33 K149 [Enum.AssetType.EmoteAnimation]
      588 JUMPIFNOTEQ                      R9 R33 ; [+124]
      590 GETUPVAL                         R33 7
      591 GETTABLEKS                       R32 R33 K36 ["createElement"]
      593 GETUPVAL                         R33 8
      594 DUPTABLE                         R34 K150 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing", "VerticalAlignment"}]
      595 GETIMPORT                        R35 K152 [Enum.AutomaticSize.Y]
      597 SETTABLEKS                       R35 R34 K37 ["AutomaticSize"]
      599 GETIMPORT                        R35 K52 [Enum.HorizontalAlignment.Left]
      601 SETTABLEKS                       R35 R34 K40 ["HorizontalAlignment"]
      603 GETIMPORT                        R35 K154 [Enum.FillDirection.Horizontal]
      605 SETTABLEKS                       R35 R34 K41 ["Layout"]
      607 NAMECALL                         R35 R5 K97 ["getNextOrder"]
      609 CALL                             R35 1 1
      610 SETTABLEKS                       R35 R34 K42 ["LayoutOrder"]
      612 GETIMPORT                        R35 K156 [UDim2.fromScale]
      614 LOADN                            R36 1
      615 LOADN                            R37 0
      616 CALL                             R35 2 1
      617 SETTABLEKS                       R35 R34 K117 ["Size"]
      619 LOADN                            R35 8
      620 SETTABLEKS                       R35 R34 K44 ["Spacing"]
      622 GETIMPORT                        R35 K59 [Enum.VerticalAlignment.Top]
      624 SETTABLEKS                       R35 R34 K45 ["VerticalAlignment"]
      626 DUPTABLE                         R35 K158 [{"Icon", "UGCWarningText"}]
      627 GETUPVAL                         R37 7
      628 GETTABLEKS                       R36 R37 K36 ["createElement"]
      630 LOADK                            R37 K159 ["ImageLabel"]
      631 DUPTABLE                         R38 K160 [{"BackgroundTransparency", "Image", "ImageColor3", "LayoutOrder", "Size"}]
      632 LOADN                            R39 1
      633 SETTABLEKS                       R39 R38 K39 ["BackgroundTransparency"]
      635 GETUPVAL                         R40 17
      636 GETTABLEKS                       R39 R40 K161 ["WARNING_ICON"]
      638 SETTABLEKS                       R39 R38 K139 ["Image"]
      640 GETTABLEKS                       R40 R4 K162 ["assetConfig"]
      642 GETTABLEKS                       R39 R40 K163 ["warningColor"]
      644 SETTABLEKS                       R39 R38 K140 ["ImageColor3"]
      646 LOADN                            R39 1
      647 SETTABLEKS                       R39 R38 K42 ["LayoutOrder"]
      649 GETIMPORT                        R39 K142 [UDim2.fromOffset]
      651 LOADN                            R40 24
      652 LOADN                            R41 24
      653 CALL                             R39 2 1
      654 SETTABLEKS                       R39 R38 K117 ["Size"]
      656 CALL                             R36 2 1
      657 SETTABLEKS                       R36 R35 K65 ["Icon"]
      659 GETUPVAL                         R37 7
      660 GETTABLEKS                       R36 R37 K36 ["createElement"]
      662 LOADK                            R37 K164 ["TextLabel"]
      663 DUPTABLE                         R38 K165 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor3", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
      664 GETIMPORT                        R39 K152 [Enum.AutomaticSize.Y]
      666 SETTABLEKS                       R39 R38 K37 ["AutomaticSize"]
      668 LOADN                            R39 1
      669 SETTABLEKS                       R39 R38 K39 ["BackgroundTransparency"]
      671 GETUPVAL                         R40 2
      672 GETTABLEKS                       R39 R40 K166 ["FONT"]
      674 SETTABLEKS                       R39 R38 K75 ["Font"]
      676 LOADN                            R39 2
      677 SETTABLEKS                       R39 R38 K42 ["LayoutOrder"]
      679 GETIMPORT                        R39 K121 [UDim2.new]
      681 LOADN                            R40 1
      682 LOADN                            R41 224
      683 CALL                             R39 2 1
      684 SETTABLEKS                       R39 R38 K117 ["Size"]
      686 SETTABLEKS                       R26 R38 K69 ["Text"]
      688 GETTABLEKS                       R40 R4 K162 ["assetConfig"]
      690 GETTABLEKS                       R39 R40 K163 ["warningColor"]
      692 SETTABLEKS                       R39 R38 K147 ["TextColor3"]
      694 LOADN                            R39 24
      695 SETTABLEKS                       R39 R38 K76 ["TextSize"]
      697 LOADB                            R39 1
      698 SETTABLEKS                       R39 R38 K124 ["TextWrapped"]
      700 GETIMPORT                        R39 K134 [Enum.TextXAlignment.Left]
      702 SETTABLEKS                       R39 R38 K125 ["TextXAlignment"]
      704 GETIMPORT                        R39 K136 [Enum.TextYAlignment.Center]
      706 SETTABLEKS                       R39 R38 K126 ["TextYAlignment"]
      708 CALL                             R36 2 1
      709 SETTABLEKS                       R36 R35 K157 ["UGCWarningText"]
      711 CALL                             R32 3 1
      712 JUMP                             ; [+1]
      713 LOADNIL                          R32
      714 SETTABLEKS                       R32 R31 K33 ["EmoteAnimationWarning"]
      716 CALL                             R28 3 -1
      717 RETURN                           R28 -1

PROTO_45:
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

PROTO_46:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 CALL                             R5 1 -1
        4 CALL                             R4 -1 0
        5 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_48:
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
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["BrowserService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R0 K8 ["Packages"]
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R2 K11 ["Cryo"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R2 K12 ["Framework"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K10 [require]
       27 GETTABLEKS                       R6 R2 K13 ["React"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K10 [require]
       32 GETTABLEKS                       R7 R2 K14 ["Roact"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K10 [require]
       37 GETTABLEKS                       R8 R2 K15 ["RoactRodux"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K10 [require]
       42 GETTABLEKS                       R9 R2 K16 ["Foundation"]
       44 CALL                             R8 1 1
       45 GETIMPORT                        R9 K10 [require]
       47 GETTABLEKS                       R10 R2 K17 ["UGCValidation"]
       49 CALL                             R9 1 1
       50 GETTABLEKS                       R10 R4 K18 ["ContextServices"]
       52 GETTABLEKS                       R11 R10 K19 ["withContext"]
       54 GETIMPORT                        R12 K10 [require]
       56 GETTABLEKS                       R15 R0 K20 ["Src"]
       58 GETTABLEKS                       R14 R15 K18 ["ContextServices"]
       60 GETTABLEKS                       R13 R14 K21 ["NetworkContext"]
       62 CALL                             R12 1 1
       63 GETTABLEKS                       R14 R0 K20 ["Src"]
       65 GETTABLEKS                       R13 R14 K22 ["Util"]
       67 GETIMPORT                        R14 K10 [require]
       69 GETTABLEKS                       R16 R13 K23 ["Analytics"]
       71 GETTABLEKS                       R15 R16 K23 ["Analytics"]
       73 CALL                             R14 1 1
       74 GETIMPORT                        R15 K10 [require]
       76 GETTABLEKS                       R16 R13 K24 ["AssetConfigUtil"]
       78 CALL                             R15 1 1
       79 GETIMPORT                        R16 K10 [require]
       81 GETTABLEKS                       R17 R13 K25 ["fixUpPreValidation"]
       83 CALL                             R16 1 1
       84 GETIMPORT                        R17 K10 [require]
       86 GETTABLEKS                       R18 R13 K26 ["Constants"]
       88 CALL                             R17 1 1
       89 GETIMPORT                        R18 K10 [require]
       91 GETTABLEKS                       R19 R13 K27 ["DebugFlags"]
       93 CALL                             R18 1 1
       94 GETIMPORT                        R19 K10 [require]
       96 GETTABLEKS                       R20 R13 K28 ["Images"]
       98 CALL                             R19 1 1
       99 GETIMPORT                        R20 K10 [require]
      101 GETTABLEKS                       R22 R13 K29 ["SharedFlags"]
      103 GETTABLEKS                       R21 R22 K30 ["getFFlagUGCBundleValidationFullBodyErrors"]
      105 CALL                             R20 1 1
      106 GETIMPORT                        R21 K10 [require]
      108 GETTABLEKS                       R22 R13 K31 ["getAllowedAssetTypeEnums"]
      110 CALL                             R21 1 1
      111 GETIMPORT                        R22 K10 [require]
      113 GETTABLEKS                       R25 R0 K20 ["Src"]
      115 GETTABLEKS                       R24 R25 K32 ["Localization"]
      117 GETTABLEKS                       R23 R24 K33 ["getLocalizedAssetTextMap"]
      119 CALL                             R22 1 1
      120 GETTABLEKS                       R24 R4 K22 ["Util"]
      122 GETTABLEKS                       R23 R24 K34 ["LayoutOrderIterator"]
      124 GETTABLEKS                       R24 R4 K35 ["UI"]
      126 GETTABLEKS                       R25 R24 K36 ["Pane"]
      128 GETTABLEKS                       R26 R24 K37 ["TextLabel"]
      130 GETIMPORT                        R27 K10 [require]
      132 GETTABLEKS                       R30 R0 K20 ["Src"]
      134 GETTABLEKS                       R29 R30 K38 ["Actions"]
      136 GETTABLEKS                       R28 R29 K39 ["SetUploadAssetType"]
      138 CALL                             R27 1 1
      139 GETIMPORT                        R28 K10 [require]
      141 GETTABLEKS                       R31 R0 K20 ["Src"]
      143 GETTABLEKS                       R30 R31 K38 ["Actions"]
      145 GETTABLEKS                       R29 R30 K40 ["SetUploadAssetValidationStatus"]
      147 CALL                             R28 1 1
      148 GETIMPORT                        R29 K10 [require]
      150 GETTABLEKS                       R32 R0 K20 ["Src"]
      152 GETTABLEKS                       R31 R32 K41 ["Components"]
      154 GETTABLEKS                       R30 R31 K42 ["DropdownMenu"]
      156 CALL                             R29 1 1
      157 GETIMPORT                        R30 K10 [require]
      159 GETTABLEKS                       R34 R0 K20 ["Src"]
      161 GETTABLEKS                       R33 R34 K41 ["Components"]
      163 GETTABLEKS                       R32 R33 K43 ["MessageBox"]
      165 GETTABLEKS                       R31 R32 K43 ["MessageBox"]
      167 CALL                             R30 1 1
      168 GETIMPORT                        R31 K10 [require]
      170 GETTABLEKS                       R34 R0 K20 ["Src"]
      172 GETTABLEKS                       R33 R34 K41 ["Components"]
      174 GETTABLEKS                       R32 R33 K44 ["StyledScrollingFrame"]
      176 CALL                             R31 1 1
      177 GETTABLEKS                       R34 R0 K20 ["Src"]
      179 GETTABLEKS                       R33 R34 K41 ["Components"]
      181 GETTABLEKS                       R32 R33 K45 ["AssetConfiguration"]
      183 GETIMPORT                        R33 K10 [require]
      185 GETTABLEKS                       R34 R32 K46 ["AssetConfigDropdown"]
      187 CALL                             R33 1 1
      188 GETIMPORT                        R34 K10 [require]
      190 GETTABLEKS                       R35 R32 K47 ["ConfigSectionWrapper"]
      192 CALL                             R34 1 1
      193 GETIMPORT                        R35 K10 [require]
      195 GETTABLEKS                       R36 R32 K48 ["ContentTypeRadioButtons"]
      197 CALL                             R35 1 1
      198 GETIMPORT                        R36 K10 [require]
      200 GETTABLEKS                       R39 R0 K20 ["Src"]
      202 GETTABLEKS                       R38 R39 K49 ["Flags"]
      204 GETTABLEKS                       R37 R38 K50 ["getFFlagToolboxAssetConfigFoundationMigration"]
      206 CALL                             R36 1 1
      207 GETIMPORT                        R37 K10 [require]
      209 GETTABLEKS                       R38 R32 K51 ["UGCBundleValidation"]
      211 CALL                             R37 1 1
      212 GETIMPORT                        R38 K10 [require]
      214 GETTABLEKS                       R39 R32 K52 ["ValidationStatus"]
      216 CALL                             R38 1 1
      217 GETIMPORT                        R39 K10 [require]
      219 GETTABLEKS                       R40 R13 K53 ["AssetConfigConstants"]
      221 CALL                             R39 1 1
      222 GETIMPORT                        R40 K10 [require]
      224 GETTABLEKS                       R41 R32 K54 ["DataConsentToggle"]
      226 CALL                             R40 1 1
      227 GETIMPORT                        R41 K5 [game]
      229 LOADK                            R43 K55 ["BodyFirstInAssetsCategory"]
      230 LOADB                            R44 0
      231 NAMECALL                         R41 R41 K56 ["DefineFastFlag"]
      233 CALL                             R41 3 0
      234 GETIMPORT                        R41 K5 [game]
      236 LOADK                            R43 K57 ["DisableSubmitButtonForValidationInInit"]
      237 LOADB                            R44 0
      238 NAMECALL                         R41 R41 K56 ["DefineFastFlag"]
      240 CALL                             R41 3 1
      241 GETIMPORT                        R42 K10 [require]
      243 GETTABLEKS                       R44 R13 K29 ["SharedFlags"]
      245 GETTABLEKS                       R43 R44 K58 ["getFFlagEnableUGCUploadFlowAnalytics"]
      247 CALL                             R42 1 1
      248 GETIMPORT                        R43 K10 [require]
      250 GETTABLEKS                       R45 R13 K29 ["SharedFlags"]
      252 GETTABLEKS                       R44 R45 K59 ["getFFlagEnableUGCBundleUploadBodyScale"]
      254 CALL                             R43 1 1
      255 GETIMPORT                        R44 K10 [require]
      257 GETTABLEKS                       R47 R0 K20 ["Src"]
      259 GETTABLEKS                       R46 R47 K49 ["Flags"]
      261 GETTABLEKS                       R45 R46 K60 ["getFFlagRequireBodyColorsForBodyUpload"]
      263 CALL                             R44 1 1
      264 GETIMPORT                        R45 K10 [require]
      266 GETTABLEKS                       R47 R13 K29 ["SharedFlags"]
      268 GETTABLEKS                       R46 R47 K61 ["getFFlagEnableUGCForAllChecks"]
      270 CALL                             R45 1 1
      271 GETIMPORT                        R46 K10 [require]
      273 GETTABLEKS                       R49 R0 K20 ["Src"]
      275 GETTABLEKS                       R48 R49 K49 ["Flags"]
      277 GETTABLEKS                       R47 R48 K62 ["getFStringAssetsToBypassValidation"]
      279 CALL                             R46 1 1
      280 GETIMPORT                        R47 K10 [require]
      282 GETTABLEKS                       R50 R0 K20 ["Src"]
      284 GETTABLEKS                       R49 R50 K49 ["Flags"]
      286 GETTABLEKS                       R48 R49 K63 ["getFFlagAssetBypassValidation"]
      288 CALL                             R47 1 1
      289 GETIMPORT                        R48 K5 [game]
      291 LOADK                            R50 K64 ["ToolboxConfigAssetTypeAgeIDVerificationLink"]
      292 LOADK                            R51 K65 ["https://en.help.roblox.com/hc/en-us/articles/4407282410644-Age-ID-Verification"]
      293 NAMECALL                         R48 R48 K66 ["DefineFastString"]
      295 CALL                             R48 3 1
      296 GETIMPORT                        R49 K5 [game]
      298 LOADK                            R51 K67 ["ToolboxConfigAssetTypePremiumLink"]
      299 LOADK                            R52 K68 ["https://www.roblox.com/premium/membership"]
      300 NAMECALL                         R49 R49 K66 ["DefineFastString"]
      302 CALL                             R49 3 1
      303 GETIMPORT                        R50 K5 [game]
      305 LOADK                            R52 K69 ["ToolboxFixUGCBundleValidationCryoThingy1"]
      306 LOADB                            R53 0
      307 NAMECALL                         R50 R50 K56 ["DefineFastFlag"]
      309 CALL                             R50 3 1
      310 GETIMPORT                        R51 K5 [game]
      312 LOADK                            R53 K70 ["ToolboxShowAnimationAssetSelection"]
      313 LOADB                            R54 0
      314 NAMECALL                         R51 R51 K56 ["DefineFastFlag"]
      316 CALL                             R51 3 1
      317 GETIMPORT                        R52 K5 [game]
      319 LOADK                            R54 K71 ["ToolboxRemoveRestrictedAssetWarning2"]
      320 NAMECALL                         R52 R52 K72 ["GetFastFlag"]
      322 CALL                             R52 2 1
      323 GETIMPORT                        R53 K10 [require]
      325 GETTABLEKS                       R56 R0 K20 ["Src"]
      327 GETTABLEKS                       R55 R56 K49 ["Flags"]
      329 GETTABLEKS                       R54 R55 K73 ["getFFlagEnableUploadingEmote"]
      331 CALL                             R53 1 1
      332 GETTABLEKS                       R54 R6 K74 ["PureComponent"]
      334 LOADK                            R56 K75 ["ConfigAssetType"]
      335 NAMECALL                         R54 R54 K76 ["extend"]
      337 CALL                             R54 2 1
      338 MOVE                             R56 R45
      339 CALL                             R56 0 1
      340 JUMPIFNOT                        R56 ; [+2]
      341 LOADN                            R55 10
      342 JUMP                             ; [+1]
      343 LOADN                            R55 0
      344 MOVE                             R57 R45
      345 CALL                             R57 0 1
      346 JUMPIFNOT                        R57 ; [+2]
      347 LOADN                            R56 72
      348 JUMP                             ; [+1]
      349 LOADN                            R56 24
      350 NEWTABLE                         R57 0 0
      352 GETIMPORT                        R58 K5 [game]
      354 LOADK                            R60 K55 ["BodyFirstInAssetsCategory"]
      355 NAMECALL                         R58 R58 K72 ["GetFastFlag"]
      357 CALL                             R58 2 1
      358 JUMPIFNOT                        R58 ; [+17]
      359 NEWTABLE                         R58 0 3
      361 GETTABLEKS                       R60 R39 K77 ["UGCBundleTypes"]
      363 GETTABLEKS                       R59 R60 K78 ["Body"]
      365 GETTABLEKS                       R61 R39 K77 ["UGCBundleTypes"]
      367 GETTABLEKS                       R60 R61 K79 ["DynamicHead"]
      369 GETTABLEKS                       R62 R39 K77 ["UGCBundleTypes"]
      371 GETTABLEKS                       R61 R62 K80 ["Shoes"]
      373 SETLIST                          R58 R59 3 [1]
      375 MOVE                             R57 R58
      376 DUPCLOSURE                       R58 K81 [PROTO_0]
      377 CAPTURE                          VAL R15
      378 DUPCLOSURE                       R59 K82 [PROTO_14]
      379 CAPTURE                          VAL R42
      380 CAPTURE                          VAL R15
      381 CAPTURE                          VAL R18
      382 CAPTURE                          VAL R39
      383 CAPTURE                          VAL R14
      384 CAPTURE                          VAL R41
      385 SETTABLEKS                       R59 R54 K83 ["init"]
      387 DUPCLOSURE                       R59 K84 [PROTO_15]
      388 SETTABLEKS                       R59 R54 K85 ["getAvatarItemCategoryErrorsPrimaryText"]
      390 DUPCLOSURE                       R59 K86 [PROTO_16]
      391 SETTABLEKS                       R59 R54 K87 ["getAvatarItemCategoryErrors"]
      393 DUPCLOSURE                       R59 K88 [PROTO_17]
      394 SETTABLEKS                       R59 R54 K89 ["selectedRadioButtonKeyFor"]
      396 DUPCLOSURE                       R59 K90 [PROTO_18]
      397 SETTABLEKS                       R59 R54 K91 ["isAvatarItemCategorySelected"]
      399 DUPCLOSURE                       R59 K92 [PROTO_22]
      400 CAPTURE                          VAL R3
      401 CAPTURE                          VAL R45
      402 CAPTURE                          VAL R15
      403 CAPTURE                          VAL R39
      404 SETTABLEKS                       R59 R54 K93 ["onAssetTypeChanged"]
      406 DUPCLOSURE                       R59 K94 [PROTO_24]
      407 CAPTURE                          VAL R39
      408 CAPTURE                          VAL R3
      409 SETTABLEKS                       R59 R54 K95 ["resetValidation"]
      411 DUPCLOSURE                       R59 K96 [PROTO_25]
      412 SETTABLEKS                       R59 R54 K97 ["cancelValidationTasks"]
      414 DUPCLOSURE                       R59 K98 [PROTO_26]
      415 SETTABLEKS                       R59 R54 K99 ["getErrorMessageWithCount"]
      417 DUPCLOSURE                       R59 K100 [PROTO_27]
      418 CAPTURE                          VAL R39
      419 SETTABLEKS                       R59 R54 K101 ["getValidationStatusMessage"]
      421 DUPCLOSURE                       R59 K102 [PROTO_28]
      422 CAPTURE                          VAL R39
      423 SETTABLEKS                       R59 R54 K103 ["getValidationStatusColor"]
      425 DUPCLOSURE                       R59 K104 [PROTO_29]
      426 SETTABLEKS                       R59 R54 K105 ["getAssetCategoryIndex"]
      428 NEWCLOSURE                       R59 P13
      429 CAPTURE                          VAL R15
      430 CAPTURE                          REF R57
      431 CAPTURE                          VAL R21
      432 CAPTURE                          VAL R22
      433 SETTABLEKS                       R59 R54 K106 ["getDropdownItemsFor"]
      435 DUPCLOSURE                       R59 K107 [PROTO_32]
      436 SETTABLEKS                       R59 R54 K108 ["getDropdownItems"]
      438 DUPCLOSURE                       R59 K109 [PROTO_33]
      439 CAPTURE                          VAL R15
      440 CAPTURE                          VAL R23
      441 CAPTURE                          VAL R6
      442 CAPTURE                          VAL R26
      443 CAPTURE                          VAL R17
      444 CAPTURE                          VAL R22
      445 SETTABLEKS                       R59 R54 K110 ["getMissingOptionalPartsMessage"]
      447 DUPCLOSURE                       R59 K111 [PROTO_34]
      448 CAPTURE                          VAL R15
      449 CAPTURE                          VAL R23
      450 CAPTURE                          VAL R6
      451 CAPTURE                          VAL R26
      452 CAPTURE                          VAL R17
      453 SETTABLEKS                       R59 R54 K112 ["getUnknownMeshPartMessage"]
      455 MOVE                             R59 R45
      456 CALL                             R59 0 1
      457 JUMPIFNOT                        R59 ; [+7]
      458 DUPCLOSURE                       R59 K113 [PROTO_37]
      459 CAPTURE                          VAL R1
      460 CAPTURE                          VAL R48
      461 CAPTURE                          VAL R49
      462 CAPTURE                          VAL R52
      463 SETTABLEKS                       R59 R54 K114 ["getUgcRestrictionsWarningText"]
      465 DUPCLOSURE                       R59 K115 [PROTO_41]
      466 CAPTURE                          VAL R39
      467 CAPTURE                          VAL R15
      468 CAPTURE                          VAL R16
      469 CAPTURE                          VAL R47
      470 CAPTURE                          VAL R46
      471 CAPTURE                          VAL R9
      472 SETTABLEKS                       R59 R54 K116 ["didUpdate"]
      474 DUPCLOSURE                       R59 K117 [PROTO_42]
      475 SETTABLEKS                       R59 R54 K118 ["willUnmount"]
      477 DUPCLOSURE                       R59 K119 [PROTO_44]
      478 CAPTURE                          VAL R23
      479 CAPTURE                          VAL R39
      480 CAPTURE                          VAL R17
      481 CAPTURE                          VAL R45
      482 CAPTURE                          VAL R52
      483 CAPTURE                          VAL R53
      484 CAPTURE                          VAL R51
      485 CAPTURE                          VAL R6
      486 CAPTURE                          VAL R25
      487 CAPTURE                          VAL R30
      488 CAPTURE                          VAL R5
      489 CAPTURE                          VAL R35
      490 CAPTURE                          VAL R36
      491 CAPTURE                          VAL R34
      492 CAPTURE                          VAL R33
      493 CAPTURE                          VAL R29
      494 CAPTURE                          VAL R26
      495 CAPTURE                          VAL R19
      496 SETTABLEKS                       R59 R54 K120 ["render"]
      498 DUPCLOSURE                       R59 K121 [PROTO_45]
      499 DUPCLOSURE                       R60 K122 [PROTO_48]
      500 CAPTURE                          VAL R27
      501 CAPTURE                          VAL R28
      502 MOVE                             R61 R11
      503 DUPTABLE                         R62 K124 [{"Stylizer", "Localization"}]
      504 GETTABLEKS                       R63 R10 K123 ["Stylizer"]
      506 SETTABLEKS                       R63 R62 K123 ["Stylizer"]
      508 GETTABLEKS                       R63 R10 K32 ["Localization"]
      510 SETTABLEKS                       R63 R62 K32 ["Localization"]
      512 CALL                             R61 1 1
      513 MOVE                             R62 R54
      514 CALL                             R61 1 1
      515 MOVE                             R54 R61
      516 GETTABLEKS                       R61 R7 K125 ["connect"]
      518 MOVE                             R62 R59
      519 MOVE                             R63 R60
      520 CALL                             R61 2 1
      521 MOVE                             R62 R54
      522 CALL                             R61 1 -1
      523 CLOSEUPVALS                      R57
      524 RETURN                           R61 -1
