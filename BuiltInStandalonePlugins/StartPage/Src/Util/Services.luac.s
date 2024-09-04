PROTO_0:
  GETIMPORT R1 K1 [require]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["Packages"]
  GETTABLEKS R3 R4 K3 ["Dev"]
  GETTABLEKS R2 R3 K4 ["JestGlobals"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K5 ["jest"]
  GETUPVAL R3 1
  MOVE R4 R0
  DUPTABLE R5 K19 [{"openLink", "openLocalFile", "openPlace", "getStartPageVersionForUser", "generateTempUrlInContentProvider", "getDaysSinceFirstUserLogin", "isTutorialBannerClosed", "setTutorialBannerClosed", "isTutorialPopupClosed", "setTutorialPopupClosed", "startTutorial", "removeAPIGameFromRegistry", "removeLocalFileFromRegistry"}]
  GETTABLEKS R6 R2 K20 ["fn"]
  CALL R6 0 1
  SETTABLEKS R6 R5 K6 ["openLink"]
  GETTABLEKS R6 R2 K20 ["fn"]
  CALL R6 0 1
  SETTABLEKS R6 R5 K7 ["openLocalFile"]
  GETTABLEKS R6 R2 K20 ["fn"]
  CALL R6 0 1
  SETTABLEKS R6 R5 K8 ["openPlace"]
  GETTABLEKS R6 R2 K20 ["fn"]
  CALL R6 0 1
  SETTABLEKS R6 R5 K9 ["getStartPageVersionForUser"]
  GETTABLEKS R6 R2 K20 ["fn"]
  CALL R6 0 1
  SETTABLEKS R6 R5 K10 ["generateTempUrlInContentProvider"]
  GETTABLEKS R6 R2 K20 ["fn"]
  CALL R6 0 1
  SETTABLEKS R6 R5 K11 ["getDaysSinceFirstUserLogin"]
  GETTABLEKS R6 R2 K20 ["fn"]
  CALL R6 0 1
  SETTABLEKS R6 R5 K12 ["isTutorialBannerClosed"]
  GETTABLEKS R6 R2 K20 ["fn"]
  CALL R6 0 1
  SETTABLEKS R6 R5 K13 ["setTutorialBannerClosed"]
  GETTABLEKS R6 R2 K20 ["fn"]
  CALL R6 0 1
  SETTABLEKS R6 R5 K14 ["isTutorialPopupClosed"]
  GETTABLEKS R6 R2 K20 ["fn"]
  CALL R6 0 1
  SETTABLEKS R6 R5 K15 ["setTutorialPopupClosed"]
  GETTABLEKS R6 R2 K20 ["fn"]
  CALL R6 0 1
  SETTABLEKS R6 R5 K16 ["startTutorial"]
  GETTABLEKS R6 R2 K20 ["fn"]
  CALL R6 0 1
  SETTABLEKS R6 R5 K17 ["removeAPIGameFromRegistry"]
  GETTABLEKS R6 R2 K20 ["fn"]
  CALL R6 0 1
  SETTABLEKS R6 R5 K18 ["removeLocalFileFromRegistry"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_1:
  NEWTABLE R1 0 0
  DUPTABLE R2 K1 [{"__index"}]
  GETUPVAL R3 0
  SETTABLEKS R3 R2 K0 ["__index"]
  FASTCALL2 SETMETATABLE R1 R2 [+3]
  GETIMPORT R0 K3 [setmetatable]
  CALL R0 2 1
  RETURN R0 1

PROTO_2:
  RETURN R1 1

PROTO_3:
  GETTABLEKS R3 R0 K0 ["apis"]
  GETTABLE R2 R3 R1
  JUMPIFNOT R2 [+9]
  GETTABLEKS R3 R0 K0 ["apis"]
  GETTABLE R2 R3 R1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["resolve"]
  MOVE R4 R2
  CALL R3 1 -1
  RETURN R3 -1
  GETIMPORT R2 K3 [error]
  LOADK R4 K4 ["Unexpected url: %*"]
  MOVE R6 R1
  NAMECALL R4 R4 K5 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  CALL R2 1 0
  RETURN R0 0

PROTO_4:
  SETTABLEKS R1 R0 K0 ["apis"]
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["StartPageManager"]
  CALL R1 1 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["Networking"]
  SETTABLEKS R0 R1 K2 ["apis"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Util"]
  GETTABLEKS R2 R3 K9 ["Promise"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K10 ["Dash"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K11 ["TestLoader"]
  CALL R4 1 1
  GETTABLEKS R5 R3 K12 ["assign"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K13 ["Src"]
  GETTABLEKS R8 R9 K8 ["Util"]
  GETTABLEKS R7 R8 K14 ["TypedNetworking"]
  CALL R6 1 1
  DUPCLOSURE R7 K15 [PROTO_0]
  CAPTURE VAL R0
  CAPTURE VAL R5
  DUPTABLE R8 K17 [{"apis"}]
  NEWTABLE R9 0 0
  SETTABLEKS R9 R8 K16 ["apis"]
  DUPCLOSURE R9 K18 [PROTO_1]
  CAPTURE VAL R8
  SETTABLEKS R9 R8 K19 ["new"]
  DUPCLOSURE R9 K20 [PROTO_2]
  SETTABLEKS R9 R8 K21 ["parseJson"]
  DUPCLOSURE R9 K22 [PROTO_3]
  CAPTURE VAL R2
  SETTABLEKS R9 R8 K23 ["get"]
  DUPCLOSURE R9 K24 [PROTO_4]
  LOADNIL R10
  DUPTABLE R11 K28 [{"Networking", "StartPageManager", "mock"}]
  GETTABLEKS R13 R4 K29 ["isCli"]
  CALL R13 0 1
  JUMPIFNOT R13 [+2]
  MOVE R12 R8
  JUMP [+1]
  MOVE R12 R6
  SETTABLEKS R12 R11 K25 ["Networking"]
  GETTABLEKS R13 R4 K29 ["isCli"]
  CALL R13 0 1
  JUMPIFNOT R13 [+3]
  NEWTABLE R12 0 0
  JUMP [+6]
  GETIMPORT R12 K31 [game]
  LOADK R14 K32 ["StartPageService"]
  NAMECALL R12 R12 K33 ["GetService"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K26 ["StartPageManager"]
  NEWCLOSURE R12 P5
  CAPTURE VAL R7
  CAPTURE REF R10
  SETTABLEKS R12 R11 K27 ["mock"]
  MOVE R10 R11
  CLOSEUPVALS R10
  RETURN R10 1
