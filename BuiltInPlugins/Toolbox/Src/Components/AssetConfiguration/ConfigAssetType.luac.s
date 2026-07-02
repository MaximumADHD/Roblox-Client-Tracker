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
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_6]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R0 K2 [{[1] = False}]
        1 RETURN                           R0 1

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
        9 DUPTABLE                         R4 K13 [{["currentSelectedRadioButtonKey"], ["currentAssetType"], ["dropdownAvatarCategoryIndex"], ["dropdownDevelopmentCategoryIndex"], ["validationState"], ["validationFailureReasons"], ["displayValidationErrorMessages"] = False, ["displayAssetSelection"] = }]
       10 SETTABLEKS                       R2 R4 K3 ["currentSelectedRadioButtonKey"]
       12 GETTABLEKS                       R5 R1 K1 ["assetTypeEnum"]
       14 SETTABLEKS                       R5 R4 K4 ["currentAssetType"]
       16 JUMPIFNOTEQKS                    R2 K14 ["AvatarItem"] ; [+3]
       18 MOVE                             R5 R3
       19 JUMP                             ; [+1]
       20 LOADN                            R5 0
       21 SETTABLEKS                       R5 R4 K5 ["dropdownAvatarCategoryIndex"]
       23 JUMPIFNOTEQKS                    R2 K15 ["DevelopmentItem"] ; [+3]
       25 MOVE                             R5 R3
       26 JUMP                             ; [+1]
       27 LOADN                            R5 0
       28 SETTABLEKS                       R5 R4 K6 ["dropdownDevelopmentCategoryIndex"]
       30 GETTABLEKS                       R5 R1 K7 ["validationState"]
       32 SETTABLEKS                       R5 R4 K7 ["validationState"]
       34 GETTABLEKS                       R5 R1 K8 ["validationFailureReasons"]
       36 SETTABLEKS                       R5 R4 K8 ["validationFailureReasons"]
       38 SETTABLEKS                       R4 R0 K16 ["state"]
       40 NEWCLOSURE                       R4 P0
       41 CAPTURE                          VAL R0
       42 SETTABLEKS                       R4 R0 K17 ["setAssetCategoryIndex"]
       44 NEWCLOSURE                       R4 P1
       45 CAPTURE                          VAL R0
       46 SETTABLEKS                       R4 R0 K18 ["onRadioButtonClicked"]
       48 NEWCLOSURE                       R4 P2
       49 CAPTURE                          VAL R0
       50 SETTABLEKS                       R4 R0 K19 ["openValidationErrorMessageBox"]
       52 NEWCLOSURE                       R4 P3
       53 CAPTURE                          VAL R0
       54 SETTABLEKS                       R4 R0 K20 ["onValidationErrorMessageBoxClosed"]
       56 NEWCLOSURE                       R4 P4
       57 CAPTURE                          VAL R0
       58 CAPTURE                          UPVAL U0
       59 CAPTURE                          UPVAL U1
       60 CAPTURE                          UPVAL U2
       61 CAPTURE                          UPVAL U3
       62 CAPTURE                          UPVAL U4
       63 SETTABLEKS                       R4 R0 K21 ["validationCallback"]
       65 GETTABLEKS                       R4 R1 K1 ["assetTypeEnum"]
       67 JUMPIFEQKNIL                     R4 ; [+47]
       69 GETTABLEKS                       R5 R1 K1 ["assetTypeEnum"]
       71 GETUPVAL                         R6 1
       72 GETTABLEKS                       R6 R6 K22 ["isCatalogAsset"]
       74 MOVE                             R7 R5
       75 CALL                             R6 1 1
       76 MOVE                             R4 R6
       77 JUMPIF                           R4 ; [+6]
       78 GETUPVAL                         R6 1
       79 GETTABLEKS                       R6 R6 K23 ["isUGCBundleType"]
       81 MOVE                             R7 R5
       82 CALL                             R6 1 1
       83 MOVE                             R4 R6
       84 JUMPIFNOT                        R4 ; [+30]
       85 GETUPVAL                         R4 5
       86 JUMPIFNOT                        R4 ; [+7]
       87 GETTABLEKS                       R4 R1 K24 ["onAssetValidationResultChanged"]
       89 JUMPIFNOT                        R4 ; [+4]
       90 GETTABLEKS                       R4 R1 K24 ["onAssetValidationResultChanged"]
       92 LOADB                            R5 0
       93 CALL                             R4 1 0
       94 GETTABLEKS                       R4 R1 K25 ["setValidationState"]
       96 JUMPIFNOT                        R4 ; [+7]
       97 GETIMPORT                        R4 K28 [task.defer]
       99 NEWCLOSURE                       R5 P5
      100 CAPTURE                          VAL R1
      101 CAPTURE                          UPVAL U3
      102 CALL                             R4 1 0
      103 RETURN                           R0 0
      104 DUPTABLE                         R6 K29 [{"validationState"}]
      105 GETUPVAL                         R7 3
      106 GETTABLEKS                       R7 R7 K30 ["VALIDATION_STATE"]
      108 GETTABLEKS                       R7 R7 K31 ["BEGIN"]
      110 SETTABLEKS                       R7 R6 K7 ["validationState"]
      112 NAMECALL                         R4 R0 K32 ["setState"]
      114 CALL                             R4 2 0
      115 RETURN                           R0 0

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
        4 JUMPIFNOTEQKS                    R1 K1 ["AvatarItem"] ; [+89]
        6 GETTABLEKS                       R5 R3 K2 ["allowedBundleTypeSettings"]
        8 JUMPIFEQKNIL                     R5 ; [+52]
       10 GETTABLEKS                       R5 R3 K2 ["allowedBundleTypeSettings"]
       12 MOVE                             R6 R5
       13 LOADNIL                          R7
       14 LOADNIL                          R8
       15 FORGPREP                         R6
       16 GETUPVAL                         R11 0
       17 CALL                             R11 0 1
       18 JUMPIF                           R11 ; [+2]
       19 JUMPIFEQKS                       R9 K3 ["AvatarAnimations"] ; [+26]
       21 GETUPVAL                         R11 1
       22 GETTABLEKS                       R11 R11 K4 ["getUGCBundleTypeFromString"]
       24 MOVE                             R12 R9
       25 CALL                             R11 1 1
       26 DUPTABLE                         R14 K9 [{["name"], ["selectable"] = True, ["type"]}]
       27 JUMPIFNOT                        R2 ; [+7]
       28 GETUPVAL                         R15 1
       29 GETTABLEKS                       R15 R15 K10 ["getLocalizedUGCBundleName"]
       31 MOVE                             R16 R11
       32 MOVE                             R17 R2
       33 CALL                             R15 2 1
       34 JUMP                             ; [+1]
       35 LOADK                            R15 K11 [""]
       36 SETTABLEKS                       R15 R14 K5 ["name"]
       38 SETTABLEKS                       R11 R14 K8 ["type"]
       40 FASTCALL2                        TABLE_INSERT R4 R14 ; [+4]
       42 MOVE                             R13 R4
       43 GETIMPORT                        R12 K14 [table.insert]
       45 CALL                             R12 2 0
       46 FORGLOOP                         R6 1 ; [-31]
       48 GETIMPORT                        R6 K16 [game]
       50 LOADK                            R8 K17 ["BodyFirstInAssetsCategory"]
       51 NAMECALL                         R6 R6 K18 ["GetFastFlag"]
       53 CALL                             R6 2 1
       54 JUMPIFNOT                        R6 ; [+6]
       55 GETIMPORT                        R6 K20 [table.sort]
       57 MOVE                             R7 R4
       58 NEWCLOSURE                       R8 P0
       59 CAPTURE                          UPVAL U2
       60 CALL                             R6 2 0
       61 GETUPVAL                         R5 3
       62 GETTABLEKS                       R6 R3 K21 ["allowedAssetTypesForRelease"]
       64 CALL                             R5 1 1
       65 LENGTH                           R6 R5
       66 LOADN                            R7 0
       67 JUMPIFNOTLT                      R7 R6 ; [+68]
       69 MOVE                             R6 R5
       70 LOADNIL                          R7
       71 LOADNIL                          R8
       72 FORGPREP                         R6
       73 JUMPIFNOT                        R2 ; [+5]
       74 GETUPVAL                         R12 4
       75 MOVE                             R13 R2
       76 CALL                             R12 1 1
       77 GETTABLE                         R11 R12 R10
       78 JUMP                             ; [+1]
       79 LOADK                            R11 K11 [""]
       80 DUPTABLE                         R14 K9 [{["name"], ["selectable"] = True, ["type"]}]
       81 SETTABLEKS                       R11 R14 K5 ["name"]
       83 SETTABLEKS                       R10 R14 K8 ["type"]
       85 FASTCALL2                        TABLE_INSERT R4 R14 ; [+4]
       87 MOVE                             R13 R4
       88 GETIMPORT                        R12 K14 [table.insert]
       90 CALL                             R12 2 0
       91 FORGLOOP                         R6 2 ; [-19]
       93 RETURN                           R4 1
       94 JUMPIFNOT                        R2 ; [+6]
       95 LOADK                            R7 K22 ["General"]
       96 LOADK                            R8 K23 ["AssetTypeModel"]
       97 NAMECALL                         R5 R2 K24 ["getText"]
       99 CALL                             R5 3 1
      100 JUMP                             ; [+1]
      101 LOADK                            R5 K11 [""]
      102 JUMPIFNOT                        R2 ; [+6]
      103 LOADK                            R8 K22 ["General"]
      104 LOADK                            R9 K25 ["AssetTypeAnimation"]
      105 NAMECALL                         R6 R2 K24 ["getText"]
      107 CALL                             R6 3 1
      108 JUMP                             ; [+1]
      109 LOADK                            R6 K11 [""]
      110 DUPTABLE                         R9 K9 [{["name"], ["selectable"] = True, ["type"]}]
      111 SETTABLEKS                       R5 R9 K5 ["name"]
      113 GETIMPORT                        R10 K29 [Enum.AssetType.Model]
      115 SETTABLEKS                       R10 R9 K8 ["type"]
      117 FASTCALL2                        TABLE_INSERT R4 R9 ; [+4]
      119 MOVE                             R8 R4
      120 GETIMPORT                        R7 K14 [table.insert]
      122 CALL                             R7 2 0
      123 DUPTABLE                         R9 K9 [{["name"], ["selectable"] = True, ["type"]}]
      124 SETTABLEKS                       R6 R9 K5 ["name"]
      126 GETIMPORT                        R10 K31 [Enum.AssetType.Animation]
      128 SETTABLEKS                       R10 R9 K8 ["type"]
      130 FASTCALL2                        TABLE_INSERT R4 R9 ; [+4]
      132 MOVE                             R8 R4
      133 GETIMPORT                        R7 K14 [table.insert]
      135 CALL                             R7 2 0
      136 RETURN                           R4 1

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
       34 DUPTABLE                         R11 K18 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Font"], ["LayoutOrder"], ["Size"], ["Text"], ["TextColor"], ["TextSize"], ["TextWrapped"] = True, ["TextXAlignment"], ["TextYAlignment"]}]
       35 GETIMPORT                        R12 K21 [Enum.AutomaticSize.Y]
       37 SETTABLEKS                       R12 R11 K5 ["AutomaticSize"]
       39 GETUPVAL                         R12 4
       40 GETTABLEKS                       R12 R12 K22 ["FONT"]
       42 SETTABLEKS                       R12 R11 K8 ["Font"]
       44 NAMECALL                         R12 R8 K23 ["getNextOrder"]
       46 CALL                             R12 1 1
       47 SETTABLEKS                       R12 R11 K9 ["LayoutOrder"]
       49 GETIMPORT                        R12 K26 [UDim2.fromScale]
       51 LOADN                            R13 1
       52 LOADN                            R14 0
       53 CALL                             R12 2 1
       54 SETTABLEKS                       R12 R11 K10 ["Size"]
       56 GETTABLEKS                       R12 R5 K27 ["Localization"]
       58 LOADK                            R14 K28 ["AssetConfig"]
       59 LOADK                            R15 K29 ["UGCMissingOptionalPartsMessage"]
       60 NAMECALL                         R12 R12 K30 ["getText"]
       62 CALL                             R12 3 1
       63 SETTABLEKS                       R12 R11 K11 ["Text"]
       65 GETTABLEKS                       R12 R4 K31 ["assetConfig"]
       67 GETTABLEKS                       R12 R12 K32 ["labelTextColor"]
       69 SETTABLEKS                       R12 R11 K12 ["TextColor"]
       71 GETUPVAL                         R12 4
       72 GETTABLEKS                       R12 R12 K33 ["FONT_SIZE_TITLE"]
       74 SETTABLEKS                       R12 R11 K13 ["TextSize"]
       76 GETIMPORT                        R12 K35 [Enum.TextXAlignment.Left]
       78 SETTABLEKS                       R12 R11 K16 ["TextXAlignment"]
       80 GETIMPORT                        R12 K37 [Enum.TextYAlignment.Center]
       82 SETTABLEKS                       R12 R11 K17 ["TextYAlignment"]
       84 CALL                             R9 2 1
       85 SETTABLEKS                       R9 R7 K38 ["OptionalPartsMessage"]
       87 MOVE                             R9 R6
       88 LOADNIL                          R10
       89 LOADNIL                          R11
       90 FORGPREP                         R9
       91 GETUPVAL                         R15 5
       92 GETTABLEKS                       R16 R5 K27 ["Localization"]
       94 CALL                             R15 1 1
       95 GETTABLE                         R14 R15 R13
       96 JUMPIFEQKNIL                     R14 ; [+52]
       98 GETTABLEKS                       R15 R13 K39 ["Name"]
      100 GETUPVAL                         R16 2
      101 GETTABLEKS                       R16 R16 K4 ["createElement"]
      103 GETUPVAL                         R17 3
      104 DUPTABLE                         R18 K18 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Font"], ["LayoutOrder"], ["Size"], ["Text"], ["TextColor"], ["TextSize"], ["TextWrapped"] = True, ["TextXAlignment"], ["TextYAlignment"]}]
      105 GETIMPORT                        R19 K21 [Enum.AutomaticSize.Y]
      107 SETTABLEKS                       R19 R18 K5 ["AutomaticSize"]
      109 GETUPVAL                         R19 4
      110 GETTABLEKS                       R19 R19 K22 ["FONT"]
      112 SETTABLEKS                       R19 R18 K8 ["Font"]
      114 NAMECALL                         R19 R8 K23 ["getNextOrder"]
      116 CALL                             R19 1 1
      117 SETTABLEKS                       R19 R18 K9 ["LayoutOrder"]
      119 GETIMPORT                        R19 K26 [UDim2.fromScale]
      121 LOADN                            R20 1
      122 LOADN                            R21 0
      123 CALL                             R19 2 1
      124 SETTABLEKS                       R19 R18 K10 ["Size"]
      126 SETTABLEKS                       R14 R18 K11 ["Text"]
      128 GETTABLEKS                       R19 R4 K31 ["assetConfig"]
      130 GETTABLEKS                       R19 R19 K32 ["labelTextColor"]
      132 SETTABLEKS                       R19 R18 K12 ["TextColor"]
      134 GETUPVAL                         R19 4
      135 GETTABLEKS                       R19 R19 K33 ["FONT_SIZE_TITLE"]
      137 SETTABLEKS                       R19 R18 K13 ["TextSize"]
      139 GETIMPORT                        R19 K35 [Enum.TextXAlignment.Left]
      141 SETTABLEKS                       R19 R18 K16 ["TextXAlignment"]
      143 GETIMPORT                        R19 K37 [Enum.TextYAlignment.Center]
      145 SETTABLEKS                       R19 R18 K17 ["TextYAlignment"]
      147 CALL                             R16 2 1
      148 SETTABLE                         R16 R7 R15
      149 FORGLOOP                         R9 2 ; [-59]
      151 RETURN                           R7 1

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
       32 DUPTABLE                         R10 K18 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Font"], ["LayoutOrder"], ["Size"], ["Text"], ["TextColor"], ["TextSize"], ["TextWrapped"] = True, ["TextXAlignment"], ["TextYAlignment"]}]
       33 GETIMPORT                        R11 K21 [Enum.AutomaticSize.Y]
       35 SETTABLEKS                       R11 R10 K5 ["AutomaticSize"]
       37 GETUPVAL                         R11 4
       38 GETTABLEKS                       R11 R11 K22 ["FONT"]
       40 SETTABLEKS                       R11 R10 K8 ["Font"]
       42 NAMECALL                         R11 R7 K23 ["getNextOrder"]
       44 CALL                             R11 1 1
       45 SETTABLEKS                       R11 R10 K9 ["LayoutOrder"]
       47 GETIMPORT                        R11 K26 [UDim2.fromScale]
       49 LOADN                            R12 1
       50 LOADN                            R13 0
       51 CALL                             R11 2 1
       52 SETTABLEKS                       R11 R10 K10 ["Size"]
       54 GETTABLEKS                       R11 R4 K27 ["Localization"]
       56 LOADK                            R13 K28 ["AssetConfig"]
       57 LOADK                            R14 K29 ["UGCUnknownMeshPartsMessage"]
       58 NAMECALL                         R11 R11 K30 ["getText"]
       60 CALL                             R11 3 1
       61 SETTABLEKS                       R11 R10 K11 ["Text"]
       63 GETTABLEKS                       R11 R3 K31 ["assetConfig"]
       65 GETTABLEKS                       R11 R11 K32 ["labelTextColor"]
       67 SETTABLEKS                       R11 R10 K12 ["TextColor"]
       69 GETUPVAL                         R11 4
       70 GETTABLEKS                       R11 R11 K33 ["FONT_SIZE_TITLE"]
       72 SETTABLEKS                       R11 R10 K13 ["TextSize"]
       74 GETIMPORT                        R11 K35 [Enum.TextXAlignment.Left]
       76 SETTABLEKS                       R11 R10 K16 ["TextXAlignment"]
       78 GETIMPORT                        R11 K37 [Enum.TextYAlignment.Center]
       80 SETTABLEKS                       R11 R10 K17 ["TextYAlignment"]
       82 CALL                             R8 2 1
       83 SETTABLEKS                       R8 R6 K38 ["OptionalPartsMessage"]
       85 MOVE                             R8 R5
       86 LOADNIL                          R9
       87 LOADNIL                          R10
       88 FORGPREP                         R8
       89 GETUPVAL                         R13 2
       90 GETTABLEKS                       R13 R13 K4 ["createElement"]
       92 GETUPVAL                         R14 3
       93 DUPTABLE                         R15 K18 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Font"], ["LayoutOrder"], ["Size"], ["Text"], ["TextColor"], ["TextSize"], ["TextWrapped"] = True, ["TextXAlignment"], ["TextYAlignment"]}]
       94 GETIMPORT                        R16 K21 [Enum.AutomaticSize.Y]
       96 SETTABLEKS                       R16 R15 K5 ["AutomaticSize"]
       98 GETUPVAL                         R16 4
       99 GETTABLEKS                       R16 R16 K22 ["FONT"]
      101 SETTABLEKS                       R16 R15 K8 ["Font"]
      103 NAMECALL                         R16 R7 K23 ["getNextOrder"]
      105 CALL                             R16 1 1
      106 SETTABLEKS                       R16 R15 K9 ["LayoutOrder"]
      108 GETIMPORT                        R16 K26 [UDim2.fromScale]
      110 LOADN                            R17 1
      111 LOADN                            R18 0
      112 CALL                             R16 2 1
      113 SETTABLEKS                       R16 R15 K10 ["Size"]
      115 SETTABLEKS                       R12 R15 K11 ["Text"]
      117 GETTABLEKS                       R16 R3 K31 ["assetConfig"]
      119 GETTABLEKS                       R16 R16 K32 ["labelTextColor"]
      121 SETTABLEKS                       R16 R15 K12 ["TextColor"]
      123 GETUPVAL                         R16 4
      124 GETTABLEKS                       R16 R16 K33 ["FONT_SIZE_TITLE"]
      126 SETTABLEKS                       R16 R15 K13 ["TextSize"]
      128 GETIMPORT                        R16 K35 [Enum.TextXAlignment.Left]
      130 SETTABLEKS                       R16 R15 K16 ["TextXAlignment"]
      132 GETIMPORT                        R16 K37 [Enum.TextYAlignment.Center]
      134 SETTABLEKS                       R16 R15 K17 ["TextYAlignment"]
      136 CALL                             R13 2 1
      137 SETTABLE                         R13 R6 R12
      138 FORGLOOP                         R8 2 ; [-50]
      140 RETURN                           R6 1

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
       57 JUMPIFNOT                        R4 ; [+43]
       58 GETUPVAL                         R5 4
       59 GETTABLEKS                       R5 R5 K14 ["isFolderStructureEnabled"]
       61 JUMPIFNOT                        R5 ; [+39]
       62 GETUPVAL                         R5 4
       63 GETTABLEKS                       R5 R5 K14 ["isFolderStructureEnabled"]
       65 CALL                             R5 0 1
       66 JUMPIFNOT                        R5 ; [+34]
       67 GETUPVAL                         R5 4
       68 GETTABLEKS                       R5 R5 K15 ["ValidateAsset"]
       70 MOVE                             R6 R0
       71 GETUPVAL                         R7 5
       72 GETTABLEKS                       R7 R7 K13 ["instances"]
       74 CALL                             R6 1 1
       75 GETUPVAL                         R7 3
       76 GETTABLEKS                       R7 R7 K10 ["currentAssetType"]
       78 DUPTABLE                         R8 K20 [{["source"] = "Toolbox", ["enforceR15FolderStructure"] = False}]
       79 CALL                             R5 3 1
       80 GETUPVAL                         R6 4
       81 GETTABLEKS                       R6 R6 K21 ["isEntrypointMergingEnabled"]
       83 JUMPIFNOT                        R6 ; [+17]
       84 GETUPVAL                         R6 4
       85 GETTABLEKS                       R6 R6 K21 ["isEntrypointMergingEnabled"]
       87 CALL                             R6 0 1
       88 JUMPIFNOT                        R6 ; [+12]
       89 GETUPVAL                         R6 4
       90 GETTABLEKS                       R6 R6 K22 ["combineResultsIntoLegacy"]
       92 MOVE                             R7 R1
       93 MOVE                             R8 R2
       94 MOVE                             R9 R5
       95 NEWCLOSURE                       R10 P1
       96 CAPTURE                          UPVAL U6
       97 CAPTURE                          UPVAL U5
       98 CALL                             R6 4 2
       99 MOVE                             R1 R6
      100 MOVE                             R2 R7
      101 GETUPVAL                         R5 7
      102 GETTABLEKS                       R5 R5 K23 ["validationCallback"]
      104 MOVE                             R6 R1
      105 MOVE                             R7 R2
      106 CALL                             R5 2 0
      107 RETURN                           R0 0

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
      134 DUPTABLE                         R29 K47 [{["AutomaticSize"], ["BackgroundColor3"], ["BackgroundTransparency"] = 1, ["HorizontalAlignment"], ["Layout"], ["LayoutOrder"], ["Padding"], ["Spacing"] = 30, ["VerticalAlignment"]}]
      135 GETIMPORT                        R30 K49 [Enum.AutomaticSize.XY]
      137 SETTABLEKS                       R30 R29 K36 ["AutomaticSize"]
      139 GETTABLEKS                       R30 R4 K50 ["typeSelection"]
      141 GETTABLEKS                       R30 R30 K51 ["background"]
      143 SETTABLEKS                       R30 R29 K37 ["BackgroundColor3"]
      145 GETIMPORT                        R30 K53 [Enum.HorizontalAlignment.Left]
      147 SETTABLEKS                       R30 R29 K40 ["HorizontalAlignment"]
      149 GETIMPORT                        R30 K56 [Enum.FillDirection.Vertical]
      151 SETTABLEKS                       R30 R29 K41 ["Layout"]
      153 GETTABLEKS                       R30 R1 K42 ["LayoutOrder"]
      155 SETTABLEKS                       R30 R29 K42 ["LayoutOrder"]
      157 DUPTABLE                         R30 K59 [{["Bottom"] = 32}]
      158 SETTABLEKS                       R30 R29 K43 ["Padding"]
      160 GETIMPORT                        R30 K61 [Enum.VerticalAlignment.Top]
      162 SETTABLEKS                       R30 R29 K46 ["VerticalAlignment"]
      164 DUPTABLE                         R30 K65 [{"ValidationErrorMessageBox", "ContentTypeRadioButtons", "AssetCategoryDropDown", "EmoteAnimationWarning"}]
      165 JUMPIFNOT                        R23 ; [+44]
      166 GETUPVAL                         R31 5
      167 GETTABLEKS                       R31 R31 K35 ["createElement"]
      169 GETUPVAL                         R32 7
      170 DUPTABLE                         R33 K79 [{["buttons"], ["Icon"] = "rbxasset://textures/ui/ErrorIcon.png", ["InformativeText"], ["onButtonClicked"], ["onClose"], ["Text"], ["Title"], ["isScrollable"] = True, ["messageBoxHeight"] = 500, ["isResizable"] = True}]
      171 NEWTABLE                         R34 0 1
      173 DUPTABLE                         R35 K84 [{["Text"], ["Font"], ["TextSize"], ["action"] = "yes"}]
      174 SETTABLEKS                       R13 R35 K72 ["Text"]
      176 GETTABLEKS                       R36 R4 K80 ["Font"]
      178 SETTABLEKS                       R36 R35 K80 ["Font"]
      180 GETTABLEKS                       R36 R4 K81 ["TextSize"]
      182 SETTABLEKS                       R36 R35 K81 ["TextSize"]
      184 SETLIST                          R34 R35 1 [1]
      186 SETTABLEKS                       R34 R33 K66 ["buttons"]
      188 NAMECALL                         R34 R0 K85 ["getAvatarItemCategoryErrors"]
      190 CALL                             R34 1 1
      191 SETTABLEKS                       R34 R33 K69 ["InformativeText"]
      193 GETTABLEKS                       R34 R0 K86 ["onValidationErrorMessageBoxClosed"]
      195 SETTABLEKS                       R34 R33 K70 ["onButtonClicked"]
      197 GETTABLEKS                       R34 R0 K86 ["onValidationErrorMessageBoxClosed"]
      199 SETTABLEKS                       R34 R33 K71 ["onClose"]
      201 NAMECALL                         R34 R0 K87 ["getAvatarItemCategoryErrorsPrimaryText"]
      203 CALL                             R34 1 1
      204 SETTABLEKS                       R34 R33 K72 ["Text"]
      206 SETTABLEKS                       R12 R33 K73 ["Title"]
      208 CALL                             R31 2 1
      209 JUMP                             ; [+1]
      210 LOADNIL                          R31
      211 SETTABLEKS                       R31 R30 K62 ["ValidationErrorMessageBox"]
      213 JUMPIFNOT                        R26 ; [+48]
      214 GETUPVAL                         R31 8
      215 GETTABLEKS                       R31 R31 K35 ["createElement"]
      217 GETUPVAL                         R32 9
      218 DUPTABLE                         R33 K101 [{["layoutOrder"], ["contentTypeTitle"], ["currentSelectedRadioButtonKey"], ["onRadioButtonClicked"], ["radioButtonDevelopmentItemText"], ["radioButtonAvatarItemText"], ["warningMessageText"] = , ["warningMessageLinkMap"], ["isModel"], ["modelPublishWarningText"], ["insufficientRobuxWarningText"], ["theme"]}]
      219 NAMECALL                         R34 R5 K102 ["getNextOrder"]
      221 CALL                             R34 1 1
      222 SETTABLEKS                       R34 R33 K88 ["layoutOrder"]
      224 SETTABLEKS                       R14 R33 K89 ["contentTypeTitle"]
      226 GETTABLEKS                       R34 R2 K90 ["currentSelectedRadioButtonKey"]
      228 SETTABLEKS                       R34 R33 K90 ["currentSelectedRadioButtonKey"]
      230 GETTABLEKS                       R34 R0 K91 ["onRadioButtonClicked"]
      232 SETTABLEKS                       R34 R33 K91 ["onRadioButtonClicked"]
      234 GETUPVAL                         R35 10
      235 CALL                             R35 0 1
      236 JUMPIFNOT                        R35 ; [+2]
      237 LOADNIL                          R34
      238 JUMP                             ; [+1]
      239 MOVE                             R34 R15
      240 SETTABLEKS                       R34 R33 K92 ["radioButtonDevelopmentItemText"]
      242 GETUPVAL                         R35 10
      243 CALL                             R35 0 1
      244 JUMPIFNOT                        R35 ; [+2]
      245 LOADNIL                          R34
      246 JUMP                             ; [+1]
      247 MOVE                             R34 R16
      248 SETTABLEKS                       R34 R33 K93 ["radioButtonAvatarItemText"]
      250 SETTABLEKS                       R24 R33 K96 ["warningMessageLinkMap"]
      252 SETTABLEKS                       R10 R33 K97 ["isModel"]
      254 SETTABLEKS                       R18 R33 K98 ["modelPublishWarningText"]
      256 SETTABLEKS                       R22 R33 K99 ["insufficientRobuxWarningText"]
      258 SETTABLEKS                       R4 R33 K100 ["theme"]
      260 CALL                             R31 2 1
      261 JUMP                             ; [+1]
      262 LOADNIL                          R31
      263 SETTABLEKS                       R31 R30 K63 ["ContentTypeRadioButtons"]
      265 JUMPIFNOT                        R26 ; [+278]
      266 GETUPVAL                         R32 10
      267 CALL                             R32 0 1
      268 JUMPIFNOT                        R32 ; [+62]
      269 GETUPVAL                         R31 8
      270 GETTABLEKS                       R31 R31 K35 ["createElement"]
      272 GETUPVAL                         R32 11
      273 DUPTABLE                         R33 K103 [{"LayoutOrder", "Title"}]
      274 NAMECALL                         R34 R5 K102 ["getNextOrder"]
      276 CALL                             R34 1 1
      277 SETTABLEKS                       R34 R33 K42 ["LayoutOrder"]
      279 SETTABLEKS                       R17 R33 K73 ["Title"]
      281 DUPTABLE                         R34 K105 [{"AssetCategoryRow"}]
      282 GETUPVAL                         R35 8
      283 GETTABLEKS                       R35 R35 K35 ["createElement"]
      285 GETUPVAL                         R36 12
      286 DUPTABLE                         R37 K116 [{["dropdownItems"], ["selectedDropDownIndex"], ["onItemClicked"], ["placeholder"], ["dropdownWidth"] = 400, ["showError"], ["validationStatusMessage"], ["validationStatusColor"], ["onErrorClicked"]}]
      287 MOVE                             R40 R3
      288 NAMECALL                         R38 R0 K117 ["getDropdownItems"]
      290 CALL                             R38 2 1
      291 SETTABLEKS                       R38 R37 K106 ["dropdownItems"]
      293 NAMECALL                         R38 R0 K118 ["getAssetCategoryIndex"]
      295 CALL                             R38 1 1
      296 SETTABLEKS                       R38 R37 K107 ["selectedDropDownIndex"]
      298 GETTABLEKS                       R38 R0 K119 ["setAssetCategoryIndex"]
      300 SETTABLEKS                       R38 R37 K108 ["onItemClicked"]
      302 LOADK                            R40 K120 ["Dropdown"]
      303 LOADK                            R41 K121 ["ChooseOne"]
      304 NAMECALL                         R38 R3 K19 ["getText"]
      306 CALL                             R38 3 1
      307 SETTABLEKS                       R38 R37 K109 ["placeholder"]
      309 SETTABLEKS                       R6 R37 K112 ["showError"]
      311 NAMECALL                         R38 R0 K122 ["getValidationStatusMessage"]
      313 CALL                             R38 1 1
      314 SETTABLEKS                       R38 R37 K113 ["validationStatusMessage"]
      316 MOVE                             R40 R4
      317 NAMECALL                         R38 R0 K123 ["getValidationStatusColor"]
      319 CALL                             R38 2 1
      320 SETTABLEKS                       R38 R37 K114 ["validationStatusColor"]
      322 GETTABLEKS                       R38 R0 K124 ["openValidationErrorMessageBox"]
      324 SETTABLEKS                       R38 R37 K115 ["onErrorClicked"]
      326 CALL                             R35 2 1
      327 SETTABLEKS                       R35 R34 K104 ["AssetCategoryRow"]
      329 CALL                             R31 3 1
      330 JUMP                             ; [+214]
      331 GETUPVAL                         R31 5
      332 GETTABLEKS                       R31 R31 K35 ["createElement"]
      334 GETUPVAL                         R32 11
      335 DUPTABLE                         R33 K125 [{"AutomaticSize", "LayoutOrder", "Title"}]
      336 GETIMPORT                        R34 K49 [Enum.AutomaticSize.XY]
      338 SETTABLEKS                       R34 R33 K36 ["AutomaticSize"]
      340 NAMECALL                         R34 R5 K102 ["getNextOrder"]
      342 CALL                             R34 1 1
      343 SETTABLEKS                       R34 R33 K42 ["LayoutOrder"]
      345 SETTABLEKS                       R17 R33 K73 ["Title"]
      347 DUPTABLE                         R34 K129 [{"Dropdown", "ValidationResult", "ErrorIconButton", "ErrorMessageTextButton"}]
      348 GETUPVAL                         R35 5
      349 GETTABLEKS                       R35 R35 K35 ["createElement"]
      351 GETUPVAL                         R36 13
      352 DUPTABLE                         R37 K138 [{["fontSize"] = 20, ["items"], ["onItemClicked"], ["rowHeight"] = 24, ["selectedDropDownIndex"], ["Size"], ["visibleDropDownCount"] = 6}]
      353 MOVE                             R40 R3
      354 NAMECALL                         R38 R0 K117 ["getDropdownItems"]
      356 CALL                             R38 2 1
      357 SETTABLEKS                       R38 R37 K132 ["items"]
      359 GETTABLEKS                       R38 R0 K119 ["setAssetCategoryIndex"]
      361 SETTABLEKS                       R38 R37 K108 ["onItemClicked"]
      363 NAMECALL                         R38 R0 K118 ["getAssetCategoryIndex"]
      365 CALL                             R38 1 1
      366 SETTABLEKS                       R38 R37 K107 ["selectedDropDownIndex"]
      368 GETIMPORT                        R38 K140 [UDim2.new]
      370 LOADN                            R39 0
      371 LOADN                            R40 400
      372 LOADN                            R41 0
      373 LOADN                            R42 40
      374 CALL                             R38 4 1
      375 SETTABLEKS                       R38 R37 K135 ["Size"]
      377 CALL                             R35 2 1
      378 SETTABLEKS                       R35 R34 K120 ["Dropdown"]
      380 JUMPIF                           R6 ; [+41]
      381 GETUPVAL                         R35 5
      382 GETTABLEKS                       R35 R35 K35 ["createElement"]
      384 GETUPVAL                         R36 14
      385 DUPTABLE                         R37 K146 [{["AutomaticSize"], ["Position"], ["Text"], ["TextColor"], ["TextWrapped"] = True, ["TextXAlignment"], ["TextYAlignment"]}]
      386 GETIMPORT                        R38 K49 [Enum.AutomaticSize.XY]
      388 SETTABLEKS                       R38 R37 K36 ["AutomaticSize"]
      390 GETIMPORT                        R38 K140 [UDim2.new]
      392 LOADN                            R39 0
      393 ADDK                             R41 R7 K111 [400]
      394 ADDK                             R40 R41 K147 [16]
      395 LOADN                            R41 0
      396 SUBRK                            R43 K149 [40] R8
      397 DIVK                             R42 R43 K148 [2]
      398 CALL                             R38 4 1
      399 SETTABLEKS                       R38 R37 K141 ["Position"]
      401 NAMECALL                         R38 R0 K122 ["getValidationStatusMessage"]
      403 CALL                             R38 1 1
      404 SETTABLEKS                       R38 R37 K72 ["Text"]
      406 MOVE                             R40 R4
      407 NAMECALL                         R38 R0 K123 ["getValidationStatusColor"]
      409 CALL                             R38 2 1
      410 SETTABLEKS                       R38 R37 K142 ["TextColor"]
      412 GETIMPORT                        R38 K150 [Enum.TextXAlignment.Left]
      414 SETTABLEKS                       R38 R37 K144 ["TextXAlignment"]
      416 GETIMPORT                        R38 K152 [Enum.TextYAlignment.Center]
      418 SETTABLEKS                       R38 R37 K145 ["TextYAlignment"]
      420 CALL                             R35 2 1
      421 JUMP                             ; [+1]
      422 LOADNIL                          R35
      423 SETTABLEKS                       R35 R34 K126 ["ValidationResult"]
      425 JUMPIFNOT                        R6 ; [+47]
      426 GETUPVAL                         R35 5
      427 GETTABLEKS                       R35 R35 K35 ["createElement"]
      429 LOADK                            R36 K153 ["ImageButton"]
      430 NEWTABLE                         R37 8 0
      432 LOADB                            R38 0
      433 SETTABLEKS                       R38 R37 K154 ["AutoButtonColor"]
      435 LOADN                            R38 1
      436 SETTABLEKS                       R38 R37 K38 ["BackgroundTransparency"]
      438 LOADK                            R38 K68 ["rbxasset://textures/ui/ErrorIcon.png"]
      439 SETTABLEKS                       R38 R37 K155 ["Image"]
      441 MOVE                             R40 R4
      442 NAMECALL                         R38 R0 K123 ["getValidationStatusColor"]
      444 CALL                             R38 2 1
      445 SETTABLEKS                       R38 R37 K156 ["ImageColor3"]
      447 GETIMPORT                        R38 K140 [UDim2.new]
      449 LOADN                            R39 0
      450 LOADN                            R40 408
      451 LOADN                            R41 0
      452 LOADN                            R42 8
      453 CALL                             R38 4 1
      454 SETTABLEKS                       R38 R37 K141 ["Position"]
      456 GETIMPORT                        R38 K158 [UDim2.fromOffset]
      458 LOADN                            R39 24
      459 LOADN                            R40 24
      460 CALL                             R38 2 1
      461 SETTABLEKS                       R38 R37 K135 ["Size"]
      463 GETUPVAL                         R38 5
      464 GETTABLEKS                       R38 R38 K159 ["Event"]
      466 GETTABLEKS                       R38 R38 K160 ["Activated"]
      468 GETTABLEKS                       R39 R0 K124 ["openValidationErrorMessageBox"]
      470 SETTABLE                         R39 R37 R38
      471 CALL                             R35 2 1
      472 JUMP                             ; [+1]
      473 LOADNIL                          R35
      474 SETTABLEKS                       R35 R34 K127 ["ErrorIconButton"]
      476 JUMPIFNOT                        R6 ; [+62]
      477 GETUPVAL                         R35 5
      478 GETTABLEKS                       R35 R35 K35 ["createElement"]
      480 LOADK                            R36 K161 ["TextButton"]
      481 NEWTABLE                         R37 16 0
      483 GETIMPORT                        R38 K49 [Enum.AutomaticSize.XY]
      485 SETTABLEKS                       R38 R37 K36 ["AutomaticSize"]
      487 LOADN                            R38 1
      488 SETTABLEKS                       R38 R37 K38 ["BackgroundTransparency"]
      490 GETTABLEKS                       R38 R4 K80 ["Font"]
      492 SETTABLEKS                       R38 R37 K80 ["Font"]
      494 GETIMPORT                        R38 K140 [UDim2.new]
      496 LOADN                            R39 0
      497 ADDK                             R41 R7 K111 [400]
      498 ADDK                             R40 R41 K147 [16]
      499 LOADN                            R41 0
      500 SUBRK                            R43 K149 [40] R8
      501 DIVK                             R42 R43 K148 [2]
      502 CALL                             R38 4 1
      503 SETTABLEKS                       R38 R37 K141 ["Position"]
      505 NAMECALL                         R38 R0 K122 ["getValidationStatusMessage"]
      507 CALL                             R38 1 1
      508 SETTABLEKS                       R38 R37 K72 ["Text"]
      510 MOVE                             R40 R4
      511 NAMECALL                         R38 R0 K123 ["getValidationStatusColor"]
      513 CALL                             R38 2 1
      514 SETTABLEKS                       R38 R37 K162 ["TextColor3"]
      516 GETUPVAL                         R38 2
      517 GETTABLEKS                       R38 R38 K8 ["FONT_SIZE_TITLE"]
      519 SETTABLEKS                       R38 R37 K81 ["TextSize"]
      521 GETIMPORT                        R38 K150 [Enum.TextXAlignment.Left]
      523 SETTABLEKS                       R38 R37 K144 ["TextXAlignment"]
      525 GETIMPORT                        R38 K152 [Enum.TextYAlignment.Center]
      527 SETTABLEKS                       R38 R37 K145 ["TextYAlignment"]
      529 GETUPVAL                         R38 5
      530 GETTABLEKS                       R38 R38 K159 ["Event"]
      532 GETTABLEKS                       R38 R38 K160 ["Activated"]
      534 GETTABLEKS                       R39 R0 K124 ["openValidationErrorMessageBox"]
      536 SETTABLE                         R39 R37 R38
      537 CALL                             R35 2 1
      538 JUMP                             ; [+1]
      539 LOADNIL                          R35
      540 SETTABLEKS                       R35 R34 K128 ["ErrorMessageTextButton"]
      542 CALL                             R31 3 1
      543 JUMP                             ; [+1]
      544 LOADNIL                          R31
      545 SETTABLEKS                       R31 R30 K64 ["AssetCategoryDropDown"]
      547 GETIMPORT                        R32 K164 [Enum.AssetType.EmoteAnimation]
      549 JUMPIFNOTEQ                      R9 R32 ; [+103]
      551 GETUPVAL                         R31 5
      552 GETTABLEKS                       R31 R31 K35 ["createElement"]
      554 GETUPVAL                         R32 6
      555 DUPTABLE                         R33 K166 [{["AutomaticSize"], ["HorizontalAlignment"], ["Layout"], ["LayoutOrder"], ["Size"], ["Spacing"] = 8, ["VerticalAlignment"]}]
      556 GETIMPORT                        R34 K168 [Enum.AutomaticSize.Y]
      558 SETTABLEKS                       R34 R33 K36 ["AutomaticSize"]
      560 GETIMPORT                        R34 K53 [Enum.HorizontalAlignment.Left]
      562 SETTABLEKS                       R34 R33 K40 ["HorizontalAlignment"]
      564 GETIMPORT                        R34 K170 [Enum.FillDirection.Horizontal]
      566 SETTABLEKS                       R34 R33 K41 ["Layout"]
      568 NAMECALL                         R34 R5 K102 ["getNextOrder"]
      570 CALL                             R34 1 1
      571 SETTABLEKS                       R34 R33 K42 ["LayoutOrder"]
      573 GETIMPORT                        R34 K172 [UDim2.fromScale]
      575 LOADN                            R35 1
      576 LOADN                            R36 0
      577 CALL                             R34 2 1
      578 SETTABLEKS                       R34 R33 K135 ["Size"]
      580 GETIMPORT                        R34 K61 [Enum.VerticalAlignment.Top]
      582 SETTABLEKS                       R34 R33 K46 ["VerticalAlignment"]
      584 DUPTABLE                         R34 K174 [{"Icon", "UGCWarningText"}]
      585 GETUPVAL                         R35 5
      586 GETTABLEKS                       R35 R35 K35 ["createElement"]
      588 LOADK                            R36 K175 ["ImageLabel"]
      589 DUPTABLE                         R37 K176 [{["BackgroundTransparency"] = 1, ["Image"], ["ImageColor3"], ["LayoutOrder"] = 1, ["Size"]}]
      590 GETUPVAL                         R38 15
      591 GETTABLEKS                       R38 R38 K177 ["WARNING_ICON"]
      593 SETTABLEKS                       R38 R37 K155 ["Image"]
      595 GETTABLEKS                       R38 R4 K178 ["assetConfig"]
      597 GETTABLEKS                       R38 R38 K179 ["warningColor"]
      599 SETTABLEKS                       R38 R37 K156 ["ImageColor3"]
      601 GETIMPORT                        R38 K158 [UDim2.fromOffset]
      603 LOADN                            R39 24
      604 LOADN                            R40 24
      605 CALL                             R38 2 1
      606 SETTABLEKS                       R38 R37 K135 ["Size"]
      608 CALL                             R35 2 1
      609 SETTABLEKS                       R35 R34 K67 ["Icon"]
      611 GETUPVAL                         R35 5
      612 GETTABLEKS                       R35 R35 K35 ["createElement"]
      614 LOADK                            R36 K180 ["TextLabel"]
      615 DUPTABLE                         R37 K181 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Font"], ["LayoutOrder"] = 2, ["Size"], ["Text"], ["TextColor3"], ["TextSize"] = 24, ["TextWrapped"] = True, ["TextXAlignment"], ["TextYAlignment"]}]
      616 GETIMPORT                        R38 K168 [Enum.AutomaticSize.Y]
      618 SETTABLEKS                       R38 R37 K36 ["AutomaticSize"]
      620 GETUPVAL                         R38 2
      621 GETTABLEKS                       R38 R38 K182 ["FONT"]
      623 SETTABLEKS                       R38 R37 K80 ["Font"]
      625 GETIMPORT                        R38 K140 [UDim2.new]
      627 LOADN                            R39 1
      628 LOADN                            R40 -32
      629 CALL                             R38 2 1
      630 SETTABLEKS                       R38 R37 K135 ["Size"]
      632 SETTABLEKS                       R25 R37 K72 ["Text"]
      634 GETTABLEKS                       R38 R4 K178 ["assetConfig"]
      636 GETTABLEKS                       R38 R38 K179 ["warningColor"]
      638 SETTABLEKS                       R38 R37 K162 ["TextColor3"]
      640 GETIMPORT                        R38 K150 [Enum.TextXAlignment.Left]
      642 SETTABLEKS                       R38 R37 K144 ["TextXAlignment"]
      644 GETIMPORT                        R38 K152 [Enum.TextYAlignment.Center]
      646 SETTABLEKS                       R38 R37 K145 ["TextYAlignment"]
      648 CALL                             R35 2 1
      649 SETTABLEKS                       R35 R34 K173 ["UGCWarningText"]
      651 CALL                             R31 3 1
      652 JUMP                             ; [+1]
      653 LOADNIL                          R31
      654 SETTABLEKS                       R31 R30 K32 ["EmoteAnimationWarning"]
      656 CALL                             R27 3 -1
      657 RETURN                           R27 -1

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
