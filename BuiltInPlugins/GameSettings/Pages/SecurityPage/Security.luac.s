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
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["GetSecrets"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["Secrets"]
  RETURN R0 0

PROTO_5:
  NAMECALL R2 R0 K0 ["getState"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K1 ["Metadata"]
  GETTABLEKS R3 R4 K2 ["game"]
  GETTABLEKS R5 R2 K1 ["Metadata"]
  GETTABLEKS R4 R5 K3 ["gameId"]
  GETTABLEKS R5 R1 K4 ["universePermissionsController"]
  NEWTABLE R6 0 5
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
  NEWCLOSURE R12 P4
  CAPTURE VAL R5
  ORK R11 R12 K5 []
  SETLIST R6 R7 5 [1]
  RETURN R6 1

PROTO_6:
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

PROTO_7:
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  CAPTURE VAL R2
  RETURN R3 1

PROTO_8:
  GETUPVAL R1 0
  GETIMPORT R3 K1 [game]
  MOVE R4 R0
  NAMECALL R1 R1 K2 ["SetHttpEnabled"]
  CALL R1 3 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["SetSecrets"]
  CALL R1 2 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  GETUPVAL R3 1
  MOVE R4 R0
  NAMECALL R1 R1 K0 ["SetStudioAccessToApisAllowed"]
  CALL R1 3 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  GETUPVAL R3 1
  MOVE R4 R0
  NAMECALL R1 R1 K0 ["SetThirdPartyPurchasesAllowed"]
  CALL R1 3 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  GETUPVAL R3 1
  MOVE R4 R0
  NAMECALL R1 R1 K0 ["SetThirdPartyTeleportsAllowed"]
  CALL R1 3 0
  RETURN R0 0

PROTO_13:
  NAMECALL R2 R0 K0 ["getState"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K1 ["Metadata"]
  GETTABLEKS R3 R4 K2 ["gameId"]
  GETTABLEKS R4 R1 K3 ["universePermissionsController"]
  NEWTABLE R5 0 5
  NEWCLOSURE R7 P0
  CAPTURE VAL R4
  LOADK R8 K4 ["HttpEnabled"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE UPVAL U0
  CAPTURE VAL R7
  NEWCLOSURE R9 P2
  CAPTURE VAL R4
  LOADK R10 K6 ["Secrets"]
  NEWCLOSURE R8 P1
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE UPVAL U0
  CAPTURE VAL R9
  ORK R7 R8 K5 []
  NEWCLOSURE R9 P3
  CAPTURE VAL R4
  CAPTURE VAL R3
  LOADK R10 K7 ["StudioAccessToApisAllowed"]
  NEWCLOSURE R8 P1
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE UPVAL U0
  CAPTURE VAL R9
  NEWCLOSURE R10 P4
  CAPTURE VAL R4
  CAPTURE VAL R3
  LOADK R11 K8 ["ThirdPartyPurchaseAllowed"]
  NEWCLOSURE R9 P1
  CAPTURE VAL R2
  CAPTURE VAL R11
  CAPTURE UPVAL U0
  CAPTURE VAL R10
  NEWCLOSURE R11 P5
  CAPTURE VAL R4
  CAPTURE VAL R3
  LOADK R12 K9 ["ThirdPartyTeleportAllowed"]
  NEWCLOSURE R10 P1
  CAPTURE VAL R2
  CAPTURE VAL R12
  CAPTURE UPVAL U0
  CAPTURE VAL R11
  SETLIST R5 R6 5 [1]
  RETURN R5 1

PROTO_14:
  DUPTABLE R2 K8 [{"HttpEnabled", "Secrets", "StudioAccessToApisAllowed", "ThirdPartyPurchaseAllowed", "ThirdPartyTeleportAllowed", "HttpEnabledValueChanged", "ThirdPartyPurchaseAllowedValueChanged", "ThirdPartyTeleportAllowedValueChanged"}]
  MOVE R3 R0
  LOADK R4 K0 ["HttpEnabled"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K0 ["HttpEnabled"]
  MOVE R3 R0
  LOADK R4 K1 ["Secrets"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K1 ["Secrets"]
  MOVE R3 R0
  LOADK R4 K2 ["StudioAccessToApisAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K2 ["StudioAccessToApisAllowed"]
  MOVE R3 R0
  LOADK R4 K3 ["ThirdPartyPurchaseAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K3 ["ThirdPartyPurchaseAllowed"]
  MOVE R3 R0
  LOADK R4 K4 ["ThirdPartyTeleportAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K4 ["ThirdPartyTeleportAllowed"]
  MOVE R3 R1
  LOADK R4 K0 ["HttpEnabled"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K5 ["HttpEnabledValueChanged"]
  MOVE R3 R1
  LOADK R4 K3 ["ThirdPartyPurchaseAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K6 ["ThirdPartyPurchaseAllowedValueChanged"]
  MOVE R3 R1
  LOADK R4 K4 ["ThirdPartyTeleportAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K7 ["ThirdPartyTeleportAllowedValueChanged"]
  RETURN R2 1

PROTO_15:
  DUPTABLE R2 K5 [{"HttpEnabledChanged", "SecretsChanged", "StudioApiServicesChanged", "ThirdPartyPurchaseChanged", "ThirdPartyTeleportAllowedChanged"}]
  MOVE R3 R0
  LOADK R4 K6 ["HttpEnabled"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K0 ["HttpEnabledChanged"]
  MOVE R3 R0
  LOADK R4 K7 ["Secrets"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K1 ["SecretsChanged"]
  MOVE R3 R0
  LOADK R4 K8 ["StudioAccessToApisAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K2 ["StudioApiServicesChanged"]
  MOVE R3 R0
  LOADK R4 K9 ["ThirdPartyPurchaseAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K3 ["ThirdPartyPurchaseChanged"]
  MOVE R3 R0
  LOADK R4 K10 ["ThirdPartyTeleportAllowed"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K4 ["ThirdPartyTeleportAllowedChanged"]
  RETURN R2 1

PROTO_16:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["HttpEnabledChanged"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["HttpEnabled"]
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["SecretsChanged"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["StudioApiServicesChanged"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["StudioAccessToApisAllowed"]
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["ThirdPartyPurchaseChanged"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["ThirdPartyPurchaseAllowed"]
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["ThirdPartyTeleportAllowedChanged"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["ThirdPartyTeleportAllowed"]
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_21:
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
  DUPTABLE R5 K15 [{"InsecureWarning", "HttpEnabled", "Secrets", "StudioApiServicesEnabled", "ThirdPartyPurchasesEnabled", "ThirdPartyTeleportsEnabled"}]
  MOVE R6 R2
  JUMPIFNOT R6 [+134]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K16 ["createElement"]
  LOADK R7 K17 ["Frame"]
  DUPTABLE R8 K22 [{"AutomaticSize", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
  GETIMPORT R9 K25 [Enum.AutomaticSize.XY]
  SETTABLEKS R9 R8 K18 ["AutomaticSize"]
  LOADN R9 1
  SETTABLEKS R9 R8 K19 ["BackgroundTransparency"]
  LOADN R9 0
  SETTABLEKS R9 R8 K20 ["BorderSizePixel"]
  NAMECALL R9 R4 K26 ["getNextOrder"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K21 ["LayoutOrder"]
  DUPTABLE R9 K30 [{"UILayout", "Warning", "Description"}]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K16 ["createElement"]
  LOADK R11 K31 ["UIListLayout"]
  DUPTABLE R12 K36 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R13 K38 [Enum.FillDirection.Horizontal]
  SETTABLEKS R13 R12 K32 ["FillDirection"]
  GETIMPORT R13 K40 [UDim.new]
  LOADN R14 0
  GETTABLEKS R16 R3 K41 ["dialog"]
  GETTABLEKS R15 R16 K42 ["spacing"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K33 ["Padding"]
  GETIMPORT R13 K43 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R13 R12 K34 ["SortOrder"]
  GETIMPORT R13 K45 [Enum.VerticalAlignment.Center]
  SETTABLEKS R13 R12 K35 ["VerticalAlignment"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K27 ["UILayout"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K16 ["createElement"]
  LOADK R11 K46 ["ImageLabel"]
  DUPTABLE R12 K49 [{"Image", "LayoutOrder", "BackgroundTransparency", "Size"}]
  GETTABLEKS R13 R3 K50 ["warningIcon"]
  SETTABLEKS R13 R12 K47 ["Image"]
  NAMECALL R13 R4 K26 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K21 ["LayoutOrder"]
  LOADN R13 1
  SETTABLEKS R13 R12 K19 ["BackgroundTransparency"]
  GETIMPORT R13 K52 [UDim2.new]
  LOADN R14 0
  GETTABLEKS R17 R3 K53 ["warningDialog"]
  GETTABLEKS R16 R17 K54 ["icon"]
  GETTABLEKS R15 R16 K55 ["size"]
  LOADN R16 0
  GETTABLEKS R19 R3 K53 ["warningDialog"]
  GETTABLEKS R18 R19 K54 ["icon"]
  GETTABLEKS R17 R18 K55 ["size"]
  CALL R13 4 1
  SETTABLEKS R13 R12 K48 ["Size"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K28 ["Warning"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K16 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K61 [{"AutomaticSize", "LayoutOrder", "Style", "Text", "TextXAlignment", "TextColor", "TextSize"}]
  GETIMPORT R13 K25 [Enum.AutomaticSize.XY]
  SETTABLEKS R13 R12 K18 ["AutomaticSize"]
  NAMECALL R13 R4 K26 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K21 ["LayoutOrder"]
  LOADK R13 K62 ["SubText"]
  SETTABLEKS R13 R12 K56 ["Style"]
  LOADK R15 K63 ["Security"]
  LOADK R16 K10 ["InsecureWarning"]
  NAMECALL R13 R1 K64 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K57 ["Text"]
  GETIMPORT R13 K66 [Enum.TextXAlignment.Left]
  SETTABLEKS R13 R12 K58 ["TextXAlignment"]
  GETTABLEKS R13 R3 K67 ["warningColor"]
  SETTABLEKS R13 R12 K59 ["TextColor"]
  GETTABLEKS R15 R3 K68 ["fontStyle"]
  GETTABLEKS R14 R15 K69 ["Subtitle"]
  GETTABLEKS R13 R14 K60 ["TextSize"]
  SETTABLEKS R13 R12 K60 ["TextSize"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K29 ["Description"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K10 ["InsecureWarning"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K16 ["createElement"]
  GETUPVAL R7 4
  DUPTABLE R8 K74 [{"Description", "Disabled", "LayoutOrder", "OnClick", "Selected", "Title"}]
  LOADK R11 K75 ["General"]
  LOADK R12 K76 ["HttpDesc"]
  NAMECALL R9 R1 K64 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K29 ["Description"]
  GETTABLEKS R10 R0 K3 ["HttpEnabled"]
  JUMPIFEQKNIL R10 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  SETTABLEKS R9 R8 K70 ["Disabled"]
  NAMECALL R9 R4 K26 ["getNextOrder"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K21 ["LayoutOrder"]
  NEWCLOSURE R9 P0
  CAPTURE VAL R0
  SETTABLEKS R9 R8 K71 ["OnClick"]
  GETTABLEKS R9 R0 K3 ["HttpEnabled"]
  SETTABLEKS R9 R8 K72 ["Selected"]
  LOADK R11 K75 ["General"]
  LOADK R12 K77 ["TitleHttp"]
  NAMECALL R9 R1 K64 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K73 ["Title"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K3 ["HttpEnabled"]
  GETTABLEKS R6 R0 K3 ["HttpEnabled"]
  JUMPIFNOT R6 [+19]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K16 ["createElement"]
  GETUPVAL R7 5
  DUPTABLE R8 K79 [{"LayoutOrder", "Secrets", "OnChanged"}]
  NAMECALL R9 R4 K26 ["getNextOrder"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K21 ["LayoutOrder"]
  GETTABLEKS R9 R0 K11 ["Secrets"]
  SETTABLEKS R9 R8 K11 ["Secrets"]
  NEWCLOSURE R9 P1
  CAPTURE VAL R0
  SETTABLEKS R9 R8 K78 ["OnChanged"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K11 ["Secrets"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K16 ["createElement"]
  GETUPVAL R7 4
  DUPTABLE R8 K74 [{"Description", "Disabled", "LayoutOrder", "OnClick", "Selected", "Title"}]
  LOADK R11 K75 ["General"]
  LOADK R12 K80 ["StudioApiServicesDesc"]
  NAMECALL R9 R1 K64 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K29 ["Description"]
  GETTABLEKS R10 R0 K81 ["StudioAccessToApisAllowed"]
  JUMPIFEQKNIL R10 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  SETTABLEKS R9 R8 K70 ["Disabled"]
  NAMECALL R9 R4 K26 ["getNextOrder"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K21 ["LayoutOrder"]
  NEWCLOSURE R9 P2
  CAPTURE VAL R0
  SETTABLEKS R9 R8 K71 ["OnClick"]
  GETTABLEKS R9 R0 K81 ["StudioAccessToApisAllowed"]
  SETTABLEKS R9 R8 K72 ["Selected"]
  LOADK R11 K75 ["General"]
  LOADK R12 K82 ["TitleStudioApiServices"]
  NAMECALL R9 R1 K64 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K73 ["Title"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K12 ["StudioApiServicesEnabled"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K16 ["createElement"]
  GETUPVAL R7 4
  DUPTABLE R8 K74 [{"Description", "Disabled", "LayoutOrder", "OnClick", "Selected", "Title"}]
  LOADK R11 K63 ["Security"]
  LOADK R12 K83 ["EnableThirdPartyPurchasesDescription"]
  NAMECALL R9 R1 K64 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K29 ["Description"]
  GETTABLEKS R10 R0 K5 ["ThirdPartyPurchaseAllowed"]
  JUMPIFEQKNIL R10 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  SETTABLEKS R9 R8 K70 ["Disabled"]
  NAMECALL R9 R4 K26 ["getNextOrder"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K21 ["LayoutOrder"]
  NEWCLOSURE R9 P3
  CAPTURE VAL R0
  SETTABLEKS R9 R8 K71 ["OnClick"]
  GETTABLEKS R9 R0 K5 ["ThirdPartyPurchaseAllowed"]
  SETTABLEKS R9 R8 K72 ["Selected"]
  LOADK R11 K63 ["Security"]
  LOADK R12 K84 ["EnableThirdPartyPurchases"]
  NAMECALL R9 R1 K64 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K73 ["Title"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K13 ["ThirdPartyPurchasesEnabled"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K16 ["createElement"]
  GETUPVAL R7 4
  DUPTABLE R8 K74 [{"Description", "Disabled", "LayoutOrder", "OnClick", "Selected", "Title"}]
  LOADK R11 K63 ["Security"]
  LOADK R12 K85 ["EnableThirdPartyTeleportsDescription"]
  NAMECALL R9 R1 K64 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K29 ["Description"]
  GETTABLEKS R10 R0 K7 ["ThirdPartyTeleportAllowed"]
  JUMPIFEQKNIL R10 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  SETTABLEKS R9 R8 K70 ["Disabled"]
  NAMECALL R9 R4 K26 ["getNextOrder"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K21 ["LayoutOrder"]
  NEWCLOSURE R9 P4
  CAPTURE VAL R0
  SETTABLEKS R9 R8 K71 ["OnClick"]
  GETTABLEKS R9 R0 K7 ["ThirdPartyTeleportAllowed"]
  SETTABLEKS R9 R8 K72 ["Selected"]
  LOADK R11 K63 ["Security"]
  LOADK R12 K86 ["EnableThirdPartyTeleports"]
  NAMECALL R9 R1 K64 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K73 ["Title"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K14 ["ThirdPartyTeleportsEnabled"]
  RETURN R5 1

PROTO_22:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Localization"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["createElement"]
  GETUPVAL R4 5
  DUPTABLE R5 K8 [{"SettingsLoadJobs", "SettingsSaveJobs", "Title", "PageId", "CreateChildren"}]
  GETUPVAL R6 6
  SETTABLEKS R6 R5 K3 ["SettingsLoadJobs"]
  GETUPVAL R6 7
  SETTABLEKS R6 R5 K4 ["SettingsSaveJobs"]
  LOADK R8 K9 ["General"]
  LOADK R10 K10 ["Category"]
  GETUPVAL R11 8
  CONCAT R9 R10 R11
  NAMECALL R6 R1 K11 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K5 ["Title"]
  GETUPVAL R6 8
  SETTABLEKS R6 R5 K6 ["PageId"]
  SETTABLEKS R2 R5 K7 ["CreateChildren"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_23:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["Settings"]
  MOVE R3 R0
  CALL R1 2 -1
  RETURN R1 -1

PROTO_24:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["Settings"]
  GETTABLEKS R3 R4 K1 ["Changed"]
  GETTABLE R2 R3 R0
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_25:
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

PROTO_26:
  GETUPVAL R1 0
  GETUPVAL R2 1
  GETUPVAL R3 2
  MOVE R4 R0
  CALL R2 2 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_27:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  RETURN R1 1

PROTO_28:
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
  GETTABLEKS R14 R15 K2 ["Parent"]
  GETIMPORT R15 K4 [require]
  GETTABLEKS R17 R14 K16 ["Components"]
  GETTABLEKS R16 R17 K23 ["Secrets"]
  CALL R15 1 1
  GETIMPORT R17 K1 [script]
  GETTABLEKS R16 R17 K24 ["Name"]
  DUPCLOSURE R17 K25 [PROTO_5]
  DUPCLOSURE R18 K26 [PROTO_7]
  CAPTURE VAL R13
  DUPCLOSURE R19 K27 [PROTO_13]
  CAPTURE VAL R13
  DUPCLOSURE R20 K28 [PROTO_14]
  DUPCLOSURE R21 K29 [PROTO_15]
  GETTABLEKS R22 R1 K30 ["PureComponent"]
  GETIMPORT R25 K1 [script]
  GETTABLEKS R24 R25 K24 ["Name"]
  NAMECALL R22 R22 K31 ["extend"]
  CALL R22 2 1
  DUPCLOSURE R23 K32 [PROTO_22]
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R10
  CAPTURE VAL R15
  CAPTURE VAL R12
  CAPTURE VAL R17
  CAPTURE VAL R19
  CAPTURE VAL R16
  SETTABLEKS R23 R22 K33 ["render"]
  MOVE R23 R5
  DUPTABLE R24 K36 [{"Localization", "Stylizer"}]
  GETTABLEKS R25 R4 K34 ["Localization"]
  SETTABLEKS R25 R24 K34 ["Localization"]
  GETTABLEKS R25 R4 K35 ["Stylizer"]
  SETTABLEKS R25 R24 K35 ["Stylizer"]
  CALL R23 1 1
  MOVE R24 R22
  CALL R23 1 1
  MOVE R22 R23
  GETIMPORT R23 K4 [require]
  GETTABLEKS R26 R0 K15 ["Src"]
  GETTABLEKS R25 R26 K37 ["Networking"]
  GETTABLEKS R24 R25 K38 ["settingFromState"]
  CALL R23 1 1
  GETTABLEKS R24 R2 K39 ["connect"]
  DUPCLOSURE R25 K40 [PROTO_25]
  CAPTURE VAL R23
  CAPTURE VAL R20
  DUPCLOSURE R26 K41 [PROTO_28]
  CAPTURE VAL R11
  CAPTURE VAL R21
  CALL R24 2 1
  MOVE R25 R22
  CALL R24 1 1
  MOVE R22 R24
  SETTABLEKS R16 R22 K42 ["LocalizationId"]
  RETURN R22 1
