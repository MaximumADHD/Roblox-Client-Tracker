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
       27 GETIMPORT                        R5 K4 [require]
       29 GETTABLEKS                       R6 R0 K10 ["Flags"]
       31 GETTABLEKS                       R6 R6 K11 ["getFFlagMaterialGridItemLabelFoundationStyle"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K14 [UDim.new]
       36 LOADN                            R7 0
       37 LOADN                            R8 6
       38 CALL                             R6 2 1
       39 DUPTABLE                         R7 K45 [{["BackgroundColor"], ["GridItemBackgroundColor"], ["GridItemBackgroundColorApplied"], ["GridItemBackgroundColorHovered"], ["GridItemBorderColor"], ["GridItemBorderColorSelected"], ["GridItemCornerRadius"], ["GridItemPadding"] = 4, ["GridItemSize"] = 128, ["GridItemLabelPadding"], ["ListItemBackgroundColor"], ["ListItemHeight"] = 40, ["ListItemPadding"] = 0, ["ListItemSpacing"] = 4, ["MaterialPreviewStyle"] = "CornerBox", ["Padding"] = 0, ["ShimmerSizeOffset"] = 2, ["SnapshotSize"], ["TextSize"], ["TooltipDelay"] = 0.3, ["ViewType"], ["ItemLabelTextColor"], ["ItemLabelScrimColor"], ["ListItemLabelTextColor"]}]
       40 GETTABLEKS                       R8 R3 K46 ["ScrollBarBackground"]
       42 SETTABLEKS                       R8 R7 K15 ["BackgroundColor"]
       44 GETTABLEKS                       R8 R3 K47 ["Button"]
       46 SETTABLEKS                       R8 R7 K16 ["GridItemBackgroundColor"]
       48 GETTABLEKS                       R8 R3 K48 ["BackgroundDefault"]
       50 SETTABLEKS                       R8 R7 K17 ["GridItemBackgroundColorApplied"]
       52 GETTABLEKS                       R8 R3 K49 ["ButtonHover"]
       54 SETTABLEKS                       R8 R7 K18 ["GridItemBackgroundColorHovered"]
       56 GETTABLEKS                       R8 R3 K50 ["Border"]
       58 SETTABLEKS                       R8 R7 K19 ["GridItemBorderColor"]
       60 GETTABLEKS                       R8 R3 K51 ["InputFieldBorderSelected"]
       62 SETTABLEKS                       R8 R7 K20 ["GridItemBorderColorSelected"]
       64 GETIMPORT                        R8 K14 [UDim.new]
       66 LOADN                            R9 0
       67 LOADN                            R10 6
       68 CALL                             R8 2 1
       69 SETTABLEKS                       R8 R7 K21 ["GridItemCornerRadius"]
       71 DUPTABLE                         R8 K55 [{"PaddingBottom", "PaddingLeft", "PaddingRight"}]
       72 SETTABLEKS                       R6 R8 K52 ["PaddingBottom"]
       74 SETTABLEKS                       R6 R8 K53 ["PaddingLeft"]
       76 SETTABLEKS                       R6 R8 K54 ["PaddingRight"]
       78 SETTABLEKS                       R8 R7 K26 ["GridItemLabelPadding"]
       80 GETTABLEKS                       R8 R3 K47 ["Button"]
       82 SETTABLEKS                       R8 R7 K27 ["ListItemBackgroundColor"]
       84 GETIMPORT                        R8 K58 [UDim2.fromOffset]
       86 LOADN                            R9 64
       87 LOADN                            R10 64
       88 CALL                             R8 2 1
       89 SETTABLEKS                       R8 R7 K38 ["SnapshotSize"]
       91 MOVE                             R9 R5
       92 CALL                             R9 0 1
       93 JUMPIFNOT                        R9 ; [+2]
       94 LOADN                            R8 14
       95 JUMP                             ; [+1]
       96 LOADN                            R8 20
       97 SETTABLEKS                       R8 R7 K39 ["TextSize"]
       99 GETTABLEKS                       R8 R4 K59 ["Grid"]
      101 SETTABLEKS                       R8 R7 K9 ["ViewType"]
      103 GETTABLEKS                       R8 R3 K60 ["MainText"]
      105 SETTABLEKS                       R8 R7 K42 ["ItemLabelTextColor"]
      107 GETTABLEKS                       R8 R3 K61 ["MainBackground"]
      109 SETTABLEKS                       R8 R7 K43 ["ItemLabelScrimColor"]
      111 GETTABLEKS                       R8 R3 K60 ["MainText"]
      113 SETTABLEKS                       R8 R7 K44 ["ListItemLabelTextColor"]
      115 RETURN                           R7 1
