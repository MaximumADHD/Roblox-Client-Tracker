PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["toggleOverride"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["props"]
  GETTABLEKS R1 R2 K2 ["currentTab"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R1 K2 [string.gsub]
  MOVE R2 R0
  LOADK R3 K3 ["[
]"]
  LOADK R4 K4 [" "]
  CALL R1 3 1
  MOVE R0 R1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["props"]
  GETTABLEKS R1 R2 K6 ["validateAnimation"]
  JUMPIFNOT R1 [+18]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["props"]
  GETTABLEKS R1 R2 K6 ["validateAnimation"]
  DUPTABLE R2 K9 [{"networkInterface", "assetId"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["props"]
  GETTABLEKS R4 R5 K10 ["Network"]
  GETTABLEKS R3 R4 K7 ["networkInterface"]
  SETTABLEKS R3 R2 K7 ["networkInterface"]
  SETTABLEKS R0 R2 K8 ["assetId"]
  CALL R1 1 0
  GETUPVAL R1 0
  DUPTABLE R3 K12 [{"animationId"}]
  SETTABLEKS R0 R3 K11 ["animationId"]
  NAMECALL R1 R1 K13 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  LOADB R2 1
  SETTABLEKS R2 R0 K0 ["hideInvalidAnimationID"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K1 ["onFlowButtonActivated"]
  DUPTABLE R2 K4 [{"animationId", "disablePublish"}]
  LOADK R3 K5 [""]
  SETTABLEKS R3 R2 K2 ["animationId"]
  GETUPVAL R4 0
  CALL R4 0 1
  JUMPIFNOT R4 [+2]
  LOADB R3 0
  JUMP [+1]
  LOADNIL R3
  SETTABLEKS R3 R2 K3 ["disablePublish"]
  SETTABLEKS R2 R0 K6 ["state"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K7 ["onAnimationIDChanged"]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R3 R0 K0 ["state"]
  JUMPIFEQ R2 R3 [+3]
  LOADB R3 1
  RETURN R3 1
  GETUPVAL R3 0
  JUMPIFNOT R3 [+33]
  GETTABLEKS R3 R0 K1 ["hideInvalidAnimationID"]
  GETTABLEKS R4 R2 K2 ["animationId"]
  JUMPIFNOTEQKS R4 K3 [""] [+5]
  LOADB R4 1
  SETTABLEKS R4 R0 K1 ["hideInvalidAnimationID"]
  JUMP [+17]
  GETTABLEKS R4 R1 K4 ["validateAnimationSucceeded"]
  JUMPIF R4 [+12]
  GETTABLEKS R6 R1 K5 ["AssetId"]
  FASTCALL1 TOSTRING R6 [+2]
  GETIMPORT R5 K7 [tostring]
  CALL R5 1 1
  GETTABLEKS R6 R2 K2 ["animationId"]
  JUMPIFEQ R5 R6 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  SETTABLEKS R4 R0 K1 ["hideInvalidAnimationID"]
  GETTABLEKS R4 R0 K1 ["hideInvalidAnimationID"]
  JUMPIFEQ R3 R4 [+3]
  LOADB R4 1
  RETURN R4 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K8 ["deepEqual"]
  MOVE R4 R1
  GETTABLEKS R5 R0 K9 ["props"]
  CALL R3 2 1
  JUMPIFNOT R3 [+2]
  LOADB R3 0
  RETURN R3 1
  LOADB R3 1
  RETURN R3 1

PROTO_4:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["Localization"]
  LOADK R4 K2 ["AssetConfigFooter"]
  LOADK R5 K3 ["UploadFeeWithRobuxIcon"]
  DUPTABLE R6 K5 [{"price"}]
  GETUPVAL R8 0
  MOVE R9 R1
  CONCAT R7 R8 R9
  SETTABLEKS R7 R6 K4 ["price"]
  NAMECALL R2 R2 K6 ["getText"]
  CALL R2 4 -1
  RETURN R2 -1

PROTO_5:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["state"]
  GETTABLEKS R1 R2 K1 ["animationId"]
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+22]
  GETUPVAL R0 1
  CALL R0 0 1
  JUMPIFNOT R0 [+12]
  GETUPVAL R0 2
  DUPTABLE R2 K1 [{"disablePublish"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["disablePublish"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U2
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 3 0
  RETURN R0 0
  GETUPVAL R0 3
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K3 ["state"]
  GETTABLEKS R1 R2 K4 ["animationId"]
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K2 ["Stylizer"]
  GETTABLEKS R4 R1 K3 ["Size"]
  GETTABLEKS R5 R1 K4 ["LayoutOrder"]
  GETTABLEKS R6 R1 K5 ["TryPublish"]
  GETTABLEKS R7 R1 K6 ["TryCancel"]
  GETTABLEKS R8 R3 K7 ["footer"]
  GETTABLEKS R9 R1 K8 ["CanSave"]
  GETTABLEKS R10 R1 K9 ["screenFlowType"]
  GETTABLEKS R11 R1 K10 ["assetTypeEnum"]
  GETTABLEKS R12 R1 K11 ["currentTab"]
  GETTABLEKS R13 R1 K12 ["validateAnimationSucceeded"]
  MOVE R14 R13
  JUMPIF R14 [+6]
  GETTABLEKS R15 R2 K13 ["animationId"]
  JUMPIFEQKS R15 K14 [""] [+2]
  LOADB R14 0 +1
  LOADB R14 1
  GETUPVAL R15 0
  JUMPIFNOT R15 [+2]
  GETTABLEKS R14 R0 K15 ["hideInvalidAnimationID"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K16 ["queryParam"]
  MOVE R16 R10
  MOVE R17 R11
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K17 ["keys"]
  GETTABLEKS R18 R19 K18 ["SHOW_OVERRIDE_BUTTON"]
  CALL R15 3 1
  LOADNIL R16
  GETUPVAL R17 2
  MOVE R19 R12
  NAMECALL R17 R17 K19 ["isOverride"]
  CALL R17 2 1
  JUMPIFNOT R17 [+9]
  GETTABLEKS R17 R1 K20 ["Localization"]
  LOADK R19 K21 ["AssetConfigFooter"]
  LOADK R20 K22 ["NewAsset"]
  NAMECALL R17 R17 K23 ["getText"]
  CALL R17 3 1
  MOVE R16 R17
  JUMP [+8]
  GETTABLEKS R17 R1 K20 ["Localization"]
  LOADK R19 K21 ["AssetConfigFooter"]
  LOADK R20 K24 ["Override"]
  NAMECALL R17 R17 K23 ["getText"]
  CALL R17 3 1
  MOVE R16 R17
  LOADB R17 0
  GETIMPORT R18 K28 [Enum.AssetType.Animation]
  JUMPIFNOTEQ R11 R18 [+6]
  GETUPVAL R17 2
  MOVE R19 R12
  NAMECALL R17 R17 K19 ["isOverride"]
  CALL R17 2 1
  MOVE R18 R17
  JUMPIFNOT R18 [+11]
  GETUPVAL R21 3
  GETTABLEKS R20 R21 K29 ["FLOW_TYPE"]
  GETTABLEKS R19 R20 K30 ["DOWNLOAD_FLOW"]
  GETTABLEKS R20 R1 K9 ["screenFlowType"]
  JUMPIFEQ R19 R20 [+2]
  LOADB R18 0 +1
  LOADB R18 1
  GETTABLEKS R19 R1 K31 ["AssetId"]
  JUMPIF R19 [+2]
  GETTABLEKS R19 R2 K32 ["animationID"]
  LOADB R20 0
  GETUPVAL R22 4
  CALL R22 0 1
  JUMPIFNOT R22 [+6]
  MOVE R21 R9
  JUMPIFNOT R21 [+5]
  GETTABLEKS R22 R2 K33 ["disablePublish"]
  NOT R21 R22
  JUMP [+1]
  MOVE R21 R9
  JUMPIFNOT R18 [+15]
  JUMPIF R9 [+2]
  MOVE R21 R13
  JUMP [+2]
  JUMPIF R13 [+1]
  LOADB R21 0
  JUMPIFNOT R19 [+9]
  GETIMPORT R22 K36 [utf8.len]
  MOVE R23 R19
  CALL R22 1 1
  LOADN R23 32
  JUMPIFLT R23 R22 [+2]
  LOADB R20 0 +1
  LOADB R20 1
  LOADNIL R22
  GETUPVAL R23 5
  CALL R23 0 1
  JUMPIFNOT R23 [+9]
  GETTABLEKS R23 R1 K20 ["Localization"]
  LOADK R25 K37 ["Common"]
  LOADK R26 K38 ["Save"]
  NAMECALL R23 R23 K23 ["getText"]
  CALL R23 3 1
  MOVE R22 R23
  JUMP [+8]
  GETTABLEKS R23 R1 K20 ["Localization"]
  LOADK R25 K37 ["Common"]
  LOADK R26 K39 ["Submit"]
  NAMECALL R23 R23 K23 ["getText"]
  CALL R23 3 1
  MOVE R22 R23
  GETUPVAL R24 6
  GETTABLEKS R23 R24 K40 ["isCatalogAsset"]
  MOVE R24 R11
  CALL R23 1 1
  JUMPIF R23 [+5]
  GETUPVAL R24 6
  GETTABLEKS R23 R24 K41 ["isUGCBundleType"]
  MOVE R24 R11
  CALL R23 1 1
  GETUPVAL R26 3
  GETTABLEKS R25 R26 K29 ["FLOW_TYPE"]
  GETTABLEKS R24 R25 K42 ["UPLOAD_FLOW"]
  JUMPIFNOTEQ R10 R24 [+26]
  JUMPIFNOT R23 [+24]
  GETTABLEKS R24 R1 K43 ["isUploadFeeEnabled"]
  JUMPIFNOT R24 [+16]
  GETTABLEKS R24 R1 K44 ["uploadFee"]
  LOADN R25 0
  JUMPIFNOTLT R25 R24 [+7]
  GETTABLEKS R26 R1 K44 ["uploadFee"]
  NAMECALL R24 R0 K45 ["getUploadFeeWithRobuxIcon"]
  CALL R24 2 1
  MOVE R22 R24
  GETTABLEKS R24 R1 K46 ["canAffordUploadFee"]
  JUMPIF R24 [+7]
  LOADB R21 0
  JUMP [+5]
  GETTABLEKS R24 R1 K43 ["isUploadFeeEnabled"]
  JUMPIFNOTEQKNIL R24 [+2]
  LOADB R21 0
  GETUPVAL R25 7
  GETTABLEKS R24 R25 K47 ["createElement"]
  LOADK R25 K48 ["Frame"]
  DUPTABLE R26 K53 [{"Size", "BackgroundTransparency", "BackgroundColor3", "BorderColor3", "BorderSizePixel", "LayoutOrder"}]
  SETTABLEKS R4 R26 K3 ["Size"]
  LOADN R27 0
  SETTABLEKS R27 R26 K49 ["BackgroundTransparency"]
  GETTABLEKS R27 R8 K54 ["backgroundColor"]
  SETTABLEKS R27 R26 K50 ["BackgroundColor3"]
  GETTABLEKS R27 R8 K55 ["borderColor"]
  SETTABLEKS R27 R26 K51 ["BorderColor3"]
  LOADN R27 1
  SETTABLEKS R27 R26 K52 ["BorderSizePixel"]
  SETTABLEKS R5 R26 K4 ["LayoutOrder"]
  DUPTABLE R27 K63 [{"UIPadding", "UIListLayout", "AnimationIdBox", "InvalidAnimationLabel", "CancelButton", "PublishButton", "ToggleOverrideButton"}]
  GETUPVAL R29 7
  GETTABLEKS R28 R29 K47 ["createElement"]
  LOADK R29 K56 ["UIPadding"]
  DUPTABLE R30 K68 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  GETIMPORT R31 K71 [UDim.new]
  LOADN R32 0
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K64 ["PaddingBottom"]
  GETIMPORT R31 K71 [UDim.new]
  LOADN R32 0
  LOADN R33 24
  CALL R31 2 1
  SETTABLEKS R31 R30 K65 ["PaddingLeft"]
  GETIMPORT R31 K71 [UDim.new]
  LOADN R32 0
  LOADN R33 24
  CALL R31 2 1
  SETTABLEKS R31 R30 K66 ["PaddingRight"]
  GETIMPORT R31 K71 [UDim.new]
  LOADN R32 0
  LOADN R33 0
  CALL R31 2 1
  SETTABLEKS R31 R30 K67 ["PaddingTop"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K56 ["UIPadding"]
  GETUPVAL R29 7
  GETTABLEKS R28 R29 K47 ["createElement"]
  LOADK R29 K57 ["UIListLayout"]
  DUPTABLE R30 K77 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
  GETIMPORT R31 K79 [Enum.FillDirection.Horizontal]
  SETTABLEKS R31 R30 K72 ["FillDirection"]
  GETIMPORT R31 K81 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R31 R30 K73 ["HorizontalAlignment"]
  GETIMPORT R31 K83 [Enum.VerticalAlignment.Center]
  SETTABLEKS R31 R30 K74 ["VerticalAlignment"]
  GETIMPORT R31 K84 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R31 R30 K75 ["SortOrder"]
  GETIMPORT R31 K71 [UDim.new]
  LOADN R32 0
  LOADN R33 24
  CALL R31 2 1
  SETTABLEKS R31 R30 K76 ["Padding"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K57 ["UIListLayout"]
  MOVE R28 R18
  JUMPIFNOT R28 [+74]
  GETUPVAL R29 7
  GETTABLEKS R28 R29 K47 ["createElement"]
  LOADK R29 K48 ["Frame"]
  DUPTABLE R30 K85 [{"Size", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
  GETIMPORT R31 K87 [UDim2.new]
  LOADN R32 0
  LOADN R33 160
  LOADN R34 0
  LOADN R35 40
  CALL R31 4 1
  SETTABLEKS R31 R30 K3 ["Size"]
  LOADN R31 1
  SETTABLEKS R31 R30 K49 ["BackgroundTransparency"]
  LOADN R31 0
  SETTABLEKS R31 R30 K52 ["BorderSizePixel"]
  LOADN R31 3
  SETTABLEKS R31 R30 K4 ["LayoutOrder"]
  DUPTABLE R31 K89 [{"TextField"}]
  GETUPVAL R33 7
  GETTABLEKS R32 R33 K47 ["createElement"]
  GETUPVAL R33 8
  DUPTABLE R34 K95 [{"ForceOnTextChange", "OnTextChanged", "PlaceholderText", "Size", "Style", "Text"}]
  LOADB R35 1
  SETTABLEKS R35 R34 K90 ["ForceOnTextChange"]
  GETTABLEKS R35 R0 K96 ["onAnimationIDChanged"]
  SETTABLEKS R35 R34 K91 ["OnTextChanged"]
  GETTABLEKS R35 R1 K20 ["Localization"]
  LOADK R37 K97 ["AssetConfigAnimation"]
  LOADK R38 K98 ["AnimationID"]
  NAMECALL R35 R35 K23 ["getText"]
  CALL R35 3 1
  SETTABLEKS R35 R34 K92 ["PlaceholderText"]
  GETIMPORT R35 K87 [UDim2.new]
  LOADN R36 1
  LOADN R37 0
  LOADN R38 1
  LOADN R39 0
  CALL R35 4 1
  SETTABLEKS R35 R34 K3 ["Size"]
  JUMPIFNOT R20 [+2]
  LOADK R35 K99 ["FilledRoundedRedBorder"]
  JUMP [+1]
  LOADK R35 K100 ["FilledRoundedBorder"]
  SETTABLEKS R35 R34 K93 ["Style"]
  JUMPIFNOT R19 [+6]
  FASTCALL1 TOSTRING R19 [+3]
  MOVE R36 R19
  GETIMPORT R35 K102 [tostring]
  CALL R35 1 1
  JUMPIF R35 [+1]
  LOADNIL R35
  SETTABLEKS R35 R34 K94 ["Text"]
  CALL R32 2 1
  SETTABLEKS R32 R31 K88 ["TextField"]
  CALL R28 3 1
  SETTABLEKS R28 R27 K58 ["AnimationIdBox"]
  MOVE R28 R18
  JUMPIFNOT R28 [+54]
  NOT R28 R14
  JUMPIFNOT R28 [+52]
  GETUPVAL R29 7
  GETTABLEKS R28 R29 K47 ["createElement"]
  LOADK R29 K103 ["TextLabel"]
  DUPTABLE R30 K109 [{"BackgroundTransparency", "Font", "Text", "TextColor3", "TextSize", "Size", "TextYAlignment", "TextXAlignment", "LayoutOrder"}]
  LOADN R31 1
  SETTABLEKS R31 R30 K49 ["BackgroundTransparency"]
  GETUPVAL R32 9
  GETTABLEKS R31 R32 K110 ["FONT"]
  SETTABLEKS R31 R30 K104 ["Font"]
  GETTABLEKS R31 R1 K20 ["Localization"]
  LOADK R33 K97 ["AssetConfigAnimation"]
  LOADK R34 K111 ["InvalidAnimationID"]
  NAMECALL R31 R31 K23 ["getText"]
  CALL R31 3 1
  SETTABLEKS R31 R30 K94 ["Text"]
  GETTABLEKS R31 R3 K112 ["redText"]
  SETTABLEKS R31 R30 K105 ["TextColor3"]
  GETUPVAL R32 9
  GETTABLEKS R31 R32 K113 ["FONT_SIZE_MEDIUM"]
  SETTABLEKS R31 R30 K106 ["TextSize"]
  GETIMPORT R31 K87 [UDim2.new]
  LOADN R32 0
  LOADN R33 96
  LOADN R34 1
  LOADN R35 0
  CALL R31 4 1
  SETTABLEKS R31 R30 K3 ["Size"]
  GETIMPORT R31 K114 [Enum.TextYAlignment.Center]
  SETTABLEKS R31 R30 K107 ["TextYAlignment"]
  GETIMPORT R31 K115 [Enum.TextXAlignment.Center]
  SETTABLEKS R31 R30 K108 ["TextXAlignment"]
  LOADN R31 2
  SETTABLEKS R31 R30 K4 ["LayoutOrder"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K59 ["InvalidAnimationLabel"]
  GETUPVAL R29 7
  GETTABLEKS R28 R29 K47 ["createElement"]
  GETUPVAL R29 10
  DUPTABLE R30 K117 [{"LayoutOrder", "OnClick", "Style", "Size", "Text"}]
  LOADN R31 4
  SETTABLEKS R31 R30 K4 ["LayoutOrder"]
  SETTABLEKS R7 R30 K116 ["OnClick"]
  LOADK R31 K118 ["Round"]
  SETTABLEKS R31 R30 K93 ["Style"]
  GETIMPORT R31 K87 [UDim2.new]
  LOADN R32 0
  LOADN R33 140
  LOADN R34 0
  LOADN R35 40
  CALL R31 4 1
  SETTABLEKS R31 R30 K3 ["Size"]
  GETTABLEKS R31 R1 K20 ["Localization"]
  LOADK R33 K119 ["General"]
  LOADK R34 K120 ["SearchOptionsCancel"]
  NAMECALL R31 R31 K23 ["getText"]
  CALL R31 3 1
  SETTABLEKS R31 R30 K94 ["Text"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K60 ["CancelButton"]
  GETUPVAL R29 7
  GETTABLEKS R28 R29 K47 ["createElement"]
  GETUPVAL R29 10
  DUPTABLE R30 K122 [{"LayoutOrder", "OnClick", "Style", "StyleModifier", "Size", "Text"}]
  LOADN R31 5
  SETTABLEKS R31 R30 K4 ["LayoutOrder"]
  NEWCLOSURE R31 P0
  CAPTURE REF R21
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  CAPTURE VAL R6
  SETTABLEKS R31 R30 K116 ["OnClick"]
  LOADK R31 K123 ["RoundPrimary"]
  SETTABLEKS R31 R30 K93 ["Style"]
  JUMPIF R21 [+4]
  GETUPVAL R32 11
  GETTABLEKS R31 R32 K124 ["Disabled"]
  JUMPIF R31 [+1]
  LOADNIL R31
  SETTABLEKS R31 R30 K121 ["StyleModifier"]
  GETIMPORT R31 K87 [UDim2.new]
  LOADN R32 0
  LOADN R33 140
  LOADN R34 0
  LOADN R35 40
  CALL R31 4 1
  SETTABLEKS R31 R30 K3 ["Size"]
  SETTABLEKS R22 R30 K94 ["Text"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K61 ["PublishButton"]
  MOVE R28 R15
  JUMPIFNOT R28 [+34]
  GETUPVAL R29 7
  GETTABLEKS R28 R29 K47 ["createElement"]
  GETUPVAL R29 12
  DUPTABLE R30 K126 [{"Size", "Text", "TextSize", "Font", "onActivated", "LayoutOrder"}]
  GETIMPORT R31 K87 [UDim2.new]
  LOADN R32 1
  LOADN R33 184
  LOADN R34 0
  LOADN R35 20
  CALL R31 4 1
  SETTABLEKS R31 R30 K3 ["Size"]
  SETTABLEKS R16 R30 K94 ["Text"]
  GETUPVAL R32 9
  GETTABLEKS R31 R32 K113 ["FONT_SIZE_MEDIUM"]
  SETTABLEKS R31 R30 K106 ["TextSize"]
  GETUPVAL R32 9
  GETTABLEKS R31 R32 K110 ["FONT"]
  SETTABLEKS R31 R30 K104 ["Font"]
  GETTABLEKS R31 R0 K127 ["onFlowButtonActivated"]
  SETTABLEKS R31 R30 K125 ["onActivated"]
  LOADN R31 1
  SETTABLEKS R31 R30 K4 ["LayoutOrder"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K62 ["ToggleOverrideButton"]
  CALL R24 3 -1
  CLOSEUPVALS R21
  RETURN R24 -1

PROTO_8:
  MOVE R2 R0
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  MOVE R0 R2
  DUPTABLE R2 K7 [{"currentTab", "instances", "screenFlowType", "assetTypeEnum", "isUploadFeeEnabled", "uploadFee", "canAffordUploadFee"}]
  GETTABLEKS R3 R0 K0 ["currentTab"]
  SETTABLEKS R3 R2 K0 ["currentTab"]
  GETTABLEKS R3 R0 K1 ["instances"]
  SETTABLEKS R3 R2 K1 ["instances"]
  GETTABLEKS R3 R0 K2 ["screenFlowType"]
  SETTABLEKS R3 R2 K2 ["screenFlowType"]
  GETTABLEKS R3 R0 K3 ["assetTypeEnum"]
  SETTABLEKS R3 R2 K3 ["assetTypeEnum"]
  GETTABLEKS R3 R0 K4 ["isUploadFeeEnabled"]
  SETTABLEKS R3 R2 K4 ["isUploadFeeEnabled"]
  GETTABLEKS R3 R0 K5 ["uploadFee"]
  SETTABLEKS R3 R2 K5 ["uploadFee"]
  GETTABLEKS R3 R0 K6 ["canAffordUploadFee"]
  SETTABLEKS R3 R2 K6 ["canAffordUploadFee"]
  GETTABLEKS R3 R0 K8 ["validateAnimationSucceeded"]
  SETTABLEKS R3 R2 K8 ["validateAnimationSucceeded"]
  RETURN R2 1

PROTO_9:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_11:
  DUPTABLE R1 K1 [{"toggleOverride"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["toggleOverride"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K2 ["validateAnimation"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R1 K7 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R1 K8 ["Framework"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K9 ["ContextServices"]
  GETTABLEKS R5 R4 K10 ["withContext"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K11 ["Core"]
  GETTABLEKS R8 R9 K9 ["ContextServices"]
  GETTABLEKS R7 R8 K12 ["NetworkContext"]
  CALL R6 1 1
  GETTABLEKS R8 R0 K11 ["Core"]
  GETTABLEKS R7 R8 K13 ["Util"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R7 K14 ["Constants"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R7 K15 ["ScreenSetup"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R11 R7 K16 ["AssetConfigConstants"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R12 R7 K17 ["AssetConfigUtil"]
  CALL R11 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R14 R1 K8 ["Framework"]
  CALL R13 1 1
  GETTABLEKS R12 R13 K13 ["Util"]
  GETIMPORT R15 K5 [require]
  GETTABLEKS R16 R1 K8 ["Framework"]
  CALL R15 1 1
  GETTABLEKS R14 R15 K13 ["Util"]
  GETTABLEKS R13 R14 K18 ["StyleModifier"]
  GETIMPORT R14 K5 [require]
  GETTABLEKS R15 R1 K8 ["Framework"]
  CALL R14 1 1
  GETTABLEKS R15 R14 K19 ["UI"]
  GETTABLEKS R16 R15 K20 ["Button"]
  GETTABLEKS R17 R15 K21 ["DEPRECATED_TextInput"]
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K11 ["Core"]
  GETTABLEKS R20 R21 K22 ["Types"]
  GETTABLEKS R19 R20 K23 ["ConfigTypes"]
  CALL R18 1 1
  GETTABLEKS R21 R0 K11 ["Core"]
  GETTABLEKS R20 R21 K24 ["Networking"]
  GETTABLEKS R19 R20 K25 ["Requests"]
  GETIMPORT R20 K5 [require]
  GETTABLEKS R21 R19 K26 ["ToggleOverrideRequest"]
  CALL R20 1 1
  GETIMPORT R21 K5 [require]
  GETTABLEKS R22 R19 K27 ["ValidateAnimationRequest"]
  CALL R21 1 1
  GETTABLEKS R24 R0 K11 ["Core"]
  GETTABLEKS R23 R24 K28 ["Components"]
  GETTABLEKS R22 R23 K29 ["AssetConfiguration"]
  GETIMPORT R23 K5 [require]
  GETTABLEKS R24 R22 K30 ["LinkButton"]
  CALL R23 1 1
  GETTABLEKS R24 R2 K31 ["Component"]
  LOADK R26 K32 ["AssetConfigFooter"]
  NAMECALL R24 R24 K33 ["extend"]
  CALL R24 2 1
  GETIMPORT R25 K35 [game]
  LOADK R27 K36 ["AssetConfigFixBadIdVerifyState"]
  NAMECALL R25 R25 K37 ["GetFastFlag"]
  CALL R25 2 1
  GETIMPORT R26 K5 [require]
  GETTABLEKS R29 R0 K11 ["Core"]
  GETTABLEKS R28 R29 K38 ["Flags"]
  GETTABLEKS R27 R28 K39 ["getFFlagToolboxAddPackageVersionDescriptions"]
  CALL R26 1 1
  GETIMPORT R27 K5 [require]
  GETTABLEKS R31 R0 K11 ["Core"]
  GETTABLEKS R30 R31 K13 ["Util"]
  GETTABLEKS R29 R30 K40 ["SharedFlags"]
  GETTABLEKS R28 R29 K41 ["getFFlagToolboxFixDoublePublish"]
  CALL R27 1 1
  GETIMPORT R28 K44 [utf8.char]
  LOADK R29 K45 [57346]
  CALL R28 1 1
  DUPCLOSURE R29 K46 [PROTO_2]
  CAPTURE VAL R27
  SETTABLEKS R29 R24 K47 ["init"]
  DUPCLOSURE R29 K48 [PROTO_3]
  CAPTURE VAL R25
  CAPTURE VAL R12
  SETTABLEKS R29 R24 K49 ["shouldUpdate"]
  DUPCLOSURE R29 K50 [PROTO_4]
  CAPTURE VAL R28
  SETTABLEKS R29 R24 K51 ["getUploadFeeWithRobuxIcon"]
  DUPCLOSURE R29 K52 [PROTO_7]
  CAPTURE VAL R25
  CAPTURE VAL R9
  CAPTURE VAL R18
  CAPTURE VAL R10
  CAPTURE VAL R27
  CAPTURE VAL R26
  CAPTURE VAL R11
  CAPTURE VAL R2
  CAPTURE VAL R17
  CAPTURE VAL R8
  CAPTURE VAL R16
  CAPTURE VAL R13
  CAPTURE VAL R23
  SETTABLEKS R29 R24 K53 ["render"]
  DUPCLOSURE R29 K54 [PROTO_8]
  DUPCLOSURE R30 K55 [PROTO_11]
  CAPTURE VAL R20
  CAPTURE VAL R21
  MOVE R31 R5
  DUPTABLE R32 K59 [{"Stylizer", "Localization", "Network"}]
  GETTABLEKS R33 R4 K56 ["Stylizer"]
  SETTABLEKS R33 R32 K56 ["Stylizer"]
  GETTABLEKS R33 R4 K57 ["Localization"]
  SETTABLEKS R33 R32 K57 ["Localization"]
  SETTABLEKS R6 R32 K58 ["Network"]
  CALL R31 1 1
  MOVE R32 R24
  CALL R31 1 1
  MOVE R24 R31
  GETTABLEKS R31 R3 K60 ["connect"]
  MOVE R32 R29
  MOVE R33 R30
  CALL R31 2 1
  MOVE R32 R24
  CALL R31 1 -1
  RETURN R31 -1
