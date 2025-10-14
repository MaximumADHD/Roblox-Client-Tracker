PROTO_0:
  MOVE R3 R0
  JUMPIFNOT R3 [+5]
  GETTABLEKS R3 R0 K0 ["name"]
  JUMPIFNOT R3 [+2]
  GETTABLEKS R3 R0 K1 ["version"]
  FASTCALL2K ASSERT R3 K2 [+4]
  LOADK R4 K2 ["Client info (name, version) is required."]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  MOVE R3 R1
  JUMPIFNOT R3 [+2]
  GETTABLEKS R3 R1 K5 ["capabilities"]
  FASTCALL2K ASSERT R3 K6 [+4]
  LOADK R4 K6 ["Options are required."]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  NEWTABLE R3 8 0
  GETUPVAL R4 0
  FASTCALL2 SETMETATABLE R3 R4 [+3]
  GETIMPORT R2 K8 [setmetatable]
  CALL R2 2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K9 ["new"]
  MOVE R4 R1
  CALL R3 1 1
  SETTABLEKS R3 R2 K10 ["_protocol"]
  SETTABLEKS R0 R2 K11 ["_clientInfo"]
  GETTABLEKS R3 R1 K5 ["capabilities"]
  SETTABLEKS R3 R2 K12 ["_clientCapabilities"]
  LOADNIL R3
  SETTABLEKS R3 R2 K13 ["_serverCapabilities"]
  LOADNIL R3
  SETTABLEKS R3 R2 K14 ["_serverInfo"]
  LOADNIL R3
  SETTABLEKS R3 R2 K15 ["_instructions"]
  RETURN R2 1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["_protocol"]
  NAMECALL R2 R2 K1 ["getTransport"]
  CALL R2 1 1
  JUMPIFNOT R2 [+4]
  GETIMPORT R2 K3 [error]
  LOADK R3 K4 ["Cannot register capabilities after connecting to transport"]
  CALL R2 1 0
  GETUPVAL R2 0
  GETTABLEKS R3 R0 K5 ["_clientCapabilities"]
  MOVE R4 R1
  CALL R2 2 1
  SETTABLEKS R2 R0 K5 ["_clientCapabilities"]
  RETURN R0 0

