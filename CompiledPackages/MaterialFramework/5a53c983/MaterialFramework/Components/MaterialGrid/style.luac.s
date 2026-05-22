MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R3 R1 K5 ["Framework"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K6 ["Style"]
       18 GETTABLEKS                       R3 R3 K7 ["StyleKey"]
       20 GETIMPORT                        R4 K4 [require]
       22 GETTABLEKS                       R5 R0 K8 ["Enums"]
       24 GETTABLEKS                       R5 R5 K9 ["ViewType"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K12 [UDim.new]
       29 LOADN                            R6 0
       30 LOADN                            R7 6
       31 CALL                             R5 2 1
       32 DUPTABLE                         R6 K35 [{"BackgroundColor", "GridItemBackgroundColor", "GridItemBackgroundColorApplied", "GridItemBackgroundColorHovered", "GridItemBorderColor", "GridItemBorderColorSelected", "GridItemCornerRadius", "GridItemPadding", "GridItemSize", "GridItemLabelPadding", "ListItemBackgroundColor", "ListItemHeight", "ListItemPadding", "ListItemSpacing", "MaterialPreviewStyle", "Padding", "ShimmerSizeOffset", "SnapshotSize", "TextSize", "TooltipDelay", "ViewType", "ItemLabelTextColor", "ListItemLabelTextColor"}]
       33 GETTABLEKS                       R7 R3 K36 ["ScrollBarBackground"]
       35 SETTABLEKS                       R7 R6 K13 ["BackgroundColor"]
       37 GETTABLEKS                       R7 R3 K37 ["Button"]
       39 SETTABLEKS                       R7 R6 K14 ["GridItemBackgroundColor"]
       41 GETTABLEKS                       R7 R3 K38 ["BackgroundDefault"]
       43 SETTABLEKS                       R7 R6 K15 ["GridItemBackgroundColorApplied"]
       45 GETTABLEKS                       R7 R3 K39 ["ButtonHover"]
       47 SETTABLEKS                       R7 R6 K16 ["GridItemBackgroundColorHovered"]
       49 GETTABLEKS                       R7 R3 K40 ["Border"]
       51 SETTABLEKS                       R7 R6 K17 ["GridItemBorderColor"]
       53 GETTABLEKS                       R7 R3 K41 ["InputFieldBorderSelected"]
       55 SETTABLEKS                       R7 R6 K18 ["GridItemBorderColorSelected"]
       57 GETIMPORT                        R7 K12 [UDim.new]
       59 LOADN                            R8 0
       60 LOADN                            R9 6
       61 CALL                             R7 2 1
       62 SETTABLEKS                       R7 R6 K19 ["GridItemCornerRadius"]
       64 LOADN                            R7 4
       65 SETTABLEKS                       R7 R6 K20 ["GridItemPadding"]
       67 LOADN                            R7 128
       68 SETTABLEKS                       R7 R6 K21 ["GridItemSize"]
       70 DUPTABLE                         R7 K45 [{"PaddingBottom", "PaddingLeft", "PaddingRight"}]
       71 SETTABLEKS                       R5 R7 K42 ["PaddingBottom"]
       73 SETTABLEKS                       R5 R7 K43 ["PaddingLeft"]
       75 SETTABLEKS                       R5 R7 K44 ["PaddingRight"]
       77 SETTABLEKS                       R7 R6 K22 ["GridItemLabelPadding"]
       79 GETTABLEKS                       R7 R3 K37 ["Button"]
       81 SETTABLEKS                       R7 R6 K23 ["ListItemBackgroundColor"]
       83 LOADN                            R7 40
       84 SETTABLEKS                       R7 R6 K24 ["ListItemHeight"]
       86 LOADN                            R7 0
       87 SETTABLEKS                       R7 R6 K25 ["ListItemPadding"]
       89 LOADN                            R7 4
       90 SETTABLEKS                       R7 R6 K26 ["ListItemSpacing"]
       92 LOADK                            R7 K46 ["CornerBox"]
       93 SETTABLEKS                       R7 R6 K27 ["MaterialPreviewStyle"]
       95 LOADN                            R7 0
       96 SETTABLEKS                       R7 R6 K28 ["Padding"]
       98 LOADN                            R7 2
       99 SETTABLEKS                       R7 R6 K29 ["ShimmerSizeOffset"]
      101 GETIMPORT                        R7 K49 [UDim2.fromOffset]
      103 LOADN                            R8 64
      104 LOADN                            R9 64
      105 CALL                             R7 2 1
      106 SETTABLEKS                       R7 R6 K30 ["SnapshotSize"]
      108 LOADN                            R7 20
      109 SETTABLEKS                       R7 R6 K31 ["TextSize"]
      111 LOADK                            R7 K50 [0.3]
      112 SETTABLEKS                       R7 R6 K32 ["TooltipDelay"]
      114 GETTABLEKS                       R7 R4 K51 ["Grid"]
      116 SETTABLEKS                       R7 R6 K9 ["ViewType"]
      118 GETTABLEKS                       R7 R3 K52 ["MainText"]
      120 SETTABLEKS                       R7 R6 K33 ["ItemLabelTextColor"]
      122 GETTABLEKS                       R7 R3 K52 ["MainText"]
      124 SETTABLEKS                       R7 R6 K34 ["ListItemLabelTextColor"]
      126 RETURN                           R6 1
