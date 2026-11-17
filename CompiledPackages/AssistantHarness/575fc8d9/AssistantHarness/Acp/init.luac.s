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
       18 GETTABLEKS                       R3 R3 K8 ["RobloxExtensions"]
       20 CALL                             R2 1 1
       21 DUPTABLE                         R3 K14 [{"Client", "PeerTransport", "Protocol", "Server", "Types", "RobloxExtensions"}]
       22 GETTABLEKS                       R4 R1 K9 ["Client"]
       24 SETTABLEKS                       R4 R3 K9 ["Client"]
       26 GETTABLEKS                       R4 R1 K10 ["PeerTransport"]
       28 SETTABLEKS                       R4 R3 K10 ["PeerTransport"]
       30 GETTABLEKS                       R4 R1 K11 ["Protocol"]
       32 SETTABLEKS                       R4 R3 K11 ["Protocol"]
       34 GETTABLEKS                       R4 R1 K12 ["Server"]
       36 SETTABLEKS                       R4 R3 K12 ["Server"]
       38 GETTABLEKS                       R4 R1 K13 ["Types"]
       40 SETTABLEKS                       R4 R3 K13 ["Types"]
       42 SETTABLEKS                       R2 R3 K8 ["RobloxExtensions"]
       44 RETURN                           R3 1
