MAIN:
  PREPVARARGS 0
  NEWTABLE R0 8 0
  DUPTABLE R1 K3 [{"Cancel", "Pause", "Resume"}]
  LOADK R2 K0 ["Cancel"]
  SETTABLEKS R2 R1 K0 ["Cancel"]
  LOADK R2 K1 ["Pause"]
  SETTABLEKS R2 R1 K1 ["Pause"]
  LOADK R2 K2 ["Resume"]
  SETTABLEKS R2 R1 K2 ["Resume"]
  SETTABLEKS R1 R0 K4 ["DialogOption"]
  DUPTABLE R2 K7 [{"Gizmo", "History"}]
  LOADK R3 K5 ["Gizmo"]
  SETTABLEKS R3 R2 K5 ["Gizmo"]
  LOADK R3 K6 ["History"]
  SETTABLEKS R3 R2 K6 ["History"]
  SETTABLEKS R2 R0 K8 ["OperationSource"]
  DUPTABLE R3 K17 [{"Apply", "CopySelected", "CutSelected", "DeleteSelected", "DuplicateSelected", "EditPlane", "PasteSelected", "Quit"}]
  LOADK R4 K9 ["Apply"]
  SETTABLEKS R4 R3 K9 ["Apply"]
  LOADK R4 K10 ["CopySelected"]
  SETTABLEKS R4 R3 K10 ["CopySelected"]
  LOADK R4 K11 ["CutSelected"]
  SETTABLEKS R4 R3 K11 ["CutSelected"]
  LOADK R4 K12 ["DeleteSelected"]
  SETTABLEKS R4 R3 K12 ["DeleteSelected"]
  LOADK R4 K13 ["DuplicateSelected"]
  SETTABLEKS R4 R3 K13 ["DuplicateSelected"]
  LOADK R4 K14 ["EditPlane"]
  SETTABLEKS R4 R3 K14 ["EditPlane"]
  LOADK R4 K15 ["PasteSelected"]
  SETTABLEKS R4 R3 K15 ["PasteSelected"]
  LOADK R4 K16 ["Quit"]
  SETTABLEKS R4 R3 K16 ["Quit"]
  SETTABLEKS R3 R0 K18 ["PluginAction"]
  DUPTABLE R4 K24 [{"Duplicate", "Import", "Move", "Paste", "Stamp"}]
  LOADK R5 K19 ["Duplicate"]
  SETTABLEKS R5 R4 K19 ["Duplicate"]
  LOADK R5 K20 ["Import"]
  SETTABLEKS R5 R4 K20 ["Import"]
  LOADK R5 K21 ["Move"]
  SETTABLEKS R5 R4 K21 ["Move"]
  LOADK R5 K22 ["Paste"]
  SETTABLEKS R5 R4 K22 ["Paste"]
  LOADK R5 K23 ["Stamp"]
  SETTABLEKS R5 R4 K23 ["Stamp"]
  SETTABLEKS R4 R0 K25 ["TransformMode"]
  DUPTABLE R5 K28 [{"Colormap", "Heightmap"}]
  LOADK R6 K26 ["Colormap"]
  SETTABLEKS R6 R5 K26 ["Colormap"]
  LOADK R6 K27 ["Heightmap"]
  SETTABLEKS R6 R5 K27 ["Heightmap"]
  SETTABLEKS R5 R0 K29 ["ImageType"]
  RETURN R0 1
