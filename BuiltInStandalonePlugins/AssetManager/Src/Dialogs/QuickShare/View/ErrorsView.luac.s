PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K3 [{"tag", "Text"}]
  LOADK R5 K4 ["text-body-medium text-wrap text-align-x-left size-full-0 auto-y content-system-alert"]
  SETTABLEKS R5 R4 K1 ["tag"]
  LOADK R6 K5 ["[%*] %*:%*"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K6 ["name"]
  GETTABLEKS R9 R0 K7 ["assetId"]
  GETTABLEKS R10 R0 K8 ["code"]
  NAMECALL R6 R6 K9 ["format"]
  CALL R6 4 1
  MOVE R5 R6
  SETTABLEKS R5 R4 K2 ["Text"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K2 [{"tag"}]
  LOADK R5 K3 ["col auto-xy"]
  SETTABLEKS R5 R4 K1 ["tag"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K4 ["map"]
  MOVE R6 R0
  NEWCLOSURE R7 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U3
  CAPTURE VAL R1
  CALL R5 2 -1
  CALL R2 -1 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["use"]
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R3 2
  DUPTABLE R4 K3 [{"tag"}]
  LOADK R5 K4 ["col size-full padding-medium gap-medium"]
  SETTABLEKS R5 R4 K2 ["tag"]
  DUPTABLE R5 K9 [{"Title", "Divider", "ErrorsView", "Footer"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K12 [{"tag", "Text", "LayoutOrder"}]
  LOADK R9 K13 ["text-title-medium text-wrap text-align-x-left text-align-y-top size-full-0 auto-y"]
  SETTABLEKS R9 R8 K2 ["tag"]
  LOADK R11 K14 ["QuickShare"]
  LOADK R12 K15 ["ErrorsTitle"]
  NAMECALL R9 R1 K16 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K10 ["Text"]
  LOADN R9 1
  SETTABLEKS R9 R8 K11 ["LayoutOrder"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["Title"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 4
  DUPTABLE R8 K18 [{"LayoutOrder", "orientation"}]
  LOADN R9 2
  SETTABLEKS R9 R8 K11 ["LayoutOrder"]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K19 ["Enums"]
  GETTABLEKS R10 R11 K20 ["DividerOrientation"]
  GETTABLEKS R9 R10 K21 ["Horizontal"]
  SETTABLEKS R9 R8 K17 ["orientation"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K6 ["Divider"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 6
  DUPTABLE R8 K24 [{"LayoutOrder", "tag", "layout", "scroll"}]
  LOADN R9 3
  SETTABLEKS R9 R8 K11 ["LayoutOrder"]
  LOADK R9 K25 ["col size-full-0 fill"]
  SETTABLEKS R9 R8 K2 ["tag"]
  DUPTABLE R9 K27 [{"FillDirection"}]
  GETIMPORT R10 K30 [Enum.FillDirection.Vertical]
  SETTABLEKS R10 R9 K26 ["FillDirection"]
  SETTABLEKS R9 R8 K22 ["layout"]
  DUPTABLE R9 K34 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
  GETIMPORT R10 K37 [Enum.AutomaticSize.Y]
  SETTABLEKS R10 R9 K31 ["AutomaticCanvasSize"]
  GETIMPORT R10 K40 [UDim2.fromOffset]
  LOADN R11 0
  LOADN R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K32 ["CanvasSize"]
  GETIMPORT R10 K41 [Enum.ScrollingDirection.Y]
  SETTABLEKS R10 R9 K33 ["ScrollingDirection"]
  SETTABLEKS R9 R8 K23 ["scroll"]
  GETUPVAL R10 7
  GETTABLEKS R9 R10 K42 ["map"]
  GETTABLEKS R10 R0 K43 ["Errors"]
  GETUPVAL R11 8
  CALL R9 2 -1
  CALL R6 -1 1
  SETTABLEKS R6 R5 K7 ["ErrorsView"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K44 [{"LayoutOrder", "tag"}]
  LOADN R9 4
  SETTABLEKS R9 R8 K11 ["LayoutOrder"]
  LOADK R9 K45 ["row size-full-0 auto-y align-x-right"]
  SETTABLEKS R9 R8 K2 ["tag"]
  NEWTABLE R9 0 1
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K1 ["createElement"]
  GETUPVAL R11 9
  DUPTABLE R12 K50 [{"text", "onActivated", "variant", "size"}]
  LOADK R15 K14 ["QuickShare"]
  LOADK R16 K51 ["CloseButton"]
  NAMECALL R13 R1 K16 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K46 ["text"]
  GETTABLEKS R13 R0 K52 ["OnDone"]
  SETTABLEKS R13 R12 K47 ["onActivated"]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K19 ["Enums"]
  GETTABLEKS R14 R15 K53 ["ButtonVariant"]
  GETTABLEKS R13 R14 K54 ["Emphasis"]
  SETTABLEKS R13 R12 K48 ["variant"]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K19 ["Enums"]
  GETTABLEKS R14 R15 K55 ["InputSize"]
  GETTABLEKS R13 R14 K56 ["Small"]
  SETTABLEKS R13 R12 K49 ["size"]
  CALL R10 2 -1
  SETLIST R9 R10 -1 [1]
  CALL R6 3 1
  SETTABLEKS R6 R5 K8 ["Footer"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetManager"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Foundation"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Dash"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K10 ["View"]
  GETTABLEKS R5 R2 K11 ["Text"]
  GETTABLEKS R6 R2 K12 ["ScrollView"]
  GETTABLEKS R7 R2 K13 ["Button"]
  GETTABLEKS R8 R2 K14 ["Divider"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R0 K6 ["Packages"]
  GETTABLEKS R10 R11 K15 ["Framework"]
  CALL R9 1 1
  GETTABLEKS R10 R9 K16 ["ContextServices"]
  GETTABLEKS R11 R10 K17 ["Localization"]
  DUPCLOSURE R12 K18 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R5
  DUPCLOSURE R13 K19 [PROTO_2]
  CAPTURE VAL R11
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R12
  CAPTURE VAL R7
  RETURN R13 1
