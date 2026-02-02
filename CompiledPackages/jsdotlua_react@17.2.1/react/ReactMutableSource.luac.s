PROTO_0:
  DUPTABLE R2 K4 [{"_getVersion", "_source", "_workInProgressVersionPrimary", "_workInProgressVersionSecondary"}]
  SETTABLEKS R1 R2 K0 ["_getVersion"]
  SETTABLEKS R0 R2 K1 ["_source"]
  LOADNIL R3
  SETTABLEKS R3 R2 K2 ["_workInProgressVersionPrimary"]
  LOADNIL R3
  SETTABLEKS R3 R2 K3 ["_workInProgressVersionSecondary"]
  GETIMPORT R4 K6 [_G]
  GETTABLEKS R3 R4 K7 ["__DEV__"]
  JUMPIFNOT R3 [+6]
  LOADNIL R3
  SETTABLEKS R3 R2 K8 ["_currentPrimaryRenderer"]
  LOADNIL R3
  SETTABLEKS R3 R2 K9 ["_currentSecondaryRenderer"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K4 ["Parent"]
  LOADK R3 K5 ["shared"]
  NAMECALL R1 R1 K6 ["WaitForChild"]
  CALL R1 2 -1
  CALL R0 -1 1
  DUPCLOSURE R1 K7 [PROTO_0]
  RETURN R1 1
