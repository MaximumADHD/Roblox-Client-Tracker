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
       38 JUMPIFNOT                        R4 ; [+40]
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
       53 GETUPVAL                         R5 4
       54 GETTABLEKS                       R5 R5 K14 ["ValidateAsset"]
       56 MOVE                             R6 R0
       57 GETUPVAL                         R7 5
       58 GETTABLEKS                       R7 R7 K13 ["instances"]
       60 CALL                             R6 1 1
       61 GETUPVAL                         R7 3
       62 GETTABLEKS                       R7 R7 K10 ["currentAssetType"]
       64 DUPTABLE                         R8 K19 [{["source"] = "Toolbox", ["enforceR15FolderStructure"] = False}]
       65 CALL                             R5 3 1
       66 GETUPVAL                         R6 4
       67 GETTABLEKS                       R6 R6 K20 ["combineResultsIntoLegacy"]
       69 MOVE                             R7 R1
       70 MOVE                             R8 R2
       71 MOVE                             R9 R5
       72 NEWCLOSURE                       R10 P1
       73 CAPTURE                          UPVAL U6
       74 CAPTURE                          UPVAL U5
       75 CALL                             R6 4 2
       76 MOVE                             R1 R6
       77 MOVE                             R2 R7
       78 JUMP                             ; [+3]
       79 LOADB                            R1 1
       80 NEWTABLE                         R2 0 0
       82 GETUPVAL                         R5 7
       83 GETTABLEKS                       R5 R5 K21 ["validationCallback"]
       85 MOVE                             R6 R1
       86 MOVE                             R7 R2
       87 CALL                             R5 2 0
       88 RETURN                           R0 0

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
       23 GETTABLEKS                       R7 R2 K8 ["currentAssetType"]
       25 GETIMPORT                        R9 K12 [Enum.AssetType.Model]
       27 JUMPIFEQ                         R7 R9 ; [+2]
       29 LOADB                            R8 0 +1
       30 LOADB                            R8 1
       31 GETTABLEKS                       R10 R1 K13 ["assetTypeEnum"]
       33 GETIMPORT                        R11 K15 [Enum.AssetType.Animation]
       35 JUMPIFEQ                         R10 R11 ; [+2]
       37 LOADB                            R9 0 +1
       38 LOADB                            R9 1
       39 LOADK                            R12 K16 ["AssetConfig"]
       40 LOADK                            R13 K17 ["AvatarItemsErrorTitle"]
       41 NAMECALL                         R10 R3 K18 ["getText"]
       43 CALL                             R10 3 1
       44 LOADK                            R13 K19 ["Common"]
       45 LOADK                            R14 K20 ["Close"]
       46 NAMECALL                         R11 R3 K18 ["getText"]
       48 CALL                             R11 3 1
       49 LOADK                            R14 K21 ["General"]
       50 LOADK                            R15 K22 ["ContentType"]
       51 NAMECALL                         R12 R3 K18 ["getText"]
       53 CALL                             R12 3 1
       54 LOADK                            R15 K21 ["General"]
       55 LOADK                            R16 K23 ["AssetCategory"]
       56 NAMECALL                         R13 R3 K18 ["getText"]
       58 CALL                             R13 3 1
       59 LOADNIL                          R14
       60 JUMPIFNOT                        R8 ; [+8]
       61 GETUPVAL                         R15 2
       62 JUMPIF                           R15 ; [+6]
       63 LOADK                            R17 K16 ["AssetConfig"]
       64 LOADK                            R18 K24 ["ModelPublishWarning"]
       65 NAMECALL                         R15 R3 K18 ["getText"]
       67 CALL                             R15 3 1
       68 MOVE                             R14 R15
       69 GETTABLEKS                       R15 R1 K25 ["canAffordUploadFee"]
       71 GETTABLEKS                       R16 R1 K26 ["uploadFee"]
       73 LOADN                            R18 0
       74 JUMPIFNOTLT                      R18 R16 ; [+3]
       76 NOT                              R17 R15
       77 JUMP                             ; [+1]
       78 LOADB                            R17 0
       79 LOADNIL                          R18
       80 JUMPIFNOT                        R17 ; [+6]
       81 LOADK                            R21 K16 ["AssetConfig"]
       82 LOADK                            R22 K27 ["InsufficientRobuxWarning"]
       83 NAMECALL                         R19 R3 K18 ["getText"]
       85 CALL                             R19 3 1
       86 MOVE                             R18 R19
       87 GETTABLEKS                       R19 R2 K28 ["displayValidationErrorMessages"]
       89 NEWTABLE                         R20 0 0
       91 LOADK                            R23 K16 ["AssetConfig"]
       92 LOADK                            R24 K29 ["EmoteAnimationWarning"]
       93 NAMECALL                         R21 R3 K18 ["getText"]
       95 CALL                             R21 3 1
       96 GETTABLEKS                       R22 R2 K30 ["displayAssetSelection"]
       98 JUMPIFNOTEQKNIL                  R22 ; [+6]
      100 NEWCLOSURE                       R24 P0
      101 CAPTURE                          VAL R9
      102 NAMECALL                         R22 R0 K31 ["setState"]
      104 CALL                             R22 2 0
      105 GETTABLEKS                       R22 R2 K30 ["displayAssetSelection"]
      107 GETUPVAL                         R23 3
      108 GETTABLEKS                       R23 R23 K32 ["createElement"]
      110 GETUPVAL                         R24 4
      111 DUPTABLE                         R25 K44 [{["AutomaticSize"], ["BackgroundColor3"], ["BackgroundTransparency"] = 1, ["HorizontalAlignment"], ["Layout"], ["LayoutOrder"], ["Padding"], ["Spacing"] = 30, ["VerticalAlignment"]}]
      112 GETIMPORT                        R26 K46 [Enum.AutomaticSize.XY]
      114 SETTABLEKS                       R26 R25 K33 ["AutomaticSize"]
      116 GETTABLEKS                       R26 R4 K47 ["typeSelection"]
      118 GETTABLEKS                       R26 R26 K48 ["background"]
      120 SETTABLEKS                       R26 R25 K34 ["BackgroundColor3"]
      122 GETIMPORT                        R26 K50 [Enum.HorizontalAlignment.Left]
      124 SETTABLEKS                       R26 R25 K37 ["HorizontalAlignment"]
      126 GETIMPORT                        R26 K53 [Enum.FillDirection.Vertical]
      128 SETTABLEKS                       R26 R25 K38 ["Layout"]
      130 GETTABLEKS                       R26 R1 K39 ["LayoutOrder"]
      132 SETTABLEKS                       R26 R25 K39 ["LayoutOrder"]
      134 DUPTABLE                         R26 K56 [{["Bottom"] = 32}]
      135 SETTABLEKS                       R26 R25 K40 ["Padding"]
      137 GETIMPORT                        R26 K58 [Enum.VerticalAlignment.Top]
      139 SETTABLEKS                       R26 R25 K43 ["VerticalAlignment"]
      141 DUPTABLE                         R26 K62 [{"ValidationErrorMessageBox", "ContentTypeRadioButtons", "AssetCategoryDropDown", "EmoteAnimationWarning"}]
      142 JUMPIFNOT                        R19 ; [+44]
      143 GETUPVAL                         R27 3
      144 GETTABLEKS                       R27 R27 K32 ["createElement"]
      146 GETUPVAL                         R28 5
      147 DUPTABLE                         R29 K76 [{["buttons"], ["Icon"] = "rbxasset://textures/ui/ErrorIcon.png", ["InformativeText"], ["onButtonClicked"], ["onClose"], ["Text"], ["Title"], ["isScrollable"] = True, ["messageBoxHeight"] = 500, ["isResizable"] = True}]
      148 NEWTABLE                         R30 0 1
      150 DUPTABLE                         R31 K81 [{["Text"], ["Font"], ["TextSize"], ["action"] = "yes"}]
      151 SETTABLEKS                       R11 R31 K69 ["Text"]
      153 GETTABLEKS                       R32 R4 K77 ["Font"]
      155 SETTABLEKS                       R32 R31 K77 ["Font"]
      157 GETTABLEKS                       R32 R4 K78 ["TextSize"]
      159 SETTABLEKS                       R32 R31 K78 ["TextSize"]
      161 SETLIST                          R30 R31 1 [1]
      163 SETTABLEKS                       R30 R29 K63 ["buttons"]
      165 NAMECALL                         R30 R0 K82 ["getAvatarItemCategoryErrors"]
      167 CALL                             R30 1 1
      168 SETTABLEKS                       R30 R29 K66 ["InformativeText"]
      170 GETTABLEKS                       R30 R0 K83 ["onValidationErrorMessageBoxClosed"]
      172 SETTABLEKS                       R30 R29 K67 ["onButtonClicked"]
      174 GETTABLEKS                       R30 R0 K83 ["onValidationErrorMessageBoxClosed"]
      176 SETTABLEKS                       R30 R29 K68 ["onClose"]
      178 NAMECALL                         R30 R0 K84 ["getAvatarItemCategoryErrorsPrimaryText"]
      180 CALL                             R30 1 1
      181 SETTABLEKS                       R30 R29 K69 ["Text"]
      183 SETTABLEKS                       R10 R29 K70 ["Title"]
      185 CALL                             R27 2 1
      186 JUMP                             ; [+1]
      187 LOADNIL                          R27
      188 SETTABLEKS                       R27 R26 K59 ["ValidationErrorMessageBox"]
      190 JUMPIFNOT                        R22 ; [+32]
      191 GETUPVAL                         R27 6
      192 GETTABLEKS                       R27 R27 K32 ["createElement"]
      194 GETUPVAL                         R28 7
      195 DUPTABLE                         R29 K96 [{["layoutOrder"], ["contentTypeTitle"], ["currentSelectedRadioButtonKey"], ["onRadioButtonClicked"], ["warningMessageText"] = , ["warningMessageLinkMap"], ["isModel"], ["modelPublishWarningText"], ["insufficientRobuxWarningText"], ["theme"]}]
      196 NAMECALL                         R30 R5 K97 ["getNextOrder"]
      198 CALL                             R30 1 1
      199 SETTABLEKS                       R30 R29 K85 ["layoutOrder"]
      201 SETTABLEKS                       R12 R29 K86 ["contentTypeTitle"]
      203 GETTABLEKS                       R30 R2 K87 ["currentSelectedRadioButtonKey"]
      205 SETTABLEKS                       R30 R29 K87 ["currentSelectedRadioButtonKey"]
      207 GETTABLEKS                       R30 R0 K88 ["onRadioButtonClicked"]
      209 SETTABLEKS                       R30 R29 K88 ["onRadioButtonClicked"]
      211 SETTABLEKS                       R20 R29 K91 ["warningMessageLinkMap"]
      213 SETTABLEKS                       R8 R29 K92 ["isModel"]
      215 SETTABLEKS                       R14 R29 K93 ["modelPublishWarningText"]
      217 SETTABLEKS                       R18 R29 K94 ["insufficientRobuxWarningText"]
      219 SETTABLEKS                       R4 R29 K95 ["theme"]
      221 CALL                             R27 2 1
      222 JUMP                             ; [+1]
      223 LOADNIL                          R27
      224 SETTABLEKS                       R27 R26 K60 ["ContentTypeRadioButtons"]
      226 JUMPIFNOT                        R22 ; [+62]
      227 GETUPVAL                         R27 6
      228 GETTABLEKS                       R27 R27 K32 ["createElement"]
      230 GETUPVAL                         R28 8
      231 DUPTABLE                         R29 K98 [{"LayoutOrder", "Title"}]
      232 NAMECALL                         R30 R5 K97 ["getNextOrder"]
      234 CALL                             R30 1 1
      235 SETTABLEKS                       R30 R29 K39 ["LayoutOrder"]
      237 SETTABLEKS                       R13 R29 K70 ["Title"]
      239 DUPTABLE                         R30 K100 [{"AssetCategoryRow"}]
      240 GETUPVAL                         R31 6
      241 GETTABLEKS                       R31 R31 K32 ["createElement"]
      243 GETUPVAL                         R32 9
      244 DUPTABLE                         R33 K111 [{["dropdownItems"], ["selectedDropDownIndex"], ["onItemClicked"], ["placeholder"], ["dropdownWidth"] = 400, ["showError"], ["validationStatusMessage"], ["validationStatusColor"], ["onErrorClicked"]}]
      245 MOVE                             R36 R3
      246 NAMECALL                         R34 R0 K112 ["getDropdownItems"]
      248 CALL                             R34 2 1
      249 SETTABLEKS                       R34 R33 K101 ["dropdownItems"]
      251 NAMECALL                         R34 R0 K113 ["getAssetCategoryIndex"]
      253 CALL                             R34 1 1
      254 SETTABLEKS                       R34 R33 K102 ["selectedDropDownIndex"]
      256 GETTABLEKS                       R34 R0 K114 ["setAssetCategoryIndex"]
      258 SETTABLEKS                       R34 R33 K103 ["onItemClicked"]
      260 LOADK                            R36 K115 ["Dropdown"]
      261 LOADK                            R37 K116 ["ChooseOne"]
      262 NAMECALL                         R34 R3 K18 ["getText"]
      264 CALL                             R34 3 1
      265 SETTABLEKS                       R34 R33 K104 ["placeholder"]
      267 SETTABLEKS                       R6 R33 K107 ["showError"]
      269 NAMECALL                         R34 R0 K117 ["getValidationStatusMessage"]
      271 CALL                             R34 1 1
      272 SETTABLEKS                       R34 R33 K108 ["validationStatusMessage"]
      274 MOVE                             R36 R4
      275 NAMECALL                         R34 R0 K118 ["getValidationStatusColor"]
      277 CALL                             R34 2 1
      278 SETTABLEKS                       R34 R33 K109 ["validationStatusColor"]
      280 GETTABLEKS                       R34 R0 K119 ["openValidationErrorMessageBox"]
      282 SETTABLEKS                       R34 R33 K110 ["onErrorClicked"]
      284 CALL                             R31 2 1
      285 SETTABLEKS                       R31 R30 K99 ["AssetCategoryRow"]
      287 CALL                             R27 3 1
      288 JUMP                             ; [+1]
      289 LOADNIL                          R27
      290 SETTABLEKS                       R27 R26 K61 ["AssetCategoryDropDown"]
      292 GETIMPORT                        R28 K121 [Enum.AssetType.EmoteAnimation]
      294 JUMPIFNOTEQ                      R7 R28 ; [+103]
      296 GETUPVAL                         R27 3
      297 GETTABLEKS                       R27 R27 K32 ["createElement"]
      299 GETUPVAL                         R28 4
      300 DUPTABLE                         R29 K124 [{["AutomaticSize"], ["HorizontalAlignment"], ["Layout"], ["LayoutOrder"], ["Size"], ["Spacing"] = 8, ["VerticalAlignment"]}]
      301 GETIMPORT                        R30 K126 [Enum.AutomaticSize.Y]
      303 SETTABLEKS                       R30 R29 K33 ["AutomaticSize"]
      305 GETIMPORT                        R30 K50 [Enum.HorizontalAlignment.Left]
      307 SETTABLEKS                       R30 R29 K37 ["HorizontalAlignment"]
      309 GETIMPORT                        R30 K128 [Enum.FillDirection.Horizontal]
      311 SETTABLEKS                       R30 R29 K38 ["Layout"]
      313 NAMECALL                         R30 R5 K97 ["getNextOrder"]
      315 CALL                             R30 1 1
      316 SETTABLEKS                       R30 R29 K39 ["LayoutOrder"]
      318 GETIMPORT                        R30 K131 [UDim2.fromScale]
      320 LOADN                            R31 1
      321 LOADN                            R32 0
      322 CALL                             R30 2 1
      323 SETTABLEKS                       R30 R29 K122 ["Size"]
      325 GETIMPORT                        R30 K58 [Enum.VerticalAlignment.Top]
      327 SETTABLEKS                       R30 R29 K43 ["VerticalAlignment"]
      329 DUPTABLE                         R30 K133 [{"Icon", "UGCWarningText"}]
      330 GETUPVAL                         R31 3
      331 GETTABLEKS                       R31 R31 K32 ["createElement"]
      333 LOADK                            R32 K134 ["ImageLabel"]
      334 DUPTABLE                         R33 K137 [{["BackgroundTransparency"] = 1, ["Image"], ["ImageColor3"], ["LayoutOrder"] = 1, ["Size"]}]
      335 GETUPVAL                         R34 10
      336 GETTABLEKS                       R34 R34 K138 ["WARNING_ICON"]
      338 SETTABLEKS                       R34 R33 K135 ["Image"]
      340 GETTABLEKS                       R34 R4 K139 ["assetConfig"]
      342 GETTABLEKS                       R34 R34 K140 ["warningColor"]
      344 SETTABLEKS                       R34 R33 K136 ["ImageColor3"]
      346 GETIMPORT                        R34 K142 [UDim2.fromOffset]
      348 LOADN                            R35 24
      349 LOADN                            R36 24
      350 CALL                             R34 2 1
      351 SETTABLEKS                       R34 R33 K122 ["Size"]
      353 CALL                             R31 2 1
      354 SETTABLEKS                       R31 R30 K64 ["Icon"]
      356 GETUPVAL                         R31 3
      357 GETTABLEKS                       R31 R31 K32 ["createElement"]
      359 LOADK                            R32 K143 ["TextLabel"]
      360 DUPTABLE                         R33 K150 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Font"], ["LayoutOrder"] = 2, ["Size"], ["Text"], ["TextColor3"], ["TextSize"] = 24, ["TextWrapped"] = True, ["TextXAlignment"], ["TextYAlignment"]}]
      361 GETIMPORT                        R34 K126 [Enum.AutomaticSize.Y]
      363 SETTABLEKS                       R34 R33 K33 ["AutomaticSize"]
      365 GETUPVAL                         R34 11
      366 GETTABLEKS                       R34 R34 K151 ["FONT"]
      368 SETTABLEKS                       R34 R33 K77 ["Font"]
      370 GETIMPORT                        R34 K152 [UDim2.new]
      372 LOADN                            R35 1
      373 LOADN                            R36 -32
      374 CALL                             R34 2 1
      375 SETTABLEKS                       R34 R33 K122 ["Size"]
      377 SETTABLEKS                       R21 R33 K69 ["Text"]
      379 GETTABLEKS                       R34 R4 K139 ["assetConfig"]
      381 GETTABLEKS                       R34 R34 K140 ["warningColor"]
      383 SETTABLEKS                       R34 R33 K145 ["TextColor3"]
      385 GETIMPORT                        R34 K153 [Enum.TextXAlignment.Left]
      387 SETTABLEKS                       R34 R33 K148 ["TextXAlignment"]
      389 GETIMPORT                        R34 K155 [Enum.TextYAlignment.Center]
      391 SETTABLEKS                       R34 R33 K149 ["TextYAlignment"]
      393 CALL                             R31 2 1
      394 SETTABLEKS                       R31 R30 K132 ["UGCWarningText"]
      396 CALL                             R27 3 1
      397 JUMP                             ; [+1]
      398 LOADNIL                          R27
      399 SETTABLEKS                       R27 R26 K29 ["EmoteAnimationWarning"]
      401 CALL                             R23 3 -1
      402 RETURN                           R23 -1

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
      139 GETTABLEKS                       R28 R28 K35 ["Components"]
      141 GETTABLEKS                       R28 R28 K36 ["MessageBox"]
      143 GETTABLEKS                       R28 R28 K36 ["MessageBox"]
      145 CALL                             R27 1 1
      146 GETIMPORT                        R28 K6 [require]
      148 GETTABLEKS                       R29 R0 K16 ["Src"]
      150 GETTABLEKS                       R29 R29 K35 ["Components"]
      152 GETTABLEKS                       R29 R29 K37 ["StyledScrollingFrame"]
      154 CALL                             R28 1 1
      155 GETTABLEKS                       R29 R0 K16 ["Src"]
      157 GETTABLEKS                       R29 R29 K35 ["Components"]
      159 GETTABLEKS                       R29 R29 K38 ["AssetConfiguration"]
      161 GETIMPORT                        R30 K6 [require]
      163 GETTABLEKS                       R31 R29 K39 ["AssetCategoryRow"]
      165 CALL                             R30 1 1
      166 GETIMPORT                        R31 K6 [require]
      168 GETTABLEKS                       R32 R29 K40 ["AssetConfigDropdown"]
      170 CALL                             R31 1 1
      171 GETIMPORT                        R32 K6 [require]
      173 GETTABLEKS                       R33 R29 K41 ["ConfigSectionWrapper"]
      175 CALL                             R32 1 1
      176 GETIMPORT                        R33 K6 [require]
      178 GETTABLEKS                       R34 R29 K42 ["ContentTypeRadioButtons"]
      180 CALL                             R33 1 1
      181 GETIMPORT                        R34 K6 [require]
      183 GETTABLEKS                       R35 R29 K43 ["UGCBundleValidation"]
      185 CALL                             R34 1 1
      186 GETIMPORT                        R35 K6 [require]
      188 GETTABLEKS                       R36 R29 K44 ["ValidationStatus"]
      190 CALL                             R35 1 1
      191 GETIMPORT                        R36 K6 [require]
      193 GETTABLEKS                       R37 R12 K45 ["AssetConfigConstants"]
      195 CALL                             R36 1 1
      196 GETIMPORT                        R37 K6 [require]
      198 GETTABLEKS                       R38 R29 K46 ["DataConsentToggle"]
      200 CALL                             R37 1 1
      201 GETIMPORT                        R38 K48 [game]
      203 LOADK                            R40 K49 ["BodyFirstInAssetsCategory"]
      204 LOADB                            R41 0
      205 NAMECALL                         R38 R38 K50 ["DefineFastFlag"]
      207 CALL                             R38 3 0
      208 GETIMPORT                        R38 K48 [game]
      210 LOADK                            R40 K51 ["DisableSubmitButtonForValidationInInit"]
      211 LOADB                            R41 0
      212 NAMECALL                         R38 R38 K50 ["DefineFastFlag"]
      214 CALL                             R38 3 1
      215 GETIMPORT                        R39 K6 [require]
      217 GETTABLEKS                       R40 R12 K52 ["SharedFlags"]
      219 GETTABLEKS                       R40 R40 K53 ["getFFlagEnableUGCUploadFlowAnalytics"]
      221 CALL                             R39 1 1
      222 GETIMPORT                        R40 K6 [require]
      224 GETTABLEKS                       R41 R12 K52 ["SharedFlags"]
      226 GETTABLEKS                       R41 R41 K54 ["getFFlagEnableUGCBundleUploadBodyScale"]
      228 CALL                             R40 1 1
      229 GETIMPORT                        R41 K6 [require]
      231 GETTABLEKS                       R42 R0 K16 ["Src"]
      233 GETTABLEKS                       R42 R42 K55 ["Flags"]
      235 GETTABLEKS                       R42 R42 K56 ["getFFlagRequireBodyColorsForBodyUpload"]
      237 CALL                             R41 1 1
      238 GETIMPORT                        R42 K6 [require]
      240 GETTABLEKS                       R43 R0 K16 ["Src"]
      242 GETTABLEKS                       R43 R43 K55 ["Flags"]
      244 GETTABLEKS                       R43 R43 K57 ["getFStringAssetsToBypassValidation"]
      246 CALL                             R42 1 1
      247 GETIMPORT                        R43 K6 [require]
      249 GETTABLEKS                       R44 R0 K16 ["Src"]
      251 GETTABLEKS                       R44 R44 K55 ["Flags"]
      253 GETTABLEKS                       R44 R44 K58 ["getFFlagAssetBypassValidation"]
      255 CALL                             R43 1 1
      256 GETIMPORT                        R44 K48 [game]
      258 LOADK                            R46 K59 ["ToolboxFixUGCBundleValidationCryoThingy1"]
      259 LOADB                            R47 0
      260 NAMECALL                         R44 R44 K50 ["DefineFastFlag"]
      262 CALL                             R44 3 1
      263 GETIMPORT                        R45 K48 [game]
      265 LOADK                            R47 K60 ["ToolboxRemoveRestrictedAssetWarning2"]
      266 NAMECALL                         R45 R45 K61 ["GetFastFlag"]
      268 CALL                             R45 2 1
      269 GETIMPORT                        R46 K6 [require]
      271 GETTABLEKS                       R47 R0 K16 ["Src"]
      273 GETTABLEKS                       R47 R47 K55 ["Flags"]
      275 GETTABLEKS                       R47 R47 K62 ["getFFlagEnableUploadingAvatarAnimations"]
      277 CALL                             R46 1 1
      278 GETTABLEKS                       R47 R5 K63 ["PureComponent"]
      280 LOADK                            R49 K64 ["ConfigAssetType"]
      281 NAMECALL                         R47 R47 K65 ["extend"]
      283 CALL                             R47 2 1
      284 NEWTABLE                         R48 0 0
      286 GETIMPORT                        R49 K48 [game]
      288 LOADK                            R51 K49 ["BodyFirstInAssetsCategory"]
      289 NAMECALL                         R49 R49 K61 ["GetFastFlag"]
      291 CALL                             R49 2 1
      292 JUMPIFNOT                        R49 ; [+30]
      293 NEWTABLE                         R49 0 3
      295 GETTABLEKS                       R50 R36 K66 ["UGCBundleTypes"]
      297 GETTABLEKS                       R50 R50 K67 ["Body"]
      299 GETTABLEKS                       R51 R36 K66 ["UGCBundleTypes"]
      301 GETTABLEKS                       R51 R51 K68 ["DynamicHead"]
      303 GETTABLEKS                       R52 R36 K66 ["UGCBundleTypes"]
      305 GETTABLEKS                       R52 R52 K69 ["Shoes"]
      307 SETLIST                          R49 R50 3 [1]
      309 MOVE                             R48 R49
      310 MOVE                             R49 R46
      311 CALL                             R49 0 1
      312 JUMPIFNOT                        R49 ; [+10]
      313 GETTABLEKS                       R51 R36 K66 ["UGCBundleTypes"]
      315 GETTABLEKS                       R51 R51 K70 ["AvatarAnimations"]
      317 FASTCALL2                        TABLE_INSERT R48 R51 ; [+4]
      319 MOVE                             R50 R48
      320 GETIMPORT                        R49 K73 [table.insert]
      322 CALL                             R49 2 0
      323 DUPCLOSURE                       R49 K74 [PROTO_0]
      324 CAPTURE                          VAL R14
      325 DUPCLOSURE                       R50 K75 [PROTO_14]
      326 CAPTURE                          VAL R39
      327 CAPTURE                          VAL R14
      328 CAPTURE                          VAL R17
      329 CAPTURE                          VAL R36
      330 CAPTURE                          VAL R13
      331 CAPTURE                          VAL R38
      332 SETTABLEKS                       R50 R47 K76 ["init"]
      334 DUPCLOSURE                       R50 K77 [PROTO_15]
      335 SETTABLEKS                       R50 R47 K78 ["getAvatarItemCategoryErrorsPrimaryText"]
      337 DUPCLOSURE                       R50 K79 [PROTO_16]
      338 SETTABLEKS                       R50 R47 K80 ["getAvatarItemCategoryErrors"]
      340 DUPCLOSURE                       R50 K81 [PROTO_17]
      341 SETTABLEKS                       R50 R47 K82 ["selectedRadioButtonKeyFor"]
      343 DUPCLOSURE                       R50 K83 [PROTO_18]
      344 SETTABLEKS                       R50 R47 K84 ["isAvatarItemCategorySelected"]
      346 DUPCLOSURE                       R50 K85 [PROTO_22]
      347 CAPTURE                          VAL R2
      348 CAPTURE                          VAL R14
      349 CAPTURE                          VAL R36
      350 SETTABLEKS                       R50 R47 K86 ["onAssetTypeChanged"]
      352 DUPCLOSURE                       R50 K87 [PROTO_24]
      353 CAPTURE                          VAL R36
      354 CAPTURE                          VAL R2
      355 SETTABLEKS                       R50 R47 K88 ["resetValidation"]
      357 DUPCLOSURE                       R50 K89 [PROTO_25]
      358 SETTABLEKS                       R50 R47 K90 ["cancelValidationTasks"]
      360 DUPCLOSURE                       R50 K91 [PROTO_26]
      361 SETTABLEKS                       R50 R47 K92 ["getErrorMessageWithCount"]
      363 DUPCLOSURE                       R50 K93 [PROTO_27]
      364 CAPTURE                          VAL R36
      365 SETTABLEKS                       R50 R47 K94 ["getValidationStatusMessage"]
      367 DUPCLOSURE                       R50 K95 [PROTO_28]
      368 CAPTURE                          VAL R36
      369 SETTABLEKS                       R50 R47 K96 ["getValidationStatusColor"]
      371 DUPCLOSURE                       R50 K97 [PROTO_29]
      372 SETTABLEKS                       R50 R47 K98 ["getAssetCategoryIndex"]
      374 NEWCLOSURE                       R50 P13
      375 CAPTURE                          VAL R46
      376 CAPTURE                          VAL R14
      377 CAPTURE                          REF R48
      378 CAPTURE                          VAL R19
      379 CAPTURE                          VAL R20
      380 SETTABLEKS                       R50 R47 K99 ["getDropdownItemsFor"]
      382 DUPCLOSURE                       R50 K100 [PROTO_32]
      383 SETTABLEKS                       R50 R47 K101 ["getDropdownItems"]
      385 DUPCLOSURE                       R50 K102 [PROTO_33]
      386 CAPTURE                          VAL R14
      387 CAPTURE                          VAL R21
      388 CAPTURE                          VAL R5
      389 CAPTURE                          VAL R24
      390 CAPTURE                          VAL R16
      391 CAPTURE                          VAL R20
      392 SETTABLEKS                       R50 R47 K103 ["getMissingOptionalPartsMessage"]
      394 DUPCLOSURE                       R50 K104 [PROTO_34]
      395 CAPTURE                          VAL R14
      396 CAPTURE                          VAL R21
      397 CAPTURE                          VAL R5
      398 CAPTURE                          VAL R24
      399 CAPTURE                          VAL R16
      400 SETTABLEKS                       R50 R47 K105 ["getUnknownMeshPartMessage"]
      402 DUPCLOSURE                       R50 K106 [PROTO_38]
      403 CAPTURE                          VAL R36
      404 CAPTURE                          VAL R14
      405 CAPTURE                          VAL R15
      406 CAPTURE                          VAL R43
      407 CAPTURE                          VAL R42
      408 CAPTURE                          VAL R8
      409 SETTABLEKS                       R50 R47 K107 ["didUpdate"]
      411 DUPCLOSURE                       R50 K108 [PROTO_39]
      412 SETTABLEKS                       R50 R47 K109 ["willUnmount"]
      414 DUPCLOSURE                       R50 K110 [PROTO_41]
      415 CAPTURE                          VAL R21
      416 CAPTURE                          VAL R36
      417 CAPTURE                          VAL R45
      418 CAPTURE                          VAL R5
      419 CAPTURE                          VAL R23
      420 CAPTURE                          VAL R27
      421 CAPTURE                          VAL R4
      422 CAPTURE                          VAL R33
      423 CAPTURE                          VAL R32
      424 CAPTURE                          VAL R30
      425 CAPTURE                          VAL R18
      426 CAPTURE                          VAL R16
      427 SETTABLEKS                       R50 R47 K111 ["render"]
      429 DUPCLOSURE                       R50 K112 [PROTO_42]
      430 DUPCLOSURE                       R51 K113 [PROTO_45]
      431 CAPTURE                          VAL R25
      432 CAPTURE                          VAL R26
      433 MOVE                             R52 R10
      434 DUPTABLE                         R53 K115 [{"Stylizer", "Localization"}]
      435 GETTABLEKS                       R54 R9 K114 ["Stylizer"]
      437 SETTABLEKS                       R54 R53 K114 ["Stylizer"]
      439 GETTABLEKS                       R54 R9 K26 ["Localization"]
      441 SETTABLEKS                       R54 R53 K26 ["Localization"]
      443 CALL                             R52 1 1
      444 MOVE                             R53 R47
      445 CALL                             R52 1 1
      446 MOVE                             R47 R52
      447 GETTABLEKS                       R52 R6 K116 ["connect"]
      449 MOVE                             R53 R50
      450 MOVE                             R54 R51
      451 CALL                             R52 2 1
      452 MOVE                             R53 R47
      453 CALL                             R52 1 -1
      454 CLOSEUPVALS                      R48
      455 RETURN                           R52 -1
