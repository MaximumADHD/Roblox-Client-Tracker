PROTO_0:
  DUPTABLE R0 K2 [{"ClassName", "_children"}]
  LOADK R1 K3 ["Decal"]
  SETTABLEKS R1 R0 K0 ["ClassName"]
  NEWTABLE R1 0 2
  DUPTABLE R2 K5 [{"Name", "ClassName", "_children"}]
  LOADK R3 K6 ["ThumbnailConfiguration"]
  SETTABLEKS R3 R2 K4 ["Name"]
  LOADK R3 K7 ["Configuration"]
  SETTABLEKS R3 R2 K0 ["ClassName"]
  NEWTABLE R3 0 1
  DUPTABLE R4 K8 [{"Name", "ClassName"}]
  LOADK R5 K9 ["SkinColorValue"]
  SETTABLEKS R5 R4 K4 ["Name"]
  LOADK R5 K10 ["Color3Value"]
  SETTABLEKS R5 R4 K0 ["ClassName"]
  SETLIST R3 R4 1 [1]
  SETTABLEKS R3 R2 K1 ["_children"]
  DUPTABLE R3 K8 [{"Name", "ClassName"}]
  LOADK R4 K11 ["WrapTextureTransfer"]
  SETTABLEKS R4 R3 K4 ["Name"]
  LOADK R4 K11 ["WrapTextureTransfer"]
  SETTABLEKS R4 R3 K0 ["ClassName"]
  SETLIST R1 R2 2 [1]
  SETTABLEKS R1 R0 K1 ["_children"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1
