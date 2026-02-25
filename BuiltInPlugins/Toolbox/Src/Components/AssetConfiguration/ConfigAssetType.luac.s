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
      196 JUMPIFNOT                        R23 ; [+64]
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
      251 GETUPVAL                         R36 10
      252 CALL                             R36 0 1
      253 JUMPIFNOT                        R36 ; [+2]
      254 LOADB                            R35 1
      255 JUMP                             ; [+1]
      256 LOADNIL                          R35
      257 SETTABLEKS                       R35 R34 K73 ["isResizable"]
      259 CALL                             R32 2 1
      260 JUMP                             ; [+1]
      261 LOADNIL                          R32
      262 SETTABLEKS                       R32 R31 K60 ["ValidationErrorMessageBox"]
      264 JUMPIFNOT                        R27 ; [+427]
      265 GETUPVAL                         R33 7
      266 GETTABLEKS                       R32 R33 K36 ["createElement"]
      268 GETUPVAL                         R33 11
      269 DUPTABLE                         R34 K84 [{"AutomaticSize", "LayoutOrder", "Title"}]
      270 GETIMPORT                        R35 K48 [Enum.AutomaticSize.XY]
      272 SETTABLEKS                       R35 R34 K37 ["AutomaticSize"]
      274 NAMECALL                         R35 R5 K85 ["getNextOrder"]
      276 CALL                             R35 1 1
      277 SETTABLEKS                       R35 R34 K42 ["LayoutOrder"]
      279 SETTABLEKS                       R14 R34 K70 ["Title"]
      281 DUPTABLE                         R35 K90 [{"UIListLayout", "RadioButtons", "WarningMessageFrame", "WarningFrame"}]
      282 GETUPVAL                         R37 7
      283 GETTABLEKS                       R36 R37 K36 ["createElement"]
      285 LOADK                            R37 K86 ["UIListLayout"]
      286 DUPTABLE                         R38 K92 [{"FillDirection", "HorizontalAlignment", "Padding", "SortOrder", "VerticalAlignment"}]
      287 GETIMPORT                        R39 K55 [Enum.FillDirection.Vertical]
      289 SETTABLEKS                       R39 R38 K53 ["FillDirection"]
      291 GETIMPORT                        R39 K52 [Enum.HorizontalAlignment.Left]
      293 SETTABLEKS                       R39 R38 K40 ["HorizontalAlignment"]
      295 GETIMPORT                        R39 K94 [UDim.new]
      297 LOADN                            R40 0
      298 LOADN                            R41 8
      299 CALL                             R39 2 1
      300 SETTABLEKS                       R39 R38 K43 ["Padding"]
      302 GETIMPORT                        R39 K95 [Enum.SortOrder.LayoutOrder]
      304 SETTABLEKS                       R39 R38 K91 ["SortOrder"]
      306 GETIMPORT                        R39 K59 [Enum.VerticalAlignment.Top]
      308 SETTABLEKS                       R39 R38 K45 ["VerticalAlignment"]
      310 CALL                             R36 2 1
      311 SETTABLEKS                       R36 R35 K86 ["UIListLayout"]
      313 GETUPVAL                         R37 7
      314 GETTABLEKS                       R36 R37 K36 ["createElement"]
      316 GETUPVAL                         R37 12
      317 DUPTABLE                         R38 K99 [{"Buttons", "FillDirection", "LayoutOrder", "OnClick", "SelectedKey"}]
      318 NEWTABLE                         R39 0 2
      320 DUPTABLE                         R40 K102 [{"Key", "Text", "Disabled"}]
      321 LOADK                            R41 K24 ["DevelopmentItem"]
      322 SETTABLEKS                       R41 R40 K100 ["Key"]
      324 SETTABLEKS                       R15 R40 K69 ["Text"]
      326 LOADB                            R41 0
      327 SETTABLEKS                       R41 R40 K101 ["Disabled"]
      329 DUPTABLE                         R41 K102 [{"Key", "Text", "Disabled"}]
      330 LOADK                            R42 K25 ["AvatarItem"]
      331 SETTABLEKS                       R42 R41 K100 ["Key"]
      333 SETTABLEKS                       R16 R41 K69 ["Text"]
      335 LOADB                            R42 0
      336 SETTABLEKS                       R42 R41 K101 ["Disabled"]
      338 SETLIST                          R39 R40 2 [1]
      340 SETTABLEKS                       R39 R38 K96 ["Buttons"]
      342 GETIMPORT                        R39 K104 [Enum.FillDirection.Horizontal]
      344 SETTABLEKS                       R39 R38 K53 ["FillDirection"]
      346 LOADN                            R39 1
      347 SETTABLEKS                       R39 R38 K42 ["LayoutOrder"]
      349 GETTABLEKS                       R39 R0 K105 ["onRadioButtonClicked"]
      351 SETTABLEKS                       R39 R38 K97 ["OnClick"]
      353 GETTABLEKS                       R39 R2 K106 ["currentSelectedRadioButtonKey"]
      355 SETTABLEKS                       R39 R38 K98 ["SelectedKey"]
      357 CALL                             R36 2 1
      358 SETTABLEKS                       R36 R35 K87 ["RadioButtons"]
      360 GETUPVAL                         R37 3
      361 CALL                             R37 0 1
      362 JUMPIFNOT                        R37 ; [+129]
      363 GETUPVAL                         R37 7
      364 GETTABLEKS                       R36 R37 K36 ["createElement"]
      366 GETUPVAL                         R37 8
      367 DUPTABLE                         R38 K108 [{"HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing", "VerticalAlignment"}]
      368 GETIMPORT                        R39 K52 [Enum.HorizontalAlignment.Left]
      370 SETTABLEKS                       R39 R38 K40 ["HorizontalAlignment"]
      372 GETIMPORT                        R39 K104 [Enum.FillDirection.Horizontal]
      374 SETTABLEKS                       R39 R38 K41 ["Layout"]
      376 LOADN                            R39 2
      377 SETTABLEKS                       R39 R38 K42 ["LayoutOrder"]
      379 GETIMPORT                        R39 K110 [UDim2.new]
      381 LOADN                            R40 1
      382 LOADN                            R41 0
      383 LOADN                            R42 0
      384 GETUPVAL                         R43 13
      385 CALL                             R39 4 1
      386 SETTABLEKS                       R39 R38 K107 ["Size"]
      388 GETUPVAL                         R39 14
      389 SETTABLEKS                       R39 R38 K44 ["Spacing"]
      391 GETIMPORT                        R39 K112 [Enum.VerticalAlignment.Center]
      393 SETTABLEKS                       R39 R38 K45 ["VerticalAlignment"]
      395 DUPTABLE                         R39 K115 [{"WarningMessageIcon", "WarningMessageText"}]
      396 JUMPIFEQKNIL                     R24 ; [+32]
      398 GETUPVAL                         R41 7
      399 GETTABLEKS                       R40 R41 K36 ["createElement"]
      401 LOADK                            R41 K116 ["ImageLabel"]
      402 DUPTABLE                         R42 K119 [{"BackgroundTransparency", "Image", "ImageColor3", "LayoutOrder", "Size"}]
      403 LOADN                            R43 1
      404 SETTABLEKS                       R43 R42 K39 ["BackgroundTransparency"]
      406 GETUPVAL                         R44 15
      407 GETTABLEKS                       R43 R44 K120 ["WARNING_ICON"]
      409 SETTABLEKS                       R43 R42 K117 ["Image"]
      411 GETTABLEKS                       R44 R4 K121 ["assetConfig"]
      413 GETTABLEKS                       R43 R44 K122 ["warningColor"]
      415 SETTABLEKS                       R43 R42 K118 ["ImageColor3"]
      417 LOADN                            R43 1
      418 SETTABLEKS                       R43 R42 K42 ["LayoutOrder"]
      420 GETIMPORT                        R43 K124 [UDim2.fromOffset]
      422 LOADN                            R44 24
      423 LOADN                            R45 24
      424 CALL                             R43 2 1
      425 SETTABLEKS                       R43 R42 K107 ["Size"]
      427 CALL                             R40 2 1
      428 JUMP                             ; [+1]
      429 LOADNIL                          R40
      430 SETTABLEKS                       R40 R39 K113 ["WarningMessageIcon"]
      432 JUMPIFEQKNIL                     R24 ; [+54]
      434 GETUPVAL                         R41 7
      435 GETTABLEKS                       R40 R41 K36 ["createElement"]
      437 GETUPVAL                         R41 16
      438 DUPTABLE                         R42 K130 [{"BackgroundTransparency", "HorizontalAlignment", "LayoutOrder", "LinkMap", "Size", "Text", "TextColor3", "TextProps", "TextXAlignment", "TextYAlignment"}]
      439 LOADN                            R43 1
      440 SETTABLEKS                       R43 R42 K39 ["BackgroundTransparency"]
      442 GETIMPORT                        R43 K52 [Enum.HorizontalAlignment.Left]
      444 SETTABLEKS                       R43 R42 K40 ["HorizontalAlignment"]
      446 LOADN                            R43 2
      447 SETTABLEKS                       R43 R42 K42 ["LayoutOrder"]
      449 SETTABLEKS                       R25 R42 K125 ["LinkMap"]
      451 GETIMPORT                        R43 K132 [UDim2.fromScale]
      453 LOADN                            R44 1
      454 LOADN                            R45 1
      455 CALL                             R43 2 1
      456 SETTABLEKS                       R43 R42 K107 ["Size"]
      458 SETTABLEKS                       R24 R42 K69 ["Text"]
      460 GETTABLEKS                       R44 R4 K121 ["assetConfig"]
      462 GETTABLEKS                       R43 R44 K122 ["warningColor"]
      464 SETTABLEKS                       R43 R42 K126 ["TextColor3"]
      466 DUPTABLE                         R43 K133 [{"Font", "TextSize"}]
      467 GETUPVAL                         R45 2
      468 GETTABLEKS                       R44 R45 K134 ["FONT"]
      470 SETTABLEKS                       R44 R43 K75 ["Font"]
      472 LOADN                            R44 24
      473 SETTABLEKS                       R44 R43 K76 ["TextSize"]
      475 SETTABLEKS                       R43 R42 K127 ["TextProps"]
      477 GETIMPORT                        R43 K135 [Enum.TextXAlignment.Left]
      479 SETTABLEKS                       R43 R42 K128 ["TextXAlignment"]
      481 GETIMPORT                        R43 K136 [Enum.TextYAlignment.Top]
      483 SETTABLEKS                       R43 R42 K129 ["TextYAlignment"]
      485 CALL                             R40 2 1
      486 JUMP                             ; [+1]
      487 LOADNIL                          R40
      488 SETTABLEKS                       R40 R39 K114 ["WarningMessageText"]
      490 CALL                             R36 3 1
      491 JUMP                             ; [+1]
      492 LOADNIL                          R36
      493 SETTABLEKS                       R36 R35 K88 ["WarningMessageFrame"]
      495 GETUPVAL                         R37 3
      496 CALL                             R37 0 1
      497 JUMPIF                           R37 ; [+189]
      498 GETUPVAL                         R37 7
      499 GETTABLEKS                       R36 R37 K36 ["createElement"]
      501 GETUPVAL                         R37 8
      502 DUPTABLE                         R38 K108 [{"HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing", "VerticalAlignment"}]
      503 GETIMPORT                        R39 K52 [Enum.HorizontalAlignment.Left]
      505 SETTABLEKS                       R39 R38 K40 ["HorizontalAlignment"]
      507 GETIMPORT                        R39 K104 [Enum.FillDirection.Horizontal]
      509 SETTABLEKS                       R39 R38 K41 ["Layout"]
      511 LOADN                            R39 2
      512 SETTABLEKS                       R39 R38 K42 ["LayoutOrder"]
      514 GETIMPORT                        R39 K110 [UDim2.new]
      516 LOADN                            R40 1
      517 LOADN                            R41 0
      518 LOADN                            R42 0
      519 GETUPVAL                         R43 13
      520 CALL                             R39 4 1
      521 SETTABLEKS                       R39 R38 K107 ["Size"]
      523 GETUPVAL                         R39 14
      524 SETTABLEKS                       R39 R38 K44 ["Spacing"]
      526 GETIMPORT                        R39 K59 [Enum.VerticalAlignment.Top]
      528 SETTABLEKS                       R39 R38 K45 ["VerticalAlignment"]
      530 DUPTABLE                         R39 K139 [{"Icon", "ModelWarningText", "InsufficientRobuxWarningText"}]
      531 JUMPIFNOT                        R10 ; [+2]
      532 GETUPVAL                         R41 4
      533 JUMPIFNOT                        R41 ; [+1]
      534 JUMPIFNOT                        R21 ; [+31]
      535 GETUPVAL                         R41 7
      536 GETTABLEKS                       R40 R41 K36 ["createElement"]
      538 LOADK                            R41 K116 ["ImageLabel"]
      539 DUPTABLE                         R42 K119 [{"BackgroundTransparency", "Image", "ImageColor3", "LayoutOrder", "Size"}]
      540 LOADN                            R43 1
      541 SETTABLEKS                       R43 R42 K39 ["BackgroundTransparency"]
      543 GETUPVAL                         R44 15
      544 GETTABLEKS                       R43 R44 K120 ["WARNING_ICON"]
      546 SETTABLEKS                       R43 R42 K117 ["Image"]
      548 GETTABLEKS                       R44 R4 K121 ["assetConfig"]
      550 GETTABLEKS                       R43 R44 K122 ["warningColor"]
      552 SETTABLEKS                       R43 R42 K118 ["ImageColor3"]
      554 LOADN                            R43 1
      555 SETTABLEKS                       R43 R42 K42 ["LayoutOrder"]
      557 GETIMPORT                        R43 K124 [UDim2.fromOffset]
      559 LOADN                            R44 24
      560 LOADN                            R45 24
      561 CALL                             R43 2 1
      562 SETTABLEKS                       R43 R42 K107 ["Size"]
      564 CALL                             R40 2 1
      565 JUMP                             ; [+1]
      566 LOADNIL                          R40
      567 SETTABLEKS                       R40 R39 K65 ["Icon"]
      569 JUMPIFNOT                        R10 ; [+55]
      570 GETUPVAL                         R41 4
      571 JUMPIF                           R41 ; [+53]
      572 GETUPVAL                         R41 7
      573 GETTABLEKS                       R40 R41 K36 ["createElement"]
      575 LOADK                            R41 K140 ["TextLabel"]
      576 DUPTABLE                         R42 K142 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor3", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
      577 GETIMPORT                        R43 K48 [Enum.AutomaticSize.XY]
      579 SETTABLEKS                       R43 R42 K37 ["AutomaticSize"]
      581 LOADN                            R43 1
      582 SETTABLEKS                       R43 R42 K39 ["BackgroundTransparency"]
      584 GETUPVAL                         R44 2
      585 GETTABLEKS                       R43 R44 K134 ["FONT"]
      587 SETTABLEKS                       R43 R42 K75 ["Font"]
      589 LOADN                            R43 2
      590 SETTABLEKS                       R43 R42 K42 ["LayoutOrder"]
      592 GETIMPORT                        R43 K110 [UDim2.new]
      594 LOADN                            R44 1
      595 LOADN                            R45 0
      596 LOADN                            R46 1
      597 LOADN                            R47 0
      598 CALL                             R43 4 1
      599 SETTABLEKS                       R43 R42 K107 ["Size"]
      601 SETTABLEKS                       R18 R42 K69 ["Text"]
      603 GETTABLEKS                       R44 R4 K121 ["assetConfig"]
      605 GETTABLEKS                       R43 R44 K122 ["warningColor"]
      607 SETTABLEKS                       R43 R42 K126 ["TextColor3"]
      609 LOADN                            R43 24
      610 SETTABLEKS                       R43 R42 K76 ["TextSize"]
      612 LOADB                            R43 1
      613 SETTABLEKS                       R43 R42 K141 ["TextWrapped"]
      615 GETIMPORT                        R43 K135 [Enum.TextXAlignment.Left]
      617 SETTABLEKS                       R43 R42 K128 ["TextXAlignment"]
      619 GETIMPORT                        R43 K143 [Enum.TextYAlignment.Center]
      621 SETTABLEKS                       R43 R42 K129 ["TextYAlignment"]
      623 CALL                             R40 2 1
      624 JUMP                             ; [+1]
      625 LOADNIL                          R40
      626 SETTABLEKS                       R40 R39 K137 ["ModelWarningText"]
      628 JUMPIFNOT                        R21 ; [+53]
      629 GETUPVAL                         R41 7
      630 GETTABLEKS                       R40 R41 K36 ["createElement"]
      632 LOADK                            R41 K140 ["TextLabel"]
      633 DUPTABLE                         R42 K142 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor3", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
      634 GETIMPORT                        R43 K48 [Enum.AutomaticSize.XY]
      636 SETTABLEKS                       R43 R42 K37 ["AutomaticSize"]
      638 LOADN                            R43 1
      639 SETTABLEKS                       R43 R42 K39 ["BackgroundTransparency"]
      641 GETUPVAL                         R44 2
      642 GETTABLEKS                       R43 R44 K134 ["FONT"]
      644 SETTABLEKS                       R43 R42 K75 ["Font"]
      646 LOADN                            R43 2
      647 SETTABLEKS                       R43 R42 K42 ["LayoutOrder"]
      649 GETIMPORT                        R43 K110 [UDim2.new]
      651 LOADN                            R44 1
      652 LOADN                            R45 0
      653 LOADN                            R46 1
      654 LOADN                            R47 0
      655 CALL                             R43 4 1
      656 SETTABLEKS                       R43 R42 K107 ["Size"]
      658 SETTABLEKS                       R22 R42 K69 ["Text"]
      660 GETTABLEKS                       R44 R4 K121 ["assetConfig"]
      662 GETTABLEKS                       R43 R44 K122 ["warningColor"]
      664 SETTABLEKS                       R43 R42 K126 ["TextColor3"]
      666 LOADN                            R43 24
      667 SETTABLEKS                       R43 R42 K76 ["TextSize"]
      669 LOADB                            R43 1
      670 SETTABLEKS                       R43 R42 K141 ["TextWrapped"]
      672 GETIMPORT                        R43 K135 [Enum.TextXAlignment.Left]
      674 SETTABLEKS                       R43 R42 K128 ["TextXAlignment"]
      676 GETIMPORT                        R43 K143 [Enum.TextYAlignment.Center]
      678 SETTABLEKS                       R43 R42 K129 ["TextYAlignment"]
      680 CALL                             R40 2 1
      681 JUMP                             ; [+1]
      682 LOADNIL                          R40
      683 SETTABLEKS                       R40 R39 K138 ["InsufficientRobuxWarningText"]
      685 CALL                             R36 3 1
      686 JUMP                             ; [+1]
      687 LOADNIL                          R36
      688 SETTABLEKS                       R36 R35 K89 ["WarningFrame"]
      690 CALL                             R32 3 1
      691 JUMP                             ; [+1]
      692 LOADNIL                          R32
      693 SETTABLEKS                       R32 R31 K61 ["ContentTypeRadioButtons"]
      695 JUMPIFNOT                        R27 ; [+225]
      696 GETUPVAL                         R33 7
      697 GETTABLEKS                       R32 R33 K36 ["createElement"]
      699 GETUPVAL                         R33 11
      700 DUPTABLE                         R34 K84 [{"AutomaticSize", "LayoutOrder", "Title"}]
      701 GETIMPORT                        R35 K48 [Enum.AutomaticSize.XY]
      703 SETTABLEKS                       R35 R34 K37 ["AutomaticSize"]
      705 NAMECALL                         R35 R5 K85 ["getNextOrder"]
      707 CALL                             R35 1 1
      708 SETTABLEKS                       R35 R34 K42 ["LayoutOrder"]
      710 SETTABLEKS                       R17 R34 K70 ["Title"]
      712 DUPTABLE                         R35 K148 [{"Dropdown", "ValidationResult", "ErrorIconButton", "ErrorMessageTextButton"}]
      713 GETUPVAL                         R37 7
      714 GETTABLEKS                       R36 R37 K36 ["createElement"]
      716 GETUPVAL                         R37 17
      717 DUPTABLE                         R38 K155 [{"fontSize", "items", "onItemClicked", "rowHeight", "selectedDropDownIndex", "Size", "visibleDropDownCount"}]
      718 LOADN                            R39 20
      719 SETTABLEKS                       R39 R38 K149 ["fontSize"]
      721 MOVE                             R41 R3
      722 NAMECALL                         R39 R0 K156 ["getDropdownItems"]
      724 CALL                             R39 2 1
      725 SETTABLEKS                       R39 R38 K150 ["items"]
      727 GETTABLEKS                       R39 R0 K157 ["setAssetCategoryIndex"]
      729 SETTABLEKS                       R39 R38 K151 ["onItemClicked"]
      731 LOADN                            R39 24
      732 SETTABLEKS                       R39 R38 K152 ["rowHeight"]
      734 NAMECALL                         R39 R0 K158 ["getAssetCategoryIndex"]
      736 CALL                             R39 1 1
      737 SETTABLEKS                       R39 R38 K153 ["selectedDropDownIndex"]
      739 GETIMPORT                        R39 K110 [UDim2.new]
      741 LOADN                            R40 0
      742 LOADN                            R41 144
      743 LOADN                            R42 0
      744 LOADN                            R43 40
      745 CALL                             R39 4 1
      746 SETTABLEKS                       R39 R38 K107 ["Size"]
      748 LOADN                            R39 6
      749 SETTABLEKS                       R39 R38 K154 ["visibleDropDownCount"]
      751 CALL                             R36 2 1
      752 SETTABLEKS                       R36 R35 K144 ["Dropdown"]
      754 JUMPIF                           R6 ; [+44]
      755 GETUPVAL                         R37 7
      756 GETTABLEKS                       R36 R37 K36 ["createElement"]
      758 GETUPVAL                         R37 18
      759 DUPTABLE                         R38 K161 [{"AutomaticSize", "Position", "Text", "TextColor", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
      760 GETIMPORT                        R39 K48 [Enum.AutomaticSize.XY]
      762 SETTABLEKS                       R39 R38 K37 ["AutomaticSize"]
      764 GETIMPORT                        R39 K110 [UDim2.new]
      766 LOADN                            R40 0
      767 ADDK                             R42 R7 K163 [400]
      768 ADDK                             R41 R42 K162 [16]
      769 LOADN                            R42 0
      770 SUBRK                            R44 R165 K8 ["FONT_SIZE_TITLE"]
      771 DIVK                             R43 R44 K164 [2]
      772 CALL                             R39 4 1
      773 SETTABLEKS                       R39 R38 K159 ["Position"]
      775 NAMECALL                         R39 R0 K166 ["getValidationStatusMessage"]
      777 CALL                             R39 1 1
      778 SETTABLEKS                       R39 R38 K69 ["Text"]
      780 MOVE                             R41 R4
      781 NAMECALL                         R39 R0 K167 ["getValidationStatusColor"]
      783 CALL                             R39 2 1
      784 SETTABLEKS                       R39 R38 K160 ["TextColor"]
      786 LOADB                            R39 1
      787 SETTABLEKS                       R39 R38 K141 ["TextWrapped"]
      789 GETIMPORT                        R39 K135 [Enum.TextXAlignment.Left]
      791 SETTABLEKS                       R39 R38 K128 ["TextXAlignment"]
      793 GETIMPORT                        R39 K143 [Enum.TextYAlignment.Center]
      795 SETTABLEKS                       R39 R38 K129 ["TextYAlignment"]
      797 CALL                             R36 2 1
      798 JUMP                             ; [+1]
      799 LOADNIL                          R36
      800 SETTABLEKS                       R36 R35 K145 ["ValidationResult"]
      802 JUMPIFNOT                        R6 ; [+47]
      803 GETUPVAL                         R37 7
      804 GETTABLEKS                       R36 R37 K36 ["createElement"]
      806 LOADK                            R37 K168 ["ImageButton"]
      807 NEWTABLE                         R38 8 0
      809 LOADB                            R39 0
      810 SETTABLEKS                       R39 R38 K169 ["AutoButtonColor"]
      812 LOADN                            R39 1
      813 SETTABLEKS                       R39 R38 K39 ["BackgroundTransparency"]
      815 LOADK                            R39 K80 ["rbxasset://textures/ui/ErrorIcon.png"]
      816 SETTABLEKS                       R39 R38 K117 ["Image"]
      818 MOVE                             R41 R4
      819 NAMECALL                         R39 R0 K167 ["getValidationStatusColor"]
      821 CALL                             R39 2 1
      822 SETTABLEKS                       R39 R38 K118 ["ImageColor3"]
      824 GETIMPORT                        R39 K110 [UDim2.new]
      826 LOADN                            R40 0
      827 LOADN                            R41 152
      828 LOADN                            R42 0
      829 LOADN                            R43 8
      830 CALL                             R39 4 1
      831 SETTABLEKS                       R39 R38 K159 ["Position"]
      833 GETIMPORT                        R39 K124 [UDim2.fromOffset]
      835 LOADN                            R40 24
      836 LOADN                            R41 24
      837 CALL                             R39 2 1
      838 SETTABLEKS                       R39 R38 K107 ["Size"]
      840 GETUPVAL                         R41 7
      841 GETTABLEKS                       R40 R41 K170 ["Event"]
      843 GETTABLEKS                       R39 R40 K171 ["Activated"]
      845 GETTABLEKS                       R40 R0 K172 ["openValidationErrorMessageBox"]
      847 SETTABLE                         R40 R38 R39
      848 CALL                             R36 2 1
      849 JUMP                             ; [+1]
      850 LOADNIL                          R36
      851 SETTABLEKS                       R36 R35 K146 ["ErrorIconButton"]
      853 JUMPIFNOT                        R6 ; [+62]
      854 GETUPVAL                         R37 7
      855 GETTABLEKS                       R36 R37 K36 ["createElement"]
      857 LOADK                            R37 K173 ["TextButton"]
      858 NEWTABLE                         R38 16 0
      860 GETIMPORT                        R39 K48 [Enum.AutomaticSize.XY]
      862 SETTABLEKS                       R39 R38 K37 ["AutomaticSize"]
      864 LOADN                            R39 1
      865 SETTABLEKS                       R39 R38 K39 ["BackgroundTransparency"]
      867 GETTABLEKS                       R39 R4 K75 ["Font"]
      869 SETTABLEKS                       R39 R38 K75 ["Font"]
      871 GETIMPORT                        R39 K110 [UDim2.new]
      873 LOADN                            R40 0
      874 ADDK                             R42 R7 K163 [400]
      875 ADDK                             R41 R42 K162 [16]
      876 LOADN                            R42 0
      877 SUBRK                            R44 R165 K8 ["FONT_SIZE_TITLE"]
      878 DIVK                             R43 R44 K164 [2]
      879 CALL                             R39 4 1
      880 SETTABLEKS                       R39 R38 K159 ["Position"]
      882 NAMECALL                         R39 R0 K166 ["getValidationStatusMessage"]
      884 CALL                             R39 1 1
      885 SETTABLEKS                       R39 R38 K69 ["Text"]
      887 MOVE                             R41 R4
      888 NAMECALL                         R39 R0 K167 ["getValidationStatusColor"]
      890 CALL                             R39 2 1
      891 SETTABLEKS                       R39 R38 K126 ["TextColor3"]
      893 GETUPVAL                         R40 2
      894 GETTABLEKS                       R39 R40 K8 ["FONT_SIZE_TITLE"]
      896 SETTABLEKS                       R39 R38 K76 ["TextSize"]
      898 GETIMPORT                        R39 K135 [Enum.TextXAlignment.Left]
      900 SETTABLEKS                       R39 R38 K128 ["TextXAlignment"]
      902 GETIMPORT                        R39 K143 [Enum.TextYAlignment.Center]
      904 SETTABLEKS                       R39 R38 K129 ["TextYAlignment"]
      906 GETUPVAL                         R41 7
      907 GETTABLEKS                       R40 R41 K170 ["Event"]
      909 GETTABLEKS                       R39 R40 K171 ["Activated"]
      911 GETTABLEKS                       R40 R0 K172 ["openValidationErrorMessageBox"]
      913 SETTABLE                         R40 R38 R39
      914 CALL                             R36 2 1
      915 JUMP                             ; [+1]
      916 LOADNIL                          R36
      917 SETTABLEKS                       R36 R35 K147 ["ErrorMessageTextButton"]
      919 CALL                             R32 3 1
      920 JUMP                             ; [+1]
      921 LOADNIL                          R32
      922 SETTABLEKS                       R32 R31 K62 ["AssetCategoryDropDown"]
      924 GETUPVAL                         R33 5
      925 CALL                             R33 0 1
      926 JUMPIFNOT                        R33 ; [+132]
      927 GETIMPORT                        R33 K175 [Enum.AssetType.EmoteAnimation]
      929 JUMPIFNOTEQ                      R9 R33 ; [+129]
      931 GETUPVAL                         R33 7
      932 GETTABLEKS                       R32 R33 K36 ["createElement"]
      934 GETUPVAL                         R33 8
      935 DUPTABLE                         R34 K176 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing", "VerticalAlignment"}]
      936 GETIMPORT                        R35 K178 [Enum.AutomaticSize.Y]
      938 SETTABLEKS                       R35 R34 K37 ["AutomaticSize"]
      940 GETIMPORT                        R35 K52 [Enum.HorizontalAlignment.Left]
      942 SETTABLEKS                       R35 R34 K40 ["HorizontalAlignment"]
      944 GETIMPORT                        R35 K104 [Enum.FillDirection.Horizontal]
      946 SETTABLEKS                       R35 R34 K41 ["Layout"]
      948 NAMECALL                         R35 R5 K85 ["getNextOrder"]
      950 CALL                             R35 1 1
      951 SETTABLEKS                       R35 R34 K42 ["LayoutOrder"]
      953 GETIMPORT                        R35 K132 [UDim2.fromScale]
      955 LOADN                            R36 1
      956 LOADN                            R37 0
      957 CALL                             R35 2 1
      958 SETTABLEKS                       R35 R34 K107 ["Size"]
      960 LOADN                            R35 8
      961 SETTABLEKS                       R35 R34 K44 ["Spacing"]
      963 GETIMPORT                        R35 K59 [Enum.VerticalAlignment.Top]
      965 SETTABLEKS                       R35 R34 K45 ["VerticalAlignment"]
      967 DUPTABLE                         R35 K180 [{"Icon", "UGCWarningText"}]
      968 GETUPVAL                         R37 7
      969 GETTABLEKS                       R36 R37 K36 ["createElement"]
      971 LOADK                            R37 K116 ["ImageLabel"]
      972 DUPTABLE                         R38 K119 [{"BackgroundTransparency", "Image", "ImageColor3", "LayoutOrder", "Size"}]
      973 LOADN                            R39 1
      974 SETTABLEKS                       R39 R38 K39 ["BackgroundTransparency"]
      976 GETUPVAL                         R40 15
      977 GETTABLEKS                       R39 R40 K120 ["WARNING_ICON"]
      979 SETTABLEKS                       R39 R38 K117 ["Image"]
      981 GETTABLEKS                       R40 R4 K121 ["assetConfig"]
      983 GETTABLEKS                       R39 R40 K122 ["warningColor"]
      985 SETTABLEKS                       R39 R38 K118 ["ImageColor3"]
      987 LOADN                            R39 1
      988 SETTABLEKS                       R39 R38 K42 ["LayoutOrder"]
      990 GETIMPORT                        R39 K124 [UDim2.fromOffset]
      992 LOADN                            R40 24
      993 LOADN                            R41 24
      994 CALL                             R39 2 1
      995 SETTABLEKS                       R39 R38 K107 ["Size"]
      997 CALL                             R36 2 1
      998 SETTABLEKS                       R36 R35 K65 ["Icon"]
     1000 GETUPVAL                         R37 7
     1001 GETTABLEKS                       R36 R37 K36 ["createElement"]
     1003 LOADK                            R37 K140 ["TextLabel"]
     1004 DUPTABLE                         R38 K142 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor3", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
     1005 GETIMPORT                        R39 K178 [Enum.AutomaticSize.Y]
     1007 SETTABLEKS                       R39 R38 K37 ["AutomaticSize"]
     1009 LOADN                            R39 1
     1010 SETTABLEKS                       R39 R38 K39 ["BackgroundTransparency"]
     1012 GETUPVAL                         R40 2
     1013 GETTABLEKS                       R39 R40 K134 ["FONT"]
     1015 SETTABLEKS                       R39 R38 K75 ["Font"]
     1017 LOADN                            R39 2
     1018 SETTABLEKS                       R39 R38 K42 ["LayoutOrder"]
     1020 GETIMPORT                        R39 K110 [UDim2.new]
     1022 LOADN                            R40 1
     1023 GETUPVAL                         R42 19
     1024 CALL                             R42 0 1
     1025 JUMPIFNOT                        R42 ; [+2]
     1026 LOADN                            R41 224
     1027 JUMP                             ; [+1]
     1028 LOADN                            R41 0
     1029 CALL                             R39 2 1
     1030 SETTABLEKS                       R39 R38 K107 ["Size"]
     1032 SETTABLEKS                       R26 R38 K69 ["Text"]
     1034 GETTABLEKS                       R40 R4 K121 ["assetConfig"]
     1036 GETTABLEKS                       R39 R40 K122 ["warningColor"]
     1038 SETTABLEKS                       R39 R38 K126 ["TextColor3"]
     1040 LOADN                            R39 24
     1041 SETTABLEKS                       R39 R38 K76 ["TextSize"]
     1043 LOADB                            R39 1
     1044 SETTABLEKS                       R39 R38 K141 ["TextWrapped"]
     1046 GETIMPORT                        R39 K135 [Enum.TextXAlignment.Left]
     1048 SETTABLEKS                       R39 R38 K128 ["TextXAlignment"]
     1050 GETIMPORT                        R39 K143 [Enum.TextYAlignment.Center]
     1052 SETTABLEKS                       R39 R38 K129 ["TextYAlignment"]
     1054 CALL                             R36 2 1
     1055 SETTABLEKS                       R36 R35 K179 ["UGCWarningText"]
     1057 CALL                             R32 3 1
     1058 JUMP                             ; [+1]
     1059 LOADNIL                          R32
     1060 SETTABLEKS                       R32 R31 K33 ["EmoteAnimationWarning"]
     1062 CALL                             R28 3 -1
     1063 RETURN                           R28 -1

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
       27 GETTABLEKS                       R6 R2 K13 ["Roact"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K10 [require]
       32 GETTABLEKS                       R7 R2 K14 ["RoactRodux"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K10 [require]
       37 GETTABLEKS                       R8 R2 K15 ["UGCValidation"]
       39 CALL                             R7 1 1
       40 GETTABLEKS                       R8 R4 K16 ["ContextServices"]
       42 GETTABLEKS                       R9 R8 K17 ["withContext"]
       44 GETIMPORT                        R10 K10 [require]
       46 GETTABLEKS                       R13 R0 K18 ["Src"]
       48 GETTABLEKS                       R12 R13 K16 ["ContextServices"]
       50 GETTABLEKS                       R11 R12 K19 ["NetworkContext"]
       52 CALL                             R10 1 1
       53 GETTABLEKS                       R12 R0 K18 ["Src"]
       55 GETTABLEKS                       R11 R12 K20 ["Util"]
       57 GETIMPORT                        R12 K10 [require]
       59 GETTABLEKS                       R14 R11 K21 ["Analytics"]
       61 GETTABLEKS                       R13 R14 K21 ["Analytics"]
       63 CALL                             R12 1 1
       64 GETIMPORT                        R13 K10 [require]
       66 GETTABLEKS                       R14 R11 K22 ["AssetConfigUtil"]
       68 CALL                             R13 1 1
       69 GETIMPORT                        R14 K10 [require]
       71 GETTABLEKS                       R15 R11 K23 ["fixUpPreValidation"]
       73 CALL                             R14 1 1
       74 GETIMPORT                        R15 K10 [require]
       76 GETTABLEKS                       R16 R11 K24 ["Constants"]
       78 CALL                             R15 1 1
       79 GETIMPORT                        R16 K10 [require]
       81 GETTABLEKS                       R17 R11 K25 ["DebugFlags"]
       83 CALL                             R16 1 1
       84 GETIMPORT                        R17 K10 [require]
       86 GETTABLEKS                       R18 R11 K26 ["Images"]
       88 CALL                             R17 1 1
       89 GETIMPORT                        R18 K10 [require]
       91 GETTABLEKS                       R20 R11 K27 ["SharedFlags"]
       93 GETTABLEKS                       R19 R20 K28 ["getFFlagUGCBundleValidationFullBodyErrors"]
       95 CALL                             R18 1 1
       96 GETIMPORT                        R19 K10 [require]
       98 GETTABLEKS                       R20 R11 K29 ["getAllowedAssetTypeEnums"]
      100 CALL                             R19 1 1
      101 GETIMPORT                        R20 K10 [require]
      103 GETTABLEKS                       R23 R0 K18 ["Src"]
      105 GETTABLEKS                       R22 R23 K30 ["Localization"]
      107 GETTABLEKS                       R21 R22 K31 ["getLocalizedAssetTextMap"]
      109 CALL                             R20 1 1
      110 GETTABLEKS                       R22 R4 K20 ["Util"]
      112 GETTABLEKS                       R21 R22 K32 ["LayoutOrderIterator"]
      114 GETTABLEKS                       R22 R4 K33 ["UI"]
      116 GETTABLEKS                       R23 R22 K34 ["Pane"]
      118 GETTABLEKS                       R24 R22 K35 ["RadioButtonList"]
      120 GETTABLEKS                       R25 R22 K36 ["TextLabel"]
      122 GETTABLEKS                       R26 R22 K37 ["TextWithLinks"]
      124 GETIMPORT                        R27 K10 [require]
      126 GETTABLEKS                       R30 R0 K18 ["Src"]
      128 GETTABLEKS                       R29 R30 K38 ["Actions"]
      130 GETTABLEKS                       R28 R29 K39 ["SetUploadAssetType"]
      132 CALL                             R27 1 1
      133 GETIMPORT                        R28 K10 [require]
      135 GETTABLEKS                       R31 R0 K18 ["Src"]
      137 GETTABLEKS                       R30 R31 K38 ["Actions"]
      139 GETTABLEKS                       R29 R30 K40 ["SetUploadAssetValidationStatus"]
      141 CALL                             R28 1 1
      142 GETIMPORT                        R29 K10 [require]
      144 GETTABLEKS                       R32 R0 K18 ["Src"]
      146 GETTABLEKS                       R31 R32 K41 ["Components"]
      148 GETTABLEKS                       R30 R31 K42 ["DropdownMenu"]
      150 CALL                             R29 1 1
      151 GETIMPORT                        R30 K10 [require]
      153 GETTABLEKS                       R34 R0 K18 ["Src"]
      155 GETTABLEKS                       R33 R34 K41 ["Components"]
      157 GETTABLEKS                       R32 R33 K43 ["MessageBox"]
      159 GETTABLEKS                       R31 R32 K43 ["MessageBox"]
      161 CALL                             R30 1 1
      162 GETIMPORT                        R31 K10 [require]
      164 GETTABLEKS                       R34 R0 K18 ["Src"]
      166 GETTABLEKS                       R33 R34 K41 ["Components"]
      168 GETTABLEKS                       R32 R33 K44 ["StyledScrollingFrame"]
      170 CALL                             R31 1 1
      171 GETTABLEKS                       R34 R0 K18 ["Src"]
      173 GETTABLEKS                       R33 R34 K41 ["Components"]
      175 GETTABLEKS                       R32 R33 K45 ["AssetConfiguration"]
      177 GETIMPORT                        R33 K10 [require]
      179 GETTABLEKS                       R34 R32 K46 ["ConfigSectionWrapper"]
      181 CALL                             R33 1 1
      182 GETIMPORT                        R34 K10 [require]
      184 GETTABLEKS                       R35 R32 K47 ["UGCBundleValidation"]
      186 CALL                             R34 1 1
      187 GETIMPORT                        R35 K10 [require]
      189 GETTABLEKS                       R36 R32 K48 ["ValidationStatus"]
      191 CALL                             R35 1 1
      192 GETIMPORT                        R36 K10 [require]
      194 GETTABLEKS                       R37 R11 K49 ["AssetConfigConstants"]
      196 CALL                             R36 1 1
      197 GETIMPORT                        R37 K10 [require]
      199 GETTABLEKS                       R38 R32 K50 ["DataConsentToggle"]
      201 CALL                             R37 1 1
      202 GETIMPORT                        R38 K5 [game]
      204 LOADK                            R40 K51 ["BodyFirstInAssetsCategory"]
      205 LOADB                            R41 0
      206 NAMECALL                         R38 R38 K52 ["DefineFastFlag"]
      208 CALL                             R38 3 0
      209 GETIMPORT                        R38 K5 [game]
      211 LOADK                            R40 K53 ["DisableSubmitButtonForValidationInInit"]
      212 LOADB                            R41 0
      213 NAMECALL                         R38 R38 K52 ["DefineFastFlag"]
      215 CALL                             R38 3 1
      216 GETIMPORT                        R39 K10 [require]
      218 GETTABLEKS                       R41 R11 K27 ["SharedFlags"]
      220 GETTABLEKS                       R40 R41 K54 ["getFFlagEnableUGCUploadFlowAnalytics"]
      222 CALL                             R39 1 1
      223 GETIMPORT                        R40 K10 [require]
      225 GETTABLEKS                       R42 R11 K27 ["SharedFlags"]
      227 GETTABLEKS                       R41 R42 K55 ["getFFlagEnableUGCBundleUploadBodyScale"]
      229 CALL                             R40 1 1
      230 GETIMPORT                        R41 K10 [require]
      232 GETTABLEKS                       R44 R0 K18 ["Src"]
      234 GETTABLEKS                       R43 R44 K56 ["Flags"]
      236 GETTABLEKS                       R42 R43 K57 ["getFFlagRequireBodyColorsForBodyUpload"]
      238 CALL                             R41 1 1
      239 GETIMPORT                        R42 K10 [require]
      241 GETTABLEKS                       R44 R11 K27 ["SharedFlags"]
      243 GETTABLEKS                       R43 R44 K58 ["getFFlagEnableUGCForAllChecks"]
      245 CALL                             R42 1 1
      246 GETIMPORT                        R43 K10 [require]
      248 GETTABLEKS                       R46 R0 K18 ["Src"]
      250 GETTABLEKS                       R45 R46 K56 ["Flags"]
      252 GETTABLEKS                       R44 R45 K59 ["getFFlagEnableUploadingShoes"]
      254 CALL                             R43 1 1
      255 GETIMPORT                        R44 K10 [require]
      257 GETTABLEKS                       R47 R0 K18 ["Src"]
      259 GETTABLEKS                       R46 R47 K56 ["Flags"]
      261 GETTABLEKS                       R45 R46 K60 ["getFFlagToolboxErrorMessageBoxResizable"]
      263 CALL                             R44 1 1
      264 GETIMPORT                        R45 K10 [require]
      266 GETTABLEKS                       R48 R0 K18 ["Src"]
      268 GETTABLEKS                       R47 R48 K56 ["Flags"]
      270 GETTABLEKS                       R46 R47 K61 ["getFFlagFixEmoteWarningSize"]
      272 CALL                             R45 1 1
      273 GETIMPORT                        R46 K10 [require]
      275 GETTABLEKS                       R49 R0 K18 ["Src"]
      277 GETTABLEKS                       R48 R49 K56 ["Flags"]
      279 GETTABLEKS                       R47 R48 K62 ["getFStringAssetsToBypassValidation"]
      281 CALL                             R46 1 1
      282 GETIMPORT                        R47 K10 [require]
      284 GETTABLEKS                       R50 R0 K18 ["Src"]
      286 GETTABLEKS                       R49 R50 K56 ["Flags"]
      288 GETTABLEKS                       R48 R49 K63 ["getFFlagAssetBypassValidation"]
      290 CALL                             R47 1 1
      291 GETIMPORT                        R48 K5 [game]
      293 LOADK                            R50 K64 ["ToolboxConfigAssetTypeAgeIDVerificationLink"]
      294 LOADK                            R51 K65 ["https://en.help.roblox.com/hc/en-us/articles/4407282410644-Age-ID-Verification"]
      295 NAMECALL                         R48 R48 K66 ["DefineFastString"]
      297 CALL                             R48 3 1
      298 GETIMPORT                        R49 K5 [game]
      300 LOADK                            R51 K67 ["ToolboxConfigAssetTypePremiumLink"]
      301 LOADK                            R52 K68 ["https://www.roblox.com/premium/membership"]
      302 NAMECALL                         R49 R49 K66 ["DefineFastString"]
      304 CALL                             R49 3 1
      305 GETIMPORT                        R50 K5 [game]
      307 LOADK                            R52 K69 ["ToolboxFixUGCBundleValidationCryoThingy1"]
      308 LOADB                            R53 0
      309 NAMECALL                         R50 R50 K52 ["DefineFastFlag"]
      311 CALL                             R50 3 1
      312 GETIMPORT                        R51 K5 [game]
      314 LOADK                            R53 K70 ["ToolboxShowAnimationAssetSelection"]
      315 LOADB                            R54 0
      316 NAMECALL                         R51 R51 K52 ["DefineFastFlag"]
      318 CALL                             R51 3 1
      319 GETIMPORT                        R52 K5 [game]
      321 LOADK                            R54 K71 ["ToolboxRemoveRestrictedAssetWarning2"]
      322 NAMECALL                         R52 R52 K72 ["GetFastFlag"]
      324 CALL                             R52 2 1
      325 GETIMPORT                        R53 K10 [require]
      327 GETTABLEKS                       R56 R0 K18 ["Src"]
      329 GETTABLEKS                       R55 R56 K56 ["Flags"]
      331 GETTABLEKS                       R54 R55 K73 ["getFFlagEnableUploadingEmote"]
      333 CALL                             R53 1 1
      334 GETTABLEKS                       R54 R5 K74 ["PureComponent"]
      336 LOADK                            R56 K75 ["ConfigAssetType"]
      337 NAMECALL                         R54 R54 K76 ["extend"]
      339 CALL                             R54 2 1
      340 MOVE                             R56 R42
      341 CALL                             R56 0 1
      342 JUMPIFNOT                        R56 ; [+2]
      343 LOADN                            R55 10
      344 JUMP                             ; [+1]
      345 LOADN                            R55 0
      346 MOVE                             R57 R42
      347 CALL                             R57 0 1
      348 JUMPIFNOT                        R57 ; [+2]
      349 LOADN                            R56 72
      350 JUMP                             ; [+1]
      351 LOADN                            R56 24
      352 NEWTABLE                         R57 0 0
      354 GETIMPORT                        R58 K5 [game]
      356 LOADK                            R60 K51 ["BodyFirstInAssetsCategory"]
      357 NAMECALL                         R58 R58 K72 ["GetFastFlag"]
      359 CALL                             R58 2 1
      360 JUMPIFNOT                        R58 ; [+22]
      361 NEWTABLE                         R58 0 3
      363 GETTABLEKS                       R60 R36 K77 ["UGCBundleTypes"]
      365 GETTABLEKS                       R59 R60 K78 ["Body"]
      367 GETTABLEKS                       R61 R36 K77 ["UGCBundleTypes"]
      369 GETTABLEKS                       R60 R61 K79 ["DynamicHead"]
      371 MOVE                             R62 R43
      372 CALL                             R62 0 1
      373 JUMPIFNOT                        R62 ; [+5]
      374 GETTABLEKS                       R62 R36 K77 ["UGCBundleTypes"]
      376 GETTABLEKS                       R61 R62 K80 ["Shoes"]
      378 JUMP                             ; [+1]
      379 LOADNIL                          R61
      380 SETLIST                          R58 R59 3 [1]
      382 MOVE                             R57 R58
      383 DUPCLOSURE                       R58 K81 [PROTO_0]
      384 CAPTURE                          VAL R13
      385 DUPCLOSURE                       R59 K82 [PROTO_14]
      386 CAPTURE                          VAL R39
      387 CAPTURE                          VAL R13
      388 CAPTURE                          VAL R16
      389 CAPTURE                          VAL R36
      390 CAPTURE                          VAL R12
      391 CAPTURE                          VAL R38
      392 SETTABLEKS                       R59 R54 K83 ["init"]
      394 DUPCLOSURE                       R59 K84 [PROTO_15]
      395 SETTABLEKS                       R59 R54 K85 ["getAvatarItemCategoryErrorsPrimaryText"]
      397 DUPCLOSURE                       R59 K86 [PROTO_16]
      398 SETTABLEKS                       R59 R54 K87 ["getAvatarItemCategoryErrors"]
      400 DUPCLOSURE                       R59 K88 [PROTO_17]
      401 SETTABLEKS                       R59 R54 K89 ["selectedRadioButtonKeyFor"]
      403 DUPCLOSURE                       R59 K90 [PROTO_18]
      404 SETTABLEKS                       R59 R54 K91 ["isAvatarItemCategorySelected"]
      406 DUPCLOSURE                       R59 K92 [PROTO_22]
      407 CAPTURE                          VAL R3
      408 CAPTURE                          VAL R42
      409 CAPTURE                          VAL R13
      410 CAPTURE                          VAL R36
      411 SETTABLEKS                       R59 R54 K93 ["onAssetTypeChanged"]
      413 DUPCLOSURE                       R59 K94 [PROTO_24]
      414 CAPTURE                          VAL R36
      415 CAPTURE                          VAL R3
      416 SETTABLEKS                       R59 R54 K95 ["resetValidation"]
      418 DUPCLOSURE                       R59 K96 [PROTO_25]
      419 SETTABLEKS                       R59 R54 K97 ["cancelValidationTasks"]
      421 DUPCLOSURE                       R59 K98 [PROTO_26]
      422 SETTABLEKS                       R59 R54 K99 ["getErrorMessageWithCount"]
      424 DUPCLOSURE                       R59 K100 [PROTO_27]
      425 CAPTURE                          VAL R36
      426 SETTABLEKS                       R59 R54 K101 ["getValidationStatusMessage"]
      428 DUPCLOSURE                       R59 K102 [PROTO_28]
      429 CAPTURE                          VAL R36
      430 SETTABLEKS                       R59 R54 K103 ["getValidationStatusColor"]
      432 DUPCLOSURE                       R59 K104 [PROTO_29]
      433 SETTABLEKS                       R59 R54 K105 ["getAssetCategoryIndex"]
      435 NEWCLOSURE                       R59 P13
      436 CAPTURE                          VAL R13
      437 CAPTURE                          REF R57
      438 CAPTURE                          VAL R19
      439 CAPTURE                          VAL R20
      440 SETTABLEKS                       R59 R54 K106 ["getDropdownItemsFor"]
      442 DUPCLOSURE                       R59 K107 [PROTO_32]
      443 SETTABLEKS                       R59 R54 K108 ["getDropdownItems"]
      445 DUPCLOSURE                       R59 K109 [PROTO_33]
      446 CAPTURE                          VAL R13
      447 CAPTURE                          VAL R21
      448 CAPTURE                          VAL R5
      449 CAPTURE                          VAL R25
      450 CAPTURE                          VAL R15
      451 CAPTURE                          VAL R20
      452 SETTABLEKS                       R59 R54 K110 ["getMissingOptionalPartsMessage"]
      454 DUPCLOSURE                       R59 K111 [PROTO_34]
      455 CAPTURE                          VAL R13
      456 CAPTURE                          VAL R21
      457 CAPTURE                          VAL R5
      458 CAPTURE                          VAL R25
      459 CAPTURE                          VAL R15
      460 SETTABLEKS                       R59 R54 K112 ["getUnknownMeshPartMessage"]
      462 MOVE                             R59 R42
      463 CALL                             R59 0 1
      464 JUMPIFNOT                        R59 ; [+7]
      465 DUPCLOSURE                       R59 K113 [PROTO_37]
      466 CAPTURE                          VAL R1
      467 CAPTURE                          VAL R48
      468 CAPTURE                          VAL R49
      469 CAPTURE                          VAL R52
      470 SETTABLEKS                       R59 R54 K114 ["getUgcRestrictionsWarningText"]
      472 DUPCLOSURE                       R59 K115 [PROTO_41]
      473 CAPTURE                          VAL R36
      474 CAPTURE                          VAL R13
      475 CAPTURE                          VAL R14
      476 CAPTURE                          VAL R47
      477 CAPTURE                          VAL R46
      478 CAPTURE                          VAL R7
      479 SETTABLEKS                       R59 R54 K116 ["didUpdate"]
      481 DUPCLOSURE                       R59 K117 [PROTO_42]
      482 SETTABLEKS                       R59 R54 K118 ["willUnmount"]
      484 DUPCLOSURE                       R59 K119 [PROTO_44]
      485 CAPTURE                          VAL R21
      486 CAPTURE                          VAL R36
      487 CAPTURE                          VAL R15
      488 CAPTURE                          VAL R42
      489 CAPTURE                          VAL R52
      490 CAPTURE                          VAL R53
      491 CAPTURE                          VAL R51
      492 CAPTURE                          VAL R5
      493 CAPTURE                          VAL R23
      494 CAPTURE                          VAL R30
      495 CAPTURE                          VAL R44
      496 CAPTURE                          VAL R33
      497 CAPTURE                          VAL R24
      498 CAPTURE                          VAL R56
      499 CAPTURE                          VAL R55
      500 CAPTURE                          VAL R17
      501 CAPTURE                          VAL R26
      502 CAPTURE                          VAL R29
      503 CAPTURE                          VAL R25
      504 CAPTURE                          VAL R45
      505 SETTABLEKS                       R59 R54 K120 ["render"]
      507 DUPCLOSURE                       R59 K121 [PROTO_45]
      508 DUPCLOSURE                       R60 K122 [PROTO_48]
      509 CAPTURE                          VAL R27
      510 CAPTURE                          VAL R28
      511 MOVE                             R61 R9
      512 DUPTABLE                         R62 K124 [{"Stylizer", "Localization"}]
      513 GETTABLEKS                       R63 R8 K123 ["Stylizer"]
      515 SETTABLEKS                       R63 R62 K123 ["Stylizer"]
      517 GETTABLEKS                       R63 R8 K30 ["Localization"]
      519 SETTABLEKS                       R63 R62 K30 ["Localization"]
      521 CALL                             R61 1 1
      522 MOVE                             R62 R54
      523 CALL                             R61 1 1
      524 MOVE                             R54 R61
      525 GETTABLEKS                       R61 R6 K125 ["connect"]
      527 MOVE                             R62 R59
      528 MOVE                             R63 R60
      529 CALL                             R61 2 1
      530 MOVE                             R62 R54
      531 CALL                             R61 1 -1
      532 CLOSEUPVALS                      R57
      533 RETURN                           R61 -1
