PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R1 2 -1
  RETURN R1 -1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R1 1
  NEWTABLE R2 0 0
  DUPTABLE R3 K2 [{"IconTile"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 2
  DUPTABLE R6 K5 [{"Size", "SubcategoryDict"}]
  GETIMPORT R7 K8 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  LOADN R11 200
  CALL R7 4 1
  SETTABLEKS R7 R6 K3 ["Size"]
  NEWTABLE R7 0 5
  DUPTABLE R8 K16 [{"displayName", "children", "childCount", "index", "name", "path", "thumbnail"}]
  LOADK R9 K17 ["Category"]
  SETTABLEKS R9 R8 K9 ["displayName"]
  NEWTABLE R9 0 0
  SETTABLEKS R9 R8 K10 ["children"]
  LOADN R9 0
  SETTABLEKS R9 R8 K11 ["childCount"]
  LOADN R9 1
  SETTABLEKS R9 R8 K12 ["index"]
  LOADK R9 K18 ["1"]
  SETTABLEKS R9 R8 K13 ["name"]
  NEWTABLE R9 0 0
  SETTABLEKS R9 R8 K14 ["path"]
  DUPTABLE R9 K21 [{"assetId", "backgroundColor"}]
  LOADK R10 K22 [5657301130]
  SETTABLEKS R10 R9 K19 ["assetId"]
  LOADK R10 K23 ["#32a852"]
  SETTABLEKS R10 R9 K20 ["backgroundColor"]
  SETTABLEKS R9 R8 K15 ["thumbnail"]
  DUPTABLE R9 K16 [{"displayName", "children", "childCount", "index", "name", "path", "thumbnail"}]
  LOADK R10 K24 ["Vehicle"]
  SETTABLEKS R10 R9 K9 ["displayName"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K10 ["children"]
  LOADN R10 0
  SETTABLEKS R10 R9 K11 ["childCount"]
  LOADN R10 2
  SETTABLEKS R10 R9 K12 ["index"]
  LOADK R10 K25 ["2"]
  SETTABLEKS R10 R9 K13 ["name"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K14 ["path"]
  DUPTABLE R10 K21 [{"assetId", "backgroundColor"}]
  LOADK R11 K22 [5657301130]
  SETTABLEKS R11 R10 K19 ["assetId"]
  LOADK R11 K23 ["#32a852"]
  SETTABLEKS R11 R10 K20 ["backgroundColor"]
  SETTABLEKS R10 R9 K15 ["thumbnail"]
  DUPTABLE R10 K16 [{"displayName", "children", "childCount", "index", "name", "path", "thumbnail"}]
  LOADK R11 K26 ["3rd"]
  SETTABLEKS R11 R10 K9 ["displayName"]
  NEWTABLE R11 0 0
  SETTABLEKS R11 R10 K10 ["children"]
  LOADN R11 0
  SETTABLEKS R11 R10 K11 ["childCount"]
  LOADN R11 3
  SETTABLEKS R11 R10 K12 ["index"]
  LOADK R11 K27 ["3"]
  SETTABLEKS R11 R10 K13 ["name"]
  NEWTABLE R11 0 0
  SETTABLEKS R11 R10 K14 ["path"]
  DUPTABLE R11 K21 [{"assetId", "backgroundColor"}]
  LOADK R12 K22 [5657301130]
  SETTABLEKS R12 R11 K19 ["assetId"]
  LOADK R12 K23 ["#32a852"]
  SETTABLEKS R12 R11 K20 ["backgroundColor"]
  SETTABLEKS R11 R10 K15 ["thumbnail"]
  DUPTABLE R11 K16 [{"displayName", "children", "childCount", "index", "name", "path", "thumbnail"}]
  LOADK R12 K28 ["4"]
  SETTABLEKS R12 R11 K9 ["displayName"]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K10 ["children"]
  LOADN R12 0
  SETTABLEKS R12 R11 K11 ["childCount"]
  LOADN R12 3
  SETTABLEKS R12 R11 K12 ["index"]
  LOADK R12 K28 ["4"]
  SETTABLEKS R12 R11 K13 ["name"]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K14 ["path"]
  DUPTABLE R12 K21 [{"assetId", "backgroundColor"}]
  LOADK R13 K22 [5657301130]
  SETTABLEKS R13 R12 K19 ["assetId"]
  LOADK R13 K23 ["#32a852"]
  SETTABLEKS R13 R12 K20 ["backgroundColor"]
  SETTABLEKS R12 R11 K15 ["thumbnail"]
  DUPTABLE R12 K29 [{"displayName", "children", "childCount", "name", "index", "path", "thumbnail"}]
  LOADK R13 K30 ["5"]
  SETTABLEKS R13 R12 K9 ["displayName"]
  NEWTABLE R13 0 0
  SETTABLEKS R13 R12 K10 ["children"]
  LOADN R13 0
  SETTABLEKS R13 R12 K11 ["childCount"]
  LOADK R13 K30 ["5"]
  SETTABLEKS R13 R12 K13 ["name"]
  LOADN R13 3
  SETTABLEKS R13 R12 K12 ["index"]
  NEWTABLE R13 0 0
  SETTABLEKS R13 R12 K14 ["path"]
  DUPTABLE R13 K21 [{"assetId", "backgroundColor"}]
  LOADK R14 K22 [5657301130]
  SETTABLEKS R14 R13 K19 ["assetId"]
  LOADK R14 K23 ["#32a852"]
  SETTABLEKS R14 R13 K20 ["backgroundColor"]
  SETTABLEKS R13 R12 K15 ["thumbnail"]
  SETLIST R7 R8 5 [1]
  SETTABLEKS R7 R6 K4 ["SubcategoryDict"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K1 ["IconTile"]
  CALL R0 3 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K7 ["Stories"]
  GETTABLEKS R4 R5 K8 ["ToolboxStoryWrapper"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R8 R0 K9 ["Core"]
  GETTABLEKS R7 R8 K10 ["Components"]
  GETTABLEKS R6 R7 K11 ["Categorization"]
  GETTABLEKS R5 R6 K12 ["SubcategoriesView"]
  CALL R4 1 1
  DUPCLOSURE R5 K13 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R3
  DUPTABLE R6 K16 [{"summary", "stories"}]
  LOADK R7 K17 ["A grid of Subcategory IconTiles with flexible widths."]
  SETTABLEKS R7 R6 K14 ["summary"]
  NEWTABLE R7 0 1
  DUPTABLE R8 K20 [{"name", "summary", "story"}]
  LOADK R9 K12 ["SubcategoriesView"]
  SETTABLEKS R9 R8 K18 ["name"]
  LOADK R9 K21 ["Example with 5 subcategories."]
  SETTABLEKS R9 R8 K14 ["summary"]
  DUPCLOSURE R9 K22 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R4
  SETTABLEKS R9 R8 K19 ["story"]
  SETLIST R7 R8 1 [1]
  SETTABLEKS R7 R6 K15 ["stories"]
  RETURN R6 1
