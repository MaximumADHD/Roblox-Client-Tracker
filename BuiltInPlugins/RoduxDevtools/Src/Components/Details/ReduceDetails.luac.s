PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R4 1
        3 GETTABLEKS                       R5 R0 K1 ["LineCount"]
        5 ORK                              R2 R5 K0 [5]
        6 LOADN                            R3 1
        7 FORNPREP                         R2
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K2 ["createElement"]
       11 LOADK                            R6 K3 ["Frame"]
       12 DUPTABLE                         R7 K7 [{"Size", "BackgroundTransparency", "BackgroundColor3"}]
       13 GETIMPORT                        R8 K10 [UDim2.fromOffset]
       15 GETIMPORT                        R9 K13 [math.random]
       17 LOADN                            R10 50
       18 LOADN                            R11 144
       19 CALL                             R9 2 1
       20 LOADN                            R10 16
       21 CALL                             R8 2 1
       22 SETTABLEKS                       R8 R7 K4 ["Size"]
       24 LOADK                            R8 K14 [0.85]
       25 SETTABLEKS                       R8 R7 K5 ["BackgroundTransparency"]
       27 GETIMPORT                        R8 K17 [Color3.new]
       29 LOADN                            R9 0
       30 LOADN                            R10 0
       31 LOADN                            R11 0
       32 CALL                             R8 3 1
       33 SETTABLEKS                       R8 R7 K6 ["BackgroundColor3"]
       35 DUPTABLE                         R8 K19 [{"Corner"}]
       36 GETUPVAL                         R10 0
       37 GETTABLEKS                       R9 R10 K2 ["createElement"]
       39 LOADK                            R10 K20 ["UICorner"]
       40 DUPTABLE                         R11 K22 [{"CornerRadius"}]
       41 GETIMPORT                        R12 K24 [UDim.new]
       43 LOADN                            R13 0
       44 LOADN                            R14 8
       45 CALL                             R12 2 1
       46 SETTABLEKS                       R12 R11 K21 ["CornerRadius"]
       48 CALL                             R9 2 1
       49 SETTABLEKS                       R9 R8 K18 ["Corner"]
       51 CALL                             R5 3 1
       52 SETTABLE                         R5 R1 R4
       53 FORNLOOP                         R2
       54 GETUPVAL                         R3 0
       55 GETTABLEKS                       R2 R3 K2 ["createElement"]
       57 LOADK                            R3 K3 ["Frame"]
       58 DUPTABLE                         R4 K26 [{"Size", "AutomaticSize", "BackgroundTransparency"}]
       59 GETIMPORT                        R5 K10 [UDim2.fromOffset]
       61 LOADN                            R6 1
       62 LOADN                            R7 0
       63 CALL                             R5 2 1
       64 SETTABLEKS                       R5 R4 K4 ["Size"]
       66 GETIMPORT                        R5 K29 [Enum.AutomaticSize.Y]
       68 SETTABLEKS                       R5 R4 K25 ["AutomaticSize"]
       70 LOADN                            R5 1
       71 SETTABLEKS                       R5 R4 K5 ["BackgroundTransparency"]
       73 DUPTABLE                         R5 K32 [{"Layout", "Placeholders"}]
       74 GETUPVAL                         R7 0
       75 GETTABLEKS                       R6 R7 K2 ["createElement"]
       77 LOADK                            R7 K33 ["UIListLayout"]
       78 DUPTABLE                         R8 K39 [{"SortOrder", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
       79 GETIMPORT                        R9 K41 [Enum.SortOrder.Name]
       81 SETTABLEKS                       R9 R8 K34 ["SortOrder"]
       83 GETIMPORT                        R9 K43 [Enum.FillDirection.Vertical]
       85 SETTABLEKS                       R9 R8 K35 ["FillDirection"]
       87 GETIMPORT                        R9 K45 [Enum.HorizontalAlignment.Left]
       89 SETTABLEKS                       R9 R8 K36 ["HorizontalAlignment"]
       91 GETIMPORT                        R9 K47 [Enum.VerticalAlignment.Top]
       93 SETTABLEKS                       R9 R8 K37 ["VerticalAlignment"]
       95 GETIMPORT                        R9 K24 [UDim.new]
       97 LOADN                            R10 0
       98 LOADN                            R11 8
       99 CALL                             R9 2 1
      100 SETTABLEKS                       R9 R8 K38 ["Padding"]
      102 CALL                             R6 2 1
      103 SETTABLEKS                       R6 R5 K30 ["Layout"]
      105 GETUPVAL                         R7 0
      106 GETTABLEKS                       R6 R7 K2 ["createElement"]
      108 GETUPVAL                         R8 0
      109 GETTABLEKS                       R7 R8 K48 ["Fragment"]
      111 LOADNIL                          R8
      112 MOVE                             R9 R1
      113 CALL                             R6 3 1
      114 SETTABLEKS                       R6 R5 K31 ["Placeholders"]
      116 CALL                             R2 3 -1
      117 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K7 [{"Size", "Position", "LayoutOrder", "Layout", "HorizontalAlignment", "VerticalAlignment"}]
        5 GETTABLEKS                       R4 R0 K1 ["Size"]
        7 SETTABLEKS                       R4 R3 K1 ["Size"]
        9 GETTABLEKS                       R4 R0 K2 ["Position"]
       11 SETTABLEKS                       R4 R3 K2 ["Position"]
       13 GETTABLEKS                       R4 R0 K3 ["LayoutOrder"]
       15 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
       17 GETIMPORT                        R4 K11 [Enum.FillDirection.Horizontal]
       19 SETTABLEKS                       R4 R3 K4 ["Layout"]
       21 GETIMPORT                        R4 K13 [Enum.HorizontalAlignment.Right]
       23 SETTABLEKS                       R4 R3 K5 ["HorizontalAlignment"]
       25 GETIMPORT                        R4 K15 [Enum.VerticalAlignment.Center]
       27 SETTABLEKS                       R4 R3 K6 ["VerticalAlignment"]
       29 DUPTABLE                         R4 K17 [{"ToggleAction"}]
       30 GETUPVAL                         R6 0
       31 GETTABLEKS                       R5 R6 K0 ["createElement"]
       33 GETUPVAL                         R6 2
       34 DUPTABLE                         R7 K25 [{"Size", "AutomaticSize", "BackgroundStyle", "LeftIcon", "Text", "TooltipText", "Disabled", "OnClick"}]
       35 GETIMPORT                        R8 K28 [UDim2.fromScale]
       37 LOADN                            R9 0
       38 LOADN                            R10 1
       39 CALL                             R8 2 1
       40 SETTABLEKS                       R8 R7 K1 ["Size"]
       42 GETIMPORT                        R8 K30 [Enum.AutomaticSize.X]
       44 SETTABLEKS                       R8 R7 K18 ["AutomaticSize"]
       46 LOADK                            R8 K31 ["None"]
       47 SETTABLEKS                       R8 R7 K19 ["BackgroundStyle"]
       49 GETTABLEKS                       R9 R0 K32 ["IsUndone"]
       51 JUMPIFNOT                        R9 ; [+2]
       52 LOADK                            R8 K33 ["rbxasset://textures/RoduxDevtools/Redo.png"]
       53 JUMP                             ; [+1]
       54 LOADK                            R8 K34 ["rbxasset://textures/RoduxDevtools/Undo.png"]
       55 SETTABLEKS                       R8 R7 K20 ["LeftIcon"]
       57 GETTABLEKS                       R9 R0 K32 ["IsUndone"]
       59 JUMPIFNOT                        R9 ; [+8]
       60 GETTABLEKS                       R8 R0 K35 ["Localization"]
       62 LOADK                            R10 K36 ["ReduceDetails"]
       63 LOADK                            R11 K37 ["ToggleAction.RedoText"]
       64 NAMECALL                         R8 R8 K38 ["getText"]
       66 CALL                             R8 3 1
       67 JUMP                             ; [+7]
       68 GETTABLEKS                       R8 R0 K35 ["Localization"]
       70 LOADK                            R10 K36 ["ReduceDetails"]
       71 LOADK                            R11 K39 ["ToggleAction.UndoText"]
       72 NAMECALL                         R8 R8 K38 ["getText"]
       74 CALL                             R8 3 1
       75 SETTABLEKS                       R8 R7 K21 ["Text"]
       77 GETTABLEKS                       R9 R0 K40 ["IsDevtools"]
       79 JUMPIFNOT                        R9 ; [+8]
       80 GETTABLEKS                       R8 R0 K35 ["Localization"]
       82 LOADK                            R10 K36 ["ReduceDetails"]
       83 LOADK                            R11 K41 ["ToggleAction.IsDevtools"]
       84 NAMECALL                         R8 R8 K38 ["getText"]
       86 CALL                             R8 3 1
       87 JUMP                             ; [+18]
       88 GETTABLEKS                       R9 R0 K32 ["IsUndone"]
       90 JUMPIFNOT                        R9 ; [+8]
       91 GETTABLEKS                       R8 R0 K35 ["Localization"]
       93 LOADK                            R10 K36 ["ReduceDetails"]
       94 LOADK                            R11 K42 ["ToggleAction.RedoTooltip"]
       95 NAMECALL                         R8 R8 K38 ["getText"]
       97 CALL                             R8 3 1
       98 JUMP                             ; [+7]
       99 GETTABLEKS                       R8 R0 K35 ["Localization"]
      101 LOADK                            R10 K36 ["ReduceDetails"]
      102 LOADK                            R11 K43 ["ToggleAction.UndoTooltip"]
      103 NAMECALL                         R8 R8 K38 ["getText"]
      105 CALL                             R8 3 1
      106 SETTABLEKS                       R8 R7 K22 ["TooltipText"]
      108 GETTABLEKS                       R8 R0 K40 ["IsDevtools"]
      110 SETTABLEKS                       R8 R7 K23 ["Disabled"]
      112 GETTABLEKS                       R8 R0 K44 ["OnToggleActionClick"]
      114 SETTABLEKS                       R8 R7 K24 ["OnClick"]
      116 CALL                             R5 2 1
      117 SETTABLEKS                       R5 R4 K16 ["ToggleAction"]
      119 CALL                             R1 3 -1
      120 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K7 [{"Size", "Position", "LayoutOrder", "Layout", "HorizontalAlignment", "VerticalAlignment"}]
        5 GETTABLEKS                       R4 R0 K1 ["Size"]
        7 SETTABLEKS                       R4 R3 K1 ["Size"]
        9 GETTABLEKS                       R4 R0 K2 ["Position"]
       11 SETTABLEKS                       R4 R3 K2 ["Position"]
       13 GETTABLEKS                       R4 R0 K3 ["LayoutOrder"]
       15 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
       17 GETIMPORT                        R4 K11 [Enum.FillDirection.Horizontal]
       19 SETTABLEKS                       R4 R3 K4 ["Layout"]
       21 GETIMPORT                        R4 K13 [Enum.HorizontalAlignment.Right]
       23 SETTABLEKS                       R4 R3 K5 ["HorizontalAlignment"]
       25 GETIMPORT                        R4 K15 [Enum.VerticalAlignment.Center]
       27 SETTABLEKS                       R4 R3 K6 ["VerticalAlignment"]
       29 DUPTABLE                         R4 K18 [{"SetState", "Tabs"}]
       30 GETUPVAL                         R6 0
       31 GETTABLEKS                       R5 R6 K0 ["createElement"]
       33 GETUPVAL                         R6 2
       34 DUPTABLE                         R7 K25 [{"LayoutOrder", "Size", "AutomaticSize", "BackgroundStyle", "LeftIcon", "Text", "TooltipText", "OnClick"}]
       35 LOADN                            R8 255
       36 SETTABLEKS                       R8 R7 K3 ["LayoutOrder"]
       38 GETIMPORT                        R8 K28 [UDim2.fromScale]
       40 LOADN                            R9 0
       41 LOADN                            R10 1
       42 CALL                             R8 2 1
       43 SETTABLEKS                       R8 R7 K1 ["Size"]
       45 GETIMPORT                        R8 K30 [Enum.AutomaticSize.X]
       47 SETTABLEKS                       R8 R7 K19 ["AutomaticSize"]
       49 LOADK                            R8 K31 ["None"]
       50 SETTABLEKS                       R8 R7 K20 ["BackgroundStyle"]
       52 LOADK                            R8 K32 ["rbxasset://textures/RoduxDevtools/SetState.png"]
       53 SETTABLEKS                       R8 R7 K21 ["LeftIcon"]
       55 GETTABLEKS                       R8 R0 K33 ["Localization"]
       57 LOADK                            R10 K34 ["ReduceDetails"]
       58 LOADK                            R11 K35 ["SetState.Text"]
       59 NAMECALL                         R8 R8 K36 ["getText"]
       61 CALL                             R8 3 1
       62 SETTABLEKS                       R8 R7 K22 ["Text"]
       64 GETTABLEKS                       R8 R0 K33 ["Localization"]
       66 LOADK                            R10 K34 ["ReduceDetails"]
       67 LOADK                            R11 K37 ["SetState.Tooltip"]
       68 NAMECALL                         R8 R8 K36 ["getText"]
       70 CALL                             R8 3 1
       71 SETTABLEKS                       R8 R7 K23 ["TooltipText"]
       73 GETTABLEKS                       R8 R0 K38 ["OnSetStateClick"]
       75 SETTABLEKS                       R8 R7 K24 ["OnClick"]
       77 CALL                             R5 2 1
       78 SETTABLEKS                       R5 R4 K16 ["SetState"]
       80 GETUPVAL                         R6 0
       81 GETTABLEKS                       R5 R6 K0 ["createElement"]
       83 GETUPVAL                         R6 3
       84 DUPTABLE                         R7 K41 [{"Tabs", "SelectedTab", "OnTabSelected"}]
       85 GETTABLEKS                       R8 R0 K17 ["Tabs"]
       87 SETTABLEKS                       R8 R7 K17 ["Tabs"]
       89 GETTABLEKS                       R8 R0 K42 ["Selected"]
       91 SETTABLEKS                       R8 R7 K39 ["SelectedTab"]
       93 GETTABLEKS                       R8 R0 K40 ["OnTabSelected"]
       95 SETTABLEKS                       R8 R7 K40 ["OnTabSelected"]
       97 CALL                             R5 2 1
       98 SETTABLEKS                       R5 R4 K17 ["Tabs"]
      100 CALL                             R1 3 -1
      101 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"selectedStateTab"}]
        2 SETTABLEKS                       R0 R3 K0 ["selectedStateTab"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R1 0 2
        2 DUPTABLE                         R2 K3 [{"Icon", "Label", "Tooltip"}]
        3 LOADK                            R3 K4 ["rbxasset://textures/RoduxDevtools/StateTabs/Diff.png"]
        4 SETTABLEKS                       R3 R2 K0 ["Icon"]
        6 LOADK                            R3 K5 ["Diff"]
        7 SETTABLEKS                       R3 R2 K1 ["Label"]
        9 LOADK                            R3 K6 ["The changes in state as a result of the reduced action"]
       10 SETTABLEKS                       R3 R2 K2 ["Tooltip"]
       12 DUPTABLE                         R3 K3 [{"Icon", "Label", "Tooltip"}]
       13 LOADK                            R4 K7 ["rbxasset://textures/RoduxDevtools/StateTabs/Full.png"]
       14 SETTABLEKS                       R4 R3 K0 ["Icon"]
       16 LOADK                            R4 K8 ["Full"]
       17 SETTABLEKS                       R4 R3 K1 ["Label"]
       19 LOADK                            R4 K9 ["The full state after the action was reduced"]
       20 SETTABLEKS                       R4 R3 K2 ["Tooltip"]
       22 SETLIST                          R1 R2 2 [1]
       24 SETTABLEKS                       R1 R0 K10 ["stateTabs"]
       26 NEWCLOSURE                       R1 P0
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R1 R0 K11 ["setStateTab"]
       30 DUPTABLE                         R3 K19 [{"summaryExpanded", "actionExpanded", "stateExpanded", "selectedStateTab", "diffText", "fullText", "actionText"}]
       31 LOADB                            R4 1
       32 SETTABLEKS                       R4 R3 K12 ["summaryExpanded"]
       34 LOADB                            R4 1
       35 SETTABLEKS                       R4 R3 K13 ["actionExpanded"]
       37 LOADB                            R4 1
       38 SETTABLEKS                       R4 R3 K14 ["stateExpanded"]
       40 GETTABLEKS                       R5 R0 K10 ["stateTabs"]
       42 GETTABLEN                        R4 R5 1
       43 SETTABLEKS                       R4 R3 K15 ["selectedStateTab"]
       45 LOADNIL                          R4
       46 SETTABLEKS                       R4 R3 K16 ["diffText"]
       48 LOADNIL                          R4
       49 SETTABLEKS                       R4 R3 K17 ["fullText"]
       51 LOADNIL                          R4
       52 SETTABLEKS                       R4 R3 K18 ["actionText"]
       54 NAMECALL                         R1 R0 K20 ["setState"]
       56 CALL                             R1 2 0
       57 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["computeText"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["stateTabs"]
        2 GETTABLEN                        R1 R2 1
        3 GETTABLEKS                       R3 R0 K1 ["props"]
        5 GETTABLEKS                       R2 R3 K2 ["Localization"]
        7 LOADK                            R4 K3 ["ReduceDetails"]
        8 LOADK                            R5 K4 ["StateTab.Diff.Label"]
        9 NAMECALL                         R2 R2 K5 ["getText"]
       11 CALL                             R2 3 1
       12 SETTABLEKS                       R2 R1 K6 ["Label"]
       14 GETTABLEKS                       R2 R0 K0 ["stateTabs"]
       16 GETTABLEN                        R1 R2 1
       17 GETTABLEKS                       R3 R0 K1 ["props"]
       19 GETTABLEKS                       R2 R3 K2 ["Localization"]
       21 LOADK                            R4 K3 ["ReduceDetails"]
       22 LOADK                            R5 K7 ["StateTab.Diff.Tooltip"]
       23 NAMECALL                         R2 R2 K5 ["getText"]
       25 CALL                             R2 3 1
       26 SETTABLEKS                       R2 R1 K8 ["Tooltip"]
       28 GETTABLEKS                       R2 R0 K0 ["stateTabs"]
       30 GETTABLEN                        R1 R2 2
       31 GETTABLEKS                       R3 R0 K1 ["props"]
       33 GETTABLEKS                       R2 R3 K2 ["Localization"]
       35 LOADK                            R4 K3 ["ReduceDetails"]
       36 LOADK                            R5 K9 ["StateTab.Full.Label"]
       37 NAMECALL                         R2 R2 K5 ["getText"]
       39 CALL                             R2 3 1
       40 SETTABLEKS                       R2 R1 K6 ["Label"]
       42 GETTABLEKS                       R2 R0 K0 ["stateTabs"]
       44 GETTABLEN                        R1 R2 2
       45 GETTABLEKS                       R3 R0 K1 ["props"]
       47 GETTABLEKS                       R2 R3 K2 ["Localization"]
       49 LOADK                            R4 K3 ["ReduceDetails"]
       50 LOADK                            R5 K10 ["StateTab.Full.Tooltip"]
       51 NAMECALL                         R2 R2 K5 ["getText"]
       53 CALL                             R2 3 1
       54 SETTABLEKS                       R2 R1 K8 ["Tooltip"]
       56 GETIMPORT                        R1 K13 [task.defer]
       58 NEWCLOSURE                       R2 P0
       59 CAPTURE                          VAL R0
       60 CALL                             R1 1 0
       61 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Event"]
        6 JUMPIF                           R3 ; [+1]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R4 R3 K3 ["isStub"]
       10 JUMPIFNOT                        R4 ; [+1]
       11 RETURN                           R0 0
       12 GETTABLEKS                       R4 R3 K0 ["props"]
       14 NEWTABLE                         R5 0 3
       16 GETTABLEKS                       R6 R2 K4 ["selectedStateTab"]
       18 GETTABLEKS                       R8 R0 K5 ["stateTabs"]
       20 GETTABLEN                        R7 R8 1
       21 JUMPIFNOTEQ                      R6 R7 ; [+6]
       23 LOADK                            R6 K6 ["diff"]
       24 SETTABLEN                        R6 R5 1
       25 LOADK                            R6 K7 ["full"]
       26 SETTABLEN                        R6 R5 2
       27 JUMP                             ; [+4]
       28 LOADK                            R6 K7 ["full"]
       29 SETTABLEN                        R6 R5 1
       30 LOADK                            R6 K6 ["diff"]
       31 SETTABLEN                        R6 R5 2
       32 GETTABLEKS                       R6 R2 K8 ["actionExpanded"]
       34 JUMPIFNOT                        R6 ; [+9]
       35 LOADN                            R8 1
       36 LOADK                            R9 K9 ["action"]
       37 FASTCALL3                        TABLE_INSERT R5 R8 R9
       39 MOVE                             R7 R5
       40 GETIMPORT                        R6 K12 [table.insert]
       42 CALL                             R6 3 0
       43 JUMP                             ; [+2]
       44 LOADK                            R6 K9 ["action"]
       45 SETTABLEN                        R6 R5 3
       46 MOVE                             R6 R5
       47 LOADNIL                          R7
       48 LOADNIL                          R8
       49 FORGPREP                         R6
       50 GETTABLEKS                       R12 R0 K0 ["props"]
       52 GETTABLEKS                       R11 R12 K2 ["Event"]
       54 JUMPIFEQ                         R11 R3 ; [+2]
       56 RETURN                           R0 0
       57 JUMPIFNOTEQKS                    R10 K9 ["action"] ; [+25]
       59 GETUPVAL                         R11 0
       60 GETTABLEKS                       R12 R4 K9 ["action"]
       62 DUPTABLE                         R13 K17 [{"depth", "multiline", "maxLineLength", "indent"}]
       63 LOADN                            R14 100
       64 SETTABLEKS                       R14 R13 K13 ["depth"]
       66 LOADB                            R14 1
       67 SETTABLEKS                       R14 R13 K14 ["multiline"]
       69 LOADN                            R14 100
       70 SETTABLEKS                       R14 R13 K15 ["maxLineLength"]
       72 LOADK                            R14 K18 ["  "]
       73 SETTABLEKS                       R14 R13 K16 ["indent"]
       75 CALL                             R11 2 1
       76 DUPTABLE                         R14 K20 [{"actionText"}]
       77 SETTABLEKS                       R11 R14 K19 ["actionText"]
       79 NAMECALL                         R12 R0 K21 ["setState"]
       81 CALL                             R12 2 0
       82 JUMP                             ; [+54]
       83 JUMPIFNOTEQKS                    R10 K6 ["diff"] ; [+28]
       85 GETTABLEKS                       R12 R4 K22 ["lastState"]
       87 JUMPIFEQKNIL                     R12 ; [+8]
       89 GETUPVAL                         R11 1
       90 GETTABLEKS                       R12 R4 K22 ["lastState"]
       92 GETTABLEKS                       R13 R4 K1 ["state"]
       94 CALL                             R11 2 1
       95 JUMP                             ; [+9]
       96 GETTABLEKS                       R12 R0 K0 ["props"]
       98 GETTABLEKS                       R11 R12 K23 ["Localization"]
      100 LOADK                            R13 K24 ["ReduceDetails"]
      101 LOADK                            R14 K25 ["NoPriorState"]
      102 NAMECALL                         R11 R11 K26 ["getText"]
      104 CALL                             R11 3 1
      105 DUPTABLE                         R14 K28 [{"diffText"}]
      106 SETTABLEKS                       R11 R14 K27 ["diffText"]
      108 NAMECALL                         R12 R0 K21 ["setState"]
      110 CALL                             R12 2 0
      111 JUMP                             ; [+25]
      112 JUMPIFNOTEQKS                    R10 K7 ["full"] ; [+24]
      114 GETUPVAL                         R11 0
      115 GETTABLEKS                       R12 R4 K1 ["state"]
      117 DUPTABLE                         R13 K17 [{"depth", "multiline", "maxLineLength", "indent"}]
      118 LOADN                            R14 100
      119 SETTABLEKS                       R14 R13 K13 ["depth"]
      121 LOADB                            R14 1
      122 SETTABLEKS                       R14 R13 K14 ["multiline"]
      124 LOADN                            R14 100
      125 SETTABLEKS                       R14 R13 K15 ["maxLineLength"]
      127 LOADK                            R14 K18 ["  "]
      128 SETTABLEKS                       R14 R13 K16 ["indent"]
      130 CALL                             R11 2 1
      131 DUPTABLE                         R14 K30 [{"fullText"}]
      132 SETTABLEKS                       R11 R14 K29 ["fullText"]
      134 NAMECALL                         R12 R0 K21 ["setState"]
      136 CALL                             R12 2 0
      137 GETIMPORT                        R11 K33 [task.wait]
      139 LOADK                            R12 K34 [0.0333333333333333]
      140 CALL                             R11 1 0
      141 FORGLOOP                         R6 2 ; [-92]
      143 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["computeText"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R3 K1 ["Event"]
        4 GETTABLEKS                       R3 R1 K1 ["Event"]
        6 JUMPIFEQ                         R2 R3 ; [+25]
        8 DUPTABLE                         R4 K5 [{"diffText", "fullText", "actionText"}]
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R5 R6 K6 ["None"]
       12 SETTABLEKS                       R5 R4 K2 ["diffText"]
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R5 R6 K6 ["None"]
       17 SETTABLEKS                       R5 R4 K3 ["fullText"]
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R5 R6 K6 ["None"]
       22 SETTABLEKS                       R5 R4 K4 ["actionText"]
       24 NAMECALL                         R2 R0 K7 ["setState"]
       26 CALL                             R2 2 0
       27 GETIMPORT                        R2 K10 [task.defer]
       29 NEWCLOSURE                       R3 P0
       30 CAPTURE                          VAL R0
       31 CALL                             R2 1 0
       32 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R1 K1 [{"summaryExpanded"}]
        1 GETTABLEKS                       R3 R0 K0 ["summaryExpanded"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["summaryExpanded"]
        6 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_10]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_12:
        0 DUPTABLE                         R1 K1 [{"actionExpanded"}]
        1 GETTABLEKS                       R3 R0 K0 ["actionExpanded"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["actionExpanded"]
        6 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_12]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+19]
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R1 R2 K0 ["props"]
        8 GETTABLEKS                       R0 R1 K1 ["OnRedoAction"]
       10 JUMPIF                           R0 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R1 R2 K0 ["props"]
       15 GETTABLEKS                       R0 R1 K1 ["OnRedoAction"]
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R2 R3 K0 ["props"]
       20 GETTABLEKS                       R1 R2 K2 ["SelectedIndex"]
       22 CALL                             R0 1 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R2 2
       25 GETTABLEKS                       R1 R2 K0 ["props"]
       27 GETTABLEKS                       R0 R1 K3 ["OnUndoAction"]
       29 JUMPIF                           R0 ; [+1]
       30 RETURN                           R0 0
       31 GETUPVAL                         R2 2
       32 GETTABLEKS                       R1 R2 K0 ["props"]
       34 GETTABLEKS                       R0 R1 K3 ["OnUndoAction"]
       36 GETUPVAL                         R3 2
       37 GETTABLEKS                       R2 R3 K0 ["props"]
       39 GETTABLEKS                       R1 R2 K2 ["SelectedIndex"]
       41 CALL                             R0 1 0
       42 RETURN                           R0 0

PROTO_15:
        0 DUPTABLE                         R1 K1 [{"stateExpanded"}]
        1 GETTABLEKS                       R3 R0 K0 ["stateExpanded"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["stateExpanded"]
        6 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_15]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["OnSetState"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K0 ["props"]
       10 GETTABLEKS                       R0 R1 K1 ["OnSetState"]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K0 ["props"]
       15 GETTABLEKS                       R1 R2 K2 ["SelectedIndex"]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Event"]
        4 JUMPIF                           R2 ; [+2]
        5 LOADNIL                          R3
        6 RETURN                           R3 1
        7 GETTABLEKS                       R3 R2 K0 ["props"]
        9 GETTABLEKS                       R6 R0 K2 ["state"]
       11 GETTABLEKS                       R5 R6 K3 ["selectedStateTab"]
       13 GETTABLEKS                       R7 R0 K4 ["stateTabs"]
       15 GETTABLEN                        R6 R7 1
       16 JUMPIFNOTEQ                      R5 R6 ; [+6]
       18 GETTABLEKS                       R5 R0 K2 ["state"]
       20 GETTABLEKS                       R4 R5 K5 ["diffText"]
       22 JUMP                             ; [+4]
       23 GETTABLEKS                       R5 R0 K2 ["state"]
       25 GETTABLEKS                       R4 R5 K6 ["fullText"]
       27 GETTABLEKS                       R6 R0 K2 ["state"]
       29 GETTABLEKS                       R5 R6 K7 ["actionText"]
       31 LOADB                            R6 0
       32 GETTABLEKS                       R7 R2 K8 ["altered"]
       34 JUMPIFEQKNIL                     R7 ; [+9]
       36 GETTABLEKS                       R8 R2 K8 ["altered"]
       38 GETTABLEKS                       R7 R8 K9 ["skipped"]
       40 JUMPIFEQKB                       R7 TRUE ; [+2]
       42 LOADB                            R6 0 +1
       43 LOADB                            R6 1
       44 GETTABLEKS                       R8 R3 K10 ["isDevtools"]
       46 JUMPIFEQKB                       R8 TRUE ; [+2]
       48 LOADB                            R7 0 +1
       49 LOADB                            R7 1
       50 GETUPVAL                         R9 0
       51 GETTABLEKS                       R8 R9 K11 ["createElement"]
       53 GETUPVAL                         R9 1
       54 LOADNIL                          R10
       55 DUPTABLE                         R11 K13 [{"ReduceDetails"}]
       56 GETUPVAL                         R13 0
       57 GETTABLEKS                       R12 R13 K11 ["createElement"]
       59 GETUPVAL                         R13 2
       60 DUPTABLE                         R14 K18 [{"Size", "AutomaticCanvasSize", "Layout", "Spacing"}]
       61 GETIMPORT                        R15 K21 [UDim2.fromScale]
       63 LOADN                            R16 1
       64 LOADN                            R17 1
       65 CALL                             R15 2 1
       66 SETTABLEKS                       R15 R14 K14 ["Size"]
       68 GETIMPORT                        R15 K25 [Enum.AutomaticSize.Y]
       70 SETTABLEKS                       R15 R14 K15 ["AutomaticCanvasSize"]
       72 GETIMPORT                        R15 K28 [Enum.FillDirection.Vertical]
       74 SETTABLEKS                       R15 R14 K16 ["Layout"]
       76 GETIMPORT                        R15 K31 [UDim.new]
       78 LOADN                            R16 0
       79 LOADN                            R17 5
       80 CALL                             R15 2 1
       81 SETTABLEKS                       R15 R14 K17 ["Spacing"]
       83 DUPTABLE                         R15 K37 [{"SummaryInfo", "SummarySeparator", "ActionInfo", "ActionSeparator", "StateInfo"}]
       84 GETUPVAL                         R17 0
       85 GETTABLEKS                       R16 R17 K11 ["createElement"]
       87 GETUPVAL                         R17 3
       88 DUPTABLE                         R18 K45 [{"Style", "LayoutOrder", "Size", "Text", "ContentPadding", "HorizontalAlignment", "Expanded", "OnExpandedChanged"}]
       89 LOADK                            R19 K46 ["Section"]
       90 SETTABLEKS                       R19 R18 K38 ["Style"]
       92 GETUPVAL                         R19 4
       93 CALL                             R19 0 1
       94 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
       96 GETIMPORT                        R19 K47 [UDim2.new]
       98 LOADN                            R20 1
       99 LOADN                            R21 0
      100 LOADN                            R22 0
      101 LOADN                            R23 32
      102 CALL                             R19 4 1
      103 SETTABLEKS                       R19 R18 K14 ["Size"]
      105 GETTABLEKS                       R20 R0 K0 ["props"]
      107 GETTABLEKS                       R19 R20 K48 ["Localization"]
      109 LOADK                            R21 K12 ["ReduceDetails"]
      110 LOADK                            R22 K49 ["SummaryTitle"]
      111 NAMECALL                         R19 R19 K50 ["getText"]
      113 CALL                             R19 3 1
      114 SETTABLEKS                       R19 R18 K40 ["Text"]
      116 LOADN                            R19 5
      117 SETTABLEKS                       R19 R18 K41 ["ContentPadding"]
      119 GETIMPORT                        R19 K52 [Enum.HorizontalAlignment.Left]
      121 SETTABLEKS                       R19 R18 K42 ["HorizontalAlignment"]
      123 GETTABLEKS                       R20 R0 K2 ["state"]
      125 GETTABLEKS                       R19 R20 K53 ["summaryExpanded"]
      127 SETTABLEKS                       R19 R18 K43 ["Expanded"]
      129 NEWCLOSURE                       R19 P0
      130 CAPTURE                          VAL R0
      131 SETTABLEKS                       R19 R18 K44 ["OnExpandedChanged"]
      133 DUPTABLE                         R19 K55 [{"SummaryLabel"}]
      134 GETUPVAL                         R21 0
      135 GETTABLEKS                       R20 R21 K11 ["createElement"]
      137 GETUPVAL                         R21 5
      138 DUPTABLE                         R22 K58 [{"Size", "AutomaticSize", "TextXAlignment", "TextWrapped", "Text"}]
      139 GETIMPORT                        R23 K47 [UDim2.new]
      141 LOADN                            R24 1
      142 LOADN                            R25 0
      143 LOADN                            R26 0
      144 LOADN                            R27 0
      145 CALL                             R23 4 1
      146 SETTABLEKS                       R23 R22 K14 ["Size"]
      148 GETIMPORT                        R23 K25 [Enum.AutomaticSize.Y]
      150 SETTABLEKS                       R23 R22 K23 ["AutomaticSize"]
      152 GETIMPORT                        R23 K59 [Enum.TextXAlignment.Left]
      154 SETTABLEKS                       R23 R22 K56 ["TextXAlignment"]
      156 LOADB                            R23 1
      157 SETTABLEKS                       R23 R22 K57 ["TextWrapped"]
      159 GETTABLEKS                       R24 R2 K60 ["isStub"]
      161 JUMPIFNOT                        R24 ; [+10]
      162 GETTABLEKS                       R24 R0 K0 ["props"]
      164 GETTABLEKS                       R23 R24 K48 ["Localization"]
      166 LOADK                            R25 K61 ["Common"]
      167 LOADK                            R26 K62 ["LoadingStub"]
      168 NAMECALL                         R23 R23 K50 ["getText"]
      170 CALL                             R23 3 1
      171 JUMP                             ; [+36]
      172 GETTABLEKS                       R24 R0 K0 ["props"]
      174 GETTABLEKS                       R23 R24 K48 ["Localization"]
      176 LOADK                            R25 K12 ["ReduceDetails"]
      177 LOADK                            R26 K63 ["Summary"]
      178 DUPTABLE                         R27 K68 [{"action", "elapsed", "timestamp", "source"}]
      179 GETTABLEKS                       R29 R3 K64 ["action"]
      181 GETTABLEKS                       R28 R29 K69 ["type"]
      183 SETTABLEKS                       R28 R27 K64 ["action"]
      185 GETTABLEKS                       R28 R3 K70 ["elapsedMs"]
      187 SETTABLEKS                       R28 R27 K65 ["elapsed"]
      189 GETIMPORT                        R28 K73 [DateTime.fromUnixTimestampMillis]
      191 GETTABLEKS                       R29 R2 K66 ["timestamp"]
      193 CALL                             R28 1 1
      194 LOADK                            R30 K74 ["h:mm:ss.SSS a"]
      195 LOADK                            R31 K75 ["en-us"]
      196 NAMECALL                         R28 R28 K76 ["FormatLocalTime"]
      198 CALL                             R28 3 1
      199 SETTABLEKS                       R28 R27 K66 ["timestamp"]
      201 GETTABLEKS                       R28 R2 K67 ["source"]
      203 SETTABLEKS                       R28 R27 K67 ["source"]
      205 NAMECALL                         R23 R23 K50 ["getText"]
      207 CALL                             R23 4 1
      208 SETTABLEKS                       R23 R22 K40 ["Text"]
      210 CALL                             R20 2 1
      211 SETTABLEKS                       R20 R19 K54 ["SummaryLabel"]
      213 CALL                             R16 3 1
      214 SETTABLEKS                       R16 R15 K32 ["SummaryInfo"]
      216 GETUPVAL                         R17 0
      217 GETTABLEKS                       R16 R17 K11 ["createElement"]
      219 GETUPVAL                         R17 6
      220 DUPTABLE                         R18 K77 [{"LayoutOrder"}]
      221 GETUPVAL                         R19 4
      222 CALL                             R19 0 1
      223 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      225 CALL                             R16 2 1
      226 SETTABLEKS                       R16 R15 K33 ["SummarySeparator"]
      228 GETUPVAL                         R17 0
      229 GETTABLEKS                       R16 R17 K11 ["createElement"]
      231 GETUPVAL                         R17 3
      232 DUPTABLE                         R18 K80 [{"Style", "LayoutOrder", "Size", "Text", "ContentPadding", "HorizontalAlignment", "Expanded", "OnExpandedChanged", "HeaderComponent", "HeaderComponentProps"}]
      233 LOADK                            R19 K46 ["Section"]
      234 SETTABLEKS                       R19 R18 K38 ["Style"]
      236 GETUPVAL                         R19 4
      237 CALL                             R19 0 1
      238 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      240 GETIMPORT                        R19 K47 [UDim2.new]
      242 LOADN                            R20 1
      243 LOADN                            R21 0
      244 LOADN                            R22 0
      245 LOADN                            R23 32
      246 CALL                             R19 4 1
      247 SETTABLEKS                       R19 R18 K14 ["Size"]
      249 GETTABLEKS                       R20 R0 K0 ["props"]
      251 GETTABLEKS                       R19 R20 K48 ["Localization"]
      253 LOADK                            R21 K12 ["ReduceDetails"]
      254 LOADK                            R22 K81 ["ActionTitle"]
      255 NAMECALL                         R19 R19 K50 ["getText"]
      257 CALL                             R19 3 1
      258 SETTABLEKS                       R19 R18 K40 ["Text"]
      260 LOADN                            R19 5
      261 SETTABLEKS                       R19 R18 K41 ["ContentPadding"]
      263 GETIMPORT                        R19 K52 [Enum.HorizontalAlignment.Left]
      265 SETTABLEKS                       R19 R18 K42 ["HorizontalAlignment"]
      267 GETTABLEKS                       R20 R0 K2 ["state"]
      269 GETTABLEKS                       R19 R20 K82 ["actionExpanded"]
      271 SETTABLEKS                       R19 R18 K43 ["Expanded"]
      273 NEWCLOSURE                       R19 P1
      274 CAPTURE                          VAL R0
      275 SETTABLEKS                       R19 R18 K44 ["OnExpandedChanged"]
      277 GETUPVAL                         R19 7
      278 SETTABLEKS                       R19 R18 K78 ["HeaderComponent"]
      280 DUPTABLE                         R19 K86 [{"Localization", "IsUndone", "IsDevtools", "OnToggleActionClick"}]
      281 GETTABLEKS                       R21 R0 K0 ["props"]
      283 GETTABLEKS                       R20 R21 K48 ["Localization"]
      285 SETTABLEKS                       R20 R19 K48 ["Localization"]
      287 SETTABLEKS                       R6 R19 K83 ["IsUndone"]
      289 SETTABLEKS                       R7 R19 K84 ["IsDevtools"]
      291 NEWCLOSURE                       R20 P2
      292 CAPTURE                          VAL R7
      293 CAPTURE                          VAL R6
      294 CAPTURE                          VAL R0
      295 SETTABLEKS                       R20 R19 K85 ["OnToggleActionClick"]
      297 SETTABLEKS                       R19 R18 K79 ["HeaderComponentProps"]
      299 DUPTABLE                         R19 K88 [{"ActionLabel"}]
      300 JUMPIFEQKNIL                     R5 ; [+25]
      302 GETUPVAL                         R21 0
      303 GETTABLEKS                       R20 R21 K11 ["createElement"]
      305 GETUPVAL                         R21 8
      306 DUPTABLE                         R22 K92 [{"MaxHeight", "TextXAlignment", "TextYAlignment", "Font", "Text"}]
      307 LOADN                            R23 44
      308 SETTABLEKS                       R23 R22 K89 ["MaxHeight"]
      310 GETIMPORT                        R23 K59 [Enum.TextXAlignment.Left]
      312 SETTABLEKS                       R23 R22 K56 ["TextXAlignment"]
      314 GETIMPORT                        R23 K94 [Enum.TextYAlignment.Top]
      316 SETTABLEKS                       R23 R22 K90 ["TextYAlignment"]
      318 GETIMPORT                        R23 K96 [Enum.Font.RobotoMono]
      320 SETTABLEKS                       R23 R22 K91 ["Font"]
      322 SETTABLEKS                       R5 R22 K40 ["Text"]
      324 CALL                             R20 2 1
      325 JUMP                             ; [+9]
      326 GETUPVAL                         R21 0
      327 GETTABLEKS                       R20 R21 K11 ["createElement"]
      329 GETUPVAL                         R21 9
      330 DUPTABLE                         R22 K98 [{"LineCount"}]
      331 LOADN                            R23 5
      332 SETTABLEKS                       R23 R22 K97 ["LineCount"]
      334 CALL                             R20 2 1
      335 SETTABLEKS                       R20 R19 K87 ["ActionLabel"]
      337 CALL                             R16 3 1
      338 SETTABLEKS                       R16 R15 K34 ["ActionInfo"]
      340 GETUPVAL                         R17 0
      341 GETTABLEKS                       R16 R17 K11 ["createElement"]
      343 GETUPVAL                         R17 6
      344 DUPTABLE                         R18 K77 [{"LayoutOrder"}]
      345 GETUPVAL                         R19 4
      346 CALL                             R19 0 1
      347 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      349 CALL                             R16 2 1
      350 SETTABLEKS                       R16 R15 K35 ["ActionSeparator"]
      352 GETUPVAL                         R17 0
      353 GETTABLEKS                       R16 R17 K11 ["createElement"]
      355 GETUPVAL                         R17 3
      356 DUPTABLE                         R18 K80 [{"Style", "LayoutOrder", "Size", "Text", "ContentPadding", "HorizontalAlignment", "Expanded", "OnExpandedChanged", "HeaderComponent", "HeaderComponentProps"}]
      357 LOADK                            R19 K46 ["Section"]
      358 SETTABLEKS                       R19 R18 K38 ["Style"]
      360 GETUPVAL                         R19 4
      361 CALL                             R19 0 1
      362 SETTABLEKS                       R19 R18 K39 ["LayoutOrder"]
      364 GETIMPORT                        R19 K47 [UDim2.new]
      366 LOADN                            R20 1
      367 LOADN                            R21 0
      368 LOADN                            R22 0
      369 LOADN                            R23 32
      370 CALL                             R19 4 1
      371 SETTABLEKS                       R19 R18 K14 ["Size"]
      373 GETTABLEKS                       R20 R0 K0 ["props"]
      375 GETTABLEKS                       R19 R20 K48 ["Localization"]
      377 LOADK                            R21 K12 ["ReduceDetails"]
      378 LOADK                            R22 K99 ["StateTitle"]
      379 NAMECALL                         R19 R19 K50 ["getText"]
      381 CALL                             R19 3 1
      382 SETTABLEKS                       R19 R18 K40 ["Text"]
      384 LOADN                            R19 5
      385 SETTABLEKS                       R19 R18 K41 ["ContentPadding"]
      387 GETIMPORT                        R19 K52 [Enum.HorizontalAlignment.Left]
      389 SETTABLEKS                       R19 R18 K42 ["HorizontalAlignment"]
      391 GETTABLEKS                       R20 R0 K2 ["state"]
      393 GETTABLEKS                       R19 R20 K100 ["stateExpanded"]
      395 SETTABLEKS                       R19 R18 K43 ["Expanded"]
      397 NEWCLOSURE                       R19 P3
      398 CAPTURE                          VAL R0
      399 SETTABLEKS                       R19 R18 K44 ["OnExpandedChanged"]
      401 GETUPVAL                         R19 10
      402 SETTABLEKS                       R19 R18 K78 ["HeaderComponent"]
      404 DUPTABLE                         R19 K105 [{"Localization", "Tabs", "Selected", "OnTabSelected", "OnSetStateClick"}]
      405 GETTABLEKS                       R21 R0 K0 ["props"]
      407 GETTABLEKS                       R20 R21 K48 ["Localization"]
      409 SETTABLEKS                       R20 R19 K48 ["Localization"]
      411 GETTABLEKS                       R20 R0 K4 ["stateTabs"]
      413 SETTABLEKS                       R20 R19 K101 ["Tabs"]
      415 GETTABLEKS                       R21 R0 K2 ["state"]
      417 GETTABLEKS                       R20 R21 K3 ["selectedStateTab"]
      419 SETTABLEKS                       R20 R19 K102 ["Selected"]
      421 GETTABLEKS                       R20 R0 K106 ["setStateTab"]
      423 SETTABLEKS                       R20 R19 K103 ["OnTabSelected"]
      425 NEWCLOSURE                       R20 P4
      426 CAPTURE                          VAL R0
      427 SETTABLEKS                       R20 R19 K104 ["OnSetStateClick"]
      429 SETTABLEKS                       R19 R18 K79 ["HeaderComponentProps"]
      431 DUPTABLE                         R19 K108 [{"StateLabel"}]
      432 JUMPIFEQKNIL                     R4 ; [+28]
      434 GETUPVAL                         R21 0
      435 GETTABLEKS                       R20 R21 K11 ["createElement"]
      437 GETUPVAL                         R21 8
      438 DUPTABLE                         R22 K110 [{"MaxHeight", "TextXAlignment", "TextYAlignment", "Font", "Text", "RichText"}]
      439 LOADN                            R23 144
      440 SETTABLEKS                       R23 R22 K89 ["MaxHeight"]
      442 GETIMPORT                        R23 K59 [Enum.TextXAlignment.Left]
      444 SETTABLEKS                       R23 R22 K56 ["TextXAlignment"]
      446 GETIMPORT                        R23 K94 [Enum.TextYAlignment.Top]
      448 SETTABLEKS                       R23 R22 K90 ["TextYAlignment"]
      450 GETIMPORT                        R23 K96 [Enum.Font.RobotoMono]
      452 SETTABLEKS                       R23 R22 K91 ["Font"]
      454 SETTABLEKS                       R4 R22 K40 ["Text"]
      456 LOADB                            R23 1
      457 SETTABLEKS                       R23 R22 K109 ["RichText"]
      459 CALL                             R20 2 1
      460 JUMP                             ; [+20]
      461 GETUPVAL                         R21 0
      462 GETTABLEKS                       R20 R21 K11 ["createElement"]
      464 GETUPVAL                         R21 9
      465 DUPTABLE                         R22 K98 [{"LineCount"}]
      466 GETTABLEKS                       R25 R0 K2 ["state"]
      468 GETTABLEKS                       R24 R25 K3 ["selectedStateTab"]
      470 GETTABLEKS                       R26 R0 K4 ["stateTabs"]
      472 GETTABLEN                        R25 R26 1
      473 JUMPIFNOTEQ                      R24 R25 ; [+3]
      475 LOADN                            R23 10
      476 JUMP                             ; [+1]
      477 LOADN                            R23 30
      478 SETTABLEKS                       R23 R22 K97 ["LineCount"]
      480 CALL                             R20 2 1
      481 SETTABLEKS                       R20 R19 K107 ["StateLabel"]
      483 CALL                             R16 3 1
      484 SETTABLEKS                       R16 R15 K36 ["StateInfo"]
      486 CALL                             R12 3 1
      487 SETTABLEKS                       R12 R11 K12 ["ReduceDetails"]
      489 CALL                             R8 3 -1
      490 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R3 K6 ["Types"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R4 R0 K7 ["Packages"]
       22 GETTABLEKS                       R3 R4 K8 ["React"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R5 R0 K7 ["Packages"]
       29 GETTABLEKS                       R4 R5 K9 ["Framework"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R6 R0 K7 ["Packages"]
       36 GETTABLEKS                       R5 R6 K10 ["Dash"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R4 K11 ["pretty"]
       41 GETIMPORT                        R6 K4 [require]
       43 GETTABLEKS                       R9 R0 K5 ["Src"]
       45 GETTABLEKS                       R8 R9 K12 ["Util"]
       47 GETTABLEKS                       R7 R8 K13 ["diff"]
       49 CALL                             R6 1 1
       50 GETTABLEKS                       R7 R3 K14 ["ContextServices"]
       52 GETTABLEKS                       R8 R7 K15 ["withContext"]
       54 GETTABLEKS                       R9 R7 K16 ["Analytics"]
       56 GETTABLEKS                       R10 R7 K17 ["Localization"]
       58 GETTABLEKS                       R12 R3 K18 ["Style"]
       60 GETTABLEKS                       R11 R12 K19 ["Stylizer"]
       62 GETTABLEKS                       R12 R3 K20 ["UI"]
       64 GETTABLEKS                       R13 R12 K21 ["Pane"]
       66 GETTABLEKS                       R14 R12 K22 ["TextLabel"]
       68 GETTABLEKS                       R15 R12 K23 ["IconButton"]
       70 GETTABLEKS                       R16 R12 K24 ["Separator"]
       72 GETTABLEKS                       R17 R12 K25 ["ScrollingFrame"]
       74 GETTABLEKS                       R18 R12 K26 ["ExpandablePane"]
       76 GETTABLEKS                       R19 R12 K27 ["Tabs"]
       78 GETIMPORT                        R20 K4 [require]
       80 GETIMPORT                        R24 K1 [script]
       82 GETTABLEKS                       R23 R24 K2 ["Parent"]
       84 GETTABLEKS                       R22 R23 K2 ["Parent"]
       86 GETTABLEKS                       R21 R22 K28 ["LongText"]
       88 CALL                             R20 1 1
       89 GETIMPORT                        R21 K4 [require]
       91 GETIMPORT                        R27 K1 [script]
       93 GETTABLEKS                       R26 R27 K2 ["Parent"]
       95 GETTABLEKS                       R25 R26 K2 ["Parent"]
       97 GETTABLEKS                       R24 R25 K2 ["Parent"]
       99 GETTABLEKS                       R23 R24 K12 ["Util"]
      101 GETTABLEKS                       R22 R23 K29 ["counter"]
      103 CALL                             R21 1 1
      104 CALL                             R21 0 1
      105 DUPCLOSURE                       R22 K30 [PROTO_0]
      106 CAPTURE                          VAL R2
      107 DUPCLOSURE                       R23 K31 [PROTO_1]
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R13
      110 CAPTURE                          VAL R15
      111 DUPCLOSURE                       R24 K32 [PROTO_2]
      112 CAPTURE                          VAL R2
      113 CAPTURE                          VAL R13
      114 CAPTURE                          VAL R15
      115 CAPTURE                          VAL R19
      116 GETTABLEKS                       R25 R2 K33 ["PureComponent"]
      118 LOADK                            R27 K34 ["ReduceDetails"]
      119 NAMECALL                         R25 R25 K35 ["extend"]
      121 CALL                             R25 2 1
      122 DUPCLOSURE                       R26 K36 [PROTO_4]
      123 SETTABLEKS                       R26 R25 K37 ["init"]
      125 DUPCLOSURE                       R26 K38 [PROTO_6]
      126 SETTABLEKS                       R26 R25 K39 ["didMount"]
      128 DUPCLOSURE                       R26 K40 [PROTO_7]
      129 CAPTURE                          VAL R5
      130 CAPTURE                          VAL R6
      131 SETTABLEKS                       R26 R25 K41 ["computeText"]
      133 DUPCLOSURE                       R26 K42 [PROTO_9]
      134 CAPTURE                          VAL R2
      135 SETTABLEKS                       R26 R25 K43 ["didUpdate"]
      137 DUPCLOSURE                       R26 K44 [PROTO_18]
      138 CAPTURE                          VAL R2
      139 CAPTURE                          VAL R13
      140 CAPTURE                          VAL R17
      141 CAPTURE                          VAL R18
      142 CAPTURE                          VAL R21
      143 CAPTURE                          VAL R14
      144 CAPTURE                          VAL R16
      145 CAPTURE                          VAL R23
      146 CAPTURE                          VAL R20
      147 CAPTURE                          VAL R22
      148 CAPTURE                          VAL R24
      149 SETTABLEKS                       R26 R25 K45 ["render"]
      151 MOVE                             R26 R8
      152 DUPTABLE                         R27 K46 [{"Analytics", "Localization", "Stylizer"}]
      153 SETTABLEKS                       R9 R27 K16 ["Analytics"]
      155 SETTABLEKS                       R10 R27 K17 ["Localization"]
      157 SETTABLEKS                       R11 R27 K19 ["Stylizer"]
      159 CALL                             R26 1 1
      160 MOVE                             R27 R25
      161 CALL                             R26 1 1
      162 MOVE                             R25 R26
      163 RETURN                           R25 1
