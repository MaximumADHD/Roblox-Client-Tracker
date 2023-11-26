PROTO_0:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R4 R3 K1 ["Stylizer"]
  GETIMPORT R5 K5 [Enum.AssetFetchStatus.Success]
  JUMPIFNOTEQ R2 R5 [+2]
  RETURN R1 1
  GETIMPORT R5 K7 [Enum.AssetFetchStatus.Failure]
  JUMPIFNOTEQ R2 R5 [+6]
  GETTABLEKS R6 R4 K8 ["groupThumbnail"]
  GETTABLEKS R5 R6 K9 ["loadFailureImage"]
  RETURN R5 1
  GETTABLEKS R6 R4 K8 ["groupThumbnail"]
  GETTABLEKS R5 R6 K10 ["loadingImage"]
  RETURN R5 1

PROTO_1:
  GETUPVAL R2 0
  MOVE R4 R0
  MOVE R5 R1
  NAMECALL R2 R2 K0 ["getThumbnail"]
  CALL R2 3 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["createElement"]
  LOADK R4 K2 ["ImageLabel"]
  DUPTABLE R5 K6 [{"Size", "BackgroundTransparency", "Image"}]
  GETIMPORT R6 K9 [UDim2.fromScale]
  LOADN R7 1
  LOADN R8 1
  CALL R6 2 1
  SETTABLEKS R6 R5 K3 ["Size"]
  LOADN R6 1
  SETTABLEKS R6 R5 K4 ["BackgroundTransparency"]
  SETTABLEKS R2 R5 K5 ["Image"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Id"]
  GETTABLEKS R3 R1 K2 ["Size"]
  GETTABLEKS R4 R1 K3 ["Position"]
  GETTABLEKS R5 R1 K4 ["AnchorPoint"]
  GETTABLEKS R6 R1 K5 ["LayoutOrder"]
  GETTABLEKS R7 R1 K6 ["ZIndex"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K7 ["createElement"]
  LOADK R9 K8 ["Frame"]
  DUPTABLE R10 K10 [{"BackgroundTransparency", "Size", "Position", "AnchorPoint", "LayoutOrder", "ZIndex"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K9 ["BackgroundTransparency"]
  SETTABLEKS R3 R10 K2 ["Size"]
  SETTABLEKS R4 R10 K3 ["Position"]
  SETTABLEKS R5 R10 K4 ["AnchorPoint"]
  SETTABLEKS R6 R10 K5 ["LayoutOrder"]
  SETTABLEKS R7 R10 K6 ["ZIndex"]
  DUPTABLE R11 K12 [{"AutoThumbnail"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K7 ["createElement"]
  GETUPVAL R13 1
  DUPTABLE R14 K15 [{"Id", "ThumbnailType", "RenderContents"}]
  SETTABLEKS R2 R14 K1 ["Id"]
  LOADK R15 K16 ["GroupIcon"]
  SETTABLEKS R15 R14 K13 ["ThumbnailType"]
  NEWCLOSURE R15 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R15 R14 K14 ["RenderContents"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K11 ["AutoThumbnail"]
  CALL R8 3 -1
  RETURN R8 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K8 ["Style"]
  GETTABLEKS R3 R4 K9 ["Stylizer"]
  GETTABLEKS R4 R2 K10 ["ContextServices"]
  GETTABLEKS R5 R4 K11 ["withContext"]
  GETIMPORT R6 K4 [require]
  GETTABLEKS R10 R0 K12 ["Src"]
  GETTABLEKS R9 R10 K13 ["Components"]
  GETTABLEKS R8 R9 K14 ["Thumbnails"]
  GETTABLEKS R7 R8 K15 ["AutoThumbnail"]
  CALL R6 1 1
  GETTABLEKS R7 R1 K16 ["Component"]
  GETIMPORT R10 K1 [script]
  GETTABLEKS R9 R10 K17 ["Name"]
  NAMECALL R7 R7 K18 ["extend"]
  CALL R7 2 1
  DUPCLOSURE R8 K19 [PROTO_0]
  SETTABLEKS R8 R7 K20 ["getThumbnail"]
  DUPCLOSURE R8 K21 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R6
  SETTABLEKS R8 R7 K22 ["render"]
  MOVE R8 R5
  DUPTABLE R9 K23 [{"Stylizer"}]
  SETTABLEKS R3 R9 K9 ["Stylizer"]
  CALL R8 1 1
  MOVE R9 R7
  CALL R8 1 1
  MOVE R7 R8
  RETURN R7 1
