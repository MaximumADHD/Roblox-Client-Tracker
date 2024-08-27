PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  LOADK R2 K1 ["Frame"]
  NEWTABLE R3 1 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["Tag"]
  LOADK R5 K3 ["Mapping-Widget Width-Scaling"]
  SETTABLE R5 R3 R4
  DUPTABLE R4 K6 [{"Label", "Arrow"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K10 [{"keyName", "side", "Position"}]
  GETTABLEKS R8 R0 K7 ["keyName"]
  SETTABLEKS R8 R7 K7 ["keyName"]
  GETTABLEKS R8 R0 K8 ["side"]
  SETTABLEKS R8 R7 K8 ["side"]
  GETTABLEKS R8 R0 K9 ["Position"]
  SETTABLEKS R8 R7 K9 ["Position"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K4 ["Label"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K14 [{"arrowStart", "arrowDestination", "arrowBendPoint"}]
  GETTABLEKS R8 R0 K9 ["Position"]
  SETTABLEKS R8 R7 K11 ["arrowStart"]
  GETTABLEKS R8 R0 K12 ["arrowDestination"]
  SETTABLEKS R8 R7 K12 ["arrowDestination"]
  GETTABLEKS R8 R0 K13 ["arrowBendPoint"]
  SETTABLEKS R8 R7 K13 ["arrowBendPoint"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K5 ["Arrow"]
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ControlsEmulator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K8 ["Parent"]
  GETTABLEKS R3 R4 K9 ["Arrow"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K8 ["Parent"]
  GETTABLEKS R4 R5 K10 ["MappingLabel"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K11 ["Src"]
  GETTABLEKS R6 R7 K12 ["Util"]
  GETTABLEKS R5 R6 K13 ["KeyNamesConstants"]
  CALL R4 1 1
  DUPCLOSURE R5 K14 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R2
  GETTABLEKS R6 R1 K15 ["memo"]
  MOVE R7 R5
  CALL R6 1 -1
  RETURN R6 -1
