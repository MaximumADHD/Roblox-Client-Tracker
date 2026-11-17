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
       44 GETTABLEKS                       R11 R0 K13 ["Parent"]
       46 GETTABLEKS                       R11 R11 K14 ["Promise"]
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
       81 GETTABLEKS                       R18 R0 K21 ["Transport"]
       83 CALL                             R17 1 1
       84 GETIMPORT                        R18 K3 [require]
       86 GETTABLEKS                       R19 R0 K22 ["Types"]
       88 CALL                             R18 1 1
       89 GETIMPORT                        R19 K3 [require]
       91 GETTABLEKS                       R20 R0 K23 ["Util"]
       93 CALL                             R19 1 1
       94 GETIMPORT                        R20 K3 [require]
       96 GETTABLEKS                       R21 R0 K24 ["WebSocketTransport"]
       98 CALL                             R20 1 1
       99 DUPTABLE                         R21 K26 [{"Client", "ClientConnectionStatus", "EventStreamParser", "HttpVariantClientTransport", "MultiplexedClient", "PeerTransport", "Promise", "Protocol", "Server", "ServerRegistry", "SSEClientTransport", "StreamableHttpClient", "ToolRegistry", "Types", "Util", "AuthCommon", "Authorizer", "Json", "WebSocketTransport"}]
      100 SETTABLEKS                       R4 R21 K7 ["Client"]
      102 SETTABLEKS                       R5 R21 K8 ["ClientConnectionStatus"]
      104 SETTABLEKS                       R6 R21 K9 ["EventStreamParser"]
      106 SETTABLEKS                       R7 R21 K10 ["HttpVariantClientTransport"]
      108 SETTABLEKS                       R8 R21 K11 ["MultiplexedClient"]
      110 SETTABLEKS                       R9 R21 K12 ["PeerTransport"]
      112 SETTABLEKS                       R10 R21 K14 ["Promise"]
      114 SETTABLEKS                       R11 R21 K15 ["Protocol"]
      116 SETTABLEKS                       R13 R21 K17 ["Server"]
      118 SETTABLEKS                       R14 R21 K18 ["ServerRegistry"]
      120 SETTABLEKS                       R12 R21 K16 ["SSEClientTransport"]
      122 SETTABLEKS                       R15 R21 K19 ["StreamableHttpClient"]
      124 SETTABLEKS                       R16 R21 K20 ["ToolRegistry"]
      126 SETTABLEKS                       R18 R21 K22 ["Types"]
      128 SETTABLEKS                       R19 R21 K23 ["Util"]
      130 SETTABLEKS                       R2 R21 K5 ["AuthCommon"]
      132 SETTABLEKS                       R3 R21 K6 ["Authorizer"]
      134 GETTABLEKS                       R22 R19 K25 ["Json"]
      136 SETTABLEKS                       R22 R21 K25 ["Json"]
      138 SETTABLEKS                       R20 R21 K24 ["WebSocketTransport"]
      140 RETURN                           R21 1