PROTO_2:
  DUPTABLE R0 K2 [{"method", "params"}]
  LOADK R1 K3 ["initialize"]
  SETTABLEKS R1 R0 K0 ["method"]
  DUPTABLE R1 K7 [{"protocolVersion", "capabilities", "clientInfo"}]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K8 ["LATEST_PROTOCOL_VERSION"]
  SETTABLEKS R2 R1 K4 ["protocolVersion"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K9 ["_clientCapabilities"]
  SETTABLEKS R2 R1 K5 ["capabilities"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K10 ["_clientInfo"]
  SETTABLEKS R2 R1 K6 ["clientInfo"]
  SETTABLEKS R1 R0 K1 ["params"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K11 ["_protocol"]
  MOVE R3 R0
  GETUPVAL R4 2
  NAMECALL R1 R1 K12 ["request"]
  CALL R1 3 1
  NAMECALL R1 R1 K13 ["await"]
  CALL R1 1 2
  JUMPIFNOT R2 [+9]
  GETTABLEKS R3 R2 K4 ["protocolVersion"]
  JUMPIFNOT R3 [+6]
  GETTABLEKS R3 R2 K5 ["capabilities"]
  JUMPIFNOT R3 [+3]
  GETTABLEKS R3 R2 K14 ["serverInfo"]
  JUMPIF R3 [+18]
  GETIMPORT R3 K16 [error]
  LOADK R5 K17 ["Server sent invalid initialize result: "]
  JUMPIFNOT R2 [+6]
  GETUPVAL R6 3
  MOVE R8 R2
  NAMECALL R6 R6 K18 ["JSONEncode"]
  CALL R6 2 1
  JUMPIF R6 [+5]
  FASTCALL1 TOSTRING R2 [+3]
  MOVE R7 R2
  GETIMPORT R6 K20 [tostring]
  CALL R6 1 1
  CONCAT R4 R5 R6
  CALL R3 1 0
  RETURN R0 0
  LOADB R3 0
  GETIMPORT R4 K22 [ipairs]
  GETUPVAL R7 0
  GETTABLEKS R5 R7 K23 ["SUPPORTED_PROTOCOL_VERSIONS"]
  CALL R4 1 3
  FORGPREP_INEXT R4
  GETTABLEKS R9 R2 K4 ["protocolVersion"]
  JUMPIFNOTEQ R9 R8 [+3]
  LOADB R3 1
  JUMP [+2]
  FORGLOOP R4 2 [inext] [-7]
  JUMPIF R3 [+8]
  GETIMPORT R4 K16 [error]
  LOADK R6 K24 ["Server's protocol version is not supported: "]
  GETTABLEKS R7 R2 K4 ["protocolVersion"]
  CONCAT R5 R6 R7
  CALL R4 1 0
  RETURN R0 0
  GETUPVAL R4 1
  GETTABLEKS R5 R2 K5 ["capabilities"]
  SETTABLEKS R5 R4 K25 ["_serverCapabilities"]
  GETUPVAL R4 1
  GETTABLEKS R5 R2 K14 ["serverInfo"]
  SETTABLEKS R5 R4 K26 ["_serverInfo"]
  GETUPVAL R4 1
  GETTABLEKS R5 R2 K27 ["instructions"]
  SETTABLEKS R5 R4 K28 ["_instructions"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K11 ["_protocol"]
  DUPTABLE R6 K29 [{"method"}]
  LOADK R7 K30 ["notifications/initialized"]
  SETTABLEKS R7 R6 K0 ["method"]
  NAMECALL R4 R4 K31 ["notification"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_3:
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["_protocol"]
  NAMECALL R1 R1 K1 ["close"]
  CALL R1 1 1
  DUPCLOSURE R3 K2 [PROTO_3]
  NAMECALL R1 R1 K3 ["catch"]
  CALL R1 2 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K4 ["reject"]
  MOVE R2 R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_5:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["connect"]
  GETTABLEKS R4 R0 K1 ["_protocol"]
  MOVE R5 R1
  CALL R3 2 1
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE UPVAL U2
  NAMECALL R3 R3 K2 ["andThen"]
  CALL R3 2 1
  NEWCLOSURE R5 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  NAMECALL R3 R3 K3 ["catch"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_6:
  GETTABLEKS R1 R0 K0 ["_serverCapabilities"]
  RETURN R1 1

PROTO_7:
  GETTABLEKS R1 R0 K0 ["_serverInfo"]
  RETURN R1 1

PROTO_8:
  GETTABLEKS R1 R0 K0 ["_instructions"]
  RETURN R1 1

PROTO_9:
  GETTABLEKS R3 R0 K0 ["_serverCapabilities"]
  JUMPIFNOT R3 [+4]
  GETTABLEKS R4 R0 K0 ["_serverCapabilities"]
  GETTABLE R3 R4 R1
  JUMPIF R3 [+9]
  GETIMPORT R3 K2 [error]
  GETIMPORT R4 K5 [string.format]
  LOADK R5 K6 ["Server does not support %s (required for %s)"]
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_10:
  GETTABLEKS R2 R0 K0 ["_serverCapabilities"]
  JUMPIF R2 [+1]
  RETURN R0 0
  JUMPIFNOTEQKS R1 K1 ["logging/setLevel"] [+7]
  LOADK R5 K2 ["logging"]
  MOVE R6 R1
  NAMECALL R3 R0 K3 ["assertCapability"]
  CALL R3 3 0
  RETURN R0 0
  JUMPIFEQKS R1 K4 ["prompts/get"] [+3]
  JUMPIFNOTEQKS R1 K5 ["prompts/list"] [+7]
  LOADK R5 K6 ["prompts"]
  MOVE R6 R1
  NAMECALL R3 R0 K3 ["assertCapability"]
  CALL R3 3 0
  RETURN R0 0
  JUMPIFEQKS R1 K7 ["resources/list"] [+9]
  JUMPIFEQKS R1 K8 ["resources/templates/list"] [+7]
  JUMPIFEQKS R1 K9 ["resources/read"] [+5]
  JUMPIFEQKS R1 K10 ["resources/subscribe"] [+3]
  JUMPIFNOTEQKS R1 K11 ["resources/unsubscribe"] [+24]
  LOADK R5 K12 ["resources"]
  MOVE R6 R1
  NAMECALL R3 R0 K3 ["assertCapability"]
  CALL R3 3 0
  JUMPIFNOTEQKS R1 K10 ["resources/subscribe"] [+34]
  GETTABLEKS R3 R2 K12 ["resources"]
  JUMPIFNOT R3 [+5]
  GETTABLEKS R4 R2 K12 ["resources"]
  GETTABLEKS R3 R4 K13 ["subscribe"]
  JUMPIF R3 [+25]
  GETIMPORT R3 K15 [error]
  LOADK R5 K16 ["Server does not support resource subscriptions (required for "]
  MOVE R6 R1
  LOADK R7 K17 [")"]
  CONCAT R4 R5 R7
  CALL R3 1 0
  RETURN R0 0
  JUMPIFEQKS R1 K18 ["tools/call"] [+3]
  JUMPIFNOTEQKS R1 K19 ["tools/list"] [+7]
  LOADK R5 K20 ["tools"]
  MOVE R6 R1
  NAMECALL R3 R0 K3 ["assertCapability"]
  CALL R3 3 0
  RETURN R0 0
  JUMPIFNOTEQKS R1 K21 ["completion/complete"] [+6]
  LOADK R5 K22 ["completions"]
  MOVE R6 R1
  NAMECALL R3 R0 K3 ["assertCapability"]
  CALL R3 3 0
  RETURN R0 0

PROTO_11:
  JUMPIFNOTEQKS R1 K0 ["notifications/roots/list_changed"] [+20]
  GETTABLEKS R3 R0 K1 ["_clientCapabilities"]
  GETTABLEKS R2 R3 K2 ["roots"]
  JUMPIFNOT R2 [+7]
  GETTABLEKS R4 R0 K1 ["_clientCapabilities"]
  GETTABLEKS R3 R4 K2 ["roots"]
  GETTABLEKS R2 R3 K3 ["listChanged"]
  JUMPIF R2 [+7]
  GETIMPORT R2 K5 [error]
  LOADK R4 K6 ["Client does not support roots list changed notifications (required for "]
  MOVE R5 R1
  LOADK R6 K7 [")"]
  CONCAT R3 R4 R6
  CALL R2 1 0
  RETURN R0 0

PROTO_12:
  GETTABLEKS R2 R0 K0 ["_clientCapabilities"]
  JUMPIFNOTEQKS R1 K1 ["sampling/createMessage"] [+12]
  GETTABLEKS R3 R2 K2 ["sampling"]
  JUMPIF R3 [+8]
  GETIMPORT R3 K4 [error]
  LOADK R5 K5 ["Client does not support sampling (required for "]
  MOVE R6 R1
  LOADK R7 K6 [")"]
  CONCAT R4 R5 R7
  CALL R3 1 0
  RETURN R0 0
  JUMPIFNOTEQKS R1 K7 ["roots/list"] [+11]
  GETTABLEKS R3 R2 K8 ["roots"]
  JUMPIF R3 [+7]
  GETIMPORT R3 K4 [error]
  LOADK R5 K9 ["Client does not support listing roots (required for "]
  MOVE R6 R1
  LOADK R7 K6 [")"]
  CONCAT R4 R5 R7
  CALL R3 1 0
  RETURN R0 0

PROTO_13:
  GETTABLEKS R2 R0 K0 ["_protocol"]
  DUPTABLE R4 K2 [{"method"}]
  LOADK R5 K3 ["ping"]
  SETTABLEKS R5 R4 K1 ["method"]
  MOVE R5 R1
  NAMECALL R2 R2 K4 ["request"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_14:
  GETTABLEKS R3 R0 K0 ["_protocol"]
  DUPTABLE R5 K3 [{"method", "params"}]
  LOADK R6 K4 ["completion/complete"]
  SETTABLEKS R6 R5 K1 ["method"]
  SETTABLEKS R1 R5 K2 ["params"]
  MOVE R6 R2
  NAMECALL R3 R3 K5 ["request"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_15:
  GETTABLEKS R3 R0 K0 ["_protocol"]
  DUPTABLE R5 K3 [{"method", "params"}]
  LOADK R6 K4 ["logging/setLevel"]
  SETTABLEKS R6 R5 K1 ["method"]
  DUPTABLE R6 K6 [{"level"}]
  SETTABLEKS R1 R6 K5 ["level"]
  SETTABLEKS R6 R5 K2 ["params"]
  MOVE R6 R2
  NAMECALL R3 R3 K7 ["request"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_16:
  GETTABLEKS R3 R0 K0 ["_protocol"]
  DUPTABLE R5 K3 [{"method", "params"}]
  LOADK R6 K4 ["prompts/get"]
  SETTABLEKS R6 R5 K1 ["method"]
  SETTABLEKS R1 R5 K2 ["params"]
  MOVE R6 R2
  NAMECALL R3 R3 K5 ["request"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_17:
  GETTABLEKS R3 R0 K0 ["_protocol"]
  DUPTABLE R5 K3 [{"method", "params"}]
  LOADK R6 K4 ["prompts/list"]
  SETTABLEKS R6 R5 K1 ["method"]
  SETTABLEKS R1 R5 K2 ["params"]
  MOVE R6 R2
  NAMECALL R3 R3 K5 ["request"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_18:
  GETTABLEKS R3 R0 K0 ["_protocol"]
  DUPTABLE R5 K3 [{"method", "params"}]
  LOADK R6 K4 ["resources/list"]
  SETTABLEKS R6 R5 K1 ["method"]
  SETTABLEKS R1 R5 K2 ["params"]
  MOVE R6 R2
  NAMECALL R3 R3 K5 ["request"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_19:
  GETTABLEKS R3 R0 K0 ["_protocol"]
  DUPTABLE R5 K3 [{"method", "params"}]
  LOADK R6 K4 ["resources/templates/list"]
  SETTABLEKS R6 R5 K1 ["method"]
  SETTABLEKS R1 R5 K2 ["params"]
  MOVE R6 R2
  NAMECALL R3 R3 K5 ["request"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_20:
  GETTABLEKS R3 R0 K0 ["_protocol"]
  DUPTABLE R5 K3 [{"method", "params"}]
  LOADK R6 K4 ["resources/read"]
  SETTABLEKS R6 R5 K1 ["method"]
  SETTABLEKS R1 R5 K2 ["params"]
  MOVE R6 R2
  NAMECALL R3 R3 K5 ["request"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_21:
  GETTABLEKS R3 R0 K0 ["_protocol"]
  DUPTABLE R5 K3 [{"method", "params"}]
  LOADK R6 K4 ["resources/subscribe"]
  SETTABLEKS R6 R5 K1 ["method"]
  SETTABLEKS R1 R5 K2 ["params"]
  MOVE R6 R2
  NAMECALL R3 R3 K5 ["request"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_22:
  GETTABLEKS R3 R0 K0 ["_protocol"]
  DUPTABLE R5 K3 [{"method", "params"}]
  LOADK R6 K4 ["resources/unsubscribe"]
  SETTABLEKS R6 R5 K1 ["method"]
  SETTABLEKS R1 R5 K2 ["params"]
  MOVE R6 R2
  NAMECALL R3 R3 K5 ["request"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_23:
  GETTABLEKS R3 R0 K0 ["_protocol"]
  DUPTABLE R5 K3 [{"method", "params"}]
  LOADK R6 K4 ["tools/call"]
  SETTABLEKS R6 R5 K1 ["method"]
  SETTABLEKS R1 R5 K2 ["params"]
  MOVE R6 R2
  NAMECALL R3 R3 K5 ["request"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_24:
  GETTABLEKS R3 R0 K0 ["_protocol"]
  DUPTABLE R5 K3 [{"method", "params"}]
  LOADK R6 K4 ["tools/list"]
  SETTABLEKS R6 R5 K1 ["method"]
  SETTABLEKS R1 R5 K2 ["params"]
  MOVE R6 R2
  NAMECALL R3 R3 K5 ["request"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_25:
  GETTABLEKS R1 R0 K0 ["_protocol"]
  DUPTABLE R3 K2 [{"method"}]
  LOADK R4 K3 ["notifications/roots/list_changed"]
  SETTABLEKS R4 R3 K1 ["method"]
  NAMECALL R1 R1 K4 ["notification"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_26:
  GETTABLEKS R1 R0 K0 ["_protocol"]
  NAMECALL R1 R1 K1 ["close"]
  CALL R1 1 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ModelContextProtocol"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["HttpService"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R0 K10 ["Parent"]
  GETTABLEKS R3 R4 K11 ["Promise"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R4 R0 K12 ["Protocol"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R5 R0 K13 ["Transport"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R6 R0 K14 ["Types"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R8 R0 K15 ["Util"]
  GETTABLEKS R7 R8 K16 ["mergeCapabilities"]
  CALL R6 1 1
  NEWTABLE R7 32 0
  SETTABLEKS R7 R7 K17 ["__index"]
  DUPCLOSURE R8 K18 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R3
  SETTABLEKS R8 R7 K19 ["new"]
  DUPCLOSURE R8 K20 [PROTO_1]
  CAPTURE VAL R6
  SETTABLEKS R8 R7 K21 ["registerCapabilities"]
  DUPCLOSURE R8 K22 [PROTO_5]
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K23 ["connect"]
  DUPCLOSURE R8 K24 [PROTO_6]
  SETTABLEKS R8 R7 K25 ["getServerCapabilities"]
  DUPCLOSURE R8 K26 [PROTO_7]
  SETTABLEKS R8 R7 K27 ["getServerInfo"]
  DUPCLOSURE R8 K28 [PROTO_8]
  SETTABLEKS R8 R7 K29 ["getInstructions"]
  DUPCLOSURE R8 K30 [PROTO_9]
  SETTABLEKS R8 R7 K31 ["assertCapability"]
  DUPCLOSURE R8 K32 [PROTO_10]
  SETTABLEKS R8 R7 K33 ["assertCapabilityForMethod"]
  DUPCLOSURE R8 K34 [PROTO_11]
  SETTABLEKS R8 R7 K35 ["assertNotificationCapability"]
  DUPCLOSURE R8 K36 [PROTO_12]
  SETTABLEKS R8 R7 K37 ["assertRequestHandlerCapability"]
  DUPCLOSURE R8 K38 [PROTO_13]
  SETTABLEKS R8 R7 K39 ["ping"]
  DUPCLOSURE R8 K40 [PROTO_14]
  SETTABLEKS R8 R7 K41 ["complete"]
  DUPCLOSURE R8 K42 [PROTO_15]
  SETTABLEKS R8 R7 K43 ["setLoggingLevel"]
  DUPCLOSURE R8 K44 [PROTO_16]
  SETTABLEKS R8 R7 K45 ["getPrompt"]
  DUPCLOSURE R8 K46 [PROTO_17]
  SETTABLEKS R8 R7 K47 ["listPrompts"]
  DUPCLOSURE R8 K48 [PROTO_18]
  SETTABLEKS R8 R7 K49 ["listResources"]
  DUPCLOSURE R8 K50 [PROTO_19]
  SETTABLEKS R8 R7 K51 ["listResourceTemplates"]
  DUPCLOSURE R8 K52 [PROTO_20]
  SETTABLEKS R8 R7 K53 ["readResource"]
  DUPCLOSURE R8 K54 [PROTO_21]
  SETTABLEKS R8 R7 K55 ["subscribeResource"]
  DUPCLOSURE R8 K56 [PROTO_22]
  SETTABLEKS R8 R7 K57 ["unsubscribeResource"]
  DUPCLOSURE R8 K58 [PROTO_23]
  SETTABLEKS R8 R7 K59 ["callTool"]
  DUPCLOSURE R8 K60 [PROTO_24]
  SETTABLEKS R8 R7 K61 ["listTools"]
  DUPCLOSURE R8 K62 [PROTO_25]
  SETTABLEKS R8 R7 K63 ["sendRootsListChanged"]
  DUPCLOSURE R8 K64 [PROTO_26]
  SETTABLEKS R8 R7 K65 ["close"]
  RETURN R7 1
