PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clientInformation"]
        3 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["clientInformation"]
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["metadata"]
        3 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["metadata"]
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["tokens"]
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
        0 DUPTABLE                         R2 K11 [{[1], ["getClientInformation"], ["saveClientInformation"], ["getMetadata"], ["saveMetadata"], ["getTokens"], ["saveTokens"], ["redirectUrl"] = "roblox-studio-auth://callback/", ["redirectToAuthorization"], ["invalidateCredentials"]}]
        1 DUPTABLE                         R3 K19 [{["client_name"] = "Roblox Assistant", ["redirect_uris"], ["grant_types"], ["response_types"], ["token_endpoint_auth_method"] = "none"}]
        2 NEWTABLE                         R4 0 1
        4 LOADK                            R5 K8 ["roblox-studio-auth://callback/"]
        5 SETLIST                          R4 R5 1 [1]
        7 SETTABLEKS                       R4 R3 K14 ["redirect_uris"]
        9 NEWTABLE                         R4 0 2
       11 LOADK                            R5 K20 ["authorization_code"]
       12 LOADK                            R6 K21 ["refresh_token"]
       13 SETLIST                          R4 R5 2 [1]
       15 SETTABLEKS                       R4 R3 K15 ["grant_types"]
       17 NEWTABLE                         R4 0 1
       19 LOADK                            R5 K22 ["code"]
       20 SETLIST                          R4 R5 1 [1]
       22 SETTABLEKS                       R4 R3 K16 ["response_types"]
       24 SETTABLEKS                       R3 R2 K0 ["clientRegistrationConfig"]
       26 NEWCLOSURE                       R3 P0
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R3 R2 K1 ["getClientInformation"]
       30 NEWCLOSURE                       R3 P1
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R3 R2 K2 ["saveClientInformation"]
       34 NEWCLOSURE                       R3 P2
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R3 R2 K3 ["getMetadata"]
       38 NEWCLOSURE                       R3 P3
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R3 R2 K4 ["saveMetadata"]
       42 NEWCLOSURE                       R3 P4
       43 CAPTURE                          VAL R0
       44 SETTABLEKS                       R3 R2 K5 ["getTokens"]
       46 NEWCLOSURE                       R3 P5
       47 CAPTURE                          VAL R0
       48 SETTABLEKS                       R3 R2 K6 ["saveTokens"]
       50 SETTABLEKS                       R1 R2 K9 ["redirectToAuthorization"]
       52 NEWCLOSURE                       R3 P6
       53 CAPTURE                          VAL R0
       54 SETTABLEKS                       R3 R2 K10 ["invalidateCredentials"]
       56 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["ModelContextProtocol"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_7]
       15 DUPTABLE                         R3 K10 [{"createProvider"}]
       16 SETTABLEKS                       R2 R3 K9 ["createProvider"]
       18 RETURN                           R3 1
