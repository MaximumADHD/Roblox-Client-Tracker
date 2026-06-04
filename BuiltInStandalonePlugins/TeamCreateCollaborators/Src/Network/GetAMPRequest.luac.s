PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 2
        3 JUMPIF                           R1 ; [+11]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K0 ["reject"]
        7 LOADK                            R5 K1 ["GetAMPRequestResponse: %*"]
        8 MOVE                             R7 R2
        9 NAMECALL                         R5 R5 K2 ["format"]
       11 CALL                             R5 2 1
       12 MOVE                             R4 R5
       13 CALL                             R3 1 -1
       14 RETURN                           R3 -1
       15 DUPTABLE                         R3 K5 [{"isGranted", "access"}]
       16 GETTABLEKS                       R5 R0 K4 ["access"]
       18 JUMPIFEQKS                       R5 K6 ["Granted"] ; [+2]
       20 LOADB                            R4 0 +1
       21 LOADB                            R4 1
       22 SETTABLEKS                       R4 R3 K3 ["isGranted"]
       24 GETTABLEKS                       R4 R0 K4 ["access"]
       26 SETTABLEKS                       R4 R3 K4 ["access"]
       28 GETUPVAL                         R4 1
       29 GETTABLEKS                       R4 R4 K7 ["resolve"]
       31 MOVE                             R5 R3
       32 CALL                             R4 1 -1
       33 RETURN                           R4 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["reject"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 LOADK                            R3 K0 ["access-management/v1/upsell-feature-access?featureName=%*&nameSpace=%*"]
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 NAMECALL                         R3 R3 K1 ["format"]
        5 CALL                             R3 3 1
        6 MOVE                             R2 R3
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K2 ["composeUrl"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K3 ["APIS_URL"]
       13 MOVE                             R5 R2
       14 CALL                             R3 2 1
       15 GETUPVAL                         R4 1
       16 NAMECALL                         R4 R4 K4 ["GetUserId"]
       18 CALL                             R4 1 1
       19 DUPTABLE                         R5 K8 [{"Method", "Url", "Headers"}]
       20 LOADK                            R6 K9 ["GET"]
       21 SETTABLEKS                       R6 R5 K5 ["Method"]
       23 SETTABLEKS                       R3 R5 K6 ["Url"]
       25 NEWTABLE                         R6 4 0
       27 LOADK                            R7 K10 ["application/json"]
       28 SETTABLEKS                       R7 R6 K11 ["Content-Type"]
       30 LOADK                            R7 K10 ["application/json"]
       31 SETTABLEKS                       R7 R6 K12 ["Accept"]
       33 FASTCALL1                        TOSTRING R4 ; [+3]
       34 MOVE                             R8 R4
       35 GETIMPORT                        R7 K14 [tostring]
       37 CALL                             R7 1 1
       38 SETTABLEKS                       R7 R6 K15 ["robloxctx-authenticated-userid"]
       40 SETTABLEKS                       R6 R5 K7 ["Headers"]
       42 GETUPVAL                         R6 2
       43 GETTABLEKS                       R6 R6 K16 ["Request"]
       45 MOVE                             R7 R5
       46 CALL                             R6 1 1
       47 DUPCLOSURE                       R8 K17 [PROTO_0]
       48 CAPTURE                          UPVAL U3
       49 CAPTURE                          UPVAL U4
       50 NAMECALL                         R6 R6 K18 ["andThen"]
       52 CALL                             R6 2 1
       53 DUPCLOSURE                       R8 K19 [PROTO_1]
       54 CAPTURE                          UPVAL U4
       55 NAMECALL                         R6 R6 K20 ["catch"]
       57 CALL                             R6 2 -1
       58 RETURN                           R6 -1

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
       21 GETTABLEKS                       R3 R0 K9 ["Src"]
       23 GETTABLEKS                       R3 R3 K10 ["Contexts"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R3 K11 ["NetworkContext"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R1 K12 ["RobloxAPI"]
       32 GETTABLEKS                       R5 R5 K13 ["Url"]
       34 GETTABLEKS                       R6 R5 K14 ["new"]
       36 CALL                             R6 0 1
       37 GETTABLEKS                       R7 R0 K9 ["Src"]
       39 GETTABLEKS                       R7 R7 K15 ["Network"]
       41 GETIMPORT                        R8 K5 [require]
       43 GETTABLEKS                       R9 R7 K16 ["Http"]
       45 CALL                             R8 1 1
       46 GETIMPORT                        R9 K18 [game]
       48 LOADK                            R11 K19 ["StudioService"]
       49 NAMECALL                         R9 R9 K20 ["GetService"]
       51 CALL                             R9 2 1
       52 GETIMPORT                        R10 K5 [require]
       54 GETTABLEKS                       R11 R0 K9 ["Src"]
       56 GETTABLEKS                       R11 R11 K21 ["Types"]
       58 CALL                             R10 1 1
       59 GETIMPORT                        R11 K5 [require]
       61 GETTABLEKS                       R12 R0 K6 ["Packages"]
       63 GETTABLEKS                       R12 R12 K22 ["t"]
       65 CALL                             R11 1 1
       66 GETTABLEKS                       R12 R11 K23 ["interface"]
       68 DUPTABLE                         R13 K25 [{"access"}]
       69 GETTABLEKS                       R14 R11 K26 ["string"]
       71 SETTABLEKS                       R14 R13 K24 ["access"]
       73 CALL                             R12 1 1
       74 DUPCLOSURE                       R13 K27 [PROTO_2]
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R12
       79 CAPTURE                          VAL R2
       80 RETURN                           R13 1
