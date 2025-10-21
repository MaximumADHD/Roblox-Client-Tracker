MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["LuauPolyfill"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K6 ["Object"]
  NEWTABLE R3 0 0
  GETIMPORT R5 K4 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K7 ["get-queries-for-element"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K8 ["getQueriesForElement"]
  GETIMPORT R5 K4 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K9 ["queries"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETIMPORT R8 K1 [script]
  GETTABLEKS R7 R8 K10 ["query-helpers"]
  CALL R6 1 1
  GETTABLEKS R7 R2 K11 ["assign"]
  MOVE R8 R3
  GETIMPORT R9 K4 [require]
  GETIMPORT R11 K1 [script]
  GETTABLEKS R10 R11 K9 ["queries"]
  CALL R9 1 -1
  CALL R7 -1 0
  GETTABLEKS R7 R2 K11 ["assign"]
  MOVE R8 R3
  GETIMPORT R9 K4 [require]
  GETIMPORT R11 K1 [script]
  GETTABLEKS R10 R11 K12 ["wait-for"]
  CALL R9 1 -1
  CALL R7 -1 0
  GETTABLEKS R7 R2 K11 ["assign"]
  MOVE R8 R3
  GETIMPORT R9 K4 [require]
  GETIMPORT R11 K1 [script]
  GETTABLEKS R10 R11 K13 ["wait-for-element-to-be-removed"]
  CALL R9 1 -1
  CALL R7 -1 0
  GETIMPORT R8 K4 [require]
  GETIMPORT R10 K1 [script]
  GETTABLEKS R9 R10 K14 ["matches"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K15 ["getDefaultNormalizer"]
  SETTABLEKS R7 R3 K15 ["getDefaultNormalizer"]
  GETTABLEKS R7 R2 K11 ["assign"]
  MOVE R8 R3
  GETIMPORT R9 K4 [require]
  GETIMPORT R11 K1 [script]
  GETTABLEKS R10 R11 K16 ["get-node-text"]
  CALL R9 1 -1
  CALL R7 -1 0
  GETTABLEKS R7 R2 K11 ["assign"]
  MOVE R8 R3
  GETIMPORT R9 K4 [require]
  GETIMPORT R11 K1 [script]
  GETTABLEKS R10 R11 K17 ["events"]
  CALL R9 1 -1
  CALL R7 -1 0
  GETTABLEKS R7 R2 K11 ["assign"]
  MOVE R8 R3
  GETIMPORT R9 K4 [require]
  GETIMPORT R11 K1 [script]
  GETTABLEKS R10 R11 K7 ["get-queries-for-element"]
  CALL R9 1 -1
  CALL R7 -1 0
  GETTABLEKS R7 R2 K11 ["assign"]
  MOVE R8 R3
  GETIMPORT R9 K4 [require]
  GETIMPORT R11 K1 [script]
  GETTABLEKS R10 R11 K18 ["screen"]
  CALL R9 1 -1
  CALL R7 -1 0
  GETTABLEKS R7 R2 K11 ["assign"]
  MOVE R8 R3
  GETIMPORT R9 K4 [require]
  GETIMPORT R11 K1 [script]
  GETTABLEKS R10 R11 K10 ["query-helpers"]
  CALL R9 1 -1
  CALL R7 -1 0
  GETTABLEKS R7 R2 K11 ["assign"]
  MOVE R8 R3
  GETIMPORT R9 K4 [require]
  GETIMPORT R11 K1 [script]
  GETTABLEKS R10 R11 K19 ["pretty-dom"]
  CALL R9 1 -1
  CALL R7 -1 0
  GETIMPORT R7 K4 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K20 ["config"]
  CALL R7 1 1
  GETTABLEKS R8 R7 K21 ["configure"]
  SETTABLEKS R8 R3 K21 ["configure"]
  GETTABLEKS R8 R7 K22 ["getConfig"]
  SETTABLEKS R8 R3 K22 ["getConfig"]
  GETTABLEKS R8 R2 K11 ["assign"]
  MOVE R9 R3
  GETIMPORT R10 K4 [require]
  GETIMPORT R12 K1 [script]
  GETTABLEKS R11 R12 K23 ["suggestions"]
  CALL R10 1 -1
  CALL R8 -1 0
  SETTABLEKS R4 R3 K24 ["within"]
  SETTABLEKS R5 R3 K9 ["queries"]
  SETTABLEKS R6 R3 K25 ["queryHelpers"]
  GETIMPORT R8 K4 [require]
  GETIMPORT R11 K1 [script]
  GETTABLEKS R10 R11 K26 ["jsHelpers"]
  GETTABLEKS R9 R10 K27 ["document"]
  CALL R8 1 1
  SETTABLEKS R8 R3 K27 ["document"]
  GETIMPORT R8 K4 [require]
  GETIMPORT R10 K1 [script]
  GETTABLEKS R9 R10 K28 ["types"]
  CALL R8 1 1
  RETURN R3 1
