PROTO_0:
  JUMPIFNOTEQKS R0 K0 ["Body"] [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["increment"]
  CALL R1 0 0
  RETURN R0 0
  JUMPIFNOTEQKS R0 K2 ["Layered"] [+6]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["increment"]
  CALL R1 0 0
  RETURN R0 0
  JUMPIFNOTEQKS R0 K3 ["Rigid"] [+6]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K1 ["increment"]
  CALL R1 0 0
  RETURN R0 0
  JUMPIFNOTEQKS R0 K4 ["Avatar"] [+6]
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K1 ["increment"]
  CALL R1 0 0
  RETURN R0 0
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K1 ["increment"]
  CALL R1 0 0
  RETURN R0 0

PROTO_1:
  JUMPIFNOTEQKS R0 K0 ["Body"] [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["decrement"]
  CALL R1 0 0
  RETURN R0 0
  JUMPIFNOTEQKS R0 K2 ["Layered"] [+6]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["decrement"]
  CALL R1 0 0
  RETURN R0 0
  JUMPIFNOTEQKS R0 K3 ["Rigid"] [+6]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K1 ["decrement"]
  CALL R1 0 0
  RETURN R0 0
  JUMPIFNOTEQKS R0 K4 ["Avatar"] [+6]
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K1 ["decrement"]
  CALL R1 0 0
  RETURN R0 0
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K1 ["decrement"]
  CALL R1 0 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  CALL R2 0 1
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["getFFlagAvatarAutosetupOptionsInput is not enabled!"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETUPVAL R1 1
  LOADK R2 K3 ["AvatarPreviewer_SetupType"]
  LOADN R3 1
  CALL R1 2 2
  GETUPVAL R3 2
  LOADK R4 K4 ["AvatarPreviewer_AlignFrontAngle"]
  LOADB R5 0
  CALL R3 2 1
  GETUPVAL R5 3
  JUMPIFNOT R5 [+5]
  GETUPVAL R4 2
  LOADK R5 K5 ["AvatarPreviewer_EnableAdditionalHeadProcessing2"]
  LOADB R6 1
  CALL R4 2 1
  JUMP [+4]
  GETUPVAL R4 2
  LOADK R5 K6 ["AvatarPreviewer_EnableAdditionalHeadProcessing"]
  LOADB R6 0
  CALL R4 2 1
  GETUPVAL R5 2
  LOADK R6 K7 ["AvatarPreviewer_R15Plus"]
  LOADB R7 0
  CALL R5 2 1
  GETUPVAL R6 2
  LOADK R7 K8 ["AvatarPreviewer_ReduceTriangles"]
  LOADB R8 0
  CALL R6 2 1
  GETUPVAL R7 4
  CALL R7 0 1
  GETUPVAL R8 4
  CALL R8 0 1
  GETUPVAL R9 4
  CALL R9 0 1
  GETUPVAL R10 4
  CALL R10 0 1
  GETUPVAL R11 4
  CALL R11 0 1
  GETUPVAL R13 5
  GETTABLEKS R12 R13 K9 ["useCallback"]
  NEWCLOSURE R13 P0
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R8
  CAPTURE VAL R7
  NEWTABLE R14 0 4
  GETTABLEKS R15 R9 K10 ["increment"]
  GETTABLEKS R16 R10 K10 ["increment"]
  GETTABLEKS R17 R11 K10 ["increment"]
  GETTABLEKS R18 R7 K10 ["increment"]
  SETLIST R14 R15 4 [1]
  CALL R12 2 1
  GETUPVAL R14 5
  GETTABLEKS R13 R14 K9 ["useCallback"]
  NEWCLOSURE R14 P1
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R8
  CAPTURE VAL R7
  NEWTABLE R15 0 4
  GETTABLEKS R16 R9 K11 ["decrement"]
  GETTABLEKS R17 R10 K11 ["decrement"]
  GETTABLEKS R18 R11 K11 ["decrement"]
  GETTABLEKS R19 R7 K11 ["decrement"]
  SETLIST R15 R16 4 [1]
  CALL R13 2 1
  LOADB R14 0
  GETTABLEKS R15 R9 K12 ["amount"]
  JUMPIFNOTEQKN R15 K13 [0] [+11]
  GETTABLEKS R16 R10 K12 ["amount"]
  GETTABLEKS R17 R11 K12 ["amount"]
  ADD R15 R16 R17
  LOADN R16 0
  JUMPIFLT R16 R15 [+2]
  LOADB R14 0 +1
  LOADB R14 1
  MOVE R15 R14
  JUMPIFNOT R15 [+6]
  GETTABLEKS R16 R8 K12 ["amount"]
  JUMPIFEQKN R16 K13 [0] [+2]
  LOADB R15 0 +1
  LOADB R15 1
  DUPTABLE R16 K16 [{"shouldCreateTemplateBody", "assetClassification"}]
  SETTABLEKS R15 R16 K14 ["shouldCreateTemplateBody"]
  DUPTABLE R17 K22 [{"bodyCount", "layeredCount", "rigidCount", "avatarCount", "unselectedCount"}]
  GETTABLEKS R18 R9 K12 ["amount"]
  SETTABLEKS R18 R17 K17 ["bodyCount"]
  GETTABLEKS R18 R10 K12 ["amount"]
  SETTABLEKS R18 R17 K18 ["layeredCount"]
  GETTABLEKS R18 R11 K12 ["amount"]
  SETTABLEKS R18 R17 K19 ["rigidCount"]
  GETTABLEKS R18 R8 K12 ["amount"]
  SETTABLEKS R18 R17 K20 ["avatarCount"]
  GETTABLEKS R18 R7 K12 ["amount"]
  SETTABLEKS R18 R17 K21 ["unselectedCount"]
  SETTABLEKS R17 R16 K15 ["assetClassification"]
  JUMPIFNOTEQKN R1 K23 [1] [+18]
  DUPTABLE R17 K28 [{"SetupType", "AlignFrontAngle", "ClothingOnly", "EnableAdditionalHeadProcessing", "shouldCreateTemplateBody"}]
  LOADK R18 K29 ["Platform"]
  SETTABLEKS R18 R17 K24 ["SetupType"]
  GETTABLEKS R18 R3 K30 ["enabled"]
  SETTABLEKS R18 R17 K25 ["AlignFrontAngle"]
  SETTABLEKS R14 R17 K26 ["ClothingOnly"]
  GETTABLEKS R18 R4 K30 ["enabled"]
  SETTABLEKS R18 R17 K27 ["EnableAdditionalHeadProcessing"]
  SETTABLEKS R15 R17 K14 ["shouldCreateTemplateBody"]
  JUMP [+35]
  JUMPIFNOTEQKN R1 K31 [2] [+30]
  DUPTABLE R17 K34 [{"SetupType", "AlignFrontAngle", "R15Plus", "DecimationOptions", "ClothingOnly", "EnableAdditionalHeadProcessing", "shouldCreateTemplateBody"}]
  LOADK R18 K35 ["Development"]
  SETTABLEKS R18 R17 K24 ["SetupType"]
  GETTABLEKS R18 R3 K30 ["enabled"]
  SETTABLEKS R18 R17 K25 ["AlignFrontAngle"]
  GETTABLEKS R18 R5 K30 ["enabled"]
  SETTABLEKS R18 R17 K32 ["R15Plus"]
  GETTABLEKS R19 R6 K30 ["enabled"]
  JUMPIFNOT R19 [+2]
  LOADK R18 K36 ["EverythingEnabled"]
  JUMP [+1]
  LOADK R18 K37 ["Unspecified"]
  SETTABLEKS R18 R17 K33 ["DecimationOptions"]
  SETTABLEKS R14 R17 K26 ["ClothingOnly"]
  GETTABLEKS R18 R4 K30 ["enabled"]
  SETTABLEKS R18 R17 K27 ["EnableAdditionalHeadProcessing"]
  SETTABLEKS R15 R17 K14 ["shouldCreateTemplateBody"]
  JUMP [+4]
  DUPTABLE R17 K38 [{"SetupType"}]
  LOADK R18 K37 ["Unspecified"]
  SETTABLEKS R18 R17 K24 ["SetupType"]
  DUPTABLE R18 K45 [{"value", "set", "toggle", "options", "incrementCount", "decrementCount"}]
  DUPTABLE R19 K51 [{"setupType", "alignFrontAngle", "enableAdditionalHeadProcessing", "r15Plus", "reduceTriangles"}]
  SETTABLEKS R1 R19 K46 ["setupType"]
  GETTABLEKS R20 R3 K30 ["enabled"]
  SETTABLEKS R20 R19 K47 ["alignFrontAngle"]
  GETTABLEKS R20 R4 K30 ["enabled"]
  SETTABLEKS R20 R19 K48 ["enableAdditionalHeadProcessing"]
  GETTABLEKS R20 R5 K30 ["enabled"]
  SETTABLEKS R20 R19 K49 ["r15Plus"]
  GETTABLEKS R20 R6 K30 ["enabled"]
  SETTABLEKS R20 R19 K50 ["reduceTriangles"]
  SETTABLEKS R19 R18 K39 ["value"]
  DUPTABLE R19 K52 [{"setupType"}]
  SETTABLEKS R2 R19 K46 ["setupType"]
  SETTABLEKS R19 R18 K40 ["set"]
  DUPTABLE R19 K53 [{"alignFrontAngle", "enableAdditionalHeadProcessing", "r15Plus", "reduceTriangles"}]
  GETTABLEKS R20 R3 K41 ["toggle"]
  SETTABLEKS R20 R19 K47 ["alignFrontAngle"]
  GETTABLEKS R20 R4 K41 ["toggle"]
  SETTABLEKS R20 R19 K48 ["enableAdditionalHeadProcessing"]
  GETTABLEKS R20 R5 K41 ["toggle"]
  SETTABLEKS R20 R19 K49 ["r15Plus"]
  GETTABLEKS R20 R6 K41 ["toggle"]
  SETTABLEKS R20 R19 K50 ["reduceTriangles"]
  SETTABLEKS R19 R18 K41 ["toggle"]
  DUPTABLE R19 K56 [{"settings", "info"}]
  SETTABLEKS R17 R19 K54 ["settings"]
  SETTABLEKS R16 R19 K55 ["info"]
  SETTABLEKS R19 R18 K42 ["options"]
  SETTABLEKS R12 R18 K43 ["incrementCount"]
  SETTABLEKS R13 R18 K44 ["decrementCount"]
  GETUPVAL R20 5
  GETTABLEKS R19 R20 K57 ["createElement"]
  GETUPVAL R21 6
  GETTABLEKS R20 R21 K58 ["Provider"]
  DUPTABLE R21 K59 [{"value"}]
  SETTABLEKS R18 R21 K39 ["value"]
  GETTABLEKS R22 R0 K60 ["children"]
  CALL R19 3 -1
  RETURN R19 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Src"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["AssetClassificationUtils"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K10 ["Util"]
  GETTABLEKS R5 R6 K12 ["createUnimplemented"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K8 ["Src"]
  GETTABLEKS R7 R8 K13 ["Flags"]
  GETTABLEKS R6 R7 K14 ["getFFlagAvatarAutosetupOptionsInput"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K8 ["Src"]
  GETTABLEKS R8 R9 K15 ["Hooks"]
  GETTABLEKS R7 R8 K16 ["useIncrementedState"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K8 ["Src"]
  GETTABLEKS R9 R10 K15 ["Hooks"]
  GETTABLEKS R8 R9 K17 ["usePluginSetting"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K8 ["Src"]
  GETTABLEKS R10 R11 K15 ["Hooks"]
  GETTABLEKS R9 R10 K18 ["useTogglePluginSetting"]
  CALL R8 1 1
  GETIMPORT R9 K20 [game]
  LOADK R11 K21 ["AvatarPreviewerDefaultHeadProcessingSetting"]
  LOADB R12 0
  NAMECALL R9 R9 K22 ["DefineFastFlag"]
  CALL R9 3 1
  DUPTABLE R10 K29 [{"value", "set", "toggle", "options", "incrementCount", "decrementCount"}]
  DUPTABLE R11 K31 [{"setupType"}]
  LOADN R12 0
  SETTABLEKS R12 R11 K30 ["setupType"]
  SETTABLEKS R11 R10 K23 ["value"]
  DUPTABLE R11 K31 [{"setupType"}]
  MOVE R12 R4
  LOADK R13 K32 ["setSetupType"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K30 ["setupType"]
  SETTABLEKS R11 R10 K24 ["set"]
  DUPTABLE R11 K37 [{"alignFrontAngle", "enableAdditionalHeadProcessing", "r15Plus", "reduceTriangles"}]
  MOVE R12 R4
  LOADK R13 K33 ["alignFrontAngle"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K33 ["alignFrontAngle"]
  MOVE R12 R4
  LOADK R13 K34 ["enableAdditionalHeadProcessing"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K34 ["enableAdditionalHeadProcessing"]
  MOVE R12 R4
  LOADK R13 K38 ["toggleR15Plus"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K35 ["r15Plus"]
  MOVE R12 R4
  LOADK R13 K39 ["toggleReduceTriangles"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K36 ["reduceTriangles"]
  SETTABLEKS R11 R10 K25 ["toggle"]
  DUPTABLE R11 K42 [{"settings", "info"}]
  DUPTABLE R12 K44 [{"SetupType"}]
  LOADK R13 K45 ["Unspecified"]
  SETTABLEKS R13 R12 K43 ["SetupType"]
  SETTABLEKS R12 R11 K40 ["settings"]
  DUPTABLE R12 K47 [{"assetClassification"}]
  DUPTABLE R13 K53 [{"bodyCount", "layeredCount", "rigidCount", "avatarCount", "unselectedCount"}]
  LOADN R14 0
  SETTABLEKS R14 R13 K48 ["bodyCount"]
  LOADN R14 0
  SETTABLEKS R14 R13 K49 ["layeredCount"]
  LOADN R14 0
  SETTABLEKS R14 R13 K50 ["rigidCount"]
  LOADN R14 0
  SETTABLEKS R14 R13 K51 ["avatarCount"]
  LOADN R14 0
  SETTABLEKS R14 R13 K52 ["unselectedCount"]
  SETTABLEKS R13 R12 K46 ["assetClassification"]
  SETTABLEKS R12 R11 K41 ["info"]
  SETTABLEKS R11 R10 K26 ["options"]
  MOVE R11 R4
  LOADK R12 K27 ["incrementCount"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K27 ["incrementCount"]
  MOVE R11 R4
  LOADK R12 K28 ["decrementCount"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K28 ["decrementCount"]
  GETTABLEKS R11 R1 K54 ["createContext"]
  MOVE R12 R10
  CALL R11 1 1
  DUPCLOSURE R12 K55 [PROTO_2]
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R11
  DUPTABLE R13 K58 [{"Context", "Provider"}]
  SETTABLEKS R11 R13 K56 ["Context"]
  SETTABLEKS R12 R13 K57 ["Provider"]
  RETURN R13 1
