PROTO_0:
        0 DUPTABLE                         R4 K15 [{"_serverUrl", "_environment", "_scope", "_resourceMetadataUrl", "_resource", "_fetchFn", "_provider", "_metadata", "_clientInformation", "_redirectUri", "_authorizationServerUrl", "_state", "_codeVerifier", "_authorizationFinishPromiseResolve", "authorizationFinishPromise"}]
        1 GETTABLEKS                       R5 R2 K16 ["serverUrl"]
        3 SETTABLEKS                       R5 R4 K0 ["_serverUrl"]
        5 SETTABLEKS                       R1 R4 K1 ["_environment"]
        7 GETTABLEKS                       R5 R2 K17 ["scope"]
        9 SETTABLEKS                       R5 R4 K2 ["_scope"]
       11 GETTABLEKS                       R5 R2 K18 ["resourceMetadataUrl"]
       13 SETTABLEKS                       R5 R4 K3 ["_resourceMetadataUrl"]
       15 GETTABLEKS                       R5 R2 K19 ["resource"]
       17 SETTABLEKS                       R5 R4 K4 ["_resource"]
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R5 R6 K20 ["makeFetchFn"]
       22 GETTABLEKS                       R6 R1 K21 ["httpRequest"]
       24 CALL                             R5 1 1
       25 SETTABLEKS                       R5 R4 K5 ["_fetchFn"]
       27 SETTABLEKS                       R0 R4 K6 ["_provider"]
       29 GETTABLEKS                       R5 R0 K22 ["getMetadata"]
       31 CALL                             R5 0 1
       32 SETTABLEKS                       R5 R4 K7 ["_metadata"]
       34 GETTABLEKS                       R5 R0 K23 ["getClientInformation"]
       36 CALL                             R5 0 1
       37 SETTABLEKS                       R5 R4 K8 ["_clientInformation"]
       39 GETTABLEKS                       R5 R0 K24 ["redirectUrl"]
       41 SETTABLEKS                       R5 R4 K9 ["_redirectUri"]
       43 GETTABLEKS                       R5 R2 K16 ["serverUrl"]
       45 SETTABLEKS                       R5 R4 K10 ["_authorizationServerUrl"]
       47 LOADNIL                          R5
       48 SETTABLEKS                       R5 R4 K11 ["_state"]
       50 LOADNIL                          R5
       51 SETTABLEKS                       R5 R4 K12 ["_codeVerifier"]
       53 LOADNIL                          R5
       54 SETTABLEKS                       R5 R4 K13 ["_authorizationFinishPromiseResolve"]
       56 LOADNIL                          R5
       57 SETTABLEKS                       R5 R4 K14 ["authorizationFinishPromise"]
       59 GETUPVAL                         R5 1
       60 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
       62 GETIMPORT                        R3 K26 [setmetatable]
       64 CALL                             R3 2 1
       65 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["_clientInformation"]
        2 JUMPIFNOT                        R2 ; [+8]
        3 GETTABLEKS                       R4 R0 K0 ["_clientInformation"]
        5 GETTABLEKS                       R3 R4 K1 ["client_secret"]
        7 JUMPIFNOTEQKNIL                  R3 ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 JUMPIF                           R2 ; [+2]
       12 LOADK                            R3 K2 ["none"]
       13 RETURN                           R3 1
       14 LENGTH                           R3 R1
       15 JUMPIFNOTEQKN                    R3 K3 [0] ; [+3]
       17 LOADK                            R3 K4 ["client_secret_post"]
       18 RETURN                           R3 1
       19 GETIMPORT                        R3 K7 [table.find]
       21 MOVE                             R4 R1
       22 LOADK                            R5 K8 ["client_secret_basic"]
       23 CALL                             R3 2 1
       24 JUMPIFNOT                        R3 ; [+2]
       25 LOADK                            R3 K8 ["client_secret_basic"]
       26 RETURN                           R3 1
       27 GETIMPORT                        R3 K7 [table.find]
       29 MOVE                             R4 R1
       30 LOADK                            R5 K4 ["client_secret_post"]
       31 CALL                             R3 2 1
       32 JUMPIFNOT                        R3 ; [+2]
       33 LOADK                            R3 K4 ["client_secret_post"]
       34 RETURN                           R3 1
       35 GETIMPORT                        R3 K7 [table.find]
       37 MOVE                             R4 R1
       38 LOADK                            R5 K2 ["none"]
       39 CALL                             R3 2 1
       40 JUMPIFNOT                        R3 ; [+2]
       41 LOADK                            R3 K2 ["none"]
       42 RETURN                           R3 1
       43 GETUPVAL                         R3 0
       44 LOADK                            R5 K9 ["No client authentication method found, using client_secret_post as fallback"]
       45 NAMECALL                         R3 R3 K10 ["warn"]
       47 CALL                             R3 2 0
       48 LOADK                            R3 K4 ["client_secret_post"]
       49 RETURN                           R3 1

