PROTO_0:
  DUPTABLE R3 K3 [{"_draggerContext", "_max", "_volume"}]
  SETTABLEKS R0 R3 K0 ["_draggerContext"]
  GETUPVAL R5 0
  CALL R5 0 1
  JUMPIFNOT R5 [+4]
  JUMPIFNOT R1 [+3]
  GETTABLEKS R4 R1 K4 ["Max"]
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K1 ["_max"]
  GETUPVAL R5 0
  CALL R5 0 1
  JUMPIFNOT R5 [+25]
  GETUPVAL R5 1
  CALL R5 0 1
  JUMPIFNOT R5 [+22]
  JUMPIFNOT R1 [+21]
  GETTABLEKS R5 R1 K4 ["Max"]
  JUMPIFNOT R5 [+18]
  GETTABLEKS R5 R1 K5 ["UseVolume"]
  JUMPIFNOT R5 [+15]
  GETTABLEKS R7 R1 K4 ["Max"]
  GETTABLEKS R6 R7 K6 ["X"]
  GETTABLEKS R8 R1 K4 ["Max"]
  GETTABLEKS R7 R8 K7 ["Y"]
  MUL R5 R6 R7
  GETTABLEKS R7 R1 K4 ["Max"]
  GETTABLEKS R6 R7 K8 ["Z"]
  MUL R4 R5 R6
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K2 ["_volume"]
  GETUPVAL R4 2
  FASTCALL2 SETMETATABLE R3 R4 [+3]
  GETIMPORT R2 K10 [setmetatable]
  CALL R2 2 1
  RETURN R2 1

PROTO_1:
  NAMECALL R3 R2 K0 ["getBoundingBox"]
  CALL R3 1 -1
  RETURN R3 -1

PROTO_2:
  GETTABLEKS R4 R0 K0 ["_draggerContext"]
  NAMECALL R4 R4 K1 ["isCtrlKeyDown"]
  CALL R4 1 -1
  RETURN R4 -1

