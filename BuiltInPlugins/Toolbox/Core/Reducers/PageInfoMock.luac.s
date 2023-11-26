PROTO_0:
  DUPTABLE R2 K14 [{"categories", "category", "categoryName", "searchTerm", "sorts", "sortIndex", "sortType", "groups", "groupIndex", "groupId", "targetPage", "curentPage", "selectedBackgroundIndex", "hoveredBackgroundIndex"}]
  GETUPVAL R3 0
  SETTABLEKS R3 R2 K0 ["categories"]
  GETUPVAL R5 0
  GETTABLEN R4 R5 1
  GETTABLEKS R3 R4 K1 ["category"]
  SETTABLEKS R3 R2 K1 ["category"]
  GETUPVAL R5 0
  GETTABLEN R4 R5 1
  GETTABLEKS R3 R4 K15 ["name"]
  SETTABLEKS R3 R2 K2 ["categoryName"]
  LOADK R3 K16 [""]
  SETTABLEKS R3 R2 K3 ["searchTerm"]
  GETUPVAL R3 1
  SETTABLEKS R3 R2 K4 ["sorts"]
  LOADN R3 1
  SETTABLEKS R3 R2 K5 ["sortIndex"]
  GETUPVAL R5 1
  GETTABLEN R4 R5 1
  GETTABLEKS R3 R4 K17 ["sort"]
  SETTABLEKS R3 R2 K6 ["sortType"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K7 ["groups"]
  LOADN R3 0
  SETTABLEKS R3 R2 K8 ["groupIndex"]
  LOADN R3 0
  SETTABLEKS R3 R2 K9 ["groupId"]
  LOADN R3 1
  SETTABLEKS R3 R2 K10 ["targetPage"]
  LOADN R3 0
  SETTABLEKS R3 R2 K11 ["curentPage"]
  LOADN R3 1
  SETTABLEKS R3 R2 K12 ["selectedBackgroundIndex"]
  LOADN R3 0
  SETTABLEKS R3 R2 K13 ["hoveredBackgroundIndex"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Core"]
  GETTABLEKS R3 R4 K6 ["Types"]
  GETTABLEKS R2 R3 K7 ["Category"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K5 ["Core"]
  GETTABLEKS R4 R5 K6 ["Types"]
  GETTABLEKS R3 R4 K8 ["Sort"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["SORT_OPTIONS"]
  GETTABLEKS R4 R1 K10 ["MARKETPLACE"]
  DUPCLOSURE R5 K11 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R3
  RETURN R5 1
