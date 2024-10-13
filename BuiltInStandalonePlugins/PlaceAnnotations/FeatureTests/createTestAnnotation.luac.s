PROTO_0:
  GETIMPORT R2 K1 [game]
  GETTABLEKS R1 R2 K2 ["CoreGui"]
  LOADK R3 K3 ["PlaceAnnotations"]
  NAMECALL R1 R1 K4 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIF R1 [+13]
  GETIMPORT R1 K7 [Instance.new]
  LOADK R2 K8 ["Folder"]
  CALL R1 1 1
  LOADK R2 K3 ["PlaceAnnotations"]
  SETTABLEKS R2 R1 K9 ["Name"]
  GETIMPORT R3 K1 [game]
  GETTABLEKS R2 R3 K2 ["CoreGui"]
  SETTABLEKS R2 R1 K10 ["Parent"]
  GETIMPORT R1 K7 [Instance.new]
  LOADK R2 K11 ["Part"]
  CALL R1 1 1
  GETIMPORT R2 K7 [Instance.new]
  LOADK R3 K12 ["WorkspaceAnnotation"]
  CALL R2 1 1
  LOADK R3 K13 [123456789]
  SETTABLEKS R3 R2 K14 ["AuthorId"]
  GETIMPORT R4 K17 [DateTime.now]
  CALL R4 0 1
  GETTABLEKS R3 R4 K18 ["UnixTimestamp"]
  SETTABLEKS R3 R2 K19 ["CreationTimeUnix"]
  GETTABLEKS R3 R2 K19 ["CreationTimeUnix"]
  SETTABLEKS R3 R2 K20 ["LastModifiedTimeUnix"]
  SETTABLEKS R1 R2 K21 ["Adornee"]
  GETIMPORT R3 K24 [CFrame.identity]
  SETTABLEKS R3 R2 K25 ["Position"]
  JUMPIFNOT R0 [+2]
  SETTABLEKS R0 R2 K26 ["Contents"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1
