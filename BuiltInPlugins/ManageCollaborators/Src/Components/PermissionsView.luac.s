PROTO_0:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+17]
  GETUPVAL R1 1
  GETUPVAL R3 2
  DUPTABLE R4 K3 [{"userid", "action", "upsellEntrySurface"}]
  GETUPVAL R5 3
  NAMECALL R5 R5 K4 ["GetUserId"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K0 ["userid"]
  SETTABLEKS R0 R4 K1 ["action"]
  LOADK R5 K5 ["manage_collaborators"]
  SETTABLEKS R5 R4 K2 ["upsellEntrySurface"]
  NAMECALL R1 R1 K6 ["logRobloxTelemetryEvent"]
  CALL R1 3 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["OpenBrowserWindow"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R1 K1 [pcall]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CALL R1 1 2
  JUMPIF R1 [+10]
  GETIMPORT R3 K3 [warn]
  LOADK R5 K4 ["OpenUrl failed: "]
  FASTCALL1 TOSTRING R2 [+3]
  MOVE R7 R2
  GETIMPORT R6 K6 [tostring]
  CALL R6 1 1
  CONCAT R4 R5 R6
  CALL R3 1 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["OwnerType"]
  GETIMPORT R4 K5 [Enum.CreatorType.Group]
  JUMPIFEQ R2 R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  RETURN R3 1

PROTO_4:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["GetUserId"]
  CALL R1 1 1
  GETTABLEKS R2 R0 K1 ["props"]
  GETTABLEKS R3 R2 K2 ["OwnerId"]
  GETTABLEKS R4 R2 K3 ["GroupOwnerUserId"]
  NAMECALL R5 R0 K4 ["isGroupGame"]
  CALL R5 1 1
  JUMPIFNOT R5 [+5]
  JUMPIFEQ R1 R4 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  RETURN R5 1
  JUMPIFEQ R1 R3 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  RETURN R5 1

PROTO_5:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["scrollingFrameRef"]
  GETTABLEKS R1 R2 K1 ["current"]
  JUMPIFNOT R1 [+22]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["props"]
  GETTABLEKS R2 R3 K3 ["Stylizer"]
  GETIMPORT R3 K6 [UDim2.new]
  LOADN R4 1
  LOADN R5 0
  LOADN R6 0
  GETTABLEKS R9 R0 K7 ["AbsoluteContentSize"]
  GETTABLEKS R8 R9 K8 ["Y"]
  GETTABLEKS R10 R2 K9 ["scrollingFrame"]
  GETTABLEKS R9 R10 K10 ["yPadding"]
  ADD R7 R8 R9
  CALL R3 4 1
  SETTABLEKS R3 R1 K11 ["CanvasSize"]
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+18]
  GETUPVAL R0 1
  GETUPVAL R2 2
  DUPTABLE R3 K3 [{"userid", "action", "upsellEntrySurface"}]
  GETUPVAL R4 3
  NAMECALL R4 R4 K4 ["GetUserId"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K0 ["userid"]
  LOADK R4 K5 ["start"]
  SETTABLEKS R4 R3 K1 ["action"]
  LOADK R4 K6 ["manage_collaborators"]
  SETTABLEKS R4 R3 K2 ["upsellEntrySurface"]
  NAMECALL R0 R0 K7 ["logRobloxTelemetryEvent"]
  CALL R0 3 0
  GETUPVAL R0 4
  GETIMPORT R1 K9 [pcall]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U5
  CAPTURE VAL R0
  CALL R1 1 2
  JUMPIF R1 [+10]
  GETIMPORT R3 K11 [warn]
  LOADK R5 K12 ["OpenUrl failed: "]
  FASTCALL1 TOSTRING R2 [+3]
  MOVE R7 R2
  GETIMPORT R6 K14 [tostring]
  CALL R6 1 1
  CONCAT R4 R5 R6
  CALL R3 1 0
  RETURN R0 0

PROTO_7:
  DUPTABLE R1 K1 [{"upsellDialogEnabled"}]
  LOADB R2 1
  SETTABLEKS R2 R1 K0 ["upsellDialogEnabled"]
  RETURN R1 1

PROTO_8:
  GETUPVAL R0 0
  GETUPVAL R2 1
  DUPTABLE R3 K3 [{"userId", "telemetryType", "upsellEntrySurface"}]
  GETUPVAL R4 2
  NAMECALL R4 R4 K4 ["GetUserId"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K0 ["userId"]
  LOADK R4 K5 ["load"]
  SETTABLEKS R4 R3 K1 ["telemetryType"]
  LOADK R4 K6 ["manage_collaborators_tc_dialog"]
  SETTABLEKS R4 R3 K2 ["upsellEntrySurface"]
  NAMECALL R0 R0 K7 ["logRobloxTelemetryEvent"]
  CALL R0 3 0
  GETUPVAL R0 3
  DUPCLOSURE R2 K8 [PROTO_7]
  NAMECALL R0 R0 K9 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_9:
  DUPTABLE R1 K1 [{"upsellDialogEnabled"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["upsellDialogEnabled"]
  SETTABLEKS R1 R0 K2 ["state"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K4 ["scrollingFrameRef"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K5 ["contentHeightChanged"]
  DUPCLOSURE R1 K6 [PROTO_6]
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  SETTABLEKS R1 R0 K7 ["launchFAEPlusVPC"]
  NEWCLOSURE R1 P2
  CAPTURE UPVAL U2
  CAPTURE UPVAL U7
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K8 ["launchModal"]
  RETURN R0 0

PROTO_10:
  JUMPIFNOT R0 [+27]
  GETUPVAL R1 0
  GETUPVAL R3 1
  DUPTABLE R4 K3 [{"userId", "telemetryType", "upsellEntrySurface"}]
  GETUPVAL R5 2
  NAMECALL R5 R5 K4 ["GetUserId"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K0 ["userId"]
  LOADK R5 K5 ["load"]
  SETTABLEKS R5 R4 K1 ["telemetryType"]
  LOADK R5 K6 ["manage_collaborators"]
  SETTABLEKS R5 R4 K2 ["upsellEntrySurface"]
  NAMECALL R1 R1 K7 ["logRobloxTelemetryEvent"]
  CALL R1 3 0
  GETUPVAL R1 3
  DUPTABLE R3 K9 [{"ShowSafetyBanner"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K8 ["ShowSafetyBanner"]
  NAMECALL R1 R1 K10 ["setState"]
  CALL R1 2 0
  RETURN R0 0
  GETUPVAL R1 3
  DUPTABLE R3 K9 [{"ShowSafetyBanner"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K8 ["ShowSafetyBanner"]
  NAMECALL R1 R1 K10 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_11:
  DUPTABLE R1 K1 [{"ShowSafetyBanner"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["ShowSafetyBanner"]
  RETURN R1 1

PROTO_12:
  GETUPVAL R0 0
  DUPCLOSURE R2 K0 [PROTO_11]
  NAMECALL R0 R0 K1 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_13:
  JUMPIFNOT R0 [+27]
  GETUPVAL R1 0
  GETUPVAL R3 1
  DUPTABLE R4 K3 [{"userId", "telemetryType", "upsellEntrySurface"}]
  GETUPVAL R5 2
  NAMECALL R5 R5 K4 ["GetUserId"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K0 ["userId"]
  LOADK R5 K5 ["load"]
  SETTABLEKS R5 R4 K1 ["telemetryType"]
  LOADK R5 K6 ["manage_collaborators_establish_trust"]
  SETTABLEKS R5 R4 K2 ["upsellEntrySurface"]
  NAMECALL R1 R1 K7 ["logRobloxTelemetryEvent"]
  CALL R1 3 0
  GETUPVAL R1 3
  DUPTABLE R3 K9 [{"ShowTrustedConnectionsBanner"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K8 ["ShowTrustedConnectionsBanner"]
  NAMECALL R1 R1 K10 ["setState"]
  CALL R1 2 0
  RETURN R0 0
  GETUPVAL R1 3
  DUPTABLE R3 K9 [{"ShowTrustedConnectionsBanner"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K8 ["ShowTrustedConnectionsBanner"]
  NAMECALL R1 R1 K10 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_14:
  DUPTABLE R1 K1 [{"ShowTrustedConnectionsBanner"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["ShowTrustedConnectionsBanner"]
  RETURN R1 1

PROTO_15:
  GETUPVAL R0 0
  DUPCLOSURE R2 K0 [PROTO_14]
  NAMECALL R0 R0 K1 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"ShowTrustedConnectionsOption"}]
  SETTABLEKS R0 R3 K0 ["ShowTrustedConnectionsOption"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_17:
  DUPTABLE R1 K1 [{"ShowTrustedConnectionsOption"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["ShowTrustedConnectionsOption"]
  RETURN R1 1

PROTO_18:
  GETUPVAL R0 0
  DUPCLOSURE R2 K0 [PROTO_17]
  NAMECALL R0 R0 K1 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R2 0
  JUMPIFNOT R2 [+56]
  GETTABLEKS R2 R1 K0 ["Enabled"]
  JUMPIF R2 [+53]
  GETTABLEKS R3 R0 K1 ["props"]
  GETTABLEKS R2 R3 K0 ["Enabled"]
  JUMPIFNOT R2 [+48]
  GETUPVAL R2 1
  LOADK R3 K2 ["ShouldShowCollabBanner"]
  LOADK R4 K3 ["studio/CollaborationSettings"]
  CALL R2 2 1
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  NAMECALL R2 R2 K4 ["andThen"]
  CALL R2 2 1
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  NAMECALL R2 R2 K5 ["catch"]
  CALL R2 2 0
  GETUPVAL R2 1
  LOADK R3 K6 ["ShowEstablishTrustBanner"]
  LOADK R4 K3 ["studio/CollaborationSettings"]
  CALL R2 2 1
  NEWCLOSURE R4 P2
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  NAMECALL R2 R2 K4 ["andThen"]
  CALL R2 2 1
  NEWCLOSURE R4 P3
  CAPTURE VAL R0
  NAMECALL R2 R2 K5 ["catch"]
  CALL R2 2 0
  GETUPVAL R2 1
  LOADK R3 K7 ["ShowTrustedConnectionsOption"]
  LOADK R4 K3 ["studio/CollaborationSettings"]
  CALL R2 2 1
  NEWCLOSURE R4 P4
  CAPTURE VAL R0
  NAMECALL R2 R2 K4 ["andThen"]
  CALL R2 2 1
  NEWCLOSURE R4 P5
  CAPTURE VAL R0
  NAMECALL R2 R2 K5 ["catch"]
  CALL R2 2 0
  RETURN R0 0

PROTO_20:
  GETTABLEKS R1 R0 K0 ["Plugin"]
  NAMECALL R1 R1 K1 ["get"]
  CALL R1 1 1
  LOADK R4 K2 ["DialogManager"]
  NAMECALL R2 R1 K3 ["GetPluginComponent"]
  CALL R2 2 1
  GETTABLEKS R4 R0 K4 ["HasCurrentEditCollaborators"]
  NOT R3 R4
  JUMPIFNOT R3 [+2]
  GETTABLEKS R3 R0 K5 ["HasNewEditCollaborators"]
  JUMPIF R3 [+2]
  LOADB R4 0
  RETURN R4 1
  GETUPVAL R4 0
  GETIMPORT R6 K7 [game]
  GETTABLEKS R5 R6 K8 ["GameId"]
  CALL R4 1 1
  NAMECALL R4 R4 K9 ["await"]
  CALL R4 1 2
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K10 ["NotAgeVerified"]
  JUMPIFEQ R5 R6 [+3]
  LOADB R6 0
  RETURN R6 1
  GETTABLEKS R6 R0 K11 ["CloseWidget"]
  MOVE R7 R6
  CALL R7 0 0
  GETTABLEKS R7 R0 K12 ["Localization"]
  DUPTABLE R10 K15 [{"PluginId", "ItemId"}]
  LOADK R11 K16 ["ManageCollaborators"]
  SETTABLEKS R11 R10 K13 ["PluginId"]
  LOADK R11 K17 ["VerifyAgeDialog"]
  SETTABLEKS R11 R10 K14 ["ItemId"]
  DUPTABLE R11 K23 [{"Type", "Title", "Description", "PrimaryButton", "SecondaryButton"}]
  LOADK R12 K24 ["Critical"]
  SETTABLEKS R12 R11 K18 ["Type"]
  LOADK R14 K25 ["DialogSafety"]
  LOADK R15 K26 ["VerifyYourAge"]
  NAMECALL R12 R7 K27 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K19 ["Title"]
  LOADK R14 K25 ["DialogSafety"]
  LOADK R15 K28 ["VerifyYourAgeDescription"]
  NAMECALL R12 R7 K27 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K20 ["Description"]
  DUPTABLE R12 K31 [{"Uri", "Text"}]
  DUPTABLE R13 K15 [{"PluginId", "ItemId"}]
  LOADK R14 K16 ["ManageCollaborators"]
  SETTABLEKS R14 R13 K13 ["PluginId"]
  LOADK R14 K32 ["VerifyAgeDialog/Verify"]
  SETTABLEKS R14 R13 K14 ["ItemId"]
  SETTABLEKS R13 R12 K29 ["Uri"]
  LOADK R15 K33 ["Buttons"]
  LOADK R16 K34 ["Verify"]
  NAMECALL R13 R7 K27 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K30 ["Text"]
  SETTABLEKS R12 R11 K21 ["PrimaryButton"]
  DUPTABLE R12 K31 [{"Uri", "Text"}]
  DUPTABLE R13 K15 [{"PluginId", "ItemId"}]
  LOADK R14 K16 ["ManageCollaborators"]
  SETTABLEKS R14 R13 K13 ["PluginId"]
  LOADK R14 K35 ["VerifyAgeDialog/Cancel"]
  SETTABLEKS R14 R13 K14 ["ItemId"]
  SETTABLEKS R13 R12 K29 ["Uri"]
  LOADK R15 K33 ["Buttons"]
  LOADK R16 K36 ["Cancel"]
  NAMECALL R13 R7 K27 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K30 ["Text"]
  SETTABLEKS R12 R11 K22 ["SecondaryButton"]
  NAMECALL R8 R2 K37 ["ShowDialogAsync"]
  CALL R8 3 1
  GETTABLEKS R10 R8 K38 ["SelectedButtonUri"]
  GETTABLEKS R9 R10 K14 ["ItemId"]
  JUMPIFNOTEQKS R9 K32 ["VerifyAgeDialog/Verify"] [+19]
  GETUPVAL R9 2
  GETIMPORT R10 K40 [pcall]
  NEWCLOSURE R11 P0
  CAPTURE UPVAL U3
  CAPTURE VAL R9
  CALL R10 1 2
  JUMPIF R10 [+10]
  GETIMPORT R12 K42 [warn]
  LOADK R14 K43 ["OpenUrl failed: "]
  FASTCALL1 TOSTRING R11 [+3]
  MOVE R16 R11
  GETIMPORT R15 K45 [tostring]
  CALL R15 1 1
  CONCAT R13 R14 R15
  CALL R12 1 0
  LOADB R9 1
  RETURN R9 1

PROTO_21:
  GETTABLEKS R1 R0 K0 ["props"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["fflagManageCollaboratorsVerifyAgeDialog"]
  JUMPIFNOT R2 [+6]
  GETGLOBAL R2 K2 ["checkAndMaybeShowVerifyAgeDialog"]
  MOVE R3 R1
  CALL R2 1 1
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETTABLEKS R2 R1 K3 ["SavePermissions"]
  GETUPVAL R4 1
  JUMPIFNOT R4 [+3]
  GETTABLEKS R3 R1 K4 ["SendAllSearchItemLogs"]
  JUMP [+1]
  LOADNIL R3
  MOVE R4 R2
  NAMECALL R5 R0 K5 ["isGroupGame"]
  CALL R5 1 1
  GETTABLEKS R6 R1 K6 ["OwnerId"]
  CALL R4 2 0
  GETUPVAL R4 1
  JUMPIFNOT R4 [+12]
  MOVE R4 R3
  DUPTABLE R5 K10 [{"isAdded", "isCanceled", "isRemoved"}]
  LOADB R6 1
  SETTABLEKS R6 R5 K7 ["isAdded"]
  LOADB R6 0
  SETTABLEKS R6 R5 K8 ["isCanceled"]
  LOADB R6 0
  SETTABLEKS R6 R5 K9 ["isRemoved"]
  CALL R4 1 0
  GETUPVAL R4 2
  CALL R4 0 1
  JUMPIF R4 [+4]
  GETUPVAL R4 3
  NAMECALL R4 R4 K11 ["PublishThenTurnOnTeamCreate"]
  CALL R4 1 0
  RETURN R0 0

PROTO_22:
  JUMPIFNOTEQKS R0 K0 ["YES"] [+17]
  GETUPVAL R1 0
  JUMPIFNOT R1 [+12]
  GETUPVAL R1 1
  DUPTABLE R2 K4 [{"isAdded", "isCanceled", "isRemoved"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K1 ["isAdded"]
  LOADB R3 1
  SETTABLEKS R3 R2 K2 ["isCanceled"]
  LOADB R3 0
  SETTABLEKS R3 R2 K3 ["isRemoved"]
  CALL R1 1 0
  GETUPVAL R1 2
  CALL R1 0 0
  RETURN R0 0

PROTO_23:
  RETURN R0 0

PROTO_24:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R3 R2 K1 ["Plugin"]
  GETTABLEKS R4 R2 K2 ["Localization"]
  GETTABLEKS R5 R2 K3 ["Stylizer"]
  GETTABLEKS R6 R2 K4 ["CloseWidget"]
  GETUPVAL R8 0
  JUMPIFNOT R8 [+3]
  GETTABLEKS R7 R2 K5 ["SendAllSearchItemLogs"]
  JUMP [+1]
  LOADNIL R7
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K6 ["reportCancelPressed"]
  NAMECALL R9 R0 K7 ["isGroupGame"]
  CALL R9 1 -1
  CALL R8 -1 0
  JUMPIF R1 [+3]
  MOVE R8 R6
  CALL R8 0 0
  RETURN R0 0
  NEWTABLE R8 0 2
  DUPTABLE R9 K10 [{"Key", "Text"}]
  LOADK R10 K11 ["NO"]
  SETTABLEKS R10 R9 K8 ["Key"]
  LOADK R12 K12 ["Buttons"]
  LOADK R13 K13 ["No"]
  NAMECALL R10 R4 K14 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K9 ["Text"]
  DUPTABLE R10 K16 [{"Key", "Text", "Style"}]
  LOADK R11 K17 ["YES"]
  SETTABLEKS R11 R10 K8 ["Key"]
  LOADK R13 K12 ["Buttons"]
  LOADK R14 K18 ["Yes"]
  NAMECALL R11 R4 K14 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K9 ["Text"]
  LOADK R11 K19 ["RoundPrimary"]
  SETTABLEKS R11 R10 K15 ["Style"]
  SETLIST R8 R9 2 [1]
  GETUPVAL R9 2
  MOVE R10 R3
  MOVE R11 R4
  GETUPVAL R12 3
  DUPTABLE R13 K25 [{"Buttons", "MinContentSize", "Style", "OnButtonPressed", "OnClose", "Title", "Modal"}]
  SETTABLEKS R8 R13 K12 ["Buttons"]
  GETTABLEKS R15 R5 K26 ["cancelDialog"]
  GETTABLEKS R14 R15 K27 ["Size"]
  SETTABLEKS R14 R13 K20 ["MinContentSize"]
  LOADK R14 K28 ["CancelDialog"]
  SETTABLEKS R14 R13 K15 ["Style"]
  NEWCLOSURE R14 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R7
  CAPTURE VAL R6
  SETTABLEKS R14 R13 K21 ["OnButtonPressed"]
  DUPCLOSURE R14 K29 [PROTO_23]
  SETTABLEKS R14 R13 K22 ["OnClose"]
  LOADK R16 K23 ["Title"]
  LOADK R17 K30 ["DiscardChanges"]
  NAMECALL R14 R4 K14 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K23 ["Title"]
  LOADB R14 1
  SETTABLEKS R14 R13 K24 ["Modal"]
  DUPTABLE R14 K32 [{"Contents"}]
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K33 ["createElement"]
  LOADK R16 K34 ["TextLabel"]
  DUPTABLE R17 K41 [{"BackgroundTransparency", "TextSize", "Text", "TextColor3", "Font", "Size", "AnchorPoint", "Position"}]
  LOADN R18 1
  SETTABLEKS R18 R17 K35 ["BackgroundTransparency"]
  GETTABLEKS R20 R5 K26 ["cancelDialog"]
  GETTABLEKS R19 R20 K9 ["Text"]
  GETTABLEKS R18 R19 K36 ["TextSize"]
  SETTABLEKS R18 R17 K36 ["TextSize"]
  LOADK R20 K42 ["Description"]
  LOADK R21 K30 ["DiscardChanges"]
  NAMECALL R18 R4 K14 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K9 ["Text"]
  GETTABLEKS R20 R5 K26 ["cancelDialog"]
  GETTABLEKS R19 R20 K9 ["Text"]
  GETTABLEKS R18 R19 K37 ["TextColor3"]
  SETTABLEKS R18 R17 K37 ["TextColor3"]
  GETTABLEKS R20 R5 K26 ["cancelDialog"]
  GETTABLEKS R19 R20 K9 ["Text"]
  GETTABLEKS R18 R19 K38 ["Font"]
  SETTABLEKS R18 R17 K38 ["Font"]
  GETIMPORT R18 K45 [UDim2.fromScale]
  LOADN R19 1
  LOADN R20 1
  CALL R18 2 1
  SETTABLEKS R18 R17 K27 ["Size"]
  GETIMPORT R18 K48 [Vector2.new]
  LOADK R19 K49 [0.5]
  LOADK R20 K49 [0.5]
  CALL R18 2 1
  SETTABLEKS R18 R17 K39 ["AnchorPoint"]
  GETTABLEKS R19 R5 K26 ["cancelDialog"]
  GETTABLEKS R18 R19 K40 ["Position"]
  SETTABLEKS R18 R17 K40 ["Position"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K31 ["Contents"]
  CALL R9 5 0
  RETURN R0 0

PROTO_25:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["onSavePressed"]
  CALL R0 1 0
  RETURN R0 0

PROTO_26:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+12]
  GETUPVAL R0 1
  DUPTABLE R1 K3 [{"isAdded", "isCanceled", "isRemoved"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["isAdded"]
  LOADB R2 1
  SETTABLEKS R2 R1 K1 ["isCanceled"]
  LOADB R2 0
  SETTABLEKS R2 R1 K2 ["isRemoved"]
  CALL R0 1 0
  GETUPVAL R0 2
  NAMECALL R0 R0 K4 ["PublishThenTurnOnTeamCreate"]
  CALL R0 1 0
  RETURN R0 0

PROTO_27:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"ShowTrustedConnectionsBanner"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["ShowTrustedConnectionsBanner"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_28:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"upsellDialogEnabled"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["upsellDialogEnabled"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_29:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["onSavePressed"]
  CALL R0 1 0
  RETURN R0 0

PROTO_30:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["onCancelPressed"]
  CALL R1 2 0
  RETURN R0 0

PROTO_31:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Enabled"]
  JUMPIF R2 [+1]
  RETURN R0 0
  GETTABLEKS R2 R1 K2 ["Stylizer"]
  GETTABLEKS R3 R1 K3 ["Localization"]
  GETTABLEKS R4 R1 K4 ["SaveState"]
  GETTABLEKS R5 R1 K5 ["LoadState"]
  GETTABLEKS R6 R1 K6 ["HasCollaborators"]
  GETUPVAL R8 0
  JUMPIFNOT R8 [+5]
  GETTABLEKS R8 R0 K7 ["state"]
  GETTABLEKS R7 R8 K8 ["ShowSafetyBanner"]
  JUMP [+2]
  GETTABLEKS R7 R1 K8 ["ShowSafetyBanner"]
  GETTABLEKS R9 R0 K7 ["state"]
  GETTABLEKS R8 R9 K9 ["ShowTrustedConnectionsBanner"]
  GETTABLEKS R10 R0 K7 ["state"]
  GETTABLEKS R9 R10 K10 ["ShowTrustedConnectionsOption"]
  GETTABLEKS R10 R1 K11 ["HasCurrentEditCollaborators"]
  GETUPVAL R12 1
  JUMPIFNOT R12 [+3]
  GETTABLEKS R11 R1 K12 ["SendAllSearchItemLogs"]
  JUMP [+1]
  LOADNIL R11
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K13 ["Saved"]
  JUMPIFNOTEQ R4 R12 [+5]
  GETTABLEKS R12 R1 K14 ["CloseWidget"]
  CALL R12 0 0
  RETURN R0 0
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K15 ["Loaded"]
  JUMPIFEQ R5 R13 [+2]
  LOADB R12 0 +1
  LOADB R12 1
  GETUPVAL R13 4
  JUMPIFNOT R13 [+6]
  JUMPIFNOT R12 [+5]
  GETTABLEKS R13 R1 K16 ["PrefetchLikelyCollaborators"]
  GETTABLEKS R14 R1 K17 ["Is17PlusGame"]
  CALL R13 1 0
  LOADB R13 0
  LOADNIL R14
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K18 ["Unloaded"]
  JUMPIFNOTEQ R5 R15 [+4]
  GETTABLEKS R15 R1 K19 ["LoadPermissions"]
  CALL R15 0 0
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K20 ["LoadFailed"]
  JUMPIFEQ R5 R15 [+6]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K21 ["SaveFailed"]
  JUMPIFNOTEQ R4 R15 [+20]
  LOADB R13 1
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K20 ["LoadFailed"]
  JUMPIFNOTEQ R5 R15 [+8]
  LOADK R17 K22 ["FailureMessage"]
  LOADK R18 K23 ["LoadFailure"]
  NAMECALL R15 R3 K24 ["getText"]
  CALL R15 3 1
  MOVE R14 R15
  JUMP [+6]
  LOADK R17 K22 ["FailureMessage"]
  LOADK R18 K25 ["SaveFailure"]
  NAMECALL R15 R3 K24 ["getText"]
  CALL R15 3 1
  MOVE R14 R15
  NAMECALL R15 R0 K26 ["isLoggedInUserGameOwner"]
  CALL R15 1 1
  MOVE R16 R12
  JUMPIFNOT R16 [+1]
  NOT R16 R13
  GETUPVAL R17 5
  CALL R17 0 1
  MOVE R18 R16
  JUMPIFNOT R18 [+3]
  NOT R18 R17
  JUMPIFNOT R18 [+1]
  OR R18 R6 R10
  JUMPIFNOT R10 [+2]
  LOADK R19 K27 ["SaveEnableTcCurrentEditors"]
  JUMP [+1]
  LOADK R19 K28 ["SaveEnableTC"]
  LOADK R22 K29 ["Description"]
  MOVE R23 R19
  NAMECALL R20 R3 K24 ["getText"]
  CALL R20 3 1
  GETTABLEKS R22 R2 K30 ["header"]
  GETTABLEKS R21 R22 K31 ["height"]
  GETTABLEKS R23 R2 K32 ["footer"]
  GETTABLEKS R22 R23 K31 ["height"]
  JUMPIFNOT R18 [+5]
  GETTABLEKS R24 R2 K33 ["saveMessage"]
  GETTABLEKS R23 R24 K34 ["boxHeight"]
  ADD R22 R22 R23
  GETUPVAL R23 6
  JUMPIFNOT R23 [+1]
  ADD R22 R22 R21
  GETUPVAL R24 7
  GETTABLEKS R23 R24 K35 ["new"]
  CALL R23 0 1
  GETUPVAL R25 7
  GETTABLEKS R24 R25 K35 ["new"]
  CALL R24 0 1
  GETUPVAL R26 8
  JUMPIFNOT R26 [+5]
  GETUPVAL R26 7
  GETTABLEKS R25 R26 K35 ["new"]
  CALL R25 0 1
  JUMP [+1]
  LOADNIL R25
  GETUPVAL R26 8
  JUMPIFNOT R26 [+1]
  OR R26 R7 R8
  GETUPVAL R28 9
  GETTABLEKS R27 R28 K36 ["createElement"]
  LOADK R28 K37 ["Frame"]
  DUPTABLE R29 K40 [{"Size", "BackgroundColor3"}]
  GETIMPORT R30 K42 [UDim2.new]
  LOADN R31 1
  LOADN R32 0
  LOADN R33 1
  LOADN R34 0
  CALL R30 4 1
  SETTABLEKS R30 R29 K38 ["Size"]
  GETTABLEKS R30 R2 K43 ["backgroundColor"]
  SETTABLEKS R30 R29 K39 ["BackgroundColor3"]
  DUPTABLE R30 K56 [{"Layout", "HeaderContent", "UpsellBanner", "TrustedConnectionsBanner", "CollaborationSubtitleTitleView", "ScrollingFrameNew", "ScrollingFrame", "TextFrame", "upsellDialog", "FooterContent", "LoadingIndicator", "FailureText"}]
  MOVE R31 R16
  JUMPIFNOT R31 [+28]
  GETUPVAL R32 9
  GETTABLEKS R31 R32 K36 ["createElement"]
  LOADK R32 K57 ["UIListLayout"]
  DUPTABLE R33 K62 [{"FillDirection", "SortOrder", "HorizontalAlignment", "Padding"}]
  GETIMPORT R34 K65 [Enum.FillDirection.Vertical]
  SETTABLEKS R34 R33 K58 ["FillDirection"]
  GETIMPORT R34 K67 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R34 R33 K59 ["SortOrder"]
  GETIMPORT R34 K69 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R34 R33 K60 ["HorizontalAlignment"]
  GETIMPORT R34 K71 [UDim.new]
  LOADN R35 0
  GETTABLEKS R37 R2 K72 ["permissionsView"]
  GETTABLEKS R36 R37 K61 ["Padding"]
  CALL R34 2 1
  SETTABLEKS R34 R33 K61 ["Padding"]
  CALL R31 2 1
  SETTABLEKS R31 R30 K44 ["Layout"]
  GETUPVAL R31 10
  JUMPIFNOT R31 [+74]
  NOT R31 R26
  JUMPIFNOT R31 [+72]
  GETUPVAL R31 6
  JUMPIFNOT R31 [+70]
  MOVE R31 R16
  JUMPIFNOT R31 [+68]
  GETUPVAL R32 9
  GETTABLEKS R31 R32 K36 ["createElement"]
  GETUPVAL R32 11
  DUPTABLE R33 K73 [{"LayoutOrder", "Size"}]
  NAMECALL R34 R23 K74 ["getNextOrder"]
  CALL R34 1 1
  SETTABLEKS R34 R33 K66 ["LayoutOrder"]
  GETIMPORT R34 K42 [UDim2.new]
  LOADN R35 1
  LOADN R36 0
  LOADN R37 0
  GETTABLEKS R39 R2 K30 ["header"]
  GETTABLEKS R38 R39 K31 ["height"]
  CALL R34 4 1
  SETTABLEKS R34 R33 K38 ["Size"]
  DUPTABLE R34 K76 [{"Header"}]
  GETUPVAL R36 12
  GETTABLEKS R35 R36 K36 ["createElement"]
  GETUPVAL R36 13
  DUPTABLE R37 K84 [{"Stylizer", "Localization", "IsTeamCreateEnabled", "HasUnsavedChanges", "HasCollaborators", "Plugin", "SaveThenTurnOnTeamCreate", "TurnOnTeamCreate", "Links", "FetchLink"}]
  SETTABLEKS R2 R37 K2 ["Stylizer"]
  SETTABLEKS R3 R37 K3 ["Localization"]
  SETTABLEKS R17 R37 K77 ["IsTeamCreateEnabled"]
  GETTABLEKS R38 R1 K78 ["HasUnsavedChanges"]
  SETTABLEKS R38 R37 K78 ["HasUnsavedChanges"]
  GETTABLEKS R38 R1 K6 ["HasCollaborators"]
  SETTABLEKS R38 R37 K6 ["HasCollaborators"]
  GETTABLEKS R38 R1 K79 ["Plugin"]
  SETTABLEKS R38 R37 K79 ["Plugin"]
  NEWCLOSURE R38 P0
  CAPTURE VAL R0
  SETTABLEKS R38 R37 K80 ["SaveThenTurnOnTeamCreate"]
  NEWCLOSURE R38 P1
  CAPTURE UPVAL U1
  CAPTURE VAL R11
  CAPTURE UPVAL U14
  SETTABLEKS R38 R37 K81 ["TurnOnTeamCreate"]
  GETTABLEKS R38 R1 K82 ["Links"]
  SETTABLEKS R38 R37 K82 ["Links"]
  GETTABLEKS R38 R1 K83 ["FetchLink"]
  SETTABLEKS R38 R37 K83 ["FetchLink"]
  CALL R35 2 1
  SETTABLEKS R35 R34 K75 ["Header"]
  CALL R31 3 1
  SETTABLEKS R31 R30 K45 ["HeaderContent"]
  GETUPVAL R31 8
  JUMPIFNOT R31 [+155]
  MOVE R31 R7
  JUMPIFNOT R31 [+153]
  GETUPVAL R32 9
  GETTABLEKS R31 R32 K36 ["createElement"]
  GETUPVAL R32 15
  DUPTABLE R33 K87 [{"LayoutOrder", "Size", "tag", "onActivated"}]
  NAMECALL R34 R23 K74 ["getNextOrder"]
  CALL R34 1 1
  SETTABLEKS R34 R33 K66 ["LayoutOrder"]
  GETIMPORT R34 K42 [UDim2.new]
  LOADN R35 0
  LOADN R36 2
  LOADN R37 0
  LOADN R38 50
  CALL R34 4 1
  SETTABLEKS R34 R33 K38 ["Size"]
  LOADK R34 K88 ["auto-xy stroke-system-emphasis bg-over-media-300 radius-small padding-left-large"]
  SETTABLEKS R34 R33 K85 ["tag"]
  GETTABLEKS R34 R0 K89 ["launchFAEPlusVPC"]
  SETTABLEKS R34 R33 K86 ["onActivated"]
  NEWTABLE R34 4 1
  MOVE R36 R16
  JUMPIFNOT R36 [+28]
  GETUPVAL R37 9
  GETTABLEKS R36 R37 K36 ["createElement"]
  LOADK R37 K57 ["UIListLayout"]
  DUPTABLE R38 K91 [{"FillDirection", "VerticalAlignment", "SortOrder", "Padding"}]
  GETIMPORT R39 K93 [Enum.FillDirection.Horizontal]
  SETTABLEKS R39 R38 K58 ["FillDirection"]
  GETIMPORT R39 K94 [Enum.VerticalAlignment.Center]
  SETTABLEKS R39 R38 K90 ["VerticalAlignment"]
  GETIMPORT R39 K67 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R39 R38 K59 ["SortOrder"]
  GETIMPORT R39 K71 [UDim.new]
  LOADN R40 0
  GETTABLEKS R42 R2 K72 ["permissionsView"]
  GETTABLEKS R41 R42 K61 ["Padding"]
  CALL R39 2 1
  SETTABLEKS R39 R38 K61 ["Padding"]
  CALL R36 2 1
  SETTABLEKS R36 R34 K95 ["UpsellLayout"]
  GETUPVAL R36 12
  GETTABLEKS R35 R36 K36 ["createElement"]
  GETUPVAL R36 16
  DUPTABLE R37 K100 [{"name", "style", "LayoutOrder", "size", "variant"}]
  GETUPVAL R40 17
  GETTABLEKS R39 R40 K101 ["IconName"]
  GETTABLEKS R38 R39 K102 ["TriangleExclamation"]
  SETTABLEKS R38 R37 K96 ["name"]
  DUPTABLE R38 K105 [{"Color3", "Transparency"}]
  GETIMPORT R39 K107 [Color3.fromRGB]
  LOADN R40 51
  LOADN R41 95
  LOADN R42 255
  CALL R39 3 1
  SETTABLEKS R39 R38 K103 ["Color3"]
  LOADN R39 0
  SETTABLEKS R39 R38 K104 ["Transparency"]
  SETTABLEKS R38 R37 K97 ["style"]
  NAMECALL R38 R25 K74 ["getNextOrder"]
  CALL R38 1 1
  SETTABLEKS R38 R37 K66 ["LayoutOrder"]
  GETUPVAL R40 17
  GETTABLEKS R39 R40 K108 ["IconSize"]
  GETTABLEKS R38 R39 K109 ["Large"]
  SETTABLEKS R38 R37 K98 ["size"]
  GETUPVAL R39 18
  GETTABLEKS R38 R39 K110 ["Filled"]
  SETTABLEKS R38 R37 K99 ["variant"]
  CALL R35 2 1
  SETLIST R34 R35 1 [1]
  GETUPVAL R37 9
  GETTABLEKS R36 R37 K36 ["createElement"]
  GETUPVAL R37 19
  DUPTABLE R38 K112 [{"tag", "LayoutOrder", "Text"}]
  LOADK R39 K113 ["auto-y text-align-y-center text-align-x-left text-title-medium padding-left-large fill"]
  SETTABLEKS R39 R38 K85 ["tag"]
  NAMECALL R39 R25 K74 ["getNextOrder"]
  CALL R39 1 1
  SETTABLEKS R39 R38 K66 ["LayoutOrder"]
  LOADK R41 K46 ["UpsellBanner"]
  LOADK R42 K114 ["description"]
  NAMECALL R39 R3 K24 ["getText"]
  CALL R39 3 1
  SETTABLEKS R39 R38 K111 ["Text"]
  CALL R36 2 1
  SETTABLEKS R36 R34 K115 ["WarningText"]
  GETUPVAL R37 9
  GETTABLEKS R36 R37 K36 ["createElement"]
  GETUPVAL R37 19
  DUPTABLE R38 K112 [{"tag", "LayoutOrder", "Text"}]
  LOADK R39 K116 ["text-align-y-center text-align-x-center text-label-medium padding-right-large auto-xy"]
  SETTABLEKS R39 R38 K85 ["tag"]
  NAMECALL R39 R25 K74 ["getNextOrder"]
  CALL R39 1 1
  SETTABLEKS R39 R38 K66 ["LayoutOrder"]
  LOADK R41 K46 ["UpsellBanner"]
  LOADK R42 K117 ["CTA"]
  NAMECALL R39 R3 K24 ["getText"]
  CALL R39 3 1
  SETTABLEKS R39 R38 K111 ["Text"]
  CALL R36 2 1
  SETTABLEKS R36 R34 K118 ["GetStarted"]
  CALL R31 3 1
  SETTABLEKS R31 R30 K46 ["UpsellBanner"]
  GETUPVAL R31 0
  JUMPIFNOT R31 [+65]
  MOVE R31 R8
  JUMPIFNOT R31 [+63]
  GETUPVAL R32 12
  GETTABLEKS R31 R32 K36 ["createElement"]
  GETUPVAL R32 15
  DUPTABLE R33 K119 [{"tag"}]
  LOADK R34 K120 ["padding-x-large padding-top-large size-full-0 auto-y"]
  SETTABLEKS R34 R33 K85 ["tag"]
  GETUPVAL R35 12
  GETTABLEKS R34 R35 K36 ["createElement"]
  GETUPVAL R35 20
  DUPTABLE R36 K125 [{"variant", "severity", "title", "actions", "onClose"}]
  GETUPVAL R38 21
  GETTABLEKS R37 R38 K126 ["Standard"]
  SETTABLEKS R37 R36 K99 ["variant"]
  GETUPVAL R38 22
  GETTABLEKS R37 R38 K127 ["Info"]
  SETTABLEKS R37 R36 K121 ["severity"]
  LOADK R39 K46 ["UpsellBanner"]
  LOADK R40 K128 ["nextStepDescription"]
  NAMECALL R37 R3 K24 ["getText"]
  CALL R37 3 1
  SETTABLEKS R37 R36 K122 ["title"]
  NEWTABLE R37 0 1
  DUPTABLE R38 K130 [{"text", "variant", "onActivated"}]
  LOADK R41 K46 ["UpsellBanner"]
  LOADK R42 K117 ["CTA"]
  NAMECALL R39 R3 K24 ["getText"]
  CALL R39 3 1
  SETTABLEKS R39 R38 K129 ["text"]
  GETUPVAL R40 23
  GETTABLEKS R39 R40 K126 ["Standard"]
  SETTABLEKS R39 R38 K99 ["variant"]
  JUMPIFNOT R9 [+3]
  GETTABLEKS R39 R0 K131 ["launchModal"]
  JUMP [+2]
  GETTABLEKS R39 R0 K89 ["launchFAEPlusVPC"]
  SETTABLEKS R39 R38 K86 ["onActivated"]
  SETLIST R37 R38 1 [1]
  SETTABLEKS R37 R36 K123 ["actions"]
  NEWCLOSURE R37 P2
  CAPTURE VAL R0
  SETTABLEKS R37 R36 K124 ["onClose"]
  CALL R34 2 -1
  CALL R31 -1 1
  SETTABLEKS R31 R30 K47 ["TrustedConnectionsBanner"]
  GETUPVAL R31 8
  JUMPIFNOT R31 [+55]
  GETUPVAL R32 5
  CALL R32 0 1
  JUMPIF R32 [+3]
  GETUPVAL R32 0
  NOT R31 R32
  JUMPIFNOT R31 [+49]
  GETUPVAL R32 9
  GETTABLEKS R31 R32 K36 ["createElement"]
  GETUPVAL R32 15
  DUPTABLE R33 K132 [{"LayoutOrder", "Size", "tag"}]
  NAMECALL R34 R23 K74 ["getNextOrder"]
  CALL R34 1 1
  SETTABLEKS R34 R33 K66 ["LayoutOrder"]
  GETIMPORT R34 K42 [UDim2.new]
  LOADN R35 0
  LOADN R36 2
  LOADN R37 0
  LOADN R38 10
  CALL R34 4 1
  SETTABLEKS R34 R33 K38 ["Size"]
  LOADK R34 K133 ["auto-xy padding-top-medium"]
  SETTABLEKS R34 R33 K85 ["tag"]
  DUPTABLE R34 K135 [{"CollaborationTitle"}]
  GETUPVAL R35 24
  JUMPIFNOT R35 [+21]
  GETUPVAL R36 12
  GETTABLEKS R35 R36 K36 ["createElement"]
  GETUPVAL R36 19
  DUPTABLE R37 K136 [{"LayoutOrder", "tag", "Text"}]
  NAMECALL R38 R23 K74 ["getNextOrder"]
  CALL R38 1 1
  SETTABLEKS R38 R37 K66 ["LayoutOrder"]
  LOADK R38 K137 ["auto-xy text-align-x-left text-label-small"]
  SETTABLEKS R38 R37 K85 ["tag"]
  LOADK R40 K138 ["Subtitle"]
  LOADK R41 K139 ["SearchCollaborators"]
  NAMECALL R38 R3 K24 ["getText"]
  CALL R38 3 1
  SETTABLEKS R38 R37 K111 ["Text"]
  CALL R35 2 1
  SETTABLEKS R35 R34 K134 ["CollaborationTitle"]
  CALL R31 3 1
  SETTABLEKS R31 R30 K48 ["CollaborationSubtitleTitleView"]
  GETUPVAL R31 8
  JUMPIFNOT R31 [+130]
  MOVE R31 R16
  JUMPIFNOT R31 [+128]
  GETUPVAL R32 9
  GETTABLEKS R31 R32 K36 ["createElement"]
  GETUPVAL R32 25
  DUPTABLE R33 K142 [{"scroll", "layout", "tag", "LayoutOrder"}]
  DUPTABLE R34 K147 [{"scrollBarVisibility", "ScrollingDirection", "AutomaticCanvasSize", "CanvasSize"}]
  GETUPVAL R36 26
  GETTABLEKS R35 R36 K148 ["Always"]
  SETTABLEKS R35 R34 K143 ["scrollBarVisibility"]
  GETIMPORT R35 K150 [Enum.ScrollingDirection.Y]
  SETTABLEKS R35 R34 K144 ["ScrollingDirection"]
  GETIMPORT R35 K152 [Enum.AutomaticSize.Y]
  SETTABLEKS R35 R34 K145 ["AutomaticCanvasSize"]
  GETIMPORT R35 K42 [UDim2.new]
  CALL R35 0 1
  SETTABLEKS R35 R34 K146 ["CanvasSize"]
  SETTABLEKS R34 R33 K140 ["scroll"]
  DUPTABLE R34 K154 [{"HorizontalAlignment", "FillDirection", "SortOrder", "HorizontalFlex"}]
  GETIMPORT R35 K156 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R35 R34 K60 ["HorizontalAlignment"]
  GETIMPORT R35 K65 [Enum.FillDirection.Vertical]
  SETTABLEKS R35 R34 K58 ["FillDirection"]
  GETIMPORT R35 K67 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R35 R34 K59 ["SortOrder"]
  GETIMPORT R35 K159 [Enum.UIFlexAlignment.Fill]
  SETTABLEKS R35 R34 K153 ["HorizontalFlex"]
  SETTABLEKS R34 R33 K141 ["layout"]
  LOADK R34 K160 ["fill size-full col align-y-top gap-small"]
  SETTABLEKS R34 R33 K85 ["tag"]
  NAMECALL R34 R23 K74 ["getNextOrder"]
  CALL R34 1 1
  SETTABLEKS R34 R33 K66 ["LayoutOrder"]
  DUPTABLE R34 K164 [{"SearchBarWidget", "CollaboratorFilterWidget", "Frame", "CollaboratorsWidget"}]
  MOVE R35 R15
  JUMPIFNOT R35 [+19]
  GETUPVAL R36 9
  GETTABLEKS R35 R36 K36 ["createElement"]
  GETUPVAL R36 27
  DUPTABLE R37 K167 [{"LayoutOrder", "Writable", "IsGroupGame"}]
  NAMECALL R38 R24 K74 ["getNextOrder"]
  CALL R38 1 1
  SETTABLEKS R38 R37 K66 ["LayoutOrder"]
  LOADB R38 1
  SETTABLEKS R38 R37 K165 ["Writable"]
  NAMECALL R38 R0 K168 ["isGroupGame"]
  CALL R38 1 1
  SETTABLEKS R38 R37 K166 ["IsGroupGame"]
  CALL R35 2 1
  SETTABLEKS R35 R34 K161 ["SearchBarWidget"]
  GETUPVAL R36 9
  GETTABLEKS R35 R36 K36 ["createElement"]
  GETUPVAL R36 28
  DUPTABLE R37 K169 [{"LayoutOrder"}]
  NAMECALL R38 R24 K74 ["getNextOrder"]
  CALL R38 1 1
  SETTABLEKS R38 R37 K66 ["LayoutOrder"]
  CALL R35 2 1
  SETTABLEKS R35 R34 K162 ["CollaboratorFilterWidget"]
  NOT R35 R15
  JUMPIFNOT R35 [+9]
  GETUPVAL R36 9
  GETTABLEKS R35 R36 K36 ["createElement"]
  LOADK R36 K37 ["Frame"]
  DUPTABLE R37 K171 [{"BackgroundTransparency"}]
  LOADN R38 1
  SETTABLEKS R38 R37 K170 ["BackgroundTransparency"]
  CALL R35 2 1
  SETTABLEKS R35 R34 K37 ["Frame"]
  GETUPVAL R36 9
  GETTABLEKS R35 R36 K36 ["createElement"]
  GETUPVAL R36 29
  DUPTABLE R37 K167 [{"LayoutOrder", "Writable", "IsGroupGame"}]
  NAMECALL R38 R24 K74 ["getNextOrder"]
  CALL R38 1 1
  SETTABLEKS R38 R37 K66 ["LayoutOrder"]
  SETTABLEKS R15 R37 K165 ["Writable"]
  GETUPVAL R39 30
  JUMPIFNOT R39 [+4]
  NAMECALL R38 R0 K168 ["isGroupGame"]
  CALL R38 1 1
  JUMP [+1]
  LOADNIL R38
  SETTABLEKS R38 R37 K166 ["IsGroupGame"]
  CALL R35 2 1
  SETTABLEKS R35 R34 K163 ["CollaboratorsWidget"]
  CALL R31 3 1
  SETTABLEKS R31 R30 K49 ["ScrollingFrameNew"]
  GETUPVAL R32 8
  NOT R31 R32
  JUMPIFNOT R31 [+120]
  MOVE R31 R16
  JUMPIFNOT R31 [+118]
  GETUPVAL R32 9
  GETTABLEKS R31 R32 K36 ["createElement"]
  GETUPVAL R32 31
  DUPTABLE R33 K173 [{"LayoutOrder", "Size", "Layout", "AutomaticCanvasSize", "Spacing"}]
  NAMECALL R34 R23 K74 ["getNextOrder"]
  CALL R34 1 1
  SETTABLEKS R34 R33 K66 ["LayoutOrder"]
  GETIMPORT R34 K42 [UDim2.new]
  LOADN R35 1
  LOADN R36 0
  LOADN R37 1
  MINUS R38 R22
  CALL R34 4 1
  SETTABLEKS R34 R33 K38 ["Size"]
  GETIMPORT R34 K65 [Enum.FillDirection.Vertical]
  SETTABLEKS R34 R33 K44 ["Layout"]
  GETIMPORT R34 K152 [Enum.AutomaticSize.Y]
  SETTABLEKS R34 R33 K145 ["AutomaticCanvasSize"]
  GETIMPORT R34 K71 [UDim.new]
  LOADN R35 0
  JUMPIFNOT R15 [+5]
  GETTABLEKS R37 R2 K174 ["scrollingFrame"]
  GETTABLEKS R36 R37 K175 ["yPadding"]
  JUMP [+4]
  GETTABLEKS R37 R2 K174 ["scrollingFrame"]
  GETTABLEKS R36 R37 K176 ["yPaddingNonOwner"]
  CALL R34 2 1
  SETTABLEKS R34 R33 K172 ["Spacing"]
  DUPTABLE R34 K164 [{"SearchBarWidget", "CollaboratorFilterWidget", "Frame", "CollaboratorsWidget"}]
  MOVE R35 R15
  JUMPIFNOT R35 [+19]
  GETUPVAL R36 9
  GETTABLEKS R35 R36 K36 ["createElement"]
  GETUPVAL R36 27
  DUPTABLE R37 K167 [{"LayoutOrder", "Writable", "IsGroupGame"}]
  NAMECALL R38 R24 K74 ["getNextOrder"]
  CALL R38 1 1
  SETTABLEKS R38 R37 K66 ["LayoutOrder"]
  LOADB R38 1
  SETTABLEKS R38 R37 K165 ["Writable"]
  NAMECALL R38 R0 K168 ["isGroupGame"]
  CALL R38 1 1
  SETTABLEKS R38 R37 K166 ["IsGroupGame"]
  CALL R35 2 1
  SETTABLEKS R35 R34 K161 ["SearchBarWidget"]
  GETUPVAL R36 9
  GETTABLEKS R35 R36 K36 ["createElement"]
  GETUPVAL R36 28
  DUPTABLE R37 K169 [{"LayoutOrder"}]
  NAMECALL R38 R24 K74 ["getNextOrder"]
  CALL R38 1 1
  SETTABLEKS R38 R37 K66 ["LayoutOrder"]
  CALL R35 2 1
  SETTABLEKS R35 R34 K162 ["CollaboratorFilterWidget"]
  NOT R35 R15
  JUMPIFNOT R35 [+9]
  GETUPVAL R36 9
  GETTABLEKS R35 R36 K36 ["createElement"]
  LOADK R36 K37 ["Frame"]
  DUPTABLE R37 K171 [{"BackgroundTransparency"}]
  LOADN R38 1
  SETTABLEKS R38 R37 K170 ["BackgroundTransparency"]
  CALL R35 2 1
  SETTABLEKS R35 R34 K37 ["Frame"]
  GETUPVAL R36 9
  GETTABLEKS R35 R36 K36 ["createElement"]
  GETUPVAL R36 29
  DUPTABLE R37 K167 [{"LayoutOrder", "Writable", "IsGroupGame"}]
  NAMECALL R38 R24 K74 ["getNextOrder"]
  CALL R38 1 1
  SETTABLEKS R38 R37 K66 ["LayoutOrder"]
  SETTABLEKS R15 R37 K165 ["Writable"]
  GETUPVAL R39 30
  JUMPIFNOT R39 [+4]
  NAMECALL R38 R0 K168 ["isGroupGame"]
  CALL R38 1 1
  JUMP [+1]
  LOADNIL R38
  SETTABLEKS R38 R37 K166 ["IsGroupGame"]
  CALL R35 2 1
  SETTABLEKS R35 R34 K163 ["CollaboratorsWidget"]
  CALL R31 3 1
  SETTABLEKS R31 R30 K50 ["ScrollingFrame"]
  JUMPIFNOT R18 [+90]
  GETUPVAL R32 9
  GETTABLEKS R31 R32 K36 ["createElement"]
  LOADK R32 K37 ["Frame"]
  DUPTABLE R33 K178 [{"BackgroundTransparency", "BackgroundColor3", "LayoutOrder", "Size", "BorderSizePixel"}]
  LOADN R34 1
  SETTABLEKS R34 R33 K170 ["BackgroundTransparency"]
  GETTABLEKS R34 R2 K43 ["backgroundColor"]
  SETTABLEKS R34 R33 K39 ["BackgroundColor3"]
  NAMECALL R34 R23 K74 ["getNextOrder"]
  CALL R34 1 1
  SETTABLEKS R34 R33 K66 ["LayoutOrder"]
  GETIMPORT R34 K42 [UDim2.new]
  LOADN R35 1
  LOADN R36 0
  LOADN R37 0
  GETTABLEKS R39 R2 K33 ["saveMessage"]
  GETTABLEKS R38 R39 K34 ["boxHeight"]
  CALL R34 4 1
  SETTABLEKS R34 R33 K38 ["Size"]
  LOADN R34 0
  SETTABLEKS R34 R33 K177 ["BorderSizePixel"]
  DUPTABLE R34 K179 [{"Text"}]
  GETUPVAL R36 9
  GETTABLEKS R35 R36 K36 ["createElement"]
  LOADK R36 K180 ["TextLabel"]
  GETUPVAL R39 32
  GETTABLEKS R38 R39 K181 ["Dictionary"]
  GETTABLEKS R37 R38 K182 ["join"]
  GETTABLEKS R39 R2 K33 ["saveMessage"]
  GETTABLEKS R38 R39 K183 ["textStyle"]
  DUPTABLE R39 K188 [{"AnchorPoint", "Position", "Text", "TextXAlignment", "BorderSizePixel", "TextWrapped", "Size", "BackgroundTransparency"}]
  GETIMPORT R40 K190 [Vector2.new]
  LOADN R41 0
  LOADK R42 K191 [0.5]
  CALL R40 2 1
  SETTABLEKS R40 R39 K184 ["AnchorPoint"]
  GETTABLEKS R41 R2 K33 ["saveMessage"]
  GETTABLEKS R40 R41 K192 ["InnerTextPosition"]
  SETTABLEKS R40 R39 K185 ["Position"]
  SETTABLEKS R20 R39 K111 ["Text"]
  GETIMPORT R40 K193 [Enum.TextXAlignment.Left]
  SETTABLEKS R40 R39 K186 ["TextXAlignment"]
  LOADN R40 0
  SETTABLEKS R40 R39 K177 ["BorderSizePixel"]
  LOADB R40 1
  SETTABLEKS R40 R39 K187 ["TextWrapped"]
  GETIMPORT R40 K42 [UDim2.new]
  LOADK R41 K194 [0.55]
  LOADN R42 0
  LOADN R43 1
  LOADN R44 0
  CALL R40 4 1
  SETTABLEKS R40 R39 K38 ["Size"]
  LOADN R40 1
  SETTABLEKS R40 R39 K170 ["BackgroundTransparency"]
  CALL R37 2 -1
  CALL R35 -1 1
  SETTABLEKS R35 R34 K111 ["Text"]
  CALL R31 3 1
  JUMP [+1]
  LOADNIL R31
  SETTABLEKS R31 R30 K51 ["TextFrame"]
  GETUPVAL R31 0
  JUMPIFNOT R31 [+15]
  GETTABLEKS R32 R0 K7 ["state"]
  GETTABLEKS R31 R32 K195 ["upsellDialogEnabled"]
  JUMPIFNOT R31 [+10]
  GETUPVAL R32 12
  GETTABLEKS R31 R32 K36 ["createElement"]
  GETUPVAL R32 33
  DUPTABLE R33 K196 [{"onClose"}]
  NEWCLOSURE R34 P3
  CAPTURE VAL R0
  SETTABLEKS R34 R33 K124 ["onClose"]
  CALL R31 2 1
  SETTABLEKS R31 R30 K52 ["upsellDialog"]
  MOVE R31 R16
  JUMPIFNOT R31 [+42]
  GETUPVAL R32 9
  GETTABLEKS R31 R32 K36 ["createElement"]
  GETUPVAL R32 11
  DUPTABLE R33 K73 [{"LayoutOrder", "Size"}]
  NAMECALL R34 R23 K74 ["getNextOrder"]
  CALL R34 1 1
  SETTABLEKS R34 R33 K66 ["LayoutOrder"]
  GETIMPORT R34 K42 [UDim2.new]
  LOADN R35 1
  LOADN R36 0
  LOADN R37 0
  GETTABLEKS R39 R2 K32 ["footer"]
  GETTABLEKS R38 R39 K31 ["height"]
  CALL R34 4 1
  SETTABLEKS R34 R33 K38 ["Size"]
  DUPTABLE R34 K198 [{"Footer"}]
  GETUPVAL R36 9
  GETTABLEKS R35 R36 K36 ["createElement"]
  GETUPVAL R36 34
  DUPTABLE R37 K201 [{"IsTeamCreateEnabled", "OnSavePressed", "OnCancelPressed"}]
  SETTABLEKS R17 R37 K77 ["IsTeamCreateEnabled"]
  NEWCLOSURE R38 P4
  CAPTURE VAL R0
  SETTABLEKS R38 R37 K199 ["OnSavePressed"]
  NEWCLOSURE R38 P5
  CAPTURE VAL R0
  SETTABLEKS R38 R37 K200 ["OnCancelPressed"]
  CALL R35 2 1
  SETTABLEKS R35 R34 K197 ["Footer"]
  CALL R31 3 1
  SETTABLEKS R31 R30 K53 ["FooterContent"]
  NOT R31 R12
  JUMPIFNOT R31 [+22]
  NOT R31 R13
  JUMPIFNOT R31 [+20]
  GETUPVAL R32 9
  GETTABLEKS R31 R32 K36 ["createElement"]
  GETUPVAL R32 35
  DUPTABLE R33 K202 [{"AnchorPoint", "Position"}]
  GETIMPORT R34 K190 [Vector2.new]
  LOADK R35 K191 [0.5]
  LOADK R36 K191 [0.5]
  CALL R34 2 1
  SETTABLEKS R34 R33 K184 ["AnchorPoint"]
  GETIMPORT R34 K204 [UDim2.fromScale]
  LOADK R35 K191 [0.5]
  LOADK R36 K191 [0.5]
  CALL R34 2 1
  SETTABLEKS R34 R33 K185 ["Position"]
  CALL R31 2 1
  SETTABLEKS R31 R30 K54 ["LoadingIndicator"]
  MOVE R31 R13
  JUMPIFNOT R31 [+46]
  GETUPVAL R32 9
  GETTABLEKS R31 R32 K36 ["createElement"]
  LOADK R32 K180 ["TextLabel"]
  DUPTABLE R33 K208 [{"Text", "AnchorPoint", "Position", "TextColor3", "TextSize", "Font"}]
  SETTABLEKS R14 R33 K111 ["Text"]
  GETIMPORT R34 K190 [Vector2.new]
  LOADK R35 K191 [0.5]
  LOADK R36 K191 [0.5]
  CALL R34 2 1
  SETTABLEKS R34 R33 K184 ["AnchorPoint"]
  GETIMPORT R34 K204 [UDim2.fromScale]
  LOADK R35 K191 [0.5]
  LOADK R36 K209 [0.25]
  CALL R34 2 1
  SETTABLEKS R34 R33 K185 ["Position"]
  GETTABLEKS R36 R2 K210 ["fontStyle"]
  GETTABLEKS R35 R36 K211 ["Normal"]
  GETTABLEKS R34 R35 K205 ["TextColor3"]
  SETTABLEKS R34 R33 K205 ["TextColor3"]
  GETTABLEKS R36 R2 K210 ["fontStyle"]
  GETTABLEKS R35 R36 K211 ["Normal"]
  GETTABLEKS R34 R35 K206 ["TextSize"]
  SETTABLEKS R34 R33 K206 ["TextSize"]
  GETTABLEKS R36 R2 K210 ["fontStyle"]
  GETTABLEKS R35 R36 K211 ["Normal"]
  GETTABLEKS R34 R35 K207 ["Font"]
  SETTABLEKS R34 R33 K207 ["Font"]
  CALL R31 2 1
  SETTABLEKS R31 R30 K55 ["FailureText"]
  CALL R27 3 -1
  RETURN R27 -1

PROTO_32:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  DUPTABLE R3 K11 [{"LoadState", "SaveState", "OwnerId", "OwnerType", "GroupOwnerUserId", "HasCollaborators", "HasCurrentEditCollaborators", "HasNewEditCollaborators", "GroupRolePermissions", "Is17PlusGame", "HasUnsavedChanges"}]
  GETTABLEKS R5 R0 K0 ["LoadState"]
  GETTABLEKS R4 R5 K12 ["CurrentLoadState"]
  JUMPIF R4 [+3]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K13 ["Unloaded"]
  SETTABLEKS R4 R3 K0 ["LoadState"]
  GETTABLEKS R5 R0 K1 ["SaveState"]
  GETTABLEKS R4 R5 K14 ["CurrentSaveState"]
  JUMPIF R4 [+3]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K15 ["Unsaved"]
  SETTABLEKS R4 R3 K1 ["SaveState"]
  GETTABLEKS R5 R0 K16 ["GameOwnerMetadata"]
  GETTABLEKS R4 R5 K17 ["creatorId"]
  SETTABLEKS R4 R3 K2 ["OwnerId"]
  GETTABLEKS R5 R0 K16 ["GameOwnerMetadata"]
  GETTABLEKS R4 R5 K18 ["creatorType"]
  SETTABLEKS R4 R3 K3 ["OwnerType"]
  GETTABLEKS R5 R0 K16 ["GameOwnerMetadata"]
  GETTABLEKS R4 R5 K19 ["groupOwnerId"]
  SETTABLEKS R4 R3 K4 ["GroupOwnerUserId"]
  GETUPVAL R4 3
  MOVE R5 R0
  CALL R4 1 1
  SETTABLEKS R4 R3 K5 ["HasCollaborators"]
  GETUPVAL R4 4
  MOVE R5 R0
  CALL R4 1 1
  SETTABLEKS R4 R3 K6 ["HasCurrentEditCollaborators"]
  GETUPVAL R6 5
  GETTABLEKS R5 R6 K20 ["fflagManageCollaboratorsVerifyAgeDialog"]
  JUMPIFNOT R5 [+4]
  GETUPVAL R4 6
  MOVE R5 R0
  CALL R4 1 1
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K7 ["HasNewEditCollaborators"]
  GETTABLEKS R5 R0 K8 ["GroupRolePermissions"]
  GETTABLEKS R4 R5 K21 ["PermissionsByRole"]
  SETTABLEKS R4 R3 K8 ["GroupRolePermissions"]
  GETUPVAL R5 7
  JUMPIFNOT R5 [+4]
  GETUPVAL R4 8
  MOVE R5 R0
  CALL R4 1 1
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K9 ["Is17PlusGame"]
  SETTABLEKS R2 R3 K10 ["HasUnsavedChanges"]
  RETURN R3 1

PROTO_33:
  GETUPVAL R0 0
  GETUPVAL R1 1
  NAMECALL R1 R1 K0 ["LoadPermissions"]
  CALL R1 1 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_34:
  PREPVARARGS 0
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETVARARGS R2 -1
  CALL R1 -1 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_35:
  PREPVARARGS 0
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETVARARGS R2 -1
  CALL R1 -1 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_36:
  PREPVARARGS 0
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETVARARGS R2 -1
  CALL R1 -1 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_37:
  DUPTABLE R1 K4 [{"LoadPermissions", "SavePermissions", "SendAllSearchItemLogs", "PrefetchLikelyCollaborators"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["LoadPermissions"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["SavePermissions"]
  GETUPVAL R3 2
  JUMPIFNOT R3 [+4]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K2 ["SendAllSearchItemLogs"]
  GETUPVAL R3 4
  JUMPIFNOT R3 [+4]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K3 ["PrefetchLikelyCollaborators"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["COLLAB2850_FixMcTooltips"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["Collab8864_ShowCopyLinkButton"]
  NAMECALL R1 R1 K3 ["GetFastFlag"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["Collab9031_ManageCollaboratorsEarlyFoundationMigration1"]
  NAMECALL R2 R2 K3 ["GetFastFlag"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K6 ["StudioPublishService"]
  NAMECALL R3 R3 K7 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K1 [game]
  LOADK R6 K8 ["StudioService"]
  NAMECALL R4 R4 K7 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K1 [game]
  LOADK R7 K9 ["BrowserService"]
  NAMECALL R5 R5 K7 ["GetService"]
  CALL R5 2 1
  GETIMPORT R6 K1 [game]
  LOADK R8 K10 ["StartAuthorizationLink"]
  LOADK R9 K11 ["https://www.roblox.com/my/account?creatorCollaboration"]
  NAMECALL R6 R6 K12 ["DefineFastString"]
  CALL R6 3 1
  GETIMPORT R10 K14 [script]
  GETTABLEKS R9 R10 K15 ["Parent"]
  GETTABLEKS R8 R9 K15 ["Parent"]
  GETTABLEKS R7 R8 K15 ["Parent"]
  GETIMPORT R8 K17 [require]
  GETTABLEKS R10 R7 K18 ["Packages"]
  GETTABLEKS R9 R10 K19 ["Roact"]
  CALL R8 1 1
  GETIMPORT R9 K17 [require]
  GETTABLEKS R11 R7 K18 ["Packages"]
  GETTABLEKS R10 R11 K20 ["RoactRodux"]
  CALL R9 1 1
  GETIMPORT R10 K17 [require]
  GETTABLEKS R12 R7 K18 ["Packages"]
  GETTABLEKS R11 R12 K21 ["Cryo"]
  CALL R10 1 1
  GETIMPORT R11 K17 [require]
  GETTABLEKS R13 R7 K22 ["Bin"]
  GETTABLEKS R12 R13 K23 ["defineLuaFlags"]
  CALL R11 1 1
  GETIMPORT R12 K17 [require]
  GETTABLEKS R14 R7 K18 ["Packages"]
  GETTABLEKS R13 R14 K24 ["Framework"]
  CALL R12 1 1
  GETTABLEKS R13 R12 K25 ["ContextServices"]
  GETTABLEKS R14 R13 K26 ["withContext"]
  GETTABLEKS R16 R12 K27 ["Style"]
  GETTABLEKS R15 R16 K28 ["Stylizer"]
  GETTABLEKS R16 R13 K29 ["Localization"]
  GETTABLEKS R17 R12 K30 ["UI"]
  GETTABLEKS R18 R17 K31 ["ScrollingFrame"]
  GETTABLEKS R19 R17 K32 ["Container"]
  GETTABLEKS R20 R17 K33 ["LoadingIndicator"]
  GETTABLEKS R21 R17 K34 ["StyledDialog"]
  GETIMPORT R22 K17 [require]
  GETTABLEKS R24 R7 K18 ["Packages"]
  GETTABLEKS R23 R24 K35 ["Foundation"]
  CALL R22 1 1
  GETTABLEKS R23 R22 K36 ["Text"]
  GETTABLEKS R24 R22 K37 ["ScrollView"]
  GETTABLEKS R26 R22 K38 ["Enums"]
  GETTABLEKS R25 R26 K39 ["ScrollBarVisibility"]
  GETTABLEKS R26 R22 K38 ["Enums"]
  GETTABLEKS R27 R22 K40 ["Icon"]
  GETTABLEKS R29 R22 K38 ["Enums"]
  GETTABLEKS R28 R29 K41 ["IconVariant"]
  GETTABLEKS R29 R22 K42 ["SystemBanner"]
  GETTABLEKS R31 R22 K38 ["Enums"]
  GETTABLEKS R30 R31 K43 ["AlertVariant"]
  GETTABLEKS R32 R22 K38 ["Enums"]
  GETTABLEKS R31 R32 K44 ["AlertSeverity"]
  GETTABLEKS R33 R22 K38 ["Enums"]
  GETTABLEKS R32 R33 K45 ["ButtonVariant"]
  GETIMPORT R33 K17 [require]
  GETTABLEKS R36 R7 K46 ["Src"]
  GETTABLEKS R35 R36 K47 ["Util"]
  GETTABLEKS R34 R35 K48 ["ShowDialog"]
  CALL R33 1 1
  GETIMPORT R34 K17 [require]
  GETTABLEKS R37 R7 K46 ["Src"]
  GETTABLEKS R36 R37 K49 ["Components"]
  GETTABLEKS R35 R36 K50 ["CollaboratorsWidget"]
  CALL R34 1 1
  GETIMPORT R35 K17 [require]
  GETTABLEKS R38 R7 K46 ["Src"]
  GETTABLEKS R37 R38 K49 ["Components"]
  GETTABLEKS R36 R37 K51 ["CollaboratorSearchWidget"]
  CALL R35 1 1
  GETIMPORT R36 K17 [require]
  GETTABLEKS R39 R7 K46 ["Src"]
  GETTABLEKS R38 R39 K49 ["Components"]
  GETTABLEKS R37 R38 K52 ["CollaboratorFilterWidget"]
  CALL R36 1 1
  GETIMPORT R37 K17 [require]
  GETTABLEKS R40 R7 K46 ["Src"]
  GETTABLEKS R39 R40 K49 ["Components"]
  GETTABLEKS R38 R39 K53 ["Footer"]
  CALL R37 1 1
  GETIMPORT R38 K17 [require]
  GETTABLEKS R41 R7 K46 ["Src"]
  GETTABLEKS R40 R41 K54 ["Thunks"]
  GETTABLEKS R39 R40 K55 ["SavePermissions"]
  CALL R38 1 1
  GETIMPORT R39 K17 [require]
  GETTABLEKS R42 R7 K46 ["Src"]
  GETTABLEKS R41 R42 K54 ["Thunks"]
  GETTABLEKS R40 R41 K56 ["PermissionsLoader"]
  CALL R39 1 1
  LOADNIL R40
  GETIMPORT R41 K1 [game]
  LOADK R43 K57 ["Collab8766_LogCollabSearchItemClickedEventV4"]
  NAMECALL R41 R41 K3 ["GetFastFlag"]
  CALL R41 2 1
  GETIMPORT R42 K1 [game]
  LOADK R44 K58 ["UpsellCollabSafety2"]
  NAMECALL R42 R42 K3 ["GetFastFlag"]
  CALL R42 2 1
  GETIMPORT R43 K1 [game]
  LOADK R45 K59 ["RemoveHeaderWithUpsellBanner"]
  LOADB R46 0
  NAMECALL R43 R43 K60 ["DefineFastFlag"]
  CALL R43 3 1
  JUMPIFNOT R41 [+10]
  GETIMPORT R44 K17 [require]
  GETTABLEKS R47 R7 K46 ["Src"]
  GETTABLEKS R46 R47 K54 ["Thunks"]
  GETTABLEKS R45 R46 K61 ["SendAllSearchItemLogs"]
  CALL R44 1 1
  MOVE R40 R44
  GETIMPORT R44 K1 [game]
  LOADK R46 K62 ["UpsellCollabTrustedConnection"]
  NAMECALL R44 R44 K3 ["GetFastFlag"]
  CALL R44 2 1
  GETIMPORT R45 K17 [require]
  GETTABLEKS R49 R7 K46 ["Src"]
  GETTABLEKS R48 R49 K63 ["Networking"]
  GETTABLEKS R47 R48 K64 ["Requests"]
  GETTABLEKS R46 R47 K65 ["GetAMPRequest"]
  CALL R45 1 1
  GETIMPORT R46 K17 [require]
  GETTABLEKS R50 R7 K46 ["Src"]
  GETTABLEKS R49 R50 K63 ["Networking"]
  GETTABLEKS R48 R49 K64 ["Requests"]
  GETTABLEKS R47 R48 K66 ["GetCanCollaborate"]
  CALL R46 1 1
  GETIMPORT R47 K17 [require]
  GETTABLEKS R50 R7 K46 ["Src"]
  GETTABLEKS R49 R50 K47 ["Util"]
  GETTABLEKS R48 R49 K67 ["IsLikelyCollaboratorPrefetchEnabled"]
  CALL R47 1 1
  MOVE R48 R47
  CALL R48 0 1
  LOADNIL R49
  LOADNIL R50
  JUMPIFNOT R48 [+20]
  GETIMPORT R51 K17 [require]
  GETTABLEKS R54 R7 K46 ["Src"]
  GETTABLEKS R53 R54 K54 ["Thunks"]
  GETTABLEKS R52 R53 K68 ["PrefetchLikelyCollaborators"]
  CALL R51 1 1
  MOVE R49 R51
  GETIMPORT R51 K17 [require]
  GETTABLEKS R54 R7 K46 ["Src"]
  GETTABLEKS R53 R54 K69 ["Selectors"]
  GETTABLEKS R52 R53 K70 ["IsGame17Plus"]
  CALL R51 1 1
  MOVE R50 R51
  GETIMPORT R51 K17 [require]
  GETTABLEKS R54 R7 K46 ["Src"]
  GETTABLEKS R53 R54 K47 ["Util"]
  GETTABLEKS R52 R53 K71 ["LoadState"]
  CALL R51 1 1
  GETIMPORT R52 K17 [require]
  GETTABLEKS R55 R7 K46 ["Src"]
  GETTABLEKS R54 R55 K47 ["Util"]
  GETTABLEKS R53 R54 K72 ["SaveState"]
  CALL R52 1 1
  GETIMPORT R53 K17 [require]
  GETTABLEKS R56 R7 K46 ["Src"]
  GETTABLEKS R55 R56 K69 ["Selectors"]
  GETTABLEKS R54 R55 K73 ["GetHasCollaborators"]
  CALL R53 1 1
  GETIMPORT R54 K17 [require]
  GETTABLEKS R57 R7 K46 ["Src"]
  GETTABLEKS R56 R57 K69 ["Selectors"]
  GETTABLEKS R55 R56 K74 ["GetHasNewEditCollaborators"]
  CALL R54 1 1
  GETIMPORT R55 K17 [require]
  GETTABLEKS R58 R7 K46 ["Src"]
  GETTABLEKS R57 R58 K69 ["Selectors"]
  GETTABLEKS R56 R57 K75 ["GetHasCurrentEditCollaborators"]
  CALL R55 1 1
  GETIMPORT R56 K17 [require]
  GETTABLEKS R59 R7 K46 ["Src"]
  GETTABLEKS R58 R59 K69 ["Selectors"]
  GETTABLEKS R57 R58 K76 ["GetHasUnsavedChanges"]
  CALL R56 1 1
  GETIMPORT R57 K17 [require]
  GETTABLEKS R60 R7 K46 ["Src"]
  GETTABLEKS R59 R60 K47 ["Util"]
  GETTABLEKS R58 R59 K77 ["IsTeamCreateEnabled"]
  CALL R57 1 1
  GETTABLEKS R58 R12 K47 ["Util"]
  GETTABLEKS R59 R58 K78 ["LayoutOrderIterator"]
  GETIMPORT R60 K17 [require]
  GETTABLEKS R63 R7 K46 ["Src"]
  GETTABLEKS R62 R63 K47 ["Util"]
  GETTABLEKS R61 R62 K79 ["Analytics"]
  CALL R60 1 1
  OR R61 R2 R1
  GETTABLEKS R62 R22 K80 ["View"]
  GETIMPORT R63 K17 [require]
  GETTABLEKS R65 R7 K18 ["Packages"]
  GETTABLEKS R64 R65 K81 ["React"]
  CALL R63 1 1
  GETIMPORT R64 K17 [require]
  GETTABLEKS R67 R7 K46 ["Src"]
  GETTABLEKS R66 R67 K49 ["Components"]
  GETTABLEKS R65 R66 K82 ["Header"]
  CALL R64 1 1
  GETTABLEKS R65 R8 K83 ["PureComponent"]
  LOADK R67 K84 ["PermissionsView"]
  NAMECALL R65 R65 K85 ["extend"]
  CALL R65 2 1
  GETIMPORT R66 K17 [require]
  GETTABLEKS R70 R7 K46 ["Src"]
  GETTABLEKS R69 R70 K47 ["Util"]
  GETTABLEKS R68 R69 K86 ["Telemetry"]
  GETTABLEKS R67 R68 K87 ["CTAClickedEvent"]
  CALL R66 1 1
  GETIMPORT R67 K17 [require]
  GETTABLEKS R71 R7 K46 ["Src"]
  GETTABLEKS R70 R71 K47 ["Util"]
  GETTABLEKS R69 R70 K86 ["Telemetry"]
  GETTABLEKS R68 R69 K88 ["SafetyUpsellBannerShownEvent"]
  CALL R67 1 1
  GETIMPORT R68 K17 [require]
  GETTABLEKS R70 R7 K18 ["Packages"]
  GETTABLEKS R69 R70 K89 ["TelemetryProtocol"]
  CALL R68 1 1
  GETTABLEKS R69 R68 K90 ["new"]
  CALL R69 0 1
  GETIMPORT R70 K17 [require]
  GETTABLEKS R73 R7 K46 ["Src"]
  GETTABLEKS R72 R73 K49 ["Components"]
  GETTABLEKS R71 R72 K91 ["UpsellDialog"]
  CALL R70 1 1
  GETIMPORT R71 K17 [require]
  GETTABLEKS R74 R7 K46 ["Src"]
  GETTABLEKS R73 R74 K38 ["Enums"]
  GETTABLEKS R72 R73 K92 ["CanCollaborateError"]
  CALL R71 1 1
  DUPCLOSURE R72 K93 [PROTO_0]
  CAPTURE VAL R42
  CAPTURE VAL R69
  CAPTURE VAL R66
  CAPTURE VAL R4
  DUPCLOSURE R73 K94 [PROTO_2]
  CAPTURE VAL R5
  DUPCLOSURE R74 K95 [PROTO_3]
  SETTABLEKS R74 R65 K96 ["isGroupGame"]
  DUPCLOSURE R74 K97 [PROTO_4]
  CAPTURE VAL R4
  SETTABLEKS R74 R65 K98 ["isLoggedInUserGameOwner"]
  DUPCLOSURE R74 K99 [PROTO_9]
  CAPTURE VAL R8
  CAPTURE VAL R42
  CAPTURE VAL R69
  CAPTURE VAL R66
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R67
  SETTABLEKS R74 R65 K100 ["init"]
  DUPCLOSURE R74 K101 [PROTO_19]
  CAPTURE VAL R44
  CAPTURE VAL R45
  CAPTURE VAL R69
  CAPTURE VAL R67
  CAPTURE VAL R4
  SETTABLEKS R74 R65 K102 ["didUpdate"]
  DUPCLOSURE R74 K103 [PROTO_20]
  CAPTURE VAL R46
  CAPTURE VAL R71
  CAPTURE VAL R6
  CAPTURE VAL R5
  SETGLOBAL R74 K104 ["checkAndMaybeShowVerifyAgeDialog"]
  DUPCLOSURE R74 K105 [PROTO_21]
  CAPTURE VAL R11
  CAPTURE VAL R41
  CAPTURE VAL R57
  CAPTURE VAL R3
  SETTABLEKS R74 R65 K106 ["onSavePressed"]
  DUPCLOSURE R74 K107 [PROTO_24]
  CAPTURE VAL R41
  CAPTURE VAL R60
  CAPTURE VAL R33
  CAPTURE VAL R21
  CAPTURE VAL R8
  SETTABLEKS R74 R65 K108 ["onCancelPressed"]
  DUPCLOSURE R74 K109 [PROTO_31]
  CAPTURE VAL R44
  CAPTURE VAL R41
  CAPTURE VAL R52
  CAPTURE VAL R51
  CAPTURE VAL R48
  CAPTURE VAL R57
  CAPTURE VAL R61
  CAPTURE VAL R59
  CAPTURE VAL R42
  CAPTURE VAL R8
  CAPTURE VAL R43
  CAPTURE VAL R19
  CAPTURE VAL R63
  CAPTURE VAL R64
  CAPTURE VAL R3
  CAPTURE VAL R62
  CAPTURE VAL R27
  CAPTURE VAL R26
  CAPTURE VAL R28
  CAPTURE VAL R23
  CAPTURE VAL R29
  CAPTURE VAL R30
  CAPTURE VAL R31
  CAPTURE VAL R32
  CAPTURE VAL R2
  CAPTURE VAL R24
  CAPTURE VAL R25
  CAPTURE VAL R35
  CAPTURE VAL R36
  CAPTURE VAL R34
  CAPTURE VAL R0
  CAPTURE VAL R18
  CAPTURE VAL R10
  CAPTURE VAL R70
  CAPTURE VAL R37
  CAPTURE VAL R20
  SETTABLEKS R74 R65 K110 ["render"]
  MOVE R74 R14
  DUPTABLE R75 K111 [{"Stylizer", "Localization"}]
  SETTABLEKS R15 R75 K28 ["Stylizer"]
  SETTABLEKS R16 R75 K29 ["Localization"]
  CALL R74 1 1
  MOVE R75 R65
  CALL R74 1 1
  MOVE R65 R74
  GETTABLEKS R74 R9 K112 ["connect"]
  NEWCLOSURE R75 P10
  CAPTURE VAL R56
  CAPTURE VAL R51
  CAPTURE VAL R52
  CAPTURE VAL R53
  CAPTURE VAL R55
  CAPTURE VAL R11
  CAPTURE VAL R54
  CAPTURE VAL R48
  CAPTURE REF R50
  NEWCLOSURE R76 P11
  CAPTURE VAL R39
  CAPTURE VAL R38
  CAPTURE VAL R41
  CAPTURE REF R40
  CAPTURE VAL R48
  CAPTURE REF R49
  CALL R74 2 1
  MOVE R75 R65
  CALL R74 1 1
  MOVE R65 R74
  CLOSEUPVALS R40
  RETURN R65 1
