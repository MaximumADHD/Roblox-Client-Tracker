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
  CALL R7 2 1
  SETTABLEKS R7 R6 K23 ["button"]
  SETTABLEKS R6 R5 K14 ["headerInfo"]
  GETUPVAL R6 7
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
  GETTABLEKS R3 R4 K12 ["Dropdown"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R1 K13 ["Parent"]
  GETTABLEKS R4 R5 K14 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R1 K15 ["Util"]
  GETTABLEKS R5 R6 K16 ["ImageUrl"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R1 K13 ["Parent"]
  GETTABLEKS R6 R7 K17 ["React"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R7 R1 K18 ["RpcTypes"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R9 R1 K13 ["Parent"]
  GETTABLEKS R8 R9 K19 ["Signal"]
  CALL R7 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R10 R1 K20 ["Hooks"]
  GETTABLEKS R9 R10 K21 ["useTooltipActions"]
  CALL R8 1 1
  GETIMPORT R9 K1 [game]
  LOADK R11 K22 ["ExplorerSyntaxGuideUrl"]
  LOADK R12 K23 ["https://create.roblox.com/docs/studio/explorer#filtering-instances"]
  NAMECALL R9 R9 K24 ["DefineFastString"]
  CALL R9 3 1
  GETTABLEKS R10 R5 K25 ["createElement"]
  NEWTABLE R11 0 7
  DUPTABLE R12 K28 [{"text", "icon"}]
  LOADK R13 K29 ["anchored="]
  SETTABLEKS R13 R12 K26 ["text"]
  GETTABLEKS R13 R4 K30 ["standard"]
  LOADK R14 K31 ["anchor"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K27 ["icon"]
  DUPTABLE R13 K28 [{"text", "icon"}]
  LOADK R14 K32 ["locked="]
  SETTABLEKS R14 R13 K26 ["text"]
  GETTABLEKS R14 R4 K30 ["standard"]
  LOADK R15 K33 ["lock"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K27 ["icon"]
  DUPTABLE R14 K28 [{"text", "icon"}]
  LOADK R15 K34 ["transparency="]
  SETTABLEKS R15 R14 K26 ["text"]
  GETTABLEKS R15 R4 K30 ["standard"]
  LOADK R16 K35 ["transparency"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K27 ["icon"]
  DUPTABLE R15 K28 [{"text", "icon"}]
  LOADK R16 K36 ["material="]
  SETTABLEKS R16 R15 K26 ["text"]
  GETTABLEKS R16 R4 K30 ["standard"]
  LOADK R17 K37 ["material"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K27 ["icon"]
  DUPTABLE R16 K28 [{"text", "icon"}]
  LOADK R17 K38 ["meshId="]
  SETTABLEKS R17 R16 K26 ["text"]
  GETTABLEKS R17 R4 K30 ["standard"]
  LOADK R18 K39 ["meshPart"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K27 ["icon"]
  DUPTABLE R17 K28 [{"text", "icon"}]
  LOADK R18 K40 ["textureId="]
  SETTABLEKS R18 R17 K26 ["text"]
  GETTABLEKS R18 R4 K30 ["standard"]
  LOADK R19 K41 ["texture"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K27 ["icon"]
  DUPTABLE R18 K28 [{"text", "icon"}]
  LOADK R19 K42 ["tag:"]
  SETTABLEKS R19 R18 K26 ["text"]
  GETTABLEKS R19 R4 K30 ["standard"]
  LOADK R20 K43 ["tag"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K27 ["icon"]
  SETLIST R11 R12 7 [1]
  DUPCLOSURE R12 K44 [PROTO_0]
  CAPTURE VAL R0
  CAPTURE VAL R9
  DUPCLOSURE R13 K45 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R8
  CAPTURE VAL R12
  CAPTURE VAL R10
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R11
  RETURN R13 1
