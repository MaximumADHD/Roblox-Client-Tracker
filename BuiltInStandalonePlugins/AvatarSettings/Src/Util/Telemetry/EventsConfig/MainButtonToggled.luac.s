MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K6 [{"eventName", "description", "throttlingPercentage", "lastUpdated", "backends", "links"}]
  LOADK R1 K7 ["AvatarSettings_MainButtonToggled"]
  SETTABLEKS R1 R0 K0 ["eventName"]
  LOADK R1 K8 ["Counter to track main button toggles usage"]
  SETTABLEKS R1 R0 K1 ["description"]
  LOADN R1 16
  SETTABLEKS R1 R0 K2 ["throttlingPercentage"]
  NEWTABLE R1 0 3
  LOADN R2 233
  LOADN R3 8
  LOADN R4 12
  SETLIST R1 R2 3 [1]
  SETTABLEKS R1 R0 K3 ["lastUpdated"]
  NEWTABLE R1 0 1
  LOADK R2 K9 ["RobloxTelemetryCounter"]
  SETLIST R1 R2 1 [1]
  SETTABLEKS R1 R0 K4 ["backends"]
  LOADK R1 K10 ["https://grafana.rbx.com/d/feutjrfrb5kw0b/avatar-settings-plugin-telemetry?orgId=1"]
  SETTABLEKS R1 R0 K5 ["links"]
  RETURN R0 1
