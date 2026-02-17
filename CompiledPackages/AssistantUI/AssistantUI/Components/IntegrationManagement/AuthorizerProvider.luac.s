PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["clientInformation"]
  RETURN R0 1

PROTO_1:
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["clientInformation"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["metadata"]
  RETURN R0 1

PROTO_3:
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["metadata"]
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["tokens"]
  RETURN R0 1

PROTO_5:
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["tokens"]
  RETURN R0 0

PROTO_6:
  JUMPIFNOTEQKS R0 K0 ["all"] [+14]
  GETUPVAL R1 0
  LOADNIL R2
  SETTABLEKS R2 R1 K1 ["clientInformation"]
  GETUPVAL R1 0
  LOADNIL R2
  SETTABLEKS R2 R1 K2 ["tokens"]
  GETUPVAL R1 0
  LOADNIL R2
  SETTABLEKS R2 R1 K3 ["metadata"]
  RETURN R0 0
  JUMPIFNOTEQKS R0 K2 ["tokens"] [+5]
  GETUPVAL R1 0
  LOADNIL R2
  SETTABLEKS R2 R1 K2 ["tokens"]
  RETURN R0 0

PROTO_7:
  DUPTABLE R2 K10 [{"clientRegistrationConfig", "getClientInformation", "saveClientInformation", "getMetadata", "saveMetadata", "getTokens", "saveTokens", "redirectUrl", "redirectToAuthorization", "invalidateCredentials"}]
  DUPTABLE R3 K16 [{"client_name", "redirect_uris", "grant_types", "response_types", "token_endpoint_auth_method"}]
  LOADK R4 K17 ["Roblox Assistant"]
  SETTABLEKS R4 R3 K11 ["client_name"]
  NEWTABLE R4 0 1
  LOADK R5 K18 ["roblox-studio-auth://callback/"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K12 ["redirect_uris"]
  NEWTABLE R4 0 2
  LOADK R5 K19 ["authorization_code"]
  LOADK R6 K20 ["refresh_token"]
  SETLIST R4 R5 2 [1]
  SETTABLEKS R4 R3 K13 ["grant_types"]
  NEWTABLE R4 0 1
  LOADK R5 K21 ["code"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K14 ["response_types"]
  LOADK R4 K22 ["none"]
  SETTABLEKS R4 R3 K15 ["token_endpoint_auth_method"]
  SETTABLEKS R3 R2 K0 ["clientRegistrationConfig"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  SETTABLEKS R3 R2 K1 ["getClientInformation"]
  NEWCLOSURE R3 P1
  CAPTURE VAL R0
  SETTABLEKS R3 R2 K2 ["saveClientInformation"]
  NEWCLOSURE R3 P2
  CAPTURE VAL R0
  SETTABLEKS R3 R2 K3 ["getMetadata"]
  NEWCLOSURE R3 P3
  CAPTURE VAL R0
  SETTABLEKS R3 R2 K4 ["saveMetadata"]
  NEWCLOSURE R3 P4
  CAPTURE VAL R0
  SETTABLEKS R3 R2 K5 ["getTokens"]
  NEWCLOSURE R3 P5
  CAPTURE VAL R0
  SETTABLEKS R3 R2 K6 ["saveTokens"]
  LOADK R3 K18 ["roblox-studio-auth://callback/"]
  SETTABLEKS R3 R2 K7 ["redirectUrl"]
  SETTABLEKS R1 R2 K8 ["redirectToAuthorization"]
  NEWCLOSURE R3 P6
  CAPTURE VAL R0
  SETTABLEKS R3 R2 K9 ["invalidateCredentials"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["ModelContextProtocol"]
  CALL R1 1 1
  DUPCLOSURE R2 K8 [PROTO_7]
  DUPTABLE R3 K10 [{"createProvider"}]
  SETTABLEKS R2 R3 K9 ["createProvider"]
  RETURN R3 1
