PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        5 GETTABLEKS                       R1 R1 K1 ["data"]
        7 MOVE                             R2 R1
        8 JUMPIFNOT                        R2 ; [+1]
        9 GETTABLEN                        R2 R1 1
       10 JUMPIF                           R2 ; [+22]
       11 DUPTABLE                         R3 K6 [{["kind"] = "Http", ["message"], ["statusCode"], [4]}]
       12 LOADK                            R4 K7 ["Plugin %* not found"]
       13 GETUPVAL                         R6 0
       14 NAMECALL                         R4 R4 K8 ["format"]
       16 CALL                             R4 2 1
       17 SETTABLEKS                       R4 R3 K4 ["message"]
       19 GETTABLEKS                       R4 R0 K9 ["responseCode"]
       21 SETTABLEKS                       R4 R3 K5 ["statusCode"]
       23 GETTABLEKS                       R4 R0 K0 ["responseBody"]
       25 SETTABLEKS                       R4 R3 K0 ["responseBody"]
       27 GETUPVAL                         R4 1
       28 GETTABLEKS                       R4 R4 K10 ["reject"]
       30 MOVE                             R5 R3
       31 CALL                             R4 1 -1
       32 RETURN                           R4 -1
       33 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["GetPluginInfoRequest"]
        3 NEWTABLE                         R2 0 1
        5 MOVE                             R3 R0
        6 SETLIST                          R2 R3 1 [1]
        8 CALL                             R1 1 1
        9 NAMECALL                         R1 R1 K1 ["makeRequest"]
       11 CALL                             R1 1 1
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U1
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K2 ["reject"]
       18 NAMECALL                         R1 R1 K3 ["andThen"]
       20 CALL                             R1 3 -1
       21 RETURN                           R1 -1

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
       13 GETTABLEKS                       R3 R0 K7 ["Networking"]
       15 GETTABLEKS                       R3 R3 K8 ["Types"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R1 K9 ["Promise"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K7 ["Networking"]
       27 GETTABLEKS                       R5 R5 K10 ["Shared"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K8 ["Types"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K7 ["Networking"]
       39 GETTABLEKS                       R7 R7 K11 ["Urls"]
       41 CALL                             R6 1 1
       42 DUPCLOSURE                       R7 K12 [PROTO_1]
       43 CAPTURE                          VAL R6
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R4
       46 RETURN                           R7 1
