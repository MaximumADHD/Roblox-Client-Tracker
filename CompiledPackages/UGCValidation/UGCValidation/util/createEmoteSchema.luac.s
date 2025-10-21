PROTO_0:
  DUPTABLE R0 K2 [{"ClassName", "_children"}]
  LOADK R1 K3 ["Animation"]
  SETTABLEKS R1 R0 K0 ["ClassName"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K1 ["_children"]
  GETUPVAL R1 0
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  GETTABLEKS R7 R0 K1 ["_children"]
  DUPTABLE R8 K6 [{"Name", "ClassName", "_optional"}]
  SETTABLEKS R5 R8 K4 ["Name"]
  LOADK R9 K7 ["NumberValue"]
  SETTABLEKS R9 R8 K0 ["ClassName"]
  LOADB R9 1
  SETTABLEKS R9 R8 K5 ["_optional"]
  FASTCALL2 TABLE_INSERT R7 R8 [+3]
  GETIMPORT R6 K10 [table.insert]
  CALL R6 2 0
  FORGLOOP R1 2 [-17]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 0 7
  LOADK R1 K0 ["ThumbnailCharacterRotation"]
  LOADK R2 K1 ["ThumbnailHorizontalOffset"]
  LOADK R3 K2 ["ThumbnailKeyframe"]
  LOADK R4 K3 ["ThumbnailVerticalOffset"]
  LOADK R5 K4 ["ThumbnailZoom"]
  LOADK R6 K5 ["ThumbnailTime"]
  LOADK R7 K6 ["ThumbnailFieldOfView"]
  SETLIST R0 R1 7 [1]
  DUPCLOSURE R1 K7 [PROTO_0]
  CAPTURE VAL R0
  RETURN R1 1
