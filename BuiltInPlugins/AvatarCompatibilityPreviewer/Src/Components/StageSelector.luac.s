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
  GETUPVAL R0 0
  LOADK R2 K0 ["publish"]
  GETUPVAL R3 1
  NAMECALL R0 R0 K1 ["report"]
  CALL R0 3 0
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K2 ["enable"]
  CALL R0 0 0
  RETURN R0 0

PROTO_5:
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
  GETUPVAL R8 8
  CALL R8 0 1
  JUMPIFNOT R8 [+253]
  GETTABLEKS R8 R0 K5 ["type"]
  JUMPIFNOTEQKS R8 K6 ["autosetup"] [+250]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K7 ["createElement"]
  GETUPVAL R9 9
  DUPTABLE R10 K13 [{"BackgroundColor", "BorderColor3", "BorderSizePixel", "Size", "ZIndex"}]
  GETTABLEKS R11 R1 K8 ["BackgroundColor"]
  SETTABLEKS R11 R10 K8 ["BackgroundColor"]
  GETTABLEKS R11 R1 K14 ["BorderColor"]
  SETTABLEKS R11 R10 K9 ["BorderColor3"]
  LOADN R11 1
  SETTABLEKS R11 R10 K10 ["BorderSizePixel"]
  GETIMPORT R11 K16 [UDim2.new]
  LOADN R12 0
  GETTABLEKS R13 R1 K17 ["Width"]
  LOADN R14 1
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K11 ["Size"]
  LOADN R11 3
  SETTABLEKS R11 R10 K12 ["ZIndex"]
  DUPTABLE R11 K21 [{"Contents", "SettingsButton", "SettingsMenu"}]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K7 ["createElement"]
  GETUPVAL R13 9
  DUPTABLE R14 K24 [{"Layout", "VerticalAlignment"}]
  GETIMPORT R15 K28 [Enum.FillDirection.Vertical]
  SETTABLEKS R15 R14 K22 ["Layout"]
  GETIMPORT R15 K30 [Enum.VerticalAlignment.Top]
  SETTABLEKS R15 R14 K23 ["VerticalAlignment"]
  DUPTABLE R15 K35 [{"CheckBody", "CheckFace", "Test", "Publish"}]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K7 ["createElement"]
  GETUPVAL R17 10
  DUPTABLE R18 K41 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "Enabled"}]
  NAMECALL R19 R3 K42 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K36 ["LayoutOrder"]
  LOADK R20 K43 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R21 K44 ["check_body.png"]
  CONCAT R19 R20 R21
  SETTABLEKS R19 R18 K37 ["Icon"]
  LOADB R19 0
  SETTABLEKS R19 R18 K38 ["IsSelected"]
  LOADK R19 K31 ["CheckBody"]
  SETTABLEKS R19 R18 K39 ["StageText"]
  LOADB R19 0
  SETTABLEKS R19 R18 K40 ["Enabled"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K31 ["CheckBody"]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K7 ["createElement"]
  GETUPVAL R17 10
  DUPTABLE R18 K41 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "Enabled"}]
  NAMECALL R19 R3 K42 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K36 ["LayoutOrder"]
  LOADK R20 K43 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R21 K45 ["check_face.png"]
  CONCAT R19 R20 R21
  SETTABLEKS R19 R18 K37 ["Icon"]
  LOADB R19 0
  SETTABLEKS R19 R18 K38 ["IsSelected"]
  LOADK R19 K32 ["CheckFace"]
  SETTABLEKS R19 R18 K39 ["StageText"]
  LOADB R19 0
  SETTABLEKS R19 R18 K40 ["Enabled"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K32 ["CheckFace"]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K7 ["createElement"]
  GETUPVAL R17 10
  DUPTABLE R18 K41 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "Enabled"}]
  NAMECALL R19 R3 K42 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K36 ["LayoutOrder"]
  LOADK R20 K43 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R21 K46 ["test.png"]
  CONCAT R19 R20 R21
  SETTABLEKS R19 R18 K37 ["Icon"]
  LOADB R19 0
  SETTABLEKS R19 R18 K38 ["IsSelected"]
  LOADK R19 K33 ["Test"]
  SETTABLEKS R19 R18 K39 ["StageText"]
  LOADB R19 0
  SETTABLEKS R19 R18 K40 ["Enabled"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K33 ["Test"]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K7 ["createElement"]
  GETUPVAL R17 10
  DUPTABLE R18 K48 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "Tooltip", "Enabled"}]
  NAMECALL R19 R3 K42 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K36 ["LayoutOrder"]
  LOADK R20 K43 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R21 K49 ["publish.png"]
  CONCAT R19 R20 R21
  SETTABLEKS R19 R18 K37 ["Icon"]
  LOADB R19 0
  SETTABLEKS R19 R18 K38 ["IsSelected"]
  LOADK R19 K34 ["Publish"]
  SETTABLEKS R19 R18 K39 ["StageText"]
  GETTABLEKS R20 R6 K50 ["canUploadBundles"]
  JUMPIFEQKNIL R20 [+33]
  GETTABLEKS R21 R6 K50 ["canUploadBundles"]
  GETTABLEKS R20 R21 K5 ["type"]
  JUMPIFNOTEQKS R20 K51 ["notAllowed"] [+27]
  GETTABLEKS R21 R6 K50 ["canUploadBundles"]
  GETTABLEKS R20 R21 K52 ["denyReason"]
  JUMPIFEQKS R20 K53 ["MissingPremiumSubscriptionTier"] [+7]
  GETTABLEKS R21 R6 K50 ["canUploadBundles"]
  GETTABLEKS R20 R21 K52 ["denyReason"]
  JUMPIFNOTEQKS R20 K54 ["MissingIdVerification"] [+15]
  LOADK R21 K0 ["StageSelector"]
  LOADK R23 K55 ["Publish_Deny_%*"]
  GETTABLEKS R26 R6 K50 ["canUploadBundles"]
  GETTABLEKS R25 R26 K52 ["denyReason"]
  NAMECALL R23 R23 K56 ["format"]
  CALL R23 2 1
  MOVE R22 R23
  NAMECALL R19 R2 K57 ["getText"]
  CALL R19 3 1
  JUMP [+1]
  LOADNIL R19
  SETTABLEKS R19 R18 K47 ["Tooltip"]
  LOADB R19 0
  SETTABLEKS R19 R18 K40 ["Enabled"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K34 ["Publish"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K18 ["Contents"]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K7 ["createElement"]
  GETUPVAL R13 10
  DUPTABLE R14 K61 [{"Icon", "IsSelected", "StageText", "AnchorPoint", "Position", "OnClick"}]
  LOADK R15 K62 ["rbxassetid://6663675885"]
  SETTABLEKS R15 R14 K37 ["Icon"]
  LOADB R15 0
  SETTABLEKS R15 R14 K38 ["IsSelected"]
  LOADK R15 K63 ["Settings"]
  SETTABLEKS R15 R14 K39 ["StageText"]
  GETIMPORT R15 K65 [Vector2.new]
  LOADN R16 0
  LOADN R17 1
  CALL R15 2 1
  SETTABLEKS R15 R14 K58 ["AnchorPoint"]
  GETIMPORT R15 K67 [UDim2.fromScale]
  LOADN R16 0
  LOADN R17 1
  CALL R15 2 1
  SETTABLEKS R15 R14 K59 ["Position"]
  GETTABLEKS R15 R7 K68 ["enable"]
  SETTABLEKS R15 R14 K60 ["OnClick"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K19 ["SettingsButton"]
  GETTABLEKS R12 R7 K69 ["enabled"]
  JUMPIFNOT R12 [+13]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K7 ["createElement"]
  GETUPVAL R13 11
  DUPTABLE R14 K71 [{"type", "close"}]
  LOADK R15 K72 ["autoSetup"]
  SETTABLEKS R15 R14 K5 ["type"]
  GETTABLEKS R15 R7 K73 ["disable"]
  SETTABLEKS R15 R14 K70 ["close"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K20 ["SettingsMenu"]
  CALL R8 3 -1
  RETURN R8 -1
  GETUPVAL R8 7
  LOADB R9 0
  CALL R8 1 1
  MOVE R9 R0
  JUMPIFNOT R9 [+9]
  GETTABLEKS R9 R0 K74 ["Avatar"]
  JUMPIFNOT R9 [+6]
  GETUPVAL R9 12
  GETTABLEKS R11 R0 K74 ["Avatar"]
  GETTABLEKS R10 R11 K75 ["WorldModel"]
  CALL R9 1 1
  LOADB R10 1
  GETTABLEKS R11 R6 K50 ["canUploadBundles"]
  JUMPIFEQKNIL R11 [+9]
  GETTABLEKS R12 R6 K50 ["canUploadBundles"]
  GETTABLEKS R11 R12 K5 ["type"]
  JUMPIFNOTEQKS R11 K51 ["notAllowed"] [+2]
  LOADB R10 0 +1
  LOADB R10 1
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K7 ["createElement"]
  GETUPVAL R12 9
  DUPTABLE R13 K76 [{"BackgroundColor", "Size", "ZIndex"}]
  GETTABLEKS R14 R1 K8 ["BackgroundColor"]
  SETTABLEKS R14 R13 K8 ["BackgroundColor"]
  GETIMPORT R14 K16 [UDim2.new]
  LOADN R15 0
  GETTABLEKS R16 R1 K17 ["Width"]
  LOADN R17 1
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K11 ["Size"]
  LOADN R14 2
  SETTABLEKS R14 R13 K12 ["ZIndex"]
  DUPTABLE R14 K78 [{"Contents", "SettingsButton", "SettingsMenu", "SubmitDialog"}]
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K7 ["createElement"]
  GETUPVAL R16 9
  DUPTABLE R17 K24 [{"Layout", "VerticalAlignment"}]
  GETIMPORT R18 K28 [Enum.FillDirection.Vertical]
  SETTABLEKS R18 R17 K22 ["Layout"]
  GETIMPORT R18 K30 [Enum.VerticalAlignment.Top]
  SETTABLEKS R18 R17 K23 ["VerticalAlignment"]
  DUPTABLE R18 K35 [{"CheckBody", "CheckFace", "Test", "Publish"}]
  GETUPVAL R20 4
  GETTABLEKS R19 R20 K7 ["createElement"]
  GETUPVAL R20 10
  DUPTABLE R21 K79 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "OnClick"}]
  NAMECALL R22 R3 K42 ["getNextOrder"]
  CALL R22 1 1
  SETTABLEKS R22 R21 K36 ["LayoutOrder"]
  LOADK R23 K43 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R24 K44 ["check_body.png"]
  CONCAT R22 R23 R24
  SETTABLEKS R22 R21 K37 ["Icon"]
  GETTABLEKS R23 R0 K80 ["SelectedStage"]
  JUMPIFEQKS R23 K31 ["CheckBody"] [+2]
  LOADB R22 0 +1
  LOADB R22 1
  SETTABLEKS R22 R21 K38 ["IsSelected"]
  LOADK R22 K31 ["CheckBody"]
  SETTABLEKS R22 R21 K39 ["StageText"]
  NEWCLOSURE R22 P0
  CAPTURE VAL R4
  CAPTURE VAL R0
  SETTABLEKS R22 R21 K60 ["OnClick"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K31 ["CheckBody"]
  GETUPVAL R20 4
  GETTABLEKS R19 R20 K7 ["createElement"]
  GETUPVAL R20 10
  DUPTABLE R21 K79 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "OnClick"}]
  NAMECALL R22 R3 K42 ["getNextOrder"]
  CALL R22 1 1
  SETTABLEKS R22 R21 K36 ["LayoutOrder"]
  LOADK R23 K43 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R24 K45 ["check_face.png"]
  CONCAT R22 R23 R24
  SETTABLEKS R22 R21 K37 ["Icon"]
  GETTABLEKS R23 R0 K80 ["SelectedStage"]
  JUMPIFEQKS R23 K32 ["CheckFace"] [+2]
  LOADB R22 0 +1
  LOADB R22 1
  SETTABLEKS R22 R21 K38 ["IsSelected"]
  LOADK R22 K32 ["CheckFace"]
  SETTABLEKS R22 R21 K39 ["StageText"]
  NEWCLOSURE R22 P1
  CAPTURE VAL R4
  CAPTURE VAL R0
  SETTABLEKS R22 R21 K60 ["OnClick"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K32 ["CheckFace"]
  GETUPVAL R20 4
  GETTABLEKS R19 R20 K7 ["createElement"]
  GETUPVAL R20 10
  DUPTABLE R21 K79 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "OnClick"}]
  NAMECALL R22 R3 K42 ["getNextOrder"]
  CALL R22 1 1
  SETTABLEKS R22 R21 K36 ["LayoutOrder"]
  LOADK R23 K43 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R24 K46 ["test.png"]
  CONCAT R22 R23 R24
  SETTABLEKS R22 R21 K37 ["Icon"]
  LOADB R22 0
  SETTABLEKS R22 R21 K38 ["IsSelected"]
  LOADK R22 K33 ["Test"]
  SETTABLEKS R22 R21 K39 ["StageText"]
  NEWCLOSURE R22 P2
  CAPTURE VAL R4
  CAPTURE UPVAL U13
  CAPTURE VAL R5
  CAPTURE VAL R0
  SETTABLEKS R22 R21 K60 ["OnClick"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K33 ["Test"]
  GETUPVAL R20 4
  GETTABLEKS R19 R20 K7 ["createElement"]
  GETUPVAL R20 10
  DUPTABLE R21 K81 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "Tooltip", "Enabled", "OnClick"}]
  NAMECALL R22 R3 K42 ["getNextOrder"]
  CALL R22 1 1
  SETTABLEKS R22 R21 K36 ["LayoutOrder"]
  LOADK R23 K43 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/"]
  LOADK R24 K49 ["publish.png"]
  CONCAT R22 R23 R24
  SETTABLEKS R22 R21 K37 ["Icon"]
  LOADB R22 0
  SETTABLEKS R22 R21 K38 ["IsSelected"]
  LOADK R22 K34 ["Publish"]
  SETTABLEKS R22 R21 K39 ["StageText"]
  GETTABLEKS R23 R6 K50 ["canUploadBundles"]
  JUMPIFEQKNIL R23 [+33]
  GETTABLEKS R24 R6 K50 ["canUploadBundles"]
  GETTABLEKS R23 R24 K5 ["type"]
  JUMPIFNOTEQKS R23 K51 ["notAllowed"] [+27]
  GETTABLEKS R24 R6 K50 ["canUploadBundles"]
  GETTABLEKS R23 R24 K52 ["denyReason"]
  JUMPIFEQKS R23 K53 ["MissingPremiumSubscriptionTier"] [+7]
  GETTABLEKS R24 R6 K50 ["canUploadBundles"]
  GETTABLEKS R23 R24 K52 ["denyReason"]
  JUMPIFNOTEQKS R23 K54 ["MissingIdVerification"] [+15]
  LOADK R24 K0 ["StageSelector"]
  LOADK R26 K55 ["Publish_Deny_%*"]
  GETTABLEKS R29 R6 K50 ["canUploadBundles"]
  GETTABLEKS R28 R29 K52 ["denyReason"]
  NAMECALL R26 R26 K56 ["format"]
  CALL R26 2 1
  MOVE R25 R26
  NAMECALL R22 R2 K57 ["getText"]
  CALL R22 3 1
  JUMP [+1]
  LOADNIL R22
  SETTABLEKS R22 R21 K47 ["Tooltip"]
  JUMPIF R10 [+2]
  LOADB R22 0
  JUMP [+1]
  LOADNIL R22
  SETTABLEKS R22 R21 K40 ["Enabled"]
  NEWCLOSURE R22 P3
  CAPTURE VAL R4
  CAPTURE VAL R9
  CAPTURE VAL R8
  SETTABLEKS R22 R21 K60 ["OnClick"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K34 ["Publish"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K18 ["Contents"]
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K7 ["createElement"]
  GETUPVAL R16 10
  DUPTABLE R17 K61 [{"Icon", "IsSelected", "StageText", "AnchorPoint", "Position", "OnClick"}]
  LOADK R18 K62 ["rbxassetid://6663675885"]
  SETTABLEKS R18 R17 K37 ["Icon"]
  LOADB R18 0
  SETTABLEKS R18 R17 K38 ["IsSelected"]
  LOADK R18 K63 ["Settings"]
  SETTABLEKS R18 R17 K39 ["StageText"]
  GETIMPORT R18 K65 [Vector2.new]
  LOADN R19 0
  LOADN R20 1
  CALL R18 2 1
  SETTABLEKS R18 R17 K58 ["AnchorPoint"]
  GETIMPORT R18 K67 [UDim2.fromScale]
  LOADN R19 0
  LOADN R20 1
  CALL R18 2 1
  SETTABLEKS R18 R17 K59 ["Position"]
  GETTABLEKS R18 R7 K68 ["enable"]
  SETTABLEKS R18 R17 K60 ["OnClick"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K19 ["SettingsButton"]
  GETTABLEKS R15 R7 K69 ["enabled"]
  JUMPIFNOT R15 [+17]
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K7 ["createElement"]
  GETUPVAL R16 11
  DUPTABLE R17 K83 [{"type", "avatar", "close"}]
  LOADK R18 K82 ["avatar"]
  SETTABLEKS R18 R17 K5 ["type"]
  GETTABLEKS R18 R0 K74 ["Avatar"]
  SETTABLEKS R18 R17 K82 ["avatar"]
  GETTABLEKS R18 R7 K73 ["disable"]
  SETTABLEKS R18 R17 K70 ["close"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K20 ["SettingsMenu"]
  GETTABLEKS R15 R8 K69 ["enabled"]
  JUMPIFNOT R15 [+14]
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K7 ["createElement"]
  GETUPVAL R16 14
  DUPTABLE R17 K84 [{"close", "avatar"}]
  GETTABLEKS R18 R8 K73 ["disable"]
  SETTABLEKS R18 R17 K70 ["close"]
  GETTABLEKS R18 R0 K74 ["Avatar"]
  SETTABLEKS R18 R17 K82 ["avatar"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K77 ["SubmitDialog"]
  CALL R11 3 -1
  RETURN R11 -1

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
  GETTABLEKS R11 R12 K21 ["SubmitDialog"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K9 ["Src"]
  GETTABLEKS R13 R14 K18 ["Components"]
  GETTABLEKS R12 R13 K22 ["UGCValidationContext"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K9 ["Src"]
  GETTABLEKS R14 R15 K23 ["Flags"]
  GETTABLEKS R13 R14 K24 ["getFFlagAvatarAutosetupOptionsInput"]
  CALL R12 1 1
  GETTABLEKS R13 R1 K25 ["UI"]
  GETTABLEKS R14 R13 K26 ["IconButton"]
  GETTABLEKS R15 R13 K27 ["Pane"]
  GETTABLEKS R17 R1 K13 ["Util"]
  GETTABLEKS R16 R17 K28 ["LayoutOrderIterator"]
  GETTABLEKS R18 R1 K29 ["ContextServices"]
  GETTABLEKS R17 R18 K30 ["Analytics"]
  GETTABLEKS R19 R1 K29 ["ContextServices"]
  GETTABLEKS R18 R19 K31 ["Localization"]
  GETTABLEKS R20 R1 K29 ["ContextServices"]
  GETTABLEKS R19 R20 K32 ["Stylizer"]
  DUPCLOSURE R20 K33 [PROTO_0]
  CAPTURE VAL R19
  CAPTURE VAL R18
  CAPTURE VAL R2
  CAPTURE VAL R14
  DUPCLOSURE R21 K34 [PROTO_5]
  CAPTURE VAL R19
  CAPTURE VAL R18
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R11
  CAPTURE VAL R7
  CAPTURE VAL R12
  CAPTURE VAL R15
  CAPTURE VAL R20
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R10
  RETURN R21 1
