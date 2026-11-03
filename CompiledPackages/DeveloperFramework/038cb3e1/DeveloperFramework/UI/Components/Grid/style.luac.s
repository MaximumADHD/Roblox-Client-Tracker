MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Style"]
       13 GETTABLEKS                       R2 R2 K8 ["StyleKey"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K9 ["Components"]
       22 GETTABLEKS                       R3 R3 K10 ["UIFolderData"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R4 R2 K11 ["ExpandablePane"]
       29 GETTABLEKS                       R4 R4 K12 ["style"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K13 ["Header"]
       34 GETTABLEKS                       R4 R4 K14 ["Arrow"]
       36 GETIMPORT                        R5 K6 [require]
       38 GETTABLEKS                       R6 R0 K4 ["Parent"]
       40 GETTABLEKS                       R6 R6 K15 ["Dash"]
       42 CALL                             R5 1 1
       43 GETTABLEKS                       R6 R5 K16 ["join"]
       45 DUPTABLE                         R7 K23 [{"BackgroundColor", "CellGroupHeader", "CellSize", "CellPadding", "GridCell", "ScrollingFrame"}]
       46 GETTABLEKS                       R8 R1 K24 ["ScrollBarBackground"]
       48 SETTABLEKS                       R8 R7 K17 ["BackgroundColor"]
       50 DUPTABLE                         R8 K34 [{["Arrow"], ["ArrowButtonSize"], ["BackgroundColor"], ["Padding"], ["Size"], ["Spacing"] = 6, ["Style"] = "RoundBox", ["TextColor"], ["TextSize"] = 16}]
       51 MOVE                             R9 R6
       52 MOVE                             R10 R4
       53 DUPTABLE                         R11 K36 [{"ImageColor3"}]
       54 GETTABLEKS                       R12 R1 K37 ["TextSecondary"]
       56 SETTABLEKS                       R12 R11 K35 ["ImageColor3"]
       58 CALL                             R9 2 1
       59 SETTABLEKS                       R9 R8 K14 ["Arrow"]
       61 GETIMPORT                        R9 K40 [UDim2.fromOffset]
       63 LOADN                            R10 16
       64 LOADN                            R11 16
       65 CALL                             R9 2 1
       66 SETTABLEKS                       R9 R8 K25 ["ArrowButtonSize"]
       68 GETTABLEKS                       R9 R1 K41 ["CategoryItem"]
       70 SETTABLEKS                       R9 R8 K17 ["BackgroundColor"]
       72 DUPTABLE                         R9 K44 [{["Left"] = 8}]
       73 SETTABLEKS                       R9 R8 K26 ["Padding"]
       75 GETIMPORT                        R9 K46 [UDim2.new]
       77 LOADN                            R10 1
       78 LOADN                            R11 0
       79 LOADN                            R12 0
       80 LOADN                            R13 28
       81 CALL                             R9 4 1
       82 SETTABLEKS                       R9 R8 K27 ["Size"]
       84 GETTABLEKS                       R9 R1 K37 ["TextSecondary"]
       86 SETTABLEKS                       R9 R8 K31 ["TextColor"]
       88 SETTABLEKS                       R8 R7 K18 ["CellGroupHeader"]
       90 GETIMPORT                        R8 K40 [UDim2.fromOffset]
       92 LOADN                            R9 64
       93 LOADN                            R10 64
       94 CALL                             R8 2 1
       95 SETTABLEKS                       R8 R7 K19 ["CellSize"]
       97 GETIMPORT                        R8 K48 [UDim2.fromScale]
       99 LOADN                            R9 0
      100 LOADN                            R10 0
      101 CALL                             R8 2 1
      102 SETTABLEKS                       R8 R7 K20 ["CellPadding"]
      104 DUPTABLE                         R8 K51 [{["Padding"] = 5, ["Spacing"] = 10}]
      105 SETTABLEKS                       R8 R7 K21 ["GridCell"]
      107 DUPTABLE                         R8 K67 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["TopImage"] = "rbxasset://textures/StudioSharedUI/ScrollBarTop.png", ["MidImage"] = "rbxasset://textures/StudioSharedUI/ScrollBarMiddle.png", ["BottomImage"] = "rbxasset://textures/StudioSharedUI/ScrollBarBottom.png", ["ScrollBarThickness"] = 8, ["ScrollBarImageTransparency"] = 0, ["ScrollBarImageColor3"], ["VerticalScrollBarInset"], ["HorizontalScrollBarInset"]}]
      108 GETTABLEKS                       R9 R1 K68 ["ScrollBar"]
      110 SETTABLEKS                       R9 R8 K64 ["ScrollBarImageColor3"]
      112 GETIMPORT                        R9 K72 [Enum.ScrollBarInset.Always]
      114 SETTABLEKS                       R9 R8 K65 ["VerticalScrollBarInset"]
      116 GETIMPORT                        R9 K73 [Enum.ScrollBarInset.ScrollBar]
      118 SETTABLEKS                       R9 R8 K66 ["HorizontalScrollBarInset"]
      120 SETTABLEKS                       R8 R7 K22 ["ScrollingFrame"]
      122 RETURN                           R7 1
