MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleSheet"]
       18 DUPTABLE                         R3 K49 [{["CategoryListTextContrast"], ["PresetInfoImage"] = "rbxasset://studio_svg_textures/Lua/AvatarSettings/Dark/Standard/info-dark@2x.png", ["PresetTooltipCheckImage"] = "rbxasset://studio_svg_textures/Lua/AvatarSettings/Dark/Standard/Check-DarkMode@3x.png", ["PresetTooltipXImage"] = "rbxasset://studio_svg_textures/Lua/AvatarSettings/Dark/Standard/X-DarkMode@3x.png", ["PreviewTooltipSettingVisibleImage"] = "rbxasset://studio_svg_textures/Lua/AvatarSettings/Dark/Standard/eye-slash-fill-dark@3x.png", ["PreviewTooltipSettingInvisibleImage"] = "rbxasset://studio_svg_textures/Lua/AvatarSettings/Dark/Standard/eye-fill-dark@3x.png", ["PreviewTooltipPlayImage"] = "rbxasset://studio_svg_textures/Lua/AvatarSettings/Dark/Standard/play-large-dark@3x.png", ["PreviewTooltipPlayDisabledImage"] = "rbxasset://studio_svg_textures/Lua/AvatarSettings/Dark/Standard/play-large-disabled-dark@3x.png", ["PreviewTooltipAddAvatarImage"] = "rbxasset://studio_svg_textures/Lua/AvatarSettings/Dark/Standard/plus-heavy-dark@3x.png", ["PreviewTooltipResetAvatarsToCameraImage"] = "rbxasset://studio_svg_textures/Lua/AvatarSettings/Dark/Standard/reset-to-mannequin-dark@3x.png", ["GeneralCategoryImage"] = "rbxasset://studio_svg_textures/Lua/AvatarSettings/Dark/Standard/settings-dark@3x.png", ["BodyCategoryImage"] = "rbxasset://studio_svg_textures/Lua/AvatarSettings/Dark/Standard/avatar-dark@3x.png", ["MovementCategoryImage"] = "rbxasset://studio_svg_textures/Lua/AvatarSettings/Dark/Standard/animation-dark@3x.png", ["AccessoriesCategoryImage"] = "rbxasset://studio_svg_textures/Lua/AvatarSettings/Dark/Standard/accessories-dark@3x.png", ["ClothingCategoryImage"] = "rbxasset://studio_svg_textures/Lua/AvatarSettings/Dark/Standard/clothing-dark@3x.png", ["ExpandSidebarImage"] = "rbxasset://studio_svg_textures/Lua/AvatarSettings/Dark/Standard/expandsidebar-dark@3x.png", ["CollapseSidebarImage"] = "rbxasset://studio_svg_textures/Lua/AvatarSettings/Dark/Standard/collapsesidebar-dark@3x.png", ["AvatarTypeDropdownToggleImage"] = "rbxasset://studio_svg_textures/Lua/AvatarSettings/Dark/Standard/more-options-dark@3x.png", ["PlayerChoicePresetImage"] = "rbxasset://textures/AvatarSettings/Dark/player-choice_darkx1.png", ["ConsistentPresetImage"] = "rbxasset://textures/AvatarSettings/Dark/consistent-darkx1.png"}]
       19 GETIMPORT                        R4 K52 [Color3.fromHex]
       21 LOADK                            R5 K53 ["FFFFFF"]
       22 CALL                             R4 1 1
       23 SETTABLEKS                       R4 R3 K10 ["CategoryListTextContrast"]
       25 MOVE                             R4 R2
       26 LOADK                            R5 K54 ["AvatarSettingsDarkTheme"]
       27 NEWTABLE                         R6 0 0
       29 MOVE                             R7 R3
       30 CALL                             R4 3 -1
       31 RETURN                           R4 -1
