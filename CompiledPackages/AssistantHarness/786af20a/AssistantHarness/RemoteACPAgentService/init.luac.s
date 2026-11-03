PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 1
        6 NAMECALL                         R0 R0 K0 ["close"]
        8 CALL                             R0 1 1
        9 DUPCLOSURE                       R2 K1 [PROTO_0]
       10 NAMECALL                         R0 R0 K2 ["catch"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Client"]
        3 GETTABLEKS                       R1 R1 K1 ["new"]
        5 DUPTABLE                         R2 K6 [{["name"] = "roblox-assistant-ui", ["version"] = "0.0.0"}]
        6 DUPTABLE                         R3 K8 [{"capabilities"}]
        7 NEWTABLE                         R4 0 0
        9 SETTABLEKS                       R4 R3 K7 ["capabilities"]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K9 ["makeCASTransport"]
       15 MOVE                             R3 R0
       16 CALL                             R2 1 1
       17 MOVE                             R5 R2
       18 NAMECALL                         R3 R1 K10 ["connect"]
       20 CALL                             R3 2 0
       21 LOADB                            R3 0
       22 NEWCLOSURE                       R4 P0
       23 CAPTURE                          REF R3
       24 CAPTURE                          VAL R1
       25 DUPTABLE                         R5 K13 [{"client", "dispose"}]
       26 SETTABLEKS                       R1 R5 K11 ["client"]
       28 SETTABLEKS                       R4 R5 K12 ["dispose"]
       30 CLOSEUPVALS                      R3
       31 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantHarness"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["AgentClientProtocol"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K8 ["CASTransport"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K9 [PROTO_2]
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 DUPTABLE                         R4 K11 [{"new"}]
       25 SETTABLEKS                       R3 R4 K10 ["new"]
       27 RETURN                           R4 1
