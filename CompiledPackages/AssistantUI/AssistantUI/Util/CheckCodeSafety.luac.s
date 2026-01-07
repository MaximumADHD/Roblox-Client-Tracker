PROTO_0:
  JUMPIF R0 [+2]
  LOADNIL R1
  RETURN R1 1
  GETIMPORT R1 K2 [string.lower]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R2 0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETIMPORT R7 K4 [string.find]
  MOVE R8 R1
  GETTABLEKS R9 R6 K5 ["pattern"]
  CALL R7 2 1
  JUMPIFNOT R7 [+8]
  GETUPVAL R7 1
  LOADK R9 K6 ["CodeSafety"]
  GETTABLEKS R10 R6 K7 ["warningKey"]
  NAMECALL R7 R7 K8 ["getText"]
  CALL R7 3 -1
  RETURN R7 -1
  FORGLOOP R2 2 [-16]
  LOADNIL R2
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Resources"]
  GETTABLEKS R3 R4 K7 ["Localization"]
  GETTABLEKS R2 R3 K8 ["Translator"]
  CALL R1 1 1
  NEWTABLE R2 0 10
  DUPTABLE R3 K11 [{"pattern", "warningKey"}]
  LOADK R4 K12 [":destroy%("]
  SETTABLEKS R4 R3 K9 ["pattern"]
  LOADK R4 K13 ["Destroy"]
  SETTABLEKS R4 R3 K10 ["warningKey"]
  DUPTABLE R4 K11 [{"pattern", "warningKey"}]
  LOADK R5 K14 [":clearallchildren%("]
  SETTABLEKS R5 R4 K9 ["pattern"]
  LOADK R5 K15 ["ClearAllChildren"]
  SETTABLEKS R5 R4 K10 ["warningKey"]
  DUPTABLE R5 K11 [{"pattern", "warningKey"}]
  LOADK R6 K16 ["workspace%.camera.*="]
  SETTABLEKS R6 R5 K9 ["pattern"]
  LOADK R6 K17 ["Camera"]
  SETTABLEKS R6 R5 K10 ["warningKey"]
  DUPTABLE R6 K11 [{"pattern", "warningKey"}]
  LOADK R7 K18 ["workspace%.currentcamera.*="]
  SETTABLEKS R7 R6 K9 ["pattern"]
  LOADK R7 K17 ["Camera"]
  SETTABLEKS R7 R6 K10 ["warningKey"]
  DUPTABLE R7 K11 [{"pattern", "warningKey"}]
  LOADK R8 K19 ["settings"]
  SETTABLEKS R8 R7 K9 ["pattern"]
  LOADK R8 K20 ["Settings"]
  SETTABLEKS R8 R7 K10 ["warningKey"]
  DUPTABLE R8 K11 [{"pattern", "warningKey"}]
  LOADK R9 K21 ["httpservice:%w*async"]
  SETTABLEKS R9 R8 K9 ["pattern"]
  LOADK R9 K22 ["HttpService"]
  SETTABLEKS R9 R8 K10 ["warningKey"]
  DUPTABLE R9 K11 [{"pattern", "warningKey"}]
  LOADK R10 K23 ["datastoreservice"]
  SETTABLEKS R10 R9 K9 ["pattern"]
  LOADK R10 K24 ["DataStoreService"]
  SETTABLEKS R10 R9 K10 ["warningKey"]
  DUPTABLE R10 K11 [{"pattern", "warningKey"}]
  LOADK R11 K25 ["memorystoreservice"]
  SETTABLEKS R11 R10 K9 ["pattern"]
  LOADK R11 K26 ["MemoryStoreService"]
  SETTABLEKS R11 R10 K10 ["warningKey"]
  DUPTABLE R11 K11 [{"pattern", "warningKey"}]
  LOADK R12 K27 ["messagingservice"]
  SETTABLEKS R12 R11 K9 ["pattern"]
  LOADK R12 K28 ["MessagingService"]
  SETTABLEKS R12 R11 K10 ["warningKey"]
  DUPTABLE R12 K11 [{"pattern", "warningKey"}]
  LOADK R13 K29 ["analyticsservice"]
  SETTABLEKS R13 R12 K9 ["pattern"]
  LOADK R13 K30 ["AnalyticsService"]
  SETTABLEKS R13 R12 K10 ["warningKey"]
  SETLIST R2 R3 10 [1]
  DUPCLOSURE R3 K31 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R1
  RETURN R3 1
