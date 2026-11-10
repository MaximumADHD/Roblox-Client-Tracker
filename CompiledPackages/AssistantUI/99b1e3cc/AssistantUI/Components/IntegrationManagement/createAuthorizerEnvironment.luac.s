PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R1 R1 K1 ["base64EncodeAsync"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["get"]
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R2 R2 K1 ["startMCPAuthAsync"]
        6 MOVE                             R3 R0
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          VAL R1
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R1 R0 K1 ["generatePKCEAsync"]
        6 CALL                             R1 0 1
        7 DUPTABLE                         R2 K4 [{"code_verifier", "code_challenge"}]
        8 GETTABLEKS                       R3 R1 K5 ["codeVerifier"]
       10 SETTABLEKS                       R3 R2 K2 ["code_verifier"]
       12 GETTABLEKS                       R3 R1 K6 ["codeChallenge"]
       14 SETTABLEKS                       R3 R2 K3 ["code_challenge"]
       16 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["get"]
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R3 R2 K1 ["http"]
        6 GETTABLEKS                       R3 R3 K2 ["requestAsync"]
        8 DUPTABLE                         R4 K7 [{"Url", "Method", "Headers", "Body"}]
        9 SETTABLEKS                       R0 R4 K3 ["Url"]
       11 GETTABLEKS                       R5 R1 K8 ["method"]
       13 SETTABLEKS                       R5 R4 K4 ["Method"]
       15 GETTABLEKS                       R5 R1 K9 ["headers"]
       17 SETTABLEKS                       R5 R4 K5 ["Headers"]
       19 GETTABLEKS                       R5 R1 K10 ["body"]
       21 SETTABLEKS                       R5 R4 K6 ["Body"]
       23 CALL                             R3 1 -1
       24 RETURN                           R3 -1

PROTO_6:
        0 DUPCLOSURE                       R0 K0 [PROTO_0]
        1 CAPTURE                          UPVAL U0
        2 DUPCLOSURE                       R1 K1 [PROTO_3]
        3 CAPTURE                          UPVAL U0
        4 DUPCLOSURE                       R2 K2 [PROTO_4]
        5 CAPTURE                          UPVAL U0
        6 DUPCLOSURE                       R3 K3 [PROTO_5]
        7 CAPTURE                          UPVAL U0
        8 DUPTABLE                         R4 K8 [{"httpRequest", "base64Encode", "generatePKCEChallenge", "redirectToAuthorization"}]
        9 SETTABLEKS                       R3 R4 K4 ["httpRequest"]
       11 SETTABLEKS                       R0 R4 K5 ["base64Encode"]
       13 SETTABLEKS                       R2 R4 K6 ["generatePKCEChallenge"]
       15 SETTABLEKS                       R1 R4 K7 ["redirectToAuthorization"]
       17 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["ModelContextProtocol"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K10 [PROTO_6]
       22 CAPTURE                          VAL R1
       23 RETURN                           R3 1
