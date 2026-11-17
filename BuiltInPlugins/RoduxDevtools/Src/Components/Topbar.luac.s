PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnClearList"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["OnClearList"]
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K10 [{["Style"] = "None", ["Size"], ["Layout"], ["VerticalAlignment"], ["HorizontalAlignment"], ["Spacing"] = 5}]
        7 GETIMPORT                        R5 K13 [UDim2.new]
        9 LOADN                            R6 1
       10 LOADN                            R7 0
       11 LOADN                            R8 0
       12 LOADN                            R9 32
       13 CALL                             R5 4 1
       14 SETTABLEKS                       R5 R4 K4 ["Size"]
       16 GETIMPORT                        R5 K17 [Enum.FillDirection.Horizontal]
       18 SETTABLEKS                       R5 R4 K5 ["Layout"]
       20 GETIMPORT                        R5 K19 [Enum.VerticalAlignment.Center]
       22 SETTABLEKS                       R5 R4 K6 ["VerticalAlignment"]
       24 GETIMPORT                        R5 K21 [Enum.HorizontalAlignment.Left]
       26 SETTABLEKS                       R5 R4 K7 ["HorizontalAlignment"]
       28 DUPTABLE                         R5 K24 [{"SearchBar", "ClearList"}]
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R6 R6 K1 ["createElement"]
       32 GETUPVAL                         R7 2
       33 DUPTABLE                         R8 K38 [{["LayoutOrder"] = 1, ["Width"] = 300, ["IncrementalTextSearch"] = True, ["IncrementalTextSearchDelay"] = 150, ["ShowSearchButton"] = False, ["ShowSearchIcon"] = True, ["PlaceholderText"], ["OnSearchRequested"]}]
       34 GETTABLEKS                       R9 R1 K39 ["Localization"]
       36 LOADK                            R11 K40 ["Topbar"]
       37 LOADK                            R12 K41 ["SearchbarPlaceholder"]
       38 NAMECALL                         R9 R9 K42 ["getText"]
       40 CALL                             R9 3 1
       41 SETTABLEKS                       R9 R8 K36 ["PlaceholderText"]
       43 GETTABLEKS                       R9 R1 K43 ["OnSearch"]
       45 SETTABLEKS                       R9 R8 K37 ["OnSearchRequested"]
       47 CALL                             R6 2 1
       48 SETTABLEKS                       R6 R5 K22 ["SearchBar"]
       50 GETUPVAL                         R6 0
       51 GETTABLEKS                       R6 R6 K1 ["createElement"]
       53 GETUPVAL                         R7 3
       54 DUPTABLE                         R8 K52 [{["LayoutOrder"] = 2, ["Size"], ["AutomaticSize"], ["LeftIcon"] = "rbxasset://textures/RoduxDevtools/ClearList.png", ["Text"], ["TooltipText"], ["Disabled"], ["OnClick"]}]
       55 GETIMPORT                        R9 K54 [UDim2.fromScale]
       57 LOADN                            R10 0
       58 LOADN                            R11 1
       59 CALL                             R9 2 1
       60 SETTABLEKS                       R9 R8 K4 ["Size"]
       62 GETIMPORT                        R9 K56 [Enum.AutomaticSize.X]
       64 SETTABLEKS                       R9 R8 K45 ["AutomaticSize"]
       66 GETTABLEKS                       R9 R1 K39 ["Localization"]
       68 LOADK                            R11 K40 ["Topbar"]
       69 LOADK                            R12 K57 ["ClearList.Text"]
       70 NAMECALL                         R9 R9 K42 ["getText"]
       72 CALL                             R9 3 1
       73 SETTABLEKS                       R9 R8 K48 ["Text"]
       75 GETTABLEKS                       R9 R1 K39 ["Localization"]
       77 LOADK                            R11 K40 ["Topbar"]
       78 LOADK                            R12 K58 ["ClearList.Tooltip"]
       79 NAMECALL                         R9 R9 K42 ["getText"]
       81 CALL                             R9 3 1
       82 SETTABLEKS                       R9 R8 K49 ["TooltipText"]
       84 GETTABLEKS                       R10 R1 K59 ["EventCount"]
       86 JUMPIFEQKN                       R10 K60 [0] ; [+2]
       88 LOADB                            R9 0 +1
       89 LOADB                            R9 1
       90 SETTABLEKS                       R9 R8 K50 ["Disabled"]
       92 NEWCLOSURE                       R9 P0
       93 CAPTURE                          VAL R1
       94 SETTABLEKS                       R9 R8 K51 ["OnClick"]
       96 CALL                             R6 2 1
       97 SETTABLEKS                       R6 R5 K23 ["ClearList"]
       99 CALL                             R2 3 -1
      100 RETURN                           R2 -1

PROTO_2:
        0 DUPTABLE                         R2 K2 [{"SearchTerm", "EventCount"}]
        1 GETTABLEKS                       R3 R0 K3 ["searchTerm"]
        3 SETTABLEKS                       R3 R2 K0 ["SearchTerm"]
        5 GETTABLEKS                       R4 R0 K4 ["events"]
        7 LENGTH                           R3 R4
        8 SETTABLEKS                       R3 R2 K1 ["EventCount"]
       10 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Packages"]
       20 GETTABLEKS                       R3 R3 K8 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K7 ["Packages"]
       27 GETTABLEKS                       R4 R4 K9 ["RoactRodux"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K7 ["Packages"]
       34 GETTABLEKS                       R5 R5 K10 ["Framework"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       39 GETTABLEKS                       R6 R5 K12 ["withContext"]
       41 GETTABLEKS                       R7 R5 K13 ["Analytics"]
       43 GETTABLEKS                       R8 R5 K14 ["Localization"]
       45 GETTABLEKS                       R9 R4 K15 ["Style"]
       47 GETTABLEKS                       R9 R9 K16 ["Stylizer"]
       49 GETTABLEKS                       R10 R4 K17 ["UI"]
       51 GETTABLEKS                       R11 R10 K18 ["Pane"]
       53 GETTABLEKS                       R12 R10 K19 ["IconButton"]
       55 GETTABLEKS                       R13 R10 K20 ["SearchBar"]
       57 GETTABLEKS                       R14 R2 K21 ["PureComponent"]
       59 LOADK                            R16 K22 ["Topbar"]
       60 NAMECALL                         R14 R14 K23 ["extend"]
       62 CALL                             R14 2 1
       63 DUPCLOSURE                       R15 K24 [PROTO_1]
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R11
       66 CAPTURE                          VAL R13
       67 CAPTURE                          VAL R12
       68 SETTABLEKS                       R15 R14 K25 ["render"]
       70 MOVE                             R15 R6
       71 DUPTABLE                         R16 K26 [{"Analytics", "Localization", "Stylizer"}]
       72 SETTABLEKS                       R7 R16 K13 ["Analytics"]
       74 SETTABLEKS                       R8 R16 K14 ["Localization"]
       76 SETTABLEKS                       R9 R16 K16 ["Stylizer"]
       78 CALL                             R15 1 1
       79 MOVE                             R16 R14
       80 CALL                             R15 1 1
       81 MOVE                             R14 R15
       82 GETTABLEKS                       R15 R3 K27 ["connect"]
       84 DUPCLOSURE                       R16 K28 [PROTO_2]
       85 CALL                             R15 1 1
       86 MOVE                             R16 R14
       87 CALL                             R15 1 -1
       88 RETURN                           R15 -1
