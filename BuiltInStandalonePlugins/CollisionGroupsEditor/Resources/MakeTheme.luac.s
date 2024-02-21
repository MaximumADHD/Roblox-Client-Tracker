PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["GroupRowHeight"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["ControlsHeaderButtonWidth"]
  GETUPVAL R4 1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K3 ["ScrollingFrame"]
  GETTABLE R3 R4 R5
  GETTABLEKS R2 R3 K2 ["ScrollBarThickness"]
  NEWTABLE R3 32 0
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K4 ["Pane"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K5 ["join"]
  GETUPVAL R7 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K4 ["Pane"]
  GETTABLE R6 R7 R8
  NEWTABLE R7 2 0
  GETUPVAL R10 1
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K4 ["Pane"]
  GETTABLE R9 R10 R11
  GETTABLEKS R8 R9 K6 ["&Box"]
  SETTABLEKS R8 R7 K7 ["&BorderBox"]
  NEWTABLE R8 8 0
  DUPTABLE R9 K9 [{"Color"}]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K10 ["SubBackground"]
  SETTABLEKS R10 R9 K8 ["Color"]
  SETTABLEKS R9 R8 K11 ["Border"]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K12 ["ForegroundMain"]
  SETTABLEKS R9 R8 K13 ["Background"]
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K14 ["Pressed"]
  DUPTABLE R10 K15 [{"Background"}]
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K12 ["ForegroundMain"]
  SETTABLEKS R11 R10 K13 ["Background"]
  SETTABLE R10 R8 R9
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K16 ["Hover"]
  DUPTABLE R10 K15 [{"Background"}]
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K17 ["ButtonHover"]
  SETTABLEKS R11 R10 K13 ["Background"]
  SETTABLE R10 R8 R9
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K18 ["Selected"]
  DUPTABLE R10 K15 [{"Background"}]
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K19 ["ActionFocusBorder"]
  SETTABLEKS R11 R10 K13 ["Background"]
  SETTABLE R10 R8 R9
  SETTABLEKS R8 R7 K20 ["&GroupLabel"]
  CALL R5 2 1
  SETTABLE R5 R3 R4
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K21 ["TextLabel"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K5 ["join"]
  GETUPVAL R7 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K21 ["TextLabel"]
  GETTABLE R6 R7 R8
  NEWTABLE R7 1 0
  NEWTABLE R8 2 0
  LOADN R9 14
  SETTABLEKS R9 R8 K22 ["TextSize"]
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K18 ["Selected"]
  DUPTABLE R10 K24 [{"TextColor"}]
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K25 ["White"]
  LOADN R13 0
  GETTABLE R11 R12 R13
  SETTABLEKS R11 R10 K23 ["TextColor"]
  SETTABLE R10 R8 R9
  SETTABLEKS R8 R7 K20 ["&GroupLabel"]
  CALL R5 2 1
  SETTABLE R5 R3 R4
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K26 ["Button"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K5 ["join"]
  GETUPVAL R7 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K26 ["Button"]
  GETTABLE R6 R7 R8
  DUPTABLE R7 K28 [{"TextWrapped"}]
  LOADB R8 1
  SETTABLEKS R8 R7 K27 ["TextWrapped"]
  CALL R5 2 1
  SETTABLE R5 R3 R4
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K29 ["Table"]
  DUPTABLE R5 K30 [{"Border"}]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K31 ["MainBackground"]
  SETTABLEKS R6 R5 K11 ["Border"]
  SETTABLE R5 R3 R4
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K32 ["GroupButton"]
  NEWTABLE R5 8 0
  GETIMPORT R6 K35 [UDim2.fromOffset]
  LOADN R7 32
  LOADN R8 32
  CALL R6 2 1
  SETTABLEKS R6 R5 K36 ["Size"]
  GETIMPORT R6 K35 [UDim2.fromOffset]
  LOADN R7 26
  LOADN R8 26
  CALL R6 2 1
  SETTABLEKS R6 R5 K37 ["ImageSize"]
  LOADN R6 6
  SETTABLEKS R6 R5 K38 ["Padding"]
  DUPTABLE R6 K41 [{"Image", "HoveredImage"}]
  LOADK R7 K42 ["rbxasset://textures/CollisionGroupsEditor/rename.png"]
  SETTABLEKS R7 R6 K39 ["Image"]
  LOADK R7 K43 ["rbxasset://textures/CollisionGroupsEditor/rename-hover.png"]
  SETTABLEKS R7 R6 K40 ["HoveredImage"]
  SETTABLEKS R6 R5 K44 ["&Rename"]
  DUPTABLE R6 K45 [{"Padding", "ImageSize", "Image", "HoveredImage"}]
  LOADN R7 10
  SETTABLEKS R7 R6 K38 ["Padding"]
  GETIMPORT R7 K35 [UDim2.fromOffset]
  LOADN R8 22
  LOADN R9 22
  CALL R7 2 1
  SETTABLEKS R7 R6 K37 ["ImageSize"]
  LOADK R7 K46 ["rbxasset://textures/CollisionGroupsEditor/assign.png"]
  SETTABLEKS R7 R6 K39 ["Image"]
  LOADK R7 K47 ["rbxasset://textures/CollisionGroupsEditor/assign-hover.png"]
  SETTABLEKS R7 R6 K40 ["HoveredImage"]
  SETTABLEKS R6 R5 K48 ["&SetMembership"]
  DUPTABLE R6 K41 [{"Image", "HoveredImage"}]
  LOADK R7 K49 ["rbxasset://textures/CollisionGroupsEditor/delete.png"]
  SETTABLEKS R7 R6 K39 ["Image"]
  LOADK R7 K50 ["rbxasset://textures/CollisionGroupsEditor/delete-hover.png"]
  SETTABLEKS R7 R6 K40 ["HoveredImage"]
  SETTABLEKS R6 R5 K51 ["&Delete"]
  SETTABLE R5 R3 R4
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K5 ["join"]
  GETUPVAL R6 1
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K3 ["ScrollingFrame"]
  GETTABLE R5 R6 R7
  DUPTABLE R6 K52 [{"ScrollBarThickness"}]
  LOADN R7 0
  SETTABLEKS R7 R6 K2 ["ScrollBarThickness"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K53 ["ScrollingFrameNoBar"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K12 ["ForegroundMain"]
  SETTABLEKS R4 R3 K54 ["TableEntryBackground"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K19 ["ActionFocusBorder"]
  SETTABLEKS R4 R3 K55 ["TableEntrySelected"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K17 ["ButtonHover"]
  SETTABLEKS R4 R3 K56 ["TableEntryHover"]
  GETIMPORT R4 K58 [UDim2.new]
  LOADN R5 0
  MOVE R6 R1
  LOADN R7 0
  LOADN R8 34
  CALL R4 4 1
  SETTABLEKS R4 R3 K59 ["AddGroupInternalButtonSize"]
  SETTABLEKS R2 R3 K2 ["ScrollBarThickness"]
  DUPTABLE R4 K63 [{"GroupSetMembershipButtonWidth", "GroupNameLabelSize", "CursorGroupNameLabelSize"}]
  LOADN R5 36
  SETTABLEKS R5 R4 K60 ["GroupSetMembershipButtonWidth"]
  GETIMPORT R5 K58 [UDim2.new]
  LOADN R6 1
  LOADN R7 220
  LOADN R8 1
  LOADN R9 254
  CALL R5 4 1
  SETTABLEKS R5 R4 K61 ["GroupNameLabelSize"]
  GETIMPORT R5 K58 [UDim2.new]
  LOADN R6 1
  LOADN R7 0
  LOADN R8 1
  LOADN R9 254
  CALL R5 4 1
  SETTABLEKS R5 R4 K62 ["CursorGroupNameLabelSize"]
  SETTABLEKS R4 R3 K64 ["GroupLabelStyle"]
  DUPTABLE R4 K65 [{"Padding"}]
  DUPTABLE R5 K70 [{"Top", "Bottom", "Left", "Right"}]
  LOADN R6 1
  SETTABLEKS R6 R5 K66 ["Top"]
  LOADN R6 1
  SETTABLEKS R6 R5 K67 ["Bottom"]
  LOADN R6 1
  SETTABLEKS R6 R5 K68 ["Left"]
  LOADN R6 1
  SETTABLEKS R6 R5 K69 ["Right"]
  SETTABLEKS R5 R4 K38 ["Padding"]
  SETTABLEKS R4 R3 K71 ["GroupLabelColumn"]
  DUPTABLE R4 K74 [{"Padding", "ScrollingFrameSize", "ScrollingFramePadding"}]
  DUPTABLE R5 K70 [{"Top", "Bottom", "Left", "Right"}]
  LOADN R6 1
  SETTABLEKS R6 R5 K66 ["Top"]
  LOADN R6 1
  SETTABLEKS R6 R5 K67 ["Bottom"]
  LOADN R6 2
  SETTABLEKS R6 R5 K68 ["Left"]
  SETTABLEKS R2 R5 K69 ["Right"]
  SETTABLEKS R5 R4 K38 ["Padding"]
  GETIMPORT R5 K58 [UDim2.new]
  LOADN R6 1
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K76 ["GroupRowWidth"]
  MINUS R8 R9
  ADDK R7 R8 K75 [1]
  LOADN R8 0
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["GroupRowHeight"]
  CALL R5 4 1
  SETTABLEKS R5 R4 K72 ["ScrollingFrameSize"]
  DUPTABLE R5 K70 [{"Top", "Bottom", "Left", "Right"}]
  LOADN R6 0
  SETTABLEKS R6 R5 K66 ["Top"]
  LOADN R6 0
  SETTABLEKS R6 R5 K67 ["Bottom"]
  LOADN R6 0
  SETTABLEKS R6 R5 K68 ["Left"]
  SETTABLEKS R2 R5 K69 ["Right"]
  SETTABLEKS R5 R4 K73 ["ScrollingFramePadding"]
  SETTABLEKS R4 R3 K77 ["TableHeader"]
  DUPTABLE R4 K79 [{"Padding", "LabelPanePadding"}]
  DUPTABLE R5 K70 [{"Top", "Bottom", "Left", "Right"}]
  LOADN R6 1
  SETTABLEKS R6 R5 K66 ["Top"]
  LOADN R6 1
  SETTABLEKS R6 R5 K67 ["Bottom"]
  LOADN R6 2
  SETTABLEKS R6 R5 K68 ["Left"]
  LOADN R6 0
  SETTABLEKS R6 R5 K69 ["Right"]
  SETTABLEKS R5 R4 K38 ["Padding"]
  DUPTABLE R5 K81 [{"Top", "Bottom", "Left", "right"}]
  LOADN R6 0
  SETTABLEKS R6 R5 K66 ["Top"]
  LOADN R6 0
  SETTABLEKS R6 R5 K67 ["Bottom"]
  LOADN R6 12
  SETTABLEKS R6 R5 K68 ["Left"]
  LOADN R6 0
  SETTABLEKS R6 R5 K80 ["right"]
  SETTABLEKS R5 R4 K78 ["LabelPanePadding"]
  SETTABLEKS R4 R3 K82 ["ListHeader"]
  DUPTABLE R4 K86 [{"MiddlePaneSize", "GridFrameSize", "ListFrameSize"}]
  GETIMPORT R5 K58 [UDim2.new]
  LOADN R6 1
  LOADN R7 0
  LOADN R8 1
  MINUS R11 R0
  MULK R10 R11 K88 [2]
  SUBK R9 R10 K87 [12]
  CALL R5 4 1
  SETTABLEKS R5 R4 K83 ["MiddlePaneSize"]
  GETIMPORT R5 K58 [UDim2.new]
  LOADN R6 1
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K76 ["GroupRowWidth"]
  MINUS R7 R8
  LOADN R8 1
  LOADN R9 0
  CALL R5 4 1
  SETTABLEKS R5 R4 K84 ["GridFrameSize"]
  GETIMPORT R5 K58 [UDim2.new]
  LOADN R6 1
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K76 ["GroupRowWidth"]
  MINUS R8 R9
  SUB R7 R8 R2
  LOADN R8 1
  LOADN R9 0
  CALL R5 4 1
  SETTABLEKS R5 R4 K85 ["ListFrameSize"]
  SETTABLEKS R4 R3 K89 ["MainView"]
  DUPTABLE R4 K92 [{"MainPanePadding", "UnselectedViewPadding"}]
  DUPTABLE R5 K70 [{"Top", "Bottom", "Left", "Right"}]
  LOADN R6 2
  SETTABLEKS R6 R5 K66 ["Top"]
  LOADN R6 5
  SETTABLEKS R6 R5 K67 ["Bottom"]
  LOADN R6 4
  SETTABLEKS R6 R5 K68 ["Left"]
  LOADN R6 4
  SETTABLEKS R6 R5 K69 ["Right"]
  SETTABLEKS R5 R4 K90 ["MainPanePadding"]
  SETTABLEKS R2 R4 K91 ["UnselectedViewPadding"]
  SETTABLEKS R4 R3 K93 ["GroupListView"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K5 ["join"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K94 ["TableRow"]
  DUPTABLE R6 K100 [{"Border", "BackgroundOdd", "BackgroundEven", "CheckboxUncheckedImage", "CheckboxCheckedImage", "NoCheckboxPanelColor"}]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K10 ["SubBackground"]
  SETTABLEKS R7 R6 K11 ["Border"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K31 ["MainBackground"]
  SETTABLEKS R7 R6 K95 ["BackgroundOdd"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K101 ["SubBackground2"]
  SETTABLEKS R7 R6 K96 ["BackgroundEven"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K97 ["CheckboxUncheckedImage"]
  SETTABLEKS R7 R6 K97 ["CheckboxUncheckedImage"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K98 ["CheckboxCheckedImage"]
  SETTABLEKS R7 R6 K98 ["CheckboxCheckedImage"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K12 ["ForegroundMain"]
  SETTABLEKS R7 R6 K99 ["NoCheckboxPanelColor"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K102 ["CollisionCheckbox"]
  DUPTABLE R4 K108 [{"Size", "Padding", "Spacing", "ButtonWidth", "ButtonHeight", "GroupButtonsPaneSize", "TextButtonPane"}]
  GETIMPORT R5 K58 [UDim2.new]
  LOADN R6 1
  LOADN R7 0
  LOADN R8 0
  ADDK R9 R0 K87 [12]
  CALL R5 4 1
  SETTABLEKS R5 R4 K36 ["Size"]
  LOADN R5 6
  SETTABLEKS R5 R4 K38 ["Padding"]
  LOADN R5 6
  SETTABLEKS R5 R4 K103 ["Spacing"]
  SETTABLEKS R1 R4 K104 ["ButtonWidth"]
  LOADN R5 34
  SETTABLEKS R5 R4 K105 ["ButtonHeight"]
  GETIMPORT R5 K58 [UDim2.new]
  LOADN R6 0
  LOADN R7 63
  LOADN R8 1
  LOADN R9 0
  CALL R5 4 1
  SETTABLEKS R5 R4 K106 ["GroupButtonsPaneSize"]
  DUPTABLE R5 K109 [{"Size", "Padding", "Spacing"}]
  GETIMPORT R6 K58 [UDim2.new]
  LOADN R7 1
  LOADN R8 190
  LOADN R9 1
  LOADN R10 0
  CALL R6 4 1
  SETTABLEKS R6 R5 K36 ["Size"]
  LOADN R6 0
  SETTABLEKS R6 R5 K38 ["Padding"]
  LOADN R6 6
  SETTABLEKS R6 R5 K103 ["Spacing"]
  SETTABLEKS R5 R4 K107 ["TextButtonPane"]
  SETTABLEKS R4 R3 K110 ["ControlsHeaderRow"]
  DUPTABLE R4 K113 [{"DialogMinimumSize", "Padding", "Spacing", "WarningTextSize"}]
  GETIMPORT R5 K115 [Vector2.new]
  LOADN R6 194
  LOADN R7 200
  CALL R5 2 1
  SETTABLEKS R5 R4 K111 ["DialogMinimumSize"]
  LOADN R5 5
  SETTABLEKS R5 R4 K38 ["Padding"]
  LOADN R5 5
  SETTABLEKS R5 R4 K103 ["Spacing"]
  GETIMPORT R5 K58 [UDim2.new]
  LOADN R6 1
  LOADN R7 0
  LOADN R8 1
  LOADN R9 196
  CALL R5 4 1
  SETTABLEKS R5 R4 K112 ["WarningTextSize"]
  SETTABLEKS R4 R3 K116 ["GroupRenameDialog"]
  DUPTABLE R4 K117 [{"DialogMinimumSize"}]
  GETIMPORT R5 K115 [Vector2.new]
  LOADN R6 194
  LOADN R7 100
  CALL R5 2 1
  SETTABLEKS R5 R4 K111 ["DialogMinimumSize"]
  SETTABLEKS R4 R3 K118 ["CannotConfigureSelectionDialog"]
  DUPTABLE R4 K125 [{"CornerRadius", "StrokeColor", "BackgroundColor", "BackgroundColorHoverDarkerMultiplier", "Padding", "LinePadding", "LineSpacing"}]
  GETIMPORT R5 K127 [UDim.new]
  LOADN R6 0
  LOADN R7 4
  CALL R5 2 1
  SETTABLEKS R5 R4 K119 ["CornerRadius"]
  GETIMPORT R5 K129 [Color3.new]
  LOADN R6 1
  LOADN R7 0
  LOADN R8 0
  CALL R5 3 1
  SETTABLEKS R5 R4 K120 ["StrokeColor"]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K31 ["MainBackground"]
  SETTABLEKS R5 R4 K121 ["BackgroundColor"]
  LOADK R5 K130 [0.15]
  SETTABLEKS R5 R4 K122 ["BackgroundColorHoverDarkerMultiplier"]
  DUPTABLE R5 K131 [{"Top", "Left", "Right", "Bottom"}]
  LOADN R6 2
  SETTABLEKS R6 R5 K66 ["Top"]
  LOADN R6 4
  SETTABLEKS R6 R5 K68 ["Left"]
  LOADN R6 4
  SETTABLEKS R6 R5 K69 ["Right"]
  LOADN R6 6
  SETTABLEKS R6 R5 K67 ["Bottom"]
  SETTABLEKS R5 R4 K38 ["Padding"]
  LOADN R5 4
  SETTABLEKS R5 R4 K123 ["LinePadding"]
  LOADN R5 4
  SETTABLEKS R5 R4 K124 ["LineSpacing"]
  SETTABLEKS R4 R3 K132 ["CGEAlert"]
  RETURN R3 1

PROTO_1:
  LOADNIL R1
  JUMPIFNOT R0 [+6]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["mock"]
  CALL R2 0 1
  MOVE R1 R2
  JUMP [+5]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["new"]
  CALL R2 0 1
  MOVE R1 R2
  GETUPVAL R4 1
  CALL R4 0 1
  NAMECALL R2 R1 K2 ["extend"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Dash"]
  CALL R2 1 1
  GETTABLEKS R4 R1 K8 ["Util"]
  GETTABLEKS R3 R4 K9 ["StyleModifier"]
  GETTABLEKS R4 R1 K10 ["Style"]
  GETTABLEKS R6 R4 K11 ["Themes"]
  GETTABLEKS R5 R6 K12 ["BaseTheme"]
  GETTABLEKS R7 R4 K11 ["Themes"]
  GETTABLEKS R6 R7 K13 ["StudioTheme"]
  GETTABLEKS R7 R4 K14 ["ColorSystem"]
  GETTABLEKS R8 R4 K15 ["StyleKey"]
  GETTABLEKS R9 R4 K16 ["ComponentSymbols"]
  GETIMPORT R10 K4 [require]
  GETTABLEKS R12 R0 K17 ["Plugin"]
  GETTABLEKS R11 R12 K18 ["Constants"]
  CALL R10 1 1
  LOADK R13 K19 ["GroupButton"]
  NAMECALL R11 R9 K20 ["add"]
  CALL R11 2 0
  DUPCLOSURE R11 K21 [PROTO_0]
  CAPTURE VAL R10
  CAPTURE VAL R5
  CAPTURE VAL R9
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R7
  DUPCLOSURE R12 K22 [PROTO_1]
  CAPTURE VAL R6
  CAPTURE VAL R11
  RETURN R12 1
