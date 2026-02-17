PROTO_0:
  LOADB R1 1
  RETURN R1 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["isFatal"]
  MOVE R2 R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_2:
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
  NEWTABLE R3 16 0
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
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K9 ["new"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K16 ["Disconnected"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K17 ["_status"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K18 ["_disabledTools"]
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K9 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K19 ["onToolDisabled"]
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K9 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K20 ["onToolEnabled"]
  RETURN R2 1

PROTO_3:
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

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["is"]
  MOVE R3 R1
  CALL R2 1 1
  JUMPIFNOT R2 [+7]
  GETTABLEKS R2 R0 K1 ["_status"]
  MOVE R4 R1
  NAMECALL R2 R2 K2 ["set"]
  CALL R2 2 0
  RETURN R0 0
  GETTABLEKS R2 R0 K1 ["_status"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["UnexpectedError"]
  NAMECALL R2 R2 K2 ["set"]
  CALL R2 2 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["_status"]
  RETURN R1 1

PROTO_6:
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  JUMPIFNOT R1 [+15]
  GETUPVAL R1 1
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["_setStatus"]
  CALL R1 2 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["_protocol"]
  NAMECALL R1 R1 K2 ["close"]
  CALL R1 1 1
  DUPCLOSURE R3 K3 [PROTO_6]
  NAMECALL R1 R1 K4 ["catch"]
  CALL R1 2 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K5 ["reject"]
  MOVE R2 R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_8:
  NEWCLOSURE R5 P0
  CAPTURE VAL R2
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  NAMECALL R3 R1 K0 ["catch"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_9:
  GETTABLEKS R5 R0 K0 ["_protocol"]
  MOVE R7 R1
  MOVE R8 R2
  NAMECALL R5 R5 K1 ["request"]
  CALL R5 3 1
  GETUPVAL R6 0
  NAMECALL R3 R0 K2 ["_updateStatusOnError"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_10:
  GETTABLEKS R5 R0 K0 ["_protocol"]
  MOVE R7 R1
  MOVE R8 R2
  NAMECALL R5 R5 K1 ["notification"]
  CALL R5 3 1
  GETUPVAL R6 0
  NAMECALL R3 R0 K2 ["_updateStatusOnError"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_11:
  DUPTABLE R2 K2 [{"method", "params"}]
  LOADK R3 K3 ["initialize"]
  SETTABLEKS R3 R2 K0 ["method"]
  DUPTABLE R3 K7 [{"protocolVersion", "capabilities", "clientInfo"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K8 ["LATEST_PROTOCOL_VERSION"]
  SETTABLEKS R4 R3 K4 ["protocolVersion"]
  GETTABLEKS R4 R0 K9 ["_clientCapabilities"]
  SETTABLEKS R4 R3 K5 ["capabilities"]
  GETTABLEKS R4 R0 K10 ["_clientInfo"]
  SETTABLEKS R4 R3 K6 ["clientInfo"]
  SETTABLEKS R3 R2 K1 ["params"]
  GETTABLEKS R3 R0 K11 ["_protocol"]
  MOVE R5 R2
  MOVE R6 R1
  NAMECALL R3 R3 K12 ["request"]
  CALL R3 3 1
  NAMECALL R3 R3 K13 ["await"]
  CALL R3 1 2
  JUMPIF R3 [+1]
  RETURN R4 1
  LOADB R5 0
  GETUPVAL R9 0
  GETTABLEKS R6 R9 K14 ["SUPPORTED_PROTOCOL_VERSIONS"]
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  GETTABLEKS R11 R4 K4 ["protocolVersion"]
  JUMPIFNOTEQ R11 R10 [+3]
  LOADB R5 1
  JUMP [+2]
  FORGLOOP R6 2 [-7]
  JUMPIF R5 [+4]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K15 ["UnsupportedProtocolVersion"]
  RETURN R6 1
  GETTABLEKS R6 R4 K5 ["capabilities"]
  SETTABLEKS R6 R0 K16 ["_serverCapabilities"]
  GETTABLEKS R6 R4 K17 ["serverInfo"]
  SETTABLEKS R6 R0 K18 ["_serverInfo"]
  GETTABLEKS R6 R4 K19 ["instructions"]
  SETTABLEKS R6 R0 K20 ["_instructions"]
  LOADNIL R6
  RETURN R6 1

PROTO_12:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["_initializeAsync"]
  CALL R0 2 1
  JUMPIFNOT R0 [+6]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K1 ["reject"]
  MOVE R2 R0
  CALL R1 1 -1
  RETURN R1 -1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["_protocol"]
  DUPTABLE R3 K4 [{"method"}]
  LOADK R4 K5 ["notifications/initialized"]
  SETTABLEKS R4 R3 K3 ["method"]
  NAMECALL R1 R1 K6 ["notification"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_13:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["Connected"]
  NAMECALL R0 R0 K1 ["_setStatus"]
  CALL R0 2 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["connect"]
  GETTABLEKS R4 R0 K1 ["_protocol"]
  MOVE R5 R1
  CALL R3 2 1
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE UPVAL U1
  NAMECALL R3 R3 K2 ["andThen"]
  CALL R3 2 1
  NEWCLOSURE R5 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  NAMECALL R3 R3 K2 ["andThen"]
  CALL R3 2 1
  MOVE R6 R3
  GETUPVAL R7 3
  NAMECALL R4 R0 K3 ["_updateStatusOnError"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_15:
  GETTABLEKS R1 R0 K0 ["_serverCapabilities"]
  RETURN R1 1

PROTO_16:
  GETTABLEKS R1 R0 K0 ["_serverInfo"]
  RETURN R1 1

PROTO_17:
  GETTABLEKS R1 R0 K0 ["_instructions"]
  RETURN R1 1

PROTO_18:
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

PROTO_19:
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

PROTO_20:
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

PROTO_21:
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

PROTO_22:
  DUPTABLE R4 K1 [{"method"}]
  LOADK R5 K2 ["ping"]
  SETTABLEKS R5 R4 K0 ["method"]
  MOVE R5 R1
  NAMECALL R2 R0 K3 ["doRequest"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_23:
  DUPTABLE R5 K2 [{"method", "params"}]
  LOADK R6 K3 ["completion/complete"]
  SETTABLEKS R6 R5 K0 ["method"]
  SETTABLEKS R1 R5 K1 ["params"]
  MOVE R6 R2
  NAMECALL R3 R0 K4 ["doRequest"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_24:
  DUPTABLE R5 K2 [{"method", "params"}]
  LOADK R6 K3 ["logging/setLevel"]
  SETTABLEKS R6 R5 K0 ["method"]
  DUPTABLE R6 K5 [{"level"}]
  SETTABLEKS R1 R6 K4 ["level"]
  SETTABLEKS R6 R5 K1 ["params"]
  MOVE R6 R2
  NAMECALL R3 R0 K6 ["doRequest"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_25:
  DUPTABLE R5 K2 [{"method", "params"}]
  LOADK R6 K3 ["prompts/get"]
  SETTABLEKS R6 R5 K0 ["method"]
  SETTABLEKS R1 R5 K1 ["params"]
  MOVE R6 R2
  NAMECALL R3 R0 K4 ["doRequest"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_26:
  DUPTABLE R5 K2 [{"method", "params"}]
  LOADK R6 K3 ["prompts/list"]
  SETTABLEKS R6 R5 K0 ["method"]
  SETTABLEKS R1 R5 K1 ["params"]
  MOVE R6 R2
  NAMECALL R3 R0 K4 ["doRequest"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_27:
  DUPTABLE R5 K2 [{"method", "params"}]
  LOADK R6 K3 ["resources/list"]
  SETTABLEKS R6 R5 K0 ["method"]
  SETTABLEKS R1 R5 K1 ["params"]
  MOVE R6 R2
  NAMECALL R3 R0 K4 ["doRequest"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_28:
  DUPTABLE R5 K2 [{"method", "params"}]
  LOADK R6 K3 ["resources/templates/list"]
  SETTABLEKS R6 R5 K0 ["method"]
  SETTABLEKS R1 R5 K1 ["params"]
  MOVE R6 R2
  NAMECALL R3 R0 K4 ["doRequest"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_29:
  DUPTABLE R5 K2 [{"method", "params"}]
  LOADK R6 K3 ["resources/read"]
  SETTABLEKS R6 R5 K0 ["method"]
  SETTABLEKS R1 R5 K1 ["params"]
  MOVE R6 R2
  NAMECALL R3 R0 K4 ["doRequest"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_30:
  DUPTABLE R5 K2 [{"method", "params"}]
  LOADK R6 K3 ["resources/subscribe"]
  SETTABLEKS R6 R5 K0 ["method"]
  SETTABLEKS R1 R5 K1 ["params"]
  MOVE R6 R2
  NAMECALL R3 R0 K4 ["doRequest"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_31:
  DUPTABLE R5 K2 [{"method", "params"}]
  LOADK R6 K3 ["resources/unsubscribe"]
  SETTABLEKS R6 R5 K0 ["method"]
  SETTABLEKS R1 R5 K1 ["params"]
  MOVE R6 R2
  NAMECALL R3 R0 K4 ["doRequest"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_32:
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+19]
  MOVE R3 R1
  JUMPIFNOT R3 [+2]
  GETTABLEKS R3 R1 K0 ["name"]
  JUMPIFNOT R3 [+14]
  MOVE R6 R3
  NAMECALL R4 R0 K1 ["isToolDisabled"]
  CALL R4 2 1
  JUMPIFNOT R4 [+9]
  GETIMPORT R4 K3 [error]
  LOADK R6 K4 ["Tool '%*' is disabled"]
  MOVE R8 R3
  NAMECALL R6 R6 K5 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  CALL R4 1 0
  DUPTABLE R5 K8 [{"method", "params"}]
  LOADK R6 K9 ["tools/call"]
  SETTABLEKS R6 R5 K6 ["method"]
  SETTABLEKS R1 R5 K7 ["params"]
  MOVE R6 R2
  NAMECALL R3 R0 K10 ["doRequest"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_33:
  DUPTABLE R5 K2 [{"method", "params"}]
  LOADK R6 K3 ["tools/list"]
  SETTABLEKS R6 R5 K0 ["method"]
  SETTABLEKS R1 R5 K1 ["params"]
  MOVE R6 R2
  NAMECALL R3 R0 K4 ["doRequest"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_34:
  DUPTABLE R3 K1 [{"method"}]
  LOADK R4 K2 ["notifications/roots/list_changed"]
  SETTABLEKS R4 R3 K0 ["method"]
  NAMECALL R1 R0 K3 ["doNotification"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_35:
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIF R2 [+1]
  RETURN R0 0
  GETTABLEKS R3 R0 K0 ["_disabledTools"]
  GETTABLE R2 R3 R1
  JUMPIF R2 [+10]
  GETTABLEKS R2 R0 K0 ["_disabledTools"]
  LOADB R3 1
  SETTABLE R3 R2 R1
  GETTABLEKS R2 R0 K1 ["onToolDisabled"]
  MOVE R4 R1
  NAMECALL R2 R2 K2 ["Fire"]
  CALL R2 2 0
  RETURN R0 0

PROTO_36:
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIF R2 [+1]
  RETURN R0 0
  GETTABLEKS R3 R0 K0 ["_disabledTools"]
  GETTABLE R2 R3 R1
  JUMPIFNOT R2 [+10]
  GETTABLEKS R2 R0 K0 ["_disabledTools"]
  LOADNIL R3
  SETTABLE R3 R2 R1
  GETTABLEKS R2 R0 K1 ["onToolEnabled"]
  MOVE R4 R1
  NAMECALL R2 R2 K2 ["Fire"]
  CALL R2 2 0
  RETURN R0 0

PROTO_37:
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIF R2 [+2]
  LOADB R2 0
  RETURN R2 1
  GETTABLEKS R4 R0 K0 ["_disabledTools"]
  GETTABLE R3 R4 R1
  JUMPIFEQKB R3 TRUE [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_38:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIF R1 [+3]
  NEWTABLE R1 0 0
  RETURN R1 1
  NEWTABLE R1 0 0
  GETTABLEKS R2 R0 K0 ["_disabledTools"]
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  FASTCALL2 TABLE_INSERT R1 R5 [+5]
  MOVE R8 R1
  MOVE R9 R5
  GETIMPORT R7 K3 [table.insert]
  CALL R7 2 0
  FORGLOOP R2 2 [-8]
  RETURN R1 1

PROTO_39:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+4]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K0 ["_disabledTools"]
  GETTABLEKS R1 R0 K1 ["_protocol"]
  NAMECALL R1 R1 K2 ["close"]
  CALL R1 1 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ModelContextProtocol"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R2 R0 K6 ["ClientConnectionStatus"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K7 ["Util"]
  GETTABLEKS R3 R4 K8 ["Observable"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K9 ["Parent"]
  GETTABLEKS R4 R5 K10 ["Promise"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R0 K11 ["Protocol"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K9 ["Parent"]
  GETTABLEKS R6 R7 K12 ["Signal"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R0 K13 ["Transport"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R0 K14 ["Types"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R0 K7 ["Util"]
  GETTABLEKS R9 R10 K15 ["mergeCapabilities"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R0 K16 ["Flags"]
  GETTABLEKS R10 R11 K17 ["FFlagMCPEnableToolDisabling"]
  CALL R9 1 1
  NEWTABLE R10 64 0
  SETTABLEKS R10 R10 K18 ["__index"]
  DUPCLOSURE R11 K19 [PROTO_0]
  DUPCLOSURE R12 K20 [PROTO_1]
  CAPTURE VAL R1
  DUPCLOSURE R13 K21 [PROTO_2]
  CAPTURE VAL R10
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R5
  SETTABLEKS R13 R10 K22 ["new"]
  DUPCLOSURE R13 K23 [PROTO_3]
  CAPTURE VAL R8
  SETTABLEKS R13 R10 K24 ["registerCapabilities"]
  DUPCLOSURE R13 K25 [PROTO_4]
  CAPTURE VAL R1
  SETTABLEKS R13 R10 K26 ["_setStatus"]
  DUPCLOSURE R13 K27 [PROTO_5]
  SETTABLEKS R13 R10 K28 ["getStatus"]
  DUPCLOSURE R13 K29 [PROTO_8]
  CAPTURE VAL R3
  SETTABLEKS R13 R10 K30 ["_updateStatusOnError"]
  DUPCLOSURE R13 K31 [PROTO_9]
  CAPTURE VAL R12
  SETTABLEKS R13 R10 K32 ["doRequest"]
  DUPCLOSURE R13 K33 [PROTO_10]
  CAPTURE VAL R12
  SETTABLEKS R13 R10 K34 ["doNotification"]
  DUPCLOSURE R13 K35 [PROTO_11]
  CAPTURE VAL R7
  CAPTURE VAL R1
  SETTABLEKS R13 R10 K36 ["_initializeAsync"]
  DUPCLOSURE R13 K37 [PROTO_14]
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R11
  SETTABLEKS R13 R10 K38 ["connect"]
  DUPCLOSURE R13 K39 [PROTO_15]
  SETTABLEKS R13 R10 K40 ["getServerCapabilities"]
  DUPCLOSURE R13 K41 [PROTO_16]
  SETTABLEKS R13 R10 K42 ["getServerInfo"]
  DUPCLOSURE R13 K43 [PROTO_17]
  SETTABLEKS R13 R10 K44 ["getInstructions"]
  DUPCLOSURE R13 K45 [PROTO_18]
  SETTABLEKS R13 R10 K46 ["assertCapability"]
  DUPCLOSURE R13 K47 [PROTO_19]
  SETTABLEKS R13 R10 K48 ["assertCapabilityForMethod"]
  DUPCLOSURE R13 K49 [PROTO_20]
  SETTABLEKS R13 R10 K50 ["assertNotificationCapability"]
  DUPCLOSURE R13 K51 [PROTO_21]
  SETTABLEKS R13 R10 K52 ["assertRequestHandlerCapability"]
  DUPCLOSURE R13 K53 [PROTO_22]
  SETTABLEKS R13 R10 K54 ["ping"]
  DUPCLOSURE R13 K55 [PROTO_23]
  SETTABLEKS R13 R10 K56 ["complete"]
  DUPCLOSURE R13 K57 [PROTO_24]
  SETTABLEKS R13 R10 K58 ["setLoggingLevel"]
  DUPCLOSURE R13 K59 [PROTO_25]
  SETTABLEKS R13 R10 K60 ["getPrompt"]
  DUPCLOSURE R13 K61 [PROTO_26]
  SETTABLEKS R13 R10 K62 ["listPrompts"]
  DUPCLOSURE R13 K63 [PROTO_27]
  SETTABLEKS R13 R10 K64 ["listResources"]
  DUPCLOSURE R13 K65 [PROTO_28]
  SETTABLEKS R13 R10 K66 ["listResourceTemplates"]
  DUPCLOSURE R13 K67 [PROTO_29]
  SETTABLEKS R13 R10 K68 ["readResource"]
  DUPCLOSURE R13 K69 [PROTO_30]
  SETTABLEKS R13 R10 K70 ["subscribeResource"]
  DUPCLOSURE R13 K71 [PROTO_31]
  SETTABLEKS R13 R10 K72 ["unsubscribeResource"]
  DUPCLOSURE R13 K73 [PROTO_32]
  CAPTURE VAL R9
  SETTABLEKS R13 R10 K74 ["callTool"]
  DUPCLOSURE R13 K75 [PROTO_33]
  SETTABLEKS R13 R10 K76 ["listTools"]
  DUPCLOSURE R13 K77 [PROTO_34]
  SETTABLEKS R13 R10 K78 ["sendRootsListChanged"]
  DUPCLOSURE R13 K79 [PROTO_35]
  CAPTURE VAL R9
  SETTABLEKS R13 R10 K80 ["disableTool"]
  DUPCLOSURE R13 K81 [PROTO_36]
  CAPTURE VAL R9
  SETTABLEKS R13 R10 K82 ["enableTool"]
  DUPCLOSURE R13 K83 [PROTO_37]
  CAPTURE VAL R9
  SETTABLEKS R13 R10 K84 ["isToolDisabled"]
  DUPCLOSURE R13 K85 [PROTO_38]
  CAPTURE VAL R9
  SETTABLEKS R13 R10 K86 ["getDisabledTools"]
  DUPCLOSURE R13 K87 [PROTO_39]
  CAPTURE VAL R9
  SETTABLEKS R13 R10 K88 ["close"]
  RETURN R10 1
