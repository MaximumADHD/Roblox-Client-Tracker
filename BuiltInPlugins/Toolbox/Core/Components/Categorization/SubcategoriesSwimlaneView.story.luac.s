PROTO_0:
  RETURN R0 0

PROTO_1:
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R1 1
  NEWTABLE R2 0 0
  DUPTABLE R3 K2 [{"SubcategoriesSwimlaneView"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 2
  DUPTABLE R6 K7 [{"CategoryName", "OnClickBack", "OnClickSeeAllAssets", "SubcategoryDict"}]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K8 ["FREE_MODELS"]
  GETTABLEKS R7 R8 K9 ["name"]
  SETTABLEKS R7 R6 K3 ["CategoryName"]
  DUPCLOSURE R7 K10 [PROTO_0]
  SETTABLEKS R7 R6 K4 ["OnClickBack"]
  DUPCLOSURE R7 K11 [PROTO_1]
  SETTABLEKS R7 R6 K5 ["OnClickSeeAllAssets"]
  NEWTABLE R7 0 5
  DUPTABLE R8 K18 [{"displayName", "children", "childCount", "index", "name", "path", "thumbnail"}]
  LOADK R9 K19 ["Category"]
  SETTABLEKS R9 R8 K12 ["displayName"]
  NEWTABLE R9 0 0
  SETTABLEKS R9 R8 K13 ["children"]
  LOADN R9 0
  SETTABLEKS R9 R8 K14 ["childCount"]
  LOADN R9 1
  SETTABLEKS R9 R8 K15 ["index"]
  LOADK R9 K20 ["1"]
  SETTABLEKS R9 R8 K9 ["name"]
  NEWTABLE R9 0 0
  SETTABLEKS R9 R8 K16 ["path"]
  DUPTABLE R9 K23 [{"assetId", "backgroundColor"}]
  LOADK R10 K24 [5657301130]
  SETTABLEKS R10 R9 K21 ["assetId"]
  LOADK R10 K25 ["#32a852"]
  SETTABLEKS R10 R9 K22 ["backgroundColor"]
  SETTABLEKS R9 R8 K17 ["thumbnail"]
  DUPTABLE R9 K18 [{"displayName", "children", "childCount", "index", "name", "path", "thumbnail"}]
  LOADK R10 K26 ["Vehicle"]
  SETTABLEKS R10 R9 K12 ["displayName"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K13 ["children"]
  LOADN R10 0
  SETTABLEKS R10 R9 K14 ["childCount"]
  LOADN R10 2
  SETTABLEKS R10 R9 K15 ["index"]
  LOADK R10 K27 ["2"]
  SETTABLEKS R10 R9 K9 ["name"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K16 ["path"]
  DUPTABLE R10 K23 [{"assetId", "backgroundColor"}]
  LOADK R11 K24 [5657301130]
  SETTABLEKS R11 R10 K21 ["assetId"]
  LOADK R11 K25 ["#32a852"]
  SETTABLEKS R11 R10 K22 ["backgroundColor"]
  SETTABLEKS R10 R9 K17 ["thumbnail"]
  DUPTABLE R10 K18 [{"displayName", "children", "childCount", "index", "name", "path", "thumbnail"}]
  LOADK R11 K28 ["3rd"]
  SETTABLEKS R11 R10 K12 ["displayName"]
  NEWTABLE R11 0 0
  SETTABLEKS R11 R10 K13 ["children"]
  LOADN R11 0
  SETTABLEKS R11 R10 K14 ["childCount"]
  LOADN R11 3
  SETTABLEKS R11 R10 K15 ["index"]
  LOADK R11 K29 ["3"]
  SETTABLEKS R11 R10 K9 ["name"]
  NEWTABLE R11 0 0
  SETTABLEKS R11 R10 K16 ["path"]
  DUPTABLE R11 K23 [{"assetId", "backgroundColor"}]
  LOADK R12 K24 [5657301130]
  SETTABLEKS R12 R11 K21 ["assetId"]
  LOADK R12 K25 ["#32a852"]
  SETTABLEKS R12 R11 K22 ["backgroundColor"]
  SETTABLEKS R11 R10 K17 ["thumbnail"]
  DUPTABLE R11 K18 [{"displayName", "children", "childCount", "index", "name", "path", "thumbnail"}]
  LOADK R12 K30 ["4"]
  SETTABLEKS R12 R11 K12 ["displayName"]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K13 ["children"]
  LOADN R12 0
  SETTABLEKS R12 R11 K14 ["childCount"]
  LOADN R12 3
  SETTABLEKS R12 R11 K15 ["index"]
  LOADK R12 K30 ["4"]
  SETTABLEKS R12 R11 K9 ["name"]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K16 ["path"]
  DUPTABLE R12 K23 [{"assetId", "backgroundColor"}]
  LOADK R13 K24 [5657301130]
  SETTABLEKS R13 R12 K21 ["assetId"]
  LOADK R13 K25 ["#32a852"]
  SETTABLEKS R13 R12 K22 ["backgroundColor"]
  SETTABLEKS R12 R11 K17 ["thumbnail"]
  DUPTABLE R12 K31 [{"displayName", "children", "childCount", "name", "index", "path", "thumbnail"}]
  LOADK R13 K32 ["5"]
  SETTABLEKS R13 R12 K12 ["displayName"]
  NEWTABLE R13 0 0
  SETTABLEKS R13 R12 K13 ["children"]
  LOADN R13 0
  SETTABLEKS R13 R12 K14 ["childCount"]
  LOADK R13 K32 ["5"]
  SETTABLEKS R13 R12 K9 ["name"]
  LOADN R13 3
  SETTABLEKS R13 R12 K15 ["index"]
  NEWTABLE R13 0 0
  SETTABLEKS R13 R12 K16 ["path"]
  DUPTABLE R13 K23 [{"assetId", "backgroundColor"}]
  LOADK R14 K24 [5657301130]
  SETTABLEKS R14 R13 K21 ["assetId"]
  LOADK R14 K25 ["#32a852"]
  SETTABLEKS R14 R13 K22 ["backgroundColor"]
  SETTABLEKS R13 R12 K17 ["thumbnail"]
  SETLIST R7 R8 5 [1]
  SETTABLEKS R7 R6 K6 ["SubcategoryDict"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K1 ["SubcategoriesSwimlaneView"]
  CALL R0 3 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Core"]
  GETTABLEKS R4 R5 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["MockWrapper"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Core"]
  GETTABLEKS R5 R6 K11 ["Types"]
  GETTABLEKS R4 R5 K12 ["Category"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K13 ["Parent"]
  GETTABLEKS R5 R6 K14 ["SubcategoriesSwimlaneView"]
  CALL R4 1 1
  DUPTABLE R5 K17 [{"summary", "story"}]
  LOADK R6 K18 ["A grid of Subcategory IconTiles with flexible widths."]
  SETTABLEKS R6 R5 K15 ["summary"]
  DUPCLOSURE R6 K19 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R3
  SETTABLEKS R6 R5 K16 ["story"]
  RETURN R5 1
