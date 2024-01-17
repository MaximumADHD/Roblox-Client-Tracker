PROTO_0:
  GETUPVAL R1 0
  GETUPVAL R3 1
  NAMECALL R1 R1 K0 ["getScriptCollaborationEnabled"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K1 ["ScriptCollabEnabled"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETUPVAL R3 1
  NAMECALL R1 R1 K0 ["getScriptCollaborationEnabledOnServer"]
  CALL R1 2 1
  GETUPVAL R2 2
  SETTABLE R1 R0 R2
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["getIsTeamCreateEnabled"]
  CALL R1 1 1
  GETUPVAL R2 1
  SETTABLE R1 R0 R2
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETUPVAL R3 1
  NAMECALL R1 R1 K0 ["getVoiceChatEnabled"]
  CALL R1 2 1
  GETUPVAL R2 2
  SETTABLE R1 R0 R2
  RETURN R0 0

PROTO_4:
  NAMECALL R2 R0 K0 ["getState"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K1 ["Metadata"]
  GETTABLEKS R3 R4 K2 ["game"]
  GETTABLEKS R5 R2 K1 ["Metadata"]
  GETTABLEKS R4 R5 K3 ["gameId"]
  GETTABLEKS R5 R1 K4 ["gameOptionsController"]
  NEWTABLE R6 0 3
  NEWCLOSURE R7 P0
  CAPTURE VAL R5
  CAPTURE VAL R3
  NEWCLOSURE R8 P1
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE UPVAL U0
  NEWCLOSURE R9 P2
  CAPTURE VAL R5
  CAPTURE UPVAL U1
  SETLIST R6 R7 3 [1]
  GETUPVAL R7 2
  JUMPIFNOTEQKB R7 FALSE [+8]
  LENGTH R8 R6
  ADDK R7 R8 K5 [1]
  NEWCLOSURE R8 P3
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE UPVAL U3
  SETTABLE R8 R6 R7
  RETURN R6 1

PROTO_5:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Settings"]
  GETTABLEKS R1 R2 K1 ["Changed"]
  GETTABLEKS R0 R1 K2 ["ScriptCollabEnabled"]
  JUMPIFEQKNIL R0 [+7]
  GETUPVAL R1 1
  GETUPVAL R3 2
  MOVE R4 R0
  NAMECALL R1 R1 K3 ["setScriptCollaborationEnabled"]
  CALL R1 3 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Settings"]
  GETTABLEKS R1 R2 K1 ["Changed"]
  GETTABLEKS R0 R1 K2 ["VoiceChatEnabled"]
  JUMPIFEQKNIL R0 [+7]
  GETUPVAL R1 1
  GETUPVAL R3 2
  MOVE R4 R0
  NAMECALL R1 R1 K3 ["setVoiceChatEnabled"]
  CALL R1 3 0
  RETURN R0 0

PROTO_7:
  NAMECALL R2 R0 K0 ["getState"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K1 ["Metadata"]
  GETTABLEKS R3 R4 K2 ["game"]
  GETTABLEKS R5 R2 K1 ["Metadata"]
  GETTABLEKS R4 R5 K3 ["gameId"]
  GETTABLEKS R5 R1 K4 ["gameOptionsController"]
  NEWTABLE R6 0 1
  NEWCLOSURE R7 P0
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R3
  SETLIST R6 R7 1 [1]
  GETUPVAL R7 0
  JUMPIFNOTEQKB R7 FALSE [+8]
  LENGTH R8 R6
  ADDK R7 R8 K5 [1]
  NEWCLOSURE R8 P1
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R4
  SETTABLE R8 R6 R7
  RETURN R6 1

PROTO_8:
  GETTABLEKS R4 R1 K0 ["Settings"]
  GETTABLEKS R3 R4 K1 ["Current"]
  GETTABLEKS R2 R3 K2 ["ScriptCollaborationEnabledOnServer"]
  DUPTABLE R3 K7 [{"ScriptCollabEnabled", "CurrentScriptCollabEnabled", "TeamCreateEnabled", "ScriptCollabEnabledOnServer"}]
  MOVE R4 R0
  LOADK R5 K3 ["ScriptCollabEnabled"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K3 ["ScriptCollabEnabled"]
  GETTABLEKS R6 R1 K0 ["Settings"]
  GETTABLEKS R5 R6 K1 ["Current"]
  GETTABLEKS R4 R5 K3 ["ScriptCollabEnabled"]
  SETTABLEKS R4 R3 K4 ["CurrentScriptCollabEnabled"]
  GETTABLEKS R7 R1 K0 ["Settings"]
  GETTABLEKS R6 R7 K1 ["Current"]
  GETTABLEKS R5 R6 K5 ["TeamCreateEnabled"]
  ORK R4 R5 K8 []
  SETTABLEKS R4 R3 K5 ["TeamCreateEnabled"]
  SETTABLEKS R2 R3 K6 ["ScriptCollabEnabledOnServer"]
  GETUPVAL R4 0
  JUMPIFNOTEQKB R4 FALSE [+6]
  MOVE R4 R0
  GETUPVAL R5 1
  CALL R4 1 1
  SETTABLEKS R4 R3 K9 ["VoiceChatEnabled"]
  RETURN R3 1

PROTO_9:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_10:
  DUPTABLE R2 K2 [{"ScriptCollabEnabledChanged", "dispatchShutdownAllServers"}]
  MOVE R3 R0
  LOADK R4 K3 ["ScriptCollabEnabled"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K0 ["ScriptCollabEnabledChanged"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  SETTABLEKS R3 R2 K1 ["dispatchShutdownAllServers"]
  GETUPVAL R3 1
  JUMPIFNOTEQKB R3 FALSE [+6]
  MOVE R3 R0
  GETUPVAL R4 2
  CALL R3 1 1
  SETTABLEKS R3 R2 K4 ["VoiceChatEnabledChanged"]
  RETURN R2 1

PROTO_11:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["ScriptCollabEnabledChanged"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["ScriptCollabEnabled"]
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_12:
  DUPTABLE R0 K4 [{"Size", "Title", "Header", "Buttons"}]
  GETIMPORT R1 K7 [Vector2.new]
  LOADN R2 87
  LOADN R3 145
  CALL R1 2 1
  SETTABLEKS R1 R0 K0 ["Size"]
  GETUPVAL R1 0
  LOADK R3 K8 ["General"]
  LOADK R4 K9 ["ShutdownDialogHeader"]
  NAMECALL R1 R1 K10 ["getText"]
  CALL R1 3 1
  SETTABLEKS R1 R0 K1 ["Title"]
  GETUPVAL R1 0
  LOADK R3 K8 ["General"]
  LOADK R4 K11 ["ShutdownDialogBody"]
  NAMECALL R1 R1 K10 ["getText"]
  CALL R1 3 1
  SETTABLEKS R1 R0 K2 ["Header"]
  NEWTABLE R1 0 2
  GETUPVAL R2 0
  LOADK R4 K8 ["General"]
  LOADK R5 K12 ["ReplyNo"]
  NAMECALL R2 R2 K10 ["getText"]
  CALL R2 3 1
  GETUPVAL R3 0
  LOADK R5 K8 ["General"]
  LOADK R6 K13 ["ReplyYes"]
  NAMECALL R3 R3 K10 ["getText"]
  CALL R3 3 -1
  SETLIST R1 R2 -1 [1]
  SETTABLEKS R1 R0 K3 ["Buttons"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K14 ["showDialog"]
  GETUPVAL R2 2
  MOVE R3 R0
  CALL R1 2 1
  NAMECALL R1 R1 K15 ["await"]
  CALL R1 1 1
  JUMPIFNOT R1 [+2]
  GETUPVAL R2 3
  CALL R2 0 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["OpenBrowserWindow"]
  CALL R0 2 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["VoiceChatEnabledChanged"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["VoiceChatEnabled"]
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["Localization"]
  DUPTABLE R2 K4 [{"EnableScriptCollab", "ShutdownAllServers"}]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["createElement"]
  GETUPVAL R4 2
  DUPTABLE R5 K13 [{"Title", "Description", "LayoutOrder", "Disabled", "Selected", "ShowWarning", "OnClick"}]
  LOADK R8 K14 ["General"]
  LOADK R9 K15 ["TitleScriptDraftsMode"]
  NAMECALL R6 R1 K16 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K6 ["Title"]
  GETUPVAL R6 3
  SETTABLEKS R6 R5 K7 ["Description"]
  GETUPVAL R6 4
  NAMECALL R6 R6 K17 ["getNextOrder"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K8 ["LayoutOrder"]
  GETUPVAL R7 5
  NOT R6 R7
  SETTABLEKS R6 R5 K9 ["Disabled"]
  GETTABLEKS R6 R0 K18 ["ScriptCollabEnabled"]
  SETTABLEKS R6 R5 K10 ["Selected"]
  GETUPVAL R6 6
  SETTABLEKS R6 R5 K11 ["ShowWarning"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K12 ["OnClick"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K2 ["EnableScriptCollab"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["createElement"]
  GETUPVAL R4 7
  DUPTABLE R5 K19 [{"LayoutOrder", "Title"}]
  GETUPVAL R6 4
  NAMECALL R6 R6 K17 ["getNextOrder"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K8 ["LayoutOrder"]
  LOADK R8 K14 ["General"]
  LOADK R9 K20 ["TitleShutdownAllServers"]
  NAMECALL R6 R1 K16 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K6 ["Title"]
  DUPTABLE R6 K24 [{"VerticalLayout", "ShutdownButton", "ShutdownButtonDescription"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["createElement"]
  LOADK R8 K25 ["UIListLayout"]
  DUPTABLE R9 K29 [{"FillDirection", "HorizontalAlignment", "SortOrder"}]
  GETIMPORT R10 K32 [Enum.FillDirection.Vertical]
  SETTABLEKS R10 R9 K26 ["FillDirection"]
  GETIMPORT R10 K34 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R10 R9 K27 ["HorizontalAlignment"]
  GETIMPORT R10 K35 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R10 R9 K28 ["SortOrder"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K21 ["VerticalLayout"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["createElement"]
  GETUPVAL R8 8
  DUPTABLE R9 K39 [{"Style", "Text", "Size", "LayoutOrder", "OnClick"}]
  LOADK R10 K40 ["GameSettingsButton"]
  SETTABLEKS R10 R9 K36 ["Style"]
  GETUPVAL R10 9
  SETTABLEKS R10 R9 K37 ["Text"]
  GETUPVAL R10 10
  SETTABLEKS R10 R9 K38 ["Size"]
  LOADN R10 1
  SETTABLEKS R10 R9 K8 ["LayoutOrder"]
  NEWCLOSURE R10 P1
  CAPTURE VAL R1
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CAPTURE UPVAL U13
  SETTABLEKS R10 R9 K12 ["OnClick"]
  NEWTABLE R10 0 1
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K5 ["createElement"]
  GETUPVAL R12 14
  DUPTABLE R13 K42 [{"Cursor"}]
  LOADK R14 K43 ["PointingHand"]
  SETTABLEKS R14 R13 K41 ["Cursor"]
  CALL R11 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  SETTABLEKS R7 R6 K22 ["ShutdownButton"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["createElement"]
  LOADK R8 K44 ["TextLabel"]
  GETUPVAL R11 15
  GETTABLEKS R10 R11 K45 ["Dictionary"]
  GETTABLEKS R9 R10 K46 ["join"]
  GETUPVAL R12 16
  GETTABLEKS R11 R12 K47 ["fontStyle"]
  GETTABLEKS R10 R11 K48 ["Subtext"]
  DUPTABLE R11 K53 [{"Size", "LayoutOrder", "BackgroundTransparency", "Text", "TextYAlignment", "TextXAlignment", "TextWrapped"}]
  GETIMPORT R12 K56 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  GETUPVAL R18 17
  GETTABLEKS R17 R18 K57 ["Y"]
  GETUPVAL R20 16
  GETTABLEKS R19 R20 K58 ["shutdownButton"]
  GETTABLEKS R18 R19 K59 ["PaddingY"]
  ADD R16 R17 R18
  CALL R12 4 1
  SETTABLEKS R12 R11 K38 ["Size"]
  LOADN R12 2
  SETTABLEKS R12 R11 K8 ["LayoutOrder"]
  LOADN R12 1
  SETTABLEKS R12 R11 K49 ["BackgroundTransparency"]
  LOADK R14 K14 ["General"]
  LOADK R15 K60 ["StudioShutdownAllServicesDesc"]
  NAMECALL R12 R1 K16 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K37 ["Text"]
  GETIMPORT R12 K62 [Enum.TextYAlignment.Center]
  SETTABLEKS R12 R11 K50 ["TextYAlignment"]
  GETIMPORT R12 K63 [Enum.TextXAlignment.Left]
  SETTABLEKS R12 R11 K51 ["TextXAlignment"]
  LOADB R12 1
  SETTABLEKS R12 R11 K52 ["TextWrapped"]
  CALL R9 2 -1
  CALL R7 -1 1
  SETTABLEKS R7 R6 K23 ["ShutdownButtonDescription"]
  CALL R3 3 1
  SETTABLEKS R3 R2 K3 ["ShutdownAllServers"]
  GETUPVAL R3 18
  JUMPIFNOTEQKB R3 FALSE [+58]
  GETUPVAL R3 19
  JUMPIFNOTEQKB R3 FALSE [+55]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["createElement"]
  GETUPVAL R4 2
  DUPTABLE R5 K65 [{"Title", "LinkProps", "LayoutOrder", "Disabled", "Selected", "OnClick"}]
  LOADK R8 K14 ["General"]
  LOADK R9 K66 ["VoiceChatTitle"]
  NAMECALL R6 R1 K16 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K6 ["Title"]
  DUPTABLE R6 K69 [{"Text", "LinkText", "OnLinkClicked"}]
  LOADK R9 K14 ["General"]
  LOADK R10 K70 ["VoiceChatBody"]
  NAMECALL R7 R1 K16 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K37 ["Text"]
  LOADK R9 K14 ["General"]
  LOADK R10 K71 ["VoiceChatLink"]
  NAMECALL R7 R1 K16 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K67 ["LinkText"]
  DUPCLOSURE R7 K72 [PROTO_13]
  CAPTURE UPVAL U20
  CAPTURE UPVAL U21
  SETTABLEKS R7 R6 K68 ["OnLinkClicked"]
  SETTABLEKS R6 R5 K64 ["LinkProps"]
  GETUPVAL R6 4
  NAMECALL R6 R6 K17 ["getNextOrder"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K8 ["LayoutOrder"]
  LOADB R6 0
  SETTABLEKS R6 R5 K9 ["Disabled"]
  GETTABLEKS R6 R0 K73 ["VoiceChatEnabled"]
  SETTABLEKS R6 R5 K10 ["Selected"]
  NEWCLOSURE R6 P3
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K12 ["OnClick"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K74 ["EnableVoiceChat"]
  RETURN R2 1

PROTO_16:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Dialog"]
  GETTABLEKS R3 R1 K2 ["Stylizer"]
  GETTABLEKS R4 R1 K3 ["Localization"]
  LOADK R7 K4 ["General"]
  LOADK R8 K5 ["ButtonShutdownAllServers"]
  NAMECALL R5 R4 K6 ["getText"]
  CALL R5 3 1
  GETIMPORT R6 K9 [Vector2.new]
  LOADK R7 K10 [∞]
  GETTABLEKS R9 R3 K11 ["button"]
  GETTABLEKS R8 R9 K12 ["height"]
  CALL R6 2 1
  GETUPVAL R7 0
  MOVE R8 R5
  GETTABLEKS R11 R3 K13 ["fontStyle"]
  GETTABLEKS R10 R11 K14 ["Header"]
  GETTABLEKS R9 R10 K15 ["TextSize"]
  GETTABLEKS R12 R3 K13 ["fontStyle"]
  GETTABLEKS R11 R12 K14 ["Header"]
  GETTABLEKS R10 R11 K16 ["Font"]
  MOVE R11 R6
  CALL R7 4 1
  GETTABLEKS R9 R7 K17 ["X"]
  GETTABLEKS R11 R3 K11 ["button"]
  GETTABLEKS R10 R11 K18 ["width"]
  FASTCALL2 MATH_MAX R9 R10 [+3]
  GETIMPORT R8 K21 [math.max]
  CALL R8 2 1
  GETTABLEKS R11 R3 K11 ["button"]
  GETTABLEKS R10 R11 K12 ["height"]
  GETTABLEKS R11 R7 K22 ["Y"]
  SUB R9 R10 R11
  GETIMPORT R10 K24 [UDim2.new]
  LOADN R11 0
  MOVE R12 R8
  LOADN R13 0
  GETTABLEKS R15 R7 K22 ["Y"]
  ADD R14 R15 R9
  CALL R10 4 1
  GETTABLEKS R11 R1 K25 ["dispatchShutdownAllServers"]
  GETTABLEKS R13 R1 K27 ["TeamCreateEnabled"]
  ORK R12 R13 K26 [False]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K8 ["new"]
  CALL R13 0 1
  MOVE R14 R12
  JUMPIFNOT R14 [+8]
  GETTABLEKS R15 R1 K28 ["ScriptCollabEnabledOnServer"]
  GETTABLEKS R16 R1 K29 ["ScriptCollabEnabled"]
  JUMPIFNOTEQ R15 R16 [+2]
  LOADB R14 0 +1
  LOADB R14 1
  LOADNIL R15
  JUMPIF R12 [+7]
  LOADK R18 K4 ["General"]
  LOADK R19 K30 ["EnableTeamCreateForDraftsMode"]
  NAMECALL R16 R4 K6 ["getText"]
  CALL R16 3 1
  MOVE R15 R16
  JUMP [+14]
  JUMPIFNOT R14 [+7]
  LOADK R18 K4 ["General"]
  LOADK R19 K31 ["ServerRestartWarning"]
  NAMECALL R16 R4 K6 ["getText"]
  CALL R16 3 1
  MOVE R15 R16
  JUMP [+6]
  LOADK R18 K4 ["General"]
  LOADK R19 K32 ["ScriptDraftsMode"]
  NAMECALL R16 R4 K6 ["getText"]
  CALL R16 3 1
  MOVE R15 R16
  NEWCLOSURE R16 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE REF R15
  CAPTURE VAL R13
  CAPTURE VAL R12
  CAPTURE VAL R14
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE VAL R5
  CAPTURE VAL R10
  CAPTURE VAL R2
  CAPTURE UPVAL U6
  CAPTURE VAL R11
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K33 ["createElement"]
  GETUPVAL R18 13
  DUPTABLE R19 K39 [{"SettingsLoadJobs", "SettingsSaveJobs", "Title", "PageId", "CreateChildren"}]
  GETUPVAL R20 14
  SETTABLEKS R20 R19 K34 ["SettingsLoadJobs"]
  GETUPVAL R20 15
  SETTABLEKS R20 R19 K35 ["SettingsSaveJobs"]
  LOADK R22 K4 ["General"]
  LOADK R24 K40 ["Category"]
  GETUPVAL R25 16
  CONCAT R23 R24 R25
  NAMECALL R20 R4 K6 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K36 ["Title"]
  GETUPVAL R20 16
  SETTABLEKS R20 R19 K37 ["PageId"]
  SETTABLEKS R16 R19 K38 ["CreateChildren"]
  CALL R17 2 -1
  CLOSEUPVALS R15
  RETURN R17 -1

PROTO_17:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["Settings"]
  MOVE R3 R0
  CALL R1 2 -1
  RETURN R1 -1

PROTO_18:
  JUMPIF R0 [+1]
  RETURN R0 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  GETUPVAL R3 1
  MOVE R4 R2
  MOVE R5 R0
  CALL R3 2 1
  RETURN R3 1

PROTO_19:
  GETUPVAL R1 0
  GETUPVAL R2 1
  GETUPVAL R3 2
  MOVE R4 R0
  CALL R2 2 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_20:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  RETURN R1 1

PROTO_21:
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
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R1 K5 ["Packages"]
  GETTABLEKS R3 R4 K6 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R1 K5 ["Packages"]
  GETTABLEKS R4 R5 K7 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R1 K5 ["Packages"]
  GETTABLEKS R5 R6 K8 ["RoactRodux"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R1 K5 ["Packages"]
  GETTABLEKS R6 R7 K9 ["Framework"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K10 ["ContextServices"]
  GETTABLEKS R7 R6 K11 ["withContext"]
  GETIMPORT R8 K4 [require]
  GETTABLEKS R11 R1 K12 ["Src"]
  GETTABLEKS R10 R11 K13 ["Components"]
  GETTABLEKS R9 R10 K14 ["ToggleButtonWithTitle"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R12 R1 K12 ["Src"]
  GETTABLEKS R11 R12 K10 ["ContextServices"]
  GETTABLEKS R10 R11 K15 ["Dialog"]
  CALL R9 1 1
  GETTABLEKS R10 R5 K16 ["Util"]
  GETTABLEKS R11 R10 K17 ["GetTextSize"]
  GETTABLEKS R12 R10 K18 ["LayoutOrderIterator"]
  GETTABLEKS R13 R5 K19 ["UI"]
  GETTABLEKS R14 R13 K20 ["Button"]
  GETTABLEKS R15 R13 K21 ["HoverArea"]
  GETTABLEKS R16 R13 K22 ["TitledFrame"]
  GETIMPORT R17 K4 [require]
  GETTABLEKS R21 R1 K12 ["Src"]
  GETTABLEKS R20 R21 K13 ["Components"]
  GETTABLEKS R19 R20 K15 ["Dialog"]
  GETTABLEKS R18 R19 K23 ["SimpleDialog"]
  CALL R17 1 1
  GETIMPORT R18 K4 [require]
  GETTABLEKS R22 R1 K12 ["Src"]
  GETTABLEKS R21 R22 K13 ["Components"]
  GETTABLEKS R20 R21 K24 ["SettingsPages"]
  GETTABLEKS R19 R20 K25 ["SettingsPage"]
  CALL R18 1 1
  GETIMPORT R19 K4 [require]
  GETTABLEKS R22 R1 K12 ["Src"]
  GETTABLEKS R21 R22 K26 ["Actions"]
  GETTABLEKS R20 R21 K27 ["AddChange"]
  CALL R19 1 1
  GETIMPORT R20 K4 [require]
  GETTABLEKS R22 R0 K28 ["Thunks"]
  GETTABLEKS R21 R22 K29 ["ShutdownAllServers"]
  CALL R20 1 1
  GETIMPORT R21 K4 [require]
  GETTABLEKS R24 R1 K12 ["Src"]
  GETTABLEKS R23 R24 K16 ["Util"]
  GETTABLEKS R22 R23 K30 ["KeyProvider"]
  CALL R21 1 1
  GETIMPORT R22 K32 [game]
  LOADK R24 K33 ["SpatialVoiceChatLink"]
  LOADK R25 K34 ["https://create.roblox.com/docs/chat/spatial-voice"]
  NAMECALL R22 R22 K35 ["DefineFastString"]
  CALL R22 3 1
  GETIMPORT R23 K32 [game]
  LOADK R25 K36 ["GuiService"]
  NAMECALL R23 R23 K37 ["GetService"]
  CALL R23 2 1
  GETTABLEKS R24 R21 K38 ["getVoiceChatEnabledKeyName"]
  MOVE R25 R24
  CALL R25 0 1
  GETTABLEKS R26 R21 K39 ["getScriptCollaborationEnabledOnServerKeyName"]
  MOVE R27 R26
  CALL R27 0 1
  GETTABLEKS R28 R21 K40 ["getTeamCreateEnabledKeyName"]
  CALL R28 0 1
  GETIMPORT R29 K32 [game]
  LOADK R31 K41 ["AvatarChatSettingsEnabled2"]
  LOADB R32 0
  NAMECALL R29 R29 K42 ["DefineFastFlag"]
  CALL R29 3 1
  GETIMPORT R30 K32 [game]
  LOADK R32 K43 ["MoveSpatialVoice"]
  NAMECALL R30 R30 K44 ["GetFastFlag"]
  CALL R30 2 1
  GETIMPORT R31 K32 [game]
  LOADK R33 K45 ["GameSettingsRenameOptions"]
  NAMECALL R31 R31 K44 ["GetFastFlag"]
  CALL R31 2 0
  GETIMPORT R32 K32 [game]
  LOADK R34 K45 ["GameSettingsRenameOptions"]
  NAMECALL R32 R32 K44 ["GetFastFlag"]
  CALL R32 2 1
  JUMPIFNOT R32 [+2]
  LOADK R31 K46 ["Other"]
  JUMP [+4]
  GETIMPORT R32 K1 [script]
  GETTABLEKS R31 R32 K47 ["Name"]
  DUPCLOSURE R32 K48 [PROTO_4]
  CAPTURE VAL R27
  CAPTURE VAL R28
  CAPTURE VAL R29
  CAPTURE VAL R25
  DUPCLOSURE R33 K49 [PROTO_7]
  CAPTURE VAL R29
  DUPCLOSURE R34 K50 [PROTO_8]
  CAPTURE VAL R29
  CAPTURE VAL R25
  DUPCLOSURE R35 K51 [PROTO_10]
  CAPTURE VAL R20
  CAPTURE VAL R29
  CAPTURE VAL R25
  GETTABLEKS R36 R3 K52 ["PureComponent"]
  GETIMPORT R39 K1 [script]
  GETTABLEKS R38 R39 K47 ["Name"]
  NAMECALL R36 R36 K53 ["extend"]
  CALL R36 2 1
  DUPCLOSURE R37 K54 [PROTO_16]
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R3
  CAPTURE VAL R8
  CAPTURE VAL R16
  CAPTURE VAL R14
  CAPTURE VAL R17
  CAPTURE VAL R15
  CAPTURE VAL R2
  CAPTURE VAL R29
  CAPTURE VAL R30
  CAPTURE VAL R23
  CAPTURE VAL R22
  CAPTURE VAL R18
  CAPTURE VAL R32
  CAPTURE VAL R33
  CAPTURE VAL R31
  SETTABLEKS R37 R36 K55 ["render"]
  MOVE R37 R7
  DUPTABLE R38 K58 [{"Stylizer", "Localization", "Dialog"}]
  GETTABLEKS R39 R6 K56 ["Stylizer"]
  SETTABLEKS R39 R38 K56 ["Stylizer"]
  GETTABLEKS R39 R6 K57 ["Localization"]
  SETTABLEKS R39 R38 K57 ["Localization"]
  SETTABLEKS R9 R38 K15 ["Dialog"]
  CALL R37 1 1
  MOVE R38 R36
  CALL R37 1 1
  MOVE R36 R37
  GETIMPORT R37 K4 [require]
  GETTABLEKS R40 R1 K12 ["Src"]
  GETTABLEKS R39 R40 K59 ["Networking"]
  GETTABLEKS R38 R39 K60 ["settingFromState"]
  CALL R37 1 1
  GETTABLEKS R38 R4 K61 ["connect"]
  DUPCLOSURE R39 K62 [PROTO_18]
  CAPTURE VAL R37
  CAPTURE VAL R34
  DUPCLOSURE R40 K63 [PROTO_21]
  CAPTURE VAL R19
  CAPTURE VAL R35
  CALL R38 2 1
  MOVE R39 R36
  CALL R38 1 1
  MOVE R36 R38
  SETTABLEKS R31 R36 K64 ["LocalizationId"]
  RETURN R36 1
