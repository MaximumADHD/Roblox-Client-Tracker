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
        6 ORK                              R2 R3 K0 [Infinity]
        7 GETIMPORT                        R4 K3 [table.find]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R6 R1 K4 ["type"]
       12 CALL                             R4 2 1
       13 ORK                              R3 R4 K0 [Infinity]
       14 JUMPIFLT                         R2 R3 ; [+2]
       16 LOADB                            R4 0 +1
       17 LOADB                            R4 1
       18 RETURN                           R4 1

PROTO_31:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 NEWTABLE                         R4 0 0
        4 JUMPIFNOTEQKS                    R1 K1 ["AvatarItem"] ; [+84]
        6 GETTABLEKS                       R5 R3 K2 ["allowedBundleTypeSettings"]
        8 JUMPIFEQKNIL                     R5 ; [+47]
       10 GETTABLEKS                       R5 R3 K2 ["allowedBundleTypeSettings"]
       12 MOVE                             R6 R5
       13 LOADNIL                          R7
       14 LOADNIL                          R8
       15 FORGPREP                         R6
       16 GETUPVAL                         R11 0
       17 GETTABLEKS                       R11 R11 K3 ["getUGCBundleTypeFromString"]
       19 MOVE                             R12 R9
       20 CALL                             R11 1 1
       21 DUPTABLE                         R14 K8 [{["name"], ["selectable"] = True, ["type"]}]
       22 JUMPIFNOT                        R2 ; [+7]
       23 GETUPVAL                         R15 0
       24 GETTABLEKS                       R15 R15 K9 ["getLocalizedUGCBundleName"]
       26 MOVE                             R16 R11
       27 MOVE                             R17 R2
       28 CALL                             R15 2 1
       29 JUMP                             ; [+1]
       30 LOADK                            R15 K10 [""]
       31 SETTABLEKS                       R15 R14 K4 ["name"]
       33 SETTABLEKS                       R11 R14 K7 ["type"]
       35 FASTCALL2                        TABLE_INSERT R4 R14 ; [+4]
       37 MOVE                             R13 R4
       38 GETIMPORT                        R12 K13 [table.insert]
       40 CALL                             R12 2 0
       41 FORGLOOP                         R6 1 ; [-26]
       43 GETIMPORT                        R6 K15 [game]
       45 LOADK                            R8 K16 ["BodyFirstInAssetsCategory"]
       46 NAMECALL                         R6 R6 K17 ["GetFastFlag"]
       48 CALL                             R6 2 1
       49 JUMPIFNOT                        R6 ; [+6]
       50 GETIMPORT                        R6 K19 [table.sort]
       52 MOVE                             R7 R4
       53 NEWCLOSURE                       R8 P0
       54 CAPTURE                          UPVAL U1
       55 CALL                             R6 2 0
       56 GETUPVAL                         R5 2
       57 GETTABLEKS                       R6 R3 K20 ["allowedAssetTypesForRelease"]
       59 CALL                             R5 1 1
       60 LENGTH                           R6 R5
       61 LOADN                            R7 0
       62 JUMPIFNOTLT                      R7 R6 ; [+105]
       64 MOVE                             R6 R5
       65 LOADNIL                          R7
       66 LOADNIL                          R8
       67 FORGPREP                         R6
       68 JUMPIFNOT                        R2 ; [+5]
       69 GETUPVAL                         R12 3
       70 MOVE                             R13 R2
       71 CALL                             R12 1 1
       72 GETTABLE                         R11 R12 R10
       73 JUMP                             ; [+1]
       74 LOADK                            R11 K10 [""]
       75 DUPTABLE                         R14 K8 [{["name"], ["selectable"] = True, ["type"]}]
       76 SETTABLEKS                       R11 R14 K4 ["name"]
       78 SETTABLEKS                       R10 R14 K7 ["type"]
       80 FASTCALL2                        TABLE_INSERT R4 R14 ; [+4]
       82 MOVE                             R13 R4
       83 GETIMPORT                        R12 K13 [table.insert]
       85 CALL                             R12 2 0
       86 FORGLOOP                         R6 2 ; [-19]
       88 RETURN                           R4 1
       89 JUMPIFNOT                        R2 ; [+6]
       90 LOADK                            R7 K21 ["General"]
       91 LOADK                            R8 K22 ["AssetTypeModel"]
       92 NAMECALL                         R5 R2 K23 ["getText"]
       94 CALL                             R5 3 1
       95 JUMP                             ; [+1]
       96 LOADK                            R5 K10 [""]
       97 JUMPIFNOT                        R2 ; [+6]
       98 LOADK                            R8 K21 ["General"]
       99 LOADK                            R9 K24 ["AssetTypeAnimation"]
      100 NAMECALL                         R6 R2 K23 ["getText"]
      102 CALL                             R6 3 1
      103 JUMP                             ; [+1]
      104 LOADK                            R6 K10 [""]
      105 DUPTABLE                         R9 K8 [{["name"], ["selectable"] = True, ["type"]}]
      106 SETTABLEKS                       R5 R9 K4 ["name"]
      108 GETIMPORT                        R10 K28 [Enum.AssetType.Model]
      110 SETTABLEKS                       R10 R9 K7 ["type"]
      112 FASTCALL2                        TABLE_INSERT R4 R9 ; [+4]
      114 MOVE                             R8 R4
      115 GETIMPORT                        R7 K13 [table.insert]
      117 CALL                             R7 2 0
      118 DUPTABLE                         R9 K8 [{["name"], ["selectable"] = True, ["type"]}]
      119 SETTABLEKS                       R6 R9 K4 ["name"]
      121 GETIMPORT                        R10 K30 [Enum.AssetType.Animation]
      123 SETTABLEKS                       R10 R9 K7 ["type"]
      125 FASTCALL2                        TABLE_INSERT R4 R9 ; [+4]
      127 MOVE                             R8 R4
      128 GETIMPORT                        R7 K13 [table.insert]
      130 CALL                             R7 2 0
      131 GETTABLEKS                       R7 R3 K31 ["instances"]
      133 GETUPVAL                         R8 4
      134 CALL                             R8 0 1
      135 JUMPIFNOT                        R8 ; [+32]
      136 JUMPIFEQKNIL                     R7 ; [+31]
      138 LENGTH                           R8 R7
      139 JUMPIFNOTEQKN                    R8 K32 [1] ; [+28]
      141 GETTABLEN                        R8 R7 1
      142 LOADK                            R10 K33 ["TextDocument"]
      143 NAMECALL                         R8 R8 K34 ["IsA"]
      145 CALL                             R8 2 1
      146 JUMPIFNOT                        R8 ; [+21]
      147 JUMPIFNOT                        R2 ; [+6]
      148 LOADK                            R10 K21 ["General"]
      149 LOADK                            R11 K35 ["AssetTypeTextDocument"]
      150 NAMECALL                         R8 R2 K23 ["getText"]
      152 CALL                             R8 3 1
      153 JUMP                             ; [+1]
      154 LOADK                            R8 K10 [""]
      155 DUPTABLE                         R11 K8 [{["name"], ["selectable"] = True, ["type"]}]
      156 SETTABLEKS                       R8 R11 K4 ["name"]
      158 GETIMPORT                        R12 K36 [Enum.AssetType.TextDocument]
      160 SETTABLEKS                       R12 R11 K7 ["type"]
      162 FASTCALL2                        TABLE_INSERT R4 R11 ; [+4]
      164 MOVE                             R10 R4
      165 GETIMPORT                        R9 K13 [table.insert]
      167 CALL                             R9 2 0
      168 RETURN                           R4 1

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
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["avatarItemDependencyStatus"]
        4 GETTABLEKS                       R3 R1 K2 ["onAvatarItemCategorySelected"]
        6 JUMPIFNOT                        R3 ; [+13]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K3 ["Ready"]
       10 JUMPIFEQ                         R2 R3 ; [+9]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K4 ["Checking"]
       15 JUMPIFEQ                         R2 R3 ; [+4]
       17 GETTABLEKS                       R3 R1 K2 ["onAvatarItemCategorySelected"]
       19 CALL                             R3 0 0
       20 RETURN                           R0 0