PROTO_3:
  GETTABLEKS R3 R0 K0 ["_draggerContext"]
  NAMECALL R3 R3 K1 ["isShiftKeyDown"]
  CALL R3 1 1
  JUMPIFNOT R3 [+11]
  DUPTABLE R3 K5 [{"X", "Y", "Z"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K2 ["X"]
  LOADB R4 1
  SETTABLEKS R4 R3 K3 ["Y"]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["Z"]
  RETURN R3 1
  NEWTABLE R3 0 3
  DUPTABLE R4 K6 [{"X"}]
  LOADB R5 1
  SETTABLEKS R5 R4 K2 ["X"]
  DUPTABLE R5 K7 [{"Y"}]
  LOADB R6 1
  SETTABLEKS R6 R5 K3 ["Y"]
  DUPTABLE R6 K8 [{"Z"}]
  LOADB R7 1
  SETTABLEKS R7 R6 K4 ["Z"]
  SETLIST R3 R4 3 [1]
  GETTABLE R4 R3 R2
  RETURN R4 1

PROTO_4:
  GETIMPORT R5 K3 [Vector3.one]
  MULK R4 R5 K0 [4]
  GETTABLEKS R5 R0 K4 ["_max"]
  JUMPIF R5 [+4]
  GETIMPORT R7 K3 [Vector3.one]
  MULK R6 R7 K5 [4096]
  MULK R5 R6 K0 [4]
  GETUPVAL R6 0
  CALL R6 0 1
  JUMPIFNOT R6 [+85]
  GETTABLEKS R6 R0 K6 ["_volume"]
  JUMPIFNOT R6 [+82]
  JUMPIFNOT R1 [+2]
  JUMPIFNOT R2 [+1]
  JUMPIF R3 [+4]
  MOVE R6 R4
  GETTABLEKS R7 R0 K7 ["_calculatedMax"]
  RETURN R6 2
  GETTABLEKS R6 R2 K8 ["X"]
  JUMPIFNOT R6 [+13]
  GETTABLEKS R6 R2 K9 ["Y"]
  JUMPIFNOT R6 [+10]
  GETTABLEKS R6 R2 K10 ["Z"]
  JUMPIFNOT R6 [+7]
  GETUPVAL R6 1
  MOVE R7 R3
  GETTABLEKS R8 R0 K6 ["_volume"]
  CALL R6 2 1
  MOVE R5 R6
  JUMP [+59]
  GETTABLEKS R6 R2 K8 ["X"]
  JUMPIFNOT R6 [+17]
  GETTABLEKS R6 R3 K9 ["Y"]
  GETTABLEKS R7 R3 K10 ["Z"]
  GETTABLEKS R9 R0 K6 ["_volume"]
  MUL R10 R6 R7
  DIV R8 R9 R10
  MOVE R10 R8
  MOVE R11 R6
  MOVE R12 R7
  FASTCALL VECTOR [+2]
  GETIMPORT R9 K12 [Vector3.new]
  CALL R9 3 1
  MOVE R5 R9
  JUMP [+39]
  GETTABLEKS R6 R2 K9 ["Y"]
  JUMPIFNOT R6 [+17]
  GETTABLEKS R6 R3 K8 ["X"]
  GETTABLEKS R7 R3 K10 ["Z"]
  GETTABLEKS R9 R0 K6 ["_volume"]
  MUL R10 R6 R7
  DIV R8 R9 R10
  MOVE R10 R6
  MOVE R11 R8
  MOVE R12 R7
  FASTCALL VECTOR [+2]
  GETIMPORT R9 K12 [Vector3.new]
  CALL R9 3 1
  MOVE R5 R9
  JUMP [+19]
  GETTABLEKS R6 R2 K10 ["Z"]
  JUMPIFNOT R6 [+16]
  GETTABLEKS R6 R3 K8 ["X"]
  GETTABLEKS R7 R3 K9 ["Y"]
  GETTABLEKS R9 R0 K6 ["_volume"]
  MUL R10 R6 R7
  DIV R8 R9 R10
  MOVE R10 R6
  MOVE R11 R7
  MOVE R12 R8
  FASTCALL VECTOR [+2]
  GETIMPORT R9 K12 [Vector3.new]
  CALL R9 3 1
  MOVE R5 R9
  GETUPVAL R6 0
  CALL R6 0 1
  JUMPIFNOT R6 [+14]
  GETIMPORT R9 K3 [Vector3.one]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K13 ["MaxRegion"]
  MUL R8 R9 R10
  NAMECALL R6 R5 K14 ["Min"]
  CALL R6 2 1
  MOVE R5 R6
  SETTABLEKS R4 R0 K15 ["_calculatedMin"]
  SETTABLEKS R5 R0 K7 ["_calculatedMax"]
  RETURN R4 2

PROTO_5:
  MOVE R6 R1
  MOVE R7 R2
  NAMECALL R4 R0 K0 ["getBoundingBox"]
  CALL R4 3 3
  SETTABLEKS R4 R0 K1 ["_originalBoundingBoxCFrame"]
  SETTABLEKS R6 R0 K2 ["_originalBoundingBoxSize"]
  RETURN R0 0

PROTO_6:
  GETTABLEKS R4 R0 K0 ["_originalBoundingBoxCFrame"]
  GETTABLEKS R7 R0 K0 ["_originalBoundingBoxCFrame"]
  GETTABLEKS R6 R7 K1 ["Rotation"]
  MUL R5 R6 R2
  ADD R3 R4 R5
  GETTABLEKS R5 R0 K2 ["_originalBoundingBoxSize"]
  ADD R4 R5 R1
  NAMECALL R5 R0 K3 ["getMinMaxSizes"]
  CALL R5 1 2
  GETUPVAL R7 0
  CALL R7 0 1
  JUMPIFNOT R7 [+68]
  GETTABLEKS R7 R4 K4 ["X"]
  GETTABLEKS R8 R6 K4 ["X"]
  JUMPIFNOTLE R7 R8 [+39]
  GETTABLEKS R7 R4 K5 ["Y"]
  GETTABLEKS R8 R6 K5 ["Y"]
  JUMPIFNOTLE R7 R8 [+33]
  GETTABLEKS R7 R4 K6 ["Z"]
  GETTABLEKS R8 R6 K6 ["Z"]
  JUMPIFNOTLE R7 R8 [+27]
  GETTABLEKS R7 R4 K4 ["X"]
  GETTABLEKS R8 R5 K4 ["X"]
  JUMPIFNOTLE R8 R7 [+21]
  GETTABLEKS R7 R4 K5 ["Y"]
  GETTABLEKS R8 R5 K5 ["Y"]
  JUMPIFNOTLE R8 R7 [+15]
  GETTABLEKS R7 R4 K6 ["Z"]
  GETTABLEKS R8 R5 K6 ["Z"]
  JUMPIFNOTLE R8 R7 [+9]
  GETTABLEKS R8 R0 K7 ["_draggerContext"]
  GETTABLEKS R7 R8 K8 ["updateRegion"]
  MOVE R8 R3
  MOVE R9 R4
  CALL R7 2 0
  RETURN R1 2
  GETTABLEKS R7 R1 K4 ["X"]
  LOADN R8 0
  JUMPIFLT R7 R8 [+11]
  GETTABLEKS R7 R1 K5 ["Y"]
  LOADN R8 0
  JUMPIFLT R7 R8 [+6]
  GETTABLEKS R7 R1 K6 ["Z"]
  LOADN R8 0
  JUMPIFNOTLT R7 R8 [+5]
  MOVE R7 R1
  GETIMPORT R8 K11 [Vector3.zero]
  RETURN R7 2
  GETIMPORT R7 K11 [Vector3.zero]
  GETIMPORT R8 K11 [Vector3.zero]
  RETURN R7 2
  GETTABLEKS R8 R4 K4 ["X"]
  MULK R7 R8 K12 [4]
  GETTABLEKS R8 R6 K4 ["X"]
  JUMPIFNOTLE R7 R8 [+44]
  GETTABLEKS R8 R4 K5 ["Y"]
  MULK R7 R8 K12 [4]
  GETTABLEKS R8 R6 K5 ["Y"]
  JUMPIFNOTLE R7 R8 [+37]
  GETTABLEKS R8 R4 K6 ["Z"]
  MULK R7 R8 K12 [4]
  GETTABLEKS R8 R6 K6 ["Z"]
  JUMPIFNOTLE R7 R8 [+30]
  GETTABLEKS R8 R4 K4 ["X"]
  MULK R7 R8 K12 [4]
  GETTABLEKS R8 R5 K4 ["X"]
  JUMPIFNOTLE R8 R7 [+23]
  GETTABLEKS R8 R4 K5 ["Y"]
  MULK R7 R8 K12 [4]
  GETTABLEKS R8 R5 K5 ["Y"]
  JUMPIFNOTLE R8 R7 [+16]
  GETTABLEKS R8 R4 K6 ["Z"]
  MULK R7 R8 K12 [4]
  GETTABLEKS R8 R5 K6 ["Z"]
  JUMPIFNOTLE R8 R7 [+9]
  GETTABLEKS R8 R0 K7 ["_draggerContext"]
  GETTABLEKS R7 R8 K8 ["updateRegion"]
  MOVE R8 R3
  MOVE R9 R4
  CALL R7 2 0
  RETURN R1 2
  GETIMPORT R7 K11 [Vector3.zero]
  GETIMPORT R8 K11 [Vector3.zero]
  RETURN R7 2

PROTO_7:
  LOADN R1 1
  RETURN R1 1

PROTO_8:
  RETURN R0 0

PROTO_9:
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["getBinarySearchedSize"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K9 ["Resources"]
  GETTABLEKS R3 R4 K10 ["Constants"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K11 ["Flags"]
  GETTABLEKS R4 R5 K12 ["getFFlagTerrainEditorGenerationFeature"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K11 ["Flags"]
  GETTABLEKS R5 R6 K13 ["getFFlagTerrainEditorClampVolume"]
  CALL R4 1 1
  NEWTABLE R5 16 0
  SETTABLEKS R5 R5 K14 ["__index"]
  DUPCLOSURE R6 K15 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  SETTABLEKS R6 R5 K16 ["new"]
  DUPCLOSURE R6 K17 [PROTO_1]
  SETTABLEKS R6 R5 K18 ["getBoundingBox"]
  DUPCLOSURE R6 K19 [PROTO_2]
  SETTABLEKS R6 R5 K20 ["shouldScaleFromCenter"]
  DUPCLOSURE R6 K21 [PROTO_3]
  SETTABLEKS R6 R5 K22 ["axesToScale"]
  DUPCLOSURE R6 K23 [PROTO_4]
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K24 ["getMinMaxSizes"]
  DUPCLOSURE R6 K25 [PROTO_5]
  SETTABLEKS R6 R5 K26 ["beginScale"]
  DUPCLOSURE R6 K27 [PROTO_6]
  CAPTURE VAL R4
  SETTABLEKS R6 R5 K28 ["updateScale"]
  DUPCLOSURE R6 K29 [PROTO_7]
  SETTABLEKS R6 R5 K30 ["getPriority"]
  DUPCLOSURE R6 K31 [PROTO_8]
  SETTABLEKS R6 R5 K32 ["endScale"]
  DUPCLOSURE R6 K33 [PROTO_9]
  SETTABLEKS R6 R5 K34 ["render"]
  RETURN R5 1
