MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ChannelStoreWVOverrideABTestPercent"]
        4 LOADN                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastInt"]
        7 CALL                             R0 3 0
        8 GETIMPORT                        R0 K1 [game]
       10 LOADK                            R2 K4 ["CreatorStoreWVEnableABTest"]
       11 LOADB                            R3 0
       12 NAMECALL                         R0 R0 K5 ["DefineFastFlag"]
       14 CALL                             R0 3 0
       15 DUPTABLE                         R0 K7 [{"testMatch"}]
       16 NEWTABLE                         R1 0 1
       18 LOADK                            R2 K8 ["**/*.spec"]
       19 SETLIST                          R1 R2 1 [1]
       21 SETTABLEKS                       R1 R0 K6 ["testMatch"]
       23 RETURN                           R0 1
