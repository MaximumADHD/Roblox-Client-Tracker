PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["assertNullableType"]
  MOVE R2 R0
  LOADK R3 K1 ["table"]
  LOADK R4 K2 ["SetPublishInProgress arg"]
  CALL R1 3 0
  MOVE R1 R0
  JUMPIF R1 [+2]
  NEWTABLE R1 0 0
  GETTABLEKS R2 R1 K3 ["universe"]
  GETTABLEKS R3 R1 K4 ["place"]
  GETTABLEKS R4 R1 K5 ["isPublish"]
  GETTABLEKS R5 R1 K6 ["failCount"]
  GETTABLEKS R6 R1 K7 ["requestInFlight"]
  DUPTABLE R7 K9 [{"publishInProgress"}]
  DUPTABLE R8 K10 [{"universe", "place", "isPublish", "failCount", "requestInFlight"}]
  SETTABLEKS R2 R8 K3 ["universe"]
  SETTABLEKS R3 R8 K4 ["place"]
  SETTABLEKS R4 R8 K5 ["isPublish"]
  SETTABLEKS R5 R8 K6 ["failCount"]
  SETTABLEKS R6 R8 K7 ["requestInFlight"]
  SETTABLEKS R8 R7 K8 ["publishInProgress"]
  RETURN R7 1

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
  CALL R4 2 -1
  RETURN R4 -1
