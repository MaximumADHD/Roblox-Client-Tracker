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
       14 DUPTABLE                         R2 K12 [{["loadSession"] = True, ["promptCapabilities"], ["mcpCapabilities"]}]
       15 DUPTABLE                         R3 K17 [{["image"] = True, ["audio"] = False, ["embeddedContext"] = True}]
       16 SETTABLEKS                       R3 R2 K10 ["promptCapabilities"]
       18 DUPTABLE                         R3 K20 [{["http"] = True, ["sse"] = False}]
       19 SETTABLEKS                       R3 R2 K11 ["mcpCapabilities"]
       21 GETIMPORT                        R3 K23 [table.freeze]
       23 MOVE                             R4 R2
       24 CALL                             R3 1 -1
       25 RETURN                           R3 -1
