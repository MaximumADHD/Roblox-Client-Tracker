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
       23 DUPTABLE                         R3 K26 [{["Colors"], ["DottedBorder"], ["FontStyle"], ["Hyperlink"], ["Thumbnail"], ["ModeratedImage"] = "rbxasset://textures/GameSettings/ModeratedAsset.jpg", ["VideoPlaceholder"] = "rbxasset://textures/GameSettings/placeholder.png", ["DeleteThumbnailDialog"], ["DragDestination"], ["HoverBarButton"], ["NewThumbnail"], ["PreviewThumbnailDialog"], ["RoundArrowButton"], ["ThumbnailHoverBar"], ["ThumbnailSet"]}]
       24 DUPTABLE                         R4 K31 [{"Black", "Blue", "Error", "White"}]
       25 GETTABLEKS                       R5 R1 K27 ["Black"]
       27 SETTABLEKS                       R5 R4 K27 ["Black"]
       29 GETTABLEKS                       R5 R1 K28 ["Blue"]
       31 SETTABLEKS                       R5 R4 K28 ["Blue"]
       33 GETIMPORT                        R5 K34 [Color3.new]
       35 LOADN                            R6 1
       36 LOADK                            R7 K35 [0.266]
       37 LOADK                            R8 K35 [0.266]
       38 CALL                             R5 3 1
       39 SETTABLEKS                       R5 R4 K29 ["Error"]
       41 GETTABLEKS                       R5 R1 K30 ["White"]
       43 SETTABLEKS                       R5 R4 K30 ["White"]
       45 SETTABLEKS                       R4 R3 K8 ["Colors"]
       47 DUPTABLE                         R4 K39 [{["Image"] = "rbxasset://textures/GameSettings/DottedBorder.png", ["SliceCenter"]}]
       48 GETIMPORT                        R5 K41 [Rect.new]
       50 LOADN                            R6 2
       51 LOADN                            R7 2
       52 LOADN                            R8 265
       53 LOADN                            R9 148
       54 CALL                             R5 4 1
       55 SETTABLEKS                       R5 R4 K38 ["SliceCenter"]
       57 SETTABLEKS                       R4 R3 K10 ["DottedBorder"]
       59 DUPTABLE                         R4 K44 [{"Normal", "Smaller"}]
       60 DUPTABLE                         R5 K49 [{["Font"], ["TextSize"] = 22, ["TextColor3"]}]
       61 GETIMPORT                        R6 K52 [Enum.Font.SourceSans]
       63 SETTABLEKS                       R6 R5 K45 ["Font"]
       65 GETTABLEKS                       R6 R2 K53 ["MainText"]
       67 SETTABLEKS                       R6 R5 K48 ["TextColor3"]
       69 SETTABLEKS                       R5 R4 K42 ["Normal"]
       71 DUPTABLE                         R5 K55 [{["Font"], ["TextSize"] = 20, ["TextColor3"]}]
       72 GETIMPORT                        R6 K52 [Enum.Font.SourceSans]
       74 SETTABLEKS                       R6 R5 K45 ["Font"]
       76 GETTABLEKS                       R6 R2 K53 ["MainText"]
       78 SETTABLEKS                       R6 R5 K48 ["TextColor3"]
       80 SETTABLEKS                       R5 R4 K43 ["Smaller"]
       82 SETTABLEKS                       R4 R3 K11 ["FontStyle"]
       84 GETTABLEKS                       R4 R2 K56 ["LinkText"]
       86 SETTABLEKS                       R4 R3 K12 ["Hyperlink"]
       88 DUPTABLE                         R4 K62 [{["Background"], ["Count"], ["DefaultMaxCount"] = 10, ["DefaultSize"]}]
       89 GETTABLEKS                       R5 R2 K63 ["SubBackground2"]
       91 SETTABLEKS                       R5 R4 K57 ["Background"]
       93 GETTABLEKS                       R5 R2 K64 ["DimmedText"]
       95 SETTABLEKS                       R5 R4 K58 ["Count"]
       97 GETIMPORT                        R5 K66 [UDim2.new]
       99 LOADN                            R6 0
      100 LOADN                            R7 267
      101 LOADN                            R8 0
      102 LOADN                            R9 150
      103 CALL                             R5 4 1
      104 SETTABLEKS                       R5 R4 K61 ["DefaultSize"]
      106 SETTABLEKS                       R4 R3 K13 ["Thumbnail"]
      108 DUPTABLE                         R4 K71 [{["MinContentHeight"] = 1000, ["MinContentWidth"] = 300}]
      109 SETTABLEKS                       R4 R3 K18 ["DeleteThumbnailDialog"]
      111 DUPTABLE                         R4 K73 [{"Background", "Border"}]
      112 GETTABLEKS                       R5 R2 K74 ["SubBackground"]
      114 SETTABLEKS                       R5 R4 K57 ["Background"]
      116 GETTABLEKS                       R5 R2 K75 ["CurrentMarkerSelected"]
      118 SETTABLEKS                       R5 R4 K72 ["Border"]
      120 SETTABLEKS                       R4 R3 K19 ["DragDestination"]
      122 DUPTABLE                         R4 K79 [{["RoundedBackgroundImage"] = "rbxasset://textures/StudioToolbox/RoundedBackground.png", ["RoundedFrameSlice"]}]
      123 GETIMPORT                        R5 K41 [Rect.new]
      125 LOADN                            R6 3
      126 LOADN                            R7 3
      127 LOADN                            R8 13
      128 LOADN                            R9 13
      129 CALL                             R5 4 1
      130 SETTABLEKS                       R5 R4 K78 ["RoundedFrameSlice"]
      132 SETTABLEKS                       R4 R3 K20 ["HoverBarButton"]
      134 DUPTABLE                         R4 K82 [{"Background", "Border", "PlusColor", "Plus"}]
      135 GETTABLEKS                       R5 R2 K74 ["SubBackground"]
      137 SETTABLEKS                       R5 R4 K57 ["Background"]
      139 GETTABLEKS                       R5 R2 K63 ["SubBackground2"]
      141 SETTABLEKS                       R5 R4 K72 ["Border"]
      143 GETTABLEKS                       R5 R2 K53 ["MainText"]
      145 SETTABLEKS                       R5 R4 K80 ["PlusColor"]
      147 DUPTABLE                         R5 K86 [{["Image"] = "rbxasset://textures/GameSettings/CenterPlus.png", ["RectOffset"], ["RectSize"]}]
      148 GETIMPORT                        R6 K88 [Vector2.new]
      150 LOADN                            R7 121
      151 LOADN                            R8 63
      152 CALL                             R6 2 1
      153 SETTABLEKS                       R6 R5 K84 ["RectOffset"]
      155 GETIMPORT                        R6 K88 [Vector2.new]
      157 LOADN                            R7 24
      158 LOADN                            R8 24
      159 CALL                             R6 2 1
      160 SETTABLEKS                       R6 R5 K85 ["RectSize"]
      162 SETTABLEKS                       R5 R4 K81 ["Plus"]
      164 SETTABLEKS                       R4 R3 K21 ["NewThumbnail"]
      166 DUPTABLE                         R4 K98 [{["AltTextInputHeight"] = 50, ["ButtonPadding"], ["Height"] = 380, ["ImagePadding"] = 10, ["MaxAltTextLength"] = 1000, ["Size"], ["TooltipIcon"]}]
      167 GETIMPORT                        R5 K100 [UDim.new]
      169 LOADN                            R6 0
      170 LOADN                            R7 20
      171 CALL                             R5 2 1
      172 SETTABLEKS                       R5 R4 K91 ["ButtonPadding"]
      174 GETIMPORT                        R5 K66 [UDim2.new]
      176 LOADN                            R6 0
      177 LOADN                            R7 534
      178 LOADN                            R8 0
      179 LOADN                            R9 300
      180 CALL                             R5 4 1
      181 SETTABLEKS                       R5 R4 K96 ["Size"]
      183 DUPTABLE                         R5 K107 [{["PaddingX"] = 5, ["Size"] = 14, ["Image"] = "rbxasset://textures/GameSettings/MoreDetails.png", ["Color"], ["HoverColor"]}]
      184 GETTABLEKS                       R6 R2 K108 ["SubText"]
      186 SETTABLEKS                       R6 R5 K105 ["Color"]
      188 GETTABLEKS                       R6 R2 K109 ["MainTextHover"]
      190 SETTABLEKS                       R6 R5 K106 ["HoverColor"]
      192 SETTABLEKS                       R5 R4 K97 ["TooltipIcon"]
      194 SETTABLEKS                       R4 R3 K22 ["PreviewThumbnailDialog"]
      196 DUPTABLE                         R4 K113 [{["ButtonImage"] = "rbxasset://textures/GameSettings/RoundArrowButton.png", ["ButtonSize"]}]
      197 GETIMPORT                        R5 K66 [UDim2.new]
      199 LOADN                            R6 0
      200 LOADN                            R7 48
      201 LOADN                            R8 0
      202 LOADN                            R9 48
      203 CALL                             R5 4 1
      204 SETTABLEKS                       R5 R4 K112 ["ButtonSize"]
      206 SETTABLEKS                       R4 R3 K23 ["RoundArrowButton"]
      208 DUPTABLE                         R4 K119 [{["Padding"], ["ZoomImage"] = "rbxasset://textures/GameSettings/zoom.png", ["DeleteImage"] = "rbxasset://textures/GameSettings/delete.png"}]
      209 GETIMPORT                        R5 K100 [UDim.new]
      211 LOADN                            R6 0
      212 LOADN                            R7 6
      213 CALL                             R5 2 1
      214 SETTABLEKS                       R5 R4 K114 ["Padding"]
      216 SETTABLEKS                       R4 R3 K24 ["ThumbnailHoverBar"]
      218 DUPTABLE                         R4 K120 [{"Padding"}]
      219 GETIMPORT                        R5 K66 [UDim2.new]
      221 LOADN                            R6 0
      222 LOADN                            R7 30
      223 LOADN                            R8 0
      224 LOADN                            R9 30
      225 CALL                             R5 4 1
      226 SETTABLEKS                       R5 R4 K114 ["Padding"]
      228 SETTABLEKS                       R4 R3 K25 ["ThumbnailSet"]
      230 RETURN                           R3 1
