MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ActivityFeedEndpointFetchCount"]
        4 LOADN                            R3 50
        5 NAMECALL                         R0 R0 K3 ["DefineFastInt"]
        7 CALL                             R0 3 0
        8 GETIMPORT                        R0 K1 [game]
       10 LOADK                            R2 K4 ["ActivityFeedBDISFetchSensitivity"]
       11 LOADN                            R3 50
       12 NAMECALL                         R0 R0 K3 ["DefineFastInt"]
       14 CALL                             R0 3 0
       15 GETIMPORT                        R0 K1 [game]
       17 LOADK                            R2 K5 ["ActivityFeedBDISMinEvents"]
       18 LOADN                            R3 10
       19 NAMECALL                         R0 R0 K3 ["DefineFastInt"]
       21 CALL                             R0 3 0
       22 GETIMPORT                        R0 K1 [game]
       24 LOADK                            R2 K6 ["ActivityFeedRefreshMs"]
       25 LOADK                            R3 K7 [60000]
       26 NAMECALL                         R0 R0 K3 ["DefineFastInt"]
       28 CALL                             R0 3 0
       29 GETIMPORT                        R0 K1 [game]
       31 LOADK                            R2 K8 ["ActivityHistoryCompactUI"]
       32 LOADB                            R3 0
       33 NAMECALL                         R0 R0 K9 ["DefineFastFlag"]
       35 CALL                             R0 3 0
       36 LOADNIL                          R0
       37 RETURN                           R0 1
