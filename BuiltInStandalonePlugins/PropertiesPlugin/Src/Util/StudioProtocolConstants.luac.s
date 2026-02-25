MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 DUPTABLE                         R1 K3 [{"connect", "disconnect", "message"}]
        4 LOADK                            R2 K4 ["PropertiesGuestConnect"]
        5 SETTABLEKS                       R2 R1 K0 ["connect"]
        7 LOADK                            R2 K5 ["PropertiesGuestDisconnect"]
        8 SETTABLEKS                       R2 R1 K1 ["disconnect"]
       10 LOADK                            R2 K6 ["PropertiesGuestMessage"]
       11 SETTABLEKS                       R2 R1 K2 ["message"]
       13 SETTABLEKS                       R1 R0 K7 ["fromGuest"]
       15 DUPTABLE                         R1 K10 [{"starting", "message", "itemStarted"}]
       16 LOADK                            R2 K11 ["PropertiesHostStarting"]
       17 SETTABLEKS                       R2 R1 K8 ["starting"]
       19 LOADK                            R2 K12 ["PropertiesHostMessage"]
       20 SETTABLEKS                       R2 R1 K2 ["message"]
       22 LOADK                            R2 K13 ["PropertiesHostStarted"]
       23 SETTABLEKS                       R2 R1 K9 ["itemStarted"]
       25 SETTABLEKS                       R1 R0 K14 ["fromHost"]
       27 RETURN                           R0 1
