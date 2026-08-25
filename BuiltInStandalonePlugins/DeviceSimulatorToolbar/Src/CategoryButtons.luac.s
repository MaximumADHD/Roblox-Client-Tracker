MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DeviceSimulatorToolbar"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["DeviceConstants"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 0 5
       16 DUPTABLE                         R3 K15 [{["id"] = "server", ["kind"] = "server", ["iconAsset"] = "rbxasset://textures/DeviceEmulator/sim_server@32.png", ["tooltipKey"] = "SwitchToServer"}]
       17 DUPTABLE                         R4 K19 [{["id"], ["kind"] = "device", ["iconAsset"] = "rbxasset://textures/DeviceEmulator/sim_phone@32.png", ["tooltipKey"] = "SwitchToPhone"}]
       18 GETTABLEKS                       R5 R1 K20 ["Category"]
       20 GETTABLEKS                       R5 R5 K21 ["PHONE_TABLET"]
       22 SETTABLEKS                       R5 R4 K8 ["id"]
       24 DUPTABLE                         R5 K24 [{["id"], ["kind"] = "device", ["iconAsset"] = "rbxasset://textures/DeviceEmulator/sim_laptop@32.png", ["tooltipKey"] = "SwitchToDesktop"}]
       25 GETTABLEKS                       R6 R1 K20 ["Category"]
       27 GETTABLEKS                       R6 R6 K25 ["DESKTOP"]
       29 SETTABLEKS                       R6 R5 K8 ["id"]
       31 DUPTABLE                         R6 K28 [{["id"], ["kind"] = "device", ["iconAsset"] = "rbxasset://textures/DeviceEmulator/sim_console@32.png", ["tooltipKey"] = "SwitchToConsole"}]
       32 GETTABLEKS                       R7 R1 K20 ["Category"]
       34 GETTABLEKS                       R7 R7 K29 ["CONSOLE"]
       36 SETTABLEKS                       R7 R6 K8 ["id"]
       38 DUPTABLE                         R7 K32 [{["id"], ["kind"] = "device", ["iconAsset"] = "rbxasset://textures/DeviceEmulator/sim_headset@32.png", ["tooltipKey"] = "SwitchToHeadset"}]
       39 GETTABLEKS                       R8 R1 K20 ["Category"]
       41 GETTABLEKS                       R8 R8 K33 ["VR"]
       43 SETTABLEKS                       R8 R7 K8 ["id"]
       45 SETLIST                          R2 R3 5 [1]
       47 RETURN                           R2 1
