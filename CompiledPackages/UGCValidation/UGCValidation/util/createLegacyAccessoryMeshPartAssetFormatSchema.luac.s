PROTO_0:
  FASTCALL2K ASSERT R0 K0 [+5]
  MOVE R2 R0
  LOADK R3 K0 ["attachmentName cannot be nil"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  DUPTABLE R1 K5 [{"ClassName", "_children"}]
  LOADK R2 K6 ["Accessory"]
  SETTABLEKS R2 R1 K3 ["ClassName"]
  NEWTABLE R2 0 2
  DUPTABLE R3 K9 [{"Name", "ClassName", "_optional", "_children"}]
  LOADK R4 K10 ["ThumbnailConfiguration"]
  SETTABLEKS R4 R3 K7 ["Name"]
  LOADK R4 K11 ["Configuration"]
  SETTABLEKS R4 R3 K3 ["ClassName"]
  LOADB R4 1
  SETTABLEKS R4 R3 K8 ["_optional"]
  NEWTABLE R4 0 2
  DUPTABLE R5 K12 [{"Name", "ClassName"}]
  LOADK R6 K13 ["ThumbnailCameraTarget"]
  SETTABLEKS R6 R5 K7 ["Name"]
  LOADK R6 K14 ["ObjectValue"]
  SETTABLEKS R6 R5 K3 ["ClassName"]
  DUPTABLE R6 K12 [{"Name", "ClassName"}]
  LOADK R7 K15 ["ThumbnailCameraValue"]
  SETTABLEKS R7 R6 K7 ["Name"]
  LOADK R7 K16 ["CFrameValue"]
  SETTABLEKS R7 R6 K3 ["ClassName"]
  SETLIST R4 R5 2 [1]
  SETTABLEKS R4 R3 K4 ["_children"]
  DUPTABLE R4 K17 [{"Name", "ClassName", "_children"}]
  LOADK R5 K18 ["Handle"]
  SETTABLEKS R5 R4 K7 ["Name"]
  LOADK R5 K19 ["MeshPart"]
  SETTABLEKS R5 R4 K3 ["ClassName"]
  NEWTABLE R5 0 4
  DUPTABLE R6 K12 [{"Name", "ClassName"}]
  SETTABLEKS R0 R6 K7 ["Name"]
  LOADK R7 K20 ["Attachment"]
  SETTABLEKS R7 R6 K3 ["ClassName"]
  DUPTABLE R7 K21 [{"ClassName", "Name", "_optional"}]
  LOADK R8 K22 ["SurfaceAppearance"]
  SETTABLEKS R8 R7 K3 ["ClassName"]
  LOADK R8 K22 ["SurfaceAppearance"]
  SETTABLEKS R8 R7 K7 ["Name"]
  LOADB R8 1
  SETTABLEKS R8 R7 K8 ["_optional"]
  DUPTABLE R8 K21 [{"ClassName", "Name", "_optional"}]
  LOADK R9 K23 ["StringValue"]
  SETTABLEKS R9 R8 K3 ["ClassName"]
  LOADK R9 K24 ["AvatarPartScaleType"]
  SETTABLEKS R9 R8 K7 ["Name"]
  LOADB R9 1
  SETTABLEKS R9 R8 K8 ["_optional"]
  DUPTABLE R9 K25 [{"ClassName", "_optional"}]
  LOADK R10 K26 ["TouchTransmitter"]
  SETTABLEKS R10 R9 K3 ["ClassName"]
  LOADB R10 1
  SETTABLEKS R10 R9 K8 ["_optional"]
  SETLIST R5 R6 4 [1]
  SETTABLEKS R5 R4 K4 ["_children"]
  SETLIST R2 R3 2 [1]
  SETTABLEKS R2 R1 K4 ["_children"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1
