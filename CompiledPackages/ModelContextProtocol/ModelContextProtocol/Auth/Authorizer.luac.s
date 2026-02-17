PROTO_0:
  DUPTABLE R4 K15 [{"_serverUrl", "_environment", "_scope", "_resourceMetadataUrl", "_resource", "_fetchFn", "_provider", "_metadata", "_clientInformation", "_redirectUri", "_authorizationServerUrl", "_state", "_codeVerifier", "_authorizationFinishPromiseResolve", "authorizationFinishPromise"}]
  GETTABLEKS R5 R2 K16 ["serverUrl"]
  SETTABLEKS R5 R4 K0 ["_serverUrl"]
  SETTABLEKS R1 R4 K1 ["_environment"]
  GETTABLEKS R5 R2 K17 ["scope"]
  SETTABLEKS R5 R4 K2 ["_scope"]
  GETTABLEKS R5 R2 K18 ["resourceMetadataUrl"]
  SETTABLEKS R5 R4 K3 ["_resourceMetadataUrl"]
  GETTABLEKS R5 R2 K19 ["resource"]
  SETTABLEKS R5 R4 K4 ["_resource"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K20 ["makeFetchFn"]
  GETTABLEKS R6 R1 K21 ["httpRequest"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K5 ["_fetchFn"]
  SETTABLEKS R0 R4 K6 ["_provider"]
  GETTABLEKS R5 R0 K22 ["getMetadata"]
  CALL R5 0 1
  SETTABLEKS R5 R4 K7 ["_metadata"]
  GETTABLEKS R5 R0 K23 ["getClientInformation"]
  CALL R5 0 1
  SETTABLEKS R5 R4 K8 ["_clientInformation"]
  GETTABLEKS R5 R0 K24 ["redirectUrl"]
  SETTABLEKS R5 R4 K9 ["_redirectUri"]
  GETTABLEKS R5 R2 K16 ["serverUrl"]
  SETTABLEKS R5 R4 K10 ["_authorizationServerUrl"]
  LOADNIL R5
  SETTABLEKS R5 R4 K11 ["_state"]
  LOADNIL R5
  SETTABLEKS R5 R4 K12 ["_codeVerifier"]
  LOADNIL R5
  SETTABLEKS R5 R4 K13 ["_authorizationFinishPromiseResolve"]
  LOADNIL R5
  SETTABLEKS R5 R4 K14 ["authorizationFinishPromise"]
  GETUPVAL R5 1
  FASTCALL2 SETMETATABLE R4 R5 [+3]
  GETIMPORT R3 K26 [setmetatable]
  CALL R3 2 1
  RETURN R3 1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["_clientInformation"]
  JUMPIFNOT R2 [+8]
  GETTABLEKS R4 R0 K0 ["_clientInformation"]
  GETTABLEKS R3 R4 K1 ["client_secret"]
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  JUMPIF R2 [+2]
  LOADK R3 K2 ["none"]
  RETURN R3 1
  LENGTH R3 R1
  JUMPIFNOTEQKN R3 K3 [0] [+3]
  LOADK R3 K4 ["client_secret_post"]
  RETURN R3 1
  GETIMPORT R3 K7 [table.find]
  MOVE R4 R1
  LOADK R5 K8 ["client_secret_basic"]
  CALL R3 2 1
  JUMPIFNOT R3 [+2]
  LOADK R3 K8 ["client_secret_basic"]
  RETURN R3 1
  GETIMPORT R3 K7 [table.find]
  MOVE R4 R1
  LOADK R5 K4 ["client_secret_post"]
  CALL R3 2 1
  JUMPIFNOT R3 [+2]
  LOADK R3 K4 ["client_secret_post"]
  RETURN R3 1
  GETIMPORT R3 K7 [table.find]
  MOVE R4 R1
  LOADK R5 K2 ["none"]
  CALL R3 2 1
  JUMPIFNOT R3 [+2]
  LOADK R3 K2 ["none"]
  RETURN R3 1
  GETUPVAL R3 0
  LOADK R5 K9 ["No client authentication method found, using client_secret_post as fallback"]
  NAMECALL R3 R3 K10 ["warn"]
  CALL R3 2 0
  LOADK R3 K4 ["client_secret_post"]
  RETURN R3 1

PROTO_2:
  JUMPIF R2 [+4]
  GETIMPORT R4 K1 [error]
  LOADK R5 K2 ["client_secret_basic authentication requires a client_secret"]
  CALL R4 1 0
  GETTABLEKS R4 R0 K3 ["base64Encode"]
  LOADK R6 K4 ["%*:%*"]
  MOVE R8 R1
  MOVE R9 R2
  NAMECALL R6 R6 K5 ["format"]
  CALL R6 3 1
  MOVE R5 R6
  CALL R4 1 1
  LOADK R7 K6 ["Authorization"]
  LOADK R9 K7 ["Basic %*"]
  MOVE R11 R4
  NAMECALL R9 R9 K5 ["format"]
  CALL R9 2 1
  MOVE R8 R9
  NAMECALL R5 R3 K8 ["set"]
  CALL R5 3 0
  RETURN R0 0

PROTO_3:
  LOADK R5 K0 ["client_id"]
  MOVE R6 R0
  NAMECALL R3 R2 K1 ["set"]
  CALL R3 3 0
  JUMPIFNOT R1 [+5]
  LOADK R5 K2 ["client_secret"]
  MOVE R6 R1
  NAMECALL R3 R2 K1 ["set"]
  CALL R3 3 0
  RETURN R0 0

PROTO_4:
  LOADK R4 K0 ["client_id"]
  MOVE R5 R0
  NAMECALL R2 R1 K1 ["set"]
  CALL R2 3 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R5 R2 K0 ["client_id"]
  GETTABLEKS R6 R2 K1 ["client_secret"]
  JUMPIFNOTEQKS R1 K2 ["client_secret_basic"] [+29]
  GETTABLEKS R7 R0 K3 ["_environment"]
  JUMPIF R6 [+4]
  GETIMPORT R8 K5 [error]
  LOADK R9 K6 ["client_secret_basic authentication requires a client_secret"]
  CALL R8 1 0
  GETTABLEKS R8 R7 K7 ["base64Encode"]
  LOADK R10 K8 ["%*:%*"]
  MOVE R12 R5
  MOVE R13 R6
  NAMECALL R10 R10 K9 ["format"]
  CALL R10 3 1
  MOVE R9 R10
  CALL R8 1 1
  LOADK R11 K10 ["Authorization"]
  LOADK R13 K11 ["Basic %*"]
  MOVE R15 R8
  NAMECALL R13 R13 K9 ["format"]
  CALL R13 2 1
  MOVE R12 R13
  NAMECALL R9 R3 K12 ["set"]
  CALL R9 3 0
  RETURN R0 0
  JUMPIFNOTEQKS R1 K13 ["client_secret_post"] [+13]
  LOADK R9 K0 ["client_id"]
  MOVE R10 R5
  NAMECALL R7 R4 K12 ["set"]
  CALL R7 3 0
  JUMPIFNOT R6 [+27]
  LOADK R9 K1 ["client_secret"]
  MOVE R10 R6
  NAMECALL R7 R4 K12 ["set"]
  CALL R7 3 0
  RETURN R0 0
  JUMPIFNOTEQKS R1 K14 ["none"] [+7]
  LOADK R9 K0 ["client_id"]
  MOVE R10 R5
  NAMECALL R7 R4 K12 ["set"]
  CALL R7 3 0
  RETURN R0 0
  GETIMPORT R7 K5 [error]
  LOADK R9 K15 ["Unsupported client authentication method: %*"]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R12 R1
  GETIMPORT R11 K17 [tostring]
  CALL R11 1 1
  NAMECALL R9 R9 K9 ["format"]
  CALL R9 2 1
  MOVE R8 R9
  CALL R7 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["decode"]
  GETUPVAL R1 1
  CALL R0 1 -1
  RETURN R0 -1

PROTO_7:
  FASTCALL1 TYPE R0 [+3]
  MOVE R3 R0
  GETIMPORT R2 K1 [type]
  CALL R2 1 1
  JUMPIFNOTEQKS R2 K2 ["table"] [+4]
  GETTABLEKS R1 R0 K3 ["status"]
  JUMP [+1]
  LOADNIL R1
  FASTCALL1 TYPE R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K1 [type]
  CALL R3 1 1
  JUMPIFNOTEQKS R3 K2 ["table"] [+4]
  GETTABLEKS R2 R0 K4 ["text"]
  JUMP [+1]
  MOVE R2 R0
  GETIMPORT R3 K6 [pcall]
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R2
  CALL R3 1 2
  JUMPIFNOT R3 [+16]
  GETTABLEKS R5 R4 K7 ["error"]
  JUMPIFNOT R5 [+13]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K8 ["OAuthError"]
  GETTABLEKS R5 R6 K9 ["new"]
  GETTABLEKS R6 R4 K7 ["error"]
  GETTABLEKS R7 R4 K10 ["error_description"]
  GETTABLEKS R8 R4 K11 ["error_uri"]
  CALL R5 3 -1
  RETURN R5 -1
  LOADK R6 K12 ["HTTP %*: Invalid OAuth error response: %*. Raw body: %*"]
  MOVE R8 R1
  FASTCALL1 TOSTRING R4 [+3]
  MOVE R10 R4
  GETIMPORT R9 K14 [tostring]
  CALL R9 1 1
  MOVE R10 R2
  NAMECALL R6 R6 K15 ["format"]
  CALL R6 4 1
  MOVE R5 R6
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K8 ["OAuthError"]
  GETTABLEKS R6 R7 K9 ["new"]
  LOADK R7 K16 ["server_error"]
  MOVE R8 R5
  CALL R6 2 -1
  RETURN R6 -1

PROTO_8:
  GETTABLEKS R2 R1 K0 ["metadata"]
  GETTABLEKS R3 R1 K1 ["clientRegistrationConfig"]
  GETTABLEKS R4 R1 K2 ["fetchFn"]
  LOADNIL R5
  JUMPIFNOT R2 [+6]
  GETTABLEKS R6 R2 K3 ["registration_endpoint"]
  JUMPIFNOT R6 [+3]
  GETTABLEKS R5 R2 K3 ["registration_endpoint"]
  JUMP [+6]
  LOADK R6 K4 ["%*/register"]
  MOVE R8 R0
  NAMECALL R6 R6 K5 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  MOVE R6 R4
  MOVE R7 R5
  DUPTABLE R8 K9 [{"method", "headers", "body"}]
  LOADK R9 K10 ["POST"]
  SETTABLEKS R9 R8 K6 ["method"]
  NEWTABLE R9 1 0
  LOADK R10 K11 ["application/json"]
  SETTABLEKS R10 R9 K12 ["Content-Type"]
  SETTABLEKS R9 R8 K7 ["headers"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K13 ["encode"]
  MOVE R10 R3
  CALL R9 1 1
  SETTABLEKS R9 R8 K8 ["body"]
  CALL R6 2 1
  GETTABLEKS R7 R6 K14 ["ok"]
  JUMPIF R7 [+6]
  GETIMPORT R7 K16 [error]
  GETUPVAL R8 1
  MOVE R9 R6
  CALL R8 1 -1
  CALL R7 -1 0
  NAMECALL R7 R6 K17 ["getJson"]
  CALL R7 1 -1
  RETURN R7 -1

PROTO_9:
  GETTABLEKS R1 R0 K0 ["_metadata"]
  GETTABLEKS R2 R0 K1 ["_clientInformation"]
  GETTABLEKS R3 R0 K2 ["_redirectUri"]
  GETTABLEKS R4 R0 K3 ["_scope"]
  GETTABLEKS R5 R0 K4 ["_state"]
  GETTABLEKS R6 R0 K5 ["_resource"]
  LOADNIL R7
  JUMPIFNOT R1 [+31]
  GETTABLEKS R7 R1 K6 ["authorization_endpoint"]
  GETIMPORT R8 K9 [table.find]
  GETTABLEKS R9 R1 K10 ["response_types_supported"]
  JUMPIF R9 [+2]
  NEWTABLE R9 0 0
  LOADK R10 K11 ["code"]
  CALL R8 2 1
  JUMPIF R8 [+4]
  GETIMPORT R8 K13 [error]
  LOADK R9 K14 ["Incompatible auth server: does not support response type code"]
  CALL R8 1 0
  GETTABLEKS R8 R1 K15 ["code_challenge_methods_supported"]
  JUMPIFNOT R8 [+7]
  GETIMPORT R8 K9 [table.find]
  GETTABLEKS R9 R1 K15 ["code_challenge_methods_supported"]
  LOADK R10 K16 ["S256"]
  CALL R8 2 1
  JUMPIF R8 [+12]
  GETIMPORT R8 K13 [error]
  LOADK R9 K17 ["Incompatible auth server: does not support code challenge method S256"]
  CALL R8 1 0
  JUMP [+7]
  LOADK R8 K18 ["%*/authorize"]
  GETTABLEKS R10 R0 K19 ["_authorizationServerUrl"]
  NAMECALL R8 R8 K20 ["format"]
  CALL R8 2 1
  MOVE R7 R8
  GETTABLEKS R9 R0 K21 ["_environment"]
  GETTABLEKS R8 R9 K22 ["generatePKCEChallenge"]
  CALL R8 0 1
  GETTABLEKS R9 R8 K23 ["code_verifier"]
  GETTABLEKS R10 R8 K24 ["code_challenge"]
  DUPTABLE R11 K29 [{"response_type", "client_id", "code_challenge", "code_challenge_method", "redirect_uri"}]
  LOADK R12 K11 ["code"]
  SETTABLEKS R12 R11 K25 ["response_type"]
  MOVE R12 R2
  JUMPIFNOT R12 [+2]
  GETTABLEKS R12 R2 K26 ["client_id"]
  SETTABLEKS R12 R11 K26 ["client_id"]
  SETTABLEKS R10 R11 K24 ["code_challenge"]
  LOADK R12 K16 ["S256"]
  SETTABLEKS R12 R11 K27 ["code_challenge_method"]
  SETTABLEKS R3 R11 K28 ["redirect_uri"]
  JUMPIFNOT R5 [+2]
  SETTABLEKS R5 R11 K30 ["state"]
  JUMPIFNOT R4 [+2]
  SETTABLEKS R4 R11 K31 ["scope"]
  JUMPIFNOT R6 [+2]
  SETTABLEKS R6 R11 K32 ["resource"]
  NEWTABLE R12 0 0
  MOVE R13 R11
  LOADNIL R14
  LOADNIL R15
  FORGPREP R13
  LOADK R21 K33 ["%*=%*"]
  FASTCALL1 TOSTRING R16 [+3]
  MOVE R24 R16
  GETIMPORT R23 K35 [tostring]
  CALL R23 1 1
  GETUPVAL R24 0
  FASTCALL1 TOSTRING R17 [+3]
  MOVE R27 R17
  GETIMPORT R26 K35 [tostring]
  CALL R26 1 1
  NAMECALL R24 R24 K36 ["UrlEncode"]
  CALL R24 2 1
  NAMECALL R21 R21 K20 ["format"]
  CALL R21 3 1
  MOVE R20 R21
  FASTCALL2 TABLE_INSERT R12 R20 [+4]
  MOVE R19 R12
  GETIMPORT R18 K38 [table.insert]
  CALL R18 2 0
  FORGLOOP R13 2 [-26]
  GETIMPORT R13 K40 [table.concat]
  MOVE R14 R12
  LOADK R15 K41 ["&"]
  CALL R13 2 1
  GETIMPORT R15 K43 [string.find]
  MOVE R16 R7
  LOADK R17 K44 ["?"]
  CALL R15 2 1
  JUMPIFNOT R15 [+2]
  LOADK R14 K41 ["&"]
  JUMP [+1]
  LOADK R14 K44 ["?"]
  LOADK R15 K45 ["%*%*%*"]
  MOVE R17 R7
  MOVE R18 R14
  MOVE R19 R13
  NAMECALL R15 R15 K20 ["format"]
  CALL R15 4 1
  MOVE R7 R15
  DUPTABLE R15 K48 [{"authorizationUrl", "codeVerifier"}]
  SETTABLEKS R7 R15 K46 ["authorizationUrl"]
  SETTABLEKS R9 R15 K47 ["codeVerifier"]
  RETURN R15 1

PROTO_10:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["generateState"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K1 ["_state"]
  NAMECALL R1 R0 K2 ["_prepareAuthorizationUrl"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K3 ["codeVerifier"]
  SETTABLEKS R2 R0 K4 ["_codeVerifier"]
  GETTABLEKS R3 R0 K5 ["_provider"]
  GETTABLEKS R2 R3 K6 ["redirectToAuthorization"]
  JUMPIFNOT R2 [+7]
  GETTABLEKS R3 R0 K5 ["_provider"]
  GETTABLEKS R2 R3 K6 ["redirectToAuthorization"]
  GETTABLEKS R3 R1 K7 ["authorizationUrl"]
  CALL R2 1 0
  RETURN R0 0

PROTO_11:
  GETTABLEKS R3 R0 K0 ["_metadata"]
  GETTABLEKS R4 R0 K1 ["_clientInformation"]
  GETTABLEKS R5 R0 K2 ["_resource"]
  GETTABLEKS R6 R0 K3 ["_fetchFn"]
  LOADNIL R7
  JUMPIFNOT R3 [+6]
  GETTABLEKS R8 R3 K4 ["token_endpoint"]
  JUMPIFNOT R8 [+3]
  GETTABLEKS R7 R3 K4 ["token_endpoint"]
  JUMP [+7]
  LOADK R8 K5 ["%*/token"]
  GETTABLEKS R10 R0 K6 ["_authorizationServerUrl"]
  NAMECALL R8 R8 K7 ["format"]
  CALL R8 2 1
  MOVE R7 R8
  JUMPIFNOT R3 [+19]
  GETTABLEKS R8 R3 K8 ["grant_types_supported"]
  JUMPIFNOT R8 [+16]
  GETIMPORT R8 K11 [table.find]
  GETTABLEKS R9 R3 K8 ["grant_types_supported"]
  MOVE R10 R1
  CALL R8 2 1
  JUMPIF R8 [+9]
  GETIMPORT R8 K13 [error]
  LOADK R10 K14 ["Incompatible auth server: does not support grant type %*"]
  MOVE R12 R1
  NAMECALL R10 R10 K7 ["format"]
  CALL R10 2 1
  MOVE R9 R10
  CALL R8 1 0
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K15 ["createHeaders"]
  CALL R8 0 1
  LOADK R11 K16 ["Content-Type"]
  LOADK R12 K17 ["application/x-www-form-urlencoded"]
  NAMECALL R9 R8 K18 ["set"]
  CALL R9 3 0
  LOADK R11 K19 ["Accept"]
  LOADK R12 K20 ["application/json"]
  NAMECALL R9 R8 K18 ["set"]
  CALL R9 3 0
  LOADK R11 K21 ["grant_type"]
  MOVE R12 R1
  NAMECALL R9 R2 K18 ["set"]
  CALL R9 3 0
  JUMPIFNOT R3 [+3]
  GETTABLEKS R9 R3 K22 ["token_endpoint_auth_methods_supported"]
  JUMPIF R9 [+2]
  NEWTABLE R9 0 0
  MOVE R12 R9
  NAMECALL R10 R0 K23 ["_selectClientAuthMethod"]
  CALL R10 2 1
  FASTCALL2K ASSERT R4 K24 [+5]
  MOVE R12 R4
  LOADK R13 K24 ["clientInformation should be set after registration"]
  GETIMPORT R11 K26 [assert]
  CALL R11 2 0
  MOVE R13 R10
  MOVE R14 R4
  MOVE R15 R8
  MOVE R16 R2
  NAMECALL R11 R0 K27 ["_applyClientAuthentication"]
  CALL R11 5 0
  JUMPIFNOT R5 [+5]
  LOADK R13 K28 ["resource"]
  MOVE R14 R5
  NAMECALL R11 R2 K18 ["set"]
  CALL R11 3 0
  MOVE R11 R6
  MOVE R12 R7
  DUPTABLE R13 K32 [{"method", "headers", "body"}]
  LOADK R14 K33 ["POST"]
  SETTABLEKS R14 R13 K29 ["method"]
  NAMECALL R14 R8 K34 ["getData"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K30 ["headers"]
  NAMECALL R14 R2 K35 ["getFormData"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K31 ["body"]
  CALL R11 2 1
  GETTABLEKS R12 R11 K36 ["ok"]
  JUMPIF R12 [+6]
  GETIMPORT R12 K13 [error]
  GETUPVAL R13 1
  MOVE R14 R11
  CALL R13 1 -1
  CALL R12 -1 0
  NAMECALL R12 R11 K37 ["getJson"]
  CALL R12 1 -1
  RETURN R12 -1

PROTO_12:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createURLSearchParams"]
  CALL R2 0 1
  LOADK R5 K1 ["code"]
  MOVE R6 R1
  NAMECALL R3 R2 K2 ["set"]
  CALL R3 3 0
  GETTABLEKS R3 R0 K3 ["_codeVerifier"]
  JUMPIFNOT R3 [+6]
  LOADK R5 K4 ["code_verifier"]
  GETTABLEKS R6 R0 K3 ["_codeVerifier"]
  NAMECALL R3 R2 K2 ["set"]
  CALL R3 3 0
  LOADK R5 K5 ["redirect_uri"]
  GETTABLEKS R6 R0 K6 ["_redirectUri"]
  NAMECALL R3 R2 K2 ["set"]
  CALL R3 3 0
  LOADK R5 K7 ["authorization_code"]
  MOVE R6 R2
  NAMECALL R3 R0 K8 ["_exchangeOrRefreshAuthorization"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_13:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createURLSearchParams"]
  CALL R2 0 1
  LOADK R5 K1 ["refresh_token"]
  MOVE R6 R1
  NAMECALL R3 R2 K2 ["set"]
  CALL R3 3 0
  LOADK R5 K1 ["refresh_token"]
  MOVE R6 R2
  NAMECALL R3 R0 K3 ["_exchangeOrRefreshAuthorization"]
  CALL R3 3 1
  GETTABLEKS R5 R3 K1 ["refresh_token"]
  OR R4 R5 R1
  SETTABLEKS R4 R3 K1 ["refresh_token"]
  RETURN R3 1

PROTO_14:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["refresh_token"]
  NAMECALL R0 R0 K1 ["_doRefreshAuthorization"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_15:
  GETTABLEKS R3 R0 K0 ["_provider"]
  GETTABLEKS R2 R3 K1 ["getTokens"]
  JUMPIFNOT R2 [+6]
  GETTABLEKS R2 R0 K0 ["_provider"]
  GETTABLEKS R1 R2 K1 ["getTokens"]
  CALL R1 0 1
  JUMPIF R1 [+1]
  LOADNIL R1
  JUMPIFNOT R1 [+21]
  GETTABLEKS R2 R1 K2 ["refresh_token"]
  JUMPIFNOT R2 [+18]
  GETIMPORT R2 K4 [pcall]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CALL R2 1 2
  JUMPIFNOT R2 [+7]
  GETTABLEKS R5 R0 K0 ["_provider"]
  GETTABLEKS R4 R5 K5 ["saveTokens"]
  MOVE R5 R3
  CALL R4 1 0
  RETURN R0 0
  GETIMPORT R4 K7 [error]
  MOVE R5 R3
  CALL R4 1 0
  GETIMPORT R2 K7 [error]
  LOADK R3 K8 ["No refresh token found"]
  CALL R2 1 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["discoverOAuthProtectedResourceMetadata"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["_serverUrl"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["_fetchFn"]
  DUPTABLE R3 K5 [{"resourceMetadataUrl", "protocolVersion"}]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K6 ["_resourceMetadataUrl"]
  SETTABLEKS R4 R3 K3 ["resourceMetadataUrl"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K7 ["LATEST_PROTOCOL_VERSION"]
  SETTABLEKS R4 R3 K4 ["protocolVersion"]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_17:
  LOADNIL R1
  GETIMPORT R2 K1 [pcall]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CALL R2 1 2
  JUMPIFNOT R2 [+15]
  MOVE R1 R3
  GETTABLEKS R4 R1 K2 ["authorization_servers"]
  JUMPIFNOT R4 [+11]
  GETTABLEKS R5 R1 K2 ["authorization_servers"]
  LENGTH R4 R5
  LOADN R5 0
  JUMPIFNOTLT R5 R4 [+6]
  GETTABLEKS R5 R1 K2 ["authorization_servers"]
  GETTABLEN R4 R5 1
  SETTABLEKS R4 R0 K3 ["_authorizationServerUrl"]
  GETTABLEKS R4 R0 K3 ["_authorizationServerUrl"]
  JUMPIF R4 [+4]
  GETTABLEKS R4 R0 K4 ["_serverUrl"]
  SETTABLEKS R4 R0 K3 ["_authorizationServerUrl"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["selectResourceURL"]
  GETTABLEKS R5 R0 K4 ["_serverUrl"]
  GETTABLEKS R6 R0 K6 ["_provider"]
  MOVE R7 R1
  CALL R4 3 1
  SETTABLEKS R4 R0 K7 ["_resource"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K8 ["discoverAuthorizationServerMetadata"]
  GETTABLEKS R5 R0 K3 ["_authorizationServerUrl"]
  GETTABLEKS R6 R0 K9 ["_fetchFn"]
  DUPTABLE R7 K11 [{"protocolVersion"}]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K12 ["LATEST_PROTOCOL_VERSION"]
  SETTABLEKS R8 R7 K10 ["protocolVersion"]
  CALL R4 3 1
  SETTABLEKS R4 R0 K13 ["_metadata"]
  GETTABLEKS R5 R0 K13 ["_metadata"]
  FASTCALL2K ASSERT R5 K14 [+4]
  LOADK R6 K14 ["metadata should be set after discovery"]
  GETIMPORT R4 K16 [assert]
  CALL R4 2 0
  GETTABLEKS R5 R0 K6 ["_provider"]
  GETTABLEKS R4 R5 K17 ["saveMetadata"]
  GETTABLEKS R5 R0 K13 ["_metadata"]
  CALL R4 1 0
  RETURN R0 0

PROTO_18:
  GETTABLEKS R1 R0 K0 ["_clientInformation"]
  JUMPIF R1 [+36]
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K1 ["_authorizationServerUrl"]
  DUPTABLE R3 K5 [{"metadata", "clientRegistrationConfig", "fetchFn"}]
  GETTABLEKS R4 R0 K6 ["_metadata"]
  SETTABLEKS R4 R3 K2 ["metadata"]
  GETTABLEKS R5 R0 K7 ["_provider"]
  GETTABLEKS R4 R5 K3 ["clientRegistrationConfig"]
  SETTABLEKS R4 R3 K3 ["clientRegistrationConfig"]
  GETTABLEKS R4 R0 K8 ["_fetchFn"]
  SETTABLEKS R4 R3 K4 ["fetchFn"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K0 ["_clientInformation"]
  GETTABLEKS R2 R0 K0 ["_clientInformation"]
  FASTCALL2K ASSERT R2 K9 [+4]
  LOADK R3 K9 ["clientInformation should be set after registration"]
  GETIMPORT R1 K11 [assert]
  CALL R1 2 0
  GETTABLEKS R2 R0 K7 ["_provider"]
  GETTABLEKS R1 R2 K12 ["saveClientInformation"]
  GETTABLEKS R2 R0 K0 ["_clientInformation"]
  CALL R1 1 0
  RETURN R0 0

PROTO_19:
  GETTABLEKS R3 R0 K0 ["_state"]
  JUMPIFEQ R2 R3 [+5]
  GETIMPORT R3 K2 [error]
  LOADK R4 K3 ["State mismatch"]
  CALL R3 1 0
  MOVE R5 R1
  NAMECALL R3 R0 K4 ["_exchangeAuthorization"]
  CALL R3 2 1
  GETTABLEKS R5 R0 K5 ["_provider"]
  GETTABLEKS R4 R5 K6 ["saveTokens"]
  MOVE R5 R3
  CALL R4 1 0
  GETTABLEKS R4 R0 K7 ["_authorizationFinishPromiseResolve"]
  JUMPIFNOT R4 [+3]
  GETTABLEKS R4 R0 K7 ["_authorizationFinishPromiseResolve"]
  CALL R4 0 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R2 0
  SETTABLEKS R0 R2 K0 ["_authorizationFinishPromiseResolve"]
  RETURN R0 0

PROTO_21:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["authorizationFinishPromise"]
  NAMECALL R1 R0 K2 ["_fetchMetadata"]
  CALL R1 1 0
  NAMECALL R1 R0 K3 ["_registerClient"]
  CALL R1 1 0
  NAMECALL R1 R0 K4 ["_startAuthorization"]
  CALL R1 1 0
  RETURN R0 0

PROTO_22:
  NAMECALL R1 R0 K0 ["invalidateAllCredentials"]
  CALL R1 1 0
  NAMECALL R1 R0 K1 ["_authInternal"]
  CALL R1 1 0
  RETURN R0 0

PROTO_23:
  GETTABLEKS R2 R0 K0 ["_provider"]
  GETTABLEKS R1 R2 K1 ["invalidateCredentials"]
  LOADK R2 K2 ["all"]
  CALL R1 1 0
  RETURN R0 0

PROTO_24:
  GETTABLEKS R1 R0 K0 ["authorizationFinishPromise"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K0 ["authorizationFinishPromise"]
  NAMECALL R1 R1 K1 ["await"]
  CALL R1 1 0
  RETURN R0 0

PROTO_25:
  GETTABLEKS R1 R0 K0 ["_provider"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["HttpService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["ModelContextProtocol"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETIMPORT R5 K5 [script]
  GETTABLEKS R4 R5 K10 ["Parent"]
  GETTABLEKS R3 R4 K11 ["AuthCommon"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETIMPORT R6 K5 [script]
  GETTABLEKS R5 R6 K10 ["Parent"]
  GETTABLEKS R4 R5 K12 ["AuthDiscovery"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R1 K13 ["Util"]
  GETTABLEKS R5 R6 K14 ["Json"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R1 K13 ["Util"]
  GETTABLEKS R6 R7 K15 ["Logging"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R8 R1 K10 ["Parent"]
  GETTABLEKS R7 R8 K16 ["Promise"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R8 R1 K17 ["Types"]
  CALL R7 1 1
  GETTABLEKS R9 R5 K18 ["Logger"]
  GETTABLEKS R8 R9 K19 ["new"]
  GETIMPORT R10 K5 [script]
  GETTABLEKS R9 R10 K20 ["Name"]
  CALL R8 1 1
  NEWTABLE R9 32 0
  SETTABLEKS R9 R9 K21 ["__index"]
  DUPCLOSURE R10 K22 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R9
  SETTABLEKS R10 R9 K19 ["new"]
  DUPCLOSURE R10 K23 [PROTO_1]
  CAPTURE VAL R8
  SETTABLEKS R10 R9 K24 ["_selectClientAuthMethod"]
  DUPCLOSURE R10 K25 [PROTO_2]
  DUPCLOSURE R11 K26 [PROTO_3]
  DUPCLOSURE R12 K27 [PROTO_4]
  DUPCLOSURE R13 K28 [PROTO_5]
  SETTABLEKS R13 R9 K29 ["_applyClientAuthentication"]
  DUPCLOSURE R13 K30 [PROTO_7]
  CAPTURE VAL R4
  CAPTURE VAL R2
  DUPCLOSURE R14 K31 [PROTO_8]
  CAPTURE VAL R4
  CAPTURE VAL R13
  DUPCLOSURE R15 K32 [PROTO_9]
  CAPTURE VAL R0
  SETTABLEKS R15 R9 K33 ["_prepareAuthorizationUrl"]
  DUPCLOSURE R15 K34 [PROTO_10]
  CAPTURE VAL R2
  SETTABLEKS R15 R9 K35 ["_startAuthorization"]
  DUPCLOSURE R15 K36 [PROTO_11]
  CAPTURE VAL R2
  CAPTURE VAL R13
  SETTABLEKS R15 R9 K37 ["_exchangeOrRefreshAuthorization"]
  DUPCLOSURE R15 K38 [PROTO_12]
  CAPTURE VAL R2
  SETTABLEKS R15 R9 K39 ["_exchangeAuthorization"]
  DUPCLOSURE R15 K40 [PROTO_13]
  CAPTURE VAL R2
  SETTABLEKS R15 R9 K41 ["_doRefreshAuthorization"]
  DUPCLOSURE R15 K42 [PROTO_15]
  SETTABLEKS R15 R9 K43 ["refreshAuthorization"]
  DUPCLOSURE R15 K44 [PROTO_17]
  CAPTURE VAL R3
  CAPTURE VAL R7
  SETTABLEKS R15 R9 K45 ["_fetchMetadata"]
  DUPCLOSURE R15 K46 [PROTO_18]
  CAPTURE VAL R14
  SETTABLEKS R15 R9 K47 ["_registerClient"]
  DUPCLOSURE R15 K48 [PROTO_19]
  SETTABLEKS R15 R9 K49 ["exchangeAuthorization"]
  DUPCLOSURE R15 K50 [PROTO_21]
  CAPTURE VAL R6
  SETTABLEKS R15 R9 K51 ["_authInternal"]
  DUPCLOSURE R15 K52 [PROTO_22]
  SETTABLEKS R15 R9 K53 ["startAuthorization"]
  DUPCLOSURE R15 K54 [PROTO_23]
  SETTABLEKS R15 R9 K55 ["invalidateAllCredentials"]
  DUPCLOSURE R15 K56 [PROTO_24]
  SETTABLEKS R15 R9 K57 ["waitForAuthorizationFinish"]
  DUPCLOSURE R15 K58 [PROTO_25]
  SETTABLEKS R15 R9 K59 ["getProvider"]
  RETURN R9 1
