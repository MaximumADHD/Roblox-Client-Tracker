PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["create"]
  LOADN R1 0
  CALL R0 1 2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["create"]
  LOADN R3 0
  CALL R2 1 2
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["create"]
  LOADN R5 0
  CALL R4 1 2
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["create"]
  NEWTABLE R7 0 0
  CALL R6 1 2
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["create"]
  LOADNIL R9
  CALL R8 1 2
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K0 ["create"]
  LOADNIL R11
  CALL R10 1 2
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K0 ["create"]
  LOADNIL R13
  CALL R12 1 2
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K0 ["create"]
  LOADN R15 1
  CALL R14 1 2
  DUPTABLE R16 K9 [{"totalNumElementsObservable", "totalNumScriptsObservable", "totalNumResultsObservable", "resultsByPageObservable", "collapsedFilesObservable", "hoveredObservable", "selectedIdObservable", "firstVisibleIndexObservable"}]
  SETTABLEKS R0 R16 K1 ["totalNumElementsObservable"]
  SETTABLEKS R4 R16 K2 ["totalNumScriptsObservable"]
  SETTABLEKS R2 R16 K3 ["totalNumResultsObservable"]
  SETTABLEKS R6 R16 K4 ["resultsByPageObservable"]
  SETTABLEKS R8 R16 K5 ["collapsedFilesObservable"]
  SETTABLEKS R10 R16 K6 ["hoveredObservable"]
  SETTABLEKS R12 R16 K7 ["selectedIdObservable"]
  SETTABLEKS R14 R16 K8 ["firstVisibleIndexObservable"]
  RETURN R16 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["FindReplaceAll"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["Observable"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  DUPCLOSURE R3 K10 [PROTO_0]
  CAPTURE VAL R1
  RETURN R3 1
