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
  GETUPVAL R4 2
  LOADK R5 K5 ["AvatarPreviewer_EnableAdditionalHeadProcessing"]
  LOADB R6 0
  CALL R4 2 1
  GETUPVAL R5 2
  LOADK R6 K6 ["AvatarPreviewer_R15Plus"]
  LOADB R7 0
  CALL R5 2 1
  GETUPVAL R6 2
  LOADK R7 K7 ["AvatarPreviewer_ReduceTriangles"]
  LOADB R8 0
  CALL R6 2 1
  GETUPVAL R7 3
  CALL R7 0 1
  GETUPVAL R8 3
  CALL R8 0 1
  GETUPVAL R9 3
  CALL R9 0 1
  GETUPVAL R10 3
  CALL R10 0 1
  GETUPVAL R11 3
  CALL R11 0 1
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K8 ["useCallback"]
  NEWCLOSURE R13 P0
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R8
  CAPTURE VAL R7
  NEWTABLE R14 0 4
  GETTABLEKS R15 R9 K9 ["increment"]
  GETTABLEKS R16 R10 K9 ["increment"]
  GETTABLEKS R17 R11 K9 ["increment"]
  GETTABLEKS R18 R7 K9 ["increment"]
  SETLIST R14 R15 4 [1]
  CALL R12 2 1
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K8 ["useCallback"]
  NEWCLOSURE R14 P1
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R8
  CAPTURE VAL R7
  NEWTABLE R15 0 4
  GETTABLEKS R16 R9 K10 ["decrement"]
  GETTABLEKS R17 R10 K10 ["decrement"]
  GETTABLEKS R18 R11 K10 ["decrement"]
  GETTABLEKS R19 R7 K10 ["decrement"]
  SETLIST R15 R16 4 [1]
  CALL R13 2 1
  LOADB R14 0
  GETTABLEKS R15 R9 K11 ["amount"]
  JUMPIFNOTEQKN R15 K12 [0] [+11]
  GETTABLEKS R16 R10 K11 ["amount"]
  GETTABLEKS R17 R11 K11 ["amount"]
  ADD R15 R16 R17
  LOADN R16 0
  JUMPIFLT R16 R15 [+2]
  LOADB R14 0 +1
  LOADB R14 1
  MOVE R15 R14
  JUMPIFNOT R15 [+6]
  GETTABLEKS R16 R8 K11 ["amount"]
  JUMPIFEQKN R16 K12 [0] [+2]
  LOADB R15 0 +1
  LOADB R15 1
  DUPTABLE R16 K15 [{"shouldCreateTemplateBody", "assetClassification"}]
  SETTABLEKS R15 R16 K13 ["shouldCreateTemplateBody"]
  DUPTABLE R17 K21 [{"bodyCount", "layeredCount", "rigidCount", "avatarCount", "unselectedCount"}]
  GETTABLEKS R18 R9 K11 ["amount"]
  SETTABLEKS R18 R17 K16 ["bodyCount"]
  GETTABLEKS R18 R10 K11 ["amount"]
  SETTABLEKS R18 R17 K17 ["layeredCount"]
  GETTABLEKS R18 R11 K11 ["amount"]
  SETTABLEKS R18 R17 K18 ["rigidCount"]
  GETTABLEKS R18 R8 K11 ["amount"]
  SETTABLEKS R18 R17 K19 ["avatarCount"]
  GETTABLEKS R18 R7 K11 ["amount"]
  SETTABLEKS R18 R17 K20 ["unselectedCount"]
  SETTABLEKS R17 R16 K14 ["assetClassification"]
  JUMPIFNOTEQKN R1 K22 [1] [+18]
  DUPTABLE R17 K27 [{"SetupType", "AlignFrontAngle", "ClothingOnly", "EnableAdditionalHeadProcessing", "shouldCreateTemplateBody"}]
  LOADK R18 K28 ["Platform"]
  SETTABLEKS R18 R17 K23 ["SetupType"]
  GETTABLEKS R18 R3 K29 ["enabled"]
  SETTABLEKS R18 R17 K24 ["AlignFrontAngle"]
  SETTABLEKS R14 R17 K25 ["ClothingOnly"]
  GETTABLEKS R18 R4 K29 ["enabled"]
  SETTABLEKS R18 R17 K26 ["EnableAdditionalHeadProcessing"]
  SETTABLEKS R15 R17 K13 ["shouldCreateTemplateBody"]
  JUMP [+35]
  JUMPIFNOTEQKN R1 K30 [2] [+30]
  DUPTABLE R17 K33 [{"SetupType", "AlignFrontAngle", "R15Plus", "DecimationOptions", "ClothingOnly", "EnableAdditionalHeadProcessing", "shouldCreateTemplateBody"}]
  LOADK R18 K34 ["Development"]
  SETTABLEKS R18 R17 K23 ["SetupType"]
  GETTABLEKS R18 R3 K29 ["enabled"]
  SETTABLEKS R18 R17 K24 ["AlignFrontAngle"]
  GETTABLEKS R18 R5 K29 ["enabled"]
  SETTABLEKS R18 R17 K31 ["R15Plus"]
  GETTABLEKS R19 R6 K29 ["enabled"]
  JUMPIFNOT R19 [+2]
  LOADK R18 K35 ["EverythingEnabled"]
  JUMP [+1]
  LOADK R18 K36 ["Unspecified"]
  SETTABLEKS R18 R17 K32 ["DecimationOptions"]
  SETTABLEKS R14 R17 K25 ["ClothingOnly"]
  GETTABLEKS R18 R4 K29 ["enabled"]
  SETTABLEKS R18 R17 K26 ["EnableAdditionalHeadProcessing"]
  SETTABLEKS R15 R17 K13 ["shouldCreateTemplateBody"]
  JUMP [+4]
  DUPTABLE R17 K37 [{"SetupType"}]
  LOADK R18 K36 ["Unspecified"]
  SETTABLEKS R18 R17 K23 ["SetupType"]
  DUPTABLE R18 K44 [{"value", "set", "toggle", "options", "incrementCount", "decrementCount"}]
  DUPTABLE R19 K50 [{"setupType", "alignFrontAngle", "enableAdditionalHeadProcessing", "r15Plus", "reduceTriangles"}]
  SETTABLEKS R1 R19 K45 ["setupType"]
  GETTABLEKS R20 R3 K29 ["enabled"]
  SETTABLEKS R20 R19 K46 ["alignFrontAngle"]
  GETTABLEKS R20 R4 K29 ["enabled"]
  SETTABLEKS R20 R19 K47 ["enableAdditionalHeadProcessing"]
  GETTABLEKS R20 R5 K29 ["enabled"]
  SETTABLEKS R20 R19 K48 ["r15Plus"]
  GETTABLEKS R20 R6 K29 ["enabled"]
  SETTABLEKS R20 R19 K49 ["reduceTriangles"]
  SETTABLEKS R19 R18 K38 ["value"]
  DUPTABLE R19 K51 [{"setupType"}]
  SETTABLEKS R2 R19 K45 ["setupType"]
  SETTABLEKS R19 R18 K39 ["set"]
  DUPTABLE R19 K52 [{"alignFrontAngle", "enableAdditionalHeadProcessing", "r15Plus", "reduceTriangles"}]
  GETTABLEKS R20 R3 K40 ["toggle"]
  SETTABLEKS R20 R19 K46 ["alignFrontAngle"]
  GETTABLEKS R20 R4 K40 ["toggle"]
  SETTABLEKS R20 R19 K47 ["enableAdditionalHeadProcessing"]
  GETTABLEKS R20 R5 K40 ["toggle"]
  SETTABLEKS R20 R19 K48 ["r15Plus"]
  GETTABLEKS R20 R6 K40 ["toggle"]
  SETTABLEKS R20 R19 K49 ["reduceTriangles"]
  SETTABLEKS R19 R18 K40 ["toggle"]
  DUPTABLE R19 K55 [{"settings", "info"}]
  SETTABLEKS R17 R19 K53 ["settings"]
  SETTABLEKS R16 R19 K54 ["info"]
  SETTABLEKS R19 R18 K41 ["options"]
  SETTABLEKS R12 R18 K42 ["incrementCount"]
  SETTABLEKS R13 R18 K43 ["decrementCount"]
  GETUPVAL R20 4
  GETTABLEKS R19 R20 K56 ["createElement"]
  GETUPVAL R21 5
  GETTABLEKS R20 R21 K57 ["Provider"]
  DUPTABLE R21 K58 [{"value"}]
  SETTABLEKS R18 R21 K38 ["value"]
  GETTABLEKS R22 R0 K59 ["children"]
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
  DUPTABLE R9 K25 [{"value", "set", "toggle", "options", "incrementCount", "decrementCount"}]
  DUPTABLE R10 K27 [{"setupType"}]
  LOADN R11 0
  SETTABLEKS R11 R10 K26 ["setupType"]
  SETTABLEKS R10 R9 K19 ["value"]
  DUPTABLE R10 K27 [{"setupType"}]
  MOVE R11 R4
  LOADK R12 K28 ["setSetupType"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K26 ["setupType"]
  SETTABLEKS R10 R9 K20 ["set"]
  DUPTABLE R10 K33 [{"alignFrontAngle", "enableAdditionalHeadProcessing", "r15Plus", "reduceTriangles"}]
  MOVE R11 R4
  LOADK R12 K29 ["alignFrontAngle"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K29 ["alignFrontAngle"]
  MOVE R11 R4
  LOADK R12 K30 ["enableAdditionalHeadProcessing"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K30 ["enableAdditionalHeadProcessing"]
  MOVE R11 R4
  LOADK R12 K34 ["toggleR15Plus"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K31 ["r15Plus"]
  MOVE R11 R4
  LOADK R12 K35 ["toggleReduceTriangles"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K32 ["reduceTriangles"]
  SETTABLEKS R10 R9 K21 ["toggle"]
  DUPTABLE R10 K38 [{"settings", "info"}]
  DUPTABLE R11 K40 [{"SetupType"}]
  LOADK R12 K41 ["Unspecified"]
  SETTABLEKS R12 R11 K39 ["SetupType"]
  SETTABLEKS R11 R10 K36 ["settings"]
  DUPTABLE R11 K43 [{"assetClassification"}]
  DUPTABLE R12 K49 [{"bodyCount", "layeredCount", "rigidCount", "avatarCount", "unselectedCount"}]
  LOADN R13 0
  SETTABLEKS R13 R12 K44 ["bodyCount"]
  LOADN R13 0
  SETTABLEKS R13 R12 K45 ["layeredCount"]
  LOADN R13 0
  SETTABLEKS R13 R12 K46 ["rigidCount"]
  LOADN R13 0
  SETTABLEKS R13 R12 K47 ["avatarCount"]
  LOADN R13 0
  SETTABLEKS R13 R12 K48 ["unselectedCount"]
  SETTABLEKS R12 R11 K42 ["assetClassification"]
  SETTABLEKS R11 R10 K37 ["info"]
  SETTABLEKS R10 R9 K22 ["options"]
  MOVE R10 R4
  LOADK R11 K23 ["incrementCount"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K23 ["incrementCount"]
  MOVE R10 R4
  LOADK R11 K24 ["decrementCount"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K24 ["decrementCount"]
  GETTABLEKS R10 R1 K50 ["createContext"]
  MOVE R11 R9
  CALL R10 1 1
  DUPCLOSURE R11 K51 [PROTO_2]
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R10
  DUPTABLE R12 K54 [{"Context", "Provider"}]
  SETTABLEKS R10 R12 K52 ["Context"]
  SETTABLEKS R11 R12 K53 ["Provider"]
  RETURN R12 1
