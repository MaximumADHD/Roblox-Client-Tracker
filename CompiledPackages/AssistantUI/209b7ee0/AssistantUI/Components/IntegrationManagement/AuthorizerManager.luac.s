PROTO_0:
        0 NEWTABLE                         R0 4 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
        5 MOVE                             R2 R0
        6 GETIMPORT                        R1 K1 [setmetatable]
        8 CALL                             R1 2 0
        9 NEWTABLE                         R1 0 0
       11 SETTABLEKS                       R1 R0 K2 ["authorizers"]
       13 NEWTABLE                         R1 0 0
       15 SETTABLEKS                       R1 R0 K3 ["storage"]
       17 LOADNIL                          R1
       18 SETTABLEKS                       R1 R0 K4 ["exchangeAuthCallback"]
       20 GETUPVAL                         R1 1
       21 CALL                             R1 0 1
       22 SETTABLEKS                       R1 R0 K5 ["authorizerEnvironment"]
       24 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["exchangeAuthCallback"]
        3 JUMPIFNOT                        R1 ; [+8]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["exchangeAuthCallback"]
        7 GETTABLEKS                       R2 R0 K1 ["code"]
        9 GETTABLEKS                       R3 R0 K2 ["state"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["authorizerEnvironment"]
        3 GETTABLEKS                       R1 R2 K1 ["redirectToAuthorization"]
        5 MOVE                             R2 R0
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U0
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R4 R0 K0 ["storage"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIF                           R3 ; [+5]
        4 NEWTABLE                         R3 0 0
        6 GETTABLEKS                       R4 R0 K0 ["storage"]
        8 SETTABLE                         R3 R4 R1
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R0
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R5 R6 K1 ["createProvider"]
       14 MOVE                             R6 R3
       15 MOVE                             R7 R4
       16 CALL                             R5 2 1
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R6 R7 K2 ["new"]
       20 MOVE                             R7 R5
       21 GETTABLEKS                       R8 R0 K3 ["authorizerEnvironment"]
       23 DUPTABLE                         R9 K5 [{"serverUrl"}]
       24 SETTABLEKS                       R2 R9 K4 ["serverUrl"]
       26 CALL                             R6 3 1
       27 GETTABLEKS                       R7 R0 K6 ["authorizers"]
       29 SETTABLE                         R6 R7 R1
       30 GETTABLEKS                       R7 R0 K0 ["storage"]
       32 SETTABLE                         R3 R7 R1
       33 RETURN                           R6 1

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["authorizers"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

PROTO_5:
        0 MOVE                             R5 R1
        1 NAMECALL                         R3 R0 K0 ["getAuthorizer"]
        3 CALL                             R3 2 1
        4 JUMPIF                           R3 ; [+6]
        5 MOVE                             R6 R1
        6 MOVE                             R7 R2
        7 NAMECALL                         R4 R0 K1 ["createAuthorizer"]
        9 CALL                             R4 3 1
       10 MOVE                             R3 R4
       11 RETURN                           R3 1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["authorizers"]
        2 LOADNIL                          R3
        3 SETTABLE                         R3 R2 R1
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["exchangeAuthorization"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 LOADNIL                          R3
        2 SETTABLEKS                       R3 R2 K0 ["exchangeAuthCallback"]
        4 GETIMPORT                        R2 K2 [pcall]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R1
       10 CALL                             R2 1 2
       11 JUMPIF                           R2 ; [+8]
       12 GETUPVAL                         R4 2
       13 CALL                             R4 0 1
       14 JUMPIFNOT                        R4 ; [+5]
       15 GETIMPORT                        R4 K4 [print]
       17 LOADK                            R5 K5 ["OAuth error:"]
       18 MOVE                             R6 R3
       19 CALL                             R4 2 0
       20 RETURN                           R0 0

PROTO_9:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["getAuthorizer"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+6]
        5 GETIMPORT                        R3 K2 [error]
        7 LOADK                            R5 K3 ["Authorizer not found for: "]
        8 MOVE                             R6 R1
        9 CONCAT                           R4 R5 R6
       10 CALL                             R3 1 0
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R2
       14 CAPTURE                          UPVAL U0
       15 SETTABLEKS                       R3 R0 K4 ["exchangeAuthCallback"]
       17 NAMECALL                         R4 R2 K5 ["startAuthorization"]
       19 CALL                             R4 1 0
       20 GETTABLEKS                       R4 R2 K6 ["authorizationFinishPromise"]
       22 RETURN                           R4 1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["storage"]
        2 RETURN                           R1 1

PROTO_11:
        0 MOVE                             R2 R1
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETTABLEKS                       R8 R0 K0 ["storage"]
        6 GETTABLE                         R7 R8 R5
        7 JUMPIF                           R7 ; [+4]
        8 GETTABLEKS                       R7 R0 K0 ["storage"]
       10 SETTABLE                         R6 R7 R5
       11 JUMP                             ; [+16]
       12 GETIMPORT                        R7 K3 [table.clear]
       14 GETTABLEKS                       R9 R0 K0 ["storage"]
       16 GETTABLE                         R8 R9 R5
       17 CALL                             R7 1 0
       18 MOVE                             R7 R6
       19 LOADNIL                          R8
       20 LOADNIL                          R9
       21 FORGPREP                         R7
       22 GETTABLEKS                       R13 R0 K0 ["storage"]
       24 GETTABLE                         R12 R13 R5
       25 SETTABLE                         R11 R12 R10
       26 FORGLOOP                         R7 2 ; [-5]
       28 FORGLOOP                         R2 2 ; [-25]
       30 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["removeSecretsAsync"]
        7 MOVE                             R2 R0
        8 GETUPVAL                         R3 2
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETIMPORT                        R1 K1 [warn]
        5 LOADK                            R2 K2 ["Failed to invalidate credentials for label: "]
        6 GETUPVAL                         R3 1
        7 MOVE                             R4 R0
        8 CALL                             R1 3 0
        9 RETURN                           R0 0

PROTO_14:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["getAuthorizer"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+3]
        5 NAMECALL                         R3 R2 K1 ["invalidateAllCredentials"]
        7 CALL                             R3 1 0
        8 GETTABLEKS                       R4 R0 K2 ["storage"]
       10 GETTABLE                         R3 R4 R1
       11 JUMPIFNOT                        R3 ; [+4]
       12 GETIMPORT                        R4 K5 [table.clear]
       14 MOVE                             R5 R3
       15 CALL                             R4 1 0
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R4 R5 K6 ["try"]
       19 NEWCLOSURE                       R5 P0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          VAL R1
       23 CALL                             R4 1 1
       24 NEWCLOSURE                       R6 P1
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          VAL R1
       27 NAMECALL                         R4 R4 K7 ["catch"]
       29 CALL                             R4 2 -1
       30 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R4 K1 [script]
       11 GETTABLEKS                       R3 R4 K6 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["SecureAuthStorage"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K8 ["Guest"]
       20 GETTABLEKS                       R3 R4 K9 ["Environment"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K6 ["Parent"]
       27 GETTABLEKS                       R4 R5 K10 ["ModelContextProtocol"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K6 ["Parent"]
       34 GETTABLEKS                       R5 R6 K11 ["Promise"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R3 K12 ["Authorizer"]
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R9 R0 K13 ["Components"]
       43 GETTABLEKS                       R8 R9 K14 ["IntegrationManagement"]
       45 GETTABLEKS                       R7 R8 K15 ["AuthorizerProvider"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K5 [require]
       50 GETTABLEKS                       R10 R0 K13 ["Components"]
       52 GETTABLEKS                       R9 R10 K14 ["IntegrationManagement"]
       54 GETTABLEKS                       R8 R9 K16 ["createAuthorizerEnvironment"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K5 [require]
       59 GETTABLEKS                       R10 R0 K17 ["Flags"]
       61 GETTABLEKS                       R9 R10 K18 ["FFlagDebugLogAssistantUI"]
       63 CALL                             R8 1 1
       64 NEWTABLE                         R9 16 0
       66 SETTABLEKS                       R9 R9 K19 ["__index"]
       68 DUPCLOSURE                       R10 K20 [PROTO_0]
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R7
       71 SETTABLEKS                       R10 R9 K21 ["new"]
       73 DUPCLOSURE                       R10 K22 [PROTO_3]
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R5
       76 SETTABLEKS                       R10 R9 K23 ["createAuthorizer"]
       78 DUPCLOSURE                       R10 K24 [PROTO_4]
       79 SETTABLEKS                       R10 R9 K25 ["getAuthorizer"]
       81 DUPCLOSURE                       R10 K26 [PROTO_5]
       82 SETTABLEKS                       R10 R9 K27 ["getOrCreateAuthorizer"]
       84 DUPCLOSURE                       R10 K28 [PROTO_6]
       85 SETTABLEKS                       R10 R9 K29 ["removeAuthorizer"]
       87 DUPCLOSURE                       R10 K30 [PROTO_9]
       88 CAPTURE                          VAL R8
       89 SETTABLEKS                       R10 R9 K31 ["startAuthorization"]
       91 DUPCLOSURE                       R10 K32 [PROTO_10]
       92 SETTABLEKS                       R10 R9 K33 ["getAllAuthPersistInfo"]
       94 DUPCLOSURE                       R10 K34 [PROTO_11]
       95 SETTABLEKS                       R10 R9 K35 ["setAllAuthPersistInfo"]
       97 DUPCLOSURE                       R10 K36 [PROTO_14]
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R8
      102 SETTABLEKS                       R10 R9 K37 ["promiseInvalidateCredentials"]
      104 RETURN                           R9 1
