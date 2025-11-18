PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["isCatalogAsset"]
  MOVE R2 R0
  CALL R1 1 1
  JUMPIF R1 [+5]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["isUGCBundleType"]
  MOVE R2 R0
  CALL R1 1 1
  RETURN R1 1

PROTO_1:
  DUPTABLE R0 K1 [{"dropdownAvatarCategoryIndex"}]
  GETUPVAL R1 0
  SETTABLEKS R1 R0 K0 ["dropdownAvatarCategoryIndex"]
  RETURN R0 1

PROTO_2:
  DUPTABLE R0 K1 [{"dropdownDevelopmentCategoryIndex"}]
  GETUPVAL R1 0
  SETTABLEKS R1 R0 K0 ["dropdownDevelopmentCategoryIndex"]
  RETURN R0 1

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["state"]
  GETTABLEKS R2 R1 K1 ["currentSelectedRadioButtonKey"]
  JUMPIFNOTEQKS R2 K2 ["AvatarItem"] [+8]
  GETUPVAL R2 0
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  NAMECALL R2 R2 K3 ["setState"]
  CALL R2 2 0
  RETURN R0 0
  GETUPVAL R2 0
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  NAMECALL R2 R2 K3 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_4:
  DUPTABLE R0 K1 [{"currentSelectedRadioButtonKey"}]
  GETUPVAL R1 0
  SETTABLEKS R1 R0 K0 ["currentSelectedRadioButtonKey"]
  RETURN R0 1

PROTO_5:
  GETUPVAL R1 0
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  NAMECALL R1 R1 K0 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_6:
  DUPTABLE R0 K1 [{"displayValidationErrorMessages"}]
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["displayValidationErrorMessages"]
  RETURN R0 1

PROTO_7:
  GETUPVAL R0 0
  DUPCLOSURE R2 K0 [PROTO_6]
  NAMECALL R0 R0 K1 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_8:
  DUPTABLE R0 K1 [{"displayValidationErrorMessages"}]
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["displayValidationErrorMessages"]
  RETURN R0 1

