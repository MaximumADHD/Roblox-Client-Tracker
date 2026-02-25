MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETIMPORT                        R1 K3 [require]
        5 GETTABLEKS                       R2 R0 K4 ["Auth"]
        7 CALL                             R1 1 1
        8 GETTABLEKS                       R2 R1 K5 ["AuthCommon"]
       10 GETTABLEKS                       R3 R1 K6 ["Authorizer"]
       12 GETIMPORT                        R4 K3 [require]
       14 GETTABLEKS                       R5 R0 K7 ["Client"]
       16 CALL                             R4 1 1
       17 GETIMPORT                        R5 K3 [require]
       19 GETTABLEKS                       R6 R0 K8 ["ClientConnectionStatus"]
       21 CALL                             R5 1 1
       22 GETIMPORT                        R6 K3 [require]
       24 GETTABLEKS                       R7 R0 K9 ["EventStreamParser"]
       26 CALL                             R6 1 1
       27 GETIMPORT                        R7 K3 [require]
       29 GETTABLEKS                       R8 R0 K10 ["HttpVariantClientTransport"]
       31 CALL                             R7 1 1
       32 GETIMPORT                        R8 K3 [require]
       34 GETTABLEKS                       R9 R0 K11 ["MultiplexedClient"]
       36 CALL                             R8 1 1
       37 GETIMPORT                        R9 K3 [require]
       39 GETTABLEKS                       R10 R0 K12 ["PeerTransport"]
       41 CALL                             R9 1 1
       42 GETIMPORT                        R10 K3 [require]
       44 GETTABLEKS                       R12 R0 K13 ["Parent"]
       46 GETTABLEKS                       R11 R12 K14 ["Promise"]
       48 CALL                             R10 1 1
       49 GETIMPORT                        R11 K3 [require]
       51 GETTABLEKS                       R12 R0 K15 ["Protocol"]
       53 CALL                             R11 1 1
       54 GETIMPORT                        R12 K3 [require]
       56 GETTABLEKS                       R13 R0 K16 ["SSEClientTransport"]
       58 CALL                             R12 1 1
       59 GETIMPORT                        R13 K3 [require]
       61 GETTABLEKS                       R14 R0 K17 ["Server"]
       63 CALL                             R13 1 1
       64 GETIMPORT                        R14 K3 [require]
       66 GETTABLEKS                       R15 R0 K18 ["ServerRegistry"]
       68 CALL                             R14 1 1
       69 GETIMPORT                        R15 K3 [require]
       71 GETTABLEKS                       R16 R0 K19 ["StreamableHttpClient"]
       73 CALL                             R15 1 1
       74 GETIMPORT                        R16 K3 [require]
       76 GETTABLEKS                       R17 R0 K20 ["ToolRegistry"]
       78 CALL                             R16 1 1
       79 GETIMPORT                        R17 K3 [require]
       81 GETTABLEKS                       R18 R0 K21 ["Types"]
       83 CALL                             R17 1 1
       84 GETIMPORT                        R18 K3 [require]
       86 GETTABLEKS                       R19 R0 K22 ["Util"]
       88 CALL                             R18 1 1
       89 GETIMPORT                        R19 K3 [require]
       91 GETTABLEKS                       R20 R0 K23 ["WebSocketTransport"]
       93 CALL                             R19 1 1
       94 DUPTABLE                         R20 K25 [{"Client", "ClientConnectionStatus", "EventStreamParser", "HttpVariantClientTransport", "MultiplexedClient", "PeerTransport", "Promise", "Protocol", "Server", "ServerRegistry", "SSEClientTransport", "StreamableHttpClient", "ToolRegistry", "Types", "Util", "AuthCommon", "Authorizer", "Json", "WebSocketTransport"}]
       95 SETTABLEKS                       R4 R20 K7 ["Client"]
       97 SETTABLEKS                       R5 R20 K8 ["ClientConnectionStatus"]
       99 SETTABLEKS                       R6 R20 K9 ["EventStreamParser"]
      101 SETTABLEKS                       R7 R20 K10 ["HttpVariantClientTransport"]
      103 SETTABLEKS                       R8 R20 K11 ["MultiplexedClient"]
      105 SETTABLEKS                       R9 R20 K12 ["PeerTransport"]
      107 SETTABLEKS                       R10 R20 K14 ["Promise"]
      109 SETTABLEKS                       R11 R20 K15 ["Protocol"]
      111 SETTABLEKS                       R13 R20 K17 ["Server"]
      113 SETTABLEKS                       R14 R20 K18 ["ServerRegistry"]
      115 SETTABLEKS                       R12 R20 K16 ["SSEClientTransport"]
      117 SETTABLEKS                       R15 R20 K19 ["StreamableHttpClient"]
      119 SETTABLEKS                       R16 R20 K20 ["ToolRegistry"]
      121 SETTABLEKS                       R17 R20 K21 ["Types"]
      123 SETTABLEKS                       R18 R20 K22 ["Util"]
      125 SETTABLEKS                       R2 R20 K5 ["AuthCommon"]
      127 SETTABLEKS                       R3 R20 K6 ["Authorizer"]
      129 GETTABLEKS                       R21 R18 K24 ["Json"]
      131 SETTABLEKS                       R21 R20 K24 ["Json"]
      133 SETTABLEKS                       R19 R20 K23 ["WebSocketTransport"]
      135 RETURN                           R20 1
