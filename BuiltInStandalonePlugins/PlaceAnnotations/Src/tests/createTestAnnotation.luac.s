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
  GETIMPORT R3 K1 [game]
  GETTABLEKS R2 R3 K12 ["Workspace"]
  SETTABLEKS R2 R1 K10 ["Parent"]
  GETIMPORT R2 K7 [Instance.new]
  LOADK R3 K13 ["WorkspaceAnnotation"]
  CALL R2 1 1
  NAMECALL R3 R2 K14 ["GetStringUniqueId"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K9 ["Name"]
  LOADK R3 K15 [123456789]
  SETTABLEKS R3 R2 K16 ["AuthorId"]
  GETIMPORT R4 K19 [DateTime.now]
  CALL R4 0 1
  GETTABLEKS R3 R4 K20 ["UnixTimestamp"]
  SETTABLEKS R3 R2 K21 ["CreationTimeUnix"]
  GETTABLEKS R3 R2 K21 ["CreationTimeUnix"]
  SETTABLEKS R3 R2 K22 ["LastModifiedTimeUnix"]
  SETTABLEKS R1 R2 K23 ["Adornee"]
  LOADK R3 K24 [""]
  SETTABLEKS R3 R2 K25 ["TaggedUsers"]
  LOADK R3 K26 ["TestChannel"]
  SETTABLEKS R3 R2 K27 ["ChannelId"]
  JUMPIFNOT R0 [+2]
  SETTABLEKS R0 R2 K28 ["Contents"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1
