PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 2
        3 JUMPIF                           R1 ; [+11]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K0 ["reject"]
        7 LOADK                            R5 K1 ["GetUniverseConfigurationResponse: %*"]
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
        1 GETTABLEKS                       R1 R1 K0 ["composeUrl"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["DEVELOP_URL"]
        6 GETIMPORT                        R3 K4 [string.format]
        8 LOADK                            R4 K5 ["v2/universes/%d/configuration"]
        9 MOVE                             R5 R0
       10 CALL                             R3 2 -1
       11 CALL                             R1 -1 1
       12 DUPTABLE                         R2 K10 [{["Method"] = "GET", ["Url"], ["Headers"]}]
       13 SETTABLEKS                       R1 R2 K8 ["Url"]
       15 NEWTABLE                         R3 2 0
       17 LOADK                            R4 K11 ["application/json"]
       18 SETTABLEKS                       R4 R3 K12 ["Content-Type"]
       20 LOADK                            R4 K11 ["application/json"]
       21 SETTABLEKS                       R4 R3 K13 ["Accept"]
       23 SETTABLEKS                       R3 R2 K9 ["Headers"]
       25 GETUPVAL                         R3 1
       26 GETTABLEKS                       R3 R3 K14 ["Request"]
       28 MOVE                             R4 R2
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R5 K15 [PROTO_0]
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          UPVAL U3
       33 NAMECALL                         R3 R3 K16 ["andThen"]
       35 CALL                             R3 2 1
       36 DUPCLOSURE                       R5 K17 [PROTO_1]
       37 CAPTURE                          UPVAL U3
       38 NAMECALL                         R3 R3 K18 ["catch"]
       40 CALL                             R3 2 -1
       41 RETURN                           R3 -1

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
       46 GETIMPORT                        R9 K5 [require]
       48 GETTABLEKS                       R10 R0 K9 ["Src"]
       50 GETTABLEKS                       R10 R10 K17 ["Types"]
       52 CALL                             R9 1 1
       53 GETIMPORT                        R10 K5 [require]
       55 GETTABLEKS                       R11 R0 K6 ["Packages"]
       57 GETTABLEKS                       R11 R11 K18 ["t"]
       59 CALL                             R10 1 1
       60 GETTABLEKS                       R11 R10 K19 ["interface"]
       62 DUPTABLE                         R12 K21 [{"name"}]
       63 GETTABLEKS                       R13 R10 K22 ["string"]
       65 SETTABLEKS                       R13 R12 K20 ["name"]
       67 CALL                             R11 1 1
       68 DUPCLOSURE                       R12 K23 [PROTO_2]
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R11
       72 CAPTURE                          VAL R2
       73 RETURN                           R12 1
