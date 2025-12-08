MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K26 [{"ScreenGui", "BillboardGui", "SurfaceGui", "Frame", "ScrollingFrame", "TextLabel", "TextButton", "TextBox", "ImageLabel", "ImageButton", "ViewportFrame", "VideoFrame", "CanvasGroup", "SpawnLocation", "BoxHandleAdornment", "ConeHandleAdornment", "CylinderHandleAdornment", "ImageHandleAdornment", "LineHandleAdornment", "SphereHandleAdornment", "WireframeHandleAdornment", "Part", "TrussPart", "MeshPart", "CornerWedgePart", "VehicleSeat"}]
  DUPTABLE R1 K29 [{"ResetOnSpawn", "ZIndexBehavior"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K27 ["ResetOnSpawn"]
  GETIMPORT R2 K32 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R2 R1 K28 ["ZIndexBehavior"]
  SETTABLEKS R1 R0 K0 ["ScreenGui"]
  DUPTABLE R1 K34 [{"ResetOnSpawn", "ZIndexBehavior", "Active"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K27 ["ResetOnSpawn"]
  GETIMPORT R2 K32 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R2 R1 K28 ["ZIndexBehavior"]
  LOADB R2 1
  SETTABLEKS R2 R1 K33 ["Active"]
  SETTABLEKS R1 R0 K1 ["BillboardGui"]
  DUPTABLE R1 K37 [{"ResetOnSpawn", "ZIndexBehavior", "SizingMode", "PixelsPerStud"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K27 ["ResetOnSpawn"]
  GETIMPORT R2 K32 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R2 R1 K28 ["ZIndexBehavior"]
  GETIMPORT R2 K39 [Enum.SurfaceGuiSizingMode.PixelsPerStud]
  SETTABLEKS R2 R1 K35 ["SizingMode"]
  LOADN R2 50
  SETTABLEKS R2 R1 K36 ["PixelsPerStud"]
  SETTABLEKS R1 R0 K2 ["SurfaceGui"]
  DUPTABLE R1 K43 [{"BackgroundColor3", "BorderColor3", "BorderSizePixel"}]
  GETIMPORT R2 K46 [Color3.new]
  LOADN R3 1
  LOADN R4 1
  LOADN R5 1
  CALL R2 3 1
  SETTABLEKS R2 R1 K40 ["BackgroundColor3"]
  GETIMPORT R2 K46 [Color3.new]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 0
  CALL R2 3 1
  SETTABLEKS R2 R1 K41 ["BorderColor3"]
  LOADN R2 0
  SETTABLEKS R2 R1 K42 ["BorderSizePixel"]
  SETTABLEKS R1 R0 K3 ["Frame"]
  DUPTABLE R1 K48 [{"BackgroundColor3", "BorderColor3", "BorderSizePixel", "ScrollBarImageColor3"}]
  GETIMPORT R2 K46 [Color3.new]
  LOADN R3 1
  LOADN R4 1
  LOADN R5 1
  CALL R2 3 1
  SETTABLEKS R2 R1 K40 ["BackgroundColor3"]
  GETIMPORT R2 K46 [Color3.new]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 0
  CALL R2 3 1
  SETTABLEKS R2 R1 K41 ["BorderColor3"]
  LOADN R2 0
  SETTABLEKS R2 R1 K42 ["BorderSizePixel"]
  GETIMPORT R2 K46 [Color3.new]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 0
  CALL R2 3 1
  SETTABLEKS R2 R1 K47 ["ScrollBarImageColor3"]
  SETTABLEKS R1 R0 K4 ["ScrollingFrame"]
  DUPTABLE R1 K53 [{"BackgroundColor3", "BorderColor3", "BorderSizePixel", "Font", "Text", "TextColor3", "TextSize"}]
  GETIMPORT R2 K46 [Color3.new]
  LOADN R3 1
  LOADN R4 1
  LOADN R5 1
  CALL R2 3 1
  SETTABLEKS R2 R1 K40 ["BackgroundColor3"]
  GETIMPORT R2 K46 [Color3.new]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 0
  CALL R2 3 1
  SETTABLEKS R2 R1 K41 ["BorderColor3"]
  LOADN R2 0
  SETTABLEKS R2 R1 K42 ["BorderSizePixel"]
  GETIMPORT R2 K55 [Enum.Font.SourceSans]
  SETTABLEKS R2 R1 K49 ["Font"]
  LOADK R2 K56 [""]
  SETTABLEKS R2 R1 K50 ["Text"]
  GETIMPORT R2 K46 [Color3.new]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 0
  CALL R2 3 1
  SETTABLEKS R2 R1 K51 ["TextColor3"]
  LOADN R2 14
  SETTABLEKS R2 R1 K52 ["TextSize"]
  SETTABLEKS R1 R0 K5 ["TextLabel"]
  DUPTABLE R1 K58 [{"BackgroundColor3", "BorderColor3", "BorderSizePixel", "AutoButtonColor", "Font", "Text", "TextColor3", "TextSize"}]
  GETIMPORT R2 K46 [Color3.new]
  LOADN R3 1
  LOADN R4 1
  LOADN R5 1
  CALL R2 3 1
  SETTABLEKS R2 R1 K40 ["BackgroundColor3"]
  GETIMPORT R2 K46 [Color3.new]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 0
  CALL R2 3 1
  SETTABLEKS R2 R1 K41 ["BorderColor3"]
  LOADN R2 0
  SETTABLEKS R2 R1 K42 ["BorderSizePixel"]
  LOADB R2 0
  SETTABLEKS R2 R1 K57 ["AutoButtonColor"]
  GETIMPORT R2 K55 [Enum.Font.SourceSans]
  SETTABLEKS R2 R1 K49 ["Font"]
  LOADK R2 K56 [""]
  SETTABLEKS R2 R1 K50 ["Text"]
  GETIMPORT R2 K46 [Color3.new]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 0
  CALL R2 3 1
  SETTABLEKS R2 R1 K51 ["TextColor3"]
  LOADN R2 14
  SETTABLEKS R2 R1 K52 ["TextSize"]
  SETTABLEKS R1 R0 K6 ["TextButton"]
  DUPTABLE R1 K60 [{"BackgroundColor3", "BorderColor3", "BorderSizePixel", "ClearTextOnFocus", "Font", "Text", "TextColor3", "TextSize"}]
  GETIMPORT R2 K46 [Color3.new]
  LOADN R3 1
  LOADN R4 1
  LOADN R5 1
  CALL R2 3 1
  SETTABLEKS R2 R1 K40 ["BackgroundColor3"]
  GETIMPORT R2 K46 [Color3.new]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 0
  CALL R2 3 1
  SETTABLEKS R2 R1 K41 ["BorderColor3"]
  LOADN R2 0
  SETTABLEKS R2 R1 K42 ["BorderSizePixel"]
  LOADB R2 0
  SETTABLEKS R2 R1 K59 ["ClearTextOnFocus"]
  GETIMPORT R2 K55 [Enum.Font.SourceSans]
  SETTABLEKS R2 R1 K49 ["Font"]
  LOADK R2 K56 [""]
  SETTABLEKS R2 R1 K50 ["Text"]
  GETIMPORT R2 K46 [Color3.new]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 0
  CALL R2 3 1
  SETTABLEKS R2 R1 K51 ["TextColor3"]
  LOADN R2 14
  SETTABLEKS R2 R1 K52 ["TextSize"]
  SETTABLEKS R1 R0 K7 ["TextBox"]
  DUPTABLE R1 K43 [{"BackgroundColor3", "BorderColor3", "BorderSizePixel"}]
  GETIMPORT R2 K46 [Color3.new]
  LOADN R3 1
  LOADN R4 1
  LOADN R5 1
  CALL R2 3 1
  SETTABLEKS R2 R1 K40 ["BackgroundColor3"]
  GETIMPORT R2 K46 [Color3.new]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 0
  CALL R2 3 1
  SETTABLEKS R2 R1 K41 ["BorderColor3"]
  LOADN R2 0
  SETTABLEKS R2 R1 K42 ["BorderSizePixel"]
  SETTABLEKS R1 R0 K8 ["ImageLabel"]
  DUPTABLE R1 K61 [{"BackgroundColor3", "BorderColor3", "BorderSizePixel", "AutoButtonColor"}]
  GETIMPORT R2 K46 [Color3.new]
  LOADN R3 1
  LOADN R4 1
  LOADN R5 1
  CALL R2 3 1
  SETTABLEKS R2 R1 K40 ["BackgroundColor3"]
  GETIMPORT R2 K46 [Color3.new]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 0
  CALL R2 3 1
  SETTABLEKS R2 R1 K41 ["BorderColor3"]
  LOADN R2 0
  SETTABLEKS R2 R1 K42 ["BorderSizePixel"]
  LOADB R2 0
  SETTABLEKS R2 R1 K57 ["AutoButtonColor"]
  SETTABLEKS R1 R0 K9 ["ImageButton"]
  DUPTABLE R1 K43 [{"BackgroundColor3", "BorderColor3", "BorderSizePixel"}]
  GETIMPORT R2 K46 [Color3.new]
  LOADN R3 1
  LOADN R4 1
  LOADN R5 1
  CALL R2 3 1
  SETTABLEKS R2 R1 K40 ["BackgroundColor3"]
  GETIMPORT R2 K46 [Color3.new]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 0
  CALL R2 3 1
  SETTABLEKS R2 R1 K41 ["BorderColor3"]
  LOADN R2 0
  SETTABLEKS R2 R1 K42 ["BorderSizePixel"]
  SETTABLEKS R1 R0 K10 ["ViewportFrame"]
  DUPTABLE R1 K43 [{"BackgroundColor3", "BorderColor3", "BorderSizePixel"}]
  GETIMPORT R2 K46 [Color3.new]
  LOADN R3 1
  LOADN R4 1
  LOADN R5 1
  CALL R2 3 1
  SETTABLEKS R2 R1 K40 ["BackgroundColor3"]
  GETIMPORT R2 K46 [Color3.new]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 0
  CALL R2 3 1
  SETTABLEKS R2 R1 K41 ["BorderColor3"]
  LOADN R2 0
  SETTABLEKS R2 R1 K42 ["BorderSizePixel"]
  SETTABLEKS R1 R0 K11 ["VideoFrame"]
  DUPTABLE R1 K43 [{"BackgroundColor3", "BorderColor3", "BorderSizePixel"}]
  GETIMPORT R2 K46 [Color3.new]
  LOADN R3 1
  LOADN R4 1
  LOADN R5 1
  CALL R2 3 1
  SETTABLEKS R2 R1 K40 ["BackgroundColor3"]
  GETIMPORT R2 K46 [Color3.new]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 0
  CALL R2 3 1
  SETTABLEKS R2 R1 K41 ["BorderColor3"]
  LOADN R2 0
  SETTABLEKS R2 R1 K42 ["BorderSizePixel"]
  SETTABLEKS R1 R0 K12 ["CanvasGroup"]
  DUPTABLE R1 K63 [{"Duration"}]
  LOADN R2 0
  SETTABLEKS R2 R1 K62 ["Duration"]
  SETTABLEKS R1 R0 K13 ["SpawnLocation"]
  DUPTABLE R1 K65 [{"ZIndex"}]
  LOADN R2 0
  SETTABLEKS R2 R1 K64 ["ZIndex"]
  SETTABLEKS R1 R0 K14 ["BoxHandleAdornment"]
  DUPTABLE R1 K65 [{"ZIndex"}]
  LOADN R2 0
  SETTABLEKS R2 R1 K64 ["ZIndex"]
  SETTABLEKS R1 R0 K15 ["ConeHandleAdornment"]
  DUPTABLE R1 K65 [{"ZIndex"}]
  LOADN R2 0
  SETTABLEKS R2 R1 K64 ["ZIndex"]
  SETTABLEKS R1 R0 K16 ["CylinderHandleAdornment"]
  DUPTABLE R1 K65 [{"ZIndex"}]
  LOADN R2 0
  SETTABLEKS R2 R1 K64 ["ZIndex"]
  SETTABLEKS R1 R0 K17 ["ImageHandleAdornment"]
  DUPTABLE R1 K65 [{"ZIndex"}]
  LOADN R2 0
  SETTABLEKS R2 R1 K64 ["ZIndex"]
  SETTABLEKS R1 R0 K18 ["LineHandleAdornment"]
  DUPTABLE R1 K65 [{"ZIndex"}]
  LOADN R2 0
  SETTABLEKS R2 R1 K64 ["ZIndex"]
  SETTABLEKS R1 R0 K19 ["SphereHandleAdornment"]
  DUPTABLE R1 K65 [{"ZIndex"}]
  LOADN R2 0
  SETTABLEKS R2 R1 K64 ["ZIndex"]
  SETTABLEKS R1 R0 K20 ["WireframeHandleAdornment"]
  DUPTABLE R1 K74 [{"Anchored", "Size", "FrontSurface", "BackSurface", "LeftSurface", "RightSurface", "TopSurface", "BottomSurface"}]
  LOADB R2 1
  SETTABLEKS R2 R1 K66 ["Anchored"]
  LOADK R2 K75 [{1, 1, 1}]
  SETTABLEKS R2 R1 K67 ["Size"]
  GETIMPORT R2 K78 [Enum.SurfaceType.Smooth]
  SETTABLEKS R2 R1 K68 ["FrontSurface"]
  GETIMPORT R2 K78 [Enum.SurfaceType.Smooth]
  SETTABLEKS R2 R1 K69 ["BackSurface"]
  GETIMPORT R2 K78 [Enum.SurfaceType.Smooth]
  SETTABLEKS R2 R1 K70 ["LeftSurface"]
  GETIMPORT R2 K78 [Enum.SurfaceType.Smooth]
  SETTABLEKS R2 R1 K71 ["RightSurface"]
  GETIMPORT R2 K78 [Enum.SurfaceType.Smooth]
  SETTABLEKS R2 R1 K72 ["TopSurface"]
  GETIMPORT R2 K78 [Enum.SurfaceType.Smooth]
  SETTABLEKS R2 R1 K73 ["BottomSurface"]
  SETTABLEKS R1 R0 K21 ["Part"]
  DUPTABLE R1 K74 [{"Anchored", "Size", "FrontSurface", "BackSurface", "LeftSurface", "RightSurface", "TopSurface", "BottomSurface"}]
  LOADB R2 1
  SETTABLEKS R2 R1 K66 ["Anchored"]
  LOADK R2 K79 [{2, 2, 2}]
  SETTABLEKS R2 R1 K67 ["Size"]
  GETIMPORT R2 K78 [Enum.SurfaceType.Smooth]
  SETTABLEKS R2 R1 K68 ["FrontSurface"]
  GETIMPORT R2 K78 [Enum.SurfaceType.Smooth]
  SETTABLEKS R2 R1 K69 ["BackSurface"]
  GETIMPORT R2 K78 [Enum.SurfaceType.Smooth]
  SETTABLEKS R2 R1 K70 ["LeftSurface"]
  GETIMPORT R2 K78 [Enum.SurfaceType.Smooth]
  SETTABLEKS R2 R1 K71 ["RightSurface"]
  GETIMPORT R2 K78 [Enum.SurfaceType.Smooth]
  SETTABLEKS R2 R1 K72 ["TopSurface"]
  GETIMPORT R2 K78 [Enum.SurfaceType.Smooth]
  SETTABLEKS R2 R1 K73 ["BottomSurface"]
  SETTABLEKS R1 R0 K22 ["TrussPart"]
  DUPTABLE R1 K74 [{"Anchored", "Size", "FrontSurface", "BackSurface", "LeftSurface", "RightSurface", "TopSurface", "BottomSurface"}]
  LOADB R2 1
  SETTABLEKS R2 R1 K66 ["Anchored"]
  LOADK R2 K75 [{1, 1, 1}]
  SETTABLEKS R2 R1 K67 ["Size"]
  GETIMPORT R2 K78 [Enum.SurfaceType.Smooth]
  SETTABLEKS R2 R1 K68 ["FrontSurface"]
  GETIMPORT R2 K78 [Enum.SurfaceType.Smooth]
  SETTABLEKS R2 R1 K69 ["BackSurface"]
  GETIMPORT R2 K78 [Enum.SurfaceType.Smooth]
  SETTABLEKS R2 R1 K70 ["LeftSurface"]
  GETIMPORT R2 K78 [Enum.SurfaceType.Smooth]
  SETTABLEKS R2 R1 K71 ["RightSurface"]
  GETIMPORT R2 K78 [Enum.SurfaceType.Smooth]
  SETTABLEKS R2 R1 K72 ["TopSurface"]
  GETIMPORT R2 K78 [Enum.SurfaceType.Smooth]
  SETTABLEKS R2 R1 K73 ["BottomSurface"]
  SETTABLEKS R1 R0 K23 ["MeshPart"]
  DUPTABLE R1 K74 [{"Anchored", "Size", "FrontSurface", "BackSurface", "LeftSurface", "RightSurface", "TopSurface", "BottomSurface"}]
  LOADB R2 1
  SETTABLEKS R2 R1 K66 ["Anchored"]
  LOADK R2 K75 [{1, 1, 1}]
  SETTABLEKS R2 R1 K67 ["Size"]
  GETIMPORT R2 K78 [Enum.SurfaceType.Smooth]
  SETTABLEKS R2 R1 K68 ["FrontSurface"]
  GETIMPORT R2 K78 [Enum.SurfaceType.Smooth]
  SETTABLEKS R2 R1 K69 ["BackSurface"]
  GETIMPORT R2 K78 [Enum.SurfaceType.Smooth]
  SETTABLEKS R2 R1 K70 ["LeftSurface"]
  GETIMPORT R2 K78 [Enum.SurfaceType.Smooth]
  SETTABLEKS R2 R1 K71 ["RightSurface"]
  GETIMPORT R2 K78 [Enum.SurfaceType.Smooth]
  SETTABLEKS R2 R1 K72 ["TopSurface"]
  GETIMPORT R2 K78 [Enum.SurfaceType.Smooth]
  SETTABLEKS R2 R1 K73 ["BottomSurface"]
  SETTABLEKS R1 R0 K24 ["CornerWedgePart"]
  DUPTABLE R1 K74 [{"Anchored", "Size", "FrontSurface", "BackSurface", "LeftSurface", "RightSurface", "TopSurface", "BottomSurface"}]
  LOADB R2 1
  SETTABLEKS R2 R1 K66 ["Anchored"]
  LOADK R2 K75 [{1, 1, 1}]
  SETTABLEKS R2 R1 K67 ["Size"]
  GETIMPORT R2 K78 [Enum.SurfaceType.Smooth]
  SETTABLEKS R2 R1 K68 ["FrontSurface"]
  GETIMPORT R2 K78 [Enum.SurfaceType.Smooth]
  SETTABLEKS R2 R1 K69 ["BackSurface"]
  GETIMPORT R2 K78 [Enum.SurfaceType.Smooth]
  SETTABLEKS R2 R1 K70 ["LeftSurface"]
  GETIMPORT R2 K78 [Enum.SurfaceType.Smooth]
  SETTABLEKS R2 R1 K71 ["RightSurface"]
  GETIMPORT R2 K78 [Enum.SurfaceType.Smooth]
  SETTABLEKS R2 R1 K72 ["TopSurface"]
  GETIMPORT R2 K78 [Enum.SurfaceType.Smooth]
  SETTABLEKS R2 R1 K73 ["BottomSurface"]
  SETTABLEKS R1 R0 K25 ["VehicleSeat"]
  RETURN R0 1
