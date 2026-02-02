MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K13 [{"ScreenGui", "BillboardGui", "SurfaceGui", "Frame", "ScrollingFrame", "TextLabel", "TextButton", "TextBox", "ImageLabel", "ImageButton", "ViewportFrame", "VideoFrame", "CanvasGroup"}]
  DUPTABLE R1 K16 [{"ResetOnSpawn", "ZIndexBehavior"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K14 ["ResetOnSpawn"]
  GETIMPORT R2 K19 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R2 R1 K15 ["ZIndexBehavior"]
  SETTABLEKS R1 R0 K0 ["ScreenGui"]
  DUPTABLE R1 K16 [{"ResetOnSpawn", "ZIndexBehavior"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K14 ["ResetOnSpawn"]
  GETIMPORT R2 K19 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R2 R1 K15 ["ZIndexBehavior"]
  SETTABLEKS R1 R0 K1 ["BillboardGui"]
  DUPTABLE R1 K22 [{"ResetOnSpawn", "ZIndexBehavior", "SizingMode", "PixelsPerStud"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K14 ["ResetOnSpawn"]
  GETIMPORT R2 K19 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R2 R1 K15 ["ZIndexBehavior"]
  GETIMPORT R2 K24 [Enum.SurfaceGuiSizingMode.PixelsPerStud]
  SETTABLEKS R2 R1 K20 ["SizingMode"]
  LOADN R2 50
  SETTABLEKS R2 R1 K21 ["PixelsPerStud"]
  SETTABLEKS R1 R0 K2 ["SurfaceGui"]
  DUPTABLE R1 K28 [{"BackgroundColor3", "BorderColor3", "BorderSizePixel"}]
  GETIMPORT R2 K31 [Color3.new]
  LOADN R3 1
  LOADN R4 1
  LOADN R5 1
  CALL R2 3 1
  SETTABLEKS R2 R1 K25 ["BackgroundColor3"]
  GETIMPORT R2 K31 [Color3.new]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 0
  CALL R2 3 1
  SETTABLEKS R2 R1 K26 ["BorderColor3"]
  LOADN R2 0
  SETTABLEKS R2 R1 K27 ["BorderSizePixel"]
  SETTABLEKS R1 R0 K3 ["Frame"]
  DUPTABLE R1 K33 [{"BackgroundColor3", "BorderColor3", "BorderSizePixel", "ScrollBarImageColor3"}]
  GETIMPORT R2 K31 [Color3.new]
  LOADN R3 1
  LOADN R4 1
  LOADN R5 1
  CALL R2 3 1
  SETTABLEKS R2 R1 K25 ["BackgroundColor3"]
  GETIMPORT R2 K31 [Color3.new]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 0
  CALL R2 3 1
  SETTABLEKS R2 R1 K26 ["BorderColor3"]
  LOADN R2 0
  SETTABLEKS R2 R1 K27 ["BorderSizePixel"]
  GETIMPORT R2 K31 [Color3.new]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 0
  CALL R2 3 1
  SETTABLEKS R2 R1 K32 ["ScrollBarImageColor3"]
  SETTABLEKS R1 R0 K4 ["ScrollingFrame"]
  DUPTABLE R1 K38 [{"BackgroundColor3", "BorderColor3", "BorderSizePixel", "Font", "Text", "TextColor3", "TextSize"}]
  GETIMPORT R2 K31 [Color3.new]
  LOADN R3 1
  LOADN R4 1
  LOADN R5 1
  CALL R2 3 1
  SETTABLEKS R2 R1 K25 ["BackgroundColor3"]
  GETIMPORT R2 K31 [Color3.new]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 0
  CALL R2 3 1
  SETTABLEKS R2 R1 K26 ["BorderColor3"]
  LOADN R2 0
  SETTABLEKS R2 R1 K27 ["BorderSizePixel"]
  GETIMPORT R2 K40 [Enum.Font.SourceSans]
  SETTABLEKS R2 R1 K34 ["Font"]
  LOADK R2 K41 [""]
  SETTABLEKS R2 R1 K35 ["Text"]
  GETIMPORT R2 K31 [Color3.new]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 0
  CALL R2 3 1
  SETTABLEKS R2 R1 K36 ["TextColor3"]
  LOADN R2 14
  SETTABLEKS R2 R1 K37 ["TextSize"]
  SETTABLEKS R1 R0 K5 ["TextLabel"]
  DUPTABLE R1 K43 [{"BackgroundColor3", "BorderColor3", "BorderSizePixel", "AutoButtonColor", "Font", "Text", "TextColor3", "TextSize"}]
  GETIMPORT R2 K31 [Color3.new]
  LOADN R3 1
  LOADN R4 1
  LOADN R5 1
  CALL R2 3 1
  SETTABLEKS R2 R1 K25 ["BackgroundColor3"]
  GETIMPORT R2 K31 [Color3.new]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 0
  CALL R2 3 1
  SETTABLEKS R2 R1 K26 ["BorderColor3"]
  LOADN R2 0
  SETTABLEKS R2 R1 K27 ["BorderSizePixel"]
  LOADB R2 0
  SETTABLEKS R2 R1 K42 ["AutoButtonColor"]
  GETIMPORT R2 K40 [Enum.Font.SourceSans]
  SETTABLEKS R2 R1 K34 ["Font"]
  LOADK R2 K41 [""]
  SETTABLEKS R2 R1 K35 ["Text"]
  GETIMPORT R2 K31 [Color3.new]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 0
  CALL R2 3 1
  SETTABLEKS R2 R1 K36 ["TextColor3"]
  LOADN R2 14
  SETTABLEKS R2 R1 K37 ["TextSize"]
  SETTABLEKS R1 R0 K6 ["TextButton"]
  DUPTABLE R1 K45 [{"BackgroundColor3", "BorderColor3", "BorderSizePixel", "ClearTextOnFocus", "Font", "Text", "TextColor3", "TextSize"}]
  GETIMPORT R2 K31 [Color3.new]
  LOADN R3 1
  LOADN R4 1
  LOADN R5 1
  CALL R2 3 1
  SETTABLEKS R2 R1 K25 ["BackgroundColor3"]
  GETIMPORT R2 K31 [Color3.new]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 0
  CALL R2 3 1
  SETTABLEKS R2 R1 K26 ["BorderColor3"]
  LOADN R2 0
  SETTABLEKS R2 R1 K27 ["BorderSizePixel"]
  LOADB R2 0
  SETTABLEKS R2 R1 K44 ["ClearTextOnFocus"]
  GETIMPORT R2 K40 [Enum.Font.SourceSans]
  SETTABLEKS R2 R1 K34 ["Font"]
  LOADK R2 K41 [""]
  SETTABLEKS R2 R1 K35 ["Text"]
  GETIMPORT R2 K31 [Color3.new]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 0
  CALL R2 3 1
  SETTABLEKS R2 R1 K36 ["TextColor3"]
  LOADN R2 14
  SETTABLEKS R2 R1 K37 ["TextSize"]
  SETTABLEKS R1 R0 K7 ["TextBox"]
  DUPTABLE R1 K28 [{"BackgroundColor3", "BorderColor3", "BorderSizePixel"}]
  GETIMPORT R2 K31 [Color3.new]
  LOADN R3 1
  LOADN R4 1
  LOADN R5 1
  CALL R2 3 1
  SETTABLEKS R2 R1 K25 ["BackgroundColor3"]
  GETIMPORT R2 K31 [Color3.new]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 0
  CALL R2 3 1
  SETTABLEKS R2 R1 K26 ["BorderColor3"]
  LOADN R2 0
  SETTABLEKS R2 R1 K27 ["BorderSizePixel"]
  SETTABLEKS R1 R0 K8 ["ImageLabel"]
  DUPTABLE R1 K46 [{"BackgroundColor3", "BorderColor3", "BorderSizePixel", "AutoButtonColor"}]
  GETIMPORT R2 K31 [Color3.new]
  LOADN R3 1
  LOADN R4 1
  LOADN R5 1
  CALL R2 3 1
  SETTABLEKS R2 R1 K25 ["BackgroundColor3"]
  GETIMPORT R2 K31 [Color3.new]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 0
  CALL R2 3 1
  SETTABLEKS R2 R1 K26 ["BorderColor3"]
  LOADN R2 0
  SETTABLEKS R2 R1 K27 ["BorderSizePixel"]
  LOADB R2 0
  SETTABLEKS R2 R1 K42 ["AutoButtonColor"]
  SETTABLEKS R1 R0 K9 ["ImageButton"]
  DUPTABLE R1 K28 [{"BackgroundColor3", "BorderColor3", "BorderSizePixel"}]
  GETIMPORT R2 K31 [Color3.new]
  LOADN R3 1
  LOADN R4 1
  LOADN R5 1
  CALL R2 3 1
  SETTABLEKS R2 R1 K25 ["BackgroundColor3"]
  GETIMPORT R2 K31 [Color3.new]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 0
  CALL R2 3 1
  SETTABLEKS R2 R1 K26 ["BorderColor3"]
  LOADN R2 0
  SETTABLEKS R2 R1 K27 ["BorderSizePixel"]
  SETTABLEKS R1 R0 K10 ["ViewportFrame"]
  DUPTABLE R1 K28 [{"BackgroundColor3", "BorderColor3", "BorderSizePixel"}]
  GETIMPORT R2 K31 [Color3.new]
  LOADN R3 1
  LOADN R4 1
  LOADN R5 1
  CALL R2 3 1
  SETTABLEKS R2 R1 K25 ["BackgroundColor3"]
  GETIMPORT R2 K31 [Color3.new]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 0
  CALL R2 3 1
  SETTABLEKS R2 R1 K26 ["BorderColor3"]
  LOADN R2 0
  SETTABLEKS R2 R1 K27 ["BorderSizePixel"]
  SETTABLEKS R1 R0 K11 ["VideoFrame"]
  DUPTABLE R1 K28 [{"BackgroundColor3", "BorderColor3", "BorderSizePixel"}]
  GETIMPORT R2 K31 [Color3.new]
  LOADN R3 1
  LOADN R4 1
  LOADN R5 1
  CALL R2 3 1
  SETTABLEKS R2 R1 K25 ["BackgroundColor3"]
  GETIMPORT R2 K31 [Color3.new]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 0
  CALL R2 3 1
  SETTABLEKS R2 R1 K26 ["BorderColor3"]
  LOADN R2 0
  SETTABLEKS R2 R1 K27 ["BorderSizePixel"]
  SETTABLEKS R1 R0 K12 ["CanvasGroup"]
  RETURN R0 1
