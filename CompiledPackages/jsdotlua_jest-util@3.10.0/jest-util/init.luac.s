MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["Parent"]
  LOADK R3 K5 ["luau-polyfill"]
  NAMECALL R1 R1 K6 ["WaitForChild"]
  CALL R1 2 -1
  CALL R0 -1 1
  GETTABLEKS R1 R0 K7 ["Object"]
  NEWTABLE R2 32 0
  GETIMPORT R4 K1 [require]
  GETIMPORT R5 K3 [script]
  LOADK R7 K8 ["clearLine"]
  NAMECALL R5 R5 K6 ["WaitForChild"]
  CALL R5 2 -1
  CALL R4 -1 1
  GETTABLEKS R3 R4 K9 ["default"]
  SETTABLEKS R3 R2 K8 ["clearLine"]
  GETIMPORT R4 K1 [require]
  GETIMPORT R5 K3 [script]
  LOADK R7 K10 ["createDirectory"]
  NAMECALL R5 R5 K6 ["WaitForChild"]
  CALL R5 2 -1
  CALL R4 -1 1
  GETTABLEKS R3 R4 K9 ["default"]
  SETTABLEKS R3 R2 K10 ["createDirectory"]
  GETIMPORT R3 K1 [require]
  GETIMPORT R4 K3 [script]
  LOADK R6 K11 ["ErrorWithStack"]
  NAMECALL R4 R4 K6 ["WaitForChild"]
  CALL R4 2 -1
  CALL R3 -1 1
  GETTABLEKS R4 R3 K9 ["default"]
  SETTABLEKS R4 R2 K11 ["ErrorWithStack"]
  GETIMPORT R5 K1 [require]
  GETIMPORT R6 K3 [script]
  LOADK R8 K12 ["installCommonGlobals"]
  NAMECALL R6 R6 K6 ["WaitForChild"]
  CALL R6 2 -1
  CALL R5 -1 1
  CALL R5 0 1
  GETTABLEKS R4 R5 K9 ["default"]
  SETTABLEKS R4 R2 K12 ["installCommonGlobals"]
  GETIMPORT R5 K1 [require]
  GETIMPORT R6 K3 [script]
  LOADK R8 K13 ["isInteractive"]
  NAMECALL R6 R6 K6 ["WaitForChild"]
  CALL R6 2 -1
  CALL R5 -1 1
  GETTABLEKS R4 R5 K9 ["default"]
  SETTABLEKS R4 R2 K13 ["isInteractive"]
  GETIMPORT R5 K1 [require]
  GETIMPORT R6 K3 [script]
  LOADK R8 K14 ["isPromise"]
  NAMECALL R6 R6 K6 ["WaitForChild"]
  CALL R6 2 -1
  CALL R5 -1 1
  GETTABLEKS R4 R5 K9 ["default"]
  SETTABLEKS R4 R2 K14 ["isPromise"]
  GETIMPORT R5 K1 [require]
  GETIMPORT R6 K3 [script]
  LOADK R8 K15 ["setGlobal"]
  NAMECALL R6 R6 K6 ["WaitForChild"]
  CALL R6 2 -1
  CALL R5 -1 1
  GETTABLEKS R4 R5 K9 ["default"]
  SETTABLEKS R4 R2 K15 ["setGlobal"]
  GETIMPORT R5 K1 [require]
  GETIMPORT R6 K3 [script]
  LOADK R8 K16 ["deepCyclicCopy"]
  NAMECALL R6 R6 K6 ["WaitForChild"]
  CALL R6 2 -1
  CALL R5 -1 1
  GETTABLEKS R4 R5 K9 ["default"]
  SETTABLEKS R4 R2 K16 ["deepCyclicCopy"]
  GETIMPORT R5 K1 [require]
  GETIMPORT R6 K3 [script]
  LOADK R8 K17 ["convertDescriptorToString"]
  NAMECALL R6 R6 K6 ["WaitForChild"]
  CALL R6 2 -1
  CALL R5 -1 1
  GETTABLEKS R4 R5 K9 ["default"]
  SETTABLEKS R4 R2 K17 ["convertDescriptorToString"]
  GETIMPORT R4 K1 [require]
  GETIMPORT R5 K3 [script]
  LOADK R7 K18 ["specialChars"]
  NAMECALL R5 R5 K6 ["WaitForChild"]
  CALL R5 2 -1
  CALL R4 -1 1
  GETTABLEKS R5 R1 K19 ["assign"]
  MOVE R6 R2
  MOVE R7 R4
  CALL R5 2 0
  SETTABLEKS R4 R2 K18 ["specialChars"]
  GETTABLEKS R5 R4 K20 ["ARROW"]
  SETTABLEKS R5 R2 K20 ["ARROW"]
  GETTABLEKS R5 R4 K21 ["ICONS"]
  SETTABLEKS R5 R2 K21 ["ICONS"]
  GETTABLEKS R5 R4 K22 ["CLEAR"]
  SETTABLEKS R5 R2 K22 ["CLEAR"]
  GETIMPORT R6 K1 [require]
  GETIMPORT R7 K3 [script]
  LOADK R9 K23 ["testPathPatternToRegExp"]
  NAMECALL R7 R7 K6 ["WaitForChild"]
  CALL R7 2 -1
  CALL R6 -1 1
  GETTABLEKS R5 R6 K9 ["default"]
  SETTABLEKS R5 R2 K23 ["testPathPatternToRegExp"]
  GETIMPORT R6 K1 [require]
  GETIMPORT R7 K3 [script]
  LOADK R9 K24 ["globsToMatcher"]
  NAMECALL R7 R7 K6 ["WaitForChild"]
  CALL R7 2 -1
  CALL R6 -1 1
  GETTABLEKS R5 R6 K9 ["default"]
  SETTABLEKS R5 R2 K24 ["globsToMatcher"]
  GETIMPORT R5 K1 [require]
  GETIMPORT R6 K3 [script]
  LOADK R8 K25 ["preRunMessage"]
  NAMECALL R6 R6 K6 ["WaitForChild"]
  CALL R6 2 -1
  CALL R5 -1 1
  SETTABLEKS R5 R2 K25 ["preRunMessage"]
  GETTABLEKS R6 R5 K26 ["print"]
  SETTABLEKS R6 R2 K26 ["print"]
  GETTABLEKS R6 R5 K27 ["remove"]
  SETTABLEKS R6 R2 K27 ["remove"]
  GETIMPORT R7 K1 [require]
  GETIMPORT R8 K3 [script]
  LOADK R10 K28 ["pluralize"]
  NAMECALL R8 R8 K6 ["WaitForChild"]
  CALL R8 2 -1
  CALL R7 -1 1
  GETTABLEKS R6 R7 K9 ["default"]
  SETTABLEKS R6 R2 K28 ["pluralize"]
  GETIMPORT R7 K1 [require]
  GETIMPORT R8 K3 [script]
  LOADK R10 K29 ["formatTime"]
  NAMECALL R8 R8 K6 ["WaitForChild"]
  CALL R8 2 -1
  CALL R7 -1 1
  GETTABLEKS R6 R7 K9 ["default"]
  SETTABLEKS R6 R2 K29 ["formatTime"]
  RETURN R2 1
