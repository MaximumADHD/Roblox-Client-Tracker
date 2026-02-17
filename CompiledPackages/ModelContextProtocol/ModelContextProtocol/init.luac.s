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
  GETTABLEKS R8 R0 K10 ["HttpVariantClientTransport"]
  CALL R7 1 1
  GETIMPORT R8 K3 [require]
  GETTABLEKS R9 R0 K11 ["MultiplexedClient"]
  CALL R8 1 1
  GETIMPORT R9 K3 [require]
  GETTABLEKS R10 R0 K12 ["PeerTransport"]
  CALL R9 1 1
  GETIMPORT R10 K3 [require]
  GETTABLEKS R12 R0 K13 ["Parent"]
  GETTABLEKS R11 R12 K14 ["Promise"]
  CALL R10 1 1
  GETIMPORT R11 K3 [require]
  GETTABLEKS R12 R0 K15 ["Protocol"]
  CALL R11 1 1
  GETIMPORT R12 K3 [require]
  GETTABLEKS R13 R0 K16 ["SSEClientTransport"]
  CALL R12 1 1
  GETIMPORT R13 K3 [require]
  GETTABLEKS R14 R0 K17 ["Server"]
  CALL R13 1 1
  GETIMPORT R14 K3 [require]
  GETTABLEKS R15 R0 K18 ["ServerRegistry"]
  CALL R14 1 1
  GETIMPORT R15 K3 [require]
  GETTABLEKS R16 R0 K19 ["StreamableHttpClient"]
  CALL R15 1 1
  GETIMPORT R16 K3 [require]
  GETTABLEKS R17 R0 K20 ["ToolRegistry"]
  CALL R16 1 1
  GETIMPORT R17 K3 [require]
  GETTABLEKS R18 R0 K21 ["Types"]
  CALL R17 1 1
  GETIMPORT R18 K3 [require]
  GETTABLEKS R19 R0 K22 ["Util"]
  CALL R18 1 1
  GETIMPORT R19 K3 [require]
  GETTABLEKS R20 R0 K23 ["WebSocketTransport"]
  CALL R19 1 1
  DUPTABLE R20 K25 [{"Client", "ClientConnectionStatus", "EventStreamParser", "HttpVariantClientTransport", "MultiplexedClient", "PeerTransport", "Promise", "Protocol", "Server", "ServerRegistry", "SSEClientTransport", "StreamableHttpClient", "ToolRegistry", "Types", "Util", "AuthCommon", "Authorizer", "Json", "WebSocketTransport"}]
  SETTABLEKS R4 R20 K7 ["Client"]
  SETTABLEKS R5 R20 K8 ["ClientConnectionStatus"]
  SETTABLEKS R6 R20 K9 ["EventStreamParser"]
  SETTABLEKS R7 R20 K10 ["HttpVariantClientTransport"]
  SETTABLEKS R8 R20 K11 ["MultiplexedClient"]
  SETTABLEKS R9 R20 K12 ["PeerTransport"]
  SETTABLEKS R10 R20 K14 ["Promise"]
  SETTABLEKS R11 R20 K15 ["Protocol"]
  SETTABLEKS R13 R20 K17 ["Server"]
  SETTABLEKS R14 R20 K18 ["ServerRegistry"]
  SETTABLEKS R12 R20 K16 ["SSEClientTransport"]
  SETTABLEKS R15 R20 K19 ["StreamableHttpClient"]
  SETTABLEKS R16 R20 K20 ["ToolRegistry"]
  SETTABLEKS R17 R20 K21 ["Types"]
  SETTABLEKS R18 R20 K22 ["Util"]
  SETTABLEKS R2 R20 K5 ["AuthCommon"]
  SETTABLEKS R3 R20 K6 ["Authorizer"]
  GETTABLEKS R21 R18 K24 ["Json"]
  SETTABLEKS R21 R20 K24 ["Json"]
  SETTABLEKS R19 R20 K23 ["WebSocketTransport"]
  RETURN R20 1
