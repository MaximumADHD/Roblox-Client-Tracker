PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R2 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 DUPTABLE                         R3 K6 [{"tooltipText", "shouldIgnoreHoverBlocker", "callbacks"}]
       10 LOADK                            R6 K7 ["SyntaxDropdown"]
       11 LOADK                            R7 K8 ["SyntaxGuide"]
       12 NAMECALL                         R4 R1 K9 ["getText"]
       14 CALL                             R4 3 1
       15 SETTABLEKS                       R4 R3 K3 ["tooltipText"]
       17 LOADB                            R4 1
       18 SETTABLEKS                       R4 R3 K4 ["shouldIgnoreHoverBlocker"]
       20 DUPTABLE                         R4 K11 [{"onActivated"}]
       21 GETUPVAL                         R5 2
       22 SETTABLEKS                       R5 R4 K10 ["onActivated"]
       24 SETTABLEKS                       R4 R3 K5 ["callbacks"]
       26 CALL                             R2 1 1
       27 GETUPVAL                         R3 3
       28 GETUPVAL                         R4 4
       29 DUPTABLE                         R5 K21 [{"dropdownRef", "enterPressedSignalRef", "headerInfo", "itemData", "onItemClicked", "shouldIgnoreMaxHeight", "selectedItemIndex", "setSelectedItemIndex", "session"}]
       30 GETTABLEKS                       R6 R0 K12 ["dropdownRef"]
       32 SETTABLEKS                       R6 R5 K12 ["dropdownRef"]
       34 GETTABLEKS                       R6 R0 K13 ["enterPressedSignalRef"]
       36 SETTABLEKS                       R6 R5 K13 ["enterPressedSignalRef"]
       38 DUPTABLE                         R6 K24 [{"titleText", "button"}]
       39 LOADK                            R9 K7 ["SyntaxDropdown"]
       40 LOADK                            R10 K25 ["SuggestedFilters"]
       41 NAMECALL                         R7 R1 K9 ["getText"]
       43 CALL                             R7 3 1
       44 SETTABLEKS                       R7 R6 K22 ["titleText"]
       46 GETUPVAL                         R7 3
       47 LOADK                            R8 K26 ["ImageButton"]
       48 NEWTABLE                         R9 8 0
       50 GETUPVAL                         R11 5
       51 GETTABLEKS                       R10 R11 K27 ["standard"]
       53 LOADK                            R11 K28 ["help"]
       54 CALL                             R10 1 1
       55 SETTABLEKS                       R10 R9 K29 ["Image"]
       57 GETUPVAL                         R12 6
       58 GETTABLEKS                       R11 R12 K30 ["Event"]
       60 GETTABLEKS                       R10 R11 K31 ["Activated"]
       62 GETTABLEKS                       R11 R2 K32 ["activated"]
       64 SETTABLE                         R11 R9 R10
       65 GETUPVAL                         R12 6
       66 GETTABLEKS                       R11 R12 K30 ["Event"]
       68 GETTABLEKS                       R10 R11 K33 ["MouseEnter"]
       70 GETTABLEKS                       R11 R2 K34 ["mouseEnter"]
       72 SETTABLE                         R11 R9 R10
       73 GETUPVAL                         R12 6
       74 GETTABLEKS                       R11 R12 K30 ["Event"]
       76 GETTABLEKS                       R10 R11 K35 ["MouseLeave"]
       78 GETTABLEKS                       R11 R2 K36 ["mouseLeave"]
       80 SETTABLE                         R11 R9 R10
       81 GETUPVAL                         R11 6
       82 GETTABLEKS                       R10 R11 K37 ["Tag"]
       84 LOADK                            R11 K38 ["Explorer-Content-Standard Explorer-Icon data-testid=SyntaxDropdown-HelpButton"]
       85 SETTABLE                         R11 R9 R10
       86 CALL                             R7 2 1
       87 SETTABLEKS                       R7 R6 K23 ["button"]
       89 SETTABLEKS                       R6 R5 K14 ["headerInfo"]
       91 GETUPVAL                         R6 7
       92 SETTABLEKS                       R6 R5 K15 ["itemData"]
       94 GETTABLEKS                       R6 R0 K16 ["onItemClicked"]
       96 SETTABLEKS                       R6 R5 K16 ["onItemClicked"]
       98 LOADB                            R6 1
       99 SETTABLEKS                       R6 R5 K17 ["shouldIgnoreMaxHeight"]
      101 GETTABLEKS                       R6 R0 K18 ["selectedItemIndex"]
      103 SETTABLEKS                       R6 R5 K18 ["selectedItemIndex"]
      105 GETTABLEKS                       R6 R0 K19 ["setSelectedItemIndex"]
      107 SETTABLEKS                       R6 R5 K19 ["setSelectedItemIndex"]
      109 GETTABLEKS                       R6 R0 K20 ["session"]
      111 SETTABLEKS                       R6 R5 K20 ["session"]
      113 CALL                             R3 2 -1
      114 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["BrowserService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Explorer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R5 R1 K10 ["Components"]
       17 GETTABLEKS                       R4 R5 K11 ["SearchBox"]
       19 GETTABLEKS                       R3 R4 K12 ["Dropdown"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R5 R1 K13 ["Parent"]
       26 GETTABLEKS                       R4 R5 K14 ["Framework"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R6 R1 K15 ["Util"]
       33 GETTABLEKS                       R5 R6 K16 ["ImageUrl"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R7 R1 K13 ["Parent"]
       40 GETTABLEKS                       R6 R7 K17 ["React"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R7 R1 K18 ["RpcTypes"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETTABLEKS                       R9 R1 K13 ["Parent"]
       52 GETTABLEKS                       R8 R9 K19 ["Signal"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K9 [require]
       57 GETTABLEKS                       R10 R1 K20 ["Hooks"]
       59 GETTABLEKS                       R9 R10 K21 ["useTooltipActions"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K1 [game]
       64 LOADK                            R11 K22 ["ExplorerSyntaxGuideUrl"]
       65 LOADK                            R12 K23 ["https://create.roblox.com/docs/studio/explorer#filtering-instances"]
       66 NAMECALL                         R9 R9 K24 ["DefineFastString"]
       68 CALL                             R9 3 1
       69 GETTABLEKS                       R10 R5 K25 ["createElement"]
       71 NEWTABLE                         R11 0 7
       73 DUPTABLE                         R12 K28 [{"text", "icon"}]
       74 LOADK                            R13 K29 ["anchored="]
       75 SETTABLEKS                       R13 R12 K26 ["text"]
       77 GETTABLEKS                       R13 R4 K30 ["standard"]
       79 LOADK                            R14 K31 ["anchor"]
       80 CALL                             R13 1 1
       81 SETTABLEKS                       R13 R12 K27 ["icon"]
       83 DUPTABLE                         R13 K28 [{"text", "icon"}]
       84 LOADK                            R14 K32 ["locked="]
       85 SETTABLEKS                       R14 R13 K26 ["text"]
       87 GETTABLEKS                       R14 R4 K30 ["standard"]
       89 LOADK                            R15 K33 ["lock"]
       90 CALL                             R14 1 1
       91 SETTABLEKS                       R14 R13 K27 ["icon"]
       93 DUPTABLE                         R14 K28 [{"text", "icon"}]
       94 LOADK                            R15 K34 ["transparency="]
       95 SETTABLEKS                       R15 R14 K26 ["text"]
       97 GETTABLEKS                       R15 R4 K30 ["standard"]
       99 LOADK                            R16 K35 ["transparency"]
      100 CALL                             R15 1 1
      101 SETTABLEKS                       R15 R14 K27 ["icon"]
      103 DUPTABLE                         R15 K28 [{"text", "icon"}]
      104 LOADK                            R16 K36 ["material="]
      105 SETTABLEKS                       R16 R15 K26 ["text"]
      107 GETTABLEKS                       R16 R4 K30 ["standard"]
      109 LOADK                            R17 K37 ["material"]
      110 CALL                             R16 1 1
      111 SETTABLEKS                       R16 R15 K27 ["icon"]
      113 DUPTABLE                         R16 K28 [{"text", "icon"}]
      114 LOADK                            R17 K38 ["meshId="]
      115 SETTABLEKS                       R17 R16 K26 ["text"]
      117 GETTABLEKS                       R17 R4 K30 ["standard"]
      119 LOADK                            R18 K39 ["meshPart"]
      120 CALL                             R17 1 1
      121 SETTABLEKS                       R17 R16 K27 ["icon"]
      123 DUPTABLE                         R17 K28 [{"text", "icon"}]
      124 LOADK                            R18 K40 ["textureId="]
      125 SETTABLEKS                       R18 R17 K26 ["text"]
      127 GETTABLEKS                       R18 R4 K30 ["standard"]
      129 LOADK                            R19 K41 ["texture"]
      130 CALL                             R18 1 1
      131 SETTABLEKS                       R18 R17 K27 ["icon"]
      133 DUPTABLE                         R18 K28 [{"text", "icon"}]
      134 LOADK                            R19 K42 ["tag:"]
      135 SETTABLEKS                       R19 R18 K26 ["text"]
      137 GETTABLEKS                       R19 R4 K30 ["standard"]
      139 LOADK                            R20 K43 ["tag"]
      140 CALL                             R19 1 1
      141 SETTABLEKS                       R19 R18 K27 ["icon"]
      143 SETLIST                          R11 R12 7 [1]
      145 DUPCLOSURE                       R12 K44 [PROTO_0]
      146 CAPTURE                          VAL R0
      147 CAPTURE                          VAL R9
      148 DUPCLOSURE                       R13 K45 [PROTO_1]
      149 CAPTURE                          VAL R3
      150 CAPTURE                          VAL R8
      151 CAPTURE                          VAL R12
      152 CAPTURE                          VAL R10
      153 CAPTURE                          VAL R2
      154 CAPTURE                          VAL R4
      155 CAPTURE                          VAL R5
      156 CAPTURE                          VAL R11
      157 RETURN                           R13 1