PROTO_2:
        0 JUMPIF                           R2 ; [+4]
        1 GETIMPORT                        R4 K1 [error]
        3 LOADK                            R5 K2 ["client_secret_basic authentication requires a client_secret"]
        4 CALL                             R4 1 0
        5 GETTABLEKS                       R4 R0 K3 ["base64Encode"]
        7 LOADK                            R6 K4 ["%*:%*"]
        8 MOVE                             R8 R1
        9 MOVE                             R9 R2
       10 NAMECALL                         R6 R6 K5 ["format"]
       12 CALL                             R6 3 1
       13 MOVE                             R5 R6
       14 CALL                             R4 1 1
       15 LOADK                            R7 K6 ["Authorization"]
       16 LOADK                            R9 K7 ["Basic %*"]
       17 MOVE                             R11 R4
       18 NAMECALL                         R9 R9 K5 ["format"]
       20 CALL                             R9 2 1
       21 MOVE                             R8 R9
       22 NAMECALL                         R5 R3 K8 ["set"]
       24 CALL                             R5 3 0
       25 RETURN                           R0 0

PROTO_3:
        0 LOADK                            R5 K0 ["client_id"]
        1 MOVE                             R6 R0
        2 NAMECALL                         R3 R2 K1 ["set"]
        4 CALL                             R3 3 0
        5 JUMPIFNOT                        R1 ; [+5]
        6 LOADK                            R5 K2 ["client_secret"]
        7 MOVE                             R6 R1
        8 NAMECALL                         R3 R2 K1 ["set"]
       10 CALL                             R3 3 0
       11 RETURN                           R0 0

PROTO_4:
        0 LOADK                            R4 K0 ["client_id"]
        1 MOVE                             R5 R0
        2 NAMECALL                         R2 R1 K1 ["set"]
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R5 R2 K0 ["client_id"]
        2 GETTABLEKS                       R6 R2 K1 ["client_secret"]
        4 JUMPIFNOTEQKS                    R1 K2 ["client_secret_basic"] ; [+29]
        6 GETTABLEKS                       R7 R0 K3 ["_environment"]
        8 JUMPIF                           R6 ; [+4]
        9 GETIMPORT                        R8 K5 [error]
       11 LOADK                            R9 K6 ["client_secret_basic authentication requires a client_secret"]
       12 CALL                             R8 1 0
       13 GETTABLEKS                       R8 R7 K7 ["base64Encode"]
       15 LOADK                            R10 K8 ["%*:%*"]
       16 MOVE                             R12 R5
       17 MOVE                             R13 R6
       18 NAMECALL                         R10 R10 K9 ["format"]
       20 CALL                             R10 3 1
       21 MOVE                             R9 R10
       22 CALL                             R8 1 1
       23 LOADK                            R11 K10 ["Authorization"]
       24 LOADK                            R13 K11 ["Basic %*"]
       25 MOVE                             R15 R8
       26 NAMECALL                         R13 R13 K9 ["format"]
       28 CALL                             R13 2 1
       29 MOVE                             R12 R13
       30 NAMECALL                         R9 R3 K12 ["set"]
       32 CALL                             R9 3 0
       33 RETURN                           R0 0
       34 JUMPIFNOTEQKS                    R1 K13 ["client_secret_post"] ; [+13]
       36 LOADK                            R9 K0 ["client_id"]
       37 MOVE                             R10 R5
       38 NAMECALL                         R7 R4 K12 ["set"]
       40 CALL                             R7 3 0
       41 JUMPIFNOT                        R6 ; [+27]
       42 LOADK                            R9 K1 ["client_secret"]
       43 MOVE                             R10 R6
       44 NAMECALL                         R7 R4 K12 ["set"]
       46 CALL                             R7 3 0
       47 RETURN                           R0 0
       48 JUMPIFNOTEQKS                    R1 K14 ["none"] ; [+7]
       50 LOADK                            R9 K0 ["client_id"]
       51 MOVE                             R10 R5
       52 NAMECALL                         R7 R4 K12 ["set"]
       54 CALL                             R7 3 0
       55 RETURN                           R0 0
       56 GETIMPORT                        R7 K5 [error]
       58 LOADK                            R9 K15 ["Unsupported client authentication method: %*"]
       59 FASTCALL1                        TOSTRING R1 ; [+3]
       60 MOVE                             R12 R1
       61 GETIMPORT                        R11 K17 [tostring]
       63 CALL                             R11 1 1
       64 NAMECALL                         R9 R9 K9 ["format"]
       66 CALL                             R9 2 1
       67 MOVE                             R8 R9
       68 CALL                             R7 1 0
       69 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["decode"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_7:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+4]
        7 GETTABLEKS                       R1 R0 K3 ["status"]
        9 JUMP                             ; [+1]
       10 LOADNIL                          R1
       11 FASTCALL1                        TYPE R0 ; [+3]
       12 MOVE                             R4 R0
       13 GETIMPORT                        R3 K1 [type]
       15 CALL                             R3 1 1
       16 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+4]
       18 GETTABLEKS                       R2 R0 K4 ["text"]
       20 JUMP                             ; [+1]
       21 MOVE                             R2 R0
       22 GETIMPORT                        R3 K6 [pcall]
       24 NEWCLOSURE                       R4 P0
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          VAL R2
       27 CALL                             R3 1 2
       28 JUMPIFNOT                        R3 ; [+16]
       29 GETTABLEKS                       R5 R4 K7 ["error"]
       31 JUMPIFNOT                        R5 ; [+13]
       32 GETUPVAL                         R7 1
       33 GETTABLEKS                       R6 R7 K8 ["OAuthError"]
       35 GETTABLEKS                       R5 R6 K9 ["new"]
       37 GETTABLEKS                       R6 R4 K7 ["error"]
       39 GETTABLEKS                       R7 R4 K10 ["error_description"]
       41 GETTABLEKS                       R8 R4 K11 ["error_uri"]
       43 CALL                             R5 3 -1
       44 RETURN                           R5 -1
       45 LOADK                            R6 K12 ["HTTP %*: Invalid OAuth error response: %*. Raw body: %*"]
       46 MOVE                             R8 R1
       47 FASTCALL1                        TOSTRING R4 ; [+3]
       48 MOVE                             R10 R4
       49 GETIMPORT                        R9 K14 [tostring]
       51 CALL                             R9 1 1
       52 MOVE                             R10 R2
       53 NAMECALL                         R6 R6 K15 ["format"]
       55 CALL                             R6 4 1
       56 MOVE                             R5 R6
       57 GETUPVAL                         R8 1
       58 GETTABLEKS                       R7 R8 K8 ["OAuthError"]
       60 GETTABLEKS                       R6 R7 K9 ["new"]
       62 LOADK                            R7 K16 ["server_error"]
       63 MOVE                             R8 R5
       64 CALL                             R6 2 -1
       65 RETURN                           R6 -1

