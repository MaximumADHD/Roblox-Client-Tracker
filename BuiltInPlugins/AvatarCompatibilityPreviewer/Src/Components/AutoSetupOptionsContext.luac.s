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
  JUMPIFNOTEQKN R1 K13 [1] [+18]
  DUPTABLE R16 K19 [{"SetupType", "AlignFrontAngle", "ClothingOnly", "EnableAdditionalHeadProcessing", "shouldCreateTemplateBody"}]
  LOADK R17 K20 ["Platform"]
  SETTABLEKS R17 R16 K14 ["SetupType"]
  GETTABLEKS R17 R3 K21 ["enabled"]
  SETTABLEKS R17 R16 K15 ["AlignFrontAngle"]
  SETTABLEKS R14 R16 K16 ["ClothingOnly"]
  GETTABLEKS R17 R4 K21 ["enabled"]
  SETTABLEKS R17 R16 K17 ["EnableAdditionalHeadProcessing"]
  SETTABLEKS R15 R16 K18 ["shouldCreateTemplateBody"]
  JUMP [+35]
  JUMPIFNOTEQKN R1 K22 [2] [+30]
  DUPTABLE R16 K25 [{"SetupType", "AlignFrontAngle", "R15Plus", "DecimationOptions", "ClothingOnly", "EnableAdditionalHeadProcessing", "shouldCreateTemplateBody"}]
  LOADK R17 K26 ["Development"]
  SETTABLEKS R17 R16 K14 ["SetupType"]
  GETTABLEKS R17 R3 K21 ["enabled"]
  SETTABLEKS R17 R16 K15 ["AlignFrontAngle"]
  GETTABLEKS R17 R5 K21 ["enabled"]
  SETTABLEKS R17 R16 K23 ["R15Plus"]
  GETTABLEKS R18 R6 K21 ["enabled"]
  JUMPIFNOT R18 [+2]
  LOADK R17 K27 ["EverythingEnabled"]
  JUMP [+1]
  LOADK R17 K28 ["Unspecified"]
  SETTABLEKS R17 R16 K24 ["DecimationOptions"]
  SETTABLEKS R14 R16 K16 ["ClothingOnly"]
  GETTABLEKS R17 R4 K21 ["enabled"]
  SETTABLEKS R17 R16 K17 ["EnableAdditionalHeadProcessing"]
  SETTABLEKS R15 R16 K18 ["shouldCreateTemplateBody"]
  JUMP [+4]
  DUPTABLE R16 K29 [{"SetupType"}]
  LOADK R17 K28 ["Unspecified"]
  SETTABLEKS R17 R16 K14 ["SetupType"]
  DUPTABLE R17 K36 [{"value", "set", "toggle", "options", "incrementCount", "decrementCount"}]
  DUPTABLE R18 K42 [{"setupType", "alignFrontAngle", "enableAdditionalHeadProcessing", "r15Plus", "reduceTriangles"}]
  SETTABLEKS R1 R18 K37 ["setupType"]
  GETTABLEKS R19 R3 K21 ["enabled"]
  SETTABLEKS R19 R18 K38 ["alignFrontAngle"]
  GETTABLEKS R19 R4 K21 ["enabled"]
  SETTABLEKS R19 R18 K39 ["enableAdditionalHeadProcessing"]
  GETTABLEKS R19 R5 K21 ["enabled"]
  SETTABLEKS R19 R18 K40 ["r15Plus"]
  GETTABLEKS R19 R6 K21 ["enabled"]
  SETTABLEKS R19 R18 K41 ["reduceTriangles"]
  SETTABLEKS R18 R17 K30 ["value"]
  DUPTABLE R18 K43 [{"setupType"}]
  SETTABLEKS R2 R18 K37 ["setupType"]
  SETTABLEKS R18 R17 K31 ["set"]
  DUPTABLE R18 K44 [{"alignFrontAngle", "enableAdditionalHeadProcessing", "r15Plus", "reduceTriangles"}]
  GETTABLEKS R19 R3 K32 ["toggle"]
  SETTABLEKS R19 R18 K38 ["alignFrontAngle"]
  GETTABLEKS R19 R4 K32 ["toggle"]
  SETTABLEKS R19 R18 K39 ["enableAdditionalHeadProcessing"]
  GETTABLEKS R19 R5 K32 ["toggle"]
  SETTABLEKS R19 R18 K40 ["r15Plus"]
  GETTABLEKS R19 R6 K32 ["toggle"]
  SETTABLEKS R19 R18 K41 ["reduceTriangles"]
  SETTABLEKS R18 R17 K32 ["toggle"]
  SETTABLEKS R16 R17 K33 ["options"]
  SETTABLEKS R12 R17 K34 ["incrementCount"]
  SETTABLEKS R13 R17 K35 ["decrementCount"]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K45 ["createElement"]
  GETUPVAL R20 5
  GETTABLEKS R19 R20 K46 ["Provider"]
  DUPTABLE R20 K47 [{"value"}]
  SETTABLEKS R17 R20 K30 ["value"]
  GETTABLEKS R21 R0 K48 ["children"]
  CALL R18 3 -1
  RETURN R18 -1

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
  DUPTABLE R10 K37 [{"SetupType"}]
  LOADK R11 K38 ["Unspecified"]
  SETTABLEKS R11 R10 K36 ["SetupType"]
  SETTABLEKS R10 R9 K22 ["options"]
  MOVE R10 R4
  LOADK R11 K23 ["incrementCount"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K23 ["incrementCount"]
  MOVE R10 R4
  LOADK R11 K24 ["decrementCount"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K24 ["decrementCount"]
  GETTABLEKS R10 R1 K39 ["createContext"]
  MOVE R11 R9
  CALL R10 1 1
  DUPCLOSURE R11 K40 [PROTO_2]
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R10
  DUPTABLE R12 K43 [{"Context", "Provider"}]
  SETTABLEKS R10 R12 K41 ["Context"]
  SETTABLEKS R11 R12 K42 ["Provider"]
  RETURN R12 1
