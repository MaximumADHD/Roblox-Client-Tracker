PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["clientInformation"]
        3 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["clientInformation"]
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["metadata"]
        3 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["metadata"]
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["tokens"]
        3 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["tokens"]
        3 RETURN                           R0 0

PROTO_6:
        0 JUMPIFNOTEQKS                    R0 K0 ["all"] ; [+14]
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 SETTABLEKS                       R2 R1 K1 ["clientInformation"]
        6 GETUPVAL                         R1 0
        7 LOADNIL                          R2
        8 SETTABLEKS                       R2 R1 K2 ["tokens"]
       10 GETUPVAL                         R1 0
       11 LOADNIL                          R2
       12 SETTABLEKS                       R2 R1 K3 ["metadata"]
       14 RETURN                           R0 0
       15 JUMPIFNOTEQKS                    R0 K2 ["tokens"] ; [+5]
       17 GETUPVAL                         R1 0
       18 LOADNIL                          R2
       19 SETTABLEKS                       R2 R1 K2 ["tokens"]
       21 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R2 K10 [{"clientRegistrationConfig", "getClientInformation", "saveClientInformation", "getMetadata", "saveMetadata", "getTokens", "saveTokens", "redirectUrl", "redirectToAuthorization", "invalidateCredentials"}]
        1 DUPTABLE                         R3 K16 [{"client_name", "redirect_uris", "grant_types", "response_types", "token_endpoint_auth_method"}]
        2 LOADK                            R4 K17 ["Roblox Assistant"]
        3 SETTABLEKS                       R4 R3 K11 ["client_name"]
        5 NEWTABLE                         R4 0 1
        7 LOADK                            R5 K18 ["roblox-studio-auth://callback/"]
        8 SETLIST                          R4 R5 1 [1]
       10 SETTABLEKS                       R4 R3 K12 ["redirect_uris"]
       12 NEWTABLE                         R4 0 2
       14 LOADK                            R5 K19 ["authorization_code"]
       15 LOADK                            R6 K20 ["refresh_token"]
       16 SETLIST                          R4 R5 2 [1]
       18 SETTABLEKS                       R4 R3 K13 ["grant_types"]
       20 NEWTABLE                         R4 0 1
       22 LOADK                            R5 K21 ["code"]
       23 SETLIST                          R4 R5 1 [1]
       25 SETTABLEKS                       R4 R3 K14 ["response_types"]
       27 LOADK                            R4 K22 ["none"]
       28 SETTABLEKS                       R4 R3 K15 ["token_endpoint_auth_method"]
       30 SETTABLEKS                       R3 R2 K0 ["clientRegistrationConfig"]
       32 NEWCLOSURE                       R3 P0
       33 CAPTURE                          VAL R0
       34 SETTABLEKS                       R3 R2 K1 ["getClientInformation"]
       36 NEWCLOSURE                       R3 P1
       37 CAPTURE                          VAL R0
       38 SETTABLEKS                       R3 R2 K2 ["saveClientInformation"]
       40 NEWCLOSURE                       R3 P2
       41 CAPTURE                          VAL R0
       42 SETTABLEKS                       R3 R2 K3 ["getMetadata"]
       44 NEWCLOSURE                       R3 P3
       45 CAPTURE                          VAL R0
       46 SETTABLEKS                       R3 R2 K4 ["saveMetadata"]
       48 NEWCLOSURE                       R3 P4
       49 CAPTURE                          VAL R0
       50 SETTABLEKS                       R3 R2 K5 ["getTokens"]
       52 NEWCLOSURE                       R3 P5
       53 CAPTURE                          VAL R0
       54 SETTABLEKS                       R3 R2 K6 ["saveTokens"]
       56 LOADK                            R3 K18 ["roblox-studio-auth://callback/"]
       57 SETTABLEKS                       R3 R2 K7 ["redirectUrl"]
       59 SETTABLEKS                       R1 R2 K8 ["redirectToAuthorization"]
       61 NEWCLOSURE                       R3 P6
       62 CAPTURE                          VAL R0
       63 SETTABLEKS                       R3 R2 K9 ["invalidateCredentials"]
       65 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["ModelContextProtocol"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_7]
       15 DUPTABLE                         R3 K10 [{"createProvider"}]
       16 SETTABLEKS                       R2 R3 K9 ["createProvider"]
       18 RETURN                           R3 1
