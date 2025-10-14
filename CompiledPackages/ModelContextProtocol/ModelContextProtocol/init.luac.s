MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  GETIMPORT R1 K3 [require]
  GETTABLEKS R2 R0 K4 ["Client"]
  CALL R1 1 1
  GETIMPORT R2 K3 [require]
  GETTABLEKS R3 R0 K5 ["ClientConnectionStatus"]
  CALL R2 1 1
  GETIMPORT R3 K3 [require]
  GETTABLEKS R4 R0 K6 ["EventStreamParser"]
  CALL R3 1 1
  GETIMPORT R4 K3 [require]
  GETTABLEKS R5 R0 K7 ["MultiplexedClient"]
  CALL R4 1 1
  GETIMPORT R5 K3 [require]
  GETTABLEKS R6 R0 K8 ["PeerTransport"]
  CALL R5 1 1
  GETIMPORT R6 K3 [require]
  GETTABLEKS R8 R0 K9 ["Parent"]
  GETTABLEKS R7 R8 K10 ["Promise"]
  CALL R6 1 1
  GETIMPORT R7 K3 [require]
  GETTABLEKS R8 R0 K11 ["Protocol"]
  CALL R7 1 1
  GETIMPORT R8 K3 [require]
  GETTABLEKS R9 R0 K12 ["Server"]
  CALL R8 1 1
  GETIMPORT R9 K3 [require]
  GETTABLEKS R10 R0 K13 ["ServerRegistry"]
  CALL R9 1 1
  GETIMPORT R10 K3 [require]
  GETTABLEKS R11 R0 K14 ["StreamableHttpClient"]
  CALL R10 1 1
  GETIMPORT R11 K3 [require]
  GETTABLEKS R12 R0 K15 ["ToolRegistry"]
  CALL R11 1 1
  GETIMPORT R12 K3 [require]
  GETTABLEKS R13 R0 K16 ["Types"]
  CALL R12 1 1
  GETIMPORT R13 K3 [require]
  GETTABLEKS R14 R0 K17 ["Util"]
  CALL R13 1 1
  DUPTABLE R14 K18 [{"Client", "ClientConnectionStatus", "EventStreamParser", "MultiplexedClient", "PeerTransport", "Promise", "Protocol", "Server", "ServerRegistry", "StreamableHttpClient", "ToolRegistry", "Types", "Util"}]
  SETTABLEKS R1 R14 K4 ["Client"]
  SETTABLEKS R2 R14 K5 ["ClientConnectionStatus"]
  SETTABLEKS R3 R14 K6 ["EventStreamParser"]
  SETTABLEKS R4 R14 K7 ["MultiplexedClient"]
  SETTABLEKS R5 R14 K8 ["PeerTransport"]
  SETTABLEKS R6 R14 K10 ["Promise"]
  SETTABLEKS R7 R14 K11 ["Protocol"]
  SETTABLEKS R8 R14 K12 ["Server"]
  SETTABLEKS R9 R14 K13 ["ServerRegistry"]
  SETTABLEKS R10 R14 K14 ["StreamableHttpClient"]
  SETTABLEKS R11 R14 K15 ["ToolRegistry"]
  SETTABLEKS R12 R14 K16 ["Types"]
  SETTABLEKS R13 R14 K17 ["Util"]
  RETURN R14 1
