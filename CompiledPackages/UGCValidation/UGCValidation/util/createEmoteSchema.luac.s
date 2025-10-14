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
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["flags"]
  GETTABLEKS R2 R3 K6 ["getFFlagUGCValidateAllowThumbnailFieldOfView"]
  CALL R1 1 1
  NEWTABLE R2 0 6
  LOADK R3 K7 ["ThumbnailCharacterRotation"]
  LOADK R4 K8 ["ThumbnailHorizontalOffset"]
  LOADK R5 K9 ["ThumbnailKeyframe"]
  LOADK R6 K10 ["ThumbnailVerticalOffset"]
  LOADK R7 K11 ["ThumbnailZoom"]
  LOADK R8 K12 ["ThumbnailTime"]
  SETLIST R2 R3 6 [1]
  MOVE R3 R1
  CALL R3 0 1
  JUMPIFNOT R3 [+7]
  FASTCALL2K TABLE_INSERT R2 K13 [+5]
  MOVE R4 R2
  LOADK R5 K13 ["ThumbnailFieldOfView"]
  GETIMPORT R3 K16 [table.insert]
  CALL R3 2 0
  DUPCLOSURE R3 K17 [PROTO_0]
  CAPTURE VAL R2
  RETURN R3 1
