PROTO_0:
  GETTABLEKS R2 R1 K0 ["position"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["Dictionary"]
  GETTABLEKS R3 R4 K2 ["join"]
  MOVE R4 R0
  DUPTABLE R5 K3 [{"position"}]
  SETTABLEKS R2 R5 K0 ["position"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_1:
  GETTABLEKS R2 R1 K0 ["size"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["Dictionary"]
  GETTABLEKS R3 R4 K2 ["join"]
  MOVE R4 R0
  DUPTABLE R5 K3 [{"size"}]
  SETTABLEKS R2 R5 K0 ["size"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"materialMode"}]
  GETTABLEKS R5 R1 K2 ["materialMode"]
  SETTABLEKS R5 R4 K2 ["materialMode"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"heightmap"}]
  GETTABLEKS R5 R1 K2 ["heightmap"]
  JUMPIF R5 [+2]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K2 ["heightmap"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_4:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"colormap"}]
  GETTABLEKS R5 R1 K2 ["colormap"]
  JUMPIF R5 [+2]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K2 ["colormap"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_5:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"colormapWarningId"}]
  GETTABLEKS R5 R1 K2 ["colormapWarningId"]
  JUMPIF R5 [+3]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["None"]
  SETTABLEKS R5 R4 K2 ["colormapWarningId"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_6:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"defaultMaterial"}]
  GETTABLEKS R5 R1 K2 ["defaultMaterial"]
  SETTABLEKS R5 R4 K2 ["defaultMaterial"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_7:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"sizeChangedByUser"}]
  GETTABLEKS R5 R1 K2 ["sizeChangedByUser"]
  SETTABLEKS R5 R4 K2 ["sizeChangedByUser"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Util"]
  GETTABLEKS R4 R5 K10 ["TerrainEnums"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K11 ["ImportMaterialMode"]
  GETTABLEKS R5 R1 K12 ["createReducer"]
  DUPTABLE R6 K21 [{"position", "size", "heightmap", "colormap", "colormapWarningId", "defaultMaterial", "materialMode", "sizeChangedByUser"}]
  DUPTABLE R7 K25 [{"X", "Y", "Z"}]
  LOADN R8 0
  SETTABLEKS R8 R7 K22 ["X"]
  LOADN R8 0
  SETTABLEKS R8 R7 K23 ["Y"]
  LOADN R8 0
  SETTABLEKS R8 R7 K24 ["Z"]
  SETTABLEKS R7 R6 K13 ["position"]
  DUPTABLE R7 K25 [{"X", "Y", "Z"}]
  LOADN R8 0
  SETTABLEKS R8 R7 K22 ["X"]
  LOADN R8 0
  SETTABLEKS R8 R7 K23 ["Y"]
  LOADN R8 0
  SETTABLEKS R8 R7 K24 ["Z"]
  SETTABLEKS R7 R6 K14 ["size"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K15 ["heightmap"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K16 ["colormap"]
  LOADNIL R7
  SETTABLEKS R7 R6 K17 ["colormapWarningId"]
  GETIMPORT R7 K29 [Enum.Material.Asphalt]
  SETTABLEKS R7 R6 K18 ["defaultMaterial"]
  GETTABLEKS R7 R4 K30 ["DefaultMaterial"]
  SETTABLEKS R7 R6 K19 ["materialMode"]
  LOADB R7 0
  SETTABLEKS R7 R6 K20 ["sizeChangedByUser"]
  DUPTABLE R7 K39 [{"ChangePosition", "ChangeSize", "SetImportMaterialMode", "SelectHeightmap", "SelectColormap", "SetColormapWarningId", "SetDefaultMaterial", "SetSizeChangedByUser"}]
  DUPCLOSURE R8 K40 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K31 ["ChangePosition"]
  DUPCLOSURE R8 K41 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K32 ["ChangeSize"]
  DUPCLOSURE R8 K42 [PROTO_2]
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K33 ["SetImportMaterialMode"]
  DUPCLOSURE R8 K43 [PROTO_3]
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K34 ["SelectHeightmap"]
  DUPCLOSURE R8 K44 [PROTO_4]
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K35 ["SelectColormap"]
  DUPCLOSURE R8 K45 [PROTO_5]
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K36 ["SetColormapWarningId"]
  DUPCLOSURE R8 K46 [PROTO_6]
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K37 ["SetDefaultMaterial"]
  DUPCLOSURE R8 K47 [PROTO_7]
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K38 ["SetSizeChangedByUser"]
  CALL R5 2 1
  RETURN R5 1
