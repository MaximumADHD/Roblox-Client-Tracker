MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["EnableKnowledgeFeeds"]
        4 LOADB                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        7 CALL                             R0 3 0
        8 DUPTABLE                         R0 K6 [{"displayName", "testMatch"}]
        9 LOADK                            R1 K7 ["StartPage"]
       10 SETTABLEKS                       R1 R0 K4 ["displayName"]
       12 NEWTABLE                         R1 0 1
       14 LOADK                            R2 K8 ["**/*.test"]
       15 SETLIST                          R1 R2 1 [1]
       17 SETTABLEKS                       R1 R0 K5 ["testMatch"]
       19 RETURN                           R0 1
