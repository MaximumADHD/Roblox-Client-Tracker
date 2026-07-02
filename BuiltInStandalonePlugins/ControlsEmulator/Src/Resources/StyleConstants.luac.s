MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K3 [Enum.Font.SourceSans]
        3 GETIMPORT                        R1 K5 [Enum.Font.SourceSansBold]
        5 GETIMPORT                        R2 K8 [Vector2.new]
        7 LOADN                            R3 600
        8 LOADN                            R4 1
        9 CALL                             R2 2 1
       10 DUPTABLE                         R3 K16 [{["DEVICEDROPDOWN_TEXTBUTTON"] = 100, ["DEVICEDROPDOWN_IMAGEBUTTON"] = 101, ["VRCONTROLS_TOOLTIP"] = 2, ["RESETALL_TOOLTIP"] = 2}]
       11 DUPTABLE                         R4 K39 [{["deviceHeaderHeight"] = 40, ["vrControlsHeight"] = 80, ["deviceSelectorCornerRadius"] = 5, ["detailFontSize"] = 11, ["normalFontSize"] = 18, ["buttonFontSize"] = 18, ["headerFontSize"] = 18, ["blueprintLabelFontSize"] = 18, ["defaultFont"], ["defaultFontBold"], ["buttonPaddingVertical"] = 2, ["buttonPaddingHorizontal"] = 12, ["buttonCornerRadius"] = 4, ["minimumMappingsDialogSize"], ["ZIndexData"]}]
       12 SETTABLEKS                       R0 R4 K30 ["defaultFont"]
       14 SETTABLEKS                       R1 R4 K31 ["defaultFontBold"]
       16 SETTABLEKS                       R2 R4 K37 ["minimumMappingsDialogSize"]
       18 SETTABLEKS                       R3 R4 K38 ["ZIndexData"]
       20 RETURN                           R4 1
