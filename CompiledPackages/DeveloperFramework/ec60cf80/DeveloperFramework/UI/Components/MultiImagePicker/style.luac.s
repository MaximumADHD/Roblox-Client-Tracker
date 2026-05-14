MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Style"]
       13 GETTABLEKS                       R2 R2 K8 ["Colors"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Style"]
       20 GETTABLEKS                       R3 R3 K9 ["StyleKey"]
       22 CALL                             R2 1 1
       23 DUPTABLE                         R3 K24 [{"Colors", "DottedBorder", "FontStyle", "Hyperlink", "Thumbnail", "ModeratedImage", "VideoPlaceholder", "DeleteThumbnailDialog", "DragDestination", "HoverBarButton", "NewThumbnail", "PreviewThumbnailDialog", "RoundArrowButton", "ThumbnailHoverBar", "ThumbnailSet"}]
       24 DUPTABLE                         R4 K29 [{"Black", "Blue", "Error", "White"}]
       25 GETTABLEKS                       R5 R1 K25 ["Black"]
       27 SETTABLEKS                       R5 R4 K25 ["Black"]
       29 GETTABLEKS                       R5 R1 K26 ["Blue"]
       31 SETTABLEKS                       R5 R4 K26 ["Blue"]
       33 GETIMPORT                        R5 K32 [Color3.new]
       35 LOADN                            R6 1
       36 LOADK                            R7 K33 [0.266]
       37 LOADK                            R8 K33 [0.266]
       38 CALL                             R5 3 1
       39 SETTABLEKS                       R5 R4 K27 ["Error"]
       41 GETTABLEKS                       R5 R1 K28 ["White"]
       43 SETTABLEKS                       R5 R4 K28 ["White"]
       45 SETTABLEKS                       R4 R3 K8 ["Colors"]
       47 DUPTABLE                         R4 K36 [{"Image", "SliceCenter"}]
       48 LOADK                            R5 K37 ["rbxasset://textures/GameSettings/DottedBorder.png"]
       49 SETTABLEKS                       R5 R4 K34 ["Image"]
       51 GETIMPORT                        R5 K39 [Rect.new]
       53 LOADN                            R6 2
       54 LOADN                            R7 2
       55 LOADN                            R8 9
       56 LOADN                            R9 148
       57 CALL                             R5 4 1
       58 SETTABLEKS                       R5 R4 K35 ["SliceCenter"]
       60 SETTABLEKS                       R4 R3 K10 ["DottedBorder"]
       62 DUPTABLE                         R4 K42 [{"Normal", "Smaller"}]
       63 DUPTABLE                         R5 K46 [{"Font", "TextSize", "TextColor3"}]
       64 GETIMPORT                        R6 K49 [Enum.Font.SourceSans]
       66 SETTABLEKS                       R6 R5 K43 ["Font"]
       68 LOADN                            R6 22
       69 SETTABLEKS                       R6 R5 K44 ["TextSize"]
       71 GETTABLEKS                       R6 R2 K50 ["MainText"]
       73 SETTABLEKS                       R6 R5 K45 ["TextColor3"]
       75 SETTABLEKS                       R5 R4 K40 ["Normal"]
       77 DUPTABLE                         R5 K46 [{"Font", "TextSize", "TextColor3"}]
       78 GETIMPORT                        R6 K49 [Enum.Font.SourceSans]
       80 SETTABLEKS                       R6 R5 K43 ["Font"]
       82 LOADN                            R6 20
       83 SETTABLEKS                       R6 R5 K44 ["TextSize"]
       85 GETTABLEKS                       R6 R2 K50 ["MainText"]
       87 SETTABLEKS                       R6 R5 K45 ["TextColor3"]
       89 SETTABLEKS                       R5 R4 K41 ["Smaller"]
       91 SETTABLEKS                       R4 R3 K11 ["FontStyle"]
       93 GETTABLEKS                       R4 R2 K51 ["LinkText"]
       95 SETTABLEKS                       R4 R3 K12 ["Hyperlink"]
       97 DUPTABLE                         R4 K56 [{"Background", "Count", "DefaultMaxCount", "DefaultSize"}]
       98 GETTABLEKS                       R5 R2 K57 ["SubBackground2"]
      100 SETTABLEKS                       R5 R4 K52 ["Background"]
      102 GETTABLEKS                       R5 R2 K58 ["DimmedText"]
      104 SETTABLEKS                       R5 R4 K53 ["Count"]
      106 LOADN                            R5 10
      107 SETTABLEKS                       R5 R4 K54 ["DefaultMaxCount"]
      109 GETIMPORT                        R5 K60 [UDim2.new]
      111 LOADN                            R6 0
      112 LOADN                            R7 11
      113 LOADN                            R8 0
      114 LOADN                            R9 150
      115 CALL                             R5 4 1
      116 SETTABLEKS                       R5 R4 K55 ["DefaultSize"]
      118 SETTABLEKS                       R4 R3 K13 ["Thumbnail"]
      120 LOADK                            R4 K61 ["rbxasset://textures/GameSettings/ModeratedAsset.jpg"]
      121 SETTABLEKS                       R4 R3 K14 ["ModeratedImage"]
      123 LOADK                            R4 K62 ["rbxasset://textures/GameSettings/placeholder.png"]
      124 SETTABLEKS                       R4 R3 K15 ["VideoPlaceholder"]
      126 DUPTABLE                         R4 K65 [{"MinContentHeight", "MinContentWidth"}]
      127 LOADN                            R5 232
      128 SETTABLEKS                       R5 R4 K63 ["MinContentHeight"]
      130 LOADN                            R5 44
      131 SETTABLEKS                       R5 R4 K64 ["MinContentWidth"]
      133 SETTABLEKS                       R4 R3 K16 ["DeleteThumbnailDialog"]
      135 DUPTABLE                         R4 K67 [{"Background", "Border"}]
      136 GETTABLEKS                       R5 R2 K68 ["SubBackground"]
      138 SETTABLEKS                       R5 R4 K52 ["Background"]
      140 GETTABLEKS                       R5 R2 K69 ["CurrentMarkerSelected"]
      142 SETTABLEKS                       R5 R4 K66 ["Border"]
      144 SETTABLEKS                       R4 R3 K17 ["DragDestination"]
      146 DUPTABLE                         R4 K72 [{"RoundedBackgroundImage", "RoundedFrameSlice"}]
      147 LOADK                            R5 K73 ["rbxasset://textures/StudioToolbox/RoundedBackground.png"]
      148 SETTABLEKS                       R5 R4 K70 ["RoundedBackgroundImage"]
      150 GETIMPORT                        R5 K39 [Rect.new]
      152 LOADN                            R6 3
      153 LOADN                            R7 3
      154 LOADN                            R8 13
      155 LOADN                            R9 13
      156 CALL                             R5 4 1
      157 SETTABLEKS                       R5 R4 K71 ["RoundedFrameSlice"]
      159 SETTABLEKS                       R4 R3 K18 ["HoverBarButton"]
      161 DUPTABLE                         R4 K76 [{"Background", "Border", "PlusColor", "Plus"}]
      162 GETTABLEKS                       R5 R2 K68 ["SubBackground"]
      164 SETTABLEKS                       R5 R4 K52 ["Background"]
      166 GETTABLEKS                       R5 R2 K57 ["SubBackground2"]
      168 SETTABLEKS                       R5 R4 K66 ["Border"]
      170 GETTABLEKS                       R5 R2 K50 ["MainText"]
      172 SETTABLEKS                       R5 R4 K74 ["PlusColor"]
      174 DUPTABLE                         R5 K79 [{"Image", "RectOffset", "RectSize"}]
      175 LOADK                            R6 K80 ["rbxasset://textures/GameSettings/CenterPlus.png"]
      176 SETTABLEKS                       R6 R5 K34 ["Image"]
      178 GETIMPORT                        R6 K82 [Vector2.new]
      180 LOADN                            R7 121
      181 LOADN                            R8 63
      182 CALL                             R6 2 1
      183 SETTABLEKS                       R6 R5 K77 ["RectOffset"]
      185 GETIMPORT                        R6 K82 [Vector2.new]
      187 LOADN                            R7 24
      188 LOADN                            R8 24
      189 CALL                             R6 2 1
      190 SETTABLEKS                       R6 R5 K78 ["RectSize"]
      192 SETTABLEKS                       R5 R4 K75 ["Plus"]
      194 SETTABLEKS                       R4 R3 K19 ["NewThumbnail"]
      196 DUPTABLE                         R4 K90 [{"AltTextInputHeight", "ButtonPadding", "Height", "ImagePadding", "MaxAltTextLength", "Size", "TooltipIcon"}]
      197 LOADN                            R5 50
      198 SETTABLEKS                       R5 R4 K83 ["AltTextInputHeight"]
      200 GETIMPORT                        R5 K92 [UDim.new]
      202 LOADN                            R6 0
      203 LOADN                            R7 20
      204 CALL                             R5 2 1
      205 SETTABLEKS                       R5 R4 K84 ["ButtonPadding"]
      207 LOADN                            R5 124
      208 SETTABLEKS                       R5 R4 K85 ["Height"]
      210 LOADN                            R5 10
      211 SETTABLEKS                       R5 R4 K86 ["ImagePadding"]
      213 LOADN                            R5 232
      214 SETTABLEKS                       R5 R4 K87 ["MaxAltTextLength"]
      216 GETIMPORT                        R5 K60 [UDim2.new]
      218 LOADN                            R6 0
      219 LOADN                            R7 22
      220 LOADN                            R8 0
      221 LOADN                            R9 44
      222 CALL                             R5 4 1
      223 SETTABLEKS                       R5 R4 K88 ["Size"]
      225 DUPTABLE                         R5 K96 [{"PaddingX", "Size", "Image", "Color", "HoverColor"}]
      226 LOADN                            R6 5
      227 SETTABLEKS                       R6 R5 K93 ["PaddingX"]
      229 LOADN                            R6 14
      230 SETTABLEKS                       R6 R5 K88 ["Size"]
      232 LOADK                            R6 K97 ["rbxasset://textures/GameSettings/MoreDetails.png"]
      233 SETTABLEKS                       R6 R5 K34 ["Image"]
      235 GETTABLEKS                       R6 R2 K98 ["SubText"]
      237 SETTABLEKS                       R6 R5 K94 ["Color"]
      239 GETTABLEKS                       R6 R2 K99 ["MainTextHover"]
      241 SETTABLEKS                       R6 R5 K95 ["HoverColor"]
      243 SETTABLEKS                       R5 R4 K89 ["TooltipIcon"]
      245 SETTABLEKS                       R4 R3 K20 ["PreviewThumbnailDialog"]
      247 DUPTABLE                         R4 K102 [{"ButtonImage", "ButtonSize"}]
      248 LOADK                            R5 K103 ["rbxasset://textures/GameSettings/RoundArrowButton.png"]
      249 SETTABLEKS                       R5 R4 K100 ["ButtonImage"]
      251 GETIMPORT                        R5 K60 [UDim2.new]
      253 LOADN                            R6 0
      254 LOADN                            R7 48
      255 LOADN                            R8 0
      256 LOADN                            R9 48
      257 CALL                             R5 4 1
      258 SETTABLEKS                       R5 R4 K101 ["ButtonSize"]
      260 SETTABLEKS                       R4 R3 K21 ["RoundArrowButton"]
      262 DUPTABLE                         R4 K107 [{"Padding", "ZoomImage", "DeleteImage"}]
      263 GETIMPORT                        R5 K92 [UDim.new]
      265 LOADN                            R6 0
      266 LOADN                            R7 6
      267 CALL                             R5 2 1
      268 SETTABLEKS                       R5 R4 K104 ["Padding"]
      270 LOADK                            R5 K108 ["rbxasset://textures/GameSettings/zoom.png"]
      271 SETTABLEKS                       R5 R4 K105 ["ZoomImage"]
      273 LOADK                            R5 K109 ["rbxasset://textures/GameSettings/delete.png"]
      274 SETTABLEKS                       R5 R4 K106 ["DeleteImage"]
      276 SETTABLEKS                       R4 R3 K22 ["ThumbnailHoverBar"]
      278 DUPTABLE                         R4 K110 [{"Padding"}]
      279 GETIMPORT                        R5 K60 [UDim2.new]
      281 LOADN                            R6 0
      282 LOADN                            R7 30
      283 LOADN                            R8 0
      284 LOADN                            R9 30
      285 CALL                             R5 4 1
      286 SETTABLEKS                       R5 R4 K104 ["Padding"]
      288 SETTABLEKS                       R4 R3 K23 ["ThumbnailSet"]
      290 RETURN                           R3 1
