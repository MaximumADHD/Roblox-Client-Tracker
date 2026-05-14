PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R2 R1 K1 ["CanCollaborate"]
        4 GETTABLEKS                       R3 R1 K2 ["Error"]
        6 RETURN                           R2 2

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R2 R1 K1 ["composeUrl"]
        6 GETTABLEKS                       R3 R1 K2 ["APIS_URL"]
        8 LOADK                            R4 K3 ["team-create-service/v1/GetCanCollaborate"]
        9 CALL                             R2 2 1
       10 GETUPVAL                         R3 1
       11 NAMECALL                         R3 R3 K4 ["GetUserId"]
       13 CALL                             R3 1 1
       14 NEWTABLE                         R4 2 0
       16 LOADK                            R5 K5 ["application/json"]
       17 SETTABLEKS                       R5 R4 K6 ["Content-Type"]
       19 FASTCALL1                        TOSTRING R3 ; [+3]
       20 MOVE                             R6 R3
       21 GETIMPORT                        R5 K8 [tostring]
       23 CALL                             R5 1 1
       24 SETTABLEKS                       R5 R4 K9 ["robloxctx-authenticated-userid"]
       26 GETUPVAL                         R5 2
       27 MOVE                             R7 R2
       28 GETUPVAL                         R8 3
       29 DUPTABLE                         R10 K11 [{"universeId"}]
       30 SETTABLEKS                       R0 R10 K10 ["universeId"]
       32 NAMECALL                         R8 R8 K12 ["JSONEncode"]
       34 CALL                             R8 2 1
       35 MOVE                             R9 R4
       36 NAMECALL                         R5 R5 K13 ["post"]
       38 CALL                             R5 4 1
       39 GETUPVAL                         R6 2
       40 MOVE                             R8 R5
       41 NAMECALL                         R6 R6 K14 ["parseJson"]
       43 CALL                             R6 2 1
       44 DUPCLOSURE                       R8 K15 [PROTO_0]
       45 NAMECALL                         R6 R6 K16 ["andThen"]
       47 CALL                             R6 2 1
       48 DUPCLOSURE                       R8 K17 [PROTO_1]
       49 NAMECALL                         R6 R6 K18 ["catch"]
       51 CALL                             R6 2 -1
       52 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["StudioService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["ManageCollaborators"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R2 K11 ["Src"]
       23 GETTABLEKS                       R4 R4 K12 ["Networking"]
       25 GETTABLEKS                       R4 R4 K13 ["Http"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K10 [require]
       30 GETTABLEKS                       R5 R2 K14 ["Packages"]
       32 GETTABLEKS                       R5 R5 K15 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K16 ["RobloxAPI"]
       37 GETTABLEKS                       R5 R5 K17 ["Url"]
       39 GETTABLEKS                       R6 R4 K13 ["Http"]
       41 GETTABLEKS                       R6 R6 K12 ["Networking"]
       43 GETTABLEKS                       R7 R6 K18 ["new"]
       45 DUPTABLE                         R8 K21 [{"isInternal", "retryAmount"}]
       46 LOADB                            R9 1
       47 SETTABLEKS                       R9 R8 K19 ["isInternal"]
       49 LOADN                            R9 3
       50 SETTABLEKS                       R9 R8 K20 ["retryAmount"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K1 [game]
       55 LOADK                            R10 K22 ["ContentProvider"]
       56 NAMECALL                         R8 R8 K3 ["GetService"]
       58 CALL                             R8 2 1
       59 GETTABLEKS                       R9 R8 K23 ["BaseUrl"]
       61 GETTABLEKS                       R10 R3 K24 ["parseBaseUrlInformation"]
       63 MOVE                             R11 R9
       64 CALL                             R10 1 3
       65 DUPCLOSURE                       R13 K25 [PROTO_2]
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R0
       70 RETURN                           R13 1
