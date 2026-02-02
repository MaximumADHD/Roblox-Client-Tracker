PROTO_0:
  GETUPVAL R2 0
  GETUPVAL R4 1
  DUPTABLE R5 K3 [{"userId", "action", "upsellEntrySurface"}]
  GETUPVAL R6 2
  NAMECALL R6 R6 K4 ["GetUserId"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K0 ["userId"]
  SETTABLEKS R0 R5 K1 ["action"]
  SETTABLEKS R1 R5 K2 ["upsellEntrySurface"]
  NAMECALL R2 R2 K5 ["logRobloxTelemetryEvent"]
  CALL R2 3 0
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
  GETUPVAL R0 0
  GETUPVAL R2 1
  DUPTABLE R3 K3 [{"userId", "action", "upsellEntrySurface"}]
  GETUPVAL R4 2
  NAMECALL R4 R4 K4 ["GetUserId"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K0 ["userId"]
  LOADK R4 K5 ["establish_TC"]
  SETTABLEKS R4 R3 K1 ["action"]
  LOADK R4 K6 ["collab_dialog"]
  SETTABLEKS R4 R3 K2 ["upsellEntrySurface"]
  NAMECALL R0 R0 K7 ["logRobloxTelemetryEvent"]
  CALL R0 3 0
  GETUPVAL R0 3
  GETIMPORT R1 K9 [pcall]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U4
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
  GETUPVAL R1 5
  GETTABLEKS R0 R1 K15 ["onClose"]
  CALL R0 0 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  GETUPVAL R2 1
  DUPTABLE R3 K3 [{"userId", "action", "upsellEntrySurface"}]
  GETUPVAL R4 2
  NAMECALL R4 R4 K4 ["GetUserId"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K0 ["userId"]
  LOADK R4 K5 ["get_consent"]
  SETTABLEKS R4 R3 K1 ["action"]
  LOADK R4 K6 ["collab_dialog"]
  SETTABLEKS R4 R3 K2 ["upsellEntrySurface"]
  NAMECALL R0 R0 K7 ["logRobloxTelemetryEvent"]
  CALL R0 3 0
  GETUPVAL R0 3
  GETIMPORT R1 K9 [pcall]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U4
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
  GETUPVAL R1 5
  GETTABLEKS R0 R1 K15 ["onClose"]
  CALL R0 0 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["props"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["new"]
  CALL R2 0 1
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETTABLEKS R4 R1 K3 ["Design"]
  NAMECALL R5 R4 K4 ["get"]
  CALL R5 1 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K5 ["createElement"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K6 ["UI"]
  GETTABLEKS R7 R8 K7 ["Dialog"]
  DUPTABLE R8 K15 [{"Title", "Enabled", "Modal", "Resizable", "Size", "MinSize", "OnClose"}]
  LOADK R9 K16 [""]
  SETTABLEKS R9 R8 K8 ["Title"]
  LOADB R9 1
  SETTABLEKS R9 R8 K9 ["Enabled"]
  GETUPVAL R10 3
  NOT R9 R10
  SETTABLEKS R9 R8 K10 ["Modal"]
  LOADB R9 0
  SETTABLEKS R9 R8 K11 ["Resizable"]
  GETIMPORT R9 K18 [Vector2.new]
  LOADN R10 94
  LOADN R11 200
  CALL R9 2 1
  SETTABLEKS R9 R8 K12 ["Size"]
  GETIMPORT R9 K18 [Vector2.new]
  LOADN R10 94
  LOADN R11 200
  CALL R9 2 1
  SETTABLEKS R9 R8 K13 ["MinSize"]
  GETTABLEKS R9 R1 K19 ["onClose"]
  SETTABLEKS R9 R8 K14 ["OnClose"]
  DUPTABLE R9 K22 [{"StyleLink", "MainView"}]
  JUMPIFNOT R5 [+9]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K5 ["createElement"]
  LOADK R11 K20 ["StyleLink"]
  DUPTABLE R12 K24 [{"StyleSheet"}]
  SETTABLEKS R5 R12 K23 ["StyleSheet"]
  CALL R10 2 1
  JUMPIF R10 [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K20 ["StyleLink"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K5 ["createElement"]
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K25 ["View"]
  DUPTABLE R12 K27 [{"tag"}]
  LOADK R13 K28 ["size-full-full col gap-large padding-large bg-surface-200 radius-none"]
  SETTABLEKS R13 R12 K26 ["tag"]
  DUPTABLE R13 K33 [{"UpsellTitle", "UpsellBody", "Spacer", "Footer"}]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K5 ["createElement"]
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K34 ["Text"]
  DUPTABLE R16 K36 [{"tag", "LayoutOrder", "Text"}]
  LOADK R17 K37 ["auto-xy size-0-0  text-align-y-center text-align-x-left text-title-medium text-wrap"]
  SETTABLEKS R17 R16 K26 ["tag"]
  NAMECALL R17 R2 K38 ["getNextOrder"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K35 ["LayoutOrder"]
  LOADK R19 K39 ["UpsellDialog"]
  LOADK R20 K40 ["title"]
  NAMECALL R17 R3 K41 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K34 ["Text"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K29 ["UpsellTitle"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K5 ["createElement"]
  GETUPVAL R15 5
  DUPTABLE R16 K42 [{"LayoutOrder", "tag", "Text"}]
  NAMECALL R17 R2 K38 ["getNextOrder"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K35 ["LayoutOrder"]
  LOADK R17 K43 ["auto-xy size-0-0 text-align-x-left text-body-small text-wrap flex-y-fill"]
  SETTABLEKS R17 R16 K26 ["tag"]
  LOADK R19 K39 ["UpsellDialog"]
  LOADK R20 K44 ["description"]
  NAMECALL R17 R3 K41 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K34 ["Text"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K30 ["UpsellBody"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K5 ["createElement"]
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K25 ["View"]
  DUPTABLE R16 K45 [{"tag", "LayoutOrder"}]
  LOADK R17 K46 ["fill"]
  SETTABLEKS R17 R16 K26 ["tag"]
  NAMECALL R17 R2 K38 ["getNextOrder"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K35 ["LayoutOrder"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K31 ["Spacer"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K5 ["createElement"]
  GETUPVAL R15 6
  DUPTABLE R16 K45 [{"tag", "LayoutOrder"}]
  LOADK R17 K47 ["size-full-0 auto-y row gap-small"]
  SETTABLEKS R17 R16 K26 ["tag"]
  NAMECALL R17 R2 K38 ["getNextOrder"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K35 ["LayoutOrder"]
  DUPTABLE R17 K50 [{"Spacer", "TrustedConnectionsButton", "VPCButton"}]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K5 ["createElement"]
  GETUPVAL R20 4
  GETTABLEKS R19 R20 K25 ["View"]
  DUPTABLE R20 K45 [{"tag", "LayoutOrder"}]
  LOADK R21 K46 ["fill"]
  SETTABLEKS R21 R20 K26 ["tag"]
  NAMECALL R21 R2 K38 ["getNextOrder"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K35 ["LayoutOrder"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K31 ["Spacer"]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K5 ["createElement"]
  GETUPVAL R20 4
  GETTABLEKS R19 R20 K51 ["Button"]
  DUPTABLE R20 K56 [{"text", "variant", "onActivated", "size", "LayoutOrder"}]
  LOADK R23 K39 ["UpsellDialog"]
  LOADK R24 K48 ["TrustedConnectionsButton"]
  NAMECALL R21 R3 K41 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K52 ["text"]
  GETUPVAL R24 4
  GETTABLEKS R23 R24 K57 ["Enums"]
  GETTABLEKS R22 R23 K58 ["ButtonVariant"]
  GETTABLEKS R21 R22 K59 ["Emphasis"]
  SETTABLEKS R21 R20 K53 ["variant"]
  NEWCLOSURE R21 P0
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE VAL R1
  SETTABLEKS R21 R20 K54 ["onActivated"]
  GETUPVAL R24 4
  GETTABLEKS R23 R24 K57 ["Enums"]
  GETTABLEKS R22 R23 K60 ["InputSize"]
  GETTABLEKS R21 R22 K61 ["Small"]
  SETTABLEKS R21 R20 K55 ["size"]
  NAMECALL R21 R2 K38 ["getNextOrder"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K35 ["LayoutOrder"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K48 ["TrustedConnectionsButton"]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K5 ["createElement"]
  GETUPVAL R20 4
  GETTABLEKS R19 R20 K51 ["Button"]
  DUPTABLE R20 K56 [{"text", "variant", "onActivated", "size", "LayoutOrder"}]
  LOADK R23 K39 ["UpsellDialog"]
  LOADK R24 K62 ["ParentalConsentButton"]
  NAMECALL R21 R3 K41 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K52 ["text"]
  GETUPVAL R24 4
  GETTABLEKS R23 R24 K57 ["Enums"]
  GETTABLEKS R22 R23 K58 ["ButtonVariant"]
  GETTABLEKS R21 R22 K63 ["Standard"]
  SETTABLEKS R21 R20 K53 ["variant"]
  NEWCLOSURE R21 P1
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U12
  CAPTURE UPVAL U11
  CAPTURE VAL R1
  SETTABLEKS R21 R20 K54 ["onActivated"]
  GETUPVAL R24 4
  GETTABLEKS R23 R24 K57 ["Enums"]
  GETTABLEKS R22 R23 K60 ["InputSize"]
  GETTABLEKS R21 R22 K61 ["Small"]
  SETTABLEKS R21 R20 K55 ["size"]
  NAMECALL R21 R2 K38 ["getNextOrder"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K35 ["LayoutOrder"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K49 ["VPCButton"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K32 ["Footer"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K21 ["MainView"]
  CALL R6 3 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [game]
  LOADK R3 K5 ["DebugBuiltInPluginModalsNotBlocking"]
  NAMECALL R1 R1 K6 ["GetFastFlag"]
  CALL R1 2 1
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R0 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R0 K9 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Foundation"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K12 ["View"]
  GETTABLEKS R5 R3 K13 ["Text"]
  GETIMPORT R6 K8 [require]
  GETTABLEKS R8 R0 K9 ["Packages"]
  GETTABLEKS R7 R8 K14 ["Framework"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K15 ["ContextServices"]
  GETTABLEKS R8 R7 K16 ["withContext"]
  GETTABLEKS R9 R7 K17 ["Localization"]
  GETTABLEKS R10 R6 K18 ["Util"]
  GETTABLEKS R11 R10 K19 ["LayoutOrderIterator"]
  GETIMPORT R12 K4 [game]
  LOADK R14 K20 ["BrowserService"]
  NAMECALL R12 R12 K21 ["GetService"]
  CALL R12 2 1
  GETIMPORT R13 K4 [game]
  LOADK R15 K22 ["StudioService"]
  NAMECALL R13 R13 K21 ["GetService"]
  CALL R13 2 1
  GETIMPORT R14 K8 [require]
  GETTABLEKS R18 R0 K23 ["Src"]
  GETTABLEKS R17 R18 K18 ["Util"]
  GETTABLEKS R16 R17 K24 ["Telemetry"]
  GETTABLEKS R15 R16 K25 ["CTAClickedEvent"]
  CALL R14 1 1
  GETIMPORT R15 K8 [require]
  GETTABLEKS R17 R0 K9 ["Packages"]
  GETTABLEKS R16 R17 K26 ["TelemetryProtocol"]
  CALL R15 1 1
  GETTABLEKS R16 R15 K27 ["new"]
  CALL R16 0 1
  GETTABLEKS R17 R2 K28 ["PureComponent"]
  LOADK R19 K29 ["UpsellDialog"]
  NAMECALL R17 R17 K30 ["extend"]
  CALL R17 2 1
  GETIMPORT R18 K4 [game]
  LOADK R20 K31 ["StartVPCLink"]
  LOADK R21 K32 ["https://www.roblox.com/my/account?creatorCollaboration"]
  NAMECALL R18 R18 K33 ["DefineFastString"]
  CALL R18 3 1
  GETIMPORT R19 K4 [game]
  LOADK R21 K34 ["TrustedConnectionsHelpdeskLink"]
  LOADK R22 K35 ["https://help.roblox.com/hc/en-us/articles/37725513985812-Unlocking-Trusted-Connections-Expressive-Chat-Features-Party-Voice-chat-without-filters"]
  NAMECALL R19 R19 K33 ["DefineFastString"]
  CALL R19 3 1
  DUPCLOSURE R20 K36 [PROTO_0]
  CAPTURE VAL R16
  CAPTURE VAL R14
  CAPTURE VAL R13
  DUPCLOSURE R21 K37 [PROTO_2]
  CAPTURE VAL R12
  DUPCLOSURE R22 K38 [PROTO_5]
  CAPTURE VAL R11
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R16
  CAPTURE VAL R14
  CAPTURE VAL R13
  CAPTURE VAL R19
  CAPTURE VAL R12
  CAPTURE VAL R18
  SETTABLEKS R22 R17 K39 ["render"]
  MOVE R22 R8
  DUPTABLE R23 K41 [{"Localization", "Design"}]
  SETTABLEKS R9 R23 K17 ["Localization"]
  GETTABLEKS R24 R7 K40 ["Design"]
  SETTABLEKS R24 R23 K40 ["Design"]
  CALL R22 1 1
  MOVE R23 R17
  CALL R22 1 1
  MOVE R17 R22
  RETURN R17 1
