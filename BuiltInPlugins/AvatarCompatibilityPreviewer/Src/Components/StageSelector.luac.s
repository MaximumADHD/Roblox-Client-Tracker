PROTO_0:
  GETUPVAL R1 0
  LOADK R3 K0 ["StageSelector"]
  NAMECALL R1 R1 K1 ["use"]
  CALL R1 2 1
  GETUPVAL R2 1
  NAMECALL R2 R2 K1 ["use"]
  CALL R2 1 1
  GETTABLEKS R4 R0 K2 ["Enabled"]
  JUMPIFNOTEQKB R4 FALSE [+2]
  LOADB R3 0 +1
  LOADB R3 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K3 ["createElement"]
  GETUPVAL R5 3
  DUPTABLE R6 K18 [{"AnchorPoint", "BackgroundColor", "BackgroundStyle", "IconColor", "IconScaleType", "IconSize", "LeftIcon", "LayoutOrder", "Size", "Padding", "Position", "TooltipStyle", "TooltipText", "OnClick"}]
  GETTABLEKS R7 R0 K4 ["AnchorPoint"]
  SETTABLEKS R7 R6 K4 ["AnchorPoint"]
  GETTABLEKS R8 R0 K19 ["IsSelected"]
  JUMPIFNOT R8 [+3]
  GETTABLEKS R7 R1 K20 ["ButtonSelectedBackgroundColor"]
  JUMP [+2]
  GETTABLEKS R7 R1 K5 ["BackgroundColor"]
  SETTABLEKS R7 R6 K5 ["BackgroundColor"]
  LOADK R7 K21 ["SubtleBox"]
  SETTABLEKS R7 R6 K6 ["BackgroundStyle"]
  JUMPIFNOT R3 [+3]
  GETTABLEKS R7 R1 K7 ["IconColor"]
  JUMP [+2]
  GETTABLEKS R7 R1 K22 ["IconColorDisabled"]
  SETTABLEKS R7 R6 K7 ["IconColor"]
  GETIMPORT R7 K26 [Enum.ScaleType.Stretch]
  SETTABLEKS R7 R6 K8 ["IconScaleType"]
  GETTABLEKS R7 R1 K9 ["IconSize"]
  SETTABLEKS R7 R6 K9 ["IconSize"]
  GETTABLEKS R7 R0 K27 ["Icon"]
  SETTABLEKS R7 R6 K10 ["LeftIcon"]
  GETTABLEKS R7 R0 K11 ["LayoutOrder"]
  SETTABLEKS R7 R6 K11 ["LayoutOrder"]
  GETIMPORT R7 K30 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  GETTABLEKS R11 R1 K31 ["ButtonHeight"]
  CALL R7 4 1
  SETTABLEKS R7 R6 K12 ["Size"]
  LOADN R7 0
  SETTABLEKS R7 R6 K13 ["Padding"]
  GETTABLEKS R7 R0 K14 ["Position"]
  SETTABLEKS R7 R6 K14 ["Position"]
  LOADK R7 K32 ["NoDelay"]
  SETTABLEKS R7 R6 K15 ["TooltipStyle"]
  GETTABLEKS R7 R0 K33 ["Tooltip"]
  JUMPIF R7 [+6]
  LOADK R9 K34 ["Stages"]
  GETTABLEKS R10 R0 K35 ["StageText"]
  NAMECALL R7 R2 K36 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K16 ["TooltipText"]
  JUMPIFNOT R3 [+3]
  GETTABLEKS R7 R0 K17 ["OnClick"]
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K17 ["OnClick"]
  CALL R4 2 1
  JUMPIF R3 [+27]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K3 ["createElement"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K37 ["Fragment"]
  NEWTABLE R7 0 0
  NEWTABLE R8 2 0
  SETTABLEKS R4 R8 K38 ["IconButton"]
  LOADK R10 K39 ["%*_Disabled"]
  GETTABLEKS R12 R0 K35 ["StageText"]
  NAMECALL R10 R10 K40 ["format"]
  CALL R10 2 1
  MOVE R9 R10
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K3 ["createElement"]
  LOADK R11 K41 ["Folder"]
  CALL R10 1 1
  SETTABLE R10 R8 R9
  CALL R5 3 -1
  RETURN R5 -1
  RETURN R4 1

PROTO_1:
  GETUPVAL R0 0
  LOADK R2 K0 ["setStage"]
  LOADK R3 K1 ["CheckBody"]
  NAMECALL R0 R0 K2 ["report"]
  CALL R0 3 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K3 ["SetStage"]
  LOADK R1 K1 ["CheckBody"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  LOADK R2 K0 ["setStage"]
  LOADK R3 K1 ["CheckFace"]
  NAMECALL R0 R0 K2 ["report"]
  CALL R0 3 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K3 ["SetStage"]
  LOADK R1 K1 ["CheckFace"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  LOADK R2 K0 ["testInExperience"]
  NAMECALL R0 R0 K1 ["report"]
  CALL R0 2 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K2 ["test"]
  GETUPVAL R1 2
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K3 ["PreviewDummy"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K4 ["Avatar"]
  CALL R0 3 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["enable"]
  CALL R0 0 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+4]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["toggle"]
  CALL R0 0 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  LOADK R2 K0 ["publish"]
  GETUPVAL R3 1
  NAMECALL R0 R0 K1 ["report"]
  CALL R0 3 0
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K2 ["enable"]
  CALL R0 0 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  LOADK R3 K0 ["StageSelector"]
  NAMECALL R1 R1 K1 ["use"]
  CALL R1 2 1
  GETUPVAL R2 1
  NAMECALL R2 R2 K1 ["use"]
  CALL R2 1 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["new"]
  CALL R3 0 1
  GETUPVAL R4 3
  NAMECALL R4 R4 K1 ["use"]
  CALL R4 1 1
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K3 ["useContext"]
  GETUPVAL R6 5
  CALL R5 1 1
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K3 ["useContext"]
  GETUPVAL R8 6
  GETTABLEKS R7 R8 K4 ["Context"]
  CALL R6 1 1
  GETUPVAL R7 7
  LOADB R8 0
  CALL R7 1 1
  GETUPVAL R9 8
  CALL R9 0 1
  JUMPIFNOT R9 [+4]
  GETUPVAL R8 7
  LOADB R9 0
  CALL R8 1 1
  JUMP [+1]
  LOADNIL R8
  GETUPVAL R9 9
  CALL R9 0 1
  JUMPIFNOT R9 [+245]
  GETTABLEKS R9 R0 K5 ["type"]
  JUMPIFNOTEQKS R9 K6 ["autosetup"] [+242]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K7 ["createElement"]
  GETUPVAL R10 10
  DUPTABLE R11 K13 [{"BackgroundColor", "BorderColor3", "BorderSizePixel", "Size", "ZIndex"}]
  GETTABLEKS R12 R1 K8 ["BackgroundColor"]
  SETTABLEKS R12 R11 K8 ["BackgroundColor"]
  GETTABLEKS R12 R1 K14 ["BorderColor"]
  SETTABLEKS R12 R11 K9 ["BorderColor3"]
  LOADN R12 1
  SETTABLEKS R12 R11 K10 ["BorderSizePixel"]
  GETIMPORT R12 K16 [UDim2.new]
  LOADN R13 0
  GETTABLEKS R14 R1 K17 ["Width"]
  LOADN R15 1
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K11 ["Size"]
  LOADN R12 3
  SETTABLEKS R12 R11 K12 ["ZIndex"]
  DUPTABLE R12 K21 [{"Contents", "SettingsButton", "SettingsMenu"}]
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K7 ["createElement"]
  GETUPVAL R14 10
  DUPTABLE R15 K24 [{"Layout", "VerticalAlignment"}]
  GETIMPORT R16 K28 [Enum.FillDirection.Vertical]
  SETTABLEKS R16 R15 K22 ["Layout"]
  GETIMPORT R16 K30 [Enum.VerticalAlignment.Top]
  SETTABLEKS R16 R15 K23 ["VerticalAlignment"]
  DUPTABLE R16 K35 [{"CheckBody", "CheckFace", "Test", "Publish"}]
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K7 ["createElement"]
  GETUPVAL R18 11
  DUPTABLE R19 K41 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "Enabled"}]
  NAMECALL R20 R3 K42 ["getNextOrder"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K36 ["LayoutOrder"]
  LOADK R20 K43 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/check_body.png"]
  SETTABLEKS R20 R19 K37 ["Icon"]
  LOADB R20 0
  SETTABLEKS R20 R19 K38 ["IsSelected"]
  LOADK R20 K31 ["CheckBody"]
  SETTABLEKS R20 R19 K39 ["StageText"]
  LOADB R20 0
  SETTABLEKS R20 R19 K40 ["Enabled"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K31 ["CheckBody"]
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K7 ["createElement"]
  GETUPVAL R18 11
  DUPTABLE R19 K41 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "Enabled"}]
  NAMECALL R20 R3 K42 ["getNextOrder"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K36 ["LayoutOrder"]
  LOADK R20 K44 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/check_face.png"]
  SETTABLEKS R20 R19 K37 ["Icon"]
  LOADB R20 0
  SETTABLEKS R20 R19 K38 ["IsSelected"]
  LOADK R20 K32 ["CheckFace"]
  SETTABLEKS R20 R19 K39 ["StageText"]
  LOADB R20 0
  SETTABLEKS R20 R19 K40 ["Enabled"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K32 ["CheckFace"]
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K7 ["createElement"]
  GETUPVAL R18 11
  DUPTABLE R19 K41 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "Enabled"}]
  NAMECALL R20 R3 K42 ["getNextOrder"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K36 ["LayoutOrder"]
  LOADK R20 K45 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/test.png"]
  SETTABLEKS R20 R19 K37 ["Icon"]
  LOADB R20 0
  SETTABLEKS R20 R19 K38 ["IsSelected"]
  LOADK R20 K33 ["Test"]
  SETTABLEKS R20 R19 K39 ["StageText"]
  LOADB R20 0
  SETTABLEKS R20 R19 K40 ["Enabled"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K33 ["Test"]
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K7 ["createElement"]
  GETUPVAL R18 11
  DUPTABLE R19 K47 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "Tooltip", "Enabled"}]
  NAMECALL R20 R3 K42 ["getNextOrder"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K36 ["LayoutOrder"]
  LOADK R20 K48 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/publish.png"]
  SETTABLEKS R20 R19 K37 ["Icon"]
  LOADB R20 0
  SETTABLEKS R20 R19 K38 ["IsSelected"]
  LOADK R20 K34 ["Publish"]
  SETTABLEKS R20 R19 K39 ["StageText"]
  GETTABLEKS R21 R6 K49 ["canUploadBundles"]
  JUMPIFEQKNIL R21 [+33]
  GETTABLEKS R22 R6 K49 ["canUploadBundles"]
  GETTABLEKS R21 R22 K5 ["type"]
  JUMPIFNOTEQKS R21 K50 ["notAllowed"] [+27]
  GETTABLEKS R22 R6 K49 ["canUploadBundles"]
  GETTABLEKS R21 R22 K51 ["denyReason"]
  JUMPIFEQKS R21 K52 ["MissingPremiumSubscriptionTier"] [+7]
  GETTABLEKS R22 R6 K49 ["canUploadBundles"]
  GETTABLEKS R21 R22 K51 ["denyReason"]
  JUMPIFNOTEQKS R21 K53 ["MissingIdVerification"] [+15]
  LOADK R22 K0 ["StageSelector"]
  LOADK R24 K54 ["Publish_Deny_%*"]
  GETTABLEKS R27 R6 K49 ["canUploadBundles"]
  GETTABLEKS R26 R27 K51 ["denyReason"]
  NAMECALL R24 R24 K55 ["format"]
  CALL R24 2 1
  MOVE R23 R24
  NAMECALL R20 R2 K56 ["getText"]
  CALL R20 3 1
  JUMP [+1]
  LOADNIL R20
  SETTABLEKS R20 R19 K46 ["Tooltip"]
  LOADB R20 0
  SETTABLEKS R20 R19 K40 ["Enabled"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K34 ["Publish"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K18 ["Contents"]
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K7 ["createElement"]
  GETUPVAL R14 11
  DUPTABLE R15 K60 [{"Icon", "IsSelected", "StageText", "AnchorPoint", "Position", "OnClick"}]
  LOADK R16 K61 ["rbxassetid://6663675885"]
  SETTABLEKS R16 R15 K37 ["Icon"]
  LOADB R16 0
  SETTABLEKS R16 R15 K38 ["IsSelected"]
  LOADK R16 K62 ["Settings"]
  SETTABLEKS R16 R15 K39 ["StageText"]
  GETIMPORT R16 K64 [Vector2.new]
  LOADN R17 0
  LOADN R18 1
  CALL R16 2 1
  SETTABLEKS R16 R15 K57 ["AnchorPoint"]
  GETIMPORT R16 K66 [UDim2.fromScale]
  LOADN R17 0
  LOADN R18 1
  CALL R16 2 1
  SETTABLEKS R16 R15 K58 ["Position"]
  GETTABLEKS R16 R7 K67 ["enable"]
  SETTABLEKS R16 R15 K59 ["OnClick"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K19 ["SettingsButton"]
  GETTABLEKS R13 R7 K68 ["enabled"]
  JUMPIFNOT R13 [+13]
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K7 ["createElement"]
  GETUPVAL R14 12
  DUPTABLE R15 K70 [{"type", "close"}]
  LOADK R16 K71 ["autoSetup"]
  SETTABLEKS R16 R15 K5 ["type"]
  GETTABLEKS R16 R7 K72 ["disable"]
  SETTABLEKS R16 R15 K69 ["close"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K20 ["SettingsMenu"]
  CALL R9 3 -1
  RETURN R9 -1
  GETUPVAL R9 7
  LOADB R10 0
  CALL R9 1 1
  MOVE R10 R0
  JUMPIFNOT R10 [+9]
  GETTABLEKS R10 R0 K73 ["Avatar"]
  JUMPIFNOT R10 [+6]
  GETUPVAL R10 13
  GETTABLEKS R12 R0 K73 ["Avatar"]
  GETTABLEKS R11 R12 K74 ["WorldModel"]
  CALL R10 1 1
  LOADB R11 1
  GETTABLEKS R12 R6 K49 ["canUploadBundles"]
  JUMPIFEQKNIL R12 [+9]
  GETTABLEKS R13 R6 K49 ["canUploadBundles"]
  GETTABLEKS R12 R13 K5 ["type"]
  JUMPIFNOTEQKS R12 K50 ["notAllowed"] [+2]
  LOADB R11 0 +1
  LOADB R11 1
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K7 ["createElement"]
  GETUPVAL R13 10
  DUPTABLE R14 K75 [{"BackgroundColor", "Size", "ZIndex"}]
  GETTABLEKS R15 R1 K8 ["BackgroundColor"]
  SETTABLEKS R15 R14 K8 ["BackgroundColor"]
  GETIMPORT R15 K16 [UDim2.new]
  LOADN R16 0
  GETTABLEKS R17 R1 K17 ["Width"]
  LOADN R18 1
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K11 ["Size"]
  LOADN R15 2
  SETTABLEKS R15 R14 K12 ["ZIndex"]
  DUPTABLE R15 K77 [{"Contents", "SettingsButton", "SettingsMenu", "SubmitDialog"}]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K7 ["createElement"]
  GETUPVAL R17 10
  DUPTABLE R18 K24 [{"Layout", "VerticalAlignment"}]
  GETIMPORT R19 K28 [Enum.FillDirection.Vertical]
  SETTABLEKS R19 R18 K22 ["Layout"]
  GETIMPORT R19 K30 [Enum.VerticalAlignment.Top]
  SETTABLEKS R19 R18 K23 ["VerticalAlignment"]
  DUPTABLE R19 K79 [{"CheckBody", "CheckFace", "Test", "LookSaveMenu", "Publish"}]
  GETUPVAL R21 4
  GETTABLEKS R20 R21 K7 ["createElement"]
  GETUPVAL R21 11
  DUPTABLE R22 K80 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "OnClick"}]
  NAMECALL R23 R3 K42 ["getNextOrder"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K36 ["LayoutOrder"]
  LOADK R23 K43 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/check_body.png"]
  SETTABLEKS R23 R22 K37 ["Icon"]
  GETTABLEKS R24 R0 K81 ["SelectedStage"]
  JUMPIFEQKS R24 K31 ["CheckBody"] [+2]
  LOADB R23 0 +1
  LOADB R23 1
  SETTABLEKS R23 R22 K38 ["IsSelected"]
  LOADK R23 K31 ["CheckBody"]
  SETTABLEKS R23 R22 K39 ["StageText"]
  NEWCLOSURE R23 P0
  CAPTURE VAL R4
  CAPTURE VAL R0
  SETTABLEKS R23 R22 K59 ["OnClick"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K31 ["CheckBody"]
  GETUPVAL R21 4
  GETTABLEKS R20 R21 K7 ["createElement"]
  GETUPVAL R21 11
  DUPTABLE R22 K80 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "OnClick"}]
  NAMECALL R23 R3 K42 ["getNextOrder"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K36 ["LayoutOrder"]
  LOADK R23 K44 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/check_face.png"]
  SETTABLEKS R23 R22 K37 ["Icon"]
  GETTABLEKS R24 R0 K81 ["SelectedStage"]
  JUMPIFEQKS R24 K32 ["CheckFace"] [+2]
  LOADB R23 0 +1
  LOADB R23 1
  SETTABLEKS R23 R22 K38 ["IsSelected"]
  LOADK R23 K32 ["CheckFace"]
  SETTABLEKS R23 R22 K39 ["StageText"]
  NEWCLOSURE R23 P1
  CAPTURE VAL R4
  CAPTURE VAL R0
  SETTABLEKS R23 R22 K59 ["OnClick"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K32 ["CheckFace"]
  GETUPVAL R21 4
  GETTABLEKS R20 R21 K7 ["createElement"]
  GETUPVAL R21 11
  DUPTABLE R22 K80 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "OnClick"}]
  NAMECALL R23 R3 K42 ["getNextOrder"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K36 ["LayoutOrder"]
  LOADK R23 K45 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/test.png"]
  SETTABLEKS R23 R22 K37 ["Icon"]
  LOADB R23 0
  SETTABLEKS R23 R22 K38 ["IsSelected"]
  LOADK R23 K33 ["Test"]
  SETTABLEKS R23 R22 K39 ["StageText"]
  NEWCLOSURE R23 P2
  CAPTURE VAL R4
  CAPTURE UPVAL U14
  CAPTURE VAL R5
  CAPTURE VAL R0
  SETTABLEKS R23 R22 K59 ["OnClick"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K33 ["Test"]
  GETUPVAL R21 8
  CALL R21 0 1
  JUMPIFNOT R21 [+98]
  JUMPIFEQKNIL R8 [+97]
  GETUPVAL R21 4
  GETTABLEKS R20 R21 K7 ["createElement"]
  GETUPVAL R21 15
  DUPTABLE R22 K87 [{"LayoutOrder", "isOpen", "onClose", "onToggle", "onSaveToRoblox", "anchor"}]
  NAMECALL R23 R3 K42 ["getNextOrder"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K36 ["LayoutOrder"]
  GETTABLEKS R23 R8 K68 ["enabled"]
  SETTABLEKS R23 R22 K82 ["isOpen"]
  GETTABLEKS R23 R8 K72 ["disable"]
  SETTABLEKS R23 R22 K83 ["onClose"]
  GETTABLEKS R23 R8 K88 ["toggle"]
  SETTABLEKS R23 R22 K84 ["onToggle"]
  NEWCLOSURE R23 P3
  CAPTURE VAL R9
  SETTABLEKS R23 R22 K85 ["onSaveToRoblox"]
  GETUPVAL R24 4
  GETTABLEKS R23 R24 K7 ["createElement"]
  GETUPVAL R24 11
  DUPTABLE R25 K89 [{"Icon", "IsSelected", "StageText", "Tooltip", "Enabled", "OnClick"}]
  LOADK R26 K48 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/publish.png"]
  SETTABLEKS R26 R25 K37 ["Icon"]
  GETTABLEKS R26 R8 K68 ["enabled"]
  SETTABLEKS R26 R25 K38 ["IsSelected"]
  LOADK R26 K34 ["Publish"]
  SETTABLEKS R26 R25 K39 ["StageText"]
  GETTABLEKS R27 R6 K49 ["canUploadBundles"]
  JUMPIFEQKNIL R27 [+33]
  GETTABLEKS R28 R6 K49 ["canUploadBundles"]
  GETTABLEKS R27 R28 K5 ["type"]
  JUMPIFNOTEQKS R27 K50 ["notAllowed"] [+27]
  GETTABLEKS R28 R6 K49 ["canUploadBundles"]
  GETTABLEKS R27 R28 K51 ["denyReason"]
  JUMPIFEQKS R27 K52 ["MissingPremiumSubscriptionTier"] [+7]
  GETTABLEKS R28 R6 K49 ["canUploadBundles"]
  GETTABLEKS R27 R28 K51 ["denyReason"]
  JUMPIFNOTEQKS R27 K53 ["MissingIdVerification"] [+15]
  LOADK R28 K0 ["StageSelector"]
  LOADK R30 K54 ["Publish_Deny_%*"]
  GETTABLEKS R33 R6 K49 ["canUploadBundles"]
  GETTABLEKS R32 R33 K51 ["denyReason"]
  NAMECALL R30 R30 K55 ["format"]
  CALL R30 2 1
  MOVE R29 R30
  NAMECALL R26 R2 K56 ["getText"]
  CALL R26 3 1
  JUMP [+1]
  LOADNIL R26
  SETTABLEKS R26 R25 K46 ["Tooltip"]
  JUMPIF R11 [+2]
  LOADB R26 0
  JUMP [+1]
  LOADNIL R26
  SETTABLEKS R26 R25 K40 ["Enabled"]
  NEWCLOSURE R26 P4
  CAPTURE VAL R11
  CAPTURE VAL R8
  SETTABLEKS R26 R25 K59 ["OnClick"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K86 ["anchor"]
  CALL R20 2 1
  JUMP [+1]
  LOADNIL R20
  SETTABLEKS R20 R19 K78 ["LookSaveMenu"]
  GETUPVAL R21 8
  CALL R21 0 1
  JUMPIF R21 [+72]
  GETUPVAL R21 4
  GETTABLEKS R20 R21 K7 ["createElement"]
  GETUPVAL R21 11
  DUPTABLE R22 K90 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "Tooltip", "Enabled", "OnClick"}]
  NAMECALL R23 R3 K42 ["getNextOrder"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K36 ["LayoutOrder"]
  LOADK R23 K48 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/publish.png"]
  SETTABLEKS R23 R22 K37 ["Icon"]
  LOADB R23 0
  SETTABLEKS R23 R22 K38 ["IsSelected"]
  LOADK R23 K34 ["Publish"]
  SETTABLEKS R23 R22 K39 ["StageText"]
  GETTABLEKS R24 R6 K49 ["canUploadBundles"]
  JUMPIFEQKNIL R24 [+33]
  GETTABLEKS R25 R6 K49 ["canUploadBundles"]
  GETTABLEKS R24 R25 K5 ["type"]
  JUMPIFNOTEQKS R24 K50 ["notAllowed"] [+27]
  GETTABLEKS R25 R6 K49 ["canUploadBundles"]
  GETTABLEKS R24 R25 K51 ["denyReason"]
  JUMPIFEQKS R24 K52 ["MissingPremiumSubscriptionTier"] [+7]
  GETTABLEKS R25 R6 K49 ["canUploadBundles"]
  GETTABLEKS R24 R25 K51 ["denyReason"]
  JUMPIFNOTEQKS R24 K53 ["MissingIdVerification"] [+15]
  LOADK R25 K0 ["StageSelector"]
  LOADK R27 K54 ["Publish_Deny_%*"]
  GETTABLEKS R30 R6 K49 ["canUploadBundles"]
  GETTABLEKS R29 R30 K51 ["denyReason"]
  NAMECALL R27 R27 K55 ["format"]
  CALL R27 2 1
  MOVE R26 R27
  NAMECALL R23 R2 K56 ["getText"]
  CALL R23 3 1
  JUMP [+1]
  LOADNIL R23
  SETTABLEKS R23 R22 K46 ["Tooltip"]
  JUMPIF R11 [+2]
  LOADB R23 0
  JUMP [+1]
  LOADNIL R23
  SETTABLEKS R23 R22 K40 ["Enabled"]
  NEWCLOSURE R23 P5
  CAPTURE VAL R4
  CAPTURE VAL R10
  CAPTURE VAL R9
  SETTABLEKS R23 R22 K59 ["OnClick"]
  CALL R20 2 1
  JUMP [+1]
  LOADNIL R20
  SETTABLEKS R20 R19 K34 ["Publish"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K18 ["Contents"]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K7 ["createElement"]
  GETUPVAL R17 11
  DUPTABLE R18 K60 [{"Icon", "IsSelected", "StageText", "AnchorPoint", "Position", "OnClick"}]
  LOADK R19 K61 ["rbxassetid://6663675885"]
  SETTABLEKS R19 R18 K37 ["Icon"]
  LOADB R19 0
  SETTABLEKS R19 R18 K38 ["IsSelected"]
  LOADK R19 K62 ["Settings"]
  SETTABLEKS R19 R18 K39 ["StageText"]
  GETIMPORT R19 K64 [Vector2.new]
  LOADN R20 0
  LOADN R21 1
  CALL R19 2 1
  SETTABLEKS R19 R18 K57 ["AnchorPoint"]
  GETIMPORT R19 K66 [UDim2.fromScale]
  LOADN R20 0
  LOADN R21 1
  CALL R19 2 1
  SETTABLEKS R19 R18 K58 ["Position"]
  GETTABLEKS R19 R7 K67 ["enable"]
  SETTABLEKS R19 R18 K59 ["OnClick"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K19 ["SettingsButton"]
  GETTABLEKS R16 R7 K68 ["enabled"]
  JUMPIFNOT R16 [+17]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K7 ["createElement"]
  GETUPVAL R17 12
  DUPTABLE R18 K92 [{"type", "avatar", "close"}]
  LOADK R19 K91 ["avatar"]
  SETTABLEKS R19 R18 K5 ["type"]
  GETTABLEKS R19 R0 K73 ["Avatar"]
  SETTABLEKS R19 R18 K91 ["avatar"]
  GETTABLEKS R19 R7 K72 ["disable"]
  SETTABLEKS R19 R18 K69 ["close"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K20 ["SettingsMenu"]
  GETTABLEKS R16 R9 K68 ["enabled"]
  JUMPIFNOT R16 [+14]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K7 ["createElement"]
  GETUPVAL R17 16
  DUPTABLE R18 K93 [{"close", "avatar"}]
  GETTABLEKS R19 R9 K72 ["disable"]
  SETTABLEKS R19 R18 K69 ["close"]
  GETTABLEKS R19 R0 K73 ["Avatar"]
  SETTABLEKS R19 R18 K91 ["avatar"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K76 ["SubmitDialog"]
  CALL R12 3 -1
  RETURN R12 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Resources"]
  GETTABLEKS R4 R5 K11 ["Theme"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K12 ["Types"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K9 ["Src"]
  GETTABLEKS R7 R8 K13 ["Util"]
  GETTABLEKS R6 R7 K14 ["TestInExperienceUtil"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K9 ["Src"]
  GETTABLEKS R8 R9 K15 ["Hooks"]
  GETTABLEKS R7 R8 K16 ["useCreatedByAutoSetup"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K9 ["Src"]
  GETTABLEKS R9 R10 K15 ["Hooks"]
  GETTABLEKS R8 R9 K17 ["useToggleState"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K9 ["Src"]
  GETTABLEKS R10 R11 K18 ["Components"]
  GETTABLEKS R9 R10 K19 ["AvatarSettings"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K9 ["Src"]
  GETTABLEKS R11 R12 K18 ["Components"]
  GETTABLEKS R10 R11 K20 ["PlacesServiceContext"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K9 ["Src"]
  GETTABLEKS R12 R13 K18 ["Components"]
  GETTABLEKS R11 R12 K21 ["LookSaveMenu"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K9 ["Src"]
  GETTABLEKS R13 R14 K18 ["Components"]
  GETTABLEKS R12 R13 K22 ["SubmitDialog"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K9 ["Src"]
  GETTABLEKS R14 R15 K18 ["Components"]
  GETTABLEKS R13 R14 K23 ["UGCValidationContext"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K9 ["Src"]
  GETTABLEKS R15 R16 K24 ["Flags"]
  GETTABLEKS R14 R15 K25 ["getFFlagAvatarAutosetupOptionsInput"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K9 ["Src"]
  GETTABLEKS R16 R17 K24 ["Flags"]
  GETTABLEKS R15 R16 K26 ["getFFlagAvatarPreviewerLookComposer"]
  CALL R14 1 1
  GETTABLEKS R15 R1 K27 ["UI"]
  GETTABLEKS R16 R15 K28 ["IconButton"]
  GETTABLEKS R17 R15 K29 ["Pane"]
  GETTABLEKS R19 R1 K13 ["Util"]
  GETTABLEKS R18 R19 K30 ["LayoutOrderIterator"]
  GETTABLEKS R20 R1 K31 ["ContextServices"]
  GETTABLEKS R19 R20 K32 ["Analytics"]
  GETTABLEKS R21 R1 K31 ["ContextServices"]
  GETTABLEKS R20 R21 K33 ["Localization"]
  GETTABLEKS R22 R1 K31 ["ContextServices"]
  GETTABLEKS R21 R22 K34 ["Stylizer"]
  DUPCLOSURE R22 K35 [PROTO_0]
  CAPTURE VAL R21
  CAPTURE VAL R20
  CAPTURE VAL R2
  CAPTURE VAL R16
  DUPCLOSURE R23 K36 [PROTO_7]
  CAPTURE VAL R21
  CAPTURE VAL R20
  CAPTURE VAL R18
  CAPTURE VAL R19
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R12
  CAPTURE VAL R7
  CAPTURE VAL R14
  CAPTURE VAL R13
  CAPTURE VAL R17
  CAPTURE VAL R22
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R10
  CAPTURE VAL R11
  RETURN R23 1
