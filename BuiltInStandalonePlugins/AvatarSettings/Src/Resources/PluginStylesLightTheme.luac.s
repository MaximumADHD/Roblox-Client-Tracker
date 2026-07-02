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
       18 DUPTABLE                         R3 K49 [{["CategoryListTextContrast"], ["PresetInfoImage"] = "rbxasset://studio_svg_textures/Lua/AvatarSettings/Light/Standard/info-light@2x.png", ["PresetTooltipCheckImage"] = "rbxasset://studio_svg_textures/Lua/AvatarSettings/Light/Standard/Check-LightMode@3x.png", ["PresetTooltipXImage"] = "rbxasset://studio_svg_textures/Lua/AvatarSettings/Light/Standard/X-LightMode@3x.png", ["PreviewTooltipSettingVisibleImage"] = "rbxasset://studio_svg_textures/Lua/AvatarSettings/Light/Standard/eye-slash-fill-light@3x.png", ["PreviewTooltipSettingInvisibleImage"] = "rbxasset://studio_svg_textures/Lua/AvatarSettings/Light/Standard/eye-fill-light@3x.png", ["PreviewTooltipPlayImage"] = "rbxasset://studio_svg_textures/Lua/AvatarSettings/Light/Standard/play-large-light@3x.png", ["PreviewTooltipPlayDisabledImage"] = "rbxasset://studio_svg_textures/Lua/AvatarSettings/Light/Standard/play-large-disabled-light@3x.png", ["PreviewTooltipAddAvatarImage"] = "rbxasset://studio_svg_textures/Lua/AvatarSettings/Light/Standard/plus-heavy-light@3x.png", ["PreviewTooltipResetAvatarsToCameraImage"] = "rbxasset://studio_svg_textures/Lua/AvatarSettings/Light/Standard/reset-to-mannequin-light@3x.png", ["GeneralCategoryImage"] = "rbxasset://studio_svg_textures/Lua/AvatarSettings/Light/Standard/settings-light@3x.png", ["BodyCategoryImage"] = "rbxasset://studio_svg_textures/Lua/AvatarSettings/Light/Standard/avatar-light@3x.png", ["MovementCategoryImage"] = "rbxasset://studio_svg_textures/Lua/AvatarSettings/Light/Standard/animation-light@3x.png", ["AccessoriesCategoryImage"] = "rbxasset://studio_svg_textures/Lua/AvatarSettings/Light/Standard/accessories-light@3x.png", ["ClothingCategoryImage"] = "rbxasset://studio_svg_textures/Lua/AvatarSettings/Light/Standard/clothing-light@3x.png", ["CollapseSidebarImage"] = "rbxasset://studio_svg_textures/Lua/AvatarSettings/Light/Standard/collapsesidebar-light@3x.png", ["ExpandSidebarImage"] = "rbxasset://studio_svg_textures/Lua/AvatarSettings/Light/Standard/expandsidebar-light@3x.png", ["AvatarTypeDropdownToggleImage"] = "rbxasset://studio_svg_textures/Lua/AvatarSettings/Light/Standard/more-options-light@3x.png", ["PlayerChoicePresetImage"] = "rbxasset://textures/AvatarSettings/Light/player-choice_lightx1.png", ["ConsistentPresetImage"] = "rbxasset://textures/AvatarSettings/Light/consistent-lightx1.png"}]
       19 GETIMPORT                        R4 K52 [Color3.fromHex]
       21 LOADK                            R5 K53 ["3B3B3b"]
       22 CALL                             R4 1 1
       23 SETTABLEKS                       R4 R3 K10 ["CategoryListTextContrast"]
       25 MOVE                             R4 R2
       26 LOADK                            R5 K54 ["AvatarSettingsLightTheme"]
       27 NEWTABLE                         R6 0 0
       29 MOVE                             R7 R3
       30 CALL                             R4 3 -1
       31 RETURN                           R4 -1
