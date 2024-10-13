PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["pluginGui"]
  GETTABLEKS R3 R1 K2 ["networkInterface"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["createElement"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K4 ["ContextStack"]
  DUPTABLE R6 K6 [{"providers"}]
  NEWTABLE R7 0 1
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K7 ["SceneAnalysisProvider"]
  DUPTABLE R10 K11 [{"pollingSeconds", "rangeQueryOptions", "viewportQueryOptions"}]
  GETUPVAL R12 3
  CALL R12 0 1
  JUMPIFNOT R12 [+2]
  LOADNIL R11
  JUMP [+1]
  GETUPVAL R11 4
  SETTABLEKS R11 R10 K8 ["pollingSeconds"]
  DUPTABLE R11 K14 [{"limit", "maxDistance"}]
  GETUPVAL R12 5
  SETTABLEKS R12 R11 K12 ["limit"]
  GETUPVAL R12 6
  SETTABLEKS R12 R11 K13 ["maxDistance"]
  SETTABLEKS R11 R10 K9 ["rangeQueryOptions"]
  DUPTABLE R11 K16 [{"limit", "maxDistance", "maxScreenDivisions"}]
  GETUPVAL R12 5
  SETTABLEKS R12 R11 K12 ["limit"]
  GETUPVAL R12 7
  SETTABLEKS R12 R11 K13 ["maxDistance"]
  GETUPVAL R12 8
  SETTABLEKS R12 R11 K15 ["maxScreenDivisions"]
  SETTABLEKS R11 R10 K10 ["viewportQueryOptions"]
  CALL R8 2 -1
  SETLIST R7 R8 -1 [1]
  SETTABLEKS R7 R6 K5 ["providers"]
  GETUPVAL R8 9
  GETTABLEKS R7 R8 K17 ["provide"]
  NEWTABLE R8 0 2
  GETUPVAL R10 10
  GETTABLEKS R9 R10 K18 ["new"]
  MOVE R10 R2
  CALL R9 1 1
  GETUPVAL R11 11
  GETTABLEKS R10 R11 K18 ["new"]
  MOVE R11 R3
  CALL R10 1 -1
  SETLIST R8 R9 -1 [1]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K19 ["Children"]
  GETTABLE R9 R1 R10
  CALL R7 2 -1
  CALL R4 -1 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R1 K7 ["ReactUtils"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R1 K8 ["ReactSceneUnderstanding"]
  CALL R4 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R1 K9 ["Framework"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K10 ["ContextServices"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K11 ["Core"]
  GETTABLEKS R8 R9 K10 ["ContextServices"]
  GETTABLEKS R7 R8 K12 ["ModalContext"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K11 ["Core"]
  GETTABLEKS R9 R10 K10 ["ContextServices"]
  GETTABLEKS R8 R9 K13 ["NetworkContext"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K11 ["Core"]
  GETTABLEKS R10 R11 K14 ["Flags"]
  GETTABLEKS R9 R10 K15 ["getFFlagToolboxThrottleContextualRecommendationRequests"]
  CALL R8 1 1
  GETTABLEKS R9 R2 K16 ["Component"]
  LOADK R11 K17 ["ExternalServicesWrapper"]
  NAMECALL R9 R9 K18 ["extend"]
  CALL R9 2 1
  GETIMPORT R10 K20 [game]
  LOADK R12 K21 ["ToolboxSceneAnalysisPollingSeconds"]
  NAMECALL R10 R10 K22 ["GetFastInt"]
  CALL R10 2 1
  GETIMPORT R11 K20 [game]
  LOADK R13 K23 ["ToolboxSceneAnalysisViewportMaxScreenDivisions"]
  NAMECALL R11 R11 K22 ["GetFastInt"]
  CALL R11 2 1
  GETIMPORT R12 K20 [game]
  LOADK R14 K24 ["ToolboxSceneAnalysisViewportMaxDistance"]
  NAMECALL R12 R12 K22 ["GetFastInt"]
  CALL R12 2 1
  GETIMPORT R13 K20 [game]
  LOADK R15 K25 ["ToolboxSceneAnalysisRangeMaxDistance"]
  NAMECALL R13 R13 K22 ["GetFastInt"]
  CALL R13 2 1
  GETIMPORT R14 K20 [game]
  LOADK R16 K26 ["ToolboxSceneAnalysisAssetLimit"]
  NAMECALL R14 R14 K22 ["GetFastInt"]
  CALL R14 2 1
  DUPCLOSURE R15 K27 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R14
  CAPTURE VAL R13
  CAPTURE VAL R12
  CAPTURE VAL R11
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R7
  SETTABLEKS R15 R9 K28 ["render"]
  RETURN R9 1
