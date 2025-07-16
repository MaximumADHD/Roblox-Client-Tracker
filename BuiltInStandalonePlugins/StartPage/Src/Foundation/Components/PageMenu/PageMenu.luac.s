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
  LOADK R8 K9 ["icons/logo/studiologo"]
  SETTABLEKS R8 R7 K5 ["Image"]
  LOADK R8 K10 ["size-800 content-default"]
  SETTABLEKS R8 R7 K2 ["tag"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K5 ["Image"]
  GETTABLEKS R6 R0 K11 ["isCollapsed"]
  JUMPIFNOT R6 [+2]
  LOADNIL R5
  JUMP [+15]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 3
  DUPTABLE R7 K12 [{"LayoutOrder", "Text", "tag"}]
  LOADN R8 2
  SETTABLEKS R8 R7 K1 ["LayoutOrder"]
  LOADK R8 K13 ["Roblox Studio"]
  SETTABLEKS R8 R7 K6 ["Text"]
  LOADK R8 K14 ["text-align-x-left auto-xy text-title-medium content-default"]
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
  DUPTABLE R3 K2 [{"NewButton"}]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K3 ["createElement"]
  GETUPVAL R5 3
  DUPTABLE R6 K6 [{"LayoutOrder", "isCollapsed"}]
  LOADN R7 1
  SETTABLEKS R7 R6 K4 ["LayoutOrder"]
  GETTABLEKS R7 R0 K5 ["isCollapsed"]
  SETTABLEKS R7 R6 K5 ["isCollapsed"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K1 ["NewButton"]
  GETTABLEKS R4 R0 K7 ["pages"]
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETTABLEKS R10 R0 K8 ["selectedPage"]
  JUMPIFEQ R10 R8 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  MOVE R11 R3
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K3 ["createElement"]
  GETUPVAL R13 4
  DUPTABLE R14 K13 [{"LayoutOrder", "onActivated", "isActive", "icon", "isCollapsed", "text"}]
  ADDK R15 R7 K14 [1]
  SETTABLEKS R15 R14 K4 ["LayoutOrder"]
  NEWCLOSURE R15 P0
  CAPTURE VAL R0
  CAPTURE VAL R8
  SETTABLEKS R15 R14 K9 ["onActivated"]
  SETTABLEKS R9 R14 K10 ["isActive"]
  JUMPIFNOT R9 [+3]
  GETTABLEKS R15 R8 K15 ["ActiveIcon"]
  JUMP [+2]
  GETTABLEKS R15 R8 K16 ["Icon"]
  SETTABLEKS R15 R14 K11 ["icon"]
  GETTABLEKS R15 R0 K5 ["isCollapsed"]
  SETTABLEKS R15 R14 K5 ["isCollapsed"]
  LOADK R17 K17 ["Plugin"]
  GETTABLEKS R18 R8 K18 ["TextKey"]
  NAMECALL R15 R2 K19 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K12 ["text"]
  CALL R12 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R10 K22 [table.insert]
  CALL R10 -1 0
  FORGLOOP R4 2 [-48]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K3 ["createElement"]
  GETUPVAL R5 5
  DUPTABLE R6 K25 [{"Size", "tag"}]
  GETTABLEKS R8 R0 K5 ["isCollapsed"]
  JUMPIFNOT R8 [+2]
  GETUPVAL R7 6
  JUMP [+1]
  GETUPVAL R7 7
  SETTABLEKS R7 R6 K23 ["Size"]
  LOADK R7 K26 ["padding-medium col auto-x flex-x-fill"]
  SETTABLEKS R7 R6 K24 ["tag"]
  DUPTABLE R7 K29 [{"Pages", "Collapse"}]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 5
  DUPTABLE R10 K30 [{"LayoutOrder", "tag"}]
  MOVE R11 R1
  CALL R11 0 1
  SETTABLEKS R11 R10 K4 ["LayoutOrder"]
  LOADK R11 K31 ["col gap-small grow flex-x-fill auto-xy"]
  SETTABLEKS R11 R10 K24 ["tag"]
  MOVE R11 R3
  CALL R8 3 1
  SETTABLEKS R8 R7 K27 ["Pages"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 4
  DUPTABLE R10 K32 [{"LayoutOrder", "icon", "onActivated", "text", "isCollapsed"}]
  MOVE R11 R1
  CALL R11 0 1
  SETTABLEKS R11 R10 K4 ["LayoutOrder"]
  GETTABLEKS R12 R0 K5 ["isCollapsed"]
  JUMPIFNOT R12 [+2]
  LOADK R11 K33 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Large/SidebarOpen.png"]
  JUMP [+1]
  LOADK R11 K34 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Large/SidebarCollapse.png"]
  SETTABLEKS R11 R10 K11 ["icon"]
  GETTABLEKS R11 R0 K35 ["toggleIsCollapsed"]
  SETTABLEKS R11 R10 K9 ["onActivated"]
  LOADK R13 K17 ["Plugin"]
  GETTABLEKS R15 R0 K5 ["isCollapsed"]
  JUMPIFNOT R15 [+2]
  LOADK R14 K36 ["PageMenu.Open"]
  JUMP [+1]
  LOADK R14 K37 ["PageMenu.Hide"]
  NAMECALL R11 R2 K19 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K12 ["text"]
  GETTABLEKS R11 R0 K5 ["isCollapsed"]
  SETTABLEKS R11 R10 K5 ["isCollapsed"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K28 ["Collapse"]
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
  GETTABLEKS R7 R8 K9 ["Util"]
  GETTABLEKS R6 R7 K14 ["Foundation"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K15 ["View"]
  GETTABLEKS R7 R5 K16 ["Image"]
  GETTABLEKS R8 R5 K17 ["Text"]
  GETIMPORT R9 K5 [require]
  GETIMPORT R12 K1 [script]
  GETTABLEKS R11 R12 K18 ["Parent"]
  GETTABLEKS R10 R11 K19 ["NewButton"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETIMPORT R13 K1 [script]
  GETTABLEKS R12 R13 K18 ["Parent"]
  GETTABLEKS R11 R12 K20 ["CollapsibleButton"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R13 R0 K13 ["Src"]
  GETTABLEKS R12 R13 K21 ["Types"]
  CALL R11 1 1
  DUPCLOSURE R12 K22 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R8
  GETIMPORT R13 K25 [UDim2.fromScale]
  LOADN R14 0
  LOADN R15 1
  CALL R13 2 1
  GETIMPORT R14 K27 [UDim2.new]
  LOADN R15 0
  LOADN R16 200
  LOADN R17 1
  LOADN R18 0
  CALL R14 4 1
  DUPCLOSURE R15 K28 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R6
  CAPTURE VAL R13
  CAPTURE VAL R14
  RETURN R15 1