PROTO_8:
        0 GETTABLEKS                       R2 R1 K0 ["metadata"]
        2 GETTABLEKS                       R3 R1 K1 ["clientRegistrationConfig"]
        4 GETTABLEKS                       R4 R1 K2 ["fetchFn"]
        6 LOADNIL                          R5
        7 JUMPIFNOT                        R2 ; [+6]
        8 GETTABLEKS                       R6 R2 K3 ["registration_endpoint"]
       10 JUMPIFNOT                        R6 ; [+3]
       11 GETTABLEKS                       R5 R2 K3 ["registration_endpoint"]
       13 JUMP                             ; [+6]
       14 LOADK                            R6 K4 ["%*/register"]
       15 MOVE                             R8 R0
       16 NAMECALL                         R6 R6 K5 ["format"]
       18 CALL                             R6 2 1
       19 MOVE                             R5 R6
       20 MOVE                             R6 R4
       21 MOVE                             R7 R5
       22 DUPTABLE                         R8 K9 [{"method", "headers", "body"}]
       23 LOADK                            R9 K10 ["POST"]
       24 SETTABLEKS                       R9 R8 K6 ["method"]
       26 NEWTABLE                         R9 1 0
       28 LOADK                            R10 K11 ["application/json"]
       29 SETTABLEKS                       R10 R9 K12 ["Content-Type"]
       31 SETTABLEKS                       R9 R8 K7 ["headers"]
       33 GETUPVAL                         R10 0
       34 GETTABLEKS                       R9 R10 K13 ["encode"]
       36 MOVE                             R10 R3
       37 CALL                             R9 1 1
       38 SETTABLEKS                       R9 R8 K8 ["body"]
       40 CALL                             R6 2 1
       41 GETTABLEKS                       R7 R6 K14 ["ok"]
       43 JUMPIF                           R7 ; [+6]
       44 GETIMPORT                        R7 K16 [error]
       46 GETUPVAL                         R8 1
       47 MOVE                             R9 R6
       48 CALL                             R8 1 -1
       49 CALL                             R7 -1 0
       50 NAMECALL                         R7 R6 K17 ["getJson"]
       52 CALL                             R7 1 -1
       53 RETURN                           R7 -1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_metadata"]
        2 GETTABLEKS                       R2 R0 K1 ["_clientInformation"]
        4 GETTABLEKS                       R3 R0 K2 ["_redirectUri"]
        6 GETTABLEKS                       R4 R0 K3 ["_scope"]
        8 GETTABLEKS                       R5 R0 K4 ["_state"]
       10 GETTABLEKS                       R6 R0 K5 ["_resource"]
       12 LOADNIL                          R7
       13 JUMPIFNOT                        R1 ; [+31]
       14 GETTABLEKS                       R7 R1 K6 ["authorization_endpoint"]
       16 GETIMPORT                        R8 K9 [table.find]
       18 GETTABLEKS                       R9 R1 K10 ["response_types_supported"]
       20 JUMPIF                           R9 ; [+2]
       21 NEWTABLE                         R9 0 0
       23 LOADK                            R10 K11 ["code"]
       24 CALL                             R8 2 1
       25 JUMPIF                           R8 ; [+4]
       26 GETIMPORT                        R8 K13 [error]
       28 LOADK                            R9 K14 ["Incompatible auth server: does not support response type code"]
       29 CALL                             R8 1 0
       30 GETTABLEKS                       R8 R1 K15 ["code_challenge_methods_supported"]
       32 JUMPIFNOT                        R8 ; [+7]
       33 GETIMPORT                        R8 K9 [table.find]
       35 GETTABLEKS                       R9 R1 K15 ["code_challenge_methods_supported"]
       37 LOADK                            R10 K16 ["S256"]
       38 CALL                             R8 2 1
       39 JUMPIF                           R8 ; [+12]
       40 GETIMPORT                        R8 K13 [error]
       42 LOADK                            R9 K17 ["Incompatible auth server: does not support code challenge method S256"]
       43 CALL                             R8 1 0
       44 JUMP                             ; [+7]
       45 LOADK                            R8 K18 ["%*/authorize"]
       46 GETTABLEKS                       R10 R0 K19 ["_authorizationServerUrl"]
       48 NAMECALL                         R8 R8 K20 ["format"]
       50 CALL                             R8 2 1
       51 MOVE                             R7 R8
       52 GETTABLEKS                       R9 R0 K21 ["_environment"]
       54 GETTABLEKS                       R8 R9 K22 ["generatePKCEChallenge"]
       56 CALL                             R8 0 1
       57 GETTABLEKS                       R9 R8 K23 ["code_verifier"]
       59 GETTABLEKS                       R10 R8 K24 ["code_challenge"]
       61 DUPTABLE                         R11 K29 [{"response_type", "client_id", "code_challenge", "code_challenge_method", "redirect_uri"}]
       62 LOADK                            R12 K11 ["code"]
       63 SETTABLEKS                       R12 R11 K25 ["response_type"]
       65 MOVE                             R12 R2
       66 JUMPIFNOT                        R12 ; [+2]
       67 GETTABLEKS                       R12 R2 K26 ["client_id"]
       69 SETTABLEKS                       R12 R11 K26 ["client_id"]
       71 SETTABLEKS                       R10 R11 K24 ["code_challenge"]
       73 LOADK                            R12 K16 ["S256"]
       74 SETTABLEKS                       R12 R11 K27 ["code_challenge_method"]
       76 SETTABLEKS                       R3 R11 K28 ["redirect_uri"]
       78 JUMPIFNOT                        R5 ; [+2]
       79 SETTABLEKS                       R5 R11 K30 ["state"]
       81 JUMPIFNOT                        R4 ; [+2]
       82 SETTABLEKS                       R4 R11 K31 ["scope"]
       84 JUMPIFNOT                        R6 ; [+2]
       85 SETTABLEKS                       R6 R11 K32 ["resource"]
       87 NEWTABLE                         R12 0 0
       89 MOVE                             R13 R11
       90 LOADNIL                          R14
       91 LOADNIL                          R15
       92 FORGPREP                         R13
       93 LOADK                            R21 K33 ["%*=%*"]
       94 FASTCALL1                        TOSTRING R16 ; [+3]
       95 MOVE                             R24 R16
       96 GETIMPORT                        R23 K35 [tostring]
       98 CALL                             R23 1 1
       99 GETUPVAL                         R24 0
      100 FASTCALL1                        TOSTRING R17 ; [+3]
      101 MOVE                             R27 R17
      102 GETIMPORT                        R26 K35 [tostring]
      104 CALL                             R26 1 1
      105 NAMECALL                         R24 R24 K36 ["UrlEncode"]
      107 CALL                             R24 2 1
      108 NAMECALL                         R21 R21 K20 ["format"]
      110 CALL                             R21 3 1
      111 MOVE                             R20 R21
      112 FASTCALL2                        TABLE_INSERT R12 R20 ; [+4]
      114 MOVE                             R19 R12
      115 GETIMPORT                        R18 K38 [table.insert]
      117 CALL                             R18 2 0
      118 FORGLOOP                         R13 2 ; [-26]
      120 GETIMPORT                        R13 K40 [table.concat]
      122 MOVE                             R14 R12
      123 LOADK                            R15 K41 ["&"]
      124 CALL                             R13 2 1
      125 GETIMPORT                        R15 K43 [string.find]
      127 MOVE                             R16 R7
      128 LOADK                            R17 K44 ["?"]
      129 CALL                             R15 2 1
      130 JUMPIFNOT                        R15 ; [+2]
      131 LOADK                            R14 K41 ["&"]
      132 JUMP                             ; [+1]
      133 LOADK                            R14 K44 ["?"]
      134 LOADK                            R15 K45 ["%*%*%*"]
      135 MOVE                             R17 R7
      136 MOVE                             R18 R14
      137 MOVE                             R19 R13
      138 NAMECALL                         R15 R15 K20 ["format"]
      140 CALL                             R15 4 1
      141 MOVE                             R7 R15
      142 DUPTABLE                         R15 K48 [{"authorizationUrl", "codeVerifier"}]
      143 SETTABLEKS                       R7 R15 K46 ["authorizationUrl"]
      145 SETTABLEKS                       R9 R15 K47 ["codeVerifier"]
      147 RETURN                           R15 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["generateState"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["_state"]
        6 NAMECALL                         R1 R0 K2 ["_prepareAuthorizationUrl"]
        8 CALL                             R1 1 1
        9 GETTABLEKS                       R2 R1 K3 ["codeVerifier"]
       11 SETTABLEKS                       R2 R0 K4 ["_codeVerifier"]
       13 GETTABLEKS                       R3 R0 K5 ["_provider"]
       15 GETTABLEKS                       R2 R3 K6 ["redirectToAuthorization"]
       17 JUMPIFNOT                        R2 ; [+7]
       18 GETTABLEKS                       R3 R0 K5 ["_provider"]
       20 GETTABLEKS                       R2 R3 K6 ["redirectToAuthorization"]
       22 GETTABLEKS                       R3 R1 K7 ["authorizationUrl"]
       24 CALL                             R2 1 0
       25 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R3 R0 K0 ["_metadata"]
        2 GETTABLEKS                       R4 R0 K1 ["_clientInformation"]
        4 GETTABLEKS                       R5 R0 K2 ["_resource"]
        6 GETTABLEKS                       R6 R0 K3 ["_fetchFn"]
        8 LOADNIL                          R7
        9 JUMPIFNOT                        R3 ; [+6]
       10 GETTABLEKS                       R8 R3 K4 ["token_endpoint"]
       12 JUMPIFNOT                        R8 ; [+3]
       13 GETTABLEKS                       R7 R3 K4 ["token_endpoint"]
       15 JUMP                             ; [+7]
       16 LOADK                            R8 K5 ["%*/token"]
       17 GETTABLEKS                       R10 R0 K6 ["_authorizationServerUrl"]
       19 NAMECALL                         R8 R8 K7 ["format"]
       21 CALL                             R8 2 1
       22 MOVE                             R7 R8
       23 JUMPIFNOT                        R3 ; [+19]
       24 GETTABLEKS                       R8 R3 K8 ["grant_types_supported"]
       26 JUMPIFNOT                        R8 ; [+16]
       27 GETIMPORT                        R8 K11 [table.find]
       29 GETTABLEKS                       R9 R3 K8 ["grant_types_supported"]
       31 MOVE                             R10 R1
       32 CALL                             R8 2 1
       33 JUMPIF                           R8 ; [+9]
       34 GETIMPORT                        R8 K13 [error]
       36 LOADK                            R10 K14 ["Incompatible auth server: does not support grant type %*"]
       37 MOVE                             R12 R1
       38 NAMECALL                         R10 R10 K7 ["format"]
       40 CALL                             R10 2 1
       41 MOVE                             R9 R10
       42 CALL                             R8 1 0
       43 GETUPVAL                         R9 0
       44 GETTABLEKS                       R8 R9 K15 ["createHeaders"]
       46 CALL                             R8 0 1
       47 LOADK                            R11 K16 ["Content-Type"]
       48 LOADK                            R12 K17 ["application/x-www-form-urlencoded"]
       49 NAMECALL                         R9 R8 K18 ["set"]
       51 CALL                             R9 3 0
       52 LOADK                            R11 K19 ["Accept"]
       53 LOADK                            R12 K20 ["application/json"]
       54 NAMECALL                         R9 R8 K18 ["set"]
       56 CALL                             R9 3 0
       57 LOADK                            R11 K21 ["grant_type"]
       58 MOVE                             R12 R1
       59 NAMECALL                         R9 R2 K18 ["set"]
       61 CALL                             R9 3 0
       62 JUMPIFNOT                        R3 ; [+3]
       63 GETTABLEKS                       R9 R3 K22 ["token_endpoint_auth_methods_supported"]
       65 JUMPIF                           R9 ; [+2]
       66 NEWTABLE                         R9 0 0
       68 MOVE                             R12 R9
       69 NAMECALL                         R10 R0 K23 ["_selectClientAuthMethod"]
       71 CALL                             R10 2 1
       72 FASTCALL2K                       ASSERT R4 K24 ; [+5]
       74 MOVE                             R12 R4
       75 LOADK                            R13 K24 ["clientInformation should be set after registration"]
       76 GETIMPORT                        R11 K26 [assert]
       78 CALL                             R11 2 0
       79 MOVE                             R13 R10
       80 MOVE                             R14 R4
       81 MOVE                             R15 R8
       82 MOVE                             R16 R2
       83 NAMECALL                         R11 R0 K27 ["_applyClientAuthentication"]
       85 CALL                             R11 5 0
       86 JUMPIFNOT                        R5 ; [+5]
       87 LOADK                            R13 K28 ["resource"]
       88 MOVE                             R14 R5
       89 NAMECALL                         R11 R2 K18 ["set"]
       91 CALL                             R11 3 0
       92 MOVE                             R11 R6
       93 MOVE                             R12 R7
       94 DUPTABLE                         R13 K32 [{"method", "headers", "body"}]
       95 LOADK                            R14 K33 ["POST"]
       96 SETTABLEKS                       R14 R13 K29 ["method"]
       98 NAMECALL                         R14 R8 K34 ["getData"]
      100 CALL                             R14 1 1
      101 SETTABLEKS                       R14 R13 K30 ["headers"]
      103 NAMECALL                         R14 R2 K35 ["getFormData"]
      105 CALL                             R14 1 1
      106 SETTABLEKS                       R14 R13 K31 ["body"]
      108 CALL                             R11 2 1
      109 GETTABLEKS                       R12 R11 K36 ["ok"]
      111 JUMPIF                           R12 ; [+6]
      112 GETIMPORT                        R12 K13 [error]
      114 GETUPVAL                         R13 1
      115 MOVE                             R14 R11
      116 CALL                             R13 1 -1
      117 CALL                             R12 -1 0
      118 NAMECALL                         R12 R11 K37 ["getJson"]
      120 CALL                             R12 1 -1
      121 RETURN                           R12 -1

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createURLSearchParams"]
        3 CALL                             R2 0 1
        4 LOADK                            R5 K1 ["code"]
        5 MOVE                             R6 R1
        6 NAMECALL                         R3 R2 K2 ["set"]
        8 CALL                             R3 3 0
        9 GETTABLEKS                       R3 R0 K3 ["_codeVerifier"]
       11 JUMPIFNOT                        R3 ; [+6]
       12 LOADK                            R5 K4 ["code_verifier"]
       13 GETTABLEKS                       R6 R0 K3 ["_codeVerifier"]
       15 NAMECALL                         R3 R2 K2 ["set"]
       17 CALL                             R3 3 0
       18 LOADK                            R5 K5 ["redirect_uri"]
       19 GETTABLEKS                       R6 R0 K6 ["_redirectUri"]
       21 NAMECALL                         R3 R2 K2 ["set"]
       23 CALL                             R3 3 0
       24 LOADK                            R5 K7 ["authorization_code"]
       25 MOVE                             R6 R2
       26 NAMECALL                         R3 R0 K8 ["_exchangeOrRefreshAuthorization"]
       28 CALL                             R3 3 -1
       29 RETURN                           R3 -1

PROTO_13:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createURLSearchParams"]
        3 CALL                             R2 0 1
        4 LOADK                            R5 K1 ["refresh_token"]
        5 MOVE                             R6 R1
        6 NAMECALL                         R3 R2 K2 ["set"]
        8 CALL                             R3 3 0
        9 LOADK                            R5 K1 ["refresh_token"]
       10 MOVE                             R6 R2
       11 NAMECALL                         R3 R0 K3 ["_exchangeOrRefreshAuthorization"]
       13 CALL                             R3 3 1
       14 GETTABLEKS                       R5 R3 K1 ["refresh_token"]
       16 OR                               R4 R5 R1
       17 SETTABLEKS                       R4 R3 K1 ["refresh_token"]
       19 RETURN                           R3 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["refresh_token"]
        4 NAMECALL                         R0 R0 K1 ["_doRefreshAuthorization"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_15:
        0 GETTABLEKS                       R3 R0 K0 ["_provider"]
        2 GETTABLEKS                       R2 R3 K1 ["getTokens"]
        4 JUMPIFNOT                        R2 ; [+6]
        5 GETTABLEKS                       R2 R0 K0 ["_provider"]
        7 GETTABLEKS                       R1 R2 K1 ["getTokens"]
        9 CALL                             R1 0 1
       10 JUMPIF                           R1 ; [+1]
       11 LOADNIL                          R1
       12 JUMPIFNOT                        R1 ; [+21]
       13 GETTABLEKS                       R2 R1 K2 ["refresh_token"]
       15 JUMPIFNOT                        R2 ; [+18]
       16 GETIMPORT                        R2 K4 [pcall]
       18 NEWCLOSURE                       R3 P0
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R1
       21 CALL                             R2 1 2
       22 JUMPIFNOT                        R2 ; [+7]
       23 GETTABLEKS                       R5 R0 K0 ["_provider"]
       25 GETTABLEKS                       R4 R5 K5 ["saveTokens"]
       27 MOVE                             R5 R3
       28 CALL                             R4 1 0
       29 RETURN                           R0 0
       30 GETIMPORT                        R4 K7 [error]
       32 MOVE                             R5 R3
       33 CALL                             R4 1 0
       34 GETIMPORT                        R2 K7 [error]
       36 LOADK                            R3 K8 ["No refresh token found"]
       37 CALL                             R2 1 0
       38 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["discoverOAuthProtectedResourceMetadata"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["_serverUrl"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["_fetchFn"]
        9 DUPTABLE                         R3 K5 [{"resourceMetadataUrl", "protocolVersion"}]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R4 R5 K6 ["_resourceMetadataUrl"]
       13 SETTABLEKS                       R4 R3 K3 ["resourceMetadataUrl"]
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R4 R5 K7 ["LATEST_PROTOCOL_VERSION"]
       18 SETTABLEKS                       R4 R3 K4 ["protocolVersion"]
       20 CALL                             R0 3 -1
       21 RETURN                           R0 -1

PROTO_17:
        0 LOADNIL                          R1
        1 GETIMPORT                        R2 K1 [pcall]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U1
        7 CALL                             R2 1 2
        8 JUMPIFNOT                        R2 ; [+15]
        9 MOVE                             R1 R3
       10 GETTABLEKS                       R4 R1 K2 ["authorization_servers"]
       12 JUMPIFNOT                        R4 ; [+11]
       13 GETTABLEKS                       R5 R1 K2 ["authorization_servers"]
       15 LENGTH                           R4 R5
       16 LOADN                            R5 0
       17 JUMPIFNOTLT                      R5 R4 ; [+6]
       19 GETTABLEKS                       R5 R1 K2 ["authorization_servers"]
       21 GETTABLEN                        R4 R5 1
       22 SETTABLEKS                       R4 R0 K3 ["_authorizationServerUrl"]
       24 GETTABLEKS                       R4 R0 K3 ["_authorizationServerUrl"]
       26 JUMPIF                           R4 ; [+4]
       27 GETTABLEKS                       R4 R0 K4 ["_serverUrl"]
       29 SETTABLEKS                       R4 R0 K3 ["_authorizationServerUrl"]
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R4 R5 K5 ["selectResourceURL"]
       34 GETTABLEKS                       R5 R0 K4 ["_serverUrl"]
       36 GETTABLEKS                       R6 R0 K6 ["_provider"]
       38 MOVE                             R7 R1
       39 CALL                             R4 3 1
       40 SETTABLEKS                       R4 R0 K7 ["_resource"]
       42 GETUPVAL                         R5 0
       43 GETTABLEKS                       R4 R5 K8 ["discoverAuthorizationServerMetadata"]
       45 GETTABLEKS                       R5 R0 K3 ["_authorizationServerUrl"]
       47 GETTABLEKS                       R6 R0 K9 ["_fetchFn"]
       49 DUPTABLE                         R7 K11 [{"protocolVersion"}]
       50 GETUPVAL                         R9 1
       51 GETTABLEKS                       R8 R9 K12 ["LATEST_PROTOCOL_VERSION"]
       53 SETTABLEKS                       R8 R7 K10 ["protocolVersion"]
       55 CALL                             R4 3 1
       56 SETTABLEKS                       R4 R0 K13 ["_metadata"]
       58 GETTABLEKS                       R5 R0 K13 ["_metadata"]
       60 FASTCALL2K                       ASSERT R5 K14 ; [+4]
       62 LOADK                            R6 K14 ["metadata should be set after discovery"]
       63 GETIMPORT                        R4 K16 [assert]
       65 CALL                             R4 2 0
       66 GETTABLEKS                       R5 R0 K6 ["_provider"]
       68 GETTABLEKS                       R4 R5 K17 ["saveMetadata"]
       70 GETTABLEKS                       R5 R0 K13 ["_metadata"]
       72 CALL                             R4 1 0
       73 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["_clientInformation"]
        2 JUMPIF                           R1 ; [+36]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R2 R0 K1 ["_authorizationServerUrl"]
        6 DUPTABLE                         R3 K5 [{"metadata", "clientRegistrationConfig", "fetchFn"}]
        7 GETTABLEKS                       R4 R0 K6 ["_metadata"]
        9 SETTABLEKS                       R4 R3 K2 ["metadata"]
       11 GETTABLEKS                       R5 R0 K7 ["_provider"]
       13 GETTABLEKS                       R4 R5 K3 ["clientRegistrationConfig"]
       15 SETTABLEKS                       R4 R3 K3 ["clientRegistrationConfig"]
       17 GETTABLEKS                       R4 R0 K8 ["_fetchFn"]
       19 SETTABLEKS                       R4 R3 K4 ["fetchFn"]
       21 CALL                             R1 2 1
       22 SETTABLEKS                       R1 R0 K0 ["_clientInformation"]
       24 GETTABLEKS                       R2 R0 K0 ["_clientInformation"]
       26 FASTCALL2K                       ASSERT R2 K9 ; [+4]
       28 LOADK                            R3 K9 ["clientInformation should be set after registration"]
       29 GETIMPORT                        R1 K11 [assert]
       31 CALL                             R1 2 0
       32 GETTABLEKS                       R2 R0 K7 ["_provider"]
       34 GETTABLEKS                       R1 R2 K12 ["saveClientInformation"]
       36 GETTABLEKS                       R2 R0 K0 ["_clientInformation"]
       38 CALL                             R1 1 0
       39 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R3 R0 K0 ["_state"]
        2 JUMPIFEQ                         R2 R3 ; [+5]
        4 GETIMPORT                        R3 K2 [error]
        6 LOADK                            R4 K3 ["State mismatch"]
        7 CALL                             R3 1 0
        8 MOVE                             R5 R1
        9 NAMECALL                         R3 R0 K4 ["_exchangeAuthorization"]
       11 CALL                             R3 2 1
       12 GETTABLEKS                       R5 R0 K5 ["_provider"]
       14 GETTABLEKS                       R4 R5 K6 ["saveTokens"]
       16 MOVE                             R5 R3
       17 CALL                             R4 1 0
       18 GETTABLEKS                       R4 R0 K7 ["_authorizationFinishPromiseResolve"]
       20 JUMPIFNOT                        R4 ; [+3]
       21 GETTABLEKS                       R4 R0 K7 ["_authorizationFinishPromiseResolve"]
       23 CALL                             R4 0 0
       24 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R2 0
        1 SETTABLEKS                       R0 R2 K0 ["_authorizationFinishPromiseResolve"]
        3 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 1
        6 SETTABLEKS                       R1 R0 K1 ["authorizationFinishPromise"]
        8 NAMECALL                         R1 R0 K2 ["_fetchMetadata"]
       10 CALL                             R1 1 0
       11 NAMECALL                         R1 R0 K3 ["_registerClient"]
       13 CALL                             R1 1 0
       14 NAMECALL                         R1 R0 K4 ["_startAuthorization"]
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_22:
        0 NAMECALL                         R1 R0 K0 ["invalidateAllCredentials"]
        2 CALL                             R1 1 0
        3 NAMECALL                         R1 R0 K1 ["_authInternal"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_23:
        0 GETTABLEKS                       R2 R0 K0 ["_provider"]
        2 GETTABLEKS                       R1 R2 K1 ["invalidateCredentials"]
        4 LOADK                            R2 K2 ["all"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["authorizationFinishPromise"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["authorizationFinishPromise"]
        5 NAMECALL                         R1 R1 K1 ["await"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_25:
        0 GETTABLEKS                       R1 R0 K0 ["_provider"]
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["ModelContextProtocol"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETIMPORT                        R5 K5 [script]
       17 GETTABLEKS                       R4 R5 K10 ["Parent"]
       19 GETTABLEKS                       R3 R4 K11 ["AuthCommon"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETIMPORT                        R6 K5 [script]
       26 GETTABLEKS                       R5 R6 K10 ["Parent"]
       28 GETTABLEKS                       R4 R5 K12 ["AuthDiscovery"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R6 R1 K13 ["Util"]
       35 GETTABLEKS                       R5 R6 K14 ["Json"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K9 [require]
       40 GETTABLEKS                       R7 R1 K13 ["Util"]
       42 GETTABLEKS                       R6 R7 K15 ["Logging"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R8 R1 K10 ["Parent"]
       49 GETTABLEKS                       R7 R8 K16 ["Promise"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K9 [require]
       54 GETTABLEKS                       R8 R1 K17 ["Types"]
       56 CALL                             R7 1 1
       57 GETTABLEKS                       R9 R5 K18 ["Logger"]
       59 GETTABLEKS                       R8 R9 K19 ["new"]
       61 GETIMPORT                        R10 K5 [script]
       63 GETTABLEKS                       R9 R10 K20 ["Name"]
       65 CALL                             R8 1 1
       66 NEWTABLE                         R9 32 0
       68 SETTABLEKS                       R9 R9 K21 ["__index"]
       70 DUPCLOSURE                       R10 K22 [PROTO_0]
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R9
       73 SETTABLEKS                       R10 R9 K19 ["new"]
       75 DUPCLOSURE                       R10 K23 [PROTO_1]
       76 CAPTURE                          VAL R8
       77 SETTABLEKS                       R10 R9 K24 ["_selectClientAuthMethod"]
       79 DUPCLOSURE                       R10 K25 [PROTO_2]
       80 DUPCLOSURE                       R11 K26 [PROTO_3]
       81 DUPCLOSURE                       R12 K27 [PROTO_4]
       82 DUPCLOSURE                       R13 K28 [PROTO_5]
       83 SETTABLEKS                       R13 R9 K29 ["_applyClientAuthentication"]
       85 DUPCLOSURE                       R13 K30 [PROTO_7]
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R2
       88 DUPCLOSURE                       R14 K31 [PROTO_8]
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R13
       91 DUPCLOSURE                       R15 K32 [PROTO_9]
       92 CAPTURE                          VAL R0
       93 SETTABLEKS                       R15 R9 K33 ["_prepareAuthorizationUrl"]
       95 DUPCLOSURE                       R15 K34 [PROTO_10]
       96 CAPTURE                          VAL R2
       97 SETTABLEKS                       R15 R9 K35 ["_startAuthorization"]
       99 DUPCLOSURE                       R15 K36 [PROTO_11]
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R13
      102 SETTABLEKS                       R15 R9 K37 ["_exchangeOrRefreshAuthorization"]
      104 DUPCLOSURE                       R15 K38 [PROTO_12]
      105 CAPTURE                          VAL R2
      106 SETTABLEKS                       R15 R9 K39 ["_exchangeAuthorization"]
      108 DUPCLOSURE                       R15 K40 [PROTO_13]
      109 CAPTURE                          VAL R2
      110 SETTABLEKS                       R15 R9 K41 ["_doRefreshAuthorization"]
      112 DUPCLOSURE                       R15 K42 [PROTO_15]
      113 SETTABLEKS                       R15 R9 K43 ["refreshAuthorization"]
      115 DUPCLOSURE                       R15 K44 [PROTO_17]
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R7
      118 SETTABLEKS                       R15 R9 K45 ["_fetchMetadata"]
      120 DUPCLOSURE                       R15 K46 [PROTO_18]
      121 CAPTURE                          VAL R14
      122 SETTABLEKS                       R15 R9 K47 ["_registerClient"]
      124 DUPCLOSURE                       R15 K48 [PROTO_19]
      125 SETTABLEKS                       R15 R9 K49 ["exchangeAuthorization"]
      127 DUPCLOSURE                       R15 K50 [PROTO_21]
      128 CAPTURE                          VAL R6
      129 SETTABLEKS                       R15 R9 K51 ["_authInternal"]
      131 DUPCLOSURE                       R15 K52 [PROTO_22]
      132 SETTABLEKS                       R15 R9 K53 ["startAuthorization"]
      134 DUPCLOSURE                       R15 K54 [PROTO_23]
      135 SETTABLEKS                       R15 R9 K55 ["invalidateAllCredentials"]
      137 DUPCLOSURE                       R15 K56 [PROTO_24]
      138 SETTABLEKS                       R15 R9 K57 ["waitForAuthorizationFinish"]
      140 DUPCLOSURE                       R15 K58 [PROTO_25]
      141 SETTABLEKS                       R15 R9 K59 ["getProvider"]
      143 RETURN                           R9 1
