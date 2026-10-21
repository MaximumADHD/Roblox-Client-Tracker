PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 DUPTABLE                         R5 K1 [{"email"}]
        4 GETUPVAL                         R6 3
        5 SETTABLEKS                       R6 R5 K0 ["email"]
        7 NAMECALL                         R3 R3 K2 ["JSONEncode"]
        9 CALL                             R3 2 1
       10 NEWTABLE                         R4 1 0
       12 LOADK                            R5 K3 ["application/json"]
       13 SETTABLEKS                       R5 R4 K4 ["Content-Type"]
       15 NAMECALL                         R0 R0 K5 ["post"]
       17 CALL                             R0 4 1
       18 GETUPVAL                         R1 0
       19 MOVE                             R3 R0
       20 NAMECALL                         R1 R1 K6 ["parseJson"]
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["number"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 GETIMPORT                        R4 K3 [string.format]
        7 LOADK                            R5 K4 ["universeId must be a number, received %s"]
        8 FASTCALL1                        TYPE R0 ; [+3]
        9 MOVE                             R7 R0
       10 GETIMPORT                        R6 K6 [type]
       12 CALL                             R6 1 1
       13 CALL                             R4 2 -1
       14 FASTCALL                         ASSERT ; [+2]
       15 GETIMPORT                        R2 K8 [assert]
       17 CALL                             R2 -1 0
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K1 ["string"]
       21 MOVE                             R4 R1
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K3 [string.format]
       25 LOADK                            R5 K9 ["contactEmail must be a string, received %s"]
       26 FASTCALL1                        TYPE R1 ; [+3]
       27 MOVE                             R7 R1
       28 GETIMPORT                        R6 K6 [type]
       30 CALL                             R6 1 1
       31 CALL                             R4 2 -1
       32 FASTCALL                         ASSERT ; [+2]
       33 GETIMPORT                        R2 K8 [assert]
       35 CALL                             R2 -1 0
       36 GETUPVAL                         R2 1
       37 GETTABLEKS                       R2 R2 K10 ["composeUrl"]
       39 GETUPVAL                         R3 1
       40 GETTABLEKS                       R3 R3 K11 ["APIS_URL"]
       42 LOADK                            R5 K12 ["studio-moderation/v1/"]
       43 MOVE                             R6 R0
       44 LOADK                            R7 K13 ["/contacts"]
       45 CONCAT                           R4 R5 R7
       46 CALL                             R2 2 1
       47 DUPTABLE                         R3 K16 [{"getUrl", "makeRequest"}]
       48 NEWCLOSURE                       R4 P0
       49 CAPTURE                          VAL R2
       50 SETTABLEKS                       R4 R3 K14 ["getUrl"]
       52 NEWCLOSURE                       R4 P1
       53 CAPTURE                          UPVAL U2
       54 CAPTURE                          VAL R2
       55 CAPTURE                          UPVAL U3
       56 CAPTURE                          VAL R1
       57 SETTABLEKS                       R4 R3 K15 ["makeRequest"]
       59 RETURN                           R3 1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U1
        5 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["RobloxAPI"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R1 R1 K8 ["Parent"]
       15 GETIMPORT                        R2 K10 [require]
       17 GETTABLEKS                       R3 R1 K11 ["Util"]
       19 GETTABLEKS                       R3 R3 K12 ["Typecheck"]
       21 GETTABLEKS                       R3 R3 K13 ["t"]
       23 CALL                             R2 1 1
       24 DUPCLOSURE                       R3 K14 [PROTO_3]
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R0
       27 RETURN                           R3 1
