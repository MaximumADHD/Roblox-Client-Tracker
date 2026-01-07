MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Components"]
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K3 ["Lists"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["ScrollView"]
  GETTABLEKS R3 R4 K6 ["ScrollView"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R1 K7 ["VirtualizedList"]
  CALL R3 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R1 K8 ["SectionList"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K9 ["default"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R1 K10 ["FlatList"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R1 K11 ["BidirectionalFlatList"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K11 ["BidirectionalFlatList"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R0 K12 ["View"]
  GETTABLEKS R9 R10 K12 ["View"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R1 K13 ["ViewabilityHelper"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R11 R1 K14 ["Hooks"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R12 R1 K15 ["AnimatedFlatList"]
  CALL R11 1 1
  DUPTABLE R12 K16 [{"ScrollView", "VirtualizedList", "SectionList", "FlatList", "BidirectionalFlatList", "View", "AnimatedFlatList", "Hooks"}]
  SETTABLEKS R2 R12 K6 ["ScrollView"]
  SETTABLEKS R3 R12 K7 ["VirtualizedList"]
  SETTABLEKS R4 R12 K8 ["SectionList"]
  SETTABLEKS R5 R12 K10 ["FlatList"]
  SETTABLEKS R7 R12 K11 ["BidirectionalFlatList"]
  SETTABLEKS R8 R12 K12 ["View"]
  SETTABLEKS R11 R12 K15 ["AnimatedFlatList"]
  SETTABLEKS R10 R12 K14 ["Hooks"]
  RETURN R12 1
