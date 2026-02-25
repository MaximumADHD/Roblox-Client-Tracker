PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnClearList"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R0 R1 K0 ["OnClearList"]
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K8 [{"Style", "Size", "Layout", "VerticalAlignment", "HorizontalAlignment", "Spacing"}]
        7 LOADK                            R5 K9 ["None"]
        8 SETTABLEKS                       R5 R4 K2 ["Style"]
       10 GETIMPORT                        R5 K12 [UDim2.new]
       12 LOADN                            R6 1
       13 LOADN                            R7 0
       14 LOADN                            R8 0
       15 LOADN                            R9 32
       16 CALL                             R5 4 1
       17 SETTABLEKS                       R5 R4 K3 ["Size"]
       19 GETIMPORT                        R5 K16 [Enum.FillDirection.Horizontal]
       21 SETTABLEKS                       R5 R4 K4 ["Layout"]
       23 GETIMPORT                        R5 K18 [Enum.VerticalAlignment.Center]
       25 SETTABLEKS                       R5 R4 K5 ["VerticalAlignment"]
       27 GETIMPORT                        R5 K20 [Enum.HorizontalAlignment.Left]
       29 SETTABLEKS                       R5 R4 K6 ["HorizontalAlignment"]
       31 LOADN                            R5 5
       32 SETTABLEKS                       R5 R4 K7 ["Spacing"]
       34 DUPTABLE                         R5 K23 [{"SearchBar", "ClearList"}]
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R6 R7 K1 ["createElement"]
       38 GETUPVAL                         R7 2
       39 DUPTABLE                         R8 K32 [{"LayoutOrder", "Width", "IncrementalTextSearch", "IncrementalTextSearchDelay", "ShowSearchButton", "ShowSearchIcon", "PlaceholderText", "OnSearchRequested"}]
       40 LOADN                            R9 1
       41 SETTABLEKS                       R9 R8 K24 ["LayoutOrder"]
       43 LOADN                            R9 44
       44 SETTABLEKS                       R9 R8 K25 ["Width"]
       46 LOADB                            R9 1
       47 SETTABLEKS                       R9 R8 K26 ["IncrementalTextSearch"]
       49 LOADN                            R9 150
       50 SETTABLEKS                       R9 R8 K27 ["IncrementalTextSearchDelay"]
       52 LOADB                            R9 0
       53 SETTABLEKS                       R9 R8 K28 ["ShowSearchButton"]
       55 LOADB                            R9 1
       56 SETTABLEKS                       R9 R8 K29 ["ShowSearchIcon"]
       58 GETTABLEKS                       R9 R1 K33 ["Localization"]
       60 LOADK                            R11 K34 ["Topbar"]
       61 LOADK                            R12 K35 ["SearchbarPlaceholder"]
       62 NAMECALL                         R9 R9 K36 ["getText"]
       64 CALL                             R9 3 1
       65 SETTABLEKS                       R9 R8 K30 ["PlaceholderText"]
       67 GETTABLEKS                       R9 R1 K37 ["OnSearch"]
       69 SETTABLEKS                       R9 R8 K31 ["OnSearchRequested"]
       71 CALL                             R6 2 1
       72 SETTABLEKS                       R6 R5 K21 ["SearchBar"]
       74 GETUPVAL                         R7 0
       75 GETTABLEKS                       R6 R7 K1 ["createElement"]
       77 GETUPVAL                         R7 3
       78 DUPTABLE                         R8 K44 [{"LayoutOrder", "Size", "AutomaticSize", "LeftIcon", "Text", "TooltipText", "Disabled", "OnClick"}]
       79 LOADN                            R9 2
       80 SETTABLEKS                       R9 R8 K24 ["LayoutOrder"]
       82 GETIMPORT                        R9 K46 [UDim2.fromScale]
       84 LOADN                            R10 0
       85 LOADN                            R11 1
       86 CALL                             R9 2 1
       87 SETTABLEKS                       R9 R8 K3 ["Size"]
       89 GETIMPORT                        R9 K48 [Enum.AutomaticSize.X]
       91 SETTABLEKS                       R9 R8 K38 ["AutomaticSize"]
       93 LOADK                            R9 K49 ["rbxasset://textures/RoduxDevtools/ClearList.png"]
       94 SETTABLEKS                       R9 R8 K39 ["LeftIcon"]
       96 GETTABLEKS                       R9 R1 K33 ["Localization"]
       98 LOADK                            R11 K34 ["Topbar"]
       99 LOADK                            R12 K50 ["ClearList.Text"]
      100 NAMECALL                         R9 R9 K36 ["getText"]
      102 CALL                             R9 3 1
      103 SETTABLEKS                       R9 R8 K40 ["Text"]
      105 GETTABLEKS                       R9 R1 K33 ["Localization"]
      107 LOADK                            R11 K34 ["Topbar"]
      108 LOADK                            R12 K51 ["ClearList.Tooltip"]
      109 NAMECALL                         R9 R9 K36 ["getText"]
      111 CALL                             R9 3 1
      112 SETTABLEKS                       R9 R8 K41 ["TooltipText"]
      114 GETTABLEKS                       R10 R1 K52 ["EventCount"]
      116 JUMPIFEQKN                       R10 K53 [0] ; [+2]
      118 LOADB                            R9 0 +1
      119 LOADB                            R9 1
      120 SETTABLEKS                       R9 R8 K42 ["Disabled"]
      122 NEWCLOSURE                       R9 P0
      123 CAPTURE                          VAL R1
      124 SETTABLEKS                       R9 R8 K43 ["OnClick"]
      126 CALL                             R6 2 1
      127 SETTABLEKS                       R6 R5 K22 ["ClearList"]
      129 CALL                             R2 3 -1
      130 RETURN                           R2 -1

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
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R3 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K7 ["Packages"]
       20 GETTABLEKS                       R3 R4 K8 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K7 ["Packages"]
       27 GETTABLEKS                       R4 R5 K9 ["RoactRodux"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R6 R0 K7 ["Packages"]
       34 GETTABLEKS                       R5 R6 K10 ["Framework"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       39 GETTABLEKS                       R6 R5 K12 ["withContext"]
       41 GETTABLEKS                       R7 R5 K13 ["Analytics"]
       43 GETTABLEKS                       R8 R5 K14 ["Localization"]
       45 GETTABLEKS                       R10 R4 K15 ["Style"]
       47 GETTABLEKS                       R9 R10 K16 ["Stylizer"]
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
