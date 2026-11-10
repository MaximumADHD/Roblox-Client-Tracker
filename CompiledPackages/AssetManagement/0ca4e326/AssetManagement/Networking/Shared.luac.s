PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+24]
        7 DUPTABLE                         R1 K8 [{["kind"] = "Http", ["message"], ["statusCode"], ["responseBody"]}]
        8 GETTABLEKS                       R3 R0 K9 ["requestErrorMessage"]
       10 JUMPIF                           R3 ; [+4]
       11 GETTABLEKS                       R3 R0 K10 ["responseCode"]
       13 JUMPIF                           R3 ; [+1]
       14 LOADK                            R3 K11 ["Network request failed"]
       15 FASTCALL1                        TOSTRING R3 ; [+2]
       16 GETIMPORT                        R2 K13 [tostring]
       18 CALL                             R2 1 1
       19 SETTABLEKS                       R2 R1 K5 ["message"]
       21 GETTABLEKS                       R2 R0 K10 ["responseCode"]
       23 SETTABLEKS                       R2 R1 K6 ["statusCode"]
       25 GETTABLEKS                       R2 R0 K7 ["responseBody"]
       27 SETTABLEKS                       R2 R1 K7 ["responseBody"]
       29 RETURN                           R1 1
       30 DUPTABLE                         R1 K15 [{["kind"] = "Transport", ["message"]}]
       31 FASTCALL1                        TOSTRING R0 ; [+3]
       32 MOVE                             R3 R0
       33 GETIMPORT                        R2 K13 [tostring]
       35 CALL                             R2 1 1
       36 SETTABLEKS                       R2 R1 K5 ["message"]
       38 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["reject"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["toError"]
        6 MOVE                             R3 R0
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 -1
        9 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ScopeType"]
        3 GETTABLEKS                       R1 R1 K1 ["User"]
        5 JUMPIFNOTEQ                      R0 R1 ; [+3]
        7 LOADK                            R1 K2 ["users"]
        8 RETURN                           R1 1
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K0 ["ScopeType"]
       12 GETTABLEKS                       R1 R1 K3 ["Group"]
       14 JUMPIFNOTEQ                      R0 R1 ; [+3]
       16 LOADK                            R1 K4 ["groups"]
       17 RETURN                           R1 1
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K0 ["ScopeType"]
       21 GETTABLEKS                       R1 R1 K5 ["Universe"]
       23 JUMPIFNOTEQ                      R0 R1 ; [+3]
       25 LOADK                            R1 K6 ["universes"]
       26 RETURN                           R1 1
       27 LOADK                            R1 K7 [""]
       28 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManagement"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 LOADK                            R3 K4 ["Packages"]
        8 NAMECALL                         R1 R0 K3 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K6 [require]
       13 GETTABLEKS                       R3 R0 K7 ["Enums"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R0 K8 ["Networking"]
       20 GETTABLEKS                       R4 R4 K9 ["Types"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R1 K10 ["Promise"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K9 ["Types"]
       32 CALL                             R5 1 1
       33 NEWTABLE                         R6 4 0
       35 DUPCLOSURE                       R7 K11 [PROTO_0]
       36 SETTABLEKS                       R7 R6 K12 ["toError"]
       38 DUPCLOSURE                       R7 K13 [PROTO_1]
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R6
       41 SETTABLEKS                       R7 R6 K14 ["reject"]
       43 DUPCLOSURE                       R7 K15 [PROTO_2]
       44 CAPTURE                          VAL R2
       45 SETTABLEKS                       R7 R6 K16 ["convertScopeTypeToAccountType"]
       47 RETURN                           R6 1
