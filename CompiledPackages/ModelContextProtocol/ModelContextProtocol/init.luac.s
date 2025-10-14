MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  GETIMPORT R1 K3 [require]
  GETTABLEKS R2 R0 K4 ["Client"]
  CALL R1 1 1
  GETIMPORT R2 K3 [require]
  GETTABLEKS R3 R0 K5 ["EventStreamParser"]
  CALL R2 1 1
  GETIMPORT R3 K3 [require]
  GETTABLEKS R4 R0 K6 ["MultiplexedClient"]
  CALL R3 1 1
  GETIMPORT R4 K3 [require]
  GETTABLEKS R5 R0 K7 ["PeerTransport"]
  CALL R4 1 1
  GETIMPORT R5 K3 [require]
  GETTABLEKS R7 R0 K8 ["Parent"]
  GETTABLEKS R6 R7 K9 ["Promise"]
  CALL R5 1 1
  GETIMPORT R6 K3 [require]
  GETTABLEKS R7 R0 K10 ["Protocol"]
  CALL R6 1 1
  GETIMPORT R7 K3 [require]
  GETTABLEKS R8 R0 K11 ["Server"]
  CALL R7 1 1
  GETIMPORT R8 K3 [require]
  GETTABLEKS R9 R0 K12 ["ServerRegistry"]
  CALL R8 1 1
  GETIMPORT R9 K3 [require]
  GETTABLEKS R10 R0 K13 ["StreamableHttpClient"]
  CALL R9 1 1
  GETIMPORT R10 K3 [require]
  GETTABLEKS R11 R0 K14 ["ToolRegistry"]
  CALL R10 1 1
  GETIMPORT R11 K3 [require]
  GETTABLEKS R12 R0 K15 ["Types"]
  CALL R11 1 1
  GETIMPORT R12 K3 [require]
  GETTABLEKS R13 R0 K16 ["Util"]
  CALL R12 1 1
  DUPTABLE R13 K17 [{"Client", "EventStreamParser", "MultiplexedClient", "PeerTransport", "Promise", "Protocol", "Server", "ServerRegistry", "StreamableHttpClient", "ToolRegistry", "Types", "Util"}]
  SETTABLEKS R1 R13 K4 ["Client"]
  SETTABLEKS R2 R13 K5 ["EventStreamParser"]
  SETTABLEKS R3 R13 K6 ["MultiplexedClient"]
  SETTABLEKS R4 R13 K7 ["PeerTransport"]
  SETTABLEKS R5 R13 K9 ["Promise"]
  SETTABLEKS R6 R13 K10 ["Protocol"]
  SETTABLEKS R7 R13 K11 ["Server"]
  SETTABLEKS R8 R13 K12 ["ServerRegistry"]
  SETTABLEKS R9 R13 K13 ["StreamableHttpClient"]
  SETTABLEKS R10 R13 K14 ["ToolRegistry"]
  SETTABLEKS R11 R13 K15 ["Types"]
  SETTABLEKS R12 R13 K16 ["Util"]
  RETURN R13 1
