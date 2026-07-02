MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["EnableKnowledgeFeeds"]
        4 LOADB                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        7 CALL                             R0 3 0
        8 DUPTABLE                         R0 K7 [{["displayName"] = "StartPage", ["testMatch"]}]
        9 NEWTABLE                         R1 0 1
       11 LOADK                            R2 K8 ["**/*.test"]
       12 SETLIST                          R1 R2 1 [1]
       14 SETTABLEKS                       R1 R0 K6 ["testMatch"]
       16 RETURN                           R0 1
