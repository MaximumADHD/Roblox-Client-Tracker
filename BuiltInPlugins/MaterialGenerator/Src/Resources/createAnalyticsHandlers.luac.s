PROTO_0:
  MOVE R2 R1
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  MOVE R1 R2
  GETUPVAL R2 0
  DUPTABLE R3 K3 [{"studioSid", "clientId", "placeId"}]
  GETUPVAL R4 1
  NAMECALL R4 R4 K4 ["GetSessionId"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K0 ["studioSid"]
  GETUPVAL R4 1
  NAMECALL R4 R4 K5 ["GetClientId"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K1 ["clientId"]
  GETIMPORT R5 K7 [game]
  GETTABLEKS R4 R5 K8 ["PlaceId"]
  SETTABLEKS R4 R3 K2 ["placeId"]
  MOVE R4 R1
  CALL R2 2 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K9 ["LogAnalytics"]
  CALL R3 0 1
  JUMPIFNOT R3 [+14]
  GETIMPORT R3 K11 [print]
  LOADK R4 K12 ["%s SendEvent eventName=%s args=%s"]
  LOADK R6 K13 ["MaterialGenerator"]
  MOVE R7 R0
  GETUPVAL R8 3
  MOVE R10 R2
  NAMECALL R8 R8 K14 ["JSONEncode"]
  CALL R8 2 -1
  NAMECALL R4 R4 K15 ["format"]
  CALL R4 -1 -1
  CALL R3 -1 0
  GETUPVAL R3 1
  LOADK R5 K16 ["studio"]
  LOADK R6 K13 ["MaterialGenerator"]
  MOVE R7 R0
  MOVE R8 R2
  NAMECALL R3 R3 K17 ["SendEventDeferred"]
  CALL R3 5 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R5 0
  LOADK R6 K0 ["GenerateButtonClicked"]
  DUPTABLE R7 K5 [{"generationId", "samples", "textPrompt", "filteredTextPrompt"}]
  SETTABLEKS R1 R7 K1 ["generationId"]
  SETTABLEKS R2 R7 K2 ["samples"]
  SETTABLEKS R3 R7 K3 ["textPrompt"]
  SETTABLEKS R4 R7 K4 ["filteredTextPrompt"]
  CALL R5 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R6 0
  CALL R6 0 1
  JUMPIF R6 [+1]
  RETURN R0 0
  GETUPVAL R6 1
  LOADK R7 K0 ["GenerateMaterials"]
  DUPTABLE R8 K6 [{"generationId", "inputType", "samples", "promptText", "filteredPromptText"}]
  SETTABLEKS R1 R8 K1 ["generationId"]
  SETTABLEKS R2 R8 K2 ["inputType"]
  SETTABLEKS R3 R8 K3 ["samples"]
  SETTABLEKS R4 R8 K4 ["promptText"]
  SETTABLEKS R5 R8 K5 ["filteredPromptText"]
  CALL R6 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R4 0
  CALL R4 0 1
  JUMPIF R4 [+1]
  RETURN R0 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K0 ["isEnumValue"]
  MOVE R6 R2
  CALL R5 1 1
  FASTCALL2K ASSERT R5 K1 [+4]
  LOADK R6 K1 ["Expected errorType to be a GenerationErrorType"]
  GETIMPORT R4 K3 [assert]
  CALL R4 2 0
  LOADNIL R4
  JUMPIFNOT R3 [+10]
  JUMPIFEQKS R3 K4 [""] [+9]
  LOADK R5 K5 ["%*: '%*'"]
  MOVE R7 R2
  MOVE R8 R3
  NAMECALL R5 R5 K6 ["format"]
  CALL R5 3 1
  MOVE R4 R5
  JUMP [+6]
  FASTCALL1 TOSTRING R2 [+3]
  MOVE R6 R2
  GETIMPORT R5 K8 [tostring]
  CALL R5 1 1
  MOVE R4 R5
  GETUPVAL R5 2
  LOADK R6 K9 ["GenerateMaterialsError"]
  DUPTABLE R7 K12 [{"promptText", "errorMessage"}]
  SETTABLEKS R1 R7 K10 ["promptText"]
  SETTABLEKS R4 R7 K11 ["errorMessage"]
  CALL R5 2 0
  RETURN R0 0

PROTO_4:
  LOADNIL R3
  GETTABLEKS R4 R1 K0 ["BaseMaterial"]
  JUMPIFNOT R4 [+4]
  GETTABLEKS R4 R1 K0 ["BaseMaterial"]
  GETTABLEKS R3 R4 K1 ["Name"]
  LOADNIL R4
  GETTABLEKS R5 R1 K2 ["MaterialPattern"]
  JUMPIFNOT R5 [+4]
  GETTABLEKS R5 R1 K2 ["MaterialPattern"]
  GETTABLEKS R4 R5 K1 ["Name"]
  GETUPVAL R5 0
  GETUPVAL R7 1
  CALL R7 0 1
  JUMPIFNOT R7 [+2]
  LOADK R6 K3 ["SaveGeneratedMaterial"]
  JUMP [+1]
  LOADK R6 K4 ["SaveButtonClicked"]
  DUPTABLE R7 K14 [{"colorMap", "metalnessMap", "normalMap", "roughnessMap", "name", "baseMaterial", "materialPattern", "studsPerTile", "generationId"}]
  GETTABLEKS R8 R1 K15 ["ColorMap"]
  SETTABLEKS R8 R7 K5 ["colorMap"]
  GETTABLEKS R8 R1 K16 ["MetalnessMap"]
  SETTABLEKS R8 R7 K6 ["metalnessMap"]
  GETTABLEKS R8 R1 K17 ["NormalMap"]
  SETTABLEKS R8 R7 K7 ["normalMap"]
  GETTABLEKS R8 R1 K18 ["RoughnessMap"]
  SETTABLEKS R8 R7 K8 ["roughnessMap"]
  GETTABLEKS R8 R1 K1 ["Name"]
  SETTABLEKS R8 R7 K9 ["name"]
  SETTABLEKS R3 R7 K10 ["baseMaterial"]
  SETTABLEKS R4 R7 K11 ["materialPattern"]
  GETTABLEKS R8 R1 K19 ["StudsPerTile"]
  SETTABLEKS R8 R7 K12 ["studsPerTile"]
  SETTABLEKS R2 R7 K13 ["generationId"]
  CALL R5 2 0
  RETURN R0 0

PROTO_5:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  DUPTABLE R2 K4 [{"generateButtonClicked", "generateMaterials", "generateMaterialsError", "saveButtonClicked"}]
  NEWCLOSURE R3 P1
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K0 ["generateButtonClicked"]
  NEWCLOSURE R3 P2
  CAPTURE UPVAL U3
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K1 ["generateMaterials"]
  NEWCLOSURE R3 P3
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K2 ["generateMaterialsError"]
  NEWCLOSURE R3 P4
  CAPTURE VAL R1
  CAPTURE UPVAL U3
  SETTABLEKS R3 R2 K3 ["saveButtonClicked"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["HttpService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R4 K5 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R5 R1 K9 ["Src"]
  GETTABLEKS R4 R5 K10 ["Util"]
  GETTABLEKS R3 R4 K11 ["DebugFlags"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R6 R1 K9 ["Src"]
  GETTABLEKS R5 R6 K12 ["Flags"]
  GETTABLEKS R4 R5 K13 ["getFFlagMaterialGeneratorFixAnalytics"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R7 R1 K9 ["Src"]
  GETTABLEKS R6 R7 K14 ["Enum"]
  GETTABLEKS R5 R6 K15 ["GenerationErrorType"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R7 R1 K9 ["Src"]
  GETTABLEKS R6 R7 K16 ["Types"]
  CALL R5 1 1
  GETIMPORT R6 K8 [require]
  GETTABLEKS R8 R1 K17 ["Packages"]
  GETTABLEKS R7 R8 K18 ["Dash"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K19 ["join"]
  DUPCLOSURE R8 K20 [PROTO_5]
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R0
  CAPTURE VAL R3
  CAPTURE VAL R4
  RETURN R8 1
