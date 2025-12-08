PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["OpenBrowserWindow"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["ContextServices"]
  GETTABLEKS R1 R2 K1 ["Localization"]
  NAMECALL R1 R1 K2 ["use"]
  CALL R1 1 1
  GETUPVAL R2 1
  DUPTABLE R3 K6 [{"tooltipText", "shouldIgnoreHoverBlocker", "callbacks"}]
  LOADK R6 K7 ["SyntaxDropdown"]
  LOADK R7 K8 ["SyntaxGuide"]
  NAMECALL R4 R1 K9 ["getText"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K3 ["tooltipText"]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["shouldIgnoreHoverBlocker"]
  DUPTABLE R4 K11 [{"onActivated"}]
  GETUPVAL R5 2
  SETTABLEKS R5 R4 K10 ["onActivated"]
  SETTABLEKS R4 R3 K5 ["callbacks"]
  CALL R2 1 1
  GETUPVAL R3 3
  GETUPVAL R4 4
  DUPTABLE R5 K21 [{"dropdownRef", "enterPressedSignalRef", "headerInfo", "itemData", "onItemClicked", "shouldIgnoreMaxHeight", "selectedItemIndex", "setSelectedItemIndex", "session"}]
  GETTABLEKS R6 R0 K12 ["dropdownRef"]
  SETTABLEKS R6 R5 K12 ["dropdownRef"]
  GETTABLEKS R6 R0 K13 ["enterPressedSignalRef"]
  SETTABLEKS R6 R5 K13 ["enterPressedSignalRef"]
  DUPTABLE R6 K24 [{"titleText", "button"}]
  LOADK R9 K7 ["SyntaxDropdown"]
  LOADK R10 K25 ["SuggestedFilters"]
  NAMECALL R7 R1 K9 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K22 ["titleText"]
  GETUPVAL R7 3
  LOADK R8 K26 ["ImageButton"]
  NEWTABLE R9 8 0
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K27 ["standard"]
  LOADK R11 K28 ["help"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K29 ["Image"]
  GETUPVAL R12 6
  GETTABLEKS R11 R12 K30 ["Event"]
  GETTABLEKS R10 R11 K31 ["Activated"]
  GETTABLEKS R11 R2 K32 ["activated"]
  SETTABLE R11 R9 R10
  GETUPVAL R12 6
  GETTABLEKS R11 R12 K30 ["Event"]
  GETTABLEKS R10 R11 K33 ["MouseEnter"]
  GETTABLEKS R11 R2 K34 ["mouseEnter"]
  SETTABLE R11 R9 R10
  GETUPVAL R12 6
  GETTABLEKS R11 R12 K30 ["Event"]
  GETTABLEKS R10 R11 K35 ["MouseLeave"]
  GETTABLEKS R11 R2 K36 ["mouseLeave"]
  SETTABLE R11 R9 R10
  GETUPVAL R11 6
  GETTABLEKS R10 R11 K37 ["Tag"]
  LOADK R11 K38 ["Explorer-Content-Standard Explorer-Icon data-testid=SyntaxDropdown-HelpButton"]
  SETTABLE R11 R9 R10
  DUPTABLE R10 K40 [{"Tooltip"}]
  GETUPVAL R12 7
  JUMPIFNOT R12 [+2]
  LOADNIL R11
  JUMP [+30]
  GETUPVAL R11 3
  GETUPVAL R12 8
  DUPTABLE R13 K45 [{"anchorPoint", "position", "showDelay", "text"}]
  GETIMPORT R14 K48 [Vector2.new]
  LOADN R15 1
  LOADN R16 0
  CALL R14 2 1
  SETTABLEKS R14 R13 K41 ["anchorPoint"]
  GETIMPORT R14 K50 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 1
  LOADN R18 1
  CALL R14 4 1
  SETTABLEKS R14 R13 K42 ["position"]
  LOADK R14 K51 [0.5]
  SETTABLEKS R14 R13 K43 ["showDelay"]
  LOADK R16 K7 ["SyntaxDropdown"]
  LOADK R17 K8 ["SyntaxGuide"]
  NAMECALL R14 R1 K9 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K44 ["text"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K39 ["Tooltip"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K23 ["button"]
  SETTABLEKS R6 R5 K14 ["headerInfo"]
  GETUPVAL R6 9
  SETTABLEKS R6 R5 K15 ["itemData"]
  GETTABLEKS R6 R0 K16 ["onItemClicked"]
  SETTABLEKS R6 R5 K16 ["onItemClicked"]
  LOADB R6 1
  SETTABLEKS R6 R5 K17 ["shouldIgnoreMaxHeight"]
  GETTABLEKS R6 R0 K18 ["selectedItemIndex"]
  SETTABLEKS R6 R5 K18 ["selectedItemIndex"]
  GETTABLEKS R6 R0 K19 ["setSelectedItemIndex"]
  SETTABLEKS R6 R5 K19 ["setSelectedItemIndex"]
  GETTABLEKS R6 R0 K20 ["session"]
  SETTABLEKS R6 R5 K20 ["session"]
  CALL R3 2 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["BrowserService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["Explorer"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R5 R1 K10 ["Components"]
  GETTABLEKS R4 R5 K11 ["SearchBox"]
  GETTABLEKS R3 R4 K12 ["DEPRECATED_Tooltip"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R6 R1 K10 ["Components"]
  GETTABLEKS R5 R6 K11 ["SearchBox"]
  GETTABLEKS R4 R5 K13 ["Dropdown"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R1 K14 ["Parent"]
  GETTABLEKS R5 R6 K15 ["Framework"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R1 K16 ["Util"]
  GETTABLEKS R6 R7 K17 ["ImageUrl"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R8 R1 K14 ["Parent"]
  GETTABLEKS R7 R8 K18 ["React"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R8 R1 K19 ["RpcTypes"]
  CALL R7 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R10 R1 K14 ["Parent"]
  GETTABLEKS R9 R10 K20 ["Signal"]
  CALL R8 1 1
  GETIMPORT R9 K9 [require]
  GETTABLEKS R11 R1 K21 ["Flags"]
  GETTABLEKS R10 R11 K22 ["getFFlagDevFrameworkExplorerTooltips"]
  CALL R9 1 1
  GETIMPORT R10 K9 [require]
  GETTABLEKS R12 R1 K23 ["Hooks"]
  GETTABLEKS R11 R12 K24 ["useTooltipActions"]
  CALL R10 1 1
  GETIMPORT R11 K1 [game]
  LOADK R13 K25 ["ExplorerSyntaxGuideUrl"]
  LOADK R14 K26 ["https://create.roblox.com/docs/studio/explorer#filtering-instances"]
  NAMECALL R11 R11 K27 ["DefineFastString"]
  CALL R11 3 1
  MOVE R12 R9
  CALL R12 0 1
  GETTABLEKS R13 R6 K28 ["createElement"]
  NEWTABLE R14 0 7
  DUPTABLE R15 K31 [{"text", "icon"}]
  LOADK R16 K32 ["anchored="]
  SETTABLEKS R16 R15 K29 ["text"]
  GETTABLEKS R16 R5 K33 ["standard"]
  LOADK R17 K34 ["anchor"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K30 ["icon"]
  DUPTABLE R16 K31 [{"text", "icon"}]
  LOADK R17 K35 ["locked="]
  SETTABLEKS R17 R16 K29 ["text"]
  GETTABLEKS R17 R5 K33 ["standard"]
  LOADK R18 K36 ["lock"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K30 ["icon"]
  DUPTABLE R17 K31 [{"text", "icon"}]
  LOADK R18 K37 ["transparency="]
  SETTABLEKS R18 R17 K29 ["text"]
  GETTABLEKS R18 R5 K33 ["standard"]
  LOADK R19 K38 ["transparency"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K30 ["icon"]
  DUPTABLE R18 K31 [{"text", "icon"}]
  LOADK R19 K39 ["material="]
  SETTABLEKS R19 R18 K29 ["text"]
  GETTABLEKS R19 R5 K33 ["standard"]
  LOADK R20 K40 ["material"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K30 ["icon"]
  DUPTABLE R19 K31 [{"text", "icon"}]
  LOADK R20 K41 ["meshId="]
  SETTABLEKS R20 R19 K29 ["text"]
  GETTABLEKS R20 R5 K33 ["standard"]
  LOADK R21 K42 ["meshPart"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K30 ["icon"]
  DUPTABLE R20 K31 [{"text", "icon"}]
  LOADK R21 K43 ["textureId="]
  SETTABLEKS R21 R20 K29 ["text"]
  GETTABLEKS R21 R5 K33 ["standard"]
  LOADK R22 K44 ["texture"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K30 ["icon"]
  DUPTABLE R21 K31 [{"text", "icon"}]
  LOADK R22 K45 ["tag:"]
  SETTABLEKS R22 R21 K29 ["text"]
  GETTABLEKS R22 R5 K33 ["standard"]
  LOADK R23 K46 ["tag"]
  CALL R22 1 1
  SETTABLEKS R22 R21 K30 ["icon"]
  SETLIST R14 R15 7 [1]
  DUPCLOSURE R15 K47 [PROTO_0]
  CAPTURE VAL R0
  CAPTURE VAL R11
  DUPCLOSURE R16 K48 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R10
  CAPTURE VAL R15
  CAPTURE VAL R13
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R12
  CAPTURE VAL R2
  CAPTURE VAL R14
  RETURN R16 1
