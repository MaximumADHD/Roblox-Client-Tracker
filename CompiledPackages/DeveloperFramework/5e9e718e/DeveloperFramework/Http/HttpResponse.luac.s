PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["pretty"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K5 [{["depth"] = ∞, ["multiline"] = True}]
        5 CALL                             R1 2 1
        6 LOADK                            R3 K6 ["HttpResponse = %*"]
        7 MOVE                             R5 R1
        8 NAMECALL                         R3 R3 K7 ["format"]
       10 CALL                             R3 2 1
       11 MOVE                             R2 R3
       12 RETURN                           R2 1

PROTO_1:
        0 DUPTABLE                         R4 K4 [{"responseTimeMs", "responseCode", "responseBody", "requestOptions"}]
        1 SETTABLEKS                       R1 R4 K0 ["responseTimeMs"]
        3 SETTABLEKS                       R2 R4 K1 ["responseCode"]
        5 SETTABLEKS                       R0 R4 K2 ["responseBody"]
        7 SETTABLEKS                       R3 R4 K3 ["requestOptions"]
        9 GETUPVAL                         R7 0
       10 FASTCALL2                        SETMETATABLE R4 R7 ; [+4]
       12 MOVE                             R6 R4
       13 GETIMPORT                        R5 K6 [setmetatable]
       15 CALL                             R5 2 0
       16 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Http"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Dash"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 2 0
       18 DUPCLOSURE                       R3 K8 [PROTO_0]
       19 CAPTURE                          VAL R1
       20 SETTABLEKS                       R3 R2 K9 ["__tostring"]
       22 DUPCLOSURE                       R3 K10 [PROTO_1]
       23 CAPTURE                          VAL R2
       24 SETTABLEKS                       R3 R2 K11 ["new"]
       26 RETURN                           R2 1
