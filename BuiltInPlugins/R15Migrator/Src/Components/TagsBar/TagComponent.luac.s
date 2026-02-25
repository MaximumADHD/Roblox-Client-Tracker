PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["OnClosed"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K2 ["Tag"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R0 K1 ["props"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["createElement"]
        7 GETUPVAL                         R4 1
        8 NEWTABLE                         R5 16 0
       10 GETTABLEKS                       R6 R2 K3 ["Padding"]
       12 SETTABLEKS                       R6 R5 K3 ["Padding"]
       14 GETIMPORT                        R6 K7 [Enum.AutomaticSize.XY]
       16 SETTABLEKS                       R6 R5 K5 ["AutomaticSize"]
       18 GETTABLEKS                       R6 R2 K8 ["LayoutOrder"]
       20 SETTABLEKS                       R6 R5 K8 ["LayoutOrder"]
       22 GETIMPORT                        R6 K11 [Enum.FillDirection.Horizontal]
       24 SETTABLEKS                       R6 R5 K12 ["Layout"]
       26 GETIMPORT                        R6 K15 [Enum.HorizontalAlignment.Left]
       28 SETTABLEKS                       R6 R5 K13 ["HorizontalAlignment"]
       30 GETIMPORT                        R6 K18 [Enum.VerticalAlignment.Center]
       32 SETTABLEKS                       R6 R5 K16 ["VerticalAlignment"]
       34 DUPTABLE                         R6 K20 [{"Left", "Right"}]
       35 LOADN                            R7 6
       36 SETTABLEKS                       R7 R6 K14 ["Left"]
       38 LOADN                            R7 6
       39 SETTABLEKS                       R7 R6 K19 ["Right"]
       41 SETTABLEKS                       R6 R5 K3 ["Padding"]
       43 LOADN                            R6 6
       44 SETTABLEKS                       R6 R5 K21 ["Spacing"]
       46 GETUPVAL                         R7 0
       47 GETTABLEKS                       R6 R7 K22 ["Tag"]
       49 LOADK                            R7 K23 ["Secondary"]
       50 SETTABLE                         R7 R5 R6
       51 DUPTABLE                         R6 K26 [{"Label", "CloseButton"}]
       52 GETUPVAL                         R8 0
       53 GETTABLEKS                       R7 R8 K2 ["createElement"]
       55 GETUPVAL                         R8 2
       56 DUPTABLE                         R9 K28 [{"AutomaticSize", "LayoutOrder", "Text"}]
       57 GETIMPORT                        R10 K7 [Enum.AutomaticSize.XY]
       59 SETTABLEKS                       R10 R9 K5 ["AutomaticSize"]
       61 LOADN                            R10 1
       62 SETTABLEKS                       R10 R9 K8 ["LayoutOrder"]
       64 GETTABLEKS                       R11 R2 K22 ["Tag"]
       66 GETTABLEKS                       R10 R11 K24 ["Label"]
       68 SETTABLEKS                       R10 R9 K27 ["Text"]
       70 CALL                             R7 2 1
       71 SETTABLEKS                       R7 R6 K24 ["Label"]
       73 GETUPVAL                         R8 0
       74 GETTABLEKS                       R7 R8 K2 ["createElement"]
       76 LOADK                            R8 K29 ["ImageButton"]
       77 NEWTABLE                         R9 8 0
       79 LOADN                            R10 1
       80 SETTABLEKS                       R10 R9 K30 ["BackgroundTransparency"]
       82 LOADN                            R10 2
       83 SETTABLEKS                       R10 R9 K8 ["LayoutOrder"]
       85 GETIMPORT                        R10 K33 [UDim2.fromOffset]
       87 LOADN                            R11 12
       88 LOADN                            R12 12
       89 CALL                             R10 2 1
       90 SETTABLEKS                       R10 R9 K34 ["Size"]
       92 LOADK                            R10 K35 ["rbxasset://textures/StudioSharedUI/clear-hover.png"]
       93 SETTABLEKS                       R10 R9 K36 ["Image"]
       95 GETUPVAL                         R12 0
       96 GETTABLEKS                       R11 R12 K37 ["Event"]
       98 GETTABLEKS                       R10 R11 K38 ["MouseButton1Click"]
      100 NEWCLOSURE                       R11 P0
      101 CAPTURE                          VAL R0
      102 CAPTURE                          VAL R2
      103 SETTABLE                         R11 R9 R10
      104 CALL                             R7 2 1
      105 SETTABLEKS                       R7 R6 K25 ["CloseButton"]
      107 CALL                             R3 3 -1
      108 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["withContext"]
       25 GETTABLEKS                       R5 R2 K11 ["Dash"]
       27 GETTABLEKS                       R6 R5 K12 ["join"]
       29 GETTABLEKS                       R7 R2 K13 ["UI"]
       31 GETTABLEKS                       R8 R7 K14 ["IconButton"]
       33 GETTABLEKS                       R9 R7 K15 ["Pane"]
       35 GETTABLEKS                       R10 R7 K16 ["TextLabel"]
       37 GETTABLEKS                       R12 R0 K17 ["Src"]
       39 GETTABLEKS                       R11 R12 K18 ["Actions"]
       41 GETTABLEKS                       R13 R0 K17 ["Src"]
       43 GETTABLEKS                       R12 R13 K19 ["Components"]
       45 GETIMPORT                        R13 K5 [require]
       47 GETTABLEKS                       R15 R0 K17 ["Src"]
       49 GETTABLEKS                       R14 R15 K20 ["Types"]
       51 CALL                             R13 1 1
       52 GETTABLEKS                       R15 R0 K17 ["Src"]
       54 GETTABLEKS                       R14 R15 K21 ["Util"]
       56 GETTABLEKS                       R15 R1 K22 ["PureComponent"]
       58 LOADK                            R17 K23 ["TagComponent"]
       59 NAMECALL                         R15 R15 K24 ["extend"]
       61 CALL                             R15 2 1
       62 DUPCLOSURE                       R16 K25 [PROTO_1]
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R9
       65 CAPTURE                          VAL R10
       66 SETTABLEKS                       R16 R15 K26 ["render"]
       68 MOVE                             R16 R4
       69 DUPTABLE                         R17 K30 [{"Analytics", "Localization", "Stylizer"}]
       70 GETTABLEKS                       R18 R3 K27 ["Analytics"]
       72 SETTABLEKS                       R18 R17 K27 ["Analytics"]
       74 GETTABLEKS                       R18 R3 K28 ["Localization"]
       76 SETTABLEKS                       R18 R17 K28 ["Localization"]
       78 GETTABLEKS                       R19 R2 K31 ["Style"]
       80 GETTABLEKS                       R18 R19 K29 ["Stylizer"]
       82 SETTABLEKS                       R18 R17 K29 ["Stylizer"]
       84 CALL                             R16 1 1
       85 MOVE                             R17 R15
       86 CALL                             R16 1 1
       87 MOVE                             R15 R16
       88 RETURN                           R15 1
