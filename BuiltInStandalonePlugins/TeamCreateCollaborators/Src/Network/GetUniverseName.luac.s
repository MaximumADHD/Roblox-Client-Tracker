PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 2
        3 JUMPIF                           R1 ; [+11]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K0 ["reject"]
        7 LOADK                            R5 K1 ["MultiGetUniversesResponse: %*"]
        8 MOVE                             R7 R2
        9 NAMECALL                         R5 R5 K2 ["format"]
       11 CALL                             R5 2 1
       12 MOVE                             R4 R5
       13 CALL                             R3 1 -1
       14 RETURN                           R3 -1
       15 GETTABLEKS                       R4 R0 K3 ["data"]
       17 GETTABLEN                        R3 R4 1
       18 JUMPIF                           R3 ; [+11]
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K0 ["reject"]
       22 LOADK                            R6 K4 ["MultiGetUniversesResponse: no universe found for id %*"]
       23 GETUPVAL                         R8 2
       24 NAMECALL                         R6 R6 K2 ["format"]
       26 CALL                             R6 2 1
       27 MOVE                             R5 R6
       28 CALL                             R4 1 -1
       29 RETURN                           R4 -1
       30 GETUPVAL                         R4 1
       31 GETTABLEKS                       R4 R4 K5 ["resolve"]
       33 DUPTABLE                         R5 K7 [{"name"}]
       34 GETTABLEKS                       R6 R3 K6 ["name"]
       36 SETTABLEKS                       R6 R5 K6 ["name"]
       38 CALL                             R4 1 -1
       39 RETURN                           R4 -1

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
        8 LOADK                            R4 K5 ["v1/universes/multiget?ids=%d"]
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
       30 NEWCLOSURE                       R5 P0
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          VAL R0
       34 NAMECALL                         R3 R3 K15 ["andThen"]
       36 CALL                             R3 2 1
       37 DUPCLOSURE                       R5 K16 [PROTO_1]
       38 CAPTURE                          UPVAL U3
       39 NAMECALL                         R3 R3 K17 ["catch"]
       41 CALL                             R3 2 -1
       42 RETURN                           R3 -1

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
       62 DUPTABLE                         R12 K21 [{"data"}]
       63 GETTABLEKS                       R13 R10 K22 ["array"]
       65 GETTABLEKS                       R14 R10 K19 ["interface"]
       67 DUPTABLE                         R15 K24 [{"name"}]
       68 GETTABLEKS                       R16 R10 K25 ["string"]
       70 SETTABLEKS                       R16 R15 K23 ["name"]
       72 CALL                             R14 1 1
       73 CALL                             R13 1 1
       74 SETTABLEKS                       R13 R12 K20 ["data"]
       76 CALL                             R11 1 1
       77 DUPCLOSURE                       R12 K26 [PROTO_2]
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R11
       81 CAPTURE                          VAL R2
       82 RETURN                           R12 1
