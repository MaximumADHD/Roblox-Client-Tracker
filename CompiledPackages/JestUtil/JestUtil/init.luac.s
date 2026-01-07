MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["LuauPolyfill"]
  CALL R0 1 1
  GETTABLEKS R1 R0 K6 ["Object"]
  NEWTABLE R2 32 0
  GETIMPORT R4 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K7 ["clearLine"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K8 ["default"]
  SETTABLEKS R3 R2 K7 ["clearLine"]
  GETIMPORT R4 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K9 ["createDirectory"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K8 ["default"]
  SETTABLEKS R3 R2 K9 ["createDirectory"]
  GETIMPORT R3 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K10 ["ErrorWithStack"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K8 ["default"]
  SETTABLEKS R4 R2 K10 ["ErrorWithStack"]
  GETIMPORT R5 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K11 ["installCommonGlobals"]
  CALL R5 1 1
  CALL R5 0 1
  GETTABLEKS R4 R5 K8 ["default"]
  SETTABLEKS R4 R2 K11 ["installCommonGlobals"]
  GETIMPORT R5 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K12 ["isInteractive"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K8 ["default"]
  SETTABLEKS R4 R2 K12 ["isInteractive"]
  GETIMPORT R5 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K13 ["isPromise"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K8 ["default"]
  SETTABLEKS R4 R2 K13 ["isPromise"]
  GETIMPORT R5 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K14 ["setGlobal"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K8 ["default"]
  SETTABLEKS R4 R2 K14 ["setGlobal"]
  GETIMPORT R5 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K15 ["deepCyclicCopy"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K8 ["default"]
  SETTABLEKS R4 R2 K15 ["deepCyclicCopy"]
  GETIMPORT R5 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K16 ["convertDescriptorToString"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K8 ["default"]
  SETTABLEKS R4 R2 K16 ["convertDescriptorToString"]
  GETIMPORT R4 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K17 ["specialChars"]
  CALL R4 1 1
  GETTABLEKS R5 R1 K18 ["assign"]
  MOVE R6 R2
  MOVE R7 R4
  CALL R5 2 0
  GETTABLEKS R5 R4 K19 ["ARROW"]
  SETTABLEKS R5 R2 K19 ["ARROW"]
  GETTABLEKS R5 R4 K20 ["ICONS"]
  SETTABLEKS R5 R2 K20 ["ICONS"]
  GETTABLEKS R5 R4 K21 ["CLEAR"]
  SETTABLEKS R5 R2 K21 ["CLEAR"]
  GETIMPORT R6 K1 [require]
  GETIMPORT R8 K3 [script]
  GETTABLEKS R7 R8 K22 ["globsToMatcher"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K8 ["default"]
  SETTABLEKS R5 R2 K22 ["globsToMatcher"]
  GETIMPORT R5 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K23 ["preRunMessage"]
  CALL R5 1 1
  GETTABLEKS R6 R1 K18 ["assign"]
  MOVE R7 R2
  MOVE R8 R5
  CALL R6 2 0
  GETTABLEKS R6 R5 K24 ["print"]
  SETTABLEKS R6 R2 K24 ["print"]
  GETTABLEKS R6 R5 K25 ["remove"]
  SETTABLEKS R6 R2 K25 ["remove"]
  GETIMPORT R7 K1 [require]
  GETIMPORT R9 K3 [script]
  GETTABLEKS R8 R9 K26 ["pluralize"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K8 ["default"]
  SETTABLEKS R6 R2 K26 ["pluralize"]
  GETIMPORT R7 K1 [require]
  GETIMPORT R9 K3 [script]
  GETTABLEKS R8 R9 K27 ["formatTime"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K8 ["default"]
  SETTABLEKS R6 R2 K27 ["formatTime"]
  RETURN R2 1
