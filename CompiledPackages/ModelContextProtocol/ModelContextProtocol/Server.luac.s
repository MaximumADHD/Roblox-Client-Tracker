PROTO_0:
  GETUPVAL R2 0
  MOVE R4 R0
  MOVE R5 R1
  NAMECALL R2 R2 K0 ["_oninitialize"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["_oninitializedNotification"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_2:
  MOVE R3 R0
  JUMPIFNOT R3 [+5]
  GETTABLEKS R3 R0 K0 ["name"]
  JUMPIFNOT R3 [+2]
  GETTABLEKS R3 R0 K1 ["version"]
  FASTCALL2K ASSERT R3 K2 [+4]
  LOADK R4 K2 ["Server info (name, version) is required."]
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
  SETTABLEKS R0 R2 K11 ["_serverInfo"]
  GETTABLEKS R3 R1 K5 ["capabilities"]
  SETTABLEKS R3 R2 K12 ["_serverCapabilities"]
  GETTABLEKS R3 R1 K13 ["instructions"]
  SETTABLEKS R3 R2 K14 ["_instructions"]
  LOADNIL R3
  SETTABLEKS R3 R2 K15 ["_clientCapabilities"]
  LOADNIL R3
  SETTABLEKS R3 R2 K16 ["_clientVersion"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K9 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K17 ["onServerInitialized"]
  GETTABLEKS R3 R2 K10 ["_protocol"]
  DUPTABLE R5 K19 [{"method"}]
  LOADK R6 K20 ["initialize"]
  SETTABLEKS R6 R5 K18 ["method"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R2
  NAMECALL R3 R3 K21 ["setRequestHandler"]
  CALL R3 3 0
  GETTABLEKS R3 R2 K10 ["_protocol"]
  DUPTABLE R5 K19 [{"method"}]
  LOADK R6 K22 ["notifications/initialized"]
  SETTABLEKS R6 R5 K18 ["method"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R2
  NAMECALL R3 R3 K23 ["setNotificationHandler"]
  CALL R3 3 0
  RETURN R2 1

PROTO_3:
  GETTABLEKS R3 R0 K0 ["_protocol"]
  MOVE R5 R1
  MOVE R6 R2
  NAMECALL R3 R3 K1 ["setRequestHandler"]
  CALL R3 3 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R3 R0 K0 ["_protocol"]
  MOVE R5 R1
  MOVE R6 R2
  NAMECALL R3 R3 K1 ["setNotificationHandler"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_5:
  GETTABLEKS R3 R0 K0 ["_protocol"]
  MOVE R5 R1
  MOVE R6 R2
  NAMECALL R3 R3 K1 ["connect"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_6:
  GETTABLEKS R1 R0 K0 ["_protocol"]
  NAMECALL R1 R1 K1 ["close"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_7:
  GETTABLEKS R2 R0 K0 ["_clientCapabilities"]
  JUMPIF R2 [+1]
  RETURN R0 0
  JUMPIFNOTEQKS R1 K1 ["sampling/createMessage"] [+14]
  GETTABLEKS R3 R0 K0 ["_clientCapabilities"]
  GETTABLEKS R2 R3 K2 ["sampling"]
  JUMPIF R2 [+8]
  GETIMPORT R2 K4 [error]
  LOADK R4 K5 ["Client does not support sampling (required for "]
  MOVE R5 R1
  LOADK R6 K6 [")"]
  CONCAT R3 R4 R6
  CALL R2 1 0
  RETURN R0 0
  JUMPIFNOTEQKS R1 K7 ["roots/list"] [+13]
  GETTABLEKS R3 R0 K0 ["_clientCapabilities"]
  GETTABLEKS R2 R3 K8 ["roots"]
  JUMPIF R2 [+7]
  GETIMPORT R2 K4 [error]
  LOADK R4 K9 ["Client does not support listing roots (required for "]
  MOVE R5 R1
  LOADK R6 K6 [")"]
  CONCAT R3 R4 R6
  CALL R2 1 0
  RETURN R0 0

PROTO_8:
  JUMPIFNOTEQKS R1 K0 ["notifications/message"] [+14]
  GETTABLEKS R3 R0 K1 ["_serverCapabilities"]
  GETTABLEKS R2 R3 K2 ["logging"]
  JUMPIF R2 [+8]
  GETIMPORT R2 K4 [error]
  LOADK R4 K5 ["Server does not support logging (required for "]
  MOVE R5 R1
  LOADK R6 K6 [")"]
  CONCAT R3 R4 R6
  CALL R2 1 0
  RETURN R0 0
  JUMPIFEQKS R1 K7 ["notifications/resources/updated"] [+3]
  JUMPIFNOTEQKS R1 K8 ["notifications/resources/list_changed"] [+14]
  GETTABLEKS R3 R0 K1 ["_serverCapabilities"]
  GETTABLEKS R2 R3 K9 ["resources"]
  JUMPIF R2 [+8]
  GETIMPORT R2 K4 [error]
  LOADK R4 K10 ["Server does not support notifying about resources (required for "]
  MOVE R5 R1
  LOADK R6 K6 [")"]
  CONCAT R3 R4 R6
  CALL R2 1 0
  RETURN R0 0
  JUMPIFNOTEQKS R1 K11 ["notifications/tools/list_changed"] [+14]
  GETTABLEKS R3 R0 K1 ["_serverCapabilities"]
  GETTABLEKS R2 R3 K12 ["tools"]
  JUMPIF R2 [+8]
  GETIMPORT R2 K4 [error]
  LOADK R4 K13 ["Server does not support notifying of tool list changes (required for "]
  MOVE R5 R1
  LOADK R6 K6 [")"]
  CONCAT R3 R4 R6
  CALL R2 1 0
  RETURN R0 0
  JUMPIFNOTEQKS R1 K14 ["notifications/prompts/list_changed"] [+13]
  GETTABLEKS R3 R0 K1 ["_serverCapabilities"]
  GETTABLEKS R2 R3 K15 ["prompts"]
  JUMPIF R2 [+7]
  GETIMPORT R2 K4 [error]
  LOADK R4 K16 ["Server does not support notifying of prompt list changes (required for "]
  MOVE R5 R1
  LOADK R6 K6 [")"]
  CONCAT R3 R4 R6
  CALL R2 1 0
  RETURN R0 0

PROTO_9:
  JUMPIFNOTEQKS R1 K0 ["logging/setLevel"] [+14]
  GETTABLEKS R3 R0 K1 ["_serverCapabilities"]
  GETTABLEKS R2 R3 K2 ["logging"]
  JUMPIF R2 [+8]
  GETIMPORT R2 K4 [error]
  LOADK R4 K5 ["Server does not support logging (required for "]
  MOVE R5 R1
  LOADK R6 K6 [")"]
  CONCAT R3 R4 R6
  CALL R2 1 0
  RETURN R0 0
  JUMPIFEQKS R1 K7 ["prompts/get"] [+3]
  JUMPIFNOTEQKS R1 K8 ["prompts/list"] [+14]
  GETTABLEKS R3 R0 K1 ["_serverCapabilities"]
  GETTABLEKS R2 R3 K9 ["prompts"]
  JUMPIF R2 [+8]
  GETIMPORT R2 K4 [error]
  LOADK R4 K10 ["Server does not support prompts (required for "]
  MOVE R5 R1
  LOADK R6 K6 [")"]
  CONCAT R3 R4 R6
  CALL R2 1 0
  RETURN R0 0
  JUMPIFEQKS R1 K11 ["resources/list"] [+5]
  JUMPIFEQKS R1 K12 ["resources/templates/list"] [+3]
  JUMPIFNOTEQKS R1 K13 ["resources/read"] [+14]
  GETTABLEKS R3 R0 K1 ["_serverCapabilities"]
  GETTABLEKS R2 R3 K14 ["resources"]
  JUMPIF R2 [+8]
  GETIMPORT R2 K4 [error]
  LOADK R4 K15 ["Server does not support resources (required for "]
  MOVE R5 R1
  LOADK R6 K6 [")"]
  CONCAT R3 R4 R6
  CALL R2 1 0
  RETURN R0 0
  JUMPIFEQKS R1 K16 ["tools/call"] [+3]
  JUMPIFNOTEQKS R1 K17 ["tools/list"] [+13]
  GETTABLEKS R3 R0 K1 ["_serverCapabilities"]
  GETTABLEKS R2 R3 K18 ["tools"]
  JUMPIF R2 [+7]
  GETIMPORT R2 K4 [error]
  LOADK R4 K19 ["Server does not support tools (required for "]
  MOVE R5 R1
  LOADK R6 K6 [")"]
  CONCAT R3 R4 R6
  CALL R2 1 0
  RETURN R0 0

PROTO_10:
  GETTABLEKS R2 R0 K0 ["_protocol"]
  NAMECALL R2 R2 K1 ["getTransport"]
  CALL R2 1 1
  JUMPIFNOT R2 [+4]
  GETIMPORT R2 K3 [error]
  LOADK R3 K4 ["Cannot register capabilities after connecting to transport"]
  CALL R2 1 0
  GETUPVAL R2 0
  GETTABLEKS R3 R0 K5 ["_serverCapabilities"]
  MOVE R4 R1
  CALL R2 2 1
  SETTABLEKS R2 R0 K5 ["_serverCapabilities"]
  RETURN R0 0

PROTO_11:
  GETTABLEKS R4 R1 K0 ["params"]
  FASTCALL2K ASSERT R4 K1 [+4]
  LOADK R5 K1 ["Request params are required."]
  GETIMPORT R3 K3 [assert]
  CALL R3 2 0
  GETTABLEKS R4 R1 K0 ["params"]
  GETTABLEKS R3 R4 K4 ["protocolVersion"]
  FASTCALL1 TYPE R3 [+3]
  MOVE R7 R3
  GETIMPORT R6 K6 [type]
  CALL R6 1 1
  JUMPIFEQKS R6 K7 ["string"] [+2]
  LOADB R5 0 +1
  LOADB R5 1
  FASTCALL2K ASSERT R5 K8 [+4]
  LOADK R6 K8 ["Protocol version must be a string."]
  GETIMPORT R4 K3 [assert]
  CALL R4 2 0
  GETTABLEKS R5 R1 K0 ["params"]
  GETTABLEKS R4 R5 K9 ["capabilities"]
  GETTABLEKS R6 R1 K0 ["params"]
  GETTABLEKS R5 R6 K10 ["clientInfo"]
  LOADNIL R6
  GETIMPORT R7 K12 [ipairs]
  GETUPVAL R10 0
  GETTABLEKS R8 R10 K13 ["SUPPORTED_PROTOCOL_VERSIONS"]
  CALL R7 1 3
  FORGPREP_INEXT R7
  JUMPIFNOTEQ R3 R11 [+3]
  MOVE R6 R11
  JUMP [+2]
  FORGLOOP R7 2 [inext] [-5]
  JUMPIF R6 [+15]
  GETIMPORT R7 K15 [error]
  GETIMPORT R8 K17 [string.format]
  LOADK R9 K18 ["Unsupported protocol version '%s'. Server supports: %s"]
  ORK R10 R3 K19 ["(not specified)"]
  GETIMPORT R11 K22 [table.concat]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K13 ["SUPPORTED_PROTOCOL_VERSIONS"]
  LOADK R13 K23 [", "]
  CALL R11 2 -1
  CALL R8 -1 -1
  CALL R7 -1 0
  SETTABLEKS R4 R0 K24 ["_clientCapabilities"]
  SETTABLEKS R5 R0 K25 ["_clientVersion"]
  DUPTABLE R7 K28 [{"protocolVersion", "serverInfo", "capabilities", "instructions"}]
  SETTABLEKS R6 R7 K4 ["protocolVersion"]
  GETTABLEKS R8 R0 K29 ["_serverInfo"]
  SETTABLEKS R8 R7 K26 ["serverInfo"]
  GETTABLEKS R8 R0 K30 ["_serverCapabilities"]
  SETTABLEKS R8 R7 K9 ["capabilities"]
  GETTABLEKS R8 R0 K31 ["_instructions"]
  SETTABLEKS R8 R7 K27 ["instructions"]
  RETURN R7 1

PROTO_12:
  GETTABLEKS R2 R0 K0 ["onServerInitialized"]
  NAMECALL R2 R2 K1 ["Fire"]
  CALL R2 1 0
  RETURN R0 0

PROTO_13:
  GETTABLEKS R1 R0 K0 ["_clientCapabilities"]
  RETURN R1 1

PROTO_14:
  GETTABLEKS R1 R0 K0 ["_clientVersion"]
  RETURN R1 1

PROTO_15:
  GETTABLEKS R1 R0 K0 ["_serverCapabilities"]
  RETURN R1 1

PROTO_16:
  GETTABLEKS R2 R0 K0 ["_protocol"]
  DUPTABLE R4 K2 [{"method"}]
  LOADK R5 K3 ["ping"]
  SETTABLEKS R5 R4 K1 ["method"]
  MOVE R5 R1
  NAMECALL R2 R2 K4 ["request"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_17:
  GETTABLEKS R3 R0 K0 ["_protocol"]
  DUPTABLE R5 K3 [{"method", "params"}]
  LOADK R6 K4 ["sampling/createMessage"]
  SETTABLEKS R6 R5 K1 ["method"]
  SETTABLEKS R1 R5 K2 ["params"]
  MOVE R6 R2
  NAMECALL R3 R3 K5 ["request"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_18:
  GETTABLEKS R3 R0 K0 ["_protocol"]
  DUPTABLE R5 K3 [{"method", "params"}]
  LOADK R6 K4 ["roots/list"]
  SETTABLEKS R6 R5 K1 ["method"]
  SETTABLEKS R1 R5 K2 ["params"]
  MOVE R6 R2
  NAMECALL R3 R3 K5 ["request"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_19:
  GETTABLEKS R2 R0 K0 ["_protocol"]
  DUPTABLE R4 K3 [{"method", "params"}]
  LOADK R5 K4 ["notifications/message"]
  SETTABLEKS R5 R4 K1 ["method"]
  SETTABLEKS R1 R4 K2 ["params"]
  NAMECALL R2 R2 K5 ["notification"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_20:
  GETTABLEKS R2 R0 K0 ["_protocol"]
  DUPTABLE R4 K3 [{"method", "params"}]
  LOADK R5 K4 ["notifications/resources/updated"]
  SETTABLEKS R5 R4 K1 ["method"]
  SETTABLEKS R1 R4 K2 ["params"]
  NAMECALL R2 R2 K5 ["notification"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_21:
  GETTABLEKS R1 R0 K0 ["_protocol"]
  DUPTABLE R3 K2 [{"method"}]
  LOADK R4 K3 ["notifications/resources/list_changed"]
  SETTABLEKS R4 R3 K1 ["method"]
  NAMECALL R1 R1 K4 ["notification"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_22:
  GETTABLEKS R1 R0 K0 ["_protocol"]
  DUPTABLE R3 K2 [{"method"}]
  LOADK R4 K3 ["notifications/tools/list_changed"]
  SETTABLEKS R4 R3 K1 ["method"]
  NAMECALL R1 R1 K4 ["notification"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_23:
  GETTABLEKS R1 R0 K0 ["_protocol"]
  DUPTABLE R3 K2 [{"method"}]
  LOADK R4 K3 ["notifications/prompts/list_changed"]
  SETTABLEKS R4 R3 K1 ["method"]
  NAMECALL R1 R1 K4 ["notification"]
  CALL R1 2 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ModelContextProtocol"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R2 R0 K6 ["Protocol"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K7 ["Parent"]
  GETTABLEKS R3 R4 K8 ["Signal"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R0 K9 ["Transport"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R0 K10 ["Types"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K11 ["Util"]
  GETTABLEKS R6 R7 K12 ["mergeCapabilities"]
  CALL R5 1 1
  NEWTABLE R6 32 0
  SETTABLEKS R6 R6 K13 ["__index"]
  DUPCLOSURE R7 K14 [PROTO_2]
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R2
  SETTABLEKS R7 R6 K15 ["new"]
  DUPCLOSURE R7 K16 [PROTO_3]
  SETTABLEKS R7 R6 K17 ["setRequestHandler"]
  DUPCLOSURE R7 K18 [PROTO_4]
  SETTABLEKS R7 R6 K19 ["setNotificationHandler"]
  DUPCLOSURE R7 K20 [PROTO_5]
  SETTABLEKS R7 R6 K21 ["connect"]
  DUPCLOSURE R7 K22 [PROTO_6]
  SETTABLEKS R7 R6 K23 ["close"]
  DUPCLOSURE R7 K24 [PROTO_7]
  SETTABLEKS R7 R6 K25 ["assertCapabilityForMethod"]
  DUPCLOSURE R7 K26 [PROTO_8]
  SETTABLEKS R7 R6 K27 ["assertNotificationCapability"]
  DUPCLOSURE R7 K28 [PROTO_9]
  SETTABLEKS R7 R6 K29 ["assertRequestHandlerCapability"]
  DUPCLOSURE R7 K30 [PROTO_10]
  CAPTURE VAL R5
  SETTABLEKS R7 R6 K31 ["registerCapabilities"]
  DUPCLOSURE R7 K32 [PROTO_11]
  CAPTURE VAL R4
  SETTABLEKS R7 R6 K33 ["_oninitialize"]
  DUPCLOSURE R7 K34 [PROTO_12]
  SETTABLEKS R7 R6 K35 ["_oninitializedNotification"]
  DUPCLOSURE R7 K36 [PROTO_13]
  SETTABLEKS R7 R6 K37 ["getClientCapabilities"]
  DUPCLOSURE R7 K38 [PROTO_14]
  SETTABLEKS R7 R6 K39 ["getClientVersion"]
  DUPCLOSURE R7 K40 [PROTO_15]
  SETTABLEKS R7 R6 K41 ["getCapabilities"]
  DUPCLOSURE R7 K42 [PROTO_16]
  SETTABLEKS R7 R6 K43 ["ping"]
  DUPCLOSURE R7 K44 [PROTO_17]
  SETTABLEKS R7 R6 K45 ["createMessage"]
  DUPCLOSURE R7 K46 [PROTO_18]
  SETTABLEKS R7 R6 K47 ["listRoots"]
  DUPCLOSURE R7 K48 [PROTO_19]
  SETTABLEKS R7 R6 K49 ["sendLoggingMessage"]
  DUPCLOSURE R7 K50 [PROTO_20]
  SETTABLEKS R7 R6 K51 ["sendResourceUpdated"]
  DUPCLOSURE R7 K52 [PROTO_21]
  SETTABLEKS R7 R6 K53 ["sendResourceListChanged"]
  DUPCLOSURE R7 K54 [PROTO_22]
  SETTABLEKS R7 R6 K55 ["sendToolListChanged"]
  DUPCLOSURE R7 K56 [PROTO_23]
  SETTABLEKS R7 R6 K57 ["sendPromptListChanged"]
  RETURN R6 1
