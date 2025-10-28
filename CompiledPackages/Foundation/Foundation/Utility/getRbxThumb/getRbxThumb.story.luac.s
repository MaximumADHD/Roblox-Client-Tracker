PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K0 ["controls"]
  GETTABLEKS R2 R3 K1 ["type"]
  GETTABLEKS R4 R0 K0 ["controls"]
  GETTABLEKS R3 R4 K2 ["id"]
  GETTABLEKS R5 R0 K0 ["controls"]
  GETTABLEKS R4 R5 K3 ["size"]
  CALL R1 3 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["createElement"]
  GETUPVAL R3 2
  DUPTABLE R4 K6 [{"tag"}]
  LOADK R5 K7 ["col gap-medium align-x-center auto-xy padding-large bg-surface-100"]
  SETTABLEKS R5 R4 K5 ["tag"]
  DUPTABLE R5 K10 [{"Image", "Text"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K4 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K13 [{"tag", "Image", "Size", "LayoutOrder"}]
  LOADK R9 K14 ["bg-shift-100"]
  SETTABLEKS R9 R8 K5 ["tag"]
  SETTABLEKS R1 R8 K8 ["Image"]
  GETIMPORT R9 K17 [UDim2.fromOffset]
  LOADN R10 150
  LOADN R11 150
  CALL R9 2 1
  SETTABLEKS R9 R8 K11 ["Size"]
  LOADN R9 1
  SETTABLEKS R9 R8 K12 ["LayoutOrder"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K8 ["Image"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K4 ["createElement"]
  GETUPVAL R7 4
  DUPTABLE R8 K19 [{"tag", "Text", "AutomaticSize", "LayoutOrder"}]
  LOADK R9 K20 ["text-caption-small"]
  SETTABLEKS R9 R8 K5 ["tag"]
  SETTABLEKS R1 R8 K9 ["Text"]
  GETIMPORT R9 K23 [Enum.AutomaticSize.XY]
  SETTABLEKS R9 R8 K18 ["AutomaticSize"]
  LOADN R9 2
  SETTABLEKS R9 R8 K12 ["LayoutOrder"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K9 ["Text"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["Dash"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K9 ["Components"]
  GETTABLEKS R5 R6 K10 ["Image"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K9 ["Components"]
  GETTABLEKS R6 R7 K11 ["View"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R0 K9 ["Components"]
  GETTABLEKS R7 R8 K12 ["Text"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R0 K13 ["Utility"]
  GETTABLEKS R8 R9 K14 ["getRbxThumb"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R10 R0 K15 ["Enums"]
  GETTABLEKS R9 R10 K16 ["ThumbnailType"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R11 R0 K15 ["Enums"]
  GETTABLEKS R10 R11 K17 ["ThumbnailSize"]
  CALL R9 1 1
  GETIMPORT R10 K6 [require]
  GETTABLEKS R12 R0 K15 ["Enums"]
  GETTABLEKS R11 R12 K18 ["ControlState"]
  CALL R10 1 1
  DUPTABLE R11 K23 [{"summary", "name", "story", "controls"}]
  LOADK R12 K14 ["getRbxThumb"]
  SETTABLEKS R12 R11 K19 ["summary"]
  LOADK R12 K24 ["Configurable image with getRbxThumb"]
  SETTABLEKS R12 R11 K20 ["name"]
  DUPCLOSURE R12 K25 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R6
  SETTABLEKS R12 R11 K21 ["story"]
  DUPTABLE R12 K29 [{"type", "id", "size"}]
  GETTABLEKS R13 R3 K30 ["values"]
  MOVE R14 R8
  CALL R13 1 1
  SETTABLEKS R13 R12 K26 ["type"]
  LOADN R13 1
  SETTABLEKS R13 R12 K27 ["id"]
  NEWTABLE R13 0 4
  GETTABLEKS R14 R9 K31 ["Medium"]
  GETTABLEKS R15 R9 K32 ["Large"]
  GETTABLEKS R16 R9 K33 ["XLarge"]
  GETTABLEKS R17 R9 K34 ["Small"]
  SETLIST R13 R14 4 [1]
  SETTABLEKS R13 R12 K28 ["size"]
  SETTABLEKS R12 R11 K22 ["controls"]
  RETURN R11 1
