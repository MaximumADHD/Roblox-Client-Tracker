PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 2
        3 JUMPIF                           R1 ; [+11]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K0 ["reject"]
        7 LOADK                            R5 K1 ["PostSendRequestToAllParentsResponse: %*"]
        8 MOVE                             R7 R2
        9 NAMECALL                         R5 R5 K2 ["format"]
       11 CALL                             R5 2 1
       12 MOVE                             R4 R5
       13 CALL                             R3 1 -1
       14 RETURN                           R3 -1
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K3 ["resolve"]
       18 MOVE                             R4 R0
       19 CALL                             R3 1 -1
       20 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["reject"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K2 [{"requestType", "requestDetails"}]
        2 GETTABLEKS                       R4 R0 K0 ["requestType"]
        4 SETTABLEKS                       R4 R3 K0 ["requestType"]
        6 GETTABLEKS                       R4 R0 K1 ["requestDetails"]
        8 SETTABLEKS                       R4 R3 K1 ["requestDetails"]
       10 NAMECALL                         R1 R1 K3 ["JSONEncode"]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K4 ["composeUrl"]
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K5 ["APIS_URL"]
       19 LOADK                            R4 K6 ["child-requests-api/v1/send-request-to-all-parents"]
       20 CALL                             R2 2 1
       21 GETUPVAL                         R3 2
       22 NAMECALL                         R3 R3 K7 ["GetUserId"]
       24 CALL                             R3 1 1
       25 DUPTABLE                         R4 K12 [{"Method", "Url", "Headers", "Body"}]
       26 LOADK                            R5 K13 ["POST"]
       27 SETTABLEKS                       R5 R4 K8 ["Method"]
       29 SETTABLEKS                       R2 R4 K9 ["Url"]
       31 NEWTABLE                         R5 4 0
       33 LOADK                            R6 K14 ["application/json"]
       34 SETTABLEKS                       R6 R5 K15 ["Content-Type"]
       36 LOADK                            R6 K14 ["application/json"]
       37 SETTABLEKS                       R6 R5 K16 ["Accept"]
       39 FASTCALL1                        TOSTRING R3 ; [+3]
       40 MOVE                             R7 R3
       41 GETIMPORT                        R6 K18 [tostring]
       43 CALL                             R6 1 1
       44 SETTABLEKS                       R6 R5 K19 ["robloxctx-authenticated-userid"]
       46 SETTABLEKS                       R5 R4 K10 ["Headers"]
       48 SETTABLEKS                       R1 R4 K11 ["Body"]
       50 GETUPVAL                         R5 3
       51 GETTABLEKS                       R5 R5 K20 ["Request"]
       53 MOVE                             R6 R4
       54 CALL                             R5 1 1
       55 DUPCLOSURE                       R7 K21 [PROTO_0]
       56 CAPTURE                          UPVAL U4
       57 CAPTURE                          UPVAL U5
       58 NAMECALL                         R5 R5 K22 ["andThen"]
       60 CALL                             R5 2 1
       61 DUPCLOSURE                       R7 K23 [PROTO_1]
       62 CAPTURE                          UPVAL U5
       63 NAMECALL                         R5 R5 K24 ["catch"]
       65 CALL                             R5 2 -1
       66 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TeamCreateCollaborators"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Promise"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K10 [game]
       23 LOADK                            R5 K11 ["HttpService"]
       24 NAMECALL                         R3 R3 K12 ["GetService"]
       26 CALL                             R3 2 1
       27 GETTABLEKS                       R4 R0 K13 ["Src"]
       29 GETTABLEKS                       R4 R4 K14 ["Contexts"]
       31 GETIMPORT                        R5 K5 [require]
       33 GETTABLEKS                       R6 R4 K15 ["NetworkContext"]
       35 CALL                             R5 1 1
       36 GETTABLEKS                       R6 R1 K16 ["RobloxAPI"]
       38 GETTABLEKS                       R6 R6 K17 ["Url"]
       40 GETTABLEKS                       R7 R6 K18 ["new"]
       42 CALL                             R7 0 1
       43 GETTABLEKS                       R8 R0 K13 ["Src"]
       45 GETTABLEKS                       R8 R8 K19 ["Network"]
       47 GETIMPORT                        R9 K5 [require]
       49 GETTABLEKS                       R10 R8 K20 ["Http"]
       51 CALL                             R9 1 1
       52 GETIMPORT                        R10 K10 [game]
       54 LOADK                            R12 K21 ["StudioService"]
       55 NAMECALL                         R10 R10 K12 ["GetService"]
       57 CALL                             R10 2 1
       58 GETIMPORT                        R11 K5 [require]
       60 GETTABLEKS                       R12 R0 K13 ["Src"]
       62 GETTABLEKS                       R12 R12 K22 ["Types"]
       64 CALL                             R11 1 1
       65 GETIMPORT                        R12 K5 [require]
       67 GETTABLEKS                       R13 R0 K6 ["Packages"]
       69 GETTABLEKS                       R13 R13 K23 ["t"]
       71 CALL                             R12 1 1
       72 GETTABLEKS                       R13 R12 K24 ["interface"]
       74 DUPTABLE                         R14 K27 [{"sessionId", "lockedUntil"}]
       75 GETTABLEKS                       R15 R12 K28 ["optional"]
       77 GETTABLEKS                       R16 R12 K29 ["string"]
       79 CALL                             R15 1 1
       80 SETTABLEKS                       R15 R14 K25 ["sessionId"]
       82 GETTABLEKS                       R15 R12 K28 ["optional"]
       84 GETTABLEKS                       R16 R12 K29 ["string"]
       86 CALL                             R15 1 1
       87 SETTABLEKS                       R15 R14 K26 ["lockedUntil"]
       89 CALL                             R13 1 1
       90 DUPCLOSURE                       R14 K30 [PROTO_2]
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R13
       96 CAPTURE                          VAL R2
       97 RETURN                           R14 1
