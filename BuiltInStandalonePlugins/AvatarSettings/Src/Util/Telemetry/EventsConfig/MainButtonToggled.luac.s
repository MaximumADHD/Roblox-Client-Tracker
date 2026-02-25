MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K6 [{"eventName", "description", "throttlingPercentage", "lastUpdated", "backends", "links"}]
        2 LOADK                            R1 K7 ["AvatarSettings_MainButtonToggled"]
        3 SETTABLEKS                       R1 R0 K0 ["eventName"]
        5 LOADK                            R1 K8 ["Counter to track main button toggles usage"]
        6 SETTABLEKS                       R1 R0 K1 ["description"]
        8 LOADN                            R1 16
        9 SETTABLEKS                       R1 R0 K2 ["throttlingPercentage"]
       11 NEWTABLE                         R1 0 3
       13 LOADN                            R2 233
       14 LOADN                            R3 8
       15 LOADN                            R4 12
       16 SETLIST                          R1 R2 3 [1]
       18 SETTABLEKS                       R1 R0 K3 ["lastUpdated"]
       20 NEWTABLE                         R1 0 1
       22 LOADK                            R2 K9 ["RobloxTelemetryCounter"]
       23 SETLIST                          R1 R2 1 [1]
       25 SETTABLEKS                       R1 R0 K4 ["backends"]
       27 LOADK                            R1 K10 ["https://grafana.rbx.com/d/feutjrfrb5kw0b/avatar-settings-plugin-telemetry?orgId=1"]
       28 SETTABLEKS                       R1 R0 K5 ["links"]
       30 RETURN                           R0 1
