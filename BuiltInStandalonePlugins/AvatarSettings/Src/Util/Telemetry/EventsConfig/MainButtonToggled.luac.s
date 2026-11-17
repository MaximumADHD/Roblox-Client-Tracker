MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K10 [{[1] = "AvatarSettings_MainButtonToggled", ["description"] = "Counter to track main button toggles usage", ["throttlingPercentage"] = 10000, ["lastUpdated"], ["backends"], ["links"] = "https://grafana.rbx.com/d/feutjrfrb5kw0b/avatar-settings-plugin-telemetry?orgId=1"}]
        2 NEWTABLE                         R1 0 3
        4 LOADN                            R2 2025
        5 LOADN                            R3 8
        6 LOADN                            R4 12
        7 SETLIST                          R1 R2 3 [1]
        9 SETTABLEKS                       R1 R0 K6 ["lastUpdated"]
       11 NEWTABLE                         R1 0 1
       13 LOADK                            R2 K11 ["RobloxTelemetryCounter"]
       14 SETLIST                          R1 R2 1 [1]
       16 SETTABLEKS                       R1 R0 K7 ["backends"]
       18 RETURN                           R0 1
