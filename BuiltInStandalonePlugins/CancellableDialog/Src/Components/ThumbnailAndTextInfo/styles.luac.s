MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CancellableDialog"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleRule"]
  MOVE R3 R2
  LOADK R4 K10 [".Component-ThumbnailAndTextInfo"]
  NEWTABLE R5 0 0
  NEWTABLE R6 0 2
  MOVE R7 R2
  LOADK R8 K11 ["::UIListLayout"]
  DUPTABLE R9 K13 [{"Padding"}]
  GETIMPORT R10 K16 [UDim.new]
  LOADN R11 0
  LOADN R12 16
  CALL R10 2 1
  SETTABLEKS R10 R9 K12 ["Padding"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K17 [">> .Thumbnail"]
  DUPTABLE R10 K19 [{"Size"}]
  LOADK R11 K20 ["$ThumbnailSize"]
  SETTABLEKS R11 R10 K18 ["Size"]
  CALL R8 2 -1
  SETLIST R6 R7 -1 [1]
  DUPTABLE R7 K27 [{"ThumbnailSize", "ThumbnailToContentPadding", "ShimmerSize", "ShimmerInitialPosition", "Transparent", "ShimmerAngle"}]
  GETIMPORT R8 K30 [UDim2.fromOffset]
  LOADN R9 50
  LOADN R10 50
  CALL R8 2 1
  SETTABLEKS R8 R7 K21 ["ThumbnailSize"]
  GETIMPORT R8 K16 [UDim.new]
  LOADN R9 0
  LOADN R10 16
  CALL R8 2 1
  SETTABLEKS R8 R7 K22 ["ThumbnailToContentPadding"]
  GETIMPORT R8 K31 [UDim2.new]
  LOADN R9 2
  LOADN R10 0
  LOADN R11 1
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K23 ["ShimmerSize"]
  GETIMPORT R8 K31 [UDim2.new]
  LOADN R9 0
  LOADN R10 0
  LOADN R11 0
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K24 ["ShimmerInitialPosition"]
  LOADN R8 1
  SETTABLEKS R8 R7 K25 ["Transparent"]
  LOADN R8 45
  SETTABLEKS R8 R7 K26 ["ShimmerAngle"]
  CALL R3 4 -1
  RETURN R3 -1
