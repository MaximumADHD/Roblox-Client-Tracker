MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  GETIMPORT R1 K3 [require]
  GETTABLEKS R2 R0 K4 ["Auth"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K5 ["AuthCommon"]
  GETTABLEKS R3 R1 K6 ["Authorizer"]
  GETIMPORT R4 K3 [require]
  GETTABLEKS R5 R0 K7 ["Client"]
  CALL R4 1 1
  GETIMPORT R5 K3 [require]
  GETTABLEKS R6 R0 K8 ["ClientConnectionStatus"]
  CALL R5 1 1
  GETIMPORT R6 K3 [require]
  GETTABLEKS R7 R0 K9 ["EventStreamParser"]
  CALL R6 1 1
  GETIMPORT R7 K3 [require]
  GETTABLEKS R8 R0 K10 ["MultiplexedClient"]
  CALL R7 1 1
  GETIMPORT R8 K3 [require]
  GETTABLEKS R9 R0 K11 ["PeerTransport"]
  CALL R8 1 1
  GETIMPORT R9 K3 [require]
  GETTABLEKS R11 R0 K12 ["Parent"]
  GETTABLEKS R10 R11 K13 ["Promise"]
  CALL R9 1 1
  GETIMPORT R10 K3 [require]
  GETTABLEKS R11 R0 K14 ["Protocol"]
  CALL R10 1 1
  GETIMPORT R11 K3 [require]
  GETTABLEKS R12 R0 K15 ["Server"]
  CALL R11 1 1
  GETIMPORT R12 K3 [require]
  GETTABLEKS R13 R0 K16 ["ServerRegistry"]
  CALL R12 1 1
  GETIMPORT R13 K3 [require]
  GETTABLEKS R14 R0 K17 ["StreamableHttpClient"]
  CALL R13 1 1
  GETIMPORT R14 K3 [require]
  GETTABLEKS R15 R0 K18 ["ToolRegistry"]
  CALL R14 1 1
  GETIMPORT R15 K3 [require]
  GETTABLEKS R16 R0 K19 ["Types"]
  CALL R15 1 1
  GETIMPORT R16 K3 [require]
  GETTABLEKS R17 R0 K20 ["Util"]
  CALL R16 1 1
  DUPTABLE R17 K22 [{"Client", "ClientConnectionStatus", "EventStreamParser", "MultiplexedClient", "PeerTransport", "Promise", "Protocol", "Server", "ServerRegistry", "StreamableHttpClient", "ToolRegistry", "Types", "Util", "AuthCommon", "Authorizer", "Json"}]
  SETTABLEKS R4 R17 K7 ["Client"]
  SETTABLEKS R5 R17 K8 ["ClientConnectionStatus"]
  SETTABLEKS R6 R17 K9 ["EventStreamParser"]
  SETTABLEKS R7 R17 K10 ["MultiplexedClient"]
  SETTABLEKS R8 R17 K11 ["PeerTransport"]
  SETTABLEKS R9 R17 K13 ["Promise"]
  SETTABLEKS R10 R17 K14 ["Protocol"]
  SETTABLEKS R11 R17 K15 ["Server"]
  SETTABLEKS R12 R17 K16 ["ServerRegistry"]
  SETTABLEKS R13 R17 K17 ["StreamableHttpClient"]
  SETTABLEKS R14 R17 K18 ["ToolRegistry"]
  SETTABLEKS R15 R17 K19 ["Types"]
  SETTABLEKS R16 R17 K20 ["Util"]
  SETTABLEKS R2 R17 K5 ["AuthCommon"]
  SETTABLEKS R3 R17 K6 ["Authorizer"]
  GETTABLEKS R18 R16 K21 ["Json"]
  SETTABLEKS R18 R17 K21 ["Json"]
  RETURN R17 1
