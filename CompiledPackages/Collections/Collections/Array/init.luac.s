MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["ES7Types"]
  CALL R1 1 1
  DUPTABLE R2 K28 [{"concat", "every", "filter", "find", "findIndex", "flat", "flatMap", "forEach", "from", "includes", "indexOf", "isArray", "join", "map", "reduce", "reverse", "shift", "slice", "some", "sort", "splice", "unshift"}]
  GETIMPORT R3 K4 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K6 ["concat"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K6 ["concat"]
  GETIMPORT R3 K4 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K7 ["every"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K7 ["every"]
  GETIMPORT R3 K4 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K8 ["filter"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K8 ["filter"]
  GETIMPORT R3 K4 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K9 ["find"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K9 ["find"]
  GETIMPORT R3 K4 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K10 ["findIndex"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K10 ["findIndex"]
  GETIMPORT R3 K4 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K11 ["flat"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K11 ["flat"]
  GETIMPORT R3 K4 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K12 ["flatMap"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K12 ["flatMap"]
  GETIMPORT R3 K4 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K13 ["forEach"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K13 ["forEach"]
  GETIMPORT R3 K4 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K14 ["from"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K14 ["from"]
  GETIMPORT R3 K4 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K15 ["includes"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K15 ["includes"]
  GETIMPORT R3 K4 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K16 ["indexOf"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K16 ["indexOf"]
  GETIMPORT R3 K4 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K17 ["isArray"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K17 ["isArray"]
  GETIMPORT R3 K4 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K18 ["join"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K18 ["join"]
  GETIMPORT R3 K4 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K19 ["map"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K19 ["map"]
  GETIMPORT R3 K4 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K20 ["reduce"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K20 ["reduce"]
  GETIMPORT R3 K4 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K21 ["reverse"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K21 ["reverse"]
  GETIMPORT R3 K4 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K22 ["shift"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K22 ["shift"]
  GETIMPORT R3 K4 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K23 ["slice"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K23 ["slice"]
  GETIMPORT R3 K4 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K24 ["some"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K24 ["some"]
  GETIMPORT R3 K4 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K25 ["sort"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K25 ["sort"]
  GETIMPORT R3 K4 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K26 ["splice"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K26 ["splice"]
  GETIMPORT R3 K4 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K27 ["unshift"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K27 ["unshift"]
  RETURN R2 1
