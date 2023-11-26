PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["assertNullableType"]
  MOVE R2 R0
  LOADK R3 K1 ["table"]
  LOADK R4 K2 ["SetPublishInfo arg"]
  CALL R1 3 0
  MOVE R1 R0
  JUMPIF R1 [+2]
  NEWTABLE R1 0 0
  GETTABLEKS R2 R1 K3 ["id"]
  GETTABLEKS R3 R1 K4 ["name"]
  GETTABLEKS R4 R1 K5 ["parentGameId"]
  GETTABLEKS R5 R1 K6 ["parentGameName"]
  GETTABLEKS R6 R1 K7 ["settings"]
  GETTABLEKS R7 R1 K8 ["failed"]
  GETTABLEKS R8 R1 K9 ["message"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K10 ["assertType"]
  MOVE R10 R2
  LOADK R11 K11 ["number"]
  LOADK R12 K12 ["SetPublishInfo.id"]
  CALL R9 3 0
  MOVE R10 R7
  JUMPIF R10 [+8]
  GETIMPORT R12 K14 [game]
  GETTABLEKS R11 R12 K15 ["GameId"]
  JUMPIFNOTEQKN R11 K16 [0] [+2]
  LOADB R10 0 +1
  LOADB R10 1
  FASTCALL2K ASSERT R10 K17 [+4]
  LOADK R11 K17 ["Game ID should not be 0 if studio did not fail to publish a new game"]
  GETIMPORT R9 K19 [assert]
  CALL R9 2 0
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K10 ["assertType"]
  MOVE R10 R3
  LOADK R11 K20 ["string"]
  LOADK R12 K21 ["SetPublishInfo.name"]
  CALL R9 3 0
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K10 ["assertType"]
  MOVE R10 R5
  LOADK R11 K20 ["string"]
  LOADK R12 K22 ["SetPublishInfo.parentGameName"]
  CALL R9 3 0
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["assertNullableType"]
  MOVE R10 R4
  LOADK R11 K11 ["number"]
  LOADK R12 K23 ["SetPublishInfo.parentGameId"]
  CALL R9 3 0
  GETUPVAL R9 1
  CALL R9 0 1
  JUMPIFNOT R9 [+8]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["assertNullableType"]
  MOVE R10 R6
  LOADK R11 K1 ["table"]
  LOADK R12 K24 ["SetPublishInfo.settings { name : String, description : String, genre : String, playableDevices : table, OptInLocations : table }"]
  CALL R9 3 0
  JUMP [+7]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["assertNullableType"]
  MOVE R10 R6
  LOADK R11 K1 ["table"]
  LOADK R12 K25 ["SetPublishInfo.settings { name : String, description : String, genre : String, playableDevices : table }"]
  CALL R9 3 0
  JUMPIFEQKNIL R6 [+59]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K10 ["assertType"]
  GETTABLEKS R10 R6 K4 ["name"]
  LOADK R11 K20 ["string"]
  LOADK R12 K26 ["settings.name"]
  CALL R9 3 0
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K10 ["assertType"]
  GETTABLEKS R10 R6 K27 ["description"]
  LOADK R11 K20 ["string"]
  LOADK R12 K28 ["settings.description"]
  CALL R9 3 0
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K10 ["assertType"]
  GETTABLEKS R10 R6 K29 ["genre"]
  LOADK R11 K20 ["string"]
  LOADK R12 K30 ["settings.genre"]
  CALL R9 3 0
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K10 ["assertType"]
  GETTABLEKS R10 R6 K31 ["playableDevices"]
  LOADK R11 K1 ["table"]
  LOADK R12 K32 ["settings.playableDevices"]
  CALL R9 3 0
  GETUPVAL R9 1
  CALL R9 0 1
  JUMPIFNOT R9 [+8]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K10 ["assertType"]
  GETTABLEKS R10 R6 K33 ["OptInLocations"]
  LOADK R11 K1 ["table"]
  LOADK R12 K34 ["settings.OptInLocations"]
  CALL R9 3 0
  GETIMPORT R11 K36 [next]
  GETTABLEKS R12 R6 K31 ["playableDevices"]
  CALL R11 1 1
  JUMPIFNOTEQKNIL R11 [+2]
  LOADB R10 0 +1
  LOADB R10 1
  FASTCALL2K ASSERT R10 K37 [+4]
  LOADK R11 K37 ["Empty platform table"]
  GETIMPORT R9 K19 [assert]
  CALL R9 2 0
  DUPTABLE R9 K39 [{"publishInfo"}]
  DUPTABLE R10 K40 [{"id", "name", "parentGameId", "parentGameName", "settings", "message"}]
  SETTABLEKS R2 R10 K3 ["id"]
  SETTABLEKS R3 R10 K4 ["name"]
  SETTABLEKS R4 R10 K5 ["parentGameId"]
  SETTABLEKS R5 R10 K6 ["parentGameName"]
  SETTABLEKS R6 R10 K7 ["settings"]
  SETTABLEKS R8 R10 K9 ["message"]
  SETTABLEKS R10 R9 K38 ["publishInfo"]
  RETURN R9 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Util"]
  GETTABLEKS R2 R3 K7 ["AssertType"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K2 ["Parent"]
  GETTABLEKS R3 R4 K8 ["Action"]
  CALL R2 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K5 ["Src"]
  GETTABLEKS R6 R7 K6 ["Util"]
  GETTABLEKS R5 R6 K9 ["PublishPlaceAsUtilities"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K10 ["shouldShowDevPublishLocations"]
  MOVE R4 R2
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K11 ["Name"]
  DUPCLOSURE R6 K12 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CALL R4 2 -1
  RETURN R4 -1
