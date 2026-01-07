PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R3 R0 K0 ["owner"]
  GETTABLE R1 R2 R3
  JUMPIFNOT R1 [+6]
  GETTABLEKS R3 R0 K1 ["name"]
  GETTABLE R2 R1 R3
  JUMPIFNOT R2 [+2]
  LOADB R2 0
  RETURN R2 1
  LOADB R2 1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Properties"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R2 R0 K6 ["RpcTypes"]
  CALL R1 1 1
  DUPTABLE R2 K11 [{"BaseScript", "Instance", "Script", "GuiObject"}]
  DUPTABLE R3 K13 [{"Disabled"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K12 ["Disabled"]
  SETTABLEKS R3 R2 K7 ["BaseScript"]
  DUPTABLE R3 K18 [{"RobloxLocked", "Sandboxed", "SecurityCapabilities", "SourceAssetId"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K14 ["RobloxLocked"]
  LOADB R4 1
  SETTABLEKS R4 R3 K15 ["Sandboxed"]
  LOADB R4 1
  SETTABLEKS R4 R3 K16 ["SecurityCapabilities"]
  LOADB R4 1
  SETTABLEKS R4 R3 K17 ["SourceAssetId"]
  SETTABLEKS R3 R2 K8 ["Instance"]
  DUPTABLE R3 K20 [{"Source"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K19 ["Source"]
  SETTABLEKS R3 R2 K9 ["Script"]
  DUPTABLE R3 K23 [{"BackgroundColor", "BorderColor"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K21 ["BackgroundColor"]
  LOADB R4 1
  SETTABLEKS R4 R3 K22 ["BorderColor"]
  SETTABLEKS R3 R2 K10 ["GuiObject"]
  DUPCLOSURE R3 K24 [PROTO_0]
  CAPTURE VAL R2
  RETURN R3 1
