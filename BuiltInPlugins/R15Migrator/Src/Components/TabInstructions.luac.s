PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Height"]
        4 GETTABLEKS                       R3 R1 K2 ["LinkMap"]
        6 GETTABLEKS                       R4 R1 K3 ["LayoutOrder"]
        8 GETTABLEKS                       R5 R1 K4 ["Message"]
       10 GETTABLEKS                       R6 R1 K5 ["Stylizer"]
       12 GETUPVAL                         R8 0
       13 GETTABLEKS                       R7 R8 K6 ["createElement"]
       15 GETUPVAL                         R8 1
       16 DUPTABLE                         R9 K12 [{"LayoutOrder", "Size", "Layout", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
       17 SETTABLEKS                       R4 R9 K3 ["LayoutOrder"]
       19 GETIMPORT                        R10 K15 [UDim2.new]
       21 LOADN                            R11 1
       22 LOADN                            R12 0
       23 LOADN                            R13 0
       24 MOVE                             R14 R2
       25 CALL                             R10 4 1
       26 SETTABLEKS                       R10 R9 K7 ["Size"]
       28 GETIMPORT                        R10 K19 [Enum.FillDirection.Vertical]
       30 SETTABLEKS                       R10 R9 K8 ["Layout"]
       32 GETIMPORT                        R10 K21 [Enum.HorizontalAlignment.Center]
       34 SETTABLEKS                       R10 R9 K9 ["HorizontalAlignment"]
       36 GETIMPORT                        R10 K22 [Enum.VerticalAlignment.Center]
       38 SETTABLEKS                       R10 R9 K10 ["VerticalAlignment"]
       40 GETTABLEKS                       R10 R6 K11 ["Padding"]
       42 SETTABLEKS                       R10 R9 K11 ["Padding"]
       44 DUPTABLE                         R10 K24 [{"InstructionsLabel"}]
       45 GETUPVAL                         R12 0
       46 GETTABLEKS                       R11 R12 K6 ["createElement"]
       48 GETUPVAL                         R12 2
       49 DUPTABLE                         R13 K32 [{"Text", "Size", "AutomaticSize", "BackgroundTransparency", "TextWrapped", "TextXAlignment", "TextYAlignment", "TextProps", "LinkMap"}]
       50 SETTABLEKS                       R5 R13 K25 ["Text"]
       52 GETIMPORT                        R14 K15 [UDim2.new]
       54 LOADN                            R15 1
       55 LOADN                            R16 0
       56 LOADN                            R17 0
       57 LOADN                            R18 0
       58 CALL                             R14 4 1
       59 SETTABLEKS                       R14 R13 K7 ["Size"]
       61 GETIMPORT                        R14 K34 [Enum.AutomaticSize.Y]
       63 SETTABLEKS                       R14 R13 K26 ["AutomaticSize"]
       65 LOADN                            R14 1
       66 SETTABLEKS                       R14 R13 K27 ["BackgroundTransparency"]
       68 LOADB                            R14 1
       69 SETTABLEKS                       R14 R13 K28 ["TextWrapped"]
       71 GETIMPORT                        R14 K35 [Enum.TextXAlignment.Center]
       73 SETTABLEKS                       R14 R13 K29 ["TextXAlignment"]
       75 GETIMPORT                        R14 K36 [Enum.TextYAlignment.Center]
       77 SETTABLEKS                       R14 R13 K30 ["TextYAlignment"]
       79 DUPTABLE                         R14 K39 [{"TextSize", "Font"}]
       80 GETTABLEKS                       R15 R6 K37 ["TextSize"]
       82 SETTABLEKS                       R15 R14 K37 ["TextSize"]
       84 GETTABLEKS                       R15 R6 K38 ["Font"]
       86 SETTABLEKS                       R15 R14 K38 ["Font"]
       88 SETTABLEKS                       R14 R13 K31 ["TextProps"]
       90 MOVE                             R14 R3
       91 JUMPIF                           R14 ; [+2]
       92 NEWTABLE                         R14 0 0
       94 SETTABLEKS                       R14 R13 K2 ["LinkMap"]
       96 CALL                             R11 2 1
       97 SETTABLEKS                       R11 R10 K23 ["InstructionsLabel"]
       99 CALL                             R7 3 -1
      100 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Roact"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R1 K10 ["UI"]
       25 GETTABLEKS                       R5 R4 K11 ["Pane"]
       27 GETTABLEKS                       R6 R4 K12 ["TextWithLinks"]
       29 GETTABLEKS                       R7 R2 K13 ["PureComponent"]
       31 LOADK                            R9 K14 ["TabInstructions"]
       32 NAMECALL                         R7 R7 K15 ["extend"]
       34 CALL                             R7 2 1
       35 DUPCLOSURE                       R8 K16 [PROTO_0]
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R6
       39 SETTABLEKS                       R8 R7 K17 ["render"]
       41 GETTABLEKS                       R8 R3 K18 ["withContext"]
       43 DUPTABLE                         R9 K20 [{"Stylizer"}]
       44 GETTABLEKS                       R10 R3 K19 ["Stylizer"]
       46 SETTABLEKS                       R10 R9 K19 ["Stylizer"]
       48 CALL                             R8 1 1
       49 MOVE                             R9 R7
       50 CALL                             R8 1 1
       51 MOVE                             R7 R8
       52 RETURN                           R7 1
