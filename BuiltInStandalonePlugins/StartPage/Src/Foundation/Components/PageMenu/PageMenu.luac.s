PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K3 [{"LayoutOrder", "tag"}]
  GETTABLEKS R4 R0 K1 ["LayoutOrder"]
  SETTABLEKS R4 R3 K1 ["LayoutOrder"]
  LOADK R4 K4 ["row align-x-left align-y-center radius-medium padding-medium gap-medium auto-xy"]
  SETTABLEKS R4 R3 K2 ["tag"]
  DUPTABLE R4 K7 [{"Image", "Text"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K8 [{"LayoutOrder", "Image", "tag"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K1 ["LayoutOrder"]
  LOADK R8 K9 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Medium/StudioLogo.png"]
  SETTABLEKS R8 R7 K5 ["Image"]
  LOADK R8 K10 ["size-600 content-default"]
  SETTABLEKS R8 R7 K2 ["tag"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K5 ["Image"]
  GETTABLEKS R6 R0 K11 ["isCollapsed"]
  JUMPIFNOT R6 [+2]
  LOADNIL R5
  JUMP [+18]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K13 [{"Size", "LayoutOrder", "Image", "tag"}]
  GETUPVAL R8 3
  SETTABLEKS R8 R7 K12 ["Size"]
  LOADN R8 2
  SETTABLEKS R8 R7 K1 ["LayoutOrder"]
  LOADK R8 K14 ["rbxasset://textures/StartPage/RobloxStudioLockup.png"]
  SETTABLEKS R8 R7 K5 ["Image"]
  LOADK R8 K15 ["content-default"]
  SETTABLEKS R8 R7 K2 ["tag"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K6 ["Text"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onPageSwap"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R2 1
  NAMECALL R2 R2 K0 ["use"]
  CALL R2 1 1
  DUPTABLE R3 K3 [{"StudioLogo", "NewButton"}]
  GETUPVAL R5 2
  JUMPIFNOT R5 [+14]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K4 ["createElement"]
  GETUPVAL R5 4
  DUPTABLE R6 K7 [{"LayoutOrder", "isCollapsed"}]
  LOADN R7 1
  SETTABLEKS R7 R6 K5 ["LayoutOrder"]
  GETTABLEKS R7 R0 K6 ["isCollapsed"]
  SETTABLEKS R7 R6 K6 ["isCollapsed"]
  CALL R4 2 1
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K1 ["StudioLogo"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K4 ["createElement"]
  GETUPVAL R5 5
  DUPTABLE R6 K7 [{"LayoutOrder", "isCollapsed"}]
  LOADN R7 2
  SETTABLEKS R7 R6 K5 ["LayoutOrder"]
  GETTABLEKS R7 R0 K6 ["isCollapsed"]
  SETTABLEKS R7 R6 K6 ["isCollapsed"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K2 ["NewButton"]
  GETTABLEKS R4 R0 K8 ["pages"]
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETTABLEKS R10 R0 K9 ["selectedPage"]
  JUMPIFEQ R10 R8 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  MOVE R11 R3
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K4 ["createElement"]
  GETUPVAL R13 6
  DUPTABLE R14 K14 [{"LayoutOrder", "onActivated", "isActive", "icon", "isCollapsed", "text"}]
  ADDK R15 R7 K15 [2]
  SETTABLEKS R15 R14 K5 ["LayoutOrder"]
  NEWCLOSURE R15 P0
  CAPTURE VAL R0
  CAPTURE VAL R8
  SETTABLEKS R15 R14 K10 ["onActivated"]
  SETTABLEKS R9 R14 K11 ["isActive"]
  JUMPIFNOT R9 [+3]
  GETTABLEKS R15 R8 K16 ["ActiveIcon"]
  JUMP [+2]
  GETTABLEKS R15 R8 K17 ["Icon"]
  SETTABLEKS R15 R14 K12 ["icon"]
  GETTABLEKS R15 R0 K6 ["isCollapsed"]
  SETTABLEKS R15 R14 K6 ["isCollapsed"]
  LOADK R17 K18 ["Plugin"]
  GETTABLEKS R18 R8 K19 ["TextKey"]
  NAMECALL R15 R2 K20 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K13 ["text"]
  CALL R12 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R10 K23 [table.insert]
  CALL R10 -1 0
  FORGLOOP R4 2 [-48]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K4 ["createElement"]
  GETUPVAL R5 7
  DUPTABLE R6 K26 [{"Size", "tag"}]
  GETTABLEKS R8 R0 K6 ["isCollapsed"]
  JUMPIFNOT R8 [+2]
  GETUPVAL R7 8
  JUMP [+1]
  GETUPVAL R7 9
  SETTABLEKS R7 R6 K24 ["Size"]
  LOADK R7 K27 ["padding-medium col auto-x flex-x-fill"]
  SETTABLEKS R7 R6 K25 ["tag"]
  DUPTABLE R7 K30 [{"TopGroup", "Collapse"}]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K4 ["createElement"]
  GETUPVAL R9 7
  DUPTABLE R10 K31 [{"LayoutOrder", "tag"}]
  MOVE R11 R1
  CALL R11 0 1
  SETTABLEKS R11 R10 K5 ["LayoutOrder"]
  LOADK R11 K32 ["col gap-small grow flex-x-fill auto-xy"]
  SETTABLEKS R11 R10 K25 ["tag"]
  MOVE R11 R3
  CALL R8 3 1
  SETTABLEKS R8 R7 K28 ["TopGroup"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K4 ["createElement"]
  GETUPVAL R9 6
  DUPTABLE R10 K33 [{"LayoutOrder", "icon", "onActivated", "text", "isCollapsed"}]
  MOVE R11 R1
  CALL R11 0 1
  SETTABLEKS R11 R10 K5 ["LayoutOrder"]
  GETTABLEKS R12 R0 K6 ["isCollapsed"]
  JUMPIFNOT R12 [+2]
  LOADK R11 K34 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Large/SidebarOpen.png"]
  JUMP [+1]
  LOADK R11 K35 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Large/SidebarCollapse.png"]
  SETTABLEKS R11 R10 K12 ["icon"]
  GETTABLEKS R11 R0 K36 ["toggleIsCollapsed"]
  SETTABLEKS R11 R10 K10 ["onActivated"]
  LOADK R13 K18 ["Plugin"]
  GETTABLEKS R15 R0 K6 ["isCollapsed"]
  JUMPIFNOT R15 [+2]
  LOADK R14 K37 ["PageMenu.Open"]
  JUMP [+1]
  LOADK R14 K38 ["PageMenu.Hide"]
  NAMECALL R11 R2 K20 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K13 ["text"]
  GETTABLEKS R11 R0 K6 ["isCollapsed"]
  SETTABLEKS R11 R10 K6 ["isCollapsed"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K29 ["Collapse"]
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["counter"]
  GETTABLEKS R5 R2 K11 ["ContextServices"]
  GETTABLEKS R4 R5 K12 ["Localization"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K13 ["Src"]
  GETTABLEKS R7 R8 K14 ["SharedFlags"]
  GETTABLEKS R6 R7 K15 ["getFFlagLuaStartPageStudioLogo"]
  CALL R5 1 1
  CALL R5 0 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K13 ["Src"]
  GETTABLEKS R8 R9 K9 ["Util"]
  GETTABLEKS R7 R8 K16 ["Foundation"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K17 ["View"]
  GETTABLEKS R8 R6 K18 ["Image"]
  GETIMPORT R9 K5 [require]
  GETIMPORT R12 K1 [script]
  GETTABLEKS R11 R12 K19 ["Parent"]
  GETTABLEKS R10 R11 K20 ["NewButton"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETIMPORT R13 K1 [script]
  GETTABLEKS R12 R13 K19 ["Parent"]
  GETTABLEKS R11 R12 K21 ["CollapsibleButton"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R13 R0 K13 ["Src"]
  GETTABLEKS R12 R13 K22 ["Types"]
  CALL R11 1 1
  GETIMPORT R12 K25 [UDim2.new]
  LOADN R13 0
  LOADN R14 96
  LOADN R15 0
  LOADN R16 24
  CALL R12 4 1
  DUPCLOSURE R13 K26 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R12
  GETIMPORT R14 K28 [UDim2.fromScale]
  LOADN R15 0
  LOADN R16 1
  CALL R14 2 1
  GETIMPORT R15 K25 [UDim2.new]
  LOADN R16 0
  LOADN R17 200
  LOADN R18 1
  LOADN R19 0
  CALL R15 4 1
  DUPCLOSURE R16 K29 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R13
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R7
  CAPTURE VAL R14
  CAPTURE VAL R15
  RETURN R16 1
