PROTO_0:
  NEWTABLE R2 0 0
  GETIMPORT R3 K1 [pairs]
  MOVE R4 R0
  CALL R3 1 3
  FORGPREP_NEXT R3
  FASTCALL1 TYPEOF R7 [+3]
  MOVE R9 R7
  GETIMPORT R8 K3 [typeof]
  CALL R8 1 1
  JUMPIFNOTEQKS R8 K4 ["table"] [+44]
  GETTABLE R8 R1 R6
  JUMPIFNOT R8 [+23]
  GETTABLE R9 R1 R6
  FASTCALL1 TYPEOF R9 [+2]
  GETIMPORT R8 K3 [typeof]
  CALL R8 1 1
  JUMPIFNOTEQKS R8 K4 ["table"] [+17]
  GETUPVAL R9 0
  GETTABLE R8 R9 R6
  JUMPIFNOT R8 [+7]
  GETUPVAL R8 1
  GETTABLE R9 R1 R6
  NEWTABLE R10 0 0
  CALL R8 2 1
  SETTABLE R8 R2 R6
  JUMP [+25]
  GETUPVAL R8 1
  MOVE R9 R7
  GETTABLE R10 R1 R6
  CALL R8 2 1
  SETTABLE R8 R2 R6
  JUMP [+19]
  GETUPVAL R8 2
  JUMPIFNOT R8 [+9]
  GETUPVAL R9 3
  GETTABLE R8 R9 R6
  JUMPIFNOT R8 [+6]
  GETIMPORT R8 K6 [table.clone]
  MOVE R9 R7
  CALL R8 1 1
  SETTABLE R8 R2 R6
  JUMP [+8]
  GETUPVAL R8 1
  MOVE R9 R7
  NEWTABLE R10 0 0
  CALL R8 2 1
  SETTABLE R8 R2 R6
  JUMP [+1]
  SETTABLE R7 R2 R6
  FORGLOOP R3 2 [-52]
  GETIMPORT R3 K1 [pairs]
  MOVE R4 R1
  CALL R3 1 3
  FORGPREP_NEXT R3
  FASTCALL1 TYPEOF R7 [+3]
  MOVE R9 R7
  GETIMPORT R8 K3 [typeof]
  CALL R8 1 1
  JUMPIFNOTEQKS R8 K4 ["table"] [+10]
  GETTABLE R8 R0 R6
  JUMPIF R8 [+8]
  GETUPVAL R8 1
  MOVE R9 R7
  NEWTABLE R10 0 0
  CALL R8 2 1
  SETTABLE R8 R2 R6
  JUMP [+1]
  SETTABLE R7 R2 R6
  FORGLOOP R3 2 [-18]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["BuildSettings"]
  GETTABLEKS R3 R1 K9 ["HeightmapSettings"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K10 ["Flags"]
  GETTABLEKS R5 R6 K11 ["getFFlagTerrainEditorPlacementSlowdownFix"]
  CALL R4 1 1
  MOVE R5 R4
  CALL R5 0 1
  NEWTABLE R6 4 0
  GETTABLEKS R7 R2 K12 ["Material"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R3 K13 ["Heightmap"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R3 K14 ["Colormap"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  JUMPIFNOT R5 [+7]
  NEWTABLE R7 1 0
  GETTABLEKS R8 R2 K15 ["MaterialLUT"]
  LOADB R9 1
  SETTABLE R9 R7 R8
  JUMP [+1]
  LOADNIL R7
  DUPCLOSURE R8 K16 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R5
  CAPTURE VAL R7
  RETURN R8 1
