PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["SCREENS"]
  GETTABLEKS R2 R3 K1 ["CREATE_NEW_GAME"]
  JUMPIFNOT R1 [+5]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["SCREENS"]
  GETTABLEKS R2 R3 K2 ["CHOOSE_GAME"]
  DUPTABLE R3 K12 [{"placeInfo", "gameInfo", "groupInfo", "current", "changed", "errors", "publishInfo", "isPublishing", "screen"}]
  DUPTABLE R4 K15 [{"places", "parentGame"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K13 ["places"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K14 ["parentGame"]
  SETTABLEKS R4 R3 K3 ["placeInfo"]
  DUPTABLE R4 K17 [{"games"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K16 ["games"]
  SETTABLEKS R4 R3 K4 ["gameInfo"]
  DUPTABLE R4 K19 [{"groups"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K18 ["groups"]
  SETTABLEKS R4 R3 K5 ["groupInfo"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K6 ["current"]
  DUPTABLE R4 K25 [{"name", "description", "genre", "playableDevices", "OptInLocations"}]
  SETTABLEKS R0 R4 K20 ["name"]
  LOADK R5 K26 [""]
  SETTABLEKS R5 R4 K21 ["description"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K27 ["GENRE_IDS"]
  GETTABLEN R5 R6 1
  SETTABLEKS R5 R4 K22 ["genre"]
  DUPTABLE R5 K32 [{"Computer", "Phone", "Tablet", "VR"}]
  LOADB R6 1
  SETTABLEKS R6 R5 K28 ["Computer"]
  LOADB R6 1
  SETTABLEKS R6 R5 K29 ["Phone"]
  LOADB R6 1
  SETTABLEKS R6 R5 K30 ["Tablet"]
  GETUPVAL R7 1
  ORK R6 R7 K33 []
  SETTABLEKS R6 R5 K31 ["VR"]
  SETTABLEKS R5 R4 K23 ["playableDevices"]
  GETUPVAL R5 2
  SETTABLEKS R5 R4 K24 ["OptInLocations"]
  SETTABLEKS R4 R3 K7 ["changed"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K8 ["errors"]
  DUPTABLE R4 K38 [{"id", "name", "parentGameName", "parentGameId", "settings"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K34 ["id"]
  LOADK R5 K26 [""]
  SETTABLEKS R5 R4 K20 ["name"]
  LOADK R5 K26 [""]
  SETTABLEKS R5 R4 K35 ["parentGameName"]
  LOADN R5 0
  SETTABLEKS R5 R4 K36 ["parentGameId"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K37 ["settings"]
  SETTABLEKS R4 R3 K9 ["publishInfo"]
  LOADB R4 0
  SETTABLEKS R4 R3 K10 ["isPublishing"]
  SETTABLEKS R2 R3 K11 ["screen"]
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Resources"]
  GETTABLEKS R2 R3 K7 ["Constants"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K2 ["Parent"]
  GETTABLEKS R3 R4 K8 ["Action"]
  CALL R2 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K5 ["Src"]
  GETTABLEKS R6 R7 K9 ["Util"]
  GETTABLEKS R5 R6 K10 ["PublishPlaceAsUtilities"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K11 ["shouldShowDevPublishLocations"]
  GETIMPORT R4 K13 [game]
  LOADK R6 K14 ["RemoveVRToggleDialog2"]
  NAMECALL R4 R4 K15 ["GetFastFlag"]
  CALL R4 2 1
  LOADNIL R5
  MOVE R6 R3
  CALL R6 0 1
  JUMPIFNOT R6 [+2]
  NEWTABLE R5 0 0
  MOVE R6 R2
  GETIMPORT R8 K1 [script]
  GETTABLEKS R7 R8 K16 ["Name"]
  NEWCLOSURE R8 P0
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE REF R5
  CALL R6 2 -1
  CLOSEUPVALS R5
  RETURN R6 -1
