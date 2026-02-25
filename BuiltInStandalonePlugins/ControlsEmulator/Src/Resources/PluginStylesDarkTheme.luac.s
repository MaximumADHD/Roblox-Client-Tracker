MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ControlsEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R3 K9 ["createStyleSheet"]
       18 NEWTABLE                         R3 0 0
       20 LOADK                            R4 K10 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/ArrowRight.png"]
       21 SETTABLEKS                       R4 R3 K11 ["RightArrow"]
       23 LOADK                            R4 K12 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/ArrowDown.png"]
       24 SETTABLEKS                       R4 R3 K13 ["DownArrow"]
       26 LOADK                            R4 K14 ["rbxasset://studio_svg_textures/Shared/Alerts/Dark/Large/Warning.png"]
       27 SETTABLEKS                       R4 R3 K15 ["WarningLargeImage"]
       29 LOADK                            R4 K16 ["rbxasset://textures/ControlsEmulator/Reset_Dark.png"]
       30 SETTABLEKS                       R4 R3 K17 ["ResetIcon"]
       32 GETIMPORT                        R4 K20 [Color3.new]
       34 LOADK                            R5 K21 [0.07059]
       35 LOADK                            R6 K21 [0.07059]
       36 LOADK                            R7 K22 [0.08235]
       37 CALL                             R4 3 1
       38 SETTABLEKS                       R4 R3 K23 ["Color_Extended_Surface_Surface_0"]
       40 GETIMPORT                        R4 K20 [Color3.new]
       42 LOADK                            R5 K24 [0.09804]
       43 LOADK                            R6 K25 [0.10196]
       44 LOADK                            R7 K26 [0.12157]
       45 CALL                             R4 3 1
       46 SETTABLEKS                       R4 R3 K27 ["Color_Extended_Surface_Surface_100"]
       48 LOADK                            R4 K28 ["$Gray60"]
       49 SETTABLEKS                       R4 R3 K29 ["ControlInactiveColor"]
       51 LOADK                            R4 K30 ["$Gray50"]
       52 SETTABLEKS                       R4 R3 K31 ["ControlHoverColor"]
       54 GETIMPORT                        R4 K33 [Color3.fromHex]
       56 LOADK                            R5 K34 ["#D5D7DD"]
       57 CALL                             R4 1 1
       58 SETTABLEKS                       R4 R3 K35 ["ControlActiveBackgroundColor"]
       60 GETIMPORT                        R4 K33 [Color3.fromHex]
       62 LOADK                            R5 K36 ["#2BB1FF"]
       63 CALL                             R4 1 1
       64 SETTABLEKS                       R4 R3 K37 ["ControlActiveColor"]
       66 GETIMPORT                        R4 K33 [Color3.fromHex]
       68 LOADK                            R5 K38 ["#008BDB"]
       69 CALL                             R4 1 1
       70 SETTABLEKS                       R4 R3 K39 ["ColorPrimaryMain"]
       72 GETIMPORT                        R4 K33 [Color3.fromHex]
       74 LOADK                            R5 K40 ["#565656"]
       75 CALL                             R4 1 1
       76 SETTABLEKS                       R4 R3 K41 ["ColorSecondaryMain"]
       78 GETIMPORT                        R4 K33 [Color3.fromHex]
       80 LOADK                            R5 K42 ["#5A5C63"]
       81 CALL                             R4 1 1
       82 SETTABLEKS                       R4 R3 K43 ["ContentDefault"]
       84 GETIMPORT                        R4 K33 [Color3.fromHex]
       86 LOADK                            R5 K44 ["#7E8395"]
       87 CALL                             R4 1 1
       88 SETTABLEKS                       R4 R3 K45 ["ControlActiveSecondaryColor"]
       90 GETTABLEKS                       R4 R3 K23 ["Color_Extended_Surface_Surface_0"]
       92 SETTABLEKS                       R4 R3 K46 ["HeaderBackgroundColor"]
       94 GETTABLEKS                       R4 R3 K23 ["Color_Extended_Surface_Surface_0"]
       96 SETTABLEKS                       R4 R3 K47 ["BlueprintBackgroundColor"]
       98 GETTABLEKS                       R4 R3 K43 ["ContentDefault"]
      100 SETTABLEKS                       R4 R3 K48 ["BlueprintArrowColor"]
      102 LOADK                            R4 K49 ["$TextPrimary"]
      103 SETTABLEKS                       R4 R3 K50 ["BlueprintLabelsColor"]
      105 GETIMPORT                        R4 K33 [Color3.fromHex]
      107 LOADK                            R5 K51 ["#2F3139"]
      108 CALL                             R4 1 1
      109 SETTABLEKS                       R4 R3 K52 ["DividerColor"]
      111 GETIMPORT                        R4 K33 [Color3.fromHex]
      113 LOADK                            R5 K53 ["#646464"]
      114 CALL                             R4 1 1
      115 SETTABLEKS                       R4 R3 K54 ["MappingLabelHover"]
      117 GETIMPORT                        R4 K33 [Color3.fromHex]
      119 LOADK                            R5 K55 ["#353535"]
      120 CALL                             R4 1 1
      121 SETTABLEKS                       R4 R3 K56 ["MappingLabel"]
      123 LOADK                            R4 K57 ["$Gray100"]
      124 SETTABLEKS                       R4 R3 K58 ["SeparatorColor"]
      126 LOADK                            R4 K59 ["$Gray90"]
      127 SETTABLEKS                       R4 R3 K60 ["InfoTooltipBackgroundColor"]
      129 LOADK                            R4 K61 ["$PrimaryMain"]
      130 SETTABLEKS                       R4 R3 K62 ["PrimaryButtonBackgroundColor"]
      132 LOADK                            R4 K63 ["$PrimaryHoverBackground"]
      133 SETTABLEKS                       R4 R3 K64 ["PrimaryButtonHoverBackgroundColor"]
      135 LOADK                            R4 K65 ["$Gray70"]
      136 SETTABLEKS                       R4 R3 K66 ["SecondaryButtonBackgroundColor"]
      138 LOADK                            R4 K28 ["$Gray60"]
      139 SETTABLEKS                       R4 R3 K67 ["SecondaryButtonHoverBackgroundColor"]
      141 LOADK                            R4 K68 ["$White"]
      142 SETTABLEKS                       R4 R3 K69 ["ButtonTextColor"]
      144 LOADK                            R4 K68 ["$White"]
      145 SETTABLEKS                       R4 R3 K70 ["ResetAllToolTipBackgroundColor"]
      147 LOADK                            R4 K71 ["$Black"]
      148 SETTABLEKS                       R4 R3 K72 ["ResetAllToolTipTextColor"]
      150 GETTABLEKS                       R4 R3 K23 ["Color_Extended_Surface_Surface_0"]
      152 SETTABLEKS                       R4 R3 K73 ["ResetAllToolTipBorderColor"]
      154 MOVE                             R4 R2
      155 LOADK                            R5 K74 ["ControlsEmulatorDarkTheme"]
      156 NEWTABLE                         R6 0 0
      158 MOVE                             R7 R3
      159 CALL                             R4 3 -1
      160 RETURN                           R4 -1
