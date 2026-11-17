PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 DUPTABLE                         R3 K7 [{["tooltipText"], ["shouldIgnoreHoverBlocker"] = True, ["callbacks"]}]
       10 LOADK                            R6 K8 ["SyntaxDropdown"]
       11 LOADK                            R7 K9 ["SyntaxGuide"]
       12 NAMECALL                         R4 R1 K10 ["getText"]
       14 CALL                             R4 3 1
       15 SETTABLEKS                       R4 R3 K3 ["tooltipText"]
       17 DUPTABLE                         R4 K12 [{"onActivated"}]
       18 GETUPVAL                         R5 2
       19 SETTABLEKS                       R5 R4 K11 ["onActivated"]
       21 SETTABLEKS                       R4 R3 K6 ["callbacks"]
       23 CALL                             R2 1 1
       24 GETUPVAL                         R3 3
       25 GETUPVAL                         R4 4
       26 DUPTABLE                         R5 K22 [{["dropdownRef"], ["enterPressedSignalRef"], ["headerInfo"], ["itemData"], ["onItemClicked"], ["shouldIgnoreMaxHeight"] = True, ["selectedItemIndex"], ["setSelectedItemIndex"], ["session"]}]
       27 GETTABLEKS                       R6 R0 K13 ["dropdownRef"]
       29 SETTABLEKS                       R6 R5 K13 ["dropdownRef"]
       31 GETTABLEKS                       R6 R0 K14 ["enterPressedSignalRef"]
       33 SETTABLEKS                       R6 R5 K14 ["enterPressedSignalRef"]
       35 DUPTABLE                         R6 K25 [{"titleText", "button"}]
       36 LOADK                            R9 K8 ["SyntaxDropdown"]
       37 LOADK                            R10 K26 ["SuggestedFilters"]
       38 NAMECALL                         R7 R1 K10 ["getText"]
       40 CALL                             R7 3 1
       41 SETTABLEKS                       R7 R6 K23 ["titleText"]
       43 GETUPVAL                         R7 3
       44 LOADK                            R8 K27 ["ImageButton"]
       45 NEWTABLE                         R9 8 0
       47 GETUPVAL                         R10 5
       48 GETTABLEKS                       R10 R10 K28 ["standard"]
       50 LOADK                            R11 K29 ["help"]
       51 CALL                             R10 1 1
       52 SETTABLEKS                       R10 R9 K30 ["Image"]
       54 GETUPVAL                         R10 6
       55 GETTABLEKS                       R10 R10 K31 ["Event"]
       57 GETTABLEKS                       R10 R10 K32 ["Activated"]
       59 GETTABLEKS                       R11 R2 K33 ["activated"]
       61 SETTABLE                         R11 R9 R10
       62 GETUPVAL                         R10 6
       63 GETTABLEKS                       R10 R10 K31 ["Event"]
       65 GETTABLEKS                       R10 R10 K34 ["MouseEnter"]
       67 GETTABLEKS                       R11 R2 K35 ["mouseEnter"]
       69 SETTABLE                         R11 R9 R10
       70 GETUPVAL                         R10 6
       71 GETTABLEKS                       R10 R10 K31 ["Event"]
       73 GETTABLEKS                       R10 R10 K36 ["MouseLeave"]
       75 GETTABLEKS                       R11 R2 K37 ["mouseLeave"]
       77 SETTABLE                         R11 R9 R10
       78 GETUPVAL                         R10 6
       79 GETTABLEKS                       R10 R10 K38 ["Tag"]
       81 LOADK                            R11 K39 ["Explorer-Content-Standard Explorer-Icon data-testid=SyntaxDropdown-HelpButton"]
       82 SETTABLE                         R11 R9 R10
       83 CALL                             R7 2 1
       84 SETTABLEKS                       R7 R6 K24 ["button"]
       86 SETTABLEKS                       R6 R5 K15 ["headerInfo"]
       88 GETUPVAL                         R6 7
       89 SETTABLEKS                       R6 R5 K16 ["itemData"]
       91 GETTABLEKS                       R6 R0 K17 ["onItemClicked"]
       93 SETTABLEKS                       R6 R5 K17 ["onItemClicked"]
       95 GETTABLEKS                       R6 R0 K19 ["selectedItemIndex"]
       97 SETTABLEKS                       R6 R5 K19 ["selectedItemIndex"]
       99 GETTABLEKS                       R6 R0 K20 ["setSelectedItemIndex"]
      101 SETTABLEKS                       R6 R5 K20 ["setSelectedItemIndex"]
      103 GETTABLEKS                       R6 R0 K21 ["session"]
      105 SETTABLEKS                       R6 R5 K21 ["session"]
      107 CALL                             R3 2 -1
      108 RETURN                           R3 -1

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
       15 GETTABLEKS                       R3 R1 K10 ["Components"]
       17 GETTABLEKS                       R3 R3 K11 ["SearchBox"]
       19 GETTABLEKS                       R3 R3 K12 ["Dropdown"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R1 K13 ["Parent"]
       26 GETTABLEKS                       R4 R4 K14 ["Framework"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R1 K15 ["Util"]
       33 GETTABLEKS                       R5 R5 K16 ["ImageUrl"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R1 K13 ["Parent"]
       40 GETTABLEKS                       R6 R6 K17 ["React"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R7 R1 K18 ["RpcTypes"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETTABLEKS                       R8 R1 K13 ["Parent"]
       52 GETTABLEKS                       R8 R8 K19 ["Signal"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K9 [require]
       57 GETTABLEKS                       R9 R1 K20 ["Hooks"]
       59 GETTABLEKS                       R9 R9 K21 ["useTooltipActions"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K1 [game]
       64 LOADK                            R11 K22 ["ExplorerSyntaxGuideUrl"]
       65 LOADK                            R12 K23 ["https://create.roblox.com/docs/studio/explorer#filtering-instances"]
       66 NAMECALL                         R9 R9 K24 ["DefineFastString"]
       68 CALL                             R9 3 1
       69 GETTABLEKS                       R10 R5 K25 ["createElement"]
       71 NEWTABLE                         R11 0 7
       73 DUPTABLE                         R12 K29 [{["text"] = "anchored=", ["icon"]}]
       74 GETTABLEKS                       R13 R4 K30 ["standard"]
       76 LOADK                            R14 K31 ["anchor"]
       77 CALL                             R13 1 1
       78 SETTABLEKS                       R13 R12 K28 ["icon"]
       80 DUPTABLE                         R13 K33 [{["text"] = "locked=", ["icon"]}]
       81 GETTABLEKS                       R14 R4 K30 ["standard"]
       83 LOADK                            R15 K34 ["lock"]
       84 CALL                             R14 1 1
       85 SETTABLEKS                       R14 R13 K28 ["icon"]
       87 DUPTABLE                         R14 K36 [{["text"] = "transparency=", ["icon"]}]
       88 GETTABLEKS                       R15 R4 K30 ["standard"]
       90 LOADK                            R16 K37 ["transparency"]
       91 CALL                             R15 1 1
       92 SETTABLEKS                       R15 R14 K28 ["icon"]
       94 DUPTABLE                         R15 K39 [{["text"] = "material=", ["icon"]}]
       95 GETTABLEKS                       R16 R4 K30 ["standard"]
       97 LOADK                            R17 K40 ["material"]
       98 CALL                             R16 1 1
       99 SETTABLEKS                       R16 R15 K28 ["icon"]
      101 DUPTABLE                         R16 K42 [{["text"] = "meshId=", ["icon"]}]
      102 GETTABLEKS                       R17 R4 K30 ["standard"]
      104 LOADK                            R18 K43 ["meshPart"]
      105 CALL                             R17 1 1
      106 SETTABLEKS                       R17 R16 K28 ["icon"]
      108 DUPTABLE                         R17 K45 [{["text"] = "textureId=", ["icon"]}]
      109 GETTABLEKS                       R18 R4 K30 ["standard"]
      111 LOADK                            R19 K46 ["texture"]
      112 CALL                             R18 1 1
      113 SETTABLEKS                       R18 R17 K28 ["icon"]
      115 DUPTABLE                         R18 K48 [{["text"] = "tag:", ["icon"]}]
      116 GETTABLEKS                       R19 R4 K30 ["standard"]
      118 LOADK                            R20 K49 ["tag"]
      119 CALL                             R19 1 1
      120 SETTABLEKS                       R19 R18 K28 ["icon"]
      122 SETLIST                          R11 R12 7 [1]
      124 DUPCLOSURE                       R12 K50 [PROTO_0]
      125 CAPTURE                          VAL R0
      126 CAPTURE                          VAL R9
      127 DUPCLOSURE                       R13 K51 [PROTO_1]
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R8
      130 CAPTURE                          VAL R12
      131 CAPTURE                          VAL R10
      132 CAPTURE                          VAL R2
      133 CAPTURE                          VAL R4
      134 CAPTURE                          VAL R5
      135 CAPTURE                          VAL R11
      136 RETURN                           R13 1
