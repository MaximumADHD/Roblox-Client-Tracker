PROTO_0:
  GETIMPORT R1 K2 [Instance.new]
  LOADK R2 K3 ["Part"]
  CALL R1 1 1
  GETIMPORT R2 K2 [Instance.new]
  LOADK R3 K4 ["WorkspaceAnnotation"]
  CALL R2 1 1
  LOADK R3 K5 [123456789]
  SETTABLEKS R3 R2 K6 ["AuthorId"]
  GETIMPORT R4 K9 [DateTime.now]
  CALL R4 0 1
  GETTABLEKS R3 R4 K10 ["UnixTimestamp"]
  SETTABLEKS R3 R2 K11 ["CreationTimeUnix"]
  GETTABLEKS R3 R2 K11 ["CreationTimeUnix"]
  SETTABLEKS R3 R2 K12 ["LastModifiedTimeUnix"]
  SETTABLEKS R1 R2 K13 ["Adornee"]
  GETIMPORT R3 K16 [CFrame.identity]
  SETTABLEKS R3 R2 K17 ["Position"]
  JUMPIFNOT R0 [+2]
  SETTABLEKS R0 R2 K18 ["Contents"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1
