PROTO_0:
  GETUPVAL R3 0
  FASTCALL2K ASSERT R3 K0 [+4]
  LOADK R4 K0 ["expected FFlagLocalizedLocalizationToolsErrors to be true"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  NEWTABLE R2 0 4
  DUPTABLE R3 K6 [{"pattern", "key", "numArguments"}]
  LOADK R4 K7 ["^Error reading (.-): Missing a Key or Source header column.$"]
  SETTABLEKS R4 R3 K3 ["pattern"]
  LOADK R4 K8 ["MissingKeyOrSource"]
  SETTABLEKS R4 R3 K4 ["key"]
  LOADN R4 1
  SETTABLEKS R4 R3 K5 ["numArguments"]
  DUPTABLE R4 K6 [{"pattern", "key", "numArguments"}]
  LOADK R5 K9 ["^.+%s(.+)%s?: Missing a Key or Source header column.%s?.*$"]
  SETTABLEKS R5 R4 K3 ["pattern"]
  LOADK R5 K8 ["MissingKeyOrSource"]
  SETTABLEKS R5 R4 K4 ["key"]
  LOADN R5 1
  SETTABLEKS R5 R4 K5 ["numArguments"]
  DUPTABLE R5 K6 [{"pattern", "key", "numArguments"}]
  LOADK R6 K10 ["^.+%s(.+)%s?: Error opening CSV .-: Invalid UTF%-8. File must be UTF%-8 encoded.%s?.*$"]
  SETTABLEKS R6 R5 K3 ["pattern"]
  LOADK R6 K11 ["NonUtf8"]
  SETTABLEKS R6 R5 K4 ["key"]
  LOADN R6 1
  SETTABLEKS R6 R5 K5 ["numArguments"]
  DUPTABLE R6 K6 [{"pattern", "key", "numArguments"}]
  LOADK R7 K12 ["^Error opening CSV (.-): Invalid UTF%-8. File must be UTF%-8 encoded.$"]
  SETTABLEKS R7 R6 K3 ["pattern"]
  LOADK R7 K11 ["NonUtf8"]
  SETTABLEKS R7 R6 K4 ["key"]
  LOADN R7 1
  SETTABLEKS R7 R6 K5 ["numArguments"]
  SETLIST R2 R3 4 [1]
  MOVE R3 R2
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETGLOBAL R8 K13 ["matchPatternToMessage"]
  MOVE R9 R0
  MOVE R10 R7
  MOVE R11 R1
  CALL R8 3 2
  JUMPIFNOT R8 [+1]
  RETURN R9 1
  FORGLOOP R3 2 [-9]
  RETURN R0 1

PROTO_1:
  NEWTABLE R3 0 1
  GETIMPORT R4 K2 [string.match]
  MOVE R5 R0
  GETTABLEKS R6 R1 K3 ["pattern"]
  CALL R4 2 -1
  SETLIST R3 R4 -1 [1]
  LOADNIL R4
  LENGTH R6 R3
  GETTABLEKS R7 R1 K4 ["numArguments"]
  JUMPIFEQ R6 R7 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  JUMPIFNOT R5 [+8]
  LOADK R8 K5 ["EngineErrors"]
  GETTABLEKS R9 R1 K6 ["key"]
  MOVE R10 R3
  NAMECALL R6 R2 K7 ["getText"]
  CALL R6 4 1
  MOVE R4 R6
  MOVE R6 R5
  MOVE R7 R4
  RETURN R6 2

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["EnableLocalizedLocalizationToolsErrorsApi"]
  NAMECALL R0 R0 K3 ["GetEngineFeature"]
  CALL R0 2 1
  DUPCLOSURE R1 K4 [PROTO_0]
  CAPTURE VAL R0
  DUPCLOSURE R2 K5 [PROTO_1]
  SETGLOBAL R2 K6 ["matchPatternToMessage"]
  DUPTABLE R2 K8 [{"getTranslationForEngineError"}]
  SETTABLEKS R1 R2 K7 ["getTranslationForEngineError"]
  RETURN R2 1