PROTO_36:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 JUMPIFNOT                        R2 ; [+7]
        5 GETTABLEKS                       R2 R1 K1 ["currentSelectedRadioButtonKey"]
        7 JUMPIFNOTEQKS                    R2 K2 ["AvatarItem"] ; [+4]
        9 NAMECALL                         R2 R0 K3 ["checkAvatarItemDependencies"]
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_37:
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

PROTO_38:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getValidationErrorText"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["Localization"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_39:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getValidationErrorText"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["Localization"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_40:
        0 DUPCLOSURE                       R0 K0 [PROTO_37]
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
       38 JUMPIF                           R4 ; [+4]
       39 LOADB                            R1 1
       40 NEWTABLE                         R2 0 0
       42 JUMP                             ; [+87]
       43 GETUPVAL                         R5 4
       44 CALL                             R5 0 1
       45 JUMPIFNOT                        R5 ; [+45]
       46 GETUPVAL                         R6 5
       47 GETTABLEKS                       R6 R6 K12 ["validateSingleAsset"]
       49 GETUPVAL                         R7 6
       50 GETTABLEKS                       R7 R7 K13 ["instances"]
       52 GETUPVAL                         R8 3
       53 GETTABLEKS                       R8 R8 K10 ["currentAssetType"]
       55 NEWCLOSURE                       R9 P1
       56 CAPTURE                          UPVAL U7
       57 CAPTURE                          UPVAL U6
       58 FASTPCALL                        pcall 4 ; [+2]
       59 GETIMPORT                        R5 K15 [pcall]
       61 CALL                             R5 4 3
       62 JUMPIFNOT                        R5 ; [+3]
       63 MOVE                             R1 R6
       64 MOVE                             R2 R7
       65 JUMP                             ; [+64]
       66 GETIMPORT                        R8 K17 [warn]
       68 LOADK                            R10 K18 ["[Toolbox] UGC validation service error: "]
       69 FASTCALL1                        TOSTRING R6 ; [+3]
       70 MOVE                             R12 R6
       71 GETIMPORT                        R11 K20 [tostring]
       73 CALL                             R11 1 1
       74 CONCAT                           R9 R10 R11
       75 CALL                             R8 1 0
       76 LOADB                            R1 0
       77 NEWTABLE                         R8 0 1
       79 GETUPVAL                         R9 6
       80 GETTABLEKS                       R9 R9 K21 ["Localization"]
       82 LOADK                            R11 K22 ["AssetConfig"]
       83 LOADK                            R12 K23 ["ValidationErrorUnknown"]
       84 NAMECALL                         R9 R9 K24 ["getText"]
       86 CALL                             R9 3 -1
       87 SETLIST                          R8 R9 -1 [1]
       89 MOVE                             R2 R8
       90 JUMP                             ; [+39]
       91 GETUPVAL                         R5 8
       92 GETTABLEKS                       R5 R5 K25 ["validate"]
       94 MOVE                             R6 R0
       95 GETUPVAL                         R7 6
       96 GETTABLEKS                       R7 R7 K13 ["instances"]
       98 CALL                             R6 1 1
       99 GETUPVAL                         R7 3
      100 GETTABLEKS                       R7 R7 K10 ["currentAssetType"]
      102 CALL                             R5 2 2
      103 MOVE                             R1 R5
      104 MOVE                             R2 R6
      105 GETUPVAL                         R5 8
      106 GETTABLEKS                       R5 R5 K26 ["ValidateAsset"]
      108 MOVE                             R6 R0
      109 GETUPVAL                         R7 6
      110 GETTABLEKS                       R7 R7 K13 ["instances"]
      112 CALL                             R6 1 1
      113 GETUPVAL                         R7 3
      114 GETTABLEKS                       R7 R7 K10 ["currentAssetType"]
      116 DUPTABLE                         R8 K31 [{["source"] = "Toolbox", ["enforceR15FolderStructure"] = False}]
      117 CALL                             R5 3 1
      118 GETUPVAL                         R6 8
      119 GETTABLEKS                       R6 R6 K32 ["combineResultsIntoLegacy"]
      121 MOVE                             R7 R1
      122 MOVE                             R8 R2
      123 MOVE                             R9 R5
      124 NEWCLOSURE                       R10 P2
      125 CAPTURE                          UPVAL U7
      126 CAPTURE                          UPVAL U6
      127 CALL                             R6 4 2
      128 MOVE                             R1 R6
      129 MOVE                             R2 R7
      130 GETUPVAL                         R5 9
      131 GETTABLEKS                       R5 R5 K33 ["validationCallback"]
      133 MOVE                             R6 R1
      134 MOVE                             R7 R2
      135 CALL                             R5 2 0
      136 RETURN                           R0 0

PROTO_41:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R0 K1 ["state"]
        4 GETUPVAL                         R5 0
        5 CALL                             R5 0 1
        6 JUMPIFNOT                        R5 ; [+59]
        7 GETTABLEKS                       R5 R3 K2 ["onAvatarItemCategorySelected"]
        9 JUMPIFNOT                        R5 ; [+56]
       10 GETTABLEKS                       R5 R3 K3 ["avatarItemDependencyStatus"]
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R6 R6 K4 ["Cancelled"]
       15 JUMPIFNOTEQ                      R5 R6 ; [+17]
       17 GETTABLEKS                       R5 R1 K3 ["avatarItemDependencyStatus"]
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R6 R6 K4 ["Cancelled"]
       22 JUMPIFEQ                         R5 R6 ; [+10]
       24 GETTABLEKS                       R5 R4 K5 ["currentSelectedRadioButtonKey"]
       26 JUMPIFNOTEQKS                    R5 K6 ["AvatarItem"] ; [+6]
       28 DUPTABLE                         R7 K8 [{["currentSelectedRadioButtonKey"] = "DevelopmentItem"}]
       29 NAMECALL                         R5 R0 K9 ["setState"]
       31 CALL                             R5 2 0
       32 JUMP                             ; [+33]
       33 GETTABLEKS                       R5 R4 K5 ["currentSelectedRadioButtonKey"]
       35 JUMPIFNOTEQKS                    R5 K6 ["AvatarItem"] ; [+9]
       37 GETTABLEKS                       R5 R2 K5 ["currentSelectedRadioButtonKey"]
       39 JUMPIFEQKS                       R5 K6 ["AvatarItem"] ; [+5]
       41 NAMECALL                         R5 R0 K10 ["checkAvatarItemDependencies"]
       43 CALL                             R5 1 0
       44 JUMP                             ; [+21]
       45 GETTABLEKS                       R5 R4 K5 ["currentSelectedRadioButtonKey"]
       47 JUMPIFEQKS                       R5 K6 ["AvatarItem"] ; [+18]
       49 GETTABLEKS                       R5 R2 K5 ["currentSelectedRadioButtonKey"]
       51 JUMPIFNOTEQKS                    R5 K6 ["AvatarItem"] ; [+14]
       53 GETTABLEKS                       R5 R3 K3 ["avatarItemDependencyStatus"]
       55 GETUPVAL                         R6 1
       56 GETTABLEKS                       R6 R6 K11 ["Checking"]
       58 JUMPIFNOTEQ                      R5 R6 ; [+7]
       60 GETTABLEKS                       R5 R3 K12 ["cancelAvatarItemDependencyCheck"]
       62 JUMPIFNOT                        R5 ; [+3]
       63 GETTABLEKS                       R5 R3 K12 ["cancelAvatarItemDependencyCheck"]
       65 CALL                             R5 0 0
       66 GETTABLEKS                       R5 R4 K5 ["currentSelectedRadioButtonKey"]
       68 GETTABLEKS                       R6 R2 K5 ["currentSelectedRadioButtonKey"]
       70 JUMPIFNOTEQ                      R5 R6 ; [+13]
       72 GETTABLEKS                       R5 R4 K13 ["dropdownAvatarCategoryIndex"]
       74 GETTABLEKS                       R6 R2 K13 ["dropdownAvatarCategoryIndex"]
       76 JUMPIFNOTEQ                      R5 R6 ; [+7]
       78 GETTABLEKS                       R5 R4 K14 ["dropdownDevelopmentCategoryIndex"]
       80 GETTABLEKS                       R6 R2 K14 ["dropdownDevelopmentCategoryIndex"]
       82 JUMPIFEQ                         R5 R6 ; [+4]
       84 NAMECALL                         R5 R0 K15 ["onAssetTypeChanged"]
       86 CALL                             R5 1 0
       87 GETTABLEKS                       R5 R3 K16 ["validationState"]
       89 GETTABLEKS                       R6 R1 K16 ["validationState"]
       91 JUMPIFEQ                         R5 R6 ; [+54]
       93 GETTABLEKS                       R5 R3 K16 ["validationState"]
       95 GETUPVAL                         R6 2
       96 GETTABLEKS                       R6 R6 K17 ["VALIDATION_STATE"]
       98 GETTABLEKS                       R6 R6 K18 ["BEGIN"]
      100 JUMPIFNOTEQ                      R5 R6 ; [+13]
      102 GETTABLEKS                       R5 R3 K19 ["setValidationState"]
      104 JUMPIFNOT                        R5 ; [+9]
      105 GETTABLEKS                       R5 R3 K19 ["setValidationState"]
      107 GETUPVAL                         R6 2
      108 GETTABLEKS                       R6 R6 K17 ["VALIDATION_STATE"]
      110 GETTABLEKS                       R6 R6 K20 ["VALIDATING"]
      112 CALL                             R5 1 0
      113 RETURN                           R0 0
      114 GETTABLEKS                       R5 R3 K16 ["validationState"]
      116 GETUPVAL                         R6 2
      117 GETTABLEKS                       R6 R6 K17 ["VALIDATION_STATE"]
      119 GETTABLEKS                       R6 R6 K20 ["VALIDATING"]
      121 JUMPIFNOTEQ                      R5 R6 ; [+24]
      123 GETUPVAL                         R5 3
      124 GETTABLEKS                       R5 R5 K21 ["isUGCBundleType"]
      126 GETTABLEKS                       R6 R4 K22 ["currentAssetType"]
      128 CALL                             R5 1 1
      129 JUMPIF                           R5 ; [+16]
      130 GETIMPORT                        R5 K25 [task.spawn]
      132 NEWCLOSURE                       R6 P0
      133 CAPTURE                          UPVAL U4
      134 CAPTURE                          UPVAL U5
      135 CAPTURE                          UPVAL U6
      136 CAPTURE                          VAL R4
      137 CAPTURE                          UPVAL U7
      138 CAPTURE                          UPVAL U8
      139 CAPTURE                          VAL R3
      140 CAPTURE                          UPVAL U3
      141 CAPTURE                          UPVAL U9
      142 CAPTURE                          VAL R0
      143 CALL                             R5 1 1
      144 SETTABLEKS                       R5 R0 K26 ["validationTask"]
      146 RETURN                           R0 0

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
       23 LOADB                            R7 0
       24 GETTABLEKS                       R8 R2 K8 ["currentSelectedRadioButtonKey"]
       26 JUMPIFNOTEQKS                    R8 K9 ["AvatarItem"] ; [+10]
       28 GETTABLEKS                       R8 R1 K10 ["avatarItemDependencyStatus"]
       30 GETUPVAL                         R9 2
       31 GETTABLEKS                       R9 R9 K11 ["Checking"]
       33 JUMPIFEQ                         R8 R9 ; [+2]
       35 LOADB                            R7 0 +1
       36 LOADB                            R7 1
       37 MOVE                             R8 R7
       38 JUMPIFNOT                        R8 ; [+9]
       39 GETTABLEKS                       R9 R1 K12 ["avatarItemDialogType"]
       41 GETUPVAL                         R10 3
       42 GETTABLEKS                       R10 R10 K13 ["Disabled"]
       44 JUMPIFEQ                         R9 R10 ; [+2]
       46 LOADB                            R8 0 +1
       47 LOADB                            R8 1
       48 GETTABLEKS                       R9 R2 K14 ["currentAssetType"]
       50 GETIMPORT                        R11 K18 [Enum.AssetType.Model]
       52 JUMPIFEQ                         R9 R11 ; [+2]
       54 LOADB                            R10 0 +1
       55 LOADB                            R10 1
       56 GETTABLEKS                       R12 R1 K19 ["assetTypeEnum"]
       58 GETIMPORT                        R13 K21 [Enum.AssetType.Animation]
       60 JUMPIFEQ                         R12 R13 ; [+2]
       62 LOADB                            R11 0 +1
       63 LOADB                            R11 1
       64 LOADK                            R14 K22 ["AssetConfig"]
       65 LOADK                            R15 K23 ["AvatarItemsErrorTitle"]
       66 NAMECALL                         R12 R3 K24 ["getText"]
       68 CALL                             R12 3 1
       69 LOADK                            R15 K25 ["Common"]
       70 LOADK                            R16 K26 ["Close"]
       71 NAMECALL                         R13 R3 K24 ["getText"]
       73 CALL                             R13 3 1
       74 LOADK                            R16 K27 ["General"]
       75 LOADK                            R17 K28 ["ContentType"]
       76 NAMECALL                         R14 R3 K24 ["getText"]
       78 CALL                             R14 3 1
       79 LOADK                            R17 K27 ["General"]
       80 LOADK                            R18 K29 ["AssetCategory"]
       81 NAMECALL                         R15 R3 K24 ["getText"]
       83 CALL                             R15 3 1
       84 LOADNIL                          R16
       85 JUMPIFNOT                        R10 ; [+8]
       86 GETUPVAL                         R17 4
       87 JUMPIF                           R17 ; [+6]
       88 LOADK                            R19 K22 ["AssetConfig"]
       89 LOADK                            R20 K30 ["ModelPublishWarning"]
       90 NAMECALL                         R17 R3 K24 ["getText"]
       92 CALL                             R17 3 1
       93 MOVE                             R16 R17
       94 GETTABLEKS                       R17 R1 K31 ["canAffordUploadFee"]
       96 GETTABLEKS                       R18 R1 K32 ["uploadFee"]
       98 LOADN                            R20 0
       99 JUMPIFNOTLT                      R20 R18 ; [+3]
      101 NOT                              R19 R17
      102 JUMP                             ; [+1]
      103 LOADB                            R19 0
      104 LOADNIL                          R20
      105 JUMPIFNOT                        R19 ; [+6]
      106 LOADK                            R23 K22 ["AssetConfig"]
      107 LOADK                            R24 K33 ["InsufficientRobuxWarning"]
      108 NAMECALL                         R21 R3 K24 ["getText"]
      110 CALL                             R21 3 1
      111 MOVE                             R20 R21
      112 GETTABLEKS                       R21 R2 K34 ["displayValidationErrorMessages"]
      114 NEWTABLE                         R22 0 0
      116 LOADK                            R25 K22 ["AssetConfig"]
      117 LOADK                            R26 K35 ["EmoteAnimationWarning"]
      118 NAMECALL                         R23 R3 K24 ["getText"]
      120 CALL                             R23 3 1
      121 GETTABLEKS                       R24 R2 K36 ["displayAssetSelection"]
      123 JUMPIFNOTEQKNIL                  R24 ; [+6]
      125 NEWCLOSURE                       R26 P0
      126 CAPTURE                          VAL R11
      127 NAMECALL                         R24 R0 K37 ["setState"]
      129 CALL                             R24 2 0
      130 GETTABLEKS                       R24 R2 K36 ["displayAssetSelection"]
      132 GETUPVAL                         R25 5
      133 GETTABLEKS                       R25 R25 K38 ["createElement"]
      135 GETUPVAL                         R26 6
      136 DUPTABLE                         R27 K50 [{["AutomaticSize"], ["BackgroundColor3"], ["BackgroundTransparency"] = 1, ["HorizontalAlignment"], ["Layout"], ["LayoutOrder"], ["Padding"], ["Spacing"] = 30, ["VerticalAlignment"]}]
      137 GETIMPORT                        R28 K52 [Enum.AutomaticSize.XY]
      139 SETTABLEKS                       R28 R27 K39 ["AutomaticSize"]
      141 GETTABLEKS                       R28 R4 K53 ["typeSelection"]
      143 GETTABLEKS                       R28 R28 K54 ["background"]
      145 SETTABLEKS                       R28 R27 K40 ["BackgroundColor3"]
      147 GETIMPORT                        R28 K56 [Enum.HorizontalAlignment.Left]
      149 SETTABLEKS                       R28 R27 K43 ["HorizontalAlignment"]
      151 GETIMPORT                        R28 K59 [Enum.FillDirection.Vertical]
      153 SETTABLEKS                       R28 R27 K44 ["Layout"]
      155 GETTABLEKS                       R28 R1 K45 ["LayoutOrder"]
      157 SETTABLEKS                       R28 R27 K45 ["LayoutOrder"]
      159 DUPTABLE                         R28 K62 [{["Bottom"] = 32}]
      160 SETTABLEKS                       R28 R27 K46 ["Padding"]
      162 GETIMPORT                        R28 K64 [Enum.VerticalAlignment.Top]
      164 SETTABLEKS                       R28 R27 K49 ["VerticalAlignment"]
      166 DUPTABLE                         R28 K68 [{"ValidationErrorMessageBox", "ContentTypeRadioButtons", "AssetCategoryDropDown", "EmoteAnimationWarning"}]
      167 JUMPIFNOT                        R21 ; [+44]
      168 GETUPVAL                         R29 5
      169 GETTABLEKS                       R29 R29 K38 ["createElement"]
      171 GETUPVAL                         R30 7
      172 DUPTABLE                         R31 K82 [{["buttons"], ["Icon"] = "rbxasset://textures/ui/ErrorIcon.png", ["InformativeText"], ["onButtonClicked"], ["onClose"], ["Text"], ["Title"], ["isScrollable"] = True, ["messageBoxHeight"] = 500, ["isResizable"] = True}]
      173 NEWTABLE                         R32 0 1
      175 DUPTABLE                         R33 K87 [{["Text"], ["Font"], ["TextSize"], ["action"] = "yes"}]
      176 SETTABLEKS                       R13 R33 K75 ["Text"]
      178 GETTABLEKS                       R34 R4 K83 ["Font"]
      180 SETTABLEKS                       R34 R33 K83 ["Font"]
      182 GETTABLEKS                       R34 R4 K84 ["TextSize"]
      184 SETTABLEKS                       R34 R33 K84 ["TextSize"]
      186 SETLIST                          R32 R33 1 [1]
      188 SETTABLEKS                       R32 R31 K69 ["buttons"]
      190 NAMECALL                         R32 R0 K88 ["getAvatarItemCategoryErrors"]
      192 CALL                             R32 1 1
      193 SETTABLEKS                       R32 R31 K72 ["InformativeText"]
      195 GETTABLEKS                       R32 R0 K89 ["onValidationErrorMessageBoxClosed"]
      197 SETTABLEKS                       R32 R31 K73 ["onButtonClicked"]
      199 GETTABLEKS                       R32 R0 K89 ["onValidationErrorMessageBoxClosed"]
      201 SETTABLEKS                       R32 R31 K74 ["onClose"]
      203 NAMECALL                         R32 R0 K90 ["getAvatarItemCategoryErrorsPrimaryText"]
      205 CALL                             R32 1 1
      206 SETTABLEKS                       R32 R31 K75 ["Text"]
      208 SETTABLEKS                       R12 R31 K76 ["Title"]
      210 CALL                             R29 2 1
      211 JUMP                             ; [+1]
      212 LOADNIL                          R29
      213 SETTABLEKS                       R29 R28 K65 ["ValidationErrorMessageBox"]
      215 JUMPIFNOT                        R24 ; [+32]
      216 GETUPVAL                         R29 8
      217 GETTABLEKS                       R29 R29 K38 ["createElement"]
      219 GETUPVAL                         R30 9
      220 DUPTABLE                         R31 K101 [{["layoutOrder"], ["contentTypeTitle"], ["currentSelectedRadioButtonKey"], ["onRadioButtonClicked"], ["warningMessageText"] = , ["warningMessageLinkMap"], ["isModel"], ["modelPublishWarningText"], ["insufficientRobuxWarningText"], ["theme"]}]
      221 NAMECALL                         R32 R5 K102 ["getNextOrder"]
      223 CALL                             R32 1 1
      224 SETTABLEKS                       R32 R31 K91 ["layoutOrder"]
      226 SETTABLEKS                       R14 R31 K92 ["contentTypeTitle"]
      228 GETTABLEKS                       R32 R2 K8 ["currentSelectedRadioButtonKey"]
      230 SETTABLEKS                       R32 R31 K8 ["currentSelectedRadioButtonKey"]
      232 GETTABLEKS                       R32 R0 K93 ["onRadioButtonClicked"]
      234 SETTABLEKS                       R32 R31 K93 ["onRadioButtonClicked"]
      236 SETTABLEKS                       R22 R31 K96 ["warningMessageLinkMap"]
      238 SETTABLEKS                       R10 R31 K97 ["isModel"]
      240 SETTABLEKS                       R16 R31 K98 ["modelPublishWarningText"]
      242 SETTABLEKS                       R20 R31 K99 ["insufficientRobuxWarningText"]
      244 SETTABLEKS                       R4 R31 K100 ["theme"]
      246 CALL                             R29 2 1
      247 JUMP                             ; [+1]
      248 LOADNIL                          R29
      249 SETTABLEKS                       R29 R28 K66 ["ContentTypeRadioButtons"]
      251 JUMPIFNOT                        R24 ; [+78]
      252 GETUPVAL                         R29 8
      253 GETTABLEKS                       R29 R29 K38 ["createElement"]
      255 GETUPVAL                         R30 10
      256 DUPTABLE                         R31 K103 [{"LayoutOrder", "Title"}]
      257 NAMECALL                         R32 R5 K102 ["getNextOrder"]
      259 CALL                             R32 1 1
      260 SETTABLEKS                       R32 R31 K45 ["LayoutOrder"]
      262 SETTABLEKS                       R15 R31 K76 ["Title"]
      264 DUPTABLE                         R32 K105 [{"AssetCategoryRow"}]
      265 GETUPVAL                         R33 8
      266 GETTABLEKS                       R33 R33 K38 ["createElement"]
      268 GETUPVAL                         R34 11
      269 DUPTABLE                         R35 K117 [{["dropdownItems"], ["selectedDropDownIndex"], ["onItemClicked"], ["placeholder"], ["dropdownWidth"] = 400, ["showError"], ["validationStatusMessage"], ["validationStatusColor"], ["onErrorClicked"], ["isDisabled"]}]
      270 MOVE                             R38 R3
      271 NAMECALL                         R36 R0 K118 ["getDropdownItems"]
      273 CALL                             R36 2 1
      274 SETTABLEKS                       R36 R35 K106 ["dropdownItems"]
      276 NAMECALL                         R36 R0 K119 ["getAssetCategoryIndex"]
      278 CALL                             R36 1 1
      279 SETTABLEKS                       R36 R35 K107 ["selectedDropDownIndex"]
      281 GETTABLEKS                       R36 R0 K120 ["setAssetCategoryIndex"]
      283 SETTABLEKS                       R36 R35 K108 ["onItemClicked"]
      285 LOADK                            R38 K121 ["Dropdown"]
      286 LOADK                            R39 K122 ["ChooseOne"]
      287 NAMECALL                         R36 R3 K24 ["getText"]
      289 CALL                             R36 3 1
      290 SETTABLEKS                       R36 R35 K109 ["placeholder"]
      292 MOVE                             R36 R6
      293 JUMPIFNOT                        R36 ; [+1]
      294 NOT                              R36 R8
      295 SETTABLEKS                       R36 R35 K112 ["showError"]
      297 JUMPIFNOT                        R8 ; [+6]
      298 LOADK                            R38 K22 ["AssetConfig"]
      299 LOADK                            R39 K123 ["AvatarItemDependencyCheckInProgress"]
      300 NAMECALL                         R36 R3 K24 ["getText"]
      302 CALL                             R36 3 1
      303 JUMP                             ; [+3]
      304 NAMECALL                         R36 R0 K124 ["getValidationStatusMessage"]
      306 CALL                             R36 1 1
      307 SETTABLEKS                       R36 R35 K113 ["validationStatusMessage"]
      309 JUMPIFNOT                        R8 ; [+3]
      310 GETTABLEKS                       R36 R4 K125 ["TextColor"]
      312 JUMP                             ; [+4]
      313 MOVE                             R38 R4
      314 NAMECALL                         R36 R0 K126 ["getValidationStatusColor"]
      316 CALL                             R36 2 1
      317 SETTABLEKS                       R36 R35 K114 ["validationStatusColor"]
      319 GETTABLEKS                       R36 R0 K127 ["openValidationErrorMessageBox"]
      321 SETTABLEKS                       R36 R35 K115 ["onErrorClicked"]
      323 SETTABLEKS                       R7 R35 K116 ["isDisabled"]
      325 CALL                             R33 2 1
      326 SETTABLEKS                       R33 R32 K104 ["AssetCategoryRow"]
      328 CALL                             R29 3 1
      329 JUMP                             ; [+1]
      330 LOADNIL                          R29
      331 SETTABLEKS                       R29 R28 K67 ["AssetCategoryDropDown"]
      333 GETIMPORT                        R30 K129 [Enum.AssetType.EmoteAnimation]
      335 JUMPIFNOTEQ                      R9 R30 ; [+103]
      337 GETUPVAL                         R29 5
      338 GETTABLEKS                       R29 R29 K38 ["createElement"]
      340 GETUPVAL                         R30 6
      341 DUPTABLE                         R31 K132 [{["AutomaticSize"], ["HorizontalAlignment"], ["Layout"], ["LayoutOrder"], ["Size"], ["Spacing"] = 8, ["VerticalAlignment"]}]
      342 GETIMPORT                        R32 K134 [Enum.AutomaticSize.Y]
      344 SETTABLEKS                       R32 R31 K39 ["AutomaticSize"]
      346 GETIMPORT                        R32 K56 [Enum.HorizontalAlignment.Left]
      348 SETTABLEKS                       R32 R31 K43 ["HorizontalAlignment"]
      350 GETIMPORT                        R32 K136 [Enum.FillDirection.Horizontal]
      352 SETTABLEKS                       R32 R31 K44 ["Layout"]
      354 NAMECALL                         R32 R5 K102 ["getNextOrder"]
      356 CALL                             R32 1 1
      357 SETTABLEKS                       R32 R31 K45 ["LayoutOrder"]
      359 GETIMPORT                        R32 K139 [UDim2.fromScale]
      361 LOADN                            R33 1
      362 LOADN                            R34 0
      363 CALL                             R32 2 1
      364 SETTABLEKS                       R32 R31 K130 ["Size"]
      366 GETIMPORT                        R32 K64 [Enum.VerticalAlignment.Top]
      368 SETTABLEKS                       R32 R31 K49 ["VerticalAlignment"]
      370 DUPTABLE                         R32 K141 [{"Icon", "UGCWarningText"}]
      371 GETUPVAL                         R33 5
      372 GETTABLEKS                       R33 R33 K38 ["createElement"]
      374 LOADK                            R34 K142 ["ImageLabel"]
      375 DUPTABLE                         R35 K145 [{["BackgroundTransparency"] = 1, ["Image"], ["ImageColor3"], ["LayoutOrder"] = 1, ["Size"]}]
      376 GETUPVAL                         R36 12
      377 GETTABLEKS                       R36 R36 K146 ["WARNING_ICON"]
      379 SETTABLEKS                       R36 R35 K143 ["Image"]
      381 GETTABLEKS                       R36 R4 K147 ["assetConfig"]
      383 GETTABLEKS                       R36 R36 K148 ["warningColor"]
      385 SETTABLEKS                       R36 R35 K144 ["ImageColor3"]
      387 GETIMPORT                        R36 K150 [UDim2.fromOffset]
      389 LOADN                            R37 24
      390 LOADN                            R38 24
      391 CALL                             R36 2 1
      392 SETTABLEKS                       R36 R35 K130 ["Size"]
      394 CALL                             R33 2 1
      395 SETTABLEKS                       R33 R32 K70 ["Icon"]
      397 GETUPVAL                         R33 5
      398 GETTABLEKS                       R33 R33 K38 ["createElement"]
      400 LOADK                            R34 K151 ["TextLabel"]
      401 DUPTABLE                         R35 K158 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Font"], ["LayoutOrder"] = 2, ["Size"], ["Text"], ["TextColor3"], ["TextSize"] = 24, ["TextWrapped"] = True, ["TextXAlignment"], ["TextYAlignment"]}]
      402 GETIMPORT                        R36 K134 [Enum.AutomaticSize.Y]
      404 SETTABLEKS                       R36 R35 K39 ["AutomaticSize"]
      406 GETUPVAL                         R36 13
      407 GETTABLEKS                       R36 R36 K159 ["FONT"]
      409 SETTABLEKS                       R36 R35 K83 ["Font"]
      411 GETIMPORT                        R36 K160 [UDim2.new]
      413 LOADN                            R37 1
      414 LOADN                            R38 -32
      415 CALL                             R36 2 1
      416 SETTABLEKS                       R36 R35 K130 ["Size"]
      418 SETTABLEKS                       R23 R35 K75 ["Text"]
      420 GETTABLEKS                       R36 R4 K147 ["assetConfig"]
      422 GETTABLEKS                       R36 R36 K148 ["warningColor"]
      424 SETTABLEKS                       R36 R35 K153 ["TextColor3"]
      426 GETIMPORT                        R36 K161 [Enum.TextXAlignment.Left]
      428 SETTABLEKS                       R36 R35 K156 ["TextXAlignment"]
      430 GETIMPORT                        R36 K163 [Enum.TextYAlignment.Center]
      432 SETTABLEKS                       R36 R35 K157 ["TextYAlignment"]
      434 CALL                             R33 2 1
      435 SETTABLEKS                       R33 R32 K140 ["UGCWarningText"]
      437 CALL                             R29 3 1
      438 JUMP                             ; [+1]
      439 LOADNIL                          R29
      440 SETTABLEKS                       R29 R28 K35 ["EmoteAnimationWarning"]
      442 CALL                             R25 3 -1
      443 RETURN                           R25 -1

PROTO_45:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 MOVE                             R0 R1
        5 DUPTABLE                         R1 K8 [{"allowedAssetTypesForRelease", "allowedBundleTypeSettings", "assetTypeEnum", "canAffordUploadFee", "instances", "uploadFee", "avatarItemDependencyStatus", "avatarItemDialogType"}]
        6 GETTABLEKS                       R2 R0 K0 ["allowedAssetTypesForRelease"]
        8 SETTABLEKS                       R2 R1 K0 ["allowedAssetTypesForRelease"]
       10 GETTABLEKS                       R2 R0 K1 ["allowedBundleTypeSettings"]
       12 SETTABLEKS                       R2 R1 K1 ["allowedBundleTypeSettings"]
       14 GETTABLEKS                       R2 R0 K2 ["assetTypeEnum"]
       16 SETTABLEKS                       R2 R1 K2 ["assetTypeEnum"]
       18 GETTABLEKS                       R3 R0 K3 ["canAffordUploadFee"]
       20 ORK                              R2 R3 K9 [False]
       21 SETTABLEKS                       R2 R1 K3 ["canAffordUploadFee"]
       23 GETTABLEKS                       R2 R0 K4 ["instances"]
       25 SETTABLEKS                       R2 R1 K4 ["instances"]
       27 GETTABLEKS                       R3 R0 K5 ["uploadFee"]
       29 ORK                              R2 R3 K10 [0]
       30 SETTABLEKS                       R2 R1 K5 ["uploadFee"]
       32 GETUPVAL                         R3 0
       33 CALL                             R3 0 1
       34 JUMPIFNOT                        R3 ; [+7]
       35 GETTABLEKS                       R2 R0 K6 ["avatarItemDependencyStatus"]
       37 JUMPIF                           R2 ; [+5]
       38 GETUPVAL                         R2 1
       39 GETTABLEKS                       R2 R2 K11 ["NotChecked"]
       41 JUMP                             ; [+1]
       42 LOADNIL                          R2
       43 SETTABLEKS                       R2 R1 K6 ["avatarItemDependencyStatus"]
       45 GETUPVAL                         R3 0
       46 CALL                             R3 0 1
       47 JUMPIFNOT                        R3 ; [+3]
       48 GETTABLEKS                       R2 R0 K7 ["avatarItemDialogType"]
       50 JUMP                             ; [+1]
       51 LOADNIL                          R2
       52 SETTABLEKS                       R2 R1 K7 ["avatarItemDialogType"]
       54 RETURN                           R1 1

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
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_49:
        0 DUPTABLE                         R1 K3 [{"onAssetTypeSelected", "onAssetValidationResultChanged", "cancelAvatarItemDependencyCheck"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["onAssetTypeSelected"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["onAssetValidationResultChanged"]
       11 GETUPVAL                         R3 2
       12 CALL                             R3 0 1
       13 JUMPIFNOT                        R3 ; [+4]
       14 NEWCLOSURE                       R2 P2
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U3
       17 JUMP                             ; [+1]
       18 LOADNIL                          R2
       19 SETTABLEKS                       R2 R1 K2 ["cancelAvatarItemDependencyCheck"]
       21 RETURN                           R1 1

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
       95 GETTABLEKS                       R20 R12 K25 ["getAllowedAssetTypeEnums"]
       97 CALL                             R19 1 1
       98 GETIMPORT                        R20 K6 [require]
      100 GETTABLEKS                       R21 R0 K16 ["Src"]
      102 GETTABLEKS                       R21 R21 K26 ["Localization"]
      104 GETTABLEKS                       R21 R21 K27 ["getLocalizedAssetTextMap"]
      106 CALL                             R20 1 1
      107 GETTABLEKS                       R21 R3 K18 ["Util"]
      109 GETTABLEKS                       R21 R21 K28 ["LayoutOrderIterator"]
      111 GETTABLEKS                       R22 R3 K29 ["UI"]
      113 GETTABLEKS                       R23 R22 K30 ["Pane"]
      115 GETTABLEKS                       R24 R22 K31 ["TextLabel"]
      117 GETIMPORT                        R25 K6 [require]
      119 GETTABLEKS                       R26 R0 K16 ["Src"]
      121 GETTABLEKS                       R26 R26 K32 ["Actions"]
      123 GETTABLEKS                       R26 R26 K33 ["SetUploadAssetType"]
      125 CALL                             R25 1 1
      126 GETIMPORT                        R26 K6 [require]
      128 GETTABLEKS                       R27 R0 K16 ["Src"]
      130 GETTABLEKS                       R27 R27 K32 ["Actions"]
      132 GETTABLEKS                       R27 R27 K34 ["SetUploadAssetValidationStatus"]
      134 CALL                             R26 1 1
      135 GETIMPORT                        R27 K6 [require]
      137 GETTABLEKS                       R28 R0 K16 ["Src"]
      139 GETTABLEKS                       R28 R28 K32 ["Actions"]
      141 GETTABLEKS                       R28 R28 K35 ["AvatarItemDialogCancelled"]
      143 CALL                             R27 1 1
      144 GETIMPORT                        R28 K6 [require]
      146 GETTABLEKS                       R29 R0 K16 ["Src"]
      148 GETTABLEKS                       R29 R29 K36 ["Components"]
      150 GETTABLEKS                       R29 R29 K37 ["MessageBox"]
      152 GETTABLEKS                       R29 R29 K37 ["MessageBox"]
      154 CALL                             R28 1 1
      155 GETIMPORT                        R29 K6 [require]
      157 GETTABLEKS                       R30 R0 K16 ["Src"]
      159 GETTABLEKS                       R30 R30 K36 ["Components"]
      161 GETTABLEKS                       R30 R30 K38 ["StyledScrollingFrame"]
      163 CALL                             R29 1 1
      164 GETTABLEKS                       R30 R0 K16 ["Src"]
      166 GETTABLEKS                       R30 R30 K36 ["Components"]
      168 GETTABLEKS                       R30 R30 K39 ["AssetConfiguration"]
      170 GETIMPORT                        R31 K6 [require]
      172 GETTABLEKS                       R32 R30 K40 ["AssetCategoryRow"]
      174 CALL                             R31 1 1
      175 GETIMPORT                        R32 K6 [require]
      177 GETTABLEKS                       R33 R30 K41 ["AssetConfigDropdown"]
      179 CALL                             R32 1 1
      180 GETIMPORT                        R33 K6 [require]
      182 GETTABLEKS                       R34 R30 K42 ["ConfigSectionWrapper"]
      184 CALL                             R33 1 1
      185 GETIMPORT                        R34 K6 [require]
      187 GETTABLEKS                       R35 R30 K43 ["ContentTypeRadioButtons"]
      189 CALL                             R34 1 1
      190 GETIMPORT                        R35 K6 [require]
      192 GETTABLEKS                       R36 R30 K44 ["UGCBundleValidation"]
      194 CALL                             R35 1 1
      195 GETIMPORT                        R36 K6 [require]
      197 GETTABLEKS                       R37 R30 K45 ["ValidationStatus"]
      199 CALL                             R36 1 1
      200 GETIMPORT                        R37 K6 [require]
      202 GETTABLEKS                       R38 R12 K46 ["AssetConfigConstants"]
      204 CALL                             R37 1 1
      205 GETIMPORT                        R38 K6 [require]
      207 GETTABLEKS                       R39 R0 K16 ["Src"]
      209 GETTABLEKS                       R39 R39 K47 ["Types"]
      211 GETTABLEKS                       R39 R39 K48 ["AvatarItemDialog"]
      213 CALL                             R38 1 1
      214 GETIMPORT                        R39 K6 [require]
      216 GETTABLEKS                       R40 R0 K16 ["Src"]
      218 GETTABLEKS                       R40 R40 K47 ["Types"]
      220 GETTABLEKS                       R40 R40 K49 ["AvatarItemDependencyStatus"]
      222 CALL                             R39 1 1
      223 GETIMPORT                        R40 K6 [require]
      225 GETTABLEKS                       R41 R0 K16 ["Src"]
      227 GETTABLEKS                       R41 R41 K50 ["Flags"]
      229 GETTABLEKS                       R41 R41 K51 ["getFFlagToolboxAvatarItemPublishDraftDependencies"]
      231 CALL                             R40 1 1
      232 GETIMPORT                        R41 K6 [require]
      234 GETTABLEKS                       R42 R0 K16 ["Src"]
      236 GETTABLEKS                       R42 R42 K50 ["Flags"]
      238 GETTABLEKS                       R42 R42 K52 ["getEngineFeatureStudioTextDocumentUploadAsset"]
      240 CALL                             R41 1 1
      241 GETIMPORT                        R42 K6 [require]
      243 GETTABLEKS                       R43 R30 K53 ["DataConsentToggle"]
      245 CALL                             R42 1 1
      246 GETIMPORT                        R43 K55 [game]
      248 LOADK                            R45 K56 ["BodyFirstInAssetsCategory"]
      249 LOADB                            R46 0
      250 NAMECALL                         R43 R43 K57 ["DefineFastFlag"]
      252 CALL                             R43 3 0
      253 GETIMPORT                        R43 K55 [game]
      255 LOADK                            R45 K58 ["DisableSubmitButtonForValidationInInit"]
      256 LOADB                            R46 0
      257 NAMECALL                         R43 R43 K57 ["DefineFastFlag"]
      259 CALL                             R43 3 1
      260 GETIMPORT                        R44 K6 [require]
      262 GETTABLEKS                       R45 R12 K59 ["SharedFlags"]
      264 GETTABLEKS                       R45 R45 K60 ["getFFlagEnableUGCUploadFlowAnalytics"]
      266 CALL                             R44 1 1
      267 GETIMPORT                        R45 K6 [require]
      269 GETTABLEKS                       R46 R12 K59 ["SharedFlags"]
      271 GETTABLEKS                       R46 R46 K61 ["getFFlagEnableUGCBundleUploadBodyScale"]
      273 CALL                             R45 1 1
      274 GETIMPORT                        R46 K6 [require]
      276 GETTABLEKS                       R47 R0 K16 ["Src"]
      278 GETTABLEKS                       R47 R47 K50 ["Flags"]
      280 GETTABLEKS                       R47 R47 K62 ["getFStringAssetsToBypassValidation"]
      282 CALL                             R46 1 1
      283 GETIMPORT                        R47 K6 [require]
      285 GETTABLEKS                       R48 R0 K16 ["Src"]
      287 GETTABLEKS                       R48 R48 K50 ["Flags"]
      289 GETTABLEKS                       R48 R48 K63 ["getFFlagAssetBypassValidation"]
      291 CALL                             R47 1 1
      292 GETIMPORT                        R48 K6 [require]
      294 GETTABLEKS                       R49 R0 K16 ["Src"]
      296 GETTABLEKS                       R49 R49 K50 ["Flags"]
      298 GETTABLEKS                       R49 R49 K64 ["getToolboxUGCValidationViaAQSEnabled"]
      300 CALL                             R48 1 1
      301 GETIMPORT                        R49 K6 [require]
      303 GETTABLEKS                       R50 R12 K65 ["fetchUGCValidationFromService"]
      305 CALL                             R49 1 1
      306 GETIMPORT                        R50 K55 [game]
      308 LOADK                            R52 K66 ["ToolboxFixUGCBundleValidationCryoThingy1"]
      309 LOADB                            R53 0
      310 NAMECALL                         R50 R50 K57 ["DefineFastFlag"]
      312 CALL                             R50 3 1
      313 GETIMPORT                        R51 K55 [game]
      315 LOADK                            R53 K67 ["ToolboxRemoveRestrictedAssetWarning2"]
      316 NAMECALL                         R51 R51 K68 ["GetFastFlag"]
      318 CALL                             R51 2 1
      319 GETTABLEKS                       R52 R5 K69 ["PureComponent"]
      321 LOADK                            R54 K70 ["ConfigAssetType"]
      322 NAMECALL                         R52 R52 K71 ["extend"]
      324 CALL                             R52 2 1
      325 NEWTABLE                         R53 0 0
      327 GETIMPORT                        R54 K55 [game]
      329 LOADK                            R56 K56 ["BodyFirstInAssetsCategory"]
      330 NAMECALL                         R54 R54 K68 ["GetFastFlag"]
      332 CALL                             R54 2 1
      333 JUMPIFNOT                        R54 ; [+21]
      334 NEWTABLE                         R54 0 4
      336 GETTABLEKS                       R55 R37 K72 ["UGCBundleTypes"]
      338 GETTABLEKS                       R55 R55 K73 ["Body"]
      340 GETTABLEKS                       R56 R37 K72 ["UGCBundleTypes"]
      342 GETTABLEKS                       R56 R56 K74 ["DynamicHead"]
      344 GETTABLEKS                       R57 R37 K72 ["UGCBundleTypes"]
      346 GETTABLEKS                       R57 R57 K75 ["Shoes"]
      348 GETTABLEKS                       R58 R37 K72 ["UGCBundleTypes"]
      350 GETTABLEKS                       R58 R58 K76 ["AvatarAnimations"]
      352 SETLIST                          R54 R55 4 [1]
      354 MOVE                             R53 R54
      355 DUPCLOSURE                       R54 K77 [PROTO_0]
      356 CAPTURE                          VAL R14
      357 DUPCLOSURE                       R55 K78 [PROTO_14]
      358 CAPTURE                          VAL R44
      359 CAPTURE                          VAL R14
      360 CAPTURE                          VAL R17
      361 CAPTURE                          VAL R37
      362 CAPTURE                          VAL R13
      363 CAPTURE                          VAL R43
      364 SETTABLEKS                       R55 R52 K79 ["init"]
      366 DUPCLOSURE                       R55 K80 [PROTO_15]
      367 SETTABLEKS                       R55 R52 K81 ["getAvatarItemCategoryErrorsPrimaryText"]
      369 DUPCLOSURE                       R55 K82 [PROTO_16]
      370 SETTABLEKS                       R55 R52 K83 ["getAvatarItemCategoryErrors"]
      372 DUPCLOSURE                       R55 K84 [PROTO_17]
      373 SETTABLEKS                       R55 R52 K85 ["selectedRadioButtonKeyFor"]
      375 DUPCLOSURE                       R55 K86 [PROTO_18]
      376 SETTABLEKS                       R55 R52 K87 ["isAvatarItemCategorySelected"]
      378 DUPCLOSURE                       R55 K88 [PROTO_22]
      379 CAPTURE                          VAL R2
      380 CAPTURE                          VAL R14
      381 CAPTURE                          VAL R37
      382 SETTABLEKS                       R55 R52 K89 ["onAssetTypeChanged"]
      384 DUPCLOSURE                       R55 K90 [PROTO_24]
      385 CAPTURE                          VAL R37
      386 CAPTURE                          VAL R2
      387 SETTABLEKS                       R55 R52 K91 ["resetValidation"]
      389 DUPCLOSURE                       R55 K92 [PROTO_25]
      390 SETTABLEKS                       R55 R52 K93 ["cancelValidationTasks"]
      392 DUPCLOSURE                       R55 K94 [PROTO_26]
      393 SETTABLEKS                       R55 R52 K95 ["getErrorMessageWithCount"]
      395 DUPCLOSURE                       R55 K96 [PROTO_27]
      396 CAPTURE                          VAL R37
      397 SETTABLEKS                       R55 R52 K97 ["getValidationStatusMessage"]
      399 DUPCLOSURE                       R55 K98 [PROTO_28]
      400 CAPTURE                          VAL R37
      401 SETTABLEKS                       R55 R52 K99 ["getValidationStatusColor"]
      403 DUPCLOSURE                       R55 K100 [PROTO_29]
      404 SETTABLEKS                       R55 R52 K101 ["getAssetCategoryIndex"]
      406 NEWCLOSURE                       R55 P13
      407 CAPTURE                          VAL R14
      408 CAPTURE                          REF R53
      409 CAPTURE                          VAL R19
      410 CAPTURE                          VAL R20
      411 CAPTURE                          VAL R41
      412 SETTABLEKS                       R55 R52 K102 ["getDropdownItemsFor"]
      414 DUPCLOSURE                       R55 K103 [PROTO_32]
      415 SETTABLEKS                       R55 R52 K104 ["getDropdownItems"]
      417 DUPCLOSURE                       R55 K105 [PROTO_33]
      418 CAPTURE                          VAL R14
      419 CAPTURE                          VAL R21
      420 CAPTURE                          VAL R5
      421 CAPTURE                          VAL R24
      422 CAPTURE                          VAL R16
      423 CAPTURE                          VAL R20
      424 SETTABLEKS                       R55 R52 K106 ["getMissingOptionalPartsMessage"]
      426 DUPCLOSURE                       R55 K107 [PROTO_34]
      427 CAPTURE                          VAL R14
      428 CAPTURE                          VAL R21
      429 CAPTURE                          VAL R5
      430 CAPTURE                          VAL R24
      431 CAPTURE                          VAL R16
      432 SETTABLEKS                       R55 R52 K108 ["getUnknownMeshPartMessage"]
      434 DUPCLOSURE                       R55 K109 [PROTO_35]
      435 CAPTURE                          VAL R39
      436 SETTABLEKS                       R55 R52 K110 ["checkAvatarItemDependencies"]
      438 DUPCLOSURE                       R55 K111 [PROTO_36]
      439 CAPTURE                          VAL R40
      440 SETTABLEKS                       R55 R52 K112 ["didMount"]
      442 DUPCLOSURE                       R55 K113 [PROTO_41]
      443 CAPTURE                          VAL R40
      444 CAPTURE                          VAL R39
      445 CAPTURE                          VAL R37
      446 CAPTURE                          VAL R14
      447 CAPTURE                          VAL R15
      448 CAPTURE                          VAL R47
      449 CAPTURE                          VAL R46
      450 CAPTURE                          VAL R48
      451 CAPTURE                          VAL R49
      452 CAPTURE                          VAL R8
      453 SETTABLEKS                       R55 R52 K114 ["didUpdate"]
      455 DUPCLOSURE                       R55 K115 [PROTO_42]
      456 SETTABLEKS                       R55 R52 K116 ["willUnmount"]
      458 DUPCLOSURE                       R55 K117 [PROTO_44]
      459 CAPTURE                          VAL R21
      460 CAPTURE                          VAL R37
      461 CAPTURE                          VAL R39
      462 CAPTURE                          VAL R38
      463 CAPTURE                          VAL R51
      464 CAPTURE                          VAL R5
      465 CAPTURE                          VAL R23
      466 CAPTURE                          VAL R28
      467 CAPTURE                          VAL R4
      468 CAPTURE                          VAL R34
      469 CAPTURE                          VAL R33
      470 CAPTURE                          VAL R31
      471 CAPTURE                          VAL R18
      472 CAPTURE                          VAL R16
      473 SETTABLEKS                       R55 R52 K118 ["render"]
      475 DUPCLOSURE                       R55 K119 [PROTO_45]
      476 CAPTURE                          VAL R40
      477 CAPTURE                          VAL R39
      478 DUPCLOSURE                       R56 K120 [PROTO_49]
      479 CAPTURE                          VAL R25
      480 CAPTURE                          VAL R26
      481 CAPTURE                          VAL R40
      482 CAPTURE                          VAL R27
      483 MOVE                             R57 R10
      484 DUPTABLE                         R58 K122 [{"Stylizer", "Localization"}]
      485 GETTABLEKS                       R59 R9 K121 ["Stylizer"]
      487 SETTABLEKS                       R59 R58 K121 ["Stylizer"]
      489 GETTABLEKS                       R59 R9 K26 ["Localization"]
      491 SETTABLEKS                       R59 R58 K26 ["Localization"]
      493 CALL                             R57 1 1
      494 MOVE                             R58 R52
      495 CALL                             R57 1 1
      496 MOVE                             R52 R57
      497 GETTABLEKS                       R57 R6 K123 ["connect"]
      499 MOVE                             R58 R55
      500 MOVE                             R59 R56
      501 CALL                             R57 2 1
      502 MOVE                             R58 R52
      503 CALL                             R57 1 -1
      504 CLOSEUPVALS                      R53
      505 RETURN                           R57 -1
