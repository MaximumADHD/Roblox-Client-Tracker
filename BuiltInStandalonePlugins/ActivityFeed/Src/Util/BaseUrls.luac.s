PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ContentProvider"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["BaseUrl"]
  SETUPVAL R1 0
  GETIMPORT R1 K7 [string.gsub]
  GETUPVAL R2 0
  LOADK R3 K8 ["www"]
  LOADK R4 K9 ["create"]
  CALL R1 3 1
  SETUPVAL R1 1
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  LOADK R0 K0 ["https://www.roblox.com"]
  LOADK R1 K1 ["https://create.roblox.com"]
  GETIMPORT R2 K3 [pcall]
  NEWCLOSURE R3 P0
  CAPTURE REF R0
  CAPTURE REF R1
  CALL R2 1 0
  DUPTABLE R2 K6 [{"wwwPath", "createPath"}]
  SETTABLEKS R0 R2 K4 ["wwwPath"]
  SETTABLEKS R1 R2 K5 ["createPath"]
  CLOSEUPVALS R0
  RETURN R2 1
