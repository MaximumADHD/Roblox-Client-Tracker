PROTO_0:
  GETUPVAL R2 0
  FASTCALL1 TYPE R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K1 [type]
  CALL R3 1 1
  GETTABLE R1 R2 R3
  MOVE R3 R1
  GETIMPORT R4 K4 [table.concat]
  NEWTABLE R5 0 2
  LOADK R6 K5 ["Unsupported property type"]
  FASTCALL1 TYPE R0 [+3]
  MOVE R8 R0
  GETIMPORT R7 K1 [type]
  CALL R7 1 1
  SETLIST R5 R6 2 [1]
  CALL R4 1 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R2 K7 [assert]
  CALL R2 -1 0
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R4 R0 K4 ["Src"]
  GETTABLEKS R3 R4 K5 ["Components"]
  GETTABLEKS R2 R3 K6 ["Properties"]
  GETTABLEKS R1 R2 K7 ["Types"]
  GETIMPORT R2 K9 [require]
  GETTABLEKS R3 R1 K10 ["BooleanProperty"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R4 R1 K11 ["EnumProperty"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R5 R1 K12 ["NumberProperty"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R6 R1 K13 ["StringProperty"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R7 R1 K14 ["VectorProperty"]
  CALL R6 1 1
  NEWTABLE R7 8 0
  SETTABLEKS R2 R7 K15 ["boolean"]
  SETTABLEKS R3 R7 K16 ["userdata"]
  SETTABLEKS R4 R7 K17 ["number"]
  SETTABLEKS R5 R7 K18 ["string"]
  SETTABLEKS R6 R7 K19 ["vector"]
  DUPCLOSURE R8 K20 [PROTO_0]
  CAPTURE VAL R7
  RETURN R8 1