PROTO_9:
  GETUPVAL R0 0
  DUPCLOSURE R2 K0 [PROTO_8]
  NAMECALL R0 R0 K1 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_10:
  DUPTABLE R0 K2 [{"validationState", "validationFailureReasons"}]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["VALIDATION_STATE"]
  GETTABLEKS R1 R2 K4 ["SUCCESS"]
  SETTABLEKS R1 R0 K0 ["validationState"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K1 ["validationFailureReasons"]
  RETURN R0 1

PROTO_11:
  DUPTABLE R0 K2 [{"validationState", "validationFailureReasons"}]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["VALIDATION_STATE"]
  GETTABLEKS R1 R2 K4 ["FAILURE"]
  SETTABLEKS R1 R0 K0 ["validationState"]
  GETUPVAL R1 1
  SETTABLEKS R1 R0 K1 ["validationFailureReasons"]
  RETURN R0 1

PROTO_12:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["state"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["props"]
  LOADNIL R4
  GETUPVAL R5 1
  CALL R5 0 1
  JUMPIFNOT R5 [+7]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K2 ["getAvatarAssetTypeAsString"]
  GETTABLEKS R6 R2 K3 ["currentAssetType"]
  CALL R5 1 1
  MOVE R4 R5
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K4 ["shouldDebugWarnings"]
  CALL R5 0 1
  JUMPIFNOT R5 [+17]
  GETTABLEKS R7 R3 K5 ["validationState"]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K6 ["VALIDATION_STATE"]
  GETTABLEKS R8 R9 K7 ["VALIDATING"]
  JUMPIFEQ R7 R8 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  FASTCALL2K ASSERT R6 K8 [+4]
  LOADK R7 K8 ["Validation state is expected to be `Validating`."]
  GETIMPORT R5 K10 [assert]
  CALL R5 2 0
  JUMPIFNOT R0 [+40]
  GETTABLEKS R5 R3 K11 ["setValidationState"]
  JUMPIFNOT R5 [+17]
  GETTABLEKS R5 R3 K12 ["setValidationFailureReasons"]
  JUMPIFNOT R5 [+14]
  GETTABLEKS R5 R3 K11 ["setValidationState"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K6 ["VALIDATION_STATE"]
  GETTABLEKS R6 R7 K13 ["SUCCESS"]
  CALL R5 1 0
  GETTABLEKS R5 R3 K12 ["setValidationFailureReasons"]
  NEWTABLE R6 0 0
  CALL R5 1 0
  JUMP [+6]
  GETUPVAL R5 0
  DUPCLOSURE R7 K14 [PROTO_10]
  CAPTURE UPVAL U4
  NAMECALL R5 R5 K15 ["setState"]
  CALL R5 2 0
  GETUPVAL R5 1
  CALL R5 0 1
  JUMPIFNOT R5 [+92]
  GETUPVAL R6 5
  GETTABLEKS R5 R6 K16 ["UGCBundleValidationEvent"]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K17 ["Status"]
  GETTABLEKS R6 R7 K18 ["Success"]
  MOVE R7 R4
  CALL R5 2 0
  JUMP [+81]
  LENGTH R5 R1
  LOADN R6 0
  JUMPIFNOTLT R6 R5 [+17]
  GETTABLEKS R5 R3 K19 ["Localization"]
  LOADK R7 K20 ["AssetConfig"]
  LOADK R8 K21 ["AssetConfigOutputErrorHeading"]
  DUPTABLE R9 K23 [{"errorCount"}]
  LENGTH R10 R1
  SETTABLEKS R10 R9 K22 ["errorCount"]
  NAMECALL R5 R5 K24 ["getText"]
  CALL R5 4 1
  GETIMPORT R6 K26 [warn]
  MOVE R7 R5
  MOVE R8 R1
  CALL R6 2 0
  LENGTH R6 R1
  LOADN R7 0
  JUMPIFNOTLT R7 R6 [+3]
  MOVE R5 R1
  JUMP [+11]
  NEWTABLE R5 0 1
  GETTABLEKS R6 R3 K19 ["Localization"]
  LOADK R8 K20 ["AssetConfig"]
  LOADK R9 K27 ["ValidationErrorUnknown"]
  NAMECALL R6 R6 K24 ["getText"]
  CALL R6 3 -1
  SETLIST R5 R6 -1 [1]
  GETTABLEKS R6 R3 K11 ["setValidationState"]
  JUMPIFNOT R6 [+16]
  GETTABLEKS R6 R3 K12 ["setValidationFailureReasons"]
  JUMPIFNOT R6 [+13]
  GETTABLEKS R6 R3 K11 ["setValidationState"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K6 ["VALIDATION_STATE"]
  GETTABLEKS R7 R8 K28 ["FAILURE"]
  CALL R6 1 0
  GETTABLEKS R6 R3 K12 ["setValidationFailureReasons"]
  MOVE R7 R5
  CALL R6 1 0
  JUMP [+7]
  GETUPVAL R6 0
  NEWCLOSURE R8 P1
  CAPTURE UPVAL U4
  CAPTURE VAL R5
  NAMECALL R6 R6 K15 ["setState"]
  CALL R6 2 0
  GETUPVAL R6 1
  CALL R6 0 1
  JUMPIFNOT R6 [+15]
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K16 ["UGCBundleValidationEvent"]
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K17 ["Status"]
  GETTABLEKS R7 R8 K29 ["Failure"]
  MOVE R8 R4
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K30 ["getValidationFailuresAsString"]
  MOVE R10 R5
  CALL R9 1 -1
  CALL R6 -1 0
  GETTABLEKS R5 R3 K31 ["onAssetValidationResultChanged"]
  JUMPIFNOT R5 [+4]
  GETTABLEKS R5 R3 K31 ["onAssetValidationResultChanged"]
  MOVE R6 R0
  CALL R5 1 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["setValidationState"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["VALIDATION_STATE"]
  GETTABLEKS R1 R2 K2 ["BEGIN"]
  CALL R0 1 0
  RETURN R0 0

PROTO_14:
  NEWTABLE R2 0 0
  SETTABLEKS R2 R0 K0 ["dropdownItems"]
  GETTABLEKS R4 R1 K1 ["assetTypeEnum"]
  NAMECALL R2 R0 K2 ["selectedRadioButtonKeyFor"]
  CALL R2 2 2
  DUPTABLE R4 K11 [{"currentSelectedRadioButtonKey", "currentAssetType", "dropdownAvatarCategoryIndex", "dropdownDevelopmentCategoryIndex", "validationState", "validationFailureReasons", "displayValidationErrorMessages", "displayAssetSelection"}]
  SETTABLEKS R2 R4 K3 ["currentSelectedRadioButtonKey"]
  GETTABLEKS R5 R1 K1 ["assetTypeEnum"]
  SETTABLEKS R5 R4 K4 ["currentAssetType"]
  JUMPIFNOTEQKS R2 K12 ["AvatarItem"] [+3]
  MOVE R5 R3
  JUMP [+1]
  LOADN R5 0
  SETTABLEKS R5 R4 K5 ["dropdownAvatarCategoryIndex"]
  JUMPIFNOTEQKS R2 K13 ["DevelopmentItem"] [+3]
  MOVE R5 R3
  JUMP [+1]
  LOADN R5 0
  SETTABLEKS R5 R4 K6 ["dropdownDevelopmentCategoryIndex"]
  GETTABLEKS R5 R1 K7 ["validationState"]
  SETTABLEKS R5 R4 K7 ["validationState"]
  GETTABLEKS R5 R1 K8 ["validationFailureReasons"]
  SETTABLEKS R5 R4 K8 ["validationFailureReasons"]
  LOADB R5 0
  SETTABLEKS R5 R4 K9 ["displayValidationErrorMessages"]
  LOADNIL R5
  SETTABLEKS R5 R4 K10 ["displayAssetSelection"]
  SETTABLEKS R4 R0 K14 ["state"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  SETTABLEKS R4 R0 K15 ["setAssetCategoryIndex"]
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  SETTABLEKS R4 R0 K16 ["onRadioButtonClicked"]
  NEWCLOSURE R4 P2
  CAPTURE VAL R0
  SETTABLEKS R4 R0 K17 ["openValidationErrorMessageBox"]
  NEWCLOSURE R4 P3
  CAPTURE VAL R0
  SETTABLEKS R4 R0 K18 ["onValidationErrorMessageBoxClosed"]
  NEWCLOSURE R4 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  SETTABLEKS R4 R0 K19 ["validationCallback"]
  GETTABLEKS R4 R1 K1 ["assetTypeEnum"]
  JUMPIFEQKNIL R4 [+47]
  GETTABLEKS R5 R1 K1 ["assetTypeEnum"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K20 ["isCatalogAsset"]
  MOVE R7 R5
  CALL R6 1 1
  MOVE R4 R6
  JUMPIF R4 [+6]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K21 ["isUGCBundleType"]
  MOVE R7 R5
  CALL R6 1 1
  MOVE R4 R6
  JUMPIFNOT R4 [+30]
  GETUPVAL R4 5
  JUMPIFNOT R4 [+7]
  GETTABLEKS R4 R1 K22 ["onAssetValidationResultChanged"]
  JUMPIFNOT R4 [+4]
  GETTABLEKS R4 R1 K22 ["onAssetValidationResultChanged"]
  LOADB R5 0
  CALL R4 1 0
  GETTABLEKS R4 R1 K23 ["setValidationState"]
  JUMPIFNOT R4 [+7]
  GETIMPORT R4 K26 [task.defer]
  NEWCLOSURE R5 P5
  CAPTURE VAL R1
  CAPTURE UPVAL U3
  CALL R4 1 0
  RETURN R0 0
  DUPTABLE R6 K27 [{"validationState"}]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K28 ["VALIDATION_STATE"]
  GETTABLEKS R7 R8 K29 ["BEGIN"]
  SETTABLEKS R7 R6 K7 ["validationState"]
  NAMECALL R4 R0 K30 ["setState"]
  CALL R4 2 0
  RETURN R0 0

PROTO_15:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R4 R1 K2 ["validationFailureReasons"]
  JUMPIFNOT R4 [+4]
  GETTABLEKS R4 R1 K2 ["validationFailureReasons"]
  LENGTH R3 R4
  JUMP [+1]
  LOADN R3 0
  JUMPIFNOTEQKN R3 K3 [1] [+12]
  GETTABLEKS R4 R1 K4 ["Localization"]
  LOADK R6 K5 ["AssetConfig"]
  LOADK R7 K6 ["AvatarItemsErrorTextSingular"]
  DUPTABLE R8 K8 [{"errorCount"}]
  SETTABLEKS R3 R8 K7 ["errorCount"]
  NAMECALL R4 R4 K9 ["getText"]
  CALL R4 4 -1
  RETURN R4 -1
  GETTABLEKS R4 R1 K4 ["Localization"]
  LOADK R6 K5 ["AssetConfig"]
  LOADK R7 K10 ["AvatarItemsErrorTextPlural"]
  DUPTABLE R8 K8 [{"errorCount"}]
  SETTABLEKS R3 R8 K7 ["errorCount"]
  NAMECALL R4 R4 K9 ["getText"]
  CALL R4 4 -1
  RETURN R4 -1

PROTO_16:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  LOADK R3 K2 [""]
  GETTABLEKS R4 R1 K3 ["validationFailureReasons"]
  MOVE R5 R4
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  GETIMPORT R10 K6 [table.concat]
  NEWTABLE R11 0 3
  MOVE R12 R3
  MOVE R13 R9
  LOADK R14 K7 ["

"]
  SETLIST R11 R12 3 [1]
  CALL R10 1 1
  MOVE R3 R10
  FORGLOOP R5 2 [-12]
  RETURN R3 1

PROTO_17:
  NEWTABLE R2 0 2
  LOADK R5 K0 ["AvatarItem"]
  LOADK R6 K1 ["DevelopmentItem"]
  SETLIST R2 R5 2 [1]
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  MOVE R9 R6
  NAMECALL R7 R0 K2 ["getDropdownItemsFor"]
  CALL R7 2 3
  FORGPREP R7
  GETTABLEKS R12 R11 K3 ["type"]
  JUMPIFNOTEQ R12 R1 [+4]
  MOVE R12 R6
  MOVE R13 R10
  RETURN R12 2
  FORGLOOP R7 2 [-8]
  FORGLOOP R2 2 [-15]
  LOADK R2 K1 ["DevelopmentItem"]
  LOADN R3 0
  RETURN R2 2

PROTO_18:
  GETTABLEKS R1 R0 K0 ["state"]
  GETTABLEKS R3 R1 K1 ["currentSelectedRadioButtonKey"]
  JUMPIFEQKS R3 K2 ["AvatarItem"] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_19:
  DUPTABLE R0 K1 [{"currentAssetType"}]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["None"]
  SETTABLEKS R1 R0 K0 ["currentAssetType"]
  RETURN R0 1

PROTO_20:
  DUPTABLE R0 K1 [{"currentAssetType"}]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["None"]
  SETTABLEKS R1 R0 K0 ["currentAssetType"]
  RETURN R0 1

PROTO_21:
  DUPTABLE R0 K1 [{"currentAssetType"}]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["type"]
  SETTABLEKS R1 R0 K0 ["currentAssetType"]
  RETURN R0 1

PROTO_22:
  GETTABLEKS R1 R0 K0 ["props"]
  NAMECALL R2 R0 K1 ["getAssetCategoryIndex"]
  CALL R2 1 1
  JUMPIF R2 [+18]
  NAMECALL R3 R0 K2 ["resetValidation"]
  CALL R3 1 0
  DUPCLOSURE R5 K3 [PROTO_19]
  CAPTURE UPVAL U0
  NAMECALL R3 R0 K4 ["setState"]
  CALL R3 2 0
  GETTABLEKS R3 R1 K5 ["onAssetTypeSelected"]
  JUMPIFNOT R3 [+6]
  GETTABLEKS R3 R1 K5 ["onAssetTypeSelected"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K6 ["None"]
  CALL R3 1 0
  RETURN R0 0
  GETTABLEKS R4 R0 K7 ["dropdownItems"]
  GETTABLE R3 R4 R2
  JUMPIFNOT R3 [+3]
  GETTABLEKS R4 R3 K8 ["type"]
  JUMPIF R4 [+18]
  NAMECALL R4 R0 K2 ["resetValidation"]
  CALL R4 1 0
  DUPCLOSURE R6 K9 [PROTO_20]
  CAPTURE UPVAL U0
  NAMECALL R4 R0 K4 ["setState"]
  CALL R4 2 0
  GETTABLEKS R4 R1 K5 ["onAssetTypeSelected"]
  JUMPIFNOT R4 [+6]
  GETTABLEKS R4 R1 K5 ["onAssetTypeSelected"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["None"]
  CALL R4 1 0
  RETURN R0 0
  GETTABLEKS R4 R3 K8 ["type"]
  GETTABLEKS R6 R0 K10 ["state"]
  GETTABLEKS R5 R6 K11 ["currentAssetType"]
  JUMPIFEQ R4 R5 [+4]
  NAMECALL R4 R0 K2 ["resetValidation"]
  CALL R4 1 0
  GETTABLEKS R4 R1 K12 ["onAssetValidationResultChanged"]
  JUMPIFNOT R4 [+4]
  GETTABLEKS R4 R1 K12 ["onAssetValidationResultChanged"]
  LOADB R5 0
  CALL R4 1 0
  GETTABLEKS R4 R1 K13 ["setCurrentAssetType"]
  JUMPIFNOT R4 [+5]
  GETTABLEKS R4 R1 K13 ["setCurrentAssetType"]
  GETTABLEKS R5 R3 K8 ["type"]
  CALL R4 1 0
  NEWCLOSURE R6 P2
  CAPTURE VAL R3
  NAMECALL R4 R0 K4 ["setState"]
  CALL R4 2 0
  GETTABLEKS R4 R1 K5 ["onAssetTypeSelected"]
  JUMPIFNOT R4 [+5]
  GETTABLEKS R4 R1 K5 ["onAssetTypeSelected"]
  GETTABLEKS R5 R3 K8 ["type"]
  CALL R4 1 0
  GETUPVAL R4 1
  CALL R4 0 1
  JUMPIFNOT R4 [+10]
  GETTABLEKS R4 R1 K14 ["onCategoryChange"]
  JUMPIFNOT R4 [+7]
  GETTABLEKS R4 R1 K14 ["onCategoryChange"]
  GETTABLEKS R6 R0 K10 ["state"]
  GETTABLEKS R5 R6 K15 ["currentSelectedRadioButtonKey"]
  CALL R4 1 0
  GETTABLEKS R5 R3 K8 ["type"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K16 ["isCatalogAsset"]
  MOVE R7 R5
  CALL R6 1 1
  MOVE R4 R6
  JUMPIF R4 [+6]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K17 ["isUGCBundleType"]
  MOVE R7 R5
  CALL R6 1 1
  MOVE R4 R6
  JUMPIF R4 [+4]
  NAMECALL R4 R0 K2 ["resetValidation"]
  CALL R4 1 0
  RETURN R0 0
  GETTABLEKS R4 R1 K18 ["setValidationState"]
  JUMPIFNOT R4 [+9]
  GETTABLEKS R4 R1 K18 ["setValidationState"]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K19 ["VALIDATION_STATE"]
  GETTABLEKS R5 R6 K20 ["BEGIN"]
  CALL R4 1 0
  RETURN R0 0
  DUPTABLE R6 K22 [{"validationState"}]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K19 ["VALIDATION_STATE"]
  GETTABLEKS R7 R8 K20 ["BEGIN"]
  SETTABLEKS R7 R6 K21 ["validationState"]
  NAMECALL R4 R0 K4 ["setState"]
  CALL R4 2 0
  RETURN R0 0

PROTO_23:
  DUPTABLE R0 K3 [{"validationState", "validationFailureReasons", "ugcBundleValidationResults"}]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["VALIDATION_STATE"]
  GETTABLEKS R1 R2 K5 ["NONE"]
  SETTABLEKS R1 R0 K0 ["validationState"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K1 ["validationFailureReasons"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K6 ["None"]
  SETTABLEKS R1 R0 K2 ["ugcBundleValidationResults"]
  RETURN R0 1

PROTO_24:
  GETTABLEKS R1 R0 K0 ["props"]
  NAMECALL R2 R0 K1 ["cancelValidationTasks"]
  CALL R2 1 0
  GETTABLEKS R2 R1 K2 ["setValidationState"]
  JUMPIFNOT R2 [+26]
  GETTABLEKS R2 R1 K3 ["setValidationFailureReasons"]
  JUMPIFNOT R2 [+23]
  GETTABLEKS R2 R1 K4 ["setUGCBundleValidationResults"]
  JUMPIFNOT R2 [+20]
  GETTABLEKS R2 R1 K2 ["setValidationState"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["VALIDATION_STATE"]
  GETTABLEKS R3 R4 K6 ["NONE"]
  CALL R2 1 0
  GETTABLEKS R2 R1 K3 ["setValidationFailureReasons"]
  NEWTABLE R3 0 0
  CALL R2 1 0
  GETTABLEKS R2 R1 K4 ["setUGCBundleValidationResults"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K7 ["None"]
  CALL R2 1 0
  JUMP [+6]
  DUPCLOSURE R4 K8 [PROTO_23]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  NAMECALL R2 R0 K9 ["setState"]
  CALL R2 2 0
  GETTABLEKS R2 R1 K10 ["onAssetValidationResultChanged"]
  JUMPIFNOT R2 [+4]
  GETTABLEKS R2 R1 K10 ["onAssetValidationResultChanged"]
  LOADB R3 0
  CALL R2 1 0
  RETURN R0 0

PROTO_25:
  GETTABLEKS R1 R0 K0 ["validationTask"]
  JUMPIFEQKNIL R1 [+9]
  GETIMPORT R1 K3 [task.cancel]
  GETTABLEKS R2 R0 K0 ["validationTask"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["validationTask"]
  GETTABLEKS R1 R0 K4 ["validationPromise"]
  JUMPIFEQKNIL R1 [+9]
  GETTABLEKS R1 R0 K4 ["validationPromise"]
  NAMECALL R1 R1 K2 ["cancel"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K4 ["validationPromise"]
  RETURN R0 0

PROTO_26:
  GETTABLEKS R2 R0 K0 ["props"]
  JUMPIFNOTEQKN R1 K1 [1] [+12]
  GETTABLEKS R3 R2 K2 ["Localization"]
  LOADK R5 K3 ["AssetConfig"]
  LOADK R6 K4 ["ValidationErrorSingular"]
  DUPTABLE R7 K6 [{"errorCount"}]
  SETTABLEKS R1 R7 K5 ["errorCount"]
  NAMECALL R3 R3 K7 ["getText"]
  CALL R3 4 -1
  RETURN R3 -1
  GETTABLEKS R3 R2 K2 ["Localization"]
  LOADK R5 K3 ["AssetConfig"]
  LOADK R6 K8 ["ValidationErrorPlural"]
  DUPTABLE R7 K6 [{"errorCount"}]
  SETTABLEKS R1 R7 K5 ["errorCount"]
  NAMECALL R3 R3 K7 ["getText"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_27:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["validationState"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["VALIDATION_STATE"]
  GETTABLEKS R4 R5 K4 ["VALIDATING"]
  JUMPIFNOTEQ R3 R4 [+9]
  GETTABLEKS R3 R1 K5 ["Localization"]
  LOADK R5 K6 ["AssetConfig"]
  LOADK R6 K7 ["ValidatingInProgress"]
  NAMECALL R3 R3 K8 ["getText"]
  CALL R3 3 -1
  RETURN R3 -1
  GETTABLEKS R3 R1 K2 ["validationState"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["VALIDATION_STATE"]
  GETTABLEKS R4 R5 K9 ["SUCCESS"]
  JUMPIFNOTEQ R3 R4 [+9]
  GETTABLEKS R3 R1 K5 ["Localization"]
  LOADK R5 K6 ["AssetConfig"]
  LOADK R6 K10 ["ValidationSuccess"]
  NAMECALL R3 R3 K8 ["getText"]
  CALL R3 3 -1
  RETURN R3 -1
  GETTABLEKS R3 R1 K2 ["validationState"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["VALIDATION_STATE"]
  GETTABLEKS R4 R5 K11 ["FAILURE"]
  JUMPIFNOTEQ R3 R4 [+25]
  GETTABLEKS R4 R1 K12 ["validationFailureReasons"]
  JUMPIFNOT R4 [+4]
  GETTABLEKS R4 R1 K12 ["validationFailureReasons"]
  LENGTH R3 R4
  JUMPIF R3 [+1]
  LOADN R3 0
  LOADN R4 0
  JUMPIFNOTLT R4 R3 [+6]
  MOVE R6 R3
  NAMECALL R4 R0 K13 ["getErrorMessageWithCount"]
  CALL R4 2 -1
  RETURN R4 -1
  GETTABLEKS R4 R1 K5 ["Localization"]
  LOADK R6 K6 ["AssetConfig"]
  LOADK R7 K14 ["ValidationErrorUnknown"]
  NAMECALL R4 R4 K8 ["getText"]
  CALL R4 3 -1
  RETURN R4 -1
  LOADK R3 K15 [""]
  RETURN R3 1

PROTO_28:
  GETTABLEKS R2 R0 K0 ["state"]
  GETTABLEKS R3 R0 K1 ["props"]
  GETTABLEKS R4 R3 K2 ["validationState"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["VALIDATION_STATE"]
  GETTABLEKS R5 R6 K4 ["SUCCESS"]
  JUMPIFNOTEQ R4 R5 [+6]
  GETTABLEKS R5 R1 K5 ["typeValidation"]
  GETTABLEKS R4 R5 K6 ["successResultColor"]
  RETURN R4 1
  GETTABLEKS R4 R3 K2 ["validationState"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["VALIDATION_STATE"]
  GETTABLEKS R5 R6 K7 ["FAILURE"]
  JUMPIFNOTEQ R4 R5 [+6]
  GETTABLEKS R5 R1 K5 ["typeValidation"]
  GETTABLEKS R4 R5 K8 ["failureResultColor"]
  RETURN R4 1
  GETTABLEKS R4 R1 K9 ["TextColor"]
  RETURN R4 1

PROTO_29:
  GETTABLEKS R1 R0 K0 ["state"]
  GETTABLEKS R3 R1 K1 ["currentSelectedRadioButtonKey"]
  JUMPIFNOTEQKS R3 K2 ["AvatarItem"] [+4]
  GETTABLEKS R2 R1 K3 ["dropdownAvatarCategoryIndex"]
  RETURN R2 1
  GETTABLEKS R2 R1 K4 ["dropdownDevelopmentCategoryIndex"]
  RETURN R2 1

PROTO_30:
  GETIMPORT R3 K3 [table.find]
  GETUPVAL R4 0
  GETTABLEKS R5 R0 K4 ["type"]
  CALL R3 2 1
  ORK R2 R3 K0 [∞]
  GETIMPORT R4 K3 [table.find]
  GETUPVAL R5 0
  GETTABLEKS R6 R1 K4 ["type"]
  CALL R4 2 1
  ORK R3 R4 K0 [∞]
  JUMPIFLT R2 R3 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  RETURN R4 1

PROTO_31:
  GETTABLEKS R3 R0 K0 ["props"]
  NEWTABLE R4 0 0
  JUMPIFNOTEQKS R1 K1 ["AvatarItem"] [+90]
  GETTABLEKS R5 R3 K2 ["allowedBundleTypeSettings"]
  JUMPIFEQKNIL R5 [+50]
  GETTABLEKS R5 R3 K2 ["allowedBundleTypeSettings"]
  MOVE R6 R5
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K3 ["getUGCBundleTypeFromString"]
  MOVE R12 R9
  CALL R11 1 1
  DUPTABLE R14 K7 [{"name", "selectable", "type"}]
  JUMPIFNOT R2 [+7]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K8 ["getLocalizedUGCBundleName"]
  MOVE R16 R11
  MOVE R17 R2
  CALL R15 2 1
  JUMP [+1]
  LOADK R15 K9 [""]
  SETTABLEKS R15 R14 K4 ["name"]
  LOADB R15 1
  SETTABLEKS R15 R14 K5 ["selectable"]
  SETTABLEKS R11 R14 K6 ["type"]
  FASTCALL2 TABLE_INSERT R4 R14 [+4]
  MOVE R13 R4
  GETIMPORT R12 K12 [table.insert]
  CALL R12 2 0
  FORGLOOP R6 1 [-29]
  GETIMPORT R6 K14 [game]
  LOADK R8 K15 ["BodyFirstInAssetsCategory"]
  NAMECALL R6 R6 K16 ["GetFastFlag"]
  CALL R6 2 1
  JUMPIFNOT R6 [+6]
  GETIMPORT R6 K18 [table.sort]
  MOVE R7 R4
  NEWCLOSURE R8 P0
  CAPTURE UPVAL U1
  CALL R6 2 0
  GETUPVAL R5 2
  GETTABLEKS R6 R3 K19 ["allowedAssetTypesForRelease"]
  CALL R5 1 1
  LENGTH R6 R5
  LOADN R7 0
  JUMPIFNOTLT R7 R6 [+77]
  MOVE R6 R5
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  JUMPIFNOT R2 [+5]
  GETUPVAL R12 3
  MOVE R13 R2
  CALL R12 1 1
  GETTABLE R11 R12 R10
  JUMP [+1]
  LOADK R11 K9 [""]
  DUPTABLE R14 K7 [{"name", "selectable", "type"}]
  SETTABLEKS R11 R14 K4 ["name"]
  LOADB R15 1
  SETTABLEKS R15 R14 K5 ["selectable"]
  SETTABLEKS R10 R14 K6 ["type"]
  FASTCALL2 TABLE_INSERT R4 R14 [+4]
  MOVE R13 R4
  GETIMPORT R12 K12 [table.insert]
  CALL R12 2 0
  FORGLOOP R6 2 [-22]
  RETURN R4 1
  JUMPIFNOT R2 [+6]
  LOADK R7 K20 ["General"]
  LOADK R8 K21 ["AssetTypeModel"]
  NAMECALL R5 R2 K22 ["getText"]
  CALL R5 3 1
  JUMP [+1]
  LOADK R5 K9 [""]
  JUMPIFNOT R2 [+6]
  LOADK R8 K20 ["General"]
  LOADK R9 K23 ["AssetTypeAnimation"]
  NAMECALL R6 R2 K22 ["getText"]
  CALL R6 3 1
  JUMP [+1]
  LOADK R6 K9 [""]
  DUPTABLE R9 K7 [{"name", "selectable", "type"}]
  SETTABLEKS R5 R9 K4 ["name"]
  LOADB R10 1
  SETTABLEKS R10 R9 K5 ["selectable"]
  GETIMPORT R10 K27 [Enum.AssetType.Model]
  SETTABLEKS R10 R9 K6 ["type"]
  FASTCALL2 TABLE_INSERT R4 R9 [+4]
  MOVE R8 R4
  GETIMPORT R7 K12 [table.insert]
  CALL R7 2 0
  DUPTABLE R9 K7 [{"name", "selectable", "type"}]
  SETTABLEKS R6 R9 K4 ["name"]
  LOADB R10 1
  SETTABLEKS R10 R9 K5 ["selectable"]
  GETIMPORT R10 K29 [Enum.AssetType.Animation]
  SETTABLEKS R10 R9 K6 ["type"]
  FASTCALL2 TABLE_INSERT R4 R9 [+4]
  MOVE R8 R4
  GETIMPORT R7 K12 [table.insert]
  CALL R7 2 0
  RETURN R4 1

PROTO_32:
  GETTABLEKS R2 R0 K0 ["state"]
  GETTABLEKS R5 R2 K1 ["currentSelectedRadioButtonKey"]
  MOVE R6 R1
  NAMECALL R3 R0 K2 ["getDropdownItemsFor"]
  CALL R3 3 1
  SETTABLEKS R3 R0 K3 ["dropdownItems"]
  GETTABLEKS R3 R0 K3 ["dropdownItems"]
  RETURN R3 1

PROTO_33:
  GETTABLEKS R5 R0 K0 ["props"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["isUGCBundleType"]
  MOVE R7 R3
  CALL R6 1 1
  JUMPIF R6 [+2]
  LOADNIL R6
  RETURN R6 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["getOptionalBodyPartsNotFound"]
  MOVE R7 R1
  MOVE R8 R2
  MOVE R9 R3
  CALL R6 3 1
  JUMPIFNOT R6 [+4]
  LENGTH R7 R6
  LOADN R8 0
  JUMPIFNOTLE R7 R8 [+3]
  LOADNIL R7
  RETURN R7 1
  NEWTABLE R7 1 0
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K3 ["new"]
  CALL R8 0 1
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K4 ["createElement"]
  GETUPVAL R10 3
  DUPTABLE R11 K16 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
  GETIMPORT R12 K19 [Enum.AutomaticSize.Y]
  SETTABLEKS R12 R11 K5 ["AutomaticSize"]
  LOADN R12 1
  SETTABLEKS R12 R11 K6 ["BackgroundTransparency"]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K20 ["FONT"]
  SETTABLEKS R12 R11 K7 ["Font"]
  NAMECALL R12 R8 K21 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K8 ["LayoutOrder"]
  GETIMPORT R12 K24 [UDim2.fromScale]
  LOADN R13 1
  LOADN R14 0
  CALL R12 2 1
  SETTABLEKS R12 R11 K9 ["Size"]
  GETTABLEKS R12 R5 K25 ["Localization"]
  LOADK R14 K26 ["AssetConfig"]
  LOADK R15 K27 ["UGCMissingOptionalPartsMessage"]
  NAMECALL R12 R12 K28 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K10 ["Text"]
  GETTABLEKS R13 R4 K29 ["assetConfig"]
  GETTABLEKS R12 R13 K30 ["labelTextColor"]
  SETTABLEKS R12 R11 K11 ["TextColor"]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K31 ["FONT_SIZE_TITLE"]
  SETTABLEKS R12 R11 K12 ["TextSize"]
  LOADB R12 1
  SETTABLEKS R12 R11 K13 ["TextWrapped"]
  GETIMPORT R12 K33 [Enum.TextXAlignment.Left]
  SETTABLEKS R12 R11 K14 ["TextXAlignment"]
  GETIMPORT R12 K35 [Enum.TextYAlignment.Center]
  SETTABLEKS R12 R11 K15 ["TextYAlignment"]
  CALL R9 2 1
  SETTABLEKS R9 R7 K36 ["OptionalPartsMessage"]
  MOVE R9 R6
  LOADNIL R10
  LOADNIL R11
  FORGPREP R9
  GETUPVAL R15 5
  GETTABLEKS R16 R5 K25 ["Localization"]
  CALL R15 1 1
  GETTABLE R14 R15 R13
  JUMPIFEQKNIL R14 [+58]
  GETTABLEKS R15 R13 K37 ["Name"]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K4 ["createElement"]
  GETUPVAL R17 3
  DUPTABLE R18 K16 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
  GETIMPORT R19 K19 [Enum.AutomaticSize.Y]
  SETTABLEKS R19 R18 K5 ["AutomaticSize"]
  LOADN R19 1
  SETTABLEKS R19 R18 K6 ["BackgroundTransparency"]
  GETUPVAL R20 4
  GETTABLEKS R19 R20 K20 ["FONT"]
  SETTABLEKS R19 R18 K7 ["Font"]
  NAMECALL R19 R8 K21 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K8 ["LayoutOrder"]
  GETIMPORT R19 K24 [UDim2.fromScale]
  LOADN R20 1
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K9 ["Size"]
  SETTABLEKS R14 R18 K10 ["Text"]
  GETTABLEKS R20 R4 K29 ["assetConfig"]
  GETTABLEKS R19 R20 K30 ["labelTextColor"]
  SETTABLEKS R19 R18 K11 ["TextColor"]
  GETUPVAL R20 4
  GETTABLEKS R19 R20 K31 ["FONT_SIZE_TITLE"]
  SETTABLEKS R19 R18 K12 ["TextSize"]
  LOADB R19 1
  SETTABLEKS R19 R18 K13 ["TextWrapped"]
  GETIMPORT R19 K33 [Enum.TextXAlignment.Left]
  SETTABLEKS R19 R18 K14 ["TextXAlignment"]
  GETIMPORT R19 K35 [Enum.TextYAlignment.Center]
  SETTABLEKS R19 R18 K15 ["TextYAlignment"]
  CALL R16 2 1
  SETTABLE R16 R7 R15
  FORGLOOP R9 2 [-65]
  RETURN R7 1

PROTO_34:
  GETTABLEKS R4 R0 K0 ["props"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["isUGCBundleType"]
  MOVE R6 R2
  CALL R5 1 1
  JUMPIF R5 [+2]
  LOADNIL R5
  RETURN R5 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["getUnknownMeshPartNames"]
  MOVE R6 R1
  CALL R5 1 1
  JUMPIFNOT R5 [+4]
  LENGTH R6 R5
  LOADN R7 0
  JUMPIFNOTLE R6 R7 [+3]
  LOADNIL R6
  RETURN R6 1
  NEWTABLE R6 1 0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K3 ["new"]
  CALL R7 0 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K4 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K16 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
  GETIMPORT R11 K19 [Enum.AutomaticSize.Y]
  SETTABLEKS R11 R10 K5 ["AutomaticSize"]
  LOADN R11 1
  SETTABLEKS R11 R10 K6 ["BackgroundTransparency"]
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K20 ["FONT"]
  SETTABLEKS R11 R10 K7 ["Font"]
  NAMECALL R11 R7 K21 ["getNextOrder"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K8 ["LayoutOrder"]
  GETIMPORT R11 K24 [UDim2.fromScale]
  LOADN R12 1
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K9 ["Size"]
  GETTABLEKS R11 R4 K25 ["Localization"]
  LOADK R13 K26 ["AssetConfig"]
  LOADK R14 K27 ["UGCUnknownMeshPartsMessage"]
  NAMECALL R11 R11 K28 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K10 ["Text"]
  GETTABLEKS R12 R3 K29 ["assetConfig"]
  GETTABLEKS R11 R12 K30 ["labelTextColor"]
  SETTABLEKS R11 R10 K11 ["TextColor"]
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K31 ["FONT_SIZE_TITLE"]
  SETTABLEKS R11 R10 K12 ["TextSize"]
  LOADB R11 1
  SETTABLEKS R11 R10 K13 ["TextWrapped"]
  GETIMPORT R11 K33 [Enum.TextXAlignment.Left]
  SETTABLEKS R11 R10 K14 ["TextXAlignment"]
  GETIMPORT R11 K35 [Enum.TextYAlignment.Center]
  SETTABLEKS R11 R10 K15 ["TextYAlignment"]
  CALL R8 2 1
  SETTABLEKS R8 R6 K36 ["OptionalPartsMessage"]
  MOVE R8 R5
  LOADNIL R9
  LOADNIL R10
  FORGPREP R8
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K4 ["createElement"]
  GETUPVAL R14 3
  DUPTABLE R15 K16 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
  GETIMPORT R16 K19 [Enum.AutomaticSize.Y]
  SETTABLEKS R16 R15 K5 ["AutomaticSize"]
  LOADN R16 1
  SETTABLEKS R16 R15 K6 ["BackgroundTransparency"]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K20 ["FONT"]
  SETTABLEKS R16 R15 K7 ["Font"]
  NAMECALL R16 R7 K21 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K8 ["LayoutOrder"]
  GETIMPORT R16 K24 [UDim2.fromScale]
  LOADN R17 1
  LOADN R18 0
  CALL R16 2 1
  SETTABLEKS R16 R15 K9 ["Size"]
  SETTABLEKS R12 R15 K10 ["Text"]
  GETTABLEKS R17 R3 K29 ["assetConfig"]
  GETTABLEKS R16 R17 K30 ["labelTextColor"]
  SETTABLEKS R16 R15 K11 ["TextColor"]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K31 ["FONT_SIZE_TITLE"]
  SETTABLEKS R16 R15 K12 ["TextSize"]
  LOADB R16 1
  SETTABLEKS R16 R15 K13 ["TextWrapped"]
  GETIMPORT R16 K33 [Enum.TextXAlignment.Left]
  SETTABLEKS R16 R15 K14 ["TextXAlignment"]
  GETIMPORT R16 K35 [Enum.TextYAlignment.Center]
  SETTABLEKS R16 R15 K15 ["TextYAlignment"]
  CALL R13 2 1
  SETTABLE R13 R6 R12
  FORGLOOP R8 2 [-56]
  RETURN R6 1

PROTO_35:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["OpenBrowserWindow"]
  CALL R0 2 0
  RETURN R0 0

PROTO_36:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["OpenBrowserWindow"]
  CALL R0 2 0
  RETURN R0 0

PROTO_37:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R4 R3 K1 ["Localization"]
  LOADNIL R5
  NEWTABLE R6 0 0
  GETTABLEKS R7 R3 K2 ["canUploadWithUgcRestrictions"]
  GETTABLEKS R8 R3 K3 ["canUploadWithUgcRestrictionsDenyReason"]
  NAMECALL R9 R0 K4 ["isAvatarItemCategorySelected"]
  CALL R9 1 1
  JUMPIFNOT R9 [+65]
  JUMPIFEQKNIL R7 [+81]
  JUMPIFNOTEQKB R7 FALSE [+79]
  JUMPIFNOTEQKS R8 K5 ["MissingIdVerification"] [+8]
  LOADK R11 K6 ["AssetConfig"]
  LOADK R12 K7 ["UploadDenied_MissingIdVerification_Text"]
  NAMECALL R9 R4 K8 ["getText"]
  CALL R9 3 1
  MOVE R5 R9
  JUMP [+18]
  JUMPIFNOTEQKS R8 K9 ["MissingPremiumSubscriptionTier"] [+8]
  LOADK R11 K6 ["AssetConfig"]
  LOADK R12 K10 ["UploadDenied_MissingPremiumSubscriptionTier_Text"]
  NAMECALL R9 R4 K8 ["getText"]
  CALL R9 3 1
  MOVE R5 R9
  JUMP [+9]
  LOADK R11 K6 ["AssetConfig"]
  LOADK R12 K11 ["UploadDenied_UnknownError"]
  DUPTABLE R13 K13 [{"errorCode"}]
  SETTABLEKS R8 R13 K12 ["errorCode"]
  NAMECALL R9 R4 K8 ["getText"]
  CALL R9 4 1
  MOVE R5 R9
  NEWTABLE R9 2 0
  DUPTABLE R10 K16 [{"LinkText", "LinkCallback"}]
  LOADK R13 K6 ["AssetConfig"]
  LOADK R14 K17 ["UploadDenied_MissingIdVerification_Link"]
  NAMECALL R11 R4 K8 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K14 ["LinkText"]
  DUPCLOSURE R11 K18 [PROTO_35]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  SETTABLEKS R11 R10 K15 ["LinkCallback"]
  SETTABLEKS R10 R9 K19 ["[Age_Verified]"]
  DUPTABLE R10 K16 [{"LinkText", "LinkCallback"}]
  LOADK R13 K6 ["AssetConfig"]
  LOADK R14 K20 ["UploadDenied_MissingPremiumSubscriptionTier_Link"]
  NAMECALL R11 R4 K8 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K14 ["LinkText"]
  DUPCLOSURE R11 K21 [PROTO_36]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U2
  SETTABLEKS R11 R10 K15 ["LinkCallback"]
  SETTABLEKS R10 R9 K22 ["[Premium_1000_Or_2200_Subscription]"]
  MOVE R6 R9
  RETURN R5 2
  JUMPIFNOT R1 [+7]
  LOADK R11 K6 ["AssetConfig"]
  LOADK R12 K23 ["InsufficientRobuxWarning"]
  NAMECALL R9 R4 K8 ["getText"]
  CALL R9 3 1
  MOVE R5 R9
  RETURN R5 2
  JUMPIFNOT R2 [+8]
  GETUPVAL R9 3
  JUMPIF R9 [+6]
  LOADK R11 K6 ["AssetConfig"]
  LOADK R12 K24 ["ModelPublishWarning"]
  NAMECALL R9 R4 K8 ["getText"]
  CALL R9 3 1
  MOVE R5 R9
  RETURN R5 2

PROTO_38:
  NEWTABLE R1 0 0
  MOVE R2 R0
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  NAMECALL R7 R6 K0 ["Clone"]
  CALL R7 1 1
  GETUPVAL R8 0
  MOVE R9 R7
  CALL R8 1 0
  SETTABLE R7 R1 R5
  FORGLOOP R2 2 [-8]
  RETURN R1 1

PROTO_39:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getValidationErrorText"]
  MOVE R2 R0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["Localization"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_40:
  DUPCLOSURE R0 K0 [PROTO_38]
  CAPTURE UPVAL U0
  LOADNIL R1
  LOADNIL R2
  LOADNIL R3
  LOADB R4 1
  GETUPVAL R5 1
  CALL R5 0 1
  JUMPIFNOT R5 [+29]
  GETUPVAL R5 2
  CALL R5 0 1
  MOVE R3 R5
  JUMPIFNOT R3 [+25]
  JUMPIFEQKS R3 K1 [""] [+24]
  GETIMPORT R5 K4 [string.gmatch]
  MOVE R6 R3
  LOADK R7 K5 ["([^,]+)"]
  CALL R5 2 3
  FORGPREP R5
  GETIMPORT R10 K7 [string.gsub]
  MOVE R11 R8
  LOADK R12 K8 ["^%s*(.-)%s*$"]
  LOADK R13 K9 ["%1"]
  CALL R10 3 1
  MOVE R8 R10
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K10 ["currentAssetType"]
  GETTABLEKS R10 R11 K11 ["Name"]
  JUMPIFNOTEQ R8 R10 [+2]
  LOADB R4 0
  FORGLOOP R5 1 [-16]
  JUMPIFNOT R4 [+15]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K12 ["validate"]
  MOVE R6 R0
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K13 ["instances"]
  CALL R6 1 1
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K10 ["currentAssetType"]
  CALL R5 2 2
  MOVE R1 R5
  MOVE R2 R6
  JUMP [+3]
  LOADB R1 1
  NEWTABLE R2 0 0
  JUMPIFNOT R4 [+55]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K14 ["isFolderStructureEnabled"]
  JUMPIFNOT R5 [+51]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K14 ["isFolderStructureEnabled"]
  CALL R5 0 1
  JUMPIFNOT R5 [+46]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K15 ["ValidateAsset"]
  MOVE R6 R0
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K13 ["instances"]
  CALL R6 1 1
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K10 ["currentAssetType"]
  DUPTABLE R8 K20 [{"source", "enforceR15FolderStructure", "telemetry_bundle_id", "telemetry_root_id"}]
  LOADK R9 K21 ["Toolbox"]
  SETTABLEKS R9 R8 K16 ["source"]
  LOADB R9 0
  SETTABLEKS R9 R8 K17 ["enforceR15FolderStructure"]
  LOADK R9 K1 [""]
  SETTABLEKS R9 R8 K18 ["telemetry_bundle_id"]
  LOADK R9 K1 [""]
  SETTABLEKS R9 R8 K19 ["telemetry_root_id"]
  CALL R5 3 1
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K22 ["isEntrypointMergingEnabled"]
  JUMPIFNOT R6 [+17]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K22 ["isEntrypointMergingEnabled"]
  CALL R6 0 1
  JUMPIFNOT R6 [+12]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K23 ["combineResultsIntoLegacy"]
  MOVE R7 R1
  MOVE R8 R2
  MOVE R9 R5
  NEWCLOSURE R10 P1
  CAPTURE UPVAL U6
  CAPTURE UPVAL U5
  CALL R6 4 2
  MOVE R1 R6
  MOVE R2 R7
  GETUPVAL R6 7
  GETTABLEKS R5 R6 K24 ["validationCallback"]
  MOVE R6 R1
  MOVE R7 R2
  CALL R5 2 0
  RETURN R0 0

PROTO_41:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R4 R0 K1 ["state"]
  GETTABLEKS R5 R4 K2 ["currentSelectedRadioButtonKey"]
  GETTABLEKS R6 R2 K2 ["currentSelectedRadioButtonKey"]
  JUMPIFNOTEQ R5 R6 [+13]
  GETTABLEKS R5 R4 K3 ["dropdownAvatarCategoryIndex"]
  GETTABLEKS R6 R2 K3 ["dropdownAvatarCategoryIndex"]
  JUMPIFNOTEQ R5 R6 [+7]
  GETTABLEKS R5 R4 K4 ["dropdownDevelopmentCategoryIndex"]
  GETTABLEKS R6 R2 K4 ["dropdownDevelopmentCategoryIndex"]
  JUMPIFEQ R5 R6 [+4]
  NAMECALL R5 R0 K5 ["onAssetTypeChanged"]
  CALL R5 1 0
  GETTABLEKS R5 R3 K6 ["validationState"]
  GETTABLEKS R6 R1 K6 ["validationState"]
  JUMPIFEQ R5 R6 [+52]
  GETTABLEKS R5 R3 K6 ["validationState"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K7 ["VALIDATION_STATE"]
  GETTABLEKS R6 R7 K8 ["BEGIN"]
  JUMPIFNOTEQ R5 R6 [+13]
  GETTABLEKS R5 R3 K9 ["setValidationState"]
  JUMPIFNOT R5 [+9]
  GETTABLEKS R5 R3 K9 ["setValidationState"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K7 ["VALIDATION_STATE"]
  GETTABLEKS R6 R7 K10 ["VALIDATING"]
  CALL R5 1 0
  RETURN R0 0
  GETTABLEKS R5 R3 K6 ["validationState"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K7 ["VALIDATION_STATE"]
  GETTABLEKS R6 R7 K10 ["VALIDATING"]
  JUMPIFNOTEQ R5 R6 [+22]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K11 ["isUGCBundleType"]
  GETTABLEKS R6 R4 K12 ["currentAssetType"]
  CALL R5 1 1
  JUMPIF R5 [+14]
  GETIMPORT R5 K15 [task.spawn]
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R4
  CAPTURE UPVAL U5
  CAPTURE VAL R3
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R5 1 1
  SETTABLEKS R5 R0 K16 ["validationTask"]
  RETURN R0 0

PROTO_42:
  NAMECALL R1 R0 K0 ["cancelValidationTasks"]
  CALL R1 1 0
  RETURN R0 0

PROTO_43:
  DUPTABLE R0 K1 [{"displayAssetSelection"}]
  GETUPVAL R2 0
  NOT R1 R2
  SETTABLEKS R1 R0 K0 ["displayAssetSelection"]
  RETURN R0 1

PROTO_44:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETTABLEKS R4 R1 K3 ["Stylizer"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["new"]
  CALL R5 0 1
  GETTABLEKS R7 R1 K5 ["validationState"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K6 ["VALIDATION_STATE"]
  GETTABLEKS R8 R9 K7 ["FAILURE"]
  JUMPIFEQ R7 R8 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  JUMPIFNOT R6 [+2]
  LOADN R7 24
  JUMP [+1]
  LOADN R7 0
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K8 ["FONT_SIZE_TITLE"]
  GETTABLEKS R9 R2 K9 ["currentAssetType"]
  GETIMPORT R11 K13 [Enum.AssetType.Model]
  JUMPIFEQ R9 R11 [+2]
  LOADB R10 0 +1
  LOADB R10 1
  GETTABLEKS R12 R1 K14 ["assetTypeEnum"]
  GETIMPORT R13 K16 [Enum.AssetType.Animation]
  JUMPIFEQ R12 R13 [+2]
  LOADB R11 0 +1
  LOADB R11 1
  LOADK R14 K17 ["AssetConfig"]
  LOADK R15 K18 ["AvatarItemsErrorTitle"]
  NAMECALL R12 R3 K19 ["getText"]
  CALL R12 3 1
  LOADK R15 K20 ["Common"]
  LOADK R16 K21 ["Close"]
  NAMECALL R13 R3 K19 ["getText"]
  CALL R13 3 1
  LOADK R16 K22 ["General"]
  LOADK R17 K23 ["ContentType"]
  NAMECALL R14 R3 K19 ["getText"]
  CALL R14 3 1
  LOADK R17 K17 ["AssetConfig"]
  LOADK R18 K24 ["DevelopmentItem"]
  NAMECALL R15 R3 K19 ["getText"]
  CALL R15 3 1
  LOADK R18 K17 ["AssetConfig"]
  LOADK R19 K25 ["AvatarItem"]
  NAMECALL R16 R3 K19 ["getText"]
  CALL R16 3 1
  LOADK R19 K22 ["General"]
  LOADK R20 K26 ["AssetCategory"]
  NAMECALL R17 R3 K19 ["getText"]
  CALL R17 3 1
  LOADNIL R18
  GETUPVAL R19 3
  CALL R19 0 1
  JUMPIF R19 [+9]
  JUMPIFNOT R10 [+8]
  GETUPVAL R19 4
  JUMPIF R19 [+6]
  LOADK R21 K17 ["AssetConfig"]
  LOADK R22 K27 ["ModelPublishWarning"]
  NAMECALL R19 R3 K19 ["getText"]
  CALL R19 3 1
  MOVE R18 R19
  GETTABLEKS R19 R1 K28 ["canAffordUploadFee"]
  GETTABLEKS R20 R1 K29 ["uploadFee"]
  LOADN R22 0
  JUMPIFNOTLT R22 R20 [+3]
  NOT R21 R19
  JUMP [+1]
  LOADB R21 0
  LOADNIL R22
  GETUPVAL R23 3
  CALL R23 0 1
  JUMPIF R23 [+7]
  JUMPIFNOT R21 [+6]
  LOADK R25 K17 ["AssetConfig"]
  LOADK R26 K30 ["InsufficientRobuxWarning"]
  NAMECALL R23 R3 K19 ["getText"]
  CALL R23 3 1
  MOVE R22 R23
  GETTABLEKS R23 R2 K31 ["displayValidationErrorMessages"]
  LOADNIL R24
  NEWTABLE R25 0 0
  GETUPVAL R26 3
  CALL R26 0 1
  JUMPIFNOT R26 [+7]
  MOVE R28 R21
  MOVE R29 R10
  NAMECALL R26 R0 K32 ["getUgcRestrictionsWarningText"]
  CALL R26 3 2
  MOVE R24 R26
  MOVE R25 R27
  LOADNIL R26
  GETUPVAL R27 5
  CALL R27 0 1
  JUMPIFNOT R27 [+6]
  LOADK R29 K17 ["AssetConfig"]
  LOADK R30 K33 ["EmoteAnimationWarning"]
  NAMECALL R27 R3 K19 ["getText"]
  CALL R27 3 1
  MOVE R26 R27
  GETUPVAL R27 6
  JUMPIFNOT R27 [+9]
  GETTABLEKS R27 R2 K34 ["displayAssetSelection"]
  JUMPIFNOTEQKNIL R27 [+6]
  NEWCLOSURE R29 P0
  CAPTURE VAL R11
  NAMECALL R27 R0 K35 ["setState"]
  CALL R27 2 0
  GETUPVAL R28 6
  JUMPIFNOT R28 [+3]
  GETTABLEKS R27 R2 K34 ["displayAssetSelection"]
  JUMP [+1]
  NOT R27 R11
  GETUPVAL R29 7
  GETTABLEKS R28 R29 K36 ["createElement"]
  GETUPVAL R29 8
  DUPTABLE R30 K46 [{"AutomaticSize", "BackgroundColor3", "BackgroundTransparency", "HorizontalAlignment", "Layout", "LayoutOrder", "Padding", "Spacing", "VerticalAlignment"}]
  GETIMPORT R31 K48 [Enum.AutomaticSize.XY]
  SETTABLEKS R31 R30 K37 ["AutomaticSize"]
  GETTABLEKS R32 R4 K49 ["typeSelection"]
  GETTABLEKS R31 R32 K50 ["background"]
  SETTABLEKS R31 R30 K38 ["BackgroundColor3"]
  LOADN R31 1
  SETTABLEKS R31 R30 K39 ["BackgroundTransparency"]
  GETIMPORT R31 K52 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R31 R30 K40 ["HorizontalAlignment"]
  GETIMPORT R31 K55 [Enum.FillDirection.Vertical]
  SETTABLEKS R31 R30 K41 ["Layout"]
  GETTABLEKS R31 R1 K42 ["LayoutOrder"]
  SETTABLEKS R31 R30 K42 ["LayoutOrder"]
  DUPTABLE R31 K57 [{"Bottom"}]
  LOADN R32 32
  SETTABLEKS R32 R31 K56 ["Bottom"]
  SETTABLEKS R31 R30 K43 ["Padding"]
  LOADN R31 30
  SETTABLEKS R31 R30 K44 ["Spacing"]
  GETIMPORT R31 K59 [Enum.VerticalAlignment.Top]
  SETTABLEKS R31 R30 K45 ["VerticalAlignment"]
  DUPTABLE R31 K63 [{"ValidationErrorMessageBox", "ContentTypeRadioButtons", "AssetCategoryDropDown", "EmoteAnimationWarning"}]
  JUMPIFNOT R23 [+64]
  GETUPVAL R33 7
  GETTABLEKS R32 R33 K36 ["createElement"]
  GETUPVAL R33 9
  DUPTABLE R34 K74 [{"buttons", "Icon", "InformativeText", "onButtonClicked", "onClose", "Text", "Title", "isScrollable", "messageBoxHeight", "isResizable"}]
  NEWTABLE R35 0 1
  DUPTABLE R36 K78 [{"Text", "Font", "TextSize", "action"}]
  SETTABLEKS R13 R36 K69 ["Text"]
  GETTABLEKS R37 R4 K75 ["Font"]
  SETTABLEKS R37 R36 K75 ["Font"]
  GETTABLEKS R37 R4 K76 ["TextSize"]
  SETTABLEKS R37 R36 K76 ["TextSize"]
  LOADK R37 K79 ["yes"]
  SETTABLEKS R37 R36 K77 ["action"]
  SETLIST R35 R36 1 [1]
  SETTABLEKS R35 R34 K64 ["buttons"]
  LOADK R35 K80 ["rbxasset://textures/ui/ErrorIcon.png"]
  SETTABLEKS R35 R34 K65 ["Icon"]
  NAMECALL R35 R0 K81 ["getAvatarItemCategoryErrors"]
  CALL R35 1 1
  SETTABLEKS R35 R34 K66 ["InformativeText"]
  GETTABLEKS R35 R0 K82 ["onValidationErrorMessageBoxClosed"]
  SETTABLEKS R35 R34 K67 ["onButtonClicked"]
  GETTABLEKS R35 R0 K82 ["onValidationErrorMessageBoxClosed"]
  SETTABLEKS R35 R34 K68 ["onClose"]
  NAMECALL R35 R0 K83 ["getAvatarItemCategoryErrorsPrimaryText"]
  CALL R35 1 1
  SETTABLEKS R35 R34 K69 ["Text"]
  SETTABLEKS R12 R34 K70 ["Title"]
  LOADB R35 1
  SETTABLEKS R35 R34 K71 ["isScrollable"]
  LOADN R35 244
  SETTABLEKS R35 R34 K72 ["messageBoxHeight"]
  GETUPVAL R36 10
  CALL R36 0 1
  JUMPIFNOT R36 [+2]
  LOADB R35 1
  JUMP [+1]
  LOADNIL R35
  SETTABLEKS R35 R34 K73 ["isResizable"]
  CALL R32 2 1
  JUMP [+1]
  LOADNIL R32
  SETTABLEKS R32 R31 K60 ["ValidationErrorMessageBox"]
  JUMPIFNOT R27 [+427]
  GETUPVAL R33 7
  GETTABLEKS R32 R33 K36 ["createElement"]
  GETUPVAL R33 11
  DUPTABLE R34 K84 [{"AutomaticSize", "LayoutOrder", "Title"}]
  GETIMPORT R35 K48 [Enum.AutomaticSize.XY]
  SETTABLEKS R35 R34 K37 ["AutomaticSize"]
  NAMECALL R35 R5 K85 ["getNextOrder"]
  CALL R35 1 1
  SETTABLEKS R35 R34 K42 ["LayoutOrder"]
  SETTABLEKS R14 R34 K70 ["Title"]
  DUPTABLE R35 K90 [{"UIListLayout", "RadioButtons", "WarningMessageFrame", "WarningFrame"}]
  GETUPVAL R37 7
  GETTABLEKS R36 R37 K36 ["createElement"]
  LOADK R37 K86 ["UIListLayout"]
  DUPTABLE R38 K92 [{"FillDirection", "HorizontalAlignment", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R39 K55 [Enum.FillDirection.Vertical]
  SETTABLEKS R39 R38 K53 ["FillDirection"]
  GETIMPORT R39 K52 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R39 R38 K40 ["HorizontalAlignment"]
  GETIMPORT R39 K94 [UDim.new]
  LOADN R40 0
  LOADN R41 8
  CALL R39 2 1
  SETTABLEKS R39 R38 K43 ["Padding"]
  GETIMPORT R39 K95 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R39 R38 K91 ["SortOrder"]
  GETIMPORT R39 K59 [Enum.VerticalAlignment.Top]
  SETTABLEKS R39 R38 K45 ["VerticalAlignment"]
  CALL R36 2 1
  SETTABLEKS R36 R35 K86 ["UIListLayout"]
  GETUPVAL R37 7
  GETTABLEKS R36 R37 K36 ["createElement"]
  GETUPVAL R37 12
  DUPTABLE R38 K99 [{"Buttons", "FillDirection", "LayoutOrder", "OnClick", "SelectedKey"}]
  NEWTABLE R39 0 2
  DUPTABLE R40 K102 [{"Key", "Text", "Disabled"}]
  LOADK R41 K24 ["DevelopmentItem"]
  SETTABLEKS R41 R40 K100 ["Key"]
  SETTABLEKS R15 R40 K69 ["Text"]
  LOADB R41 0
  SETTABLEKS R41 R40 K101 ["Disabled"]
  DUPTABLE R41 K102 [{"Key", "Text", "Disabled"}]
  LOADK R42 K25 ["AvatarItem"]
  SETTABLEKS R42 R41 K100 ["Key"]
  SETTABLEKS R16 R41 K69 ["Text"]
  LOADB R42 0
  SETTABLEKS R42 R41 K101 ["Disabled"]
  SETLIST R39 R40 2 [1]
  SETTABLEKS R39 R38 K96 ["Buttons"]
  GETIMPORT R39 K104 [Enum.FillDirection.Horizontal]
  SETTABLEKS R39 R38 K53 ["FillDirection"]
  LOADN R39 1
  SETTABLEKS R39 R38 K42 ["LayoutOrder"]
  GETTABLEKS R39 R0 K105 ["onRadioButtonClicked"]
  SETTABLEKS R39 R38 K97 ["OnClick"]
  GETTABLEKS R39 R2 K106 ["currentSelectedRadioButtonKey"]
  SETTABLEKS R39 R38 K98 ["SelectedKey"]
  CALL R36 2 1
  SETTABLEKS R36 R35 K87 ["RadioButtons"]
  GETUPVAL R37 3
  CALL R37 0 1
  JUMPIFNOT R37 [+129]
  GETUPVAL R37 7
  GETTABLEKS R36 R37 K36 ["createElement"]
  GETUPVAL R37 8
  DUPTABLE R38 K108 [{"HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing", "VerticalAlignment"}]
  GETIMPORT R39 K52 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R39 R38 K40 ["HorizontalAlignment"]
  GETIMPORT R39 K104 [Enum.FillDirection.Horizontal]
  SETTABLEKS R39 R38 K41 ["Layout"]
  LOADN R39 2
  SETTABLEKS R39 R38 K42 ["LayoutOrder"]
  GETIMPORT R39 K110 [UDim2.new]
  LOADN R40 1
  LOADN R41 0
  LOADN R42 0
  GETUPVAL R43 13
  CALL R39 4 1
  SETTABLEKS R39 R38 K107 ["Size"]
  GETUPVAL R39 14
  SETTABLEKS R39 R38 K44 ["Spacing"]
  GETIMPORT R39 K112 [Enum.VerticalAlignment.Center]
  SETTABLEKS R39 R38 K45 ["VerticalAlignment"]
  DUPTABLE R39 K115 [{"WarningMessageIcon", "WarningMessageText"}]
  JUMPIFEQKNIL R24 [+32]
  GETUPVAL R41 7
  GETTABLEKS R40 R41 K36 ["createElement"]
  LOADK R41 K116 ["ImageLabel"]
  DUPTABLE R42 K119 [{"BackgroundTransparency", "Image", "ImageColor3", "LayoutOrder", "Size"}]
  LOADN R43 1
  SETTABLEKS R43 R42 K39 ["BackgroundTransparency"]
  GETUPVAL R44 15
  GETTABLEKS R43 R44 K120 ["WARNING_ICON"]
  SETTABLEKS R43 R42 K117 ["Image"]
  GETTABLEKS R44 R4 K121 ["assetConfig"]
  GETTABLEKS R43 R44 K122 ["warningColor"]
  SETTABLEKS R43 R42 K118 ["ImageColor3"]
  LOADN R43 1
  SETTABLEKS R43 R42 K42 ["LayoutOrder"]
  GETIMPORT R43 K124 [UDim2.fromOffset]
  LOADN R44 24
  LOADN R45 24
  CALL R43 2 1
  SETTABLEKS R43 R42 K107 ["Size"]
  CALL R40 2 1
  JUMP [+1]
  LOADNIL R40
  SETTABLEKS R40 R39 K113 ["WarningMessageIcon"]
  JUMPIFEQKNIL R24 [+54]
  GETUPVAL R41 7
  GETTABLEKS R40 R41 K36 ["createElement"]
  GETUPVAL R41 16
  DUPTABLE R42 K130 [{"BackgroundTransparency", "HorizontalAlignment", "LayoutOrder", "LinkMap", "Size", "Text", "TextColor3", "TextProps", "TextXAlignment", "TextYAlignment"}]
  LOADN R43 1
  SETTABLEKS R43 R42 K39 ["BackgroundTransparency"]
  GETIMPORT R43 K52 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R43 R42 K40 ["HorizontalAlignment"]
  LOADN R43 2
  SETTABLEKS R43 R42 K42 ["LayoutOrder"]
  SETTABLEKS R25 R42 K125 ["LinkMap"]
  GETIMPORT R43 K132 [UDim2.fromScale]
  LOADN R44 1
  LOADN R45 1
  CALL R43 2 1
  SETTABLEKS R43 R42 K107 ["Size"]
  SETTABLEKS R24 R42 K69 ["Text"]
  GETTABLEKS R44 R4 K121 ["assetConfig"]
  GETTABLEKS R43 R44 K122 ["warningColor"]
  SETTABLEKS R43 R42 K126 ["TextColor3"]
  DUPTABLE R43 K133 [{"Font", "TextSize"}]
  GETUPVAL R45 2
  GETTABLEKS R44 R45 K134 ["FONT"]
  SETTABLEKS R44 R43 K75 ["Font"]
  LOADN R44 24
  SETTABLEKS R44 R43 K76 ["TextSize"]
  SETTABLEKS R43 R42 K127 ["TextProps"]
  GETIMPORT R43 K135 [Enum.TextXAlignment.Left]
  SETTABLEKS R43 R42 K128 ["TextXAlignment"]
  GETIMPORT R43 K136 [Enum.TextYAlignment.Top]
  SETTABLEKS R43 R42 K129 ["TextYAlignment"]
  CALL R40 2 1
  JUMP [+1]
  LOADNIL R40
  SETTABLEKS R40 R39 K114 ["WarningMessageText"]
  CALL R36 3 1
  JUMP [+1]
  LOADNIL R36
  SETTABLEKS R36 R35 K88 ["WarningMessageFrame"]
  GETUPVAL R37 3
  CALL R37 0 1
  JUMPIF R37 [+189]
  GETUPVAL R37 7
  GETTABLEKS R36 R37 K36 ["createElement"]
  GETUPVAL R37 8
  DUPTABLE R38 K108 [{"HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing", "VerticalAlignment"}]
  GETIMPORT R39 K52 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R39 R38 K40 ["HorizontalAlignment"]
  GETIMPORT R39 K104 [Enum.FillDirection.Horizontal]
  SETTABLEKS R39 R38 K41 ["Layout"]
  LOADN R39 2
  SETTABLEKS R39 R38 K42 ["LayoutOrder"]
  GETIMPORT R39 K110 [UDim2.new]
  LOADN R40 1
  LOADN R41 0
  LOADN R42 0
  GETUPVAL R43 13
  CALL R39 4 1
  SETTABLEKS R39 R38 K107 ["Size"]
  GETUPVAL R39 14
  SETTABLEKS R39 R38 K44 ["Spacing"]
  GETIMPORT R39 K59 [Enum.VerticalAlignment.Top]
  SETTABLEKS R39 R38 K45 ["VerticalAlignment"]
  DUPTABLE R39 K139 [{"Icon", "ModelWarningText", "InsufficientRobuxWarningText"}]
  JUMPIFNOT R10 [+2]
  GETUPVAL R41 4
  JUMPIFNOT R41 [+1]
  JUMPIFNOT R21 [+31]
  GETUPVAL R41 7
  GETTABLEKS R40 R41 K36 ["createElement"]
  LOADK R41 K116 ["ImageLabel"]
  DUPTABLE R42 K119 [{"BackgroundTransparency", "Image", "ImageColor3", "LayoutOrder", "Size"}]
  LOADN R43 1
  SETTABLEKS R43 R42 K39 ["BackgroundTransparency"]
  GETUPVAL R44 15
  GETTABLEKS R43 R44 K120 ["WARNING_ICON"]
  SETTABLEKS R43 R42 K117 ["Image"]
  GETTABLEKS R44 R4 K121 ["assetConfig"]
  GETTABLEKS R43 R44 K122 ["warningColor"]
  SETTABLEKS R43 R42 K118 ["ImageColor3"]
  LOADN R43 1
  SETTABLEKS R43 R42 K42 ["LayoutOrder"]
  GETIMPORT R43 K124 [UDim2.fromOffset]
  LOADN R44 24
  LOADN R45 24
  CALL R43 2 1
  SETTABLEKS R43 R42 K107 ["Size"]
  CALL R40 2 1
  JUMP [+1]
  LOADNIL R40
  SETTABLEKS R40 R39 K65 ["Icon"]
  JUMPIFNOT R10 [+55]
  GETUPVAL R41 4
  JUMPIF R41 [+53]
  GETUPVAL R41 7
  GETTABLEKS R40 R41 K36 ["createElement"]
  LOADK R41 K140 ["TextLabel"]
  DUPTABLE R42 K142 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor3", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
  GETIMPORT R43 K48 [Enum.AutomaticSize.XY]
  SETTABLEKS R43 R42 K37 ["AutomaticSize"]
  LOADN R43 1
  SETTABLEKS R43 R42 K39 ["BackgroundTransparency"]
  GETUPVAL R44 2
  GETTABLEKS R43 R44 K134 ["FONT"]
  SETTABLEKS R43 R42 K75 ["Font"]
  LOADN R43 2
  SETTABLEKS R43 R42 K42 ["LayoutOrder"]
  GETIMPORT R43 K110 [UDim2.new]
  LOADN R44 1
  LOADN R45 0
  LOADN R46 1
  LOADN R47 0
  CALL R43 4 1
  SETTABLEKS R43 R42 K107 ["Size"]
  SETTABLEKS R18 R42 K69 ["Text"]
  GETTABLEKS R44 R4 K121 ["assetConfig"]
  GETTABLEKS R43 R44 K122 ["warningColor"]
  SETTABLEKS R43 R42 K126 ["TextColor3"]
  LOADN R43 24
  SETTABLEKS R43 R42 K76 ["TextSize"]
  LOADB R43 1
  SETTABLEKS R43 R42 K141 ["TextWrapped"]
  GETIMPORT R43 K135 [Enum.TextXAlignment.Left]
  SETTABLEKS R43 R42 K128 ["TextXAlignment"]
  GETIMPORT R43 K143 [Enum.TextYAlignment.Center]
  SETTABLEKS R43 R42 K129 ["TextYAlignment"]
  CALL R40 2 1
  JUMP [+1]
  LOADNIL R40
  SETTABLEKS R40 R39 K137 ["ModelWarningText"]
  JUMPIFNOT R21 [+53]
  GETUPVAL R41 7
  GETTABLEKS R40 R41 K36 ["createElement"]
  LOADK R41 K140 ["TextLabel"]
  DUPTABLE R42 K142 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor3", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
  GETIMPORT R43 K48 [Enum.AutomaticSize.XY]
  SETTABLEKS R43 R42 K37 ["AutomaticSize"]
  LOADN R43 1
  SETTABLEKS R43 R42 K39 ["BackgroundTransparency"]
  GETUPVAL R44 2
  GETTABLEKS R43 R44 K134 ["FONT"]
  SETTABLEKS R43 R42 K75 ["Font"]
  LOADN R43 2
  SETTABLEKS R43 R42 K42 ["LayoutOrder"]
  GETIMPORT R43 K110 [UDim2.new]
  LOADN R44 1
  LOADN R45 0
  LOADN R46 1
  LOADN R47 0
  CALL R43 4 1
  SETTABLEKS R43 R42 K107 ["Size"]
  SETTABLEKS R22 R42 K69 ["Text"]
  GETTABLEKS R44 R4 K121 ["assetConfig"]
  GETTABLEKS R43 R44 K122 ["warningColor"]
  SETTABLEKS R43 R42 K126 ["TextColor3"]
  LOADN R43 24
  SETTABLEKS R43 R42 K76 ["TextSize"]
  LOADB R43 1
  SETTABLEKS R43 R42 K141 ["TextWrapped"]
  GETIMPORT R43 K135 [Enum.TextXAlignment.Left]
  SETTABLEKS R43 R42 K128 ["TextXAlignment"]
  GETIMPORT R43 K143 [Enum.TextYAlignment.Center]
  SETTABLEKS R43 R42 K129 ["TextYAlignment"]
  CALL R40 2 1
  JUMP [+1]
  LOADNIL R40
  SETTABLEKS R40 R39 K138 ["InsufficientRobuxWarningText"]
  CALL R36 3 1
  JUMP [+1]
  LOADNIL R36
  SETTABLEKS R36 R35 K89 ["WarningFrame"]
  CALL R32 3 1
  JUMP [+1]
  LOADNIL R32
  SETTABLEKS R32 R31 K61 ["ContentTypeRadioButtons"]
  JUMPIFNOT R27 [+225]
  GETUPVAL R33 7
  GETTABLEKS R32 R33 K36 ["createElement"]
  GETUPVAL R33 11
  DUPTABLE R34 K84 [{"AutomaticSize", "LayoutOrder", "Title"}]
  GETIMPORT R35 K48 [Enum.AutomaticSize.XY]
  SETTABLEKS R35 R34 K37 ["AutomaticSize"]
  NAMECALL R35 R5 K85 ["getNextOrder"]
  CALL R35 1 1
  SETTABLEKS R35 R34 K42 ["LayoutOrder"]
  SETTABLEKS R17 R34 K70 ["Title"]
  DUPTABLE R35 K148 [{"Dropdown", "ValidationResult", "ErrorIconButton", "ErrorMessageTextButton"}]
  GETUPVAL R37 7
  GETTABLEKS R36 R37 K36 ["createElement"]
  GETUPVAL R37 17
  DUPTABLE R38 K155 [{"fontSize", "items", "onItemClicked", "rowHeight", "selectedDropDownIndex", "Size", "visibleDropDownCount"}]
  LOADN R39 20
  SETTABLEKS R39 R38 K149 ["fontSize"]
  MOVE R41 R3
  NAMECALL R39 R0 K156 ["getDropdownItems"]
  CALL R39 2 1
  SETTABLEKS R39 R38 K150 ["items"]
  GETTABLEKS R39 R0 K157 ["setAssetCategoryIndex"]
  SETTABLEKS R39 R38 K151 ["onItemClicked"]
  LOADN R39 24
  SETTABLEKS R39 R38 K152 ["rowHeight"]
  NAMECALL R39 R0 K158 ["getAssetCategoryIndex"]
  CALL R39 1 1
  SETTABLEKS R39 R38 K153 ["selectedDropDownIndex"]
  GETIMPORT R39 K110 [UDim2.new]
  LOADN R40 0
  LOADN R41 144
  LOADN R42 0
  LOADN R43 40
  CALL R39 4 1
  SETTABLEKS R39 R38 K107 ["Size"]
  LOADN R39 6
  SETTABLEKS R39 R38 K154 ["visibleDropDownCount"]
  CALL R36 2 1
  SETTABLEKS R36 R35 K144 ["Dropdown"]
  JUMPIF R6 [+44]
  GETUPVAL R37 7
  GETTABLEKS R36 R37 K36 ["createElement"]
  GETUPVAL R37 18
  DUPTABLE R38 K161 [{"AutomaticSize", "Position", "Text", "TextColor", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
  GETIMPORT R39 K48 [Enum.AutomaticSize.XY]
  SETTABLEKS R39 R38 K37 ["AutomaticSize"]
  GETIMPORT R39 K110 [UDim2.new]
  LOADN R40 0
  ADDK R42 R7 K163 [400]
  ADDK R41 R42 K162 [16]
  LOADN R42 0
  SUBRK R44 R165 K8 ["FONT_SIZE_TITLE"]
  DIVK R43 R44 K164 [2]
  CALL R39 4 1
  SETTABLEKS R39 R38 K159 ["Position"]
  NAMECALL R39 R0 K166 ["getValidationStatusMessage"]
  CALL R39 1 1
  SETTABLEKS R39 R38 K69 ["Text"]
  MOVE R41 R4
  NAMECALL R39 R0 K167 ["getValidationStatusColor"]
  CALL R39 2 1
  SETTABLEKS R39 R38 K160 ["TextColor"]
  LOADB R39 1
  SETTABLEKS R39 R38 K141 ["TextWrapped"]
  GETIMPORT R39 K135 [Enum.TextXAlignment.Left]
  SETTABLEKS R39 R38 K128 ["TextXAlignment"]
  GETIMPORT R39 K143 [Enum.TextYAlignment.Center]
  SETTABLEKS R39 R38 K129 ["TextYAlignment"]
  CALL R36 2 1
  JUMP [+1]
  LOADNIL R36
  SETTABLEKS R36 R35 K145 ["ValidationResult"]
  JUMPIFNOT R6 [+47]
  GETUPVAL R37 7
  GETTABLEKS R36 R37 K36 ["createElement"]
  LOADK R37 K168 ["ImageButton"]
  NEWTABLE R38 8 0
  LOADB R39 0
  SETTABLEKS R39 R38 K169 ["AutoButtonColor"]
  LOADN R39 1
  SETTABLEKS R39 R38 K39 ["BackgroundTransparency"]
  LOADK R39 K80 ["rbxasset://textures/ui/ErrorIcon.png"]
  SETTABLEKS R39 R38 K117 ["Image"]
  MOVE R41 R4
  NAMECALL R39 R0 K167 ["getValidationStatusColor"]
  CALL R39 2 1
  SETTABLEKS R39 R38 K118 ["ImageColor3"]
  GETIMPORT R39 K110 [UDim2.new]
  LOADN R40 0
  LOADN R41 152
  LOADN R42 0
  LOADN R43 8
  CALL R39 4 1
  SETTABLEKS R39 R38 K159 ["Position"]
  GETIMPORT R39 K124 [UDim2.fromOffset]
  LOADN R40 24
  LOADN R41 24
  CALL R39 2 1
  SETTABLEKS R39 R38 K107 ["Size"]
  GETUPVAL R41 7
  GETTABLEKS R40 R41 K170 ["Event"]
  GETTABLEKS R39 R40 K171 ["Activated"]
  GETTABLEKS R40 R0 K172 ["openValidationErrorMessageBox"]
  SETTABLE R40 R38 R39
  CALL R36 2 1
  JUMP [+1]
  LOADNIL R36
  SETTABLEKS R36 R35 K146 ["ErrorIconButton"]
  JUMPIFNOT R6 [+62]
  GETUPVAL R37 7
  GETTABLEKS R36 R37 K36 ["createElement"]
  LOADK R37 K173 ["TextButton"]
  NEWTABLE R38 16 0
  GETIMPORT R39 K48 [Enum.AutomaticSize.XY]
  SETTABLEKS R39 R38 K37 ["AutomaticSize"]
  LOADN R39 1
  SETTABLEKS R39 R38 K39 ["BackgroundTransparency"]
  GETTABLEKS R39 R4 K75 ["Font"]
  SETTABLEKS R39 R38 K75 ["Font"]
  GETIMPORT R39 K110 [UDim2.new]
  LOADN R40 0
  ADDK R42 R7 K163 [400]
  ADDK R41 R42 K162 [16]
  LOADN R42 0
  SUBRK R44 R165 K8 ["FONT_SIZE_TITLE"]
  DIVK R43 R44 K164 [2]
  CALL R39 4 1
  SETTABLEKS R39 R38 K159 ["Position"]
  NAMECALL R39 R0 K166 ["getValidationStatusMessage"]
  CALL R39 1 1
  SETTABLEKS R39 R38 K69 ["Text"]
  MOVE R41 R4
  NAMECALL R39 R0 K167 ["getValidationStatusColor"]
  CALL R39 2 1
  SETTABLEKS R39 R38 K126 ["TextColor3"]
  GETUPVAL R40 2
  GETTABLEKS R39 R40 K8 ["FONT_SIZE_TITLE"]
  SETTABLEKS R39 R38 K76 ["TextSize"]
  GETIMPORT R39 K135 [Enum.TextXAlignment.Left]
  SETTABLEKS R39 R38 K128 ["TextXAlignment"]
  GETIMPORT R39 K143 [Enum.TextYAlignment.Center]
  SETTABLEKS R39 R38 K129 ["TextYAlignment"]
  GETUPVAL R41 7
  GETTABLEKS R40 R41 K170 ["Event"]
  GETTABLEKS R39 R40 K171 ["Activated"]
  GETTABLEKS R40 R0 K172 ["openValidationErrorMessageBox"]
  SETTABLE R40 R38 R39
  CALL R36 2 1
  JUMP [+1]
  LOADNIL R36
  SETTABLEKS R36 R35 K147 ["ErrorMessageTextButton"]
  CALL R32 3 1
  JUMP [+1]
  LOADNIL R32
  SETTABLEKS R32 R31 K62 ["AssetCategoryDropDown"]
  GETUPVAL R33 5
  CALL R33 0 1
  JUMPIFNOT R33 [+132]
  GETIMPORT R33 K175 [Enum.AssetType.EmoteAnimation]
  JUMPIFNOTEQ R9 R33 [+129]
  GETUPVAL R33 7
  GETTABLEKS R32 R33 K36 ["createElement"]
  GETUPVAL R33 8
  DUPTABLE R34 K176 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing", "VerticalAlignment"}]
  GETIMPORT R35 K178 [Enum.AutomaticSize.Y]
  SETTABLEKS R35 R34 K37 ["AutomaticSize"]
  GETIMPORT R35 K52 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R35 R34 K40 ["HorizontalAlignment"]
  GETIMPORT R35 K104 [Enum.FillDirection.Horizontal]
  SETTABLEKS R35 R34 K41 ["Layout"]
  NAMECALL R35 R5 K85 ["getNextOrder"]
  CALL R35 1 1
  SETTABLEKS R35 R34 K42 ["LayoutOrder"]
  GETIMPORT R35 K132 [UDim2.fromScale]
  LOADN R36 1
  LOADN R37 0
  CALL R35 2 1
  SETTABLEKS R35 R34 K107 ["Size"]
  LOADN R35 8
  SETTABLEKS R35 R34 K44 ["Spacing"]
  GETIMPORT R35 K59 [Enum.VerticalAlignment.Top]
  SETTABLEKS R35 R34 K45 ["VerticalAlignment"]
  DUPTABLE R35 K180 [{"Icon", "UGCWarningText"}]
  GETUPVAL R37 7
  GETTABLEKS R36 R37 K36 ["createElement"]
  LOADK R37 K116 ["ImageLabel"]
  DUPTABLE R38 K119 [{"BackgroundTransparency", "Image", "ImageColor3", "LayoutOrder", "Size"}]
  LOADN R39 1
  SETTABLEKS R39 R38 K39 ["BackgroundTransparency"]
  GETUPVAL R40 15
  GETTABLEKS R39 R40 K120 ["WARNING_ICON"]
  SETTABLEKS R39 R38 K117 ["Image"]
  GETTABLEKS R40 R4 K121 ["assetConfig"]
  GETTABLEKS R39 R40 K122 ["warningColor"]
  SETTABLEKS R39 R38 K118 ["ImageColor3"]
  LOADN R39 1
  SETTABLEKS R39 R38 K42 ["LayoutOrder"]
  GETIMPORT R39 K124 [UDim2.fromOffset]
  LOADN R40 24
  LOADN R41 24
  CALL R39 2 1
  SETTABLEKS R39 R38 K107 ["Size"]
  CALL R36 2 1
  SETTABLEKS R36 R35 K65 ["Icon"]
  GETUPVAL R37 7
  GETTABLEKS R36 R37 K36 ["createElement"]
  LOADK R37 K140 ["TextLabel"]
  DUPTABLE R38 K142 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor3", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
  GETIMPORT R39 K178 [Enum.AutomaticSize.Y]
  SETTABLEKS R39 R38 K37 ["AutomaticSize"]
  LOADN R39 1
  SETTABLEKS R39 R38 K39 ["BackgroundTransparency"]
  GETUPVAL R40 2
  GETTABLEKS R39 R40 K134 ["FONT"]
  SETTABLEKS R39 R38 K75 ["Font"]
  LOADN R39 2
  SETTABLEKS R39 R38 K42 ["LayoutOrder"]
  GETIMPORT R39 K110 [UDim2.new]
  LOADN R40 1
  GETUPVAL R42 19
  CALL R42 0 1
  JUMPIFNOT R42 [+2]
  LOADN R41 224
  JUMP [+1]
  LOADN R41 0
  CALL R39 2 1
  SETTABLEKS R39 R38 K107 ["Size"]
  SETTABLEKS R26 R38 K69 ["Text"]
  GETTABLEKS R40 R4 K121 ["assetConfig"]
  GETTABLEKS R39 R40 K122 ["warningColor"]
  SETTABLEKS R39 R38 K126 ["TextColor3"]
  LOADN R39 24
  SETTABLEKS R39 R38 K76 ["TextSize"]
  LOADB R39 1
  SETTABLEKS R39 R38 K141 ["TextWrapped"]
  GETIMPORT R39 K135 [Enum.TextXAlignment.Left]
  SETTABLEKS R39 R38 K128 ["TextXAlignment"]
  GETIMPORT R39 K143 [Enum.TextYAlignment.Center]
  SETTABLEKS R39 R38 K129 ["TextYAlignment"]
  CALL R36 2 1
  SETTABLEKS R36 R35 K179 ["UGCWarningText"]
  CALL R32 3 1
  JUMP [+1]
  LOADNIL R32
  SETTABLEKS R32 R31 K33 ["EmoteAnimationWarning"]
  CALL R28 3 -1
  RETURN R28 -1

PROTO_45:
  MOVE R1 R0
  JUMPIF R1 [+2]
  NEWTABLE R1 0 0
  MOVE R0 R1
  DUPTABLE R1 K6 [{"allowedAssetTypesForRelease", "allowedBundleTypeSettings", "assetTypeEnum", "canAffordUploadFee", "instances", "uploadFee"}]
  GETTABLEKS R2 R0 K0 ["allowedAssetTypesForRelease"]
  SETTABLEKS R2 R1 K0 ["allowedAssetTypesForRelease"]
  GETTABLEKS R2 R0 K1 ["allowedBundleTypeSettings"]
  SETTABLEKS R2 R1 K1 ["allowedBundleTypeSettings"]
  GETTABLEKS R2 R0 K2 ["assetTypeEnum"]
  SETTABLEKS R2 R1 K2 ["assetTypeEnum"]
  GETTABLEKS R3 R0 K3 ["canAffordUploadFee"]
  ORK R2 R3 K7 [False]
  SETTABLEKS R2 R1 K3 ["canAffordUploadFee"]
  GETTABLEKS R2 R0 K4 ["instances"]
  SETTABLEKS R2 R1 K4 ["instances"]
  GETTABLEKS R3 R0 K5 ["uploadFee"]
  ORK R2 R3 K8 [0]
  SETTABLEKS R2 R1 K5 ["uploadFee"]
  RETURN R1 1

PROTO_46:
  GETUPVAL R4 0
  GETUPVAL R5 1
  MOVE R6 R0
  CALL R5 1 -1
  CALL R4 -1 0
  RETURN R0 0

PROTO_47:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_48:
  DUPTABLE R1 K2 [{"onAssetTypeSelected", "onAssetValidationResultChanged"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["onAssetTypeSelected"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["onAssetValidationResultChanged"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["BrowserService"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETTABLEKS R2 R0 K8 ["Packages"]
  GETIMPORT R3 K10 [require]
  GETTABLEKS R4 R2 K11 ["Cryo"]
  CALL R3 1 1
  GETIMPORT R4 K10 [require]
  GETTABLEKS R5 R2 K12 ["Framework"]
  CALL R4 1 1
  GETIMPORT R5 K10 [require]
  GETTABLEKS R6 R2 K13 ["Roact"]
  CALL R5 1 1
  GETIMPORT R6 K10 [require]
  GETTABLEKS R7 R2 K14 ["RoactRodux"]
  CALL R6 1 1
  GETIMPORT R7 K10 [require]
  GETTABLEKS R8 R2 K15 ["UGCValidation"]
  CALL R7 1 1
  GETTABLEKS R8 R4 K16 ["ContextServices"]
  GETTABLEKS R9 R8 K17 ["withContext"]
  GETIMPORT R10 K10 [require]
  GETTABLEKS R13 R0 K18 ["Core"]
  GETTABLEKS R12 R13 K16 ["ContextServices"]
  GETTABLEKS R11 R12 K19 ["NetworkContext"]
  CALL R10 1 1
  GETTABLEKS R12 R0 K18 ["Core"]
  GETTABLEKS R11 R12 K20 ["Util"]
  GETIMPORT R12 K10 [require]
  GETTABLEKS R14 R11 K21 ["Analytics"]
  GETTABLEKS R13 R14 K21 ["Analytics"]
  CALL R12 1 1
  GETIMPORT R13 K10 [require]
  GETTABLEKS R14 R11 K22 ["AssetConfigUtil"]
  CALL R13 1 1
  GETIMPORT R14 K10 [require]
  GETTABLEKS R15 R11 K23 ["fixUpPreValidation"]
  CALL R14 1 1
  GETIMPORT R15 K10 [require]
  GETTABLEKS R16 R11 K24 ["Constants"]
  CALL R15 1 1
  GETIMPORT R16 K10 [require]
  GETTABLEKS R17 R11 K25 ["DebugFlags"]
  CALL R16 1 1
  GETIMPORT R17 K10 [require]
  GETTABLEKS R18 R11 K26 ["Images"]
  CALL R17 1 1
  GETIMPORT R18 K10 [require]
  GETTABLEKS R20 R11 K27 ["SharedFlags"]
  GETTABLEKS R19 R20 K28 ["getFFlagUGCBundleValidationFullBodyErrors"]
  CALL R18 1 1
  GETIMPORT R19 K10 [require]
  GETTABLEKS R20 R11 K29 ["getAllowedAssetTypeEnums"]
  CALL R19 1 1
  GETIMPORT R20 K10 [require]
  GETTABLEKS R23 R0 K18 ["Core"]
  GETTABLEKS R22 R23 K30 ["Localization"]
  GETTABLEKS R21 R22 K31 ["getLocalizedAssetTextMap"]
  CALL R20 1 1
  GETTABLEKS R22 R4 K20 ["Util"]
  GETTABLEKS R21 R22 K32 ["LayoutOrderIterator"]
  GETTABLEKS R22 R4 K33 ["UI"]
  GETTABLEKS R23 R22 K34 ["Pane"]
  GETTABLEKS R24 R22 K35 ["RadioButtonList"]
  GETTABLEKS R25 R22 K36 ["TextLabel"]
  GETTABLEKS R26 R22 K37 ["TextWithLinks"]
  GETIMPORT R27 K10 [require]
  GETTABLEKS R30 R0 K18 ["Core"]
  GETTABLEKS R29 R30 K38 ["Actions"]
  GETTABLEKS R28 R29 K39 ["SetUploadAssetType"]
  CALL R27 1 1
  GETIMPORT R28 K10 [require]
  GETTABLEKS R31 R0 K18 ["Core"]
  GETTABLEKS R30 R31 K38 ["Actions"]
  GETTABLEKS R29 R30 K40 ["SetUploadAssetValidationStatus"]
  CALL R28 1 1
  GETIMPORT R29 K10 [require]
  GETTABLEKS R32 R0 K18 ["Core"]
  GETTABLEKS R31 R32 K41 ["Components"]
  GETTABLEKS R30 R31 K42 ["DropdownMenu"]
  CALL R29 1 1
  GETIMPORT R30 K10 [require]
  GETTABLEKS R34 R0 K18 ["Core"]
  GETTABLEKS R33 R34 K41 ["Components"]
  GETTABLEKS R32 R33 K43 ["MessageBox"]
  GETTABLEKS R31 R32 K43 ["MessageBox"]
  CALL R30 1 1
  GETIMPORT R31 K10 [require]
  GETTABLEKS R34 R0 K18 ["Core"]
  GETTABLEKS R33 R34 K41 ["Components"]
  GETTABLEKS R32 R33 K44 ["StyledScrollingFrame"]
  CALL R31 1 1
  GETTABLEKS R34 R0 K18 ["Core"]
  GETTABLEKS R33 R34 K41 ["Components"]
  GETTABLEKS R32 R33 K45 ["AssetConfiguration"]
  GETIMPORT R33 K10 [require]
  GETTABLEKS R34 R32 K46 ["ConfigSectionWrapper"]
  CALL R33 1 1
  GETIMPORT R34 K10 [require]
  GETTABLEKS R35 R32 K47 ["UGCBundleValidation"]
  CALL R34 1 1
  GETIMPORT R35 K10 [require]
  GETTABLEKS R36 R32 K48 ["ValidationStatus"]
  CALL R35 1 1
  GETIMPORT R36 K10 [require]
  GETTABLEKS R37 R11 K49 ["AssetConfigConstants"]
  CALL R36 1 1
  GETIMPORT R37 K10 [require]
  GETTABLEKS R38 R32 K50 ["DataConsentToggle"]
  CALL R37 1 1
  GETIMPORT R38 K5 [game]
  LOADK R40 K51 ["BodyFirstInAssetsCategory"]
  LOADB R41 0
  NAMECALL R38 R38 K52 ["DefineFastFlag"]
  CALL R38 3 0
  GETIMPORT R38 K5 [game]
  LOADK R40 K53 ["DisableSubmitButtonForValidationInInit"]
  LOADB R41 0
  NAMECALL R38 R38 K52 ["DefineFastFlag"]
  CALL R38 3 1
  GETIMPORT R39 K10 [require]
  GETTABLEKS R41 R11 K27 ["SharedFlags"]
  GETTABLEKS R40 R41 K54 ["getFFlagEnableUGCUploadFlowAnalytics"]
  CALL R39 1 1
  GETIMPORT R40 K10 [require]
  GETTABLEKS R42 R11 K27 ["SharedFlags"]
  GETTABLEKS R41 R42 K55 ["getFFlagEnableUGCBundleUploadBodyScale"]
  CALL R40 1 1
  GETIMPORT R41 K10 [require]
  GETTABLEKS R44 R0 K18 ["Core"]
  GETTABLEKS R43 R44 K56 ["Flags"]
  GETTABLEKS R42 R43 K57 ["getFFlagRequireBodyColorsForBodyUpload"]
  CALL R41 1 1
  GETIMPORT R42 K10 [require]
  GETTABLEKS R44 R11 K27 ["SharedFlags"]
  GETTABLEKS R43 R44 K58 ["getFFlagEnableUGCForAllChecks"]
  CALL R42 1 1
  GETIMPORT R43 K10 [require]
  GETTABLEKS R46 R0 K18 ["Core"]
  GETTABLEKS R45 R46 K56 ["Flags"]
  GETTABLEKS R44 R45 K59 ["getFFlagEnableUploadingShoes"]
  CALL R43 1 1
  GETIMPORT R44 K10 [require]
  GETTABLEKS R47 R0 K18 ["Core"]
  GETTABLEKS R46 R47 K56 ["Flags"]
  GETTABLEKS R45 R46 K60 ["getFFlagToolboxErrorMessageBoxResizable"]
  CALL R44 1 1
  GETIMPORT R45 K10 [require]
  GETTABLEKS R48 R0 K18 ["Core"]
  GETTABLEKS R47 R48 K56 ["Flags"]
  GETTABLEKS R46 R47 K61 ["getFFlagFixEmoteWarningSize"]
  CALL R45 1 1
  GETIMPORT R46 K10 [require]
  GETTABLEKS R49 R0 K18 ["Core"]
  GETTABLEKS R48 R49 K56 ["Flags"]
  GETTABLEKS R47 R48 K62 ["getFStringAssetsToBypassValidation"]
  CALL R46 1 1
  GETIMPORT R47 K10 [require]
  GETTABLEKS R50 R0 K18 ["Core"]
  GETTABLEKS R49 R50 K56 ["Flags"]
  GETTABLEKS R48 R49 K63 ["getFFlagAssetBypassValidation"]
  CALL R47 1 1
  GETIMPORT R48 K5 [game]
  LOADK R50 K64 ["ToolboxConfigAssetTypeAgeIDVerificationLink"]
  LOADK R51 K65 ["https://en.help.roblox.com/hc/en-us/articles/4407282410644-Age-ID-Verification"]
  NAMECALL R48 R48 K66 ["DefineFastString"]
  CALL R48 3 1
  GETIMPORT R49 K5 [game]
  LOADK R51 K67 ["ToolboxConfigAssetTypePremiumLink"]
  LOADK R52 K68 ["https://www.roblox.com/premium/membership"]
  NAMECALL R49 R49 K66 ["DefineFastString"]
  CALL R49 3 1
  GETIMPORT R50 K5 [game]
  LOADK R52 K69 ["ToolboxFixUGCBundleValidationCryoThingy1"]
  LOADB R53 0
  NAMECALL R50 R50 K52 ["DefineFastFlag"]
  CALL R50 3 1
  GETIMPORT R51 K5 [game]
  LOADK R53 K70 ["ToolboxShowAnimationAssetSelection"]
  LOADB R54 0
  NAMECALL R51 R51 K52 ["DefineFastFlag"]
  CALL R51 3 1
  GETIMPORT R52 K5 [game]
  LOADK R54 K71 ["ToolboxRemoveRestrictedAssetWarning2"]
  NAMECALL R52 R52 K72 ["GetFastFlag"]
  CALL R52 2 1
  GETIMPORT R53 K10 [require]
  GETTABLEKS R56 R0 K18 ["Core"]
  GETTABLEKS R55 R56 K56 ["Flags"]
  GETTABLEKS R54 R55 K73 ["getFFlagEnableUploadingEmote"]
  CALL R53 1 1
  GETTABLEKS R54 R5 K74 ["PureComponent"]
  LOADK R56 K75 ["ConfigAssetType"]
  NAMECALL R54 R54 K76 ["extend"]
  CALL R54 2 1
  MOVE R56 R42
  CALL R56 0 1
  JUMPIFNOT R56 [+2]
  LOADN R55 10
  JUMP [+1]
  LOADN R55 0
  MOVE R57 R42
  CALL R57 0 1
  JUMPIFNOT R57 [+2]
  LOADN R56 72
  JUMP [+1]
  LOADN R56 24
  NEWTABLE R57 0 0
  GETIMPORT R58 K5 [game]
  LOADK R60 K51 ["BodyFirstInAssetsCategory"]
  NAMECALL R58 R58 K72 ["GetFastFlag"]
  CALL R58 2 1
  JUMPIFNOT R58 [+22]
  NEWTABLE R58 0 3
  GETTABLEKS R60 R36 K77 ["UGCBundleTypes"]
  GETTABLEKS R59 R60 K78 ["Body"]
  GETTABLEKS R61 R36 K77 ["UGCBundleTypes"]
  GETTABLEKS R60 R61 K79 ["DynamicHead"]
  MOVE R62 R43
  CALL R62 0 1
  JUMPIFNOT R62 [+5]
  GETTABLEKS R62 R36 K77 ["UGCBundleTypes"]
  GETTABLEKS R61 R62 K80 ["Shoes"]
  JUMP [+1]
  LOADNIL R61
  SETLIST R58 R59 3 [1]
  MOVE R57 R58
  DUPCLOSURE R58 K81 [PROTO_0]
  CAPTURE VAL R13
  DUPCLOSURE R59 K82 [PROTO_14]
  CAPTURE VAL R39
  CAPTURE VAL R13
  CAPTURE VAL R16
  CAPTURE VAL R36
  CAPTURE VAL R12
  CAPTURE VAL R38
  SETTABLEKS R59 R54 K83 ["init"]
  DUPCLOSURE R59 K84 [PROTO_15]
  SETTABLEKS R59 R54 K85 ["getAvatarItemCategoryErrorsPrimaryText"]
  DUPCLOSURE R59 K86 [PROTO_16]
  SETTABLEKS R59 R54 K87 ["getAvatarItemCategoryErrors"]
  DUPCLOSURE R59 K88 [PROTO_17]
  SETTABLEKS R59 R54 K89 ["selectedRadioButtonKeyFor"]
  DUPCLOSURE R59 K90 [PROTO_18]
  SETTABLEKS R59 R54 K91 ["isAvatarItemCategorySelected"]
  DUPCLOSURE R59 K92 [PROTO_22]
  CAPTURE VAL R3
  CAPTURE VAL R42
  CAPTURE VAL R13
  CAPTURE VAL R36
  SETTABLEKS R59 R54 K93 ["onAssetTypeChanged"]
  DUPCLOSURE R59 K94 [PROTO_24]
  CAPTURE VAL R36
  CAPTURE VAL R3
  SETTABLEKS R59 R54 K95 ["resetValidation"]
  DUPCLOSURE R59 K96 [PROTO_25]
  SETTABLEKS R59 R54 K97 ["cancelValidationTasks"]
  DUPCLOSURE R59 K98 [PROTO_26]
  SETTABLEKS R59 R54 K99 ["getErrorMessageWithCount"]
  DUPCLOSURE R59 K100 [PROTO_27]
  CAPTURE VAL R36
  SETTABLEKS R59 R54 K101 ["getValidationStatusMessage"]
  DUPCLOSURE R59 K102 [PROTO_28]
  CAPTURE VAL R36
  SETTABLEKS R59 R54 K103 ["getValidationStatusColor"]
  DUPCLOSURE R59 K104 [PROTO_29]
  SETTABLEKS R59 R54 K105 ["getAssetCategoryIndex"]
  NEWCLOSURE R59 P13
  CAPTURE VAL R13
  CAPTURE REF R57
  CAPTURE VAL R19
  CAPTURE VAL R20
  SETTABLEKS R59 R54 K106 ["getDropdownItemsFor"]
  DUPCLOSURE R59 K107 [PROTO_32]
  SETTABLEKS R59 R54 K108 ["getDropdownItems"]
  DUPCLOSURE R59 K109 [PROTO_33]
  CAPTURE VAL R13
  CAPTURE VAL R21
  CAPTURE VAL R5
  CAPTURE VAL R25
  CAPTURE VAL R15
  CAPTURE VAL R20
  SETTABLEKS R59 R54 K110 ["getMissingOptionalPartsMessage"]
  DUPCLOSURE R59 K111 [PROTO_34]
  CAPTURE VAL R13
  CAPTURE VAL R21
  CAPTURE VAL R5
  CAPTURE VAL R25
  CAPTURE VAL R15
  SETTABLEKS R59 R54 K112 ["getUnknownMeshPartMessage"]
  MOVE R59 R42
  CALL R59 0 1
  JUMPIFNOT R59 [+7]
  DUPCLOSURE R59 K113 [PROTO_37]
  CAPTURE VAL R1
  CAPTURE VAL R48
  CAPTURE VAL R49
  CAPTURE VAL R52
  SETTABLEKS R59 R54 K114 ["getUgcRestrictionsWarningText"]
  DUPCLOSURE R59 K115 [PROTO_41]
  CAPTURE VAL R36
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R47
  CAPTURE VAL R46
  CAPTURE VAL R7
  SETTABLEKS R59 R54 K116 ["didUpdate"]
  DUPCLOSURE R59 K117 [PROTO_42]
  SETTABLEKS R59 R54 K118 ["willUnmount"]
  DUPCLOSURE R59 K119 [PROTO_44]
  CAPTURE VAL R21
  CAPTURE VAL R36
  CAPTURE VAL R15
  CAPTURE VAL R42
  CAPTURE VAL R52
  CAPTURE VAL R53
  CAPTURE VAL R51
  CAPTURE VAL R5
  CAPTURE VAL R23
  CAPTURE VAL R30
  CAPTURE VAL R44
  CAPTURE VAL R33
  CAPTURE VAL R24
  CAPTURE VAL R56
  CAPTURE VAL R55
  CAPTURE VAL R17
  CAPTURE VAL R26
  CAPTURE VAL R29
  CAPTURE VAL R25
  CAPTURE VAL R45
  SETTABLEKS R59 R54 K120 ["render"]
  DUPCLOSURE R59 K121 [PROTO_45]
  DUPCLOSURE R60 K122 [PROTO_48]
  CAPTURE VAL R27
  CAPTURE VAL R28
  MOVE R61 R9
  DUPTABLE R62 K124 [{"Stylizer", "Localization"}]
  GETTABLEKS R63 R8 K123 ["Stylizer"]
  SETTABLEKS R63 R62 K123 ["Stylizer"]
  GETTABLEKS R63 R8 K30 ["Localization"]
  SETTABLEKS R63 R62 K30 ["Localization"]
  CALL R61 1 1
  MOVE R62 R54
  CALL R61 1 1
  MOVE R54 R61
  GETTABLEKS R61 R6 K125 ["connect"]
  MOVE R62 R59
  MOVE R63 R60
  CALL R61 2 1
  MOVE R62 R54
  CALL R61 1 -1
  CLOSEUPVALS R57
  RETURN R61 -1
