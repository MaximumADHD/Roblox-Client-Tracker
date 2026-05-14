MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ControlsEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleSheet"]
       18 NEWTABLE                         R3 0 0
       20 LOADK                            R4 K10 ["rbxasset://studio_svg_textures/Shared/Navigation/Light/Standard/ArrowRight.png"]
       21 SETTABLEKS                       R4 R3 K11 ["RightArrow"]
       23 LOADK                            R4 K12 ["rbxasset://studio_svg_textures/Shared/Navigation/Light/Standard/ArrowDown.png"]
       24 SETTABLEKS                       R4 R3 K13 ["DownArrow"]
       26 LOADK                            R4 K14 ["rbxasset://studio_svg_textures/Shared/Alerts/Light/Large/Warning.png"]
       27 SETTABLEKS                       R4 R3 K15 ["WarningLargeImage"]
       29 LOADK                            R4 K16 ["rbxasset://textures/ControlsEmulator/Reset_Light.png"]
       30 SETTABLEKS                       R4 R3 K17 ["ResetIcon"]
       32 GETIMPORT                        R4 K20 [Color3.new]
       34 LOADN                            R5 1
       35 LOADN                            R6 1
       36 LOADN                            R7 1
       37 CALL                             R4 3 1
       38 SETTABLEKS                       R4 R3 K21 ["Color_Extended_Surface_Surface_0"]
       40 GETIMPORT                        R4 K20 [Color3.new]
       42 LOADK                            R5 K22 [0.95686]
       43 LOADK                            R6 K22 [0.95686]
       44 LOADK                            R7 K23 [0.96471]
       45 CALL                             R4 3 1
       46 SETTABLEKS                       R4 R3 K24 ["Color_Extended_Surface_Surface_100"]
       48 LOADK                            R4 K25 ["$Gray50"]
       49 SETTABLEKS                       R4 R3 K26 ["ControlInactiveColor"]
       51 LOADK                            R4 K27 ["$Gray60"]
       52 SETTABLEKS                       R4 R3 K28 ["ControlHoverColor"]
       54 GETIMPORT                        R4 K30 [Color3.fromHex]
       56 LOADK                            R5 K31 ["#494D5A"]
       57 CALL                             R4 1 1
       58 SETTABLEKS                       R4 R3 K32 ["ControlActiveBackgroundColor"]
       60 GETIMPORT                        R4 K30 [Color3.fromHex]
       62 LOADK                            R5 K33 ["#335FFF"]
       63 CALL                             R4 1 1
       64 SETTABLEKS                       R4 R3 K34 ["ControlActiveColor"]
       66 GETIMPORT                        R4 K30 [Color3.fromHex]
       68 LOADK                            R5 K35 ["#008BDB"]
       69 CALL                             R4 1 1
       70 SETTABLEKS                       R4 R3 K36 ["ColorPrimaryMain"]
       72 GETIMPORT                        R4 K30 [Color3.fromHex]
       74 LOADK                            R5 K37 ["#565656"]
       75 CALL                             R4 1 1
       76 SETTABLEKS                       R4 R3 K38 ["ColorSecondaryMain"]
       78 GETIMPORT                        R4 K30 [Color3.fromHex]
       80 LOADK                            R5 K39 ["#B1B3B9"]
       81 CALL                             R4 1 1
       82 SETTABLEKS                       R4 R3 K40 ["ContentDefault"]
       84 GETIMPORT                        R4 K30 [Color3.fromHex]
       86 LOADK                            R5 K41 ["#7E8395"]
       87 CALL                             R4 1 1
       88 SETTABLEKS                       R4 R3 K42 ["ControlActiveSecondaryColor"]
       90 GETTABLEKS                       R4 R3 K21 ["Color_Extended_Surface_Surface_0"]
       92 SETTABLEKS                       R4 R3 K43 ["HeaderBackgroundColor"]
       94 GETTABLEKS                       R4 R3 K21 ["Color_Extended_Surface_Surface_0"]
       96 SETTABLEKS                       R4 R3 K44 ["BlueprintBackgroundColor"]
       98 GETTABLEKS                       R4 R3 K40 ["ContentDefault"]
      100 SETTABLEKS                       R4 R3 K45 ["BlueprintArrowColor"]
      102 LOADK                            R4 K46 ["$TextPrimary"]
      103 SETTABLEKS                       R4 R3 K47 ["BlueprintLabelsColor"]
      105 GETIMPORT                        R4 K30 [Color3.fromHex]
      107 LOADK                            R5 K48 ["#DDDEE3"]
      108 CALL                             R4 1 1
      109 SETTABLEKS                       R4 R3 K49 ["DividerColor"]
      111 GETIMPORT                        R4 K30 [Color3.fromHex]
      113 LOADK                            R5 K50 ["#DCDCDC"]
      114 CALL                             R4 1 1
      115 SETTABLEKS                       R4 R3 K51 ["MappingLabelHover"]
      117 GETIMPORT                        R4 K30 [Color3.fromHex]
      119 LOADK                            R5 K52 ["#CACACA"]
      120 CALL                             R4 1 1
      121 SETTABLEKS                       R4 R3 K53 ["MappingLabel"]
      123 LOADK                            R4 K54 ["$Gray10"]
      124 SETTABLEKS                       R4 R3 K55 ["SeparatorColor"]
      126 LOADK                            R4 K54 ["$Gray10"]
      127 SETTABLEKS                       R4 R3 K56 ["InfoTooltipBackgroundColor"]
      129 LOADK                            R4 K57 ["$PrimaryMain"]
      130 SETTABLEKS                       R4 R3 K58 ["PrimaryButtonBackgroundColor"]
      132 LOADK                            R4 K59 ["$PrimaryHoverBackground"]
      133 SETTABLEKS                       R4 R3 K60 ["PrimaryButtonHoverBackgroundColor"]
      135 LOADK                            R4 K61 ["$Gray70"]
      136 SETTABLEKS                       R4 R3 K62 ["SecondaryButtonBackgroundColor"]
      138 LOADK                            R4 K27 ["$Gray60"]
      139 SETTABLEKS                       R4 R3 K63 ["SecondaryButtonHoverBackgroundColor"]
      141 LOADK                            R4 K64 ["$White"]
      142 SETTABLEKS                       R4 R3 K65 ["ButtonTextColor"]
      144 LOADK                            R4 K64 ["$White"]
      145 SETTABLEKS                       R4 R3 K66 ["ResetAllToolTipBackgroundColor"]
      147 LOADK                            R4 K67 ["$Black"]
      148 SETTABLEKS                       R4 R3 K68 ["ResetAllToolTipTextColor"]
      150 LOADK                            R4 K25 ["$Gray50"]
      151 SETTABLEKS                       R4 R3 K69 ["ResetAllToolTipBorderColor"]
      153 MOVE                             R4 R2
      154 LOADK                            R5 K70 ["ControlsEmulatorLightTheme"]
      155 NEWTABLE                         R6 0 0
      157 MOVE                             R7 R3
      158 CALL                             R4 3 -1
      159 RETURN                           R4 -1
