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
  GETTABLEKS R4 R0 K3 ["ShowMenuIndicator"]
  JUMPIFEQKNIL R4 [+9]
  GETUPVAL R5 2
  CALL R5 0 1
  FASTCALL2K ASSERT R5 K4 [+4]
  LOADK R6 K4 ["Look Composer flag is required"]
  GETIMPORT R4 K6 [assert]
  CALL R4 2 0
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K7 ["createElement"]
  GETUPVAL R5 4
  DUPTABLE R6 K22 [{"AnchorPoint", "BackgroundColor", "BackgroundStyle", "IconColor", "IconScaleType", "IconSize", "LeftIcon", "LayoutOrder", "Size", "Padding", "Position", "TooltipStyle", "TooltipText", "OnClick"}]
  GETTABLEKS R8 R0 K3 ["ShowMenuIndicator"]
  JUMPIFNOT R8 [+6]
  GETIMPORT R7 K25 [Vector2.new]
  LOADN R8 0
  LOADN R9 0
  CALL R7 2 1
  JUMP [+2]
  GETTABLEKS R7 R0 K8 ["AnchorPoint"]
  SETTABLEKS R7 R6 K8 ["AnchorPoint"]
  GETTABLEKS R8 R0 K26 ["IsSelected"]
  JUMPIFNOT R8 [+3]
  GETTABLEKS R7 R1 K27 ["ButtonSelectedBackgroundColor"]
  JUMP [+2]
  GETTABLEKS R7 R1 K9 ["BackgroundColor"]
  SETTABLEKS R7 R6 K9 ["BackgroundColor"]
  LOADK R7 K28 ["SubtleBox"]
  SETTABLEKS R7 R6 K10 ["BackgroundStyle"]
  JUMPIFNOT R3 [+3]
  GETTABLEKS R7 R1 K11 ["IconColor"]
  JUMP [+2]
  GETTABLEKS R7 R1 K29 ["IconColorDisabled"]
  SETTABLEKS R7 R6 K11 ["IconColor"]
  GETIMPORT R7 K33 [Enum.ScaleType.Stretch]
  SETTABLEKS R7 R6 K12 ["IconScaleType"]
  GETTABLEKS R7 R1 K13 ["IconSize"]
  SETTABLEKS R7 R6 K13 ["IconSize"]
  GETTABLEKS R7 R0 K34 ["Icon"]
  SETTABLEKS R7 R6 K14 ["LeftIcon"]
  GETTABLEKS R8 R0 K3 ["ShowMenuIndicator"]
  JUMPIFNOT R8 [+2]
  LOADNIL R7
  JUMP [+2]
  GETTABLEKS R7 R0 K15 ["LayoutOrder"]
  SETTABLEKS R7 R6 K15 ["LayoutOrder"]
  GETIMPORT R7 K36 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  GETTABLEKS R11 R1 K37 ["ButtonHeight"]
  CALL R7 4 1
  SETTABLEKS R7 R6 K16 ["Size"]
  LOADN R7 0
  SETTABLEKS R7 R6 K17 ["Padding"]
  GETTABLEKS R8 R0 K3 ["ShowMenuIndicator"]
  JUMPIFNOT R8 [+4]
  GETIMPORT R7 K36 [UDim2.new]
  CALL R7 0 1
  JUMP [+2]
  GETTABLEKS R7 R0 K18 ["Position"]
  SETTABLEKS R7 R6 K18 ["Position"]
  LOADK R7 K38 ["NoDelay"]
  SETTABLEKS R7 R6 K19 ["TooltipStyle"]
  GETTABLEKS R7 R0 K39 ["Tooltip"]
  JUMPIF R7 [+6]
  LOADK R9 K40 ["Stages"]
  GETTABLEKS R10 R0 K41 ["StageText"]
  NAMECALL R7 R2 K42 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K20 ["TooltipText"]
  JUMPIFNOT R3 [+3]
  GETTABLEKS R7 R0 K21 ["OnClick"]
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K21 ["OnClick"]
  CALL R4 2 1
  JUMPIF R3 [+27]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K7 ["createElement"]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K43 ["Fragment"]
  NEWTABLE R7 0 0
  NEWTABLE R8 2 0
  SETTABLEKS R4 R8 K44 ["IconButton"]
  LOADK R10 K45 ["%*_Disabled"]
  GETTABLEKS R12 R0 K41 ["StageText"]
  NAMECALL R10 R10 K46 ["format"]
  CALL R10 2 1
  MOVE R9 R10
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K7 ["createElement"]
  LOADK R11 K47 ["Folder"]
  CALL R10 1 1
  SETTABLE R10 R8 R9
  CALL R5 3 -1
  RETURN R5 -1
  GETTABLEKS R5 R0 K3 ["ShowMenuIndicator"]
  JUMPIFNOT R5 [+123]
  GETTABLEKS R5 R1 K48 ["MenuIndicatorSize"]
  DUPTABLE R6 K50 [{"IconButton", "MenuIndicator"}]
  SETTABLEKS R4 R6 K44 ["IconButton"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K7 ["createElement"]
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K51 ["View"]
  DUPTABLE R9 K55 [{"BackgroundTransparency", "AnchorPoint", "Position", "Size", "Rotation", "ZIndex"}]
  LOADN R10 1
  SETTABLEKS R10 R9 K52 ["BackgroundTransparency"]
  GETIMPORT R10 K25 [Vector2.new]
  LOADN R11 1
  LOADN R12 1
  CALL R10 2 1
  SETTABLEKS R10 R9 K8 ["AnchorPoint"]
  GETIMPORT R10 K36 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 1
  LOADN R14 5
  CALL R10 4 1
  SETTABLEKS R10 R9 K18 ["Position"]
  GETIMPORT R10 K57 [UDim2.fromOffset]
  MOVE R11 R5
  MOVE R12 R5
  CALL R10 2 1
  SETTABLEKS R10 R9 K16 ["Size"]
  LOADN R10 211
  SETTABLEKS R10 R9 K53 ["Rotation"]
  LOADN R10 2
  SETTABLEKS R10 R9 K54 ["ZIndex"]
  DUPTABLE R10 K58 [{"Icon"}]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K7 ["createElement"]
  GETUPVAL R13 5
  GETTABLEKS R12 R13 K34 ["Icon"]
  DUPTABLE R13 K63 [{"name", "variant", "size", "tag"}]
  GETUPVAL R17 5
  GETTABLEKS R16 R17 K64 ["Enums"]
  GETTABLEKS R15 R16 K65 ["IconName"]
  GETTABLEKS R14 R15 K66 ["CaretSmallDown"]
  SETTABLEKS R14 R13 K59 ["name"]
  GETUPVAL R17 5
  GETTABLEKS R16 R17 K64 ["Enums"]
  GETTABLEKS R15 R16 K67 ["IconVariant"]
  GETTABLEKS R14 R15 K68 ["Filled"]
  SETTABLEKS R14 R13 K60 ["variant"]
  GETUPVAL R17 5
  GETTABLEKS R16 R17 K64 ["Enums"]
  GETTABLEKS R15 R16 K13 ["IconSize"]
  GETTABLEKS R14 R15 K69 ["XSmall"]
  SETTABLEKS R14 R13 K61 ["size"]
  LOADK R14 K70 ["size-full-full content-system-contrast"]
  SETTABLEKS R14 R13 K62 ["tag"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K34 ["Icon"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K49 ["MenuIndicator"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K7 ["createElement"]
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K51 ["View"]
  DUPTABLE R9 K71 [{"LayoutOrder", "Size", "AnchorPoint", "Position", "BackgroundTransparency"}]
  GETTABLEKS R10 R0 K15 ["LayoutOrder"]
  SETTABLEKS R10 R9 K15 ["LayoutOrder"]
  GETIMPORT R10 K36 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 0
  GETTABLEKS R14 R1 K37 ["ButtonHeight"]
  CALL R10 4 1
  SETTABLEKS R10 R9 K16 ["Size"]
  GETTABLEKS R10 R0 K8 ["AnchorPoint"]
  SETTABLEKS R10 R9 K8 ["AnchorPoint"]
  GETTABLEKS R10 R0 K18 ["Position"]
  SETTABLEKS R10 R9 K18 ["Position"]
  LOADN R10 1
  SETTABLEKS R10 R9 K52 ["BackgroundTransparency"]
  MOVE R10 R6
  CALL R7 3 -1
  RETURN R7 -1
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
  GETUPVAL R12 8
  CALL R12 0 1
  JUMPIFNOT R12 [+8]
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K3 ["useContext"]
  GETUPVAL R13 14
  GETTABLEKS R12 R13 K4 ["Context"]
  CALL R11 1 1
  JUMP [+1]
  LOADNIL R11
  GETUPVAL R13 8
  CALL R13 0 1
  JUMPIFNOT R13 [+4]
  JUMPIFNOT R11 [+3]
  GETTABLEKS R12 R11 K75 ["canCreateLook"]
  JUMP [+1]
  LOADB R12 0
  LOADB R13 1
  GETTABLEKS R14 R6 K49 ["canUploadBundles"]
  JUMPIFEQKNIL R14 [+9]
  GETTABLEKS R15 R6 K49 ["canUploadBundles"]
  GETTABLEKS R14 R15 K5 ["type"]
  JUMPIFNOTEQKS R14 K50 ["notAllowed"] [+2]
  LOADB R13 0 +1
  LOADB R13 1
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K7 ["createElement"]
  GETUPVAL R15 10
  DUPTABLE R16 K76 [{"BackgroundColor", "Size", "ZIndex"}]
  GETTABLEKS R17 R1 K8 ["BackgroundColor"]
  SETTABLEKS R17 R16 K8 ["BackgroundColor"]
  GETIMPORT R17 K16 [UDim2.new]
  LOADN R18 0
  GETTABLEKS R19 R1 K17 ["Width"]
  LOADN R20 1
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K11 ["Size"]
  LOADN R17 2
  SETTABLEKS R17 R16 K12 ["ZIndex"]
  DUPTABLE R17 K78 [{"Contents", "SettingsButton", "SettingsMenu", "SubmitDialog"}]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K7 ["createElement"]
  GETUPVAL R19 10
  DUPTABLE R20 K24 [{"Layout", "VerticalAlignment"}]
  GETIMPORT R21 K28 [Enum.FillDirection.Vertical]
  SETTABLEKS R21 R20 K22 ["Layout"]
  GETIMPORT R21 K30 [Enum.VerticalAlignment.Top]
  SETTABLEKS R21 R20 K23 ["VerticalAlignment"]
  DUPTABLE R21 K80 [{"CheckBody", "CheckFace", "Test", "LookSaveMenu", "Publish"}]
  GETUPVAL R23 4
  GETTABLEKS R22 R23 K7 ["createElement"]
  GETUPVAL R23 11
  DUPTABLE R24 K81 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "OnClick"}]
  NAMECALL R25 R3 K42 ["getNextOrder"]
  CALL R25 1 1
  SETTABLEKS R25 R24 K36 ["LayoutOrder"]
  LOADK R25 K43 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/check_body.png"]
  SETTABLEKS R25 R24 K37 ["Icon"]
  GETTABLEKS R26 R0 K82 ["SelectedStage"]
  JUMPIFEQKS R26 K31 ["CheckBody"] [+2]
  LOADB R25 0 +1
  LOADB R25 1
  SETTABLEKS R25 R24 K38 ["IsSelected"]
  LOADK R25 K31 ["CheckBody"]
  SETTABLEKS R25 R24 K39 ["StageText"]
  NEWCLOSURE R25 P0
  CAPTURE VAL R4
  CAPTURE VAL R0
  SETTABLEKS R25 R24 K59 ["OnClick"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K31 ["CheckBody"]
  GETUPVAL R23 4
  GETTABLEKS R22 R23 K7 ["createElement"]
  GETUPVAL R23 11
  DUPTABLE R24 K81 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "OnClick"}]
  NAMECALL R25 R3 K42 ["getNextOrder"]
  CALL R25 1 1
  SETTABLEKS R25 R24 K36 ["LayoutOrder"]
  LOADK R25 K44 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/check_face.png"]
  SETTABLEKS R25 R24 K37 ["Icon"]
  GETTABLEKS R26 R0 K82 ["SelectedStage"]
  JUMPIFEQKS R26 K32 ["CheckFace"] [+2]
  LOADB R25 0 +1
  LOADB R25 1
  SETTABLEKS R25 R24 K38 ["IsSelected"]
  LOADK R25 K32 ["CheckFace"]
  SETTABLEKS R25 R24 K39 ["StageText"]
  NEWCLOSURE R25 P1
  CAPTURE VAL R4
  CAPTURE VAL R0
  SETTABLEKS R25 R24 K59 ["OnClick"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K32 ["CheckFace"]
  GETUPVAL R23 4
  GETTABLEKS R22 R23 K7 ["createElement"]
  GETUPVAL R23 11
  DUPTABLE R24 K81 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "OnClick"}]
  NAMECALL R25 R3 K42 ["getNextOrder"]
  CALL R25 1 1
  SETTABLEKS R25 R24 K36 ["LayoutOrder"]
  LOADK R25 K45 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/test.png"]
  SETTABLEKS R25 R24 K37 ["Icon"]
  LOADB R25 0
  SETTABLEKS R25 R24 K38 ["IsSelected"]
  LOADK R25 K33 ["Test"]
  SETTABLEKS R25 R24 K39 ["StageText"]
  NEWCLOSURE R25 P2
  CAPTURE VAL R4
  CAPTURE UPVAL U15
  CAPTURE VAL R5
  CAPTURE VAL R0
  SETTABLEKS R25 R24 K59 ["OnClick"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K33 ["Test"]
  GETUPVAL R23 8
  CALL R23 0 1
  JUMPIFNOT R23 [+106]
  JUMPIFNOT R12 [+105]
  JUMPIFEQKNIL R8 [+104]
  GETUPVAL R23 4
  GETTABLEKS R22 R23 K7 ["createElement"]
  GETUPVAL R23 16
  DUPTABLE R24 K88 [{"LayoutOrder", "isOpen", "onClose", "onToggle", "onSaveToRoblox", "anchor"}]
  NAMECALL R25 R3 K42 ["getNextOrder"]
  CALL R25 1 1
  SETTABLEKS R25 R24 K36 ["LayoutOrder"]
  GETTABLEKS R25 R8 K68 ["enabled"]
  SETTABLEKS R25 R24 K83 ["isOpen"]
  GETTABLEKS R25 R8 K72 ["disable"]
  SETTABLEKS R25 R24 K84 ["onClose"]
  GETTABLEKS R25 R8 K89 ["toggle"]
  SETTABLEKS R25 R24 K85 ["onToggle"]
  NEWCLOSURE R25 P3
  CAPTURE VAL R9
  SETTABLEKS R25 R24 K86 ["onSaveToRoblox"]
  GETUPVAL R26 4
  GETTABLEKS R25 R26 K7 ["createElement"]
  GETUPVAL R26 11
  DUPTABLE R27 K91 [{"Icon", "IsSelected", "ShowMenuIndicator", "StageText", "Tooltip", "Enabled", "OnClick"}]
  LOADK R28 K48 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/publish.png"]
  SETTABLEKS R28 R27 K37 ["Icon"]
  GETTABLEKS R28 R8 K68 ["enabled"]
  SETTABLEKS R28 R27 K38 ["IsSelected"]
  LOADB R28 1
  SETTABLEKS R28 R27 K90 ["ShowMenuIndicator"]
  LOADK R28 K34 ["Publish"]
  SETTABLEKS R28 R27 K39 ["StageText"]
  GETTABLEKS R29 R6 K49 ["canUploadBundles"]
  JUMPIFEQKNIL R29 [+33]
  GETTABLEKS R30 R6 K49 ["canUploadBundles"]
  GETTABLEKS R29 R30 K5 ["type"]
  JUMPIFNOTEQKS R29 K50 ["notAllowed"] [+27]
  GETTABLEKS R30 R6 K49 ["canUploadBundles"]
  GETTABLEKS R29 R30 K51 ["denyReason"]
  JUMPIFEQKS R29 K52 ["MissingPremiumSubscriptionTier"] [+7]
  GETTABLEKS R30 R6 K49 ["canUploadBundles"]
  GETTABLEKS R29 R30 K51 ["denyReason"]
  JUMPIFNOTEQKS R29 K53 ["MissingIdVerification"] [+15]
  LOADK R30 K0 ["StageSelector"]
  LOADK R32 K54 ["Publish_Deny_%*"]
  GETTABLEKS R35 R6 K49 ["canUploadBundles"]
  GETTABLEKS R34 R35 K51 ["denyReason"]
  NAMECALL R32 R32 K55 ["format"]
  CALL R32 2 1
  MOVE R31 R32
  NAMECALL R28 R2 K56 ["getText"]
  CALL R28 3 1
  JUMP [+5]
  LOADK R30 K79 ["LookSaveMenu"]
  LOADK R31 K92 ["Save"]
  NAMECALL R28 R2 K56 ["getText"]
  CALL R28 3 1
  SETTABLEKS R28 R27 K46 ["Tooltip"]
  JUMPIF R13 [+2]
  LOADB R28 0
  JUMP [+1]
  LOADNIL R28
  SETTABLEKS R28 R27 K40 ["Enabled"]
  NEWCLOSURE R28 P4
  CAPTURE VAL R13
  CAPTURE VAL R8
  SETTABLEKS R28 R27 K59 ["OnClick"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K87 ["anchor"]
  CALL R22 2 1
  JUMP [+1]
  LOADNIL R22
  SETTABLEKS R22 R21 K79 ["LookSaveMenu"]
  GETUPVAL R23 8
  CALL R23 0 1
  JUMPIFNOT R23 [+1]
  JUMPIF R12 [+72]
  GETUPVAL R23 4
  GETTABLEKS R22 R23 K7 ["createElement"]
  GETUPVAL R23 11
  DUPTABLE R24 K93 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "Tooltip", "Enabled", "OnClick"}]
  NAMECALL R25 R3 K42 ["getNextOrder"]
  CALL R25 1 1
  SETTABLEKS R25 R24 K36 ["LayoutOrder"]
  LOADK R25 K48 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/publish.png"]
  SETTABLEKS R25 R24 K37 ["Icon"]
  LOADB R25 0
  SETTABLEKS R25 R24 K38 ["IsSelected"]
  LOADK R25 K34 ["Publish"]
  SETTABLEKS R25 R24 K39 ["StageText"]
  GETTABLEKS R26 R6 K49 ["canUploadBundles"]
  JUMPIFEQKNIL R26 [+33]
  GETTABLEKS R27 R6 K49 ["canUploadBundles"]
  GETTABLEKS R26 R27 K5 ["type"]
  JUMPIFNOTEQKS R26 K50 ["notAllowed"] [+27]
  GETTABLEKS R27 R6 K49 ["canUploadBundles"]
  GETTABLEKS R26 R27 K51 ["denyReason"]
  JUMPIFEQKS R26 K52 ["MissingPremiumSubscriptionTier"] [+7]
  GETTABLEKS R27 R6 K49 ["canUploadBundles"]
  GETTABLEKS R26 R27 K51 ["denyReason"]
  JUMPIFNOTEQKS R26 K53 ["MissingIdVerification"] [+15]
  LOADK R27 K0 ["StageSelector"]
  LOADK R29 K54 ["Publish_Deny_%*"]
  GETTABLEKS R32 R6 K49 ["canUploadBundles"]
  GETTABLEKS R31 R32 K51 ["denyReason"]
  NAMECALL R29 R29 K55 ["format"]
  CALL R29 2 1
  MOVE R28 R29
  NAMECALL R25 R2 K56 ["getText"]
  CALL R25 3 1
  JUMP [+1]
  LOADNIL R25
  SETTABLEKS R25 R24 K46 ["Tooltip"]
  JUMPIF R13 [+2]
  LOADB R25 0
  JUMP [+1]
  LOADNIL R25
  SETTABLEKS R25 R24 K40 ["Enabled"]
  NEWCLOSURE R25 P5
  CAPTURE VAL R4
  CAPTURE VAL R10
  CAPTURE VAL R9
  SETTABLEKS R25 R24 K59 ["OnClick"]
  CALL R22 2 1
  JUMP [+1]
  LOADNIL R22
  SETTABLEKS R22 R21 K34 ["Publish"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K18 ["Contents"]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K7 ["createElement"]
  GETUPVAL R19 11
  DUPTABLE R20 K60 [{"Icon", "IsSelected", "StageText", "AnchorPoint", "Position", "OnClick"}]
  LOADK R21 K61 ["rbxassetid://6663675885"]
  SETTABLEKS R21 R20 K37 ["Icon"]
  LOADB R21 0
  SETTABLEKS R21 R20 K38 ["IsSelected"]
  LOADK R21 K62 ["Settings"]
  SETTABLEKS R21 R20 K39 ["StageText"]
  GETIMPORT R21 K64 [Vector2.new]
  LOADN R22 0
  LOADN R23 1
  CALL R21 2 1
  SETTABLEKS R21 R20 K57 ["AnchorPoint"]
  GETIMPORT R21 K66 [UDim2.fromScale]
  LOADN R22 0
  LOADN R23 1
  CALL R21 2 1
  SETTABLEKS R21 R20 K58 ["Position"]
  GETTABLEKS R21 R7 K67 ["enable"]
  SETTABLEKS R21 R20 K59 ["OnClick"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K19 ["SettingsButton"]
  GETTABLEKS R18 R7 K68 ["enabled"]
  JUMPIFNOT R18 [+17]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K7 ["createElement"]
  GETUPVAL R19 12
  DUPTABLE R20 K95 [{"type", "avatar", "close"}]
  LOADK R21 K94 ["avatar"]
  SETTABLEKS R21 R20 K5 ["type"]
  GETTABLEKS R21 R0 K73 ["Avatar"]
  SETTABLEKS R21 R20 K94 ["avatar"]
  GETTABLEKS R21 R7 K72 ["disable"]
  SETTABLEKS R21 R20 K69 ["close"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K20 ["SettingsMenu"]
  GETTABLEKS R18 R9 K68 ["enabled"]
  JUMPIFNOT R18 [+14]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K7 ["createElement"]
  GETUPVAL R19 17
  DUPTABLE R20 K96 [{"close", "avatar"}]
  GETTABLEKS R21 R9 K72 ["disable"]
  SETTABLEKS R21 R20 K69 ["close"]
  GETTABLEKS R21 R0 K73 ["Avatar"]
  SETTABLEKS R21 R20 K94 ["avatar"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K77 ["SubmitDialog"]
  CALL R14 3 -1
  RETURN R14 -1

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
  GETTABLEKS R3 R4 K8 ["Foundation"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["Resources"]
  GETTABLEKS R5 R6 K12 ["Theme"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K13 ["Types"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K14 ["Util"]
  GETTABLEKS R7 R8 K15 ["TestInExperienceUtil"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K10 ["Src"]
  GETTABLEKS R9 R10 K16 ["Hooks"]
  GETTABLEKS R8 R9 K17 ["useCreatedByAutoSetup"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K10 ["Src"]
  GETTABLEKS R10 R11 K16 ["Hooks"]
  GETTABLEKS R9 R10 K18 ["useToggleState"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K10 ["Src"]
  GETTABLEKS R11 R12 K19 ["Components"]
  GETTABLEKS R10 R11 K20 ["AvatarSettings"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K10 ["Src"]
  GETTABLEKS R12 R13 K19 ["Components"]
  GETTABLEKS R11 R12 K21 ["LookContext"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K10 ["Src"]
  GETTABLEKS R13 R14 K19 ["Components"]
  GETTABLEKS R12 R13 K22 ["PlacesServiceContext"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K10 ["Src"]
  GETTABLEKS R14 R15 K19 ["Components"]
  GETTABLEKS R13 R14 K23 ["LookSaveMenu"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K10 ["Src"]
  GETTABLEKS R15 R16 K19 ["Components"]
  GETTABLEKS R14 R15 K24 ["SubmitDialog"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K10 ["Src"]
  GETTABLEKS R16 R17 K19 ["Components"]
  GETTABLEKS R15 R16 K25 ["UGCValidationContext"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K10 ["Src"]
  GETTABLEKS R17 R18 K26 ["Flags"]
  GETTABLEKS R16 R17 K27 ["getFFlagAvatarAutosetupOptionsInput"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K10 ["Src"]
  GETTABLEKS R18 R19 K26 ["Flags"]
  GETTABLEKS R17 R18 K28 ["getFFlagAvatarPreviewerLookComposer"]
  CALL R16 1 1
  GETTABLEKS R17 R1 K29 ["UI"]
  GETTABLEKS R18 R17 K30 ["IconButton"]
  GETTABLEKS R19 R17 K31 ["Pane"]
  GETTABLEKS R21 R1 K14 ["Util"]
  GETTABLEKS R20 R21 K32 ["LayoutOrderIterator"]
  GETTABLEKS R22 R1 K33 ["ContextServices"]
  GETTABLEKS R21 R22 K34 ["Analytics"]
  GETTABLEKS R23 R1 K33 ["ContextServices"]
  GETTABLEKS R22 R23 K35 ["Localization"]
  GETTABLEKS R24 R1 K33 ["ContextServices"]
  GETTABLEKS R23 R24 K36 ["Stylizer"]
  DUPCLOSURE R24 K37 [PROTO_0]
  CAPTURE VAL R23
  CAPTURE VAL R22
  CAPTURE VAL R16
  CAPTURE VAL R3
  CAPTURE VAL R18
  CAPTURE VAL R2
  DUPCLOSURE R25 K38 [PROTO_7]
  CAPTURE VAL R23
  CAPTURE VAL R22
  CAPTURE VAL R20
  CAPTURE VAL R21
  CAPTURE VAL R3
  CAPTURE VAL R11
  CAPTURE VAL R14
  CAPTURE VAL R8
  CAPTURE VAL R16
  CAPTURE VAL R15
  CAPTURE VAL R19
  CAPTURE VAL R24
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R10
  CAPTURE VAL R6
  CAPTURE VAL R12
  CAPTURE VAL R13
  RETURN R25 1
