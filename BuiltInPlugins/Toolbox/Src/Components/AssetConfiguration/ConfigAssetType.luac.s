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
      125 LOADK                            R28 K17 ["AssetConfig"]
      126 LOADK                            R29 K33 ["EmoteAnimationWarning"]
      127 NAMECALL                         R26 R3 K19 ["getText"]
      129 CALL                             R26 3 1
      130 GETUPVAL                         R27 5
      131 JUMPIFNOT                        R27 ; [+9]
      132 GETTABLEKS                       R27 R2 K34 ["displayAssetSelection"]
      134 JUMPIFNOTEQKNIL                  R27 ; [+6]
      136 NEWCLOSURE                       R29 P0
      137 CAPTURE                          VAL R11
      138 NAMECALL                         R27 R0 K35 ["setState"]
      140 CALL                             R27 2 0
      141 GETUPVAL                         R28 5
      142 JUMPIFNOT                        R28 ; [+3]
      143 GETTABLEKS                       R27 R2 K34 ["displayAssetSelection"]
      145 JUMP                             ; [+1]
      146 NOT                              R27 R11
      147 GETUPVAL                         R29 6
      148 GETTABLEKS                       R28 R29 K36 ["createElement"]
      150 GETUPVAL                         R29 7
      151 DUPTABLE                         R30 K46 [{"AutomaticSize", "BackgroundColor3", "BackgroundTransparency", "HorizontalAlignment", "Layout", "LayoutOrder", "Padding", "Spacing", "VerticalAlignment"}]
      152 GETIMPORT                        R31 K48 [Enum.AutomaticSize.XY]
      154 SETTABLEKS                       R31 R30 K37 ["AutomaticSize"]
      156 GETTABLEKS                       R32 R4 K49 ["typeSelection"]
      158 GETTABLEKS                       R31 R32 K50 ["background"]
      160 SETTABLEKS                       R31 R30 K38 ["BackgroundColor3"]
      162 LOADN                            R31 1
      163 SETTABLEKS                       R31 R30 K39 ["BackgroundTransparency"]
      165 GETIMPORT                        R31 K52 [Enum.HorizontalAlignment.Left]
      167 SETTABLEKS                       R31 R30 K40 ["HorizontalAlignment"]
      169 GETIMPORT                        R31 K55 [Enum.FillDirection.Vertical]
      171 SETTABLEKS                       R31 R30 K41 ["Layout"]
      173 GETTABLEKS                       R31 R1 K42 ["LayoutOrder"]
      175 SETTABLEKS                       R31 R30 K42 ["LayoutOrder"]
      177 DUPTABLE                         R31 K57 [{"Bottom"}]
      178 LOADN                            R32 32
      179 SETTABLEKS                       R32 R31 K56 ["Bottom"]
      181 SETTABLEKS                       R31 R30 K43 ["Padding"]
      183 LOADN                            R31 30
      184 SETTABLEKS                       R31 R30 K44 ["Spacing"]
      186 GETIMPORT                        R31 K59 [Enum.VerticalAlignment.Top]
      188 SETTABLEKS                       R31 R30 K45 ["VerticalAlignment"]
      190 DUPTABLE                         R31 K63 [{"ValidationErrorMessageBox", "ContentTypeRadioButtons", "AssetCategoryDropDown", "EmoteAnimationWarning"}]
      191 JUMPIFNOT                        R23 ; [+59]
      192 GETUPVAL                         R33 6
      193 GETTABLEKS                       R32 R33 K36 ["createElement"]
      195 GETUPVAL                         R33 8
      196 DUPTABLE                         R34 K74 [{"buttons", "Icon", "InformativeText", "onButtonClicked", "onClose", "Text", "Title", "isScrollable", "messageBoxHeight", "isResizable"}]
      197 NEWTABLE                         R35 0 1
      199 DUPTABLE                         R36 K78 [{"Text", "Font", "TextSize", "action"}]
      200 SETTABLEKS                       R13 R36 K69 ["Text"]
      202 GETTABLEKS                       R37 R4 K75 ["Font"]
      204 SETTABLEKS                       R37 R36 K75 ["Font"]
      206 GETTABLEKS                       R37 R4 K76 ["TextSize"]
      208 SETTABLEKS                       R37 R36 K76 ["TextSize"]
      210 LOADK                            R37 K79 ["yes"]
      211 SETTABLEKS                       R37 R36 K77 ["action"]
      213 SETLIST                          R35 R36 1 [1]
      215 SETTABLEKS                       R35 R34 K64 ["buttons"]
      217 LOADK                            R35 K80 ["rbxasset://textures/ui/ErrorIcon.png"]
      218 SETTABLEKS                       R35 R34 K65 ["Icon"]
      220 NAMECALL                         R35 R0 K81 ["getAvatarItemCategoryErrors"]
      222 CALL                             R35 1 1
      223 SETTABLEKS                       R35 R34 K66 ["InformativeText"]
      225 GETTABLEKS                       R35 R0 K82 ["onValidationErrorMessageBoxClosed"]
      227 SETTABLEKS                       R35 R34 K67 ["onButtonClicked"]
      229 GETTABLEKS                       R35 R0 K82 ["onValidationErrorMessageBoxClosed"]
      231 SETTABLEKS                       R35 R34 K68 ["onClose"]
      233 NAMECALL                         R35 R0 K83 ["getAvatarItemCategoryErrorsPrimaryText"]
      235 CALL                             R35 1 1
      236 SETTABLEKS                       R35 R34 K69 ["Text"]
      238 SETTABLEKS                       R12 R34 K70 ["Title"]
      240 LOADB                            R35 1
      241 SETTABLEKS                       R35 R34 K71 ["isScrollable"]
      243 LOADN                            R35 244
      244 SETTABLEKS                       R35 R34 K72 ["messageBoxHeight"]
      246 LOADB                            R35 1
      247 SETTABLEKS                       R35 R34 K73 ["isResizable"]
      249 CALL                             R32 2 1
      250 JUMP                             ; [+1]
      251 LOADNIL                          R32
      252 SETTABLEKS                       R32 R31 K60 ["ValidationErrorMessageBox"]
      254 JUMPIFNOT                        R27 ; [+50]
      255 GETUPVAL                         R33 9
      256 GETTABLEKS                       R32 R33 K36 ["createElement"]
      258 GETUPVAL                         R33 10
      259 DUPTABLE                         R34 K96 [{"layoutOrder", "contentTypeTitle", "currentSelectedRadioButtonKey", "onRadioButtonClicked", "radioButtonDevelopmentItemText", "radioButtonAvatarItemText", "warningMessageText", "warningMessageLinkMap", "isModel", "modelPublishWarningText", "insufficientRobuxWarningText", "theme"}]
      260 NAMECALL                         R35 R5 K97 ["getNextOrder"]
      262 CALL                             R35 1 1
      263 SETTABLEKS                       R35 R34 K84 ["layoutOrder"]
      265 SETTABLEKS                       R14 R34 K85 ["contentTypeTitle"]
      267 GETTABLEKS                       R35 R2 K86 ["currentSelectedRadioButtonKey"]
      269 SETTABLEKS                       R35 R34 K86 ["currentSelectedRadioButtonKey"]
      271 GETTABLEKS                       R35 R0 K87 ["onRadioButtonClicked"]
      273 SETTABLEKS                       R35 R34 K87 ["onRadioButtonClicked"]
      275 GETUPVAL                         R36 11
      276 CALL                             R36 0 1
      277 JUMPIFNOT                        R36 ; [+2]
      278 LOADNIL                          R35
      279 JUMP                             ; [+1]
      280 MOVE                             R35 R15
      281 SETTABLEKS                       R35 R34 K88 ["radioButtonDevelopmentItemText"]
      283 GETUPVAL                         R36 11
      284 CALL                             R36 0 1
      285 JUMPIFNOT                        R36 ; [+2]
      286 LOADNIL                          R35
      287 JUMP                             ; [+1]
      288 MOVE                             R35 R16
      289 SETTABLEKS                       R35 R34 K89 ["radioButtonAvatarItemText"]
      291 SETTABLEKS                       R24 R34 K90 ["warningMessageText"]
      293 SETTABLEKS                       R25 R34 K91 ["warningMessageLinkMap"]
      295 SETTABLEKS                       R10 R34 K92 ["isModel"]
      297 SETTABLEKS                       R18 R34 K93 ["modelPublishWarningText"]
      299 SETTABLEKS                       R22 R34 K94 ["insufficientRobuxWarningText"]
      301 SETTABLEKS                       R4 R34 K95 ["theme"]
      303 CALL                             R32 2 1
      304 JUMP                             ; [+1]
      305 LOADNIL                          R32
      306 SETTABLEKS                       R32 R31 K61 ["ContentTypeRadioButtons"]
      308 JUMPIFNOT                        R27 ; [+293]
      309 GETUPVAL                         R33 11
      310 CALL                             R33 0 1
      311 JUMPIFNOT                        R33 ; [+65]
      312 GETUPVAL                         R33 9
      313 GETTABLEKS                       R32 R33 K36 ["createElement"]
      315 GETUPVAL                         R33 12
      316 DUPTABLE                         R34 K98 [{"LayoutOrder", "Title"}]
      317 NAMECALL                         R35 R5 K97 ["getNextOrder"]
      319 CALL                             R35 1 1
      320 SETTABLEKS                       R35 R34 K42 ["LayoutOrder"]
      322 SETTABLEKS                       R17 R34 K70 ["Title"]
      324 DUPTABLE                         R35 K100 [{"AssetCategoryRow"}]
      325 GETUPVAL                         R37 9
      326 GETTABLEKS                       R36 R37 K36 ["createElement"]
      328 GETUPVAL                         R37 13
      329 DUPTABLE                         R38 K110 [{"dropdownItems", "selectedDropDownIndex", "onItemClicked", "placeholder", "dropdownWidth", "showError", "validationStatusMessage", "validationStatusColor", "onErrorClicked"}]
      330 MOVE                             R41 R3
      331 NAMECALL                         R39 R0 K111 ["getDropdownItems"]
      333 CALL                             R39 2 1
      334 SETTABLEKS                       R39 R38 K101 ["dropdownItems"]
      336 NAMECALL                         R39 R0 K112 ["getAssetCategoryIndex"]
      338 CALL                             R39 1 1
      339 SETTABLEKS                       R39 R38 K102 ["selectedDropDownIndex"]
      341 GETTABLEKS                       R39 R0 K113 ["setAssetCategoryIndex"]
      343 SETTABLEKS                       R39 R38 K103 ["onItemClicked"]
      345 LOADK                            R41 K114 ["Dropdown"]
      346 LOADK                            R42 K115 ["ChooseOne"]
      347 NAMECALL                         R39 R3 K19 ["getText"]
      349 CALL                             R39 3 1
      350 SETTABLEKS                       R39 R38 K104 ["placeholder"]
      352 LOADN                            R39 144
      353 SETTABLEKS                       R39 R38 K105 ["dropdownWidth"]
      355 SETTABLEKS                       R6 R38 K106 ["showError"]
      357 NAMECALL                         R39 R0 K116 ["getValidationStatusMessage"]
      359 CALL                             R39 1 1
      360 SETTABLEKS                       R39 R38 K107 ["validationStatusMessage"]
      362 MOVE                             R41 R4
      363 NAMECALL                         R39 R0 K117 ["getValidationStatusColor"]
      365 CALL                             R39 2 1
      366 SETTABLEKS                       R39 R38 K108 ["validationStatusColor"]
      368 GETTABLEKS                       R39 R0 K118 ["openValidationErrorMessageBox"]
      370 SETTABLEKS                       R39 R38 K109 ["onErrorClicked"]
      372 CALL                             R36 2 1
      373 SETTABLEKS                       R36 R35 K99 ["AssetCategoryRow"]
      375 CALL                             R32 3 1
      376 JUMP                             ; [+226]
      377 GETUPVAL                         R33 6
      378 GETTABLEKS                       R32 R33 K36 ["createElement"]
      380 GETUPVAL                         R33 12
      381 DUPTABLE                         R34 K119 [{"AutomaticSize", "LayoutOrder", "Title"}]
      382 GETIMPORT                        R35 K48 [Enum.AutomaticSize.XY]
      384 SETTABLEKS                       R35 R34 K37 ["AutomaticSize"]
      386 NAMECALL                         R35 R5 K97 ["getNextOrder"]
      388 CALL                             R35 1 1
      389 SETTABLEKS                       R35 R34 K42 ["LayoutOrder"]
      391 SETTABLEKS                       R17 R34 K70 ["Title"]
      393 DUPTABLE                         R35 K123 [{"Dropdown", "ValidationResult", "ErrorIconButton", "ErrorMessageTextButton"}]
      394 GETUPVAL                         R37 6
      395 GETTABLEKS                       R36 R37 K36 ["createElement"]
      397 GETUPVAL                         R37 14
      398 DUPTABLE                         R38 K129 [{"fontSize", "items", "onItemClicked", "rowHeight", "selectedDropDownIndex", "Size", "visibleDropDownCount"}]
      399 LOADN                            R39 20
      400 SETTABLEKS                       R39 R38 K124 ["fontSize"]
      402 MOVE                             R41 R3
      403 NAMECALL                         R39 R0 K111 ["getDropdownItems"]
      405 CALL                             R39 2 1
      406 SETTABLEKS                       R39 R38 K125 ["items"]
      408 GETTABLEKS                       R39 R0 K113 ["setAssetCategoryIndex"]
      410 SETTABLEKS                       R39 R38 K103 ["onItemClicked"]
      412 LOADN                            R39 24
      413 SETTABLEKS                       R39 R38 K126 ["rowHeight"]
      415 NAMECALL                         R39 R0 K112 ["getAssetCategoryIndex"]
      417 CALL                             R39 1 1
      418 SETTABLEKS                       R39 R38 K102 ["selectedDropDownIndex"]
      420 GETIMPORT                        R39 K131 [UDim2.new]
      422 LOADN                            R40 0
      423 LOADN                            R41 144
      424 LOADN                            R42 0
      425 LOADN                            R43 40
      426 CALL                             R39 4 1
      427 SETTABLEKS                       R39 R38 K127 ["Size"]
      429 LOADN                            R39 6
      430 SETTABLEKS                       R39 R38 K128 ["visibleDropDownCount"]
      432 CALL                             R36 2 1
      433 SETTABLEKS                       R36 R35 K114 ["Dropdown"]
      435 JUMPIF                           R6 ; [+44]
      436 GETUPVAL                         R37 6
      437 GETTABLEKS                       R36 R37 K36 ["createElement"]
      439 GETUPVAL                         R37 15
      440 DUPTABLE                         R38 K137 [{"AutomaticSize", "Position", "Text", "TextColor", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
      441 GETIMPORT                        R39 K48 [Enum.AutomaticSize.XY]
      443 SETTABLEKS                       R39 R38 K37 ["AutomaticSize"]
      445 GETIMPORT                        R39 K131 [UDim2.new]
      447 LOADN                            R40 0
      448 ADDK                             R42 R7 K139 [400]
      449 ADDK                             R41 R42 K138 [16]
      450 LOADN                            R42 0
      451 SUBRK                            R44 R141 K8 ["FONT_SIZE_TITLE"]
      452 DIVK                             R43 R44 K140 [2]
      453 CALL                             R39 4 1
      454 SETTABLEKS                       R39 R38 K132 ["Position"]
      456 NAMECALL                         R39 R0 K116 ["getValidationStatusMessage"]
      458 CALL                             R39 1 1
      459 SETTABLEKS                       R39 R38 K69 ["Text"]
      461 MOVE                             R41 R4
      462 NAMECALL                         R39 R0 K117 ["getValidationStatusColor"]
      464 CALL                             R39 2 1
      465 SETTABLEKS                       R39 R38 K133 ["TextColor"]
      467 LOADB                            R39 1
      468 SETTABLEKS                       R39 R38 K134 ["TextWrapped"]
      470 GETIMPORT                        R39 K142 [Enum.TextXAlignment.Left]
      472 SETTABLEKS                       R39 R38 K135 ["TextXAlignment"]
      474 GETIMPORT                        R39 K144 [Enum.TextYAlignment.Center]
      476 SETTABLEKS                       R39 R38 K136 ["TextYAlignment"]
      478 CALL                             R36 2 1
      479 JUMP                             ; [+1]
      480 LOADNIL                          R36
      481 SETTABLEKS                       R36 R35 K120 ["ValidationResult"]
      483 JUMPIFNOT                        R6 ; [+47]
      484 GETUPVAL                         R37 6
      485 GETTABLEKS                       R36 R37 K36 ["createElement"]
      487 LOADK                            R37 K145 ["ImageButton"]
      488 NEWTABLE                         R38 8 0
      490 LOADB                            R39 0
      491 SETTABLEKS                       R39 R38 K146 ["AutoButtonColor"]
      493 LOADN                            R39 1
      494 SETTABLEKS                       R39 R38 K39 ["BackgroundTransparency"]
      496 LOADK                            R39 K80 ["rbxasset://textures/ui/ErrorIcon.png"]
      497 SETTABLEKS                       R39 R38 K147 ["Image"]
      499 MOVE                             R41 R4
      500 NAMECALL                         R39 R0 K117 ["getValidationStatusColor"]
      502 CALL                             R39 2 1
      503 SETTABLEKS                       R39 R38 K148 ["ImageColor3"]
      505 GETIMPORT                        R39 K131 [UDim2.new]
      507 LOADN                            R40 0
      508 LOADN                            R41 152
      509 LOADN                            R42 0
      510 LOADN                            R43 8
      511 CALL                             R39 4 1
      512 SETTABLEKS                       R39 R38 K132 ["Position"]
      514 GETIMPORT                        R39 K150 [UDim2.fromOffset]
      516 LOADN                            R40 24
      517 LOADN                            R41 24
      518 CALL                             R39 2 1
      519 SETTABLEKS                       R39 R38 K127 ["Size"]
      521 GETUPVAL                         R41 6
      522 GETTABLEKS                       R40 R41 K151 ["Event"]
      524 GETTABLEKS                       R39 R40 K152 ["Activated"]
      526 GETTABLEKS                       R40 R0 K118 ["openValidationErrorMessageBox"]
      528 SETTABLE                         R40 R38 R39
      529 CALL                             R36 2 1
      530 JUMP                             ; [+1]
      531 LOADNIL                          R36
      532 SETTABLEKS                       R36 R35 K121 ["ErrorIconButton"]
      534 JUMPIFNOT                        R6 ; [+62]
      535 GETUPVAL                         R37 6
      536 GETTABLEKS                       R36 R37 K36 ["createElement"]
      538 LOADK                            R37 K153 ["TextButton"]
      539 NEWTABLE                         R38 16 0
      541 GETIMPORT                        R39 K48 [Enum.AutomaticSize.XY]
      543 SETTABLEKS                       R39 R38 K37 ["AutomaticSize"]
      545 LOADN                            R39 1
      546 SETTABLEKS                       R39 R38 K39 ["BackgroundTransparency"]
      548 GETTABLEKS                       R39 R4 K75 ["Font"]
      550 SETTABLEKS                       R39 R38 K75 ["Font"]
      552 GETIMPORT                        R39 K131 [UDim2.new]
      554 LOADN                            R40 0
      555 ADDK                             R42 R7 K139 [400]
      556 ADDK                             R41 R42 K138 [16]
      557 LOADN                            R42 0
      558 SUBRK                            R44 R141 K8 ["FONT_SIZE_TITLE"]
      559 DIVK                             R43 R44 K140 [2]
      560 CALL                             R39 4 1
      561 SETTABLEKS                       R39 R38 K132 ["Position"]
      563 NAMECALL                         R39 R0 K116 ["getValidationStatusMessage"]
      565 CALL                             R39 1 1
      566 SETTABLEKS                       R39 R38 K69 ["Text"]
      568 MOVE                             R41 R4
      569 NAMECALL                         R39 R0 K117 ["getValidationStatusColor"]
      571 CALL                             R39 2 1
      572 SETTABLEKS                       R39 R38 K154 ["TextColor3"]
      574 GETUPVAL                         R40 2
      575 GETTABLEKS                       R39 R40 K8 ["FONT_SIZE_TITLE"]
      577 SETTABLEKS                       R39 R38 K76 ["TextSize"]
      579 GETIMPORT                        R39 K142 [Enum.TextXAlignment.Left]
      581 SETTABLEKS                       R39 R38 K135 ["TextXAlignment"]
      583 GETIMPORT                        R39 K144 [Enum.TextYAlignment.Center]
      585 SETTABLEKS                       R39 R38 K136 ["TextYAlignment"]
      587 GETUPVAL                         R41 6
      588 GETTABLEKS                       R40 R41 K151 ["Event"]
      590 GETTABLEKS                       R39 R40 K152 ["Activated"]
      592 GETTABLEKS                       R40 R0 K118 ["openValidationErrorMessageBox"]
      594 SETTABLE                         R40 R38 R39
      595 CALL                             R36 2 1
      596 JUMP                             ; [+1]
      597 LOADNIL                          R36
      598 SETTABLEKS                       R36 R35 K122 ["ErrorMessageTextButton"]
      600 CALL                             R32 3 1
      601 JUMP                             ; [+1]
      602 LOADNIL                          R32
      603 SETTABLEKS                       R32 R31 K62 ["AssetCategoryDropDown"]
      605 GETIMPORT                        R33 K156 [Enum.AssetType.EmoteAnimation]
      607 JUMPIFNOTEQ                      R9 R33 ; [+124]
      609 GETUPVAL                         R33 6
      610 GETTABLEKS                       R32 R33 K36 ["createElement"]
      612 GETUPVAL                         R33 7
      613 DUPTABLE                         R34 K157 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing", "VerticalAlignment"}]
      614 GETIMPORT                        R35 K159 [Enum.AutomaticSize.Y]
      616 SETTABLEKS                       R35 R34 K37 ["AutomaticSize"]
      618 GETIMPORT                        R35 K52 [Enum.HorizontalAlignment.Left]
      620 SETTABLEKS                       R35 R34 K40 ["HorizontalAlignment"]
      622 GETIMPORT                        R35 K161 [Enum.FillDirection.Horizontal]
      624 SETTABLEKS                       R35 R34 K41 ["Layout"]
      626 NAMECALL                         R35 R5 K97 ["getNextOrder"]
      628 CALL                             R35 1 1
      629 SETTABLEKS                       R35 R34 K42 ["LayoutOrder"]
      631 GETIMPORT                        R35 K163 [UDim2.fromScale]
      633 LOADN                            R36 1
      634 LOADN                            R37 0
      635 CALL                             R35 2 1
      636 SETTABLEKS                       R35 R34 K127 ["Size"]
      638 LOADN                            R35 8
      639 SETTABLEKS                       R35 R34 K44 ["Spacing"]
      641 GETIMPORT                        R35 K59 [Enum.VerticalAlignment.Top]
      643 SETTABLEKS                       R35 R34 K45 ["VerticalAlignment"]
      645 DUPTABLE                         R35 K165 [{"Icon", "UGCWarningText"}]
      646 GETUPVAL                         R37 6
      647 GETTABLEKS                       R36 R37 K36 ["createElement"]
      649 LOADK                            R37 K166 ["ImageLabel"]
      650 DUPTABLE                         R38 K167 [{"BackgroundTransparency", "Image", "ImageColor3", "LayoutOrder", "Size"}]
      651 LOADN                            R39 1
      652 SETTABLEKS                       R39 R38 K39 ["BackgroundTransparency"]
      654 GETUPVAL                         R40 16
      655 GETTABLEKS                       R39 R40 K168 ["WARNING_ICON"]
      657 SETTABLEKS                       R39 R38 K147 ["Image"]
      659 GETTABLEKS                       R40 R4 K169 ["assetConfig"]
      661 GETTABLEKS                       R39 R40 K170 ["warningColor"]
      663 SETTABLEKS                       R39 R38 K148 ["ImageColor3"]
      665 LOADN                            R39 1
      666 SETTABLEKS                       R39 R38 K42 ["LayoutOrder"]
      668 GETIMPORT                        R39 K150 [UDim2.fromOffset]
      670 LOADN                            R40 24
      671 LOADN                            R41 24
      672 CALL                             R39 2 1
      673 SETTABLEKS                       R39 R38 K127 ["Size"]
      675 CALL                             R36 2 1
      676 SETTABLEKS                       R36 R35 K65 ["Icon"]
      678 GETUPVAL                         R37 6
      679 GETTABLEKS                       R36 R37 K36 ["createElement"]
      681 LOADK                            R37 K171 ["TextLabel"]
      682 DUPTABLE                         R38 K172 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor3", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
      683 GETIMPORT                        R39 K159 [Enum.AutomaticSize.Y]
      685 SETTABLEKS                       R39 R38 K37 ["AutomaticSize"]
      687 LOADN                            R39 1
      688 SETTABLEKS                       R39 R38 K39 ["BackgroundTransparency"]
      690 GETUPVAL                         R40 2
      691 GETTABLEKS                       R39 R40 K173 ["FONT"]
      693 SETTABLEKS                       R39 R38 K75 ["Font"]
      695 LOADN                            R39 2
      696 SETTABLEKS                       R39 R38 K42 ["LayoutOrder"]
      698 GETIMPORT                        R39 K131 [UDim2.new]
      700 LOADN                            R40 1
      701 LOADN                            R41 224
      702 CALL                             R39 2 1
      703 SETTABLEKS                       R39 R38 K127 ["Size"]
      705 SETTABLEKS                       R26 R38 K69 ["Text"]
      707 GETTABLEKS                       R40 R4 K169 ["assetConfig"]
      709 GETTABLEKS                       R39 R40 K170 ["warningColor"]
      711 SETTABLEKS                       R39 R38 K154 ["TextColor3"]
      713 LOADN                            R39 24
      714 SETTABLEKS                       R39 R38 K76 ["TextSize"]
      716 LOADB                            R39 1
      717 SETTABLEKS                       R39 R38 K134 ["TextWrapped"]
      719 GETIMPORT                        R39 K142 [Enum.TextXAlignment.Left]
      721 SETTABLEKS                       R39 R38 K135 ["TextXAlignment"]
      723 GETIMPORT                        R39 K144 [Enum.TextYAlignment.Center]
      725 SETTABLEKS                       R39 R38 K136 ["TextYAlignment"]
      727 CALL                             R36 2 1
      728 SETTABLEKS                       R36 R35 K164 ["UGCWarningText"]
      730 CALL                             R32 3 1
      731 JUMP                             ; [+1]
      732 LOADNIL                          R32
      733 SETTABLEKS                       R32 R31 K33 ["EmoteAnimationWarning"]
      735 CALL                             R28 3 -1
      736 RETURN                           R28 -1

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
      185 GETTABLEKS                       R34 R32 K46 ["AssetCategoryRow"]
      187 CALL                             R33 1 1
      188 GETIMPORT                        R34 K10 [require]
      190 GETTABLEKS                       R35 R32 K47 ["AssetConfigDropdown"]
      192 CALL                             R34 1 1
      193 GETIMPORT                        R35 K10 [require]
      195 GETTABLEKS                       R36 R32 K48 ["ConfigSectionWrapper"]
      197 CALL                             R35 1 1
      198 GETIMPORT                        R36 K10 [require]
      200 GETTABLEKS                       R37 R32 K49 ["ContentTypeRadioButtons"]
      202 CALL                             R36 1 1
      203 GETIMPORT                        R37 K10 [require]
      205 GETTABLEKS                       R40 R0 K20 ["Src"]
      207 GETTABLEKS                       R39 R40 K50 ["Flags"]
      209 GETTABLEKS                       R38 R39 K51 ["getFFlagToolboxAssetConfigFoundationMigration"]
      211 CALL                             R37 1 1
      212 GETIMPORT                        R38 K10 [require]
      214 GETTABLEKS                       R39 R32 K52 ["UGCBundleValidation"]
      216 CALL                             R38 1 1
      217 GETIMPORT                        R39 K10 [require]
      219 GETTABLEKS                       R40 R32 K53 ["ValidationStatus"]
      221 CALL                             R39 1 1
      222 GETIMPORT                        R40 K10 [require]
      224 GETTABLEKS                       R41 R13 K54 ["AssetConfigConstants"]
      226 CALL                             R40 1 1
      227 GETIMPORT                        R41 K10 [require]
      229 GETTABLEKS                       R42 R32 K55 ["DataConsentToggle"]
      231 CALL                             R41 1 1
      232 GETIMPORT                        R42 K5 [game]
      234 LOADK                            R44 K56 ["BodyFirstInAssetsCategory"]
      235 LOADB                            R45 0
      236 NAMECALL                         R42 R42 K57 ["DefineFastFlag"]
      238 CALL                             R42 3 0
      239 GETIMPORT                        R42 K5 [game]
      241 LOADK                            R44 K58 ["DisableSubmitButtonForValidationInInit"]
      242 LOADB                            R45 0
      243 NAMECALL                         R42 R42 K57 ["DefineFastFlag"]
      245 CALL                             R42 3 1
      246 GETIMPORT                        R43 K10 [require]
      248 GETTABLEKS                       R45 R13 K29 ["SharedFlags"]
      250 GETTABLEKS                       R44 R45 K59 ["getFFlagEnableUGCUploadFlowAnalytics"]
      252 CALL                             R43 1 1
      253 GETIMPORT                        R44 K10 [require]
      255 GETTABLEKS                       R46 R13 K29 ["SharedFlags"]
      257 GETTABLEKS                       R45 R46 K60 ["getFFlagEnableUGCBundleUploadBodyScale"]
      259 CALL                             R44 1 1
      260 GETIMPORT                        R45 K10 [require]
      262 GETTABLEKS                       R48 R0 K20 ["Src"]
      264 GETTABLEKS                       R47 R48 K50 ["Flags"]
      266 GETTABLEKS                       R46 R47 K61 ["getFFlagRequireBodyColorsForBodyUpload"]
      268 CALL                             R45 1 1
      269 GETIMPORT                        R46 K10 [require]
      271 GETTABLEKS                       R48 R13 K29 ["SharedFlags"]
      273 GETTABLEKS                       R47 R48 K62 ["getFFlagEnableUGCForAllChecks"]
      275 CALL                             R46 1 1
      276 GETIMPORT                        R47 K10 [require]
      278 GETTABLEKS                       R50 R0 K20 ["Src"]
      280 GETTABLEKS                       R49 R50 K50 ["Flags"]
      282 GETTABLEKS                       R48 R49 K63 ["getFStringAssetsToBypassValidation"]
      284 CALL                             R47 1 1
      285 GETIMPORT                        R48 K10 [require]
      287 GETTABLEKS                       R51 R0 K20 ["Src"]
      289 GETTABLEKS                       R50 R51 K50 ["Flags"]
      291 GETTABLEKS                       R49 R50 K64 ["getFFlagAssetBypassValidation"]
      293 CALL                             R48 1 1
      294 GETIMPORT                        R49 K5 [game]
      296 LOADK                            R51 K65 ["ToolboxConfigAssetTypeAgeIDVerificationLink"]
      297 LOADK                            R52 K66 ["https://en.help.roblox.com/hc/en-us/articles/4407282410644-Age-ID-Verification"]
      298 NAMECALL                         R49 R49 K67 ["DefineFastString"]
      300 CALL                             R49 3 1
      301 GETIMPORT                        R50 K5 [game]
      303 LOADK                            R52 K68 ["ToolboxConfigAssetTypePremiumLink"]
      304 LOADK                            R53 K69 ["https://www.roblox.com/premium/membership"]
      305 NAMECALL                         R50 R50 K67 ["DefineFastString"]
      307 CALL                             R50 3 1
      308 GETIMPORT                        R51 K5 [game]
      310 LOADK                            R53 K70 ["ToolboxFixUGCBundleValidationCryoThingy1"]
      311 LOADB                            R54 0
      312 NAMECALL                         R51 R51 K57 ["DefineFastFlag"]
      314 CALL                             R51 3 1
      315 GETIMPORT                        R52 K5 [game]
      317 LOADK                            R54 K71 ["ToolboxShowAnimationAssetSelection"]
      318 LOADB                            R55 0
      319 NAMECALL                         R52 R52 K57 ["DefineFastFlag"]
      321 CALL                             R52 3 1
      322 GETIMPORT                        R53 K5 [game]
      324 LOADK                            R55 K72 ["ToolboxRemoveRestrictedAssetWarning2"]
      325 NAMECALL                         R53 R53 K73 ["GetFastFlag"]
      327 CALL                             R53 2 1
      328 GETTABLEKS                       R54 R6 K74 ["PureComponent"]
      330 LOADK                            R56 K75 ["ConfigAssetType"]
      331 NAMECALL                         R54 R54 K76 ["extend"]
      333 CALL                             R54 2 1
      334 MOVE                             R56 R46
      335 CALL                             R56 0 1
      336 JUMPIFNOT                        R56 ; [+2]
      337 LOADN                            R55 10
      338 JUMP                             ; [+1]
      339 LOADN                            R55 0
      340 MOVE                             R57 R46
      341 CALL                             R57 0 1
      342 JUMPIFNOT                        R57 ; [+2]
      343 LOADN                            R56 72
      344 JUMP                             ; [+1]
      345 LOADN                            R56 24
      346 NEWTABLE                         R57 0 0
      348 GETIMPORT                        R58 K5 [game]
      350 LOADK                            R60 K56 ["BodyFirstInAssetsCategory"]
      351 NAMECALL                         R58 R58 K73 ["GetFastFlag"]
      353 CALL                             R58 2 1
      354 JUMPIFNOT                        R58 ; [+17]
      355 NEWTABLE                         R58 0 3
      357 GETTABLEKS                       R60 R40 K77 ["UGCBundleTypes"]
      359 GETTABLEKS                       R59 R60 K78 ["Body"]
      361 GETTABLEKS                       R61 R40 K77 ["UGCBundleTypes"]
      363 GETTABLEKS                       R60 R61 K79 ["DynamicHead"]
      365 GETTABLEKS                       R62 R40 K77 ["UGCBundleTypes"]
      367 GETTABLEKS                       R61 R62 K80 ["Shoes"]
      369 SETLIST                          R58 R59 3 [1]
      371 MOVE                             R57 R58
      372 DUPCLOSURE                       R58 K81 [PROTO_0]
      373 CAPTURE                          VAL R15
      374 DUPCLOSURE                       R59 K82 [PROTO_14]
      375 CAPTURE                          VAL R43
      376 CAPTURE                          VAL R15
      377 CAPTURE                          VAL R18
      378 CAPTURE                          VAL R40
      379 CAPTURE                          VAL R14
      380 CAPTURE                          VAL R42
      381 SETTABLEKS                       R59 R54 K83 ["init"]
      383 DUPCLOSURE                       R59 K84 [PROTO_15]
      384 SETTABLEKS                       R59 R54 K85 ["getAvatarItemCategoryErrorsPrimaryText"]
      386 DUPCLOSURE                       R59 K86 [PROTO_16]
      387 SETTABLEKS                       R59 R54 K87 ["getAvatarItemCategoryErrors"]
      389 DUPCLOSURE                       R59 K88 [PROTO_17]
      390 SETTABLEKS                       R59 R54 K89 ["selectedRadioButtonKeyFor"]
      392 DUPCLOSURE                       R59 K90 [PROTO_18]
      393 SETTABLEKS                       R59 R54 K91 ["isAvatarItemCategorySelected"]
      395 DUPCLOSURE                       R59 K92 [PROTO_22]
      396 CAPTURE                          VAL R3
      397 CAPTURE                          VAL R46
      398 CAPTURE                          VAL R15
      399 CAPTURE                          VAL R40
      400 SETTABLEKS                       R59 R54 K93 ["onAssetTypeChanged"]
      402 DUPCLOSURE                       R59 K94 [PROTO_24]
      403 CAPTURE                          VAL R40
      404 CAPTURE                          VAL R3
      405 SETTABLEKS                       R59 R54 K95 ["resetValidation"]
      407 DUPCLOSURE                       R59 K96 [PROTO_25]
      408 SETTABLEKS                       R59 R54 K97 ["cancelValidationTasks"]
      410 DUPCLOSURE                       R59 K98 [PROTO_26]
      411 SETTABLEKS                       R59 R54 K99 ["getErrorMessageWithCount"]
      413 DUPCLOSURE                       R59 K100 [PROTO_27]
      414 CAPTURE                          VAL R40
      415 SETTABLEKS                       R59 R54 K101 ["getValidationStatusMessage"]
      417 DUPCLOSURE                       R59 K102 [PROTO_28]
      418 CAPTURE                          VAL R40
      419 SETTABLEKS                       R59 R54 K103 ["getValidationStatusColor"]
      421 DUPCLOSURE                       R59 K104 [PROTO_29]
      422 SETTABLEKS                       R59 R54 K105 ["getAssetCategoryIndex"]
      424 NEWCLOSURE                       R59 P13
      425 CAPTURE                          VAL R15
      426 CAPTURE                          REF R57
      427 CAPTURE                          VAL R21
      428 CAPTURE                          VAL R22
      429 SETTABLEKS                       R59 R54 K106 ["getDropdownItemsFor"]
      431 DUPCLOSURE                       R59 K107 [PROTO_32]
      432 SETTABLEKS                       R59 R54 K108 ["getDropdownItems"]
      434 DUPCLOSURE                       R59 K109 [PROTO_33]
      435 CAPTURE                          VAL R15
      436 CAPTURE                          VAL R23
      437 CAPTURE                          VAL R6
      438 CAPTURE                          VAL R26
      439 CAPTURE                          VAL R17
      440 CAPTURE                          VAL R22
      441 SETTABLEKS                       R59 R54 K110 ["getMissingOptionalPartsMessage"]
      443 DUPCLOSURE                       R59 K111 [PROTO_34]
      444 CAPTURE                          VAL R15
      445 CAPTURE                          VAL R23
      446 CAPTURE                          VAL R6
      447 CAPTURE                          VAL R26
      448 CAPTURE                          VAL R17
      449 SETTABLEKS                       R59 R54 K112 ["getUnknownMeshPartMessage"]
      451 MOVE                             R59 R46
      452 CALL                             R59 0 1
      453 JUMPIFNOT                        R59 ; [+7]
      454 DUPCLOSURE                       R59 K113 [PROTO_37]
      455 CAPTURE                          VAL R1
      456 CAPTURE                          VAL R49
      457 CAPTURE                          VAL R50
      458 CAPTURE                          VAL R53
      459 SETTABLEKS                       R59 R54 K114 ["getUgcRestrictionsWarningText"]
      461 DUPCLOSURE                       R59 K115 [PROTO_41]
      462 CAPTURE                          VAL R40
      463 CAPTURE                          VAL R15
      464 CAPTURE                          VAL R16
      465 CAPTURE                          VAL R48
      466 CAPTURE                          VAL R47
      467 CAPTURE                          VAL R9
      468 SETTABLEKS                       R59 R54 K116 ["didUpdate"]
      470 DUPCLOSURE                       R59 K117 [PROTO_42]
      471 SETTABLEKS                       R59 R54 K118 ["willUnmount"]
      473 DUPCLOSURE                       R59 K119 [PROTO_44]
      474 CAPTURE                          VAL R23
      475 CAPTURE                          VAL R40
      476 CAPTURE                          VAL R17
      477 CAPTURE                          VAL R46
      478 CAPTURE                          VAL R53
      479 CAPTURE                          VAL R52
      480 CAPTURE                          VAL R6
      481 CAPTURE                          VAL R25
      482 CAPTURE                          VAL R30
      483 CAPTURE                          VAL R5
      484 CAPTURE                          VAL R36
      485 CAPTURE                          VAL R37
      486 CAPTURE                          VAL R35
      487 CAPTURE                          VAL R33
      488 CAPTURE                          VAL R29
      489 CAPTURE                          VAL R26
      490 CAPTURE                          VAL R19
      491 SETTABLEKS                       R59 R54 K120 ["render"]
      493 DUPCLOSURE                       R59 K121 [PROTO_45]
      494 DUPCLOSURE                       R60 K122 [PROTO_48]
      495 CAPTURE                          VAL R27
      496 CAPTURE                          VAL R28
      497 MOVE                             R61 R11
      498 DUPTABLE                         R62 K124 [{"Stylizer", "Localization"}]
      499 GETTABLEKS                       R63 R10 K123 ["Stylizer"]
      501 SETTABLEKS                       R63 R62 K123 ["Stylizer"]
      503 GETTABLEKS                       R63 R10 K32 ["Localization"]
      505 SETTABLEKS                       R63 R62 K32 ["Localization"]
      507 CALL                             R61 1 1
      508 MOVE                             R62 R54
      509 CALL                             R61 1 1
      510 MOVE                             R54 R61
      511 GETTABLEKS                       R61 R7 K125 ["connect"]
      513 MOVE                             R62 R59
      514 MOVE                             R63 R60
      515 CALL                             R61 2 1
      516 MOVE                             R62 R54
      517 CALL                             R61 1 -1
      518 CLOSEUPVALS                      R57
      519 RETURN                           R61 -1
