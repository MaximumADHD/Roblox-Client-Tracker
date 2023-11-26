PROTO_0:
  GETUPVAL R1 0
  GETUPVAL R3 1
  NAMECALL R1 R1 K0 ["GetHttpEnabled"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K1 ["HttpEnabled"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETUPVAL R3 1
  NAMECALL R1 R1 K0 ["GetStudioAccessToApisAllowed"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K1 ["StudioAccessToApisAllowed"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETUPVAL R3 1
  NAMECALL R1 R1 K0 ["GetThirdPartyPurchasesAllowed"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K1 ["ThirdPartyPurchaseAllowed"]
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETUPVAL R3 1
  NAMECALL R1 R1 K0 ["GetThirdPartyTeleportsAllowed"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K1 ["ThirdPartyTeleportAllowed"]
  RETURN R0 0

PROTO_4:
  NAMECALL R2 R0 K0 ["getState"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K1 ["Metadata"]
  GETTABLEKS R3 R4 K2 ["game"]
  GETTABLEKS R5 R2 K1 ["Metadata"]
  GETTABLEKS R4 R5 K3 ["gameId"]
  GETTABLEKS R5 R1 K4 ["universePermissionsController"]
  NEWTABLE R6 0 4
  NEWCLOSURE R7 P0
  CAPTURE VAL R5
  CAPTURE VAL R3
  NEWCLOSURE R8 P1
  CAPTURE VAL R5
  CAPTURE VAL R4
  NEWCLOSURE R9 P2
  CAPTURE VAL R5
  CAPTURE VAL R4
  NEWCLOSURE R10 P3
  CAPTURE VAL R5
  CAPTURE VAL R4
  SETLIST R6 R7 4 [1]
  RETURN R6 1

PROTO_5:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Settings"]
  GETTABLEKS R1 R2 K1 ["Changed"]
  GETUPVAL R2 1
  GETTABLE R0 R1 R2
  JUMPIFEQKNIL R0 [+10]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K2 ["onSecuritySettingChange"]
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R1 2 0
  GETUPVAL R1 3
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_6:
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  CAPTURE VAL R2
  RETURN R3 1

PROTO_7:
  GETUPVAL R1 0
  GETIMPORT R3 K1 [game]
  MOVE R4 R0
  NAMECALL R1 R1 K2 ["SetHttpEnabled"]
  CALL R1 3 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  GETUPVAL R3 1
  MOVE R4 R0
  NAMECALL R1 R1 K0 ["SetStudioAccessToApisAllowed"]
  CALL R1 3 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  GETUPVAL R3 1
  MOVE R4 R0
  NAMECALL R1 R1 K0 ["SetThirdPartyPurchasesAllowed"]
  CALL R1 3 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  GETUPVAL R3 1
  MOVE R4 R0
  NAMECALL R1 R1 K0 ["SetThirdPartyTeleportsAllowed"]
  CALL R1 3 0
  RETURN R0 0

PROTO_11:
  NAMECALL R2 R0 K0 ["getState"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K1 ["Metadata"]
  GETTABLEKS R3 R4 K2 ["gameId"]
  GETTABLEKS R4 R1 K3 ["universePermissionsController"]
  NEWTABLE R5 0 4
  NEWCLOSURE R7 P0
  CAPTURE VAL R4
  LOADK R8 K4 ["HttpEnabled"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE UPVAL U0
  CAPTURE VAL R7
  NEWCLOSURE R8 P2
  CAPTURE VAL R4
  CAPTURE VAL R3
  LOADK R9 K5 ["StudioAccessToApisAllowed"]
  NEWCLOSURE R7 P1
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE UPVAL U0
  CAPTURE VAL R8
  NEWCLOSURE R9 P3
  CAPTURE VAL R4
  CAPTURE VAL R3
  LOADK R10 K6 ["ThirdPartyPurchaseAllowed"]
  NEWCLOSURE R8 P1
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE UPVAL U0
  CAPTURE VAL R9
  NEWCLOSURE R10 P4
  CAPTURE VAL R4
  CAPTURE VAL R3
  LOADK R11 K7 ["ThirdPartyTeleportAllowed"]
  NEWCLOSURE R9 P1
  CAPTURE VAL R2
  CAPTURE VAL R11
  CAPTURE UPVAL U0
  CAPTURE VAL R10
  SETLIST R5 R6 4 [1]
  RETURN R5 1

PROTO_12:
  DUPTABLE R2 K7 [{"HttpEnabled", "StudioAccessToApisAllowed", "ThirdPartyPurchaseAllowed", "ThirdPartyTeleportAllowed", "HttpEnabledValueChanged", "ThirdPartyPurchaseAllowedValueChanged", "ThirdPartyTeleportAllowedValueChanged"}]
  MOVE R3 R0
  LOADK R4 K0 ["HttpEnabled"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K0 ["HttpEnabled"]
  MOVE R3 R0
  LOADK R4 K1 ["StudioAccessToApisAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K1 ["StudioAccessToApisAllowed"]
  MOVE R3 R0
  LOADK R4 K2 ["ThirdPartyPurchaseAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K2 ["ThirdPartyPurchaseAllowed"]
  MOVE R3 R0
  LOADK R4 K3 ["ThirdPartyTeleportAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K3 ["ThirdPartyTeleportAllowed"]
  MOVE R3 R1
  LOADK R4 K0 ["HttpEnabled"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K4 ["HttpEnabledValueChanged"]
  MOVE R3 R1
  LOADK R4 K2 ["ThirdPartyPurchaseAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K5 ["ThirdPartyPurchaseAllowedValueChanged"]
  MOVE R3 R1
  LOADK R4 K3 ["ThirdPartyTeleportAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K6 ["ThirdPartyTeleportAllowedValueChanged"]
  RETURN R2 1

PROTO_13:
  DUPTABLE R2 K4 [{"HttpEnabledChanged", "StudioApiServicesChanged", "ThirdPartyPurchaseChanged", "ThirdPartyTeleportAllowedChanged"}]
  MOVE R3 R0
  LOADK R4 K5 ["HttpEnabled"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K0 ["HttpEnabledChanged"]
  MOVE R3 R0
  LOADK R4 K6 ["StudioAccessToApisAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K1 ["StudioApiServicesChanged"]
  MOVE R3 R0
  LOADK R4 K7 ["ThirdPartyPurchaseAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K2 ["ThirdPartyPurchaseChanged"]
  MOVE R3 R0
  LOADK R4 K8 ["ThirdPartyTeleportAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K3 ["ThirdPartyTeleportAllowedChanged"]
  RETURN R2 1

PROTO_14:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["HttpEnabledChanged"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["HttpEnabled"]
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["StudioApiServicesChanged"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["StudioAccessToApisAllowed"]
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["ThirdPartyPurchaseChanged"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["ThirdPartyPurchaseAllowed"]
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["ThirdPartyTeleportAllowedChanged"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["ThirdPartyTeleportAllowed"]
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["Localization"]
  GETTABLEKS R3 R0 K2 ["HttpEnabledValueChanged"]
  JUMPIFNOT R3 [+3]
  GETTABLEKS R2 R0 K3 ["HttpEnabled"]
  JUMPIF R2 [+11]
  GETTABLEKS R3 R0 K4 ["ThirdPartyPurchaseAllowedValueChanged"]
  JUMPIFNOT R3 [+3]
  GETTABLEKS R2 R0 K5 ["ThirdPartyPurchaseAllowed"]
  JUMPIF R2 [+5]
  GETTABLEKS R2 R0 K6 ["ThirdPartyTeleportAllowedValueChanged"]
  JUMPIFNOT R2 [+2]
  GETTABLEKS R2 R0 K7 ["ThirdPartyTeleportAllowed"]
  GETTABLEKS R3 R0 K8 ["Stylizer"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K9 ["new"]
  LOADN R5 1
  CALL R4 1 1
  DUPTABLE R5 K14 [{"InsecureWarning", "HttpEnabled", "StudioApiServicesEnabled", "ThirdPartyPurchasesEnabled", "ThirdPartyTeleportsEnabled"}]
  MOVE R6 R2
  JUMPIFNOT R6 [+134]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K15 ["createElement"]
  LOADK R7 K16 ["Frame"]
  DUPTABLE R8 K21 [{"AutomaticSize", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
  GETIMPORT R9 K24 [Enum.AutomaticSize.XY]
  SETTABLEKS R9 R8 K17 ["AutomaticSize"]
  LOADN R9 1
  SETTABLEKS R9 R8 K18 ["BackgroundTransparency"]
  LOADN R9 0
  SETTABLEKS R9 R8 K19 ["BorderSizePixel"]
  NAMECALL R9 R4 K25 ["getNextOrder"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K20 ["LayoutOrder"]
  DUPTABLE R9 K29 [{"UILayout", "Warning", "Description"}]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K15 ["createElement"]
  LOADK R11 K30 ["UIListLayout"]
  DUPTABLE R12 K35 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R13 K37 [Enum.FillDirection.Horizontal]
  SETTABLEKS R13 R12 K31 ["FillDirection"]
  GETIMPORT R13 K39 [UDim.new]
  LOADN R14 0
  GETTABLEKS R16 R3 K40 ["dialog"]
  GETTABLEKS R15 R16 K41 ["spacing"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K32 ["Padding"]
  GETIMPORT R13 K42 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R13 R12 K33 ["SortOrder"]
  GETIMPORT R13 K44 [Enum.VerticalAlignment.Center]
  SETTABLEKS R13 R12 K34 ["VerticalAlignment"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K26 ["UILayout"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K15 ["createElement"]
  LOADK R11 K45 ["ImageLabel"]
  DUPTABLE R12 K48 [{"Image", "LayoutOrder", "BackgroundTransparency", "Size"}]
  GETTABLEKS R13 R3 K49 ["warningIcon"]
  SETTABLEKS R13 R12 K46 ["Image"]
  NAMECALL R13 R4 K25 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K20 ["LayoutOrder"]
  LOADN R13 1
  SETTABLEKS R13 R12 K18 ["BackgroundTransparency"]
  GETIMPORT R13 K51 [UDim2.new]
  LOADN R14 0
  GETTABLEKS R17 R3 K52 ["warningDialog"]
  GETTABLEKS R16 R17 K53 ["icon"]
  GETTABLEKS R15 R16 K54 ["size"]
  LOADN R16 0
  GETTABLEKS R19 R3 K52 ["warningDialog"]
  GETTABLEKS R18 R19 K53 ["icon"]
  GETTABLEKS R17 R18 K54 ["size"]
  CALL R13 4 1
  SETTABLEKS R13 R12 K47 ["Size"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K27 ["Warning"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K15 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K60 [{"AutomaticSize", "LayoutOrder", "Style", "Text", "TextXAlignment", "TextColor", "TextSize"}]
  GETIMPORT R13 K24 [Enum.AutomaticSize.XY]
  SETTABLEKS R13 R12 K17 ["AutomaticSize"]
  NAMECALL R13 R4 K25 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K20 ["LayoutOrder"]
  LOADK R13 K61 ["SubText"]
  SETTABLEKS R13 R12 K55 ["Style"]
  LOADK R15 K62 ["Security"]
  LOADK R16 K10 ["InsecureWarning"]
  NAMECALL R13 R1 K63 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K56 ["Text"]
  GETIMPORT R13 K65 [Enum.TextXAlignment.Left]
  SETTABLEKS R13 R12 K57 ["TextXAlignment"]
  GETTABLEKS R13 R3 K66 ["warningColor"]
  SETTABLEKS R13 R12 K58 ["TextColor"]
  GETTABLEKS R15 R3 K67 ["fontStyle"]
  GETTABLEKS R14 R15 K68 ["Subtitle"]
  GETTABLEKS R13 R14 K59 ["TextSize"]
  SETTABLEKS R13 R12 K59 ["TextSize"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K28 ["Description"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K10 ["InsecureWarning"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K15 ["createElement"]
  GETUPVAL R7 4
  DUPTABLE R8 K73 [{"Description", "Disabled", "LayoutOrder", "OnClick", "Selected", "Title"}]
  LOADK R11 K74 ["General"]
  LOADK R12 K75 ["HttpDesc"]
  NAMECALL R9 R1 K63 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K28 ["Description"]
  GETTABLEKS R10 R0 K3 ["HttpEnabled"]
  JUMPIFEQKNIL R10 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  SETTABLEKS R9 R8 K69 ["Disabled"]
  NAMECALL R9 R4 K25 ["getNextOrder"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K20 ["LayoutOrder"]
  NEWCLOSURE R9 P0
  CAPTURE VAL R0
  SETTABLEKS R9 R8 K70 ["OnClick"]
  GETTABLEKS R9 R0 K3 ["HttpEnabled"]
  SETTABLEKS R9 R8 K71 ["Selected"]
  LOADK R11 K74 ["General"]
  LOADK R12 K76 ["TitleHttp"]
  NAMECALL R9 R1 K63 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K72 ["Title"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K3 ["HttpEnabled"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K15 ["createElement"]
  GETUPVAL R7 4
  DUPTABLE R8 K73 [{"Description", "Disabled", "LayoutOrder", "OnClick", "Selected", "Title"}]
  LOADK R11 K74 ["General"]
  LOADK R12 K77 ["StudioApiServicesDesc"]
  NAMECALL R9 R1 K63 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K28 ["Description"]
  GETTABLEKS R10 R0 K78 ["StudioAccessToApisAllowed"]
  JUMPIFEQKNIL R10 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  SETTABLEKS R9 R8 K69 ["Disabled"]
  NAMECALL R9 R4 K25 ["getNextOrder"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K20 ["LayoutOrder"]
  NEWCLOSURE R9 P1
  CAPTURE VAL R0
  SETTABLEKS R9 R8 K70 ["OnClick"]
  GETTABLEKS R9 R0 K78 ["StudioAccessToApisAllowed"]
  SETTABLEKS R9 R8 K71 ["Selected"]
  LOADK R11 K74 ["General"]
  LOADK R12 K79 ["TitleStudioApiServices"]
  NAMECALL R9 R1 K63 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K72 ["Title"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K11 ["StudioApiServicesEnabled"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K15 ["createElement"]
  GETUPVAL R7 4
  DUPTABLE R8 K73 [{"Description", "Disabled", "LayoutOrder", "OnClick", "Selected", "Title"}]
  LOADK R11 K62 ["Security"]
  LOADK R12 K80 ["EnableThirdPartyPurchasesDescription"]
  NAMECALL R9 R1 K63 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K28 ["Description"]
  GETTABLEKS R10 R0 K5 ["ThirdPartyPurchaseAllowed"]
  JUMPIFEQKNIL R10 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  SETTABLEKS R9 R8 K69 ["Disabled"]
  NAMECALL R9 R4 K25 ["getNextOrder"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K20 ["LayoutOrder"]
  NEWCLOSURE R9 P2
  CAPTURE VAL R0
  SETTABLEKS R9 R8 K70 ["OnClick"]
  GETTABLEKS R9 R0 K5 ["ThirdPartyPurchaseAllowed"]
  SETTABLEKS R9 R8 K71 ["Selected"]
  LOADK R11 K62 ["Security"]
  LOADK R12 K81 ["EnableThirdPartyPurchases"]
  NAMECALL R9 R1 K63 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K72 ["Title"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K12 ["ThirdPartyPurchasesEnabled"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K15 ["createElement"]
  GETUPVAL R7 4
  DUPTABLE R8 K73 [{"Description", "Disabled", "LayoutOrder", "OnClick", "Selected", "Title"}]
  LOADK R11 K62 ["Security"]
  LOADK R12 K82 ["EnableThirdPartyTeleportsDescription"]
  NAMECALL R9 R1 K63 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K28 ["Description"]
  GETTABLEKS R10 R0 K7 ["ThirdPartyTeleportAllowed"]
  JUMPIFEQKNIL R10 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  SETTABLEKS R9 R8 K69 ["Disabled"]
  NAMECALL R9 R4 K25 ["getNextOrder"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K20 ["LayoutOrder"]
  NEWCLOSURE R9 P3
  CAPTURE VAL R0
  SETTABLEKS R9 R8 K70 ["OnClick"]
  GETTABLEKS R9 R0 K7 ["ThirdPartyTeleportAllowed"]
  SETTABLEKS R9 R8 K71 ["Selected"]
  LOADK R11 K62 ["Security"]
  LOADK R12 K83 ["EnableThirdPartyTeleports"]
  NAMECALL R9 R1 K63 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K72 ["Title"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K13 ["ThirdPartyTeleportsEnabled"]
  RETURN R5 1

PROTO_19:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Localization"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["createElement"]
  GETUPVAL R4 4
  DUPTABLE R5 K8 [{"SettingsLoadJobs", "SettingsSaveJobs", "Title", "PageId", "CreateChildren"}]
  GETUPVAL R6 5
  SETTABLEKS R6 R5 K3 ["SettingsLoadJobs"]
  GETUPVAL R6 6
  SETTABLEKS R6 R5 K4 ["SettingsSaveJobs"]
  LOADK R8 K9 ["General"]
  LOADK R10 K10 ["Category"]
  GETUPVAL R11 7
  CONCAT R9 R10 R11
  NAMECALL R6 R1 K11 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K5 ["Title"]
  GETUPVAL R6 7
  SETTABLEKS R6 R5 K6 ["PageId"]
  SETTABLEKS R2 R5 K7 ["CreateChildren"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_20:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["Settings"]
  MOVE R3 R0
  CALL R1 2 -1
  RETURN R1 -1

PROTO_21:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["Settings"]
  GETTABLEKS R3 R4 K1 ["Changed"]
  GETTABLE R2 R3 R0
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_22:
  JUMPIF R0 [+1]
  RETURN R0 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  NEWCLOSURE R3 P1
  CAPTURE VAL R0
  GETUPVAL R4 1
  MOVE R5 R2
  MOVE R6 R3
  CALL R4 2 1
  RETURN R4 1

PROTO_23:
  GETUPVAL R1 0
  GETUPVAL R2 1
  GETUPVAL R3 2
  MOVE R4 R0
  CALL R2 2 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_24:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  RETURN R1 1

PROTO_25:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  GETUPVAL R2 1
  MOVE R3 R1
  MOVE R4 R0
  CALL R2 2 1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K9 ["ContextServices"]
  GETTABLEKS R5 R4 K10 ["withContext"]
  GETTABLEKS R6 R3 K11 ["UI"]
  GETTABLEKS R7 R6 K12 ["TextLabel"]
  GETTABLEKS R8 R3 K13 ["Util"]
  GETTABLEKS R9 R8 K14 ["LayoutOrderIterator"]
  GETIMPORT R10 K4 [require]
  GETTABLEKS R13 R0 K15 ["Src"]
  GETTABLEKS R12 R13 K16 ["Components"]
  GETTABLEKS R11 R12 K17 ["ToggleButtonWithTitle"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R14 R0 K15 ["Src"]
  GETTABLEKS R13 R14 K18 ["Actions"]
  GETTABLEKS R12 R13 K19 ["AddChange"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R16 R0 K15 ["Src"]
  GETTABLEKS R15 R16 K16 ["Components"]
  GETTABLEKS R14 R15 K20 ["SettingsPages"]
  GETTABLEKS R13 R14 K21 ["SettingsPage"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R16 R0 K15 ["Src"]
  GETTABLEKS R15 R16 K13 ["Util"]
  GETTABLEKS R14 R15 K22 ["Analytics"]
  CALL R13 1 1
  GETIMPORT R15 K1 [script]
  GETTABLEKS R14 R15 K23 ["Name"]
  DUPCLOSURE R15 K24 [PROTO_4]
  DUPCLOSURE R16 K25 [PROTO_6]
  CAPTURE VAL R13
  DUPCLOSURE R17 K26 [PROTO_11]
  CAPTURE VAL R13
  DUPCLOSURE R18 K27 [PROTO_12]
  DUPCLOSURE R19 K28 [PROTO_13]
  GETTABLEKS R20 R1 K29 ["PureComponent"]
  GETIMPORT R23 K1 [script]
  GETTABLEKS R22 R23 K23 ["Name"]
  NAMECALL R20 R20 K30 ["extend"]
  CALL R20 2 1
  DUPCLOSURE R21 K31 [PROTO_19]
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R10
  CAPTURE VAL R12
  CAPTURE VAL R15
  CAPTURE VAL R17
  CAPTURE VAL R14
  SETTABLEKS R21 R20 K32 ["render"]
  MOVE R21 R5
  DUPTABLE R22 K35 [{"Localization", "Stylizer"}]
  GETTABLEKS R23 R4 K33 ["Localization"]
  SETTABLEKS R23 R22 K33 ["Localization"]
  GETTABLEKS R23 R4 K34 ["Stylizer"]
  SETTABLEKS R23 R22 K34 ["Stylizer"]
  CALL R21 1 1
  MOVE R22 R20
  CALL R21 1 1
  MOVE R20 R21
  GETIMPORT R21 K4 [require]
  GETTABLEKS R24 R0 K15 ["Src"]
  GETTABLEKS R23 R24 K36 ["Networking"]
  GETTABLEKS R22 R23 K37 ["settingFromState"]
  CALL R21 1 1
  GETTABLEKS R22 R2 K38 ["connect"]
  DUPCLOSURE R23 K39 [PROTO_22]
  CAPTURE VAL R21
  CAPTURE VAL R18
  DUPCLOSURE R24 K40 [PROTO_25]
  CAPTURE VAL R11
  CAPTURE VAL R19
  CALL R22 2 1
  MOVE R23 R20
  CALL R22 1 1
  MOVE R20 R22
  SETTABLEKS R14 R20 K41 ["LocalizationId"]
  RETURN R20 1
