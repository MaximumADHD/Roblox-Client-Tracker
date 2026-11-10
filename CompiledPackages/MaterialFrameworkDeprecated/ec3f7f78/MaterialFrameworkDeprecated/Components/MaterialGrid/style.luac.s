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
       32 DUPTABLE                         R6 K44 [{["BackgroundColor"], ["GridItemBackgroundColor"], ["GridItemBackgroundColorApplied"], ["GridItemBackgroundColorHovered"], ["GridItemBorderColor"], ["GridItemBorderColorSelected"], ["GridItemCornerRadius"], ["GridItemPadding"] = 4, ["GridItemSize"] = 128, ["GridItemLabelPadding"], ["ListItemBackgroundColor"], ["ListItemHeight"] = 40, ["ListItemPadding"] = 0, ["ListItemSpacing"] = 4, ["MaterialPreviewStyle"] = "CornerBox", ["Padding"] = 0, ["ShimmerSizeOffset"] = 2, ["SnapshotSize"], ["TextSize"] = 14, ["TooltipDelay"] = 0.3, ["ViewType"], ["ItemLabelTextColor"], ["ItemLabelScrimColor"], ["ListItemLabelTextColor"]}]
       33 GETTABLEKS                       R7 R3 K45 ["ScrollBarBackground"]
       35 SETTABLEKS                       R7 R6 K13 ["BackgroundColor"]
       37 GETTABLEKS                       R7 R3 K46 ["Button"]
       39 SETTABLEKS                       R7 R6 K14 ["GridItemBackgroundColor"]
       41 GETTABLEKS                       R7 R3 K47 ["BackgroundDefault"]
       43 SETTABLEKS                       R7 R6 K15 ["GridItemBackgroundColorApplied"]
       45 GETTABLEKS                       R7 R3 K48 ["ButtonHover"]
       47 SETTABLEKS                       R7 R6 K16 ["GridItemBackgroundColorHovered"]
       49 GETTABLEKS                       R7 R3 K49 ["Border"]
       51 SETTABLEKS                       R7 R6 K17 ["GridItemBorderColor"]
       53 GETTABLEKS                       R7 R3 K50 ["InputFieldBorderSelected"]
       55 SETTABLEKS                       R7 R6 K18 ["GridItemBorderColorSelected"]
       57 GETIMPORT                        R7 K12 [UDim.new]
       59 LOADN                            R8 0
       60 LOADN                            R9 6
       61 CALL                             R7 2 1
       62 SETTABLEKS                       R7 R6 K19 ["GridItemCornerRadius"]
       64 DUPTABLE                         R7 K54 [{"PaddingBottom", "PaddingLeft", "PaddingRight"}]
       65 SETTABLEKS                       R5 R7 K51 ["PaddingBottom"]
       67 SETTABLEKS                       R5 R7 K52 ["PaddingLeft"]
       69 SETTABLEKS                       R5 R7 K53 ["PaddingRight"]
       71 SETTABLEKS                       R7 R6 K24 ["GridItemLabelPadding"]
       73 GETTABLEKS                       R7 R3 K46 ["Button"]
       75 SETTABLEKS                       R7 R6 K25 ["ListItemBackgroundColor"]
       77 GETIMPORT                        R7 K57 [UDim2.fromOffset]
       79 LOADN                            R8 64
       80 LOADN                            R9 64
       81 CALL                             R7 2 1
       82 SETTABLEKS                       R7 R6 K36 ["SnapshotSize"]
       84 GETTABLEKS                       R7 R4 K58 ["Grid"]
       86 SETTABLEKS                       R7 R6 K9 ["ViewType"]
       88 GETTABLEKS                       R7 R3 K59 ["MainText"]
       90 SETTABLEKS                       R7 R6 K41 ["ItemLabelTextColor"]
       92 GETTABLEKS                       R7 R3 K60 ["MainBackground"]
       94 SETTABLEKS                       R7 R6 K42 ["ItemLabelScrimColor"]
       96 GETTABLEKS                       R7 R3 K59 ["MainText"]
       98 SETTABLEKS                       R7 R6 K43 ["ListItemLabelTextColor"]
      100 RETURN                           R6 1
