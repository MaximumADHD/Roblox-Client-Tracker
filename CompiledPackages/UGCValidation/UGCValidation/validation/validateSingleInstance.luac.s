PROTO_0:
  GETTABLEKS R2 R1 K0 ["assetTypeEnum"]
  LENGTH R3 R0
  JUMPIFNOTEQKN R3 K1 [0] [+24]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["reportFailure"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["ErrorType"]
  GETTABLEKS R4 R5 K4 ["validateSingleInstance_ZeroInstances"]
  LOADNIL R5
  MOVE R6 R1
  CALL R3 3 0
  LOADB R3 0
  NEWTABLE R4 0 1
  GETIMPORT R5 K7 [string.format]
  LOADK R6 K8 ["Failed to find an instance of the asset type '%s'. Make sure one exists and try again."]
  GETTABLEKS R7 R2 K9 ["Name"]
  CALL R5 2 -1
  SETLIST R4 R5 -1 [1]
  RETURN R3 2
  LENGTH R3 R0
  LOADN R4 1
  JUMPIFNOTLT R4 R3 [+24]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["reportFailure"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["ErrorType"]
  GETTABLEKS R4 R5 K10 ["validateSingleInstance_MultipleInstances"]
  LOADNIL R5
  MOVE R6 R1
  CALL R3 3 0
  LOADB R3 0
  NEWTABLE R4 0 1
  GETIMPORT R5 K7 [string.format]
  LOADK R6 K11 ["Selected more than one instance of type '%s'. Please, select a single instance of this type and try again."]
  GETTABLEKS R7 R2 K9 ["Name"]
  CALL R5 2 -1
  SETLIST R4 R5 -1 [1]
  RETURN R3 2
  LOADB R3 1
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["Analytics"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K6 ["util"]
  GETTABLEKS R3 R4 K7 ["Types"]
  CALL R2 1 1
  DUPCLOSURE R3 K8 [PROTO_0]
  CAPTURE VAL R1
  RETURN R3 1
