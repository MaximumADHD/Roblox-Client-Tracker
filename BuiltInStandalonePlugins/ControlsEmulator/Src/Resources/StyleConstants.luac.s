MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K3 [Enum.Font.SourceSans]
        3 GETIMPORT                        R1 K5 [Enum.Font.SourceSansBold]
        5 GETIMPORT                        R2 K8 [Vector2.new]
        7 LOADN                            R3 88
        8 LOADN                            R4 1
        9 CALL                             R2 2 1
       10 DUPTABLE                         R3 K13 [{"DEVICEDROPDOWN_TEXTBUTTON", "DEVICEDROPDOWN_IMAGEBUTTON", "VRCONTROLS_TOOLTIP", "RESETALL_TOOLTIP"}]
       11 LOADN                            R4 100
       12 SETTABLEKS                       R4 R3 K9 ["DEVICEDROPDOWN_TEXTBUTTON"]
       14 LOADN                            R4 101
       15 SETTABLEKS                       R4 R3 K10 ["DEVICEDROPDOWN_IMAGEBUTTON"]
       17 LOADN                            R4 2
       18 SETTABLEKS                       R4 R3 K11 ["VRCONTROLS_TOOLTIP"]
       20 LOADN                            R4 2
       21 SETTABLEKS                       R4 R3 K12 ["RESETALL_TOOLTIP"]
       23 DUPTABLE                         R4 K29 [{"deviceHeaderHeight", "vrControlsHeight", "deviceSelectorCornerRadius", "detailFontSize", "normalFontSize", "buttonFontSize", "headerFontSize", "blueprintLabelFontSize", "defaultFont", "defaultFontBold", "buttonPaddingVertical", "buttonPaddingHorizontal", "buttonCornerRadius", "minimumMappingsDialogSize", "ZIndexData"}]
       24 LOADN                            R5 40
       25 SETTABLEKS                       R5 R4 K14 ["deviceHeaderHeight"]
       27 LOADN                            R5 80
       28 SETTABLEKS                       R5 R4 K15 ["vrControlsHeight"]
       30 LOADN                            R5 5
       31 SETTABLEKS                       R5 R4 K16 ["deviceSelectorCornerRadius"]
       33 LOADN                            R5 11
       34 SETTABLEKS                       R5 R4 K17 ["detailFontSize"]
       36 LOADN                            R5 18
       37 SETTABLEKS                       R5 R4 K18 ["normalFontSize"]
       39 LOADN                            R5 18
       40 SETTABLEKS                       R5 R4 K19 ["buttonFontSize"]
       42 LOADN                            R5 18
       43 SETTABLEKS                       R5 R4 K20 ["headerFontSize"]
       45 LOADN                            R5 18
       46 SETTABLEKS                       R5 R4 K21 ["blueprintLabelFontSize"]
       48 SETTABLEKS                       R0 R4 K22 ["defaultFont"]
       50 SETTABLEKS                       R1 R4 K23 ["defaultFontBold"]
       52 LOADN                            R5 2
       53 SETTABLEKS                       R5 R4 K24 ["buttonPaddingVertical"]
       55 LOADN                            R5 12
       56 SETTABLEKS                       R5 R4 K25 ["buttonPaddingHorizontal"]
       58 LOADN                            R5 4
       59 SETTABLEKS                       R5 R4 K26 ["buttonCornerRadius"]
       61 SETTABLEKS                       R2 R4 K27 ["minimumMappingsDialogSize"]
       63 SETTABLEKS                       R3 R4 K28 ["ZIndexData"]
       65 RETURN                           R4 1
