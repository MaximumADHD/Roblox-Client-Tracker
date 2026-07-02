PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R4 1
        3 GETTABLEKS                       R5 R0 K1 ["LineCount"]
        5 ORK                              R2 R5 K0 [5]
        6 LOADN                            R3 1
        7 FORNPREP                         R2
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K2 ["createElement"]
       11 LOADK                            R6 K3 ["Frame"]
       12 DUPTABLE                         R7 K8 [{["Size"], ["BackgroundTransparency"] = 0.85, ["BackgroundColor3"]}]
       13 GETIMPORT                        R8 K11 [UDim2.fromOffset]
       15 GETIMPORT                        R9 K14 [math.random]
       17 LOADN                            R10 50
       18 LOADN                            R11 400
       19 CALL                             R9 2 1
       20 LOADN                            R10 16
       21 CALL                             R8 2 1
       22 SETTABLEKS                       R8 R7 K4 ["Size"]
       24 GETIMPORT                        R8 K17 [Color3.new]
       26 LOADN                            R9 0
       27 LOADN                            R10 0
       28 LOADN                            R11 0
       29 CALL                             R8 3 1
       30 SETTABLEKS                       R8 R7 K7 ["BackgroundColor3"]
       32 DUPTABLE                         R8 K19 [{"Corner"}]
       33 GETUPVAL                         R9 0
       34 GETTABLEKS                       R9 R9 K2 ["createElement"]
       36 LOADK                            R10 K20 ["UICorner"]
       37 DUPTABLE                         R11 K22 [{"CornerRadius"}]
       38 GETIMPORT                        R12 K24 [UDim.new]
       40 LOADN                            R13 0
       41 LOADN                            R14 8
       42 CALL                             R12 2 1
       43 SETTABLEKS                       R12 R11 K21 ["CornerRadius"]
       45 CALL                             R9 2 1
       46 SETTABLEKS                       R9 R8 K18 ["Corner"]
       48 CALL                             R5 3 1
       49 SETTABLE                         R5 R1 R4
       50 FORNLOOP                         R2
       51 GETUPVAL                         R2 0
       52 GETTABLEKS                       R2 R2 K2 ["createElement"]
       54 LOADK                            R3 K3 ["Frame"]
       55 DUPTABLE                         R4 K27 [{["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1}]
       56 GETIMPORT                        R5 K11 [UDim2.fromOffset]
       58 LOADN                            R6 1
       59 LOADN                            R7 0
       60 CALL                             R5 2 1
       61 SETTABLEKS                       R5 R4 K4 ["Size"]
       63 GETIMPORT                        R5 K30 [Enum.AutomaticSize.Y]
       65 SETTABLEKS                       R5 R4 K25 ["AutomaticSize"]
       67 DUPTABLE                         R5 K33 [{"Layout", "Placeholders"}]
       68 GETUPVAL                         R6 0
       69 GETTABLEKS                       R6 R6 K2 ["createElement"]
       71 LOADK                            R7 K34 ["UIListLayout"]
       72 DUPTABLE                         R8 K40 [{"SortOrder", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
       73 GETIMPORT                        R9 K42 [Enum.SortOrder.Name]
       75 SETTABLEKS                       R9 R8 K35 ["SortOrder"]
       77 GETIMPORT                        R9 K44 [Enum.FillDirection.Vertical]
       79 SETTABLEKS                       R9 R8 K36 ["FillDirection"]
       81 GETIMPORT                        R9 K46 [Enum.HorizontalAlignment.Left]
       83 SETTABLEKS                       R9 R8 K37 ["HorizontalAlignment"]
       85 GETIMPORT                        R9 K48 [Enum.VerticalAlignment.Top]
       87 SETTABLEKS                       R9 R8 K38 ["VerticalAlignment"]
       89 GETIMPORT                        R9 K24 [UDim.new]
       91 LOADN                            R10 0
       92 LOADN                            R11 8
       93 CALL                             R9 2 1
       94 SETTABLEKS                       R9 R8 K39 ["Padding"]
       96 CALL                             R6 2 1
       97 SETTABLEKS                       R6 R5 K31 ["Layout"]
       99 GETUPVAL                         R6 0
      100 GETTABLEKS                       R6 R6 K2 ["createElement"]
      102 GETUPVAL                         R7 0
      103 GETTABLEKS                       R7 R7 K49 ["Fragment"]
      105 LOADNIL                          R8
      106 MOVE                             R9 R1
      107 CALL                             R6 3 1
      108 SETTABLEKS                       R6 R5 K32 ["Placeholders"]
      110 CALL                             R2 3 -1
      111 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
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
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K0 ["createElement"]
       33 GETUPVAL                         R6 2
       34 DUPTABLE                         R7 K26 [{["Size"], ["AutomaticSize"], ["BackgroundStyle"] = "None", ["LeftIcon"], ["Text"], ["TooltipText"], ["Disabled"], ["OnClick"]}]
       35 GETIMPORT                        R8 K29 [UDim2.fromScale]
       37 LOADN                            R9 0
       38 LOADN                            R10 1
       39 CALL                             R8 2 1
       40 SETTABLEKS                       R8 R7 K1 ["Size"]
       42 GETIMPORT                        R8 K31 [Enum.AutomaticSize.X]
       44 SETTABLEKS                       R8 R7 K18 ["AutomaticSize"]
       46 GETTABLEKS                       R9 R0 K32 ["IsUndone"]
       48 JUMPIFNOT                        R9 ; [+2]
       49 LOADK                            R8 K33 ["rbxasset://textures/RoduxDevtools/Redo.png"]
       50 JUMP                             ; [+1]
       51 LOADK                            R8 K34 ["rbxasset://textures/RoduxDevtools/Undo.png"]
       52 SETTABLEKS                       R8 R7 K21 ["LeftIcon"]
       54 GETTABLEKS                       R9 R0 K32 ["IsUndone"]
       56 JUMPIFNOT                        R9 ; [+8]
       57 GETTABLEKS                       R8 R0 K35 ["Localization"]
       59 LOADK                            R10 K36 ["ReduceDetails"]
       60 LOADK                            R11 K37 ["ToggleAction.RedoText"]
       61 NAMECALL                         R8 R8 K38 ["getText"]
       63 CALL                             R8 3 1
       64 JUMP                             ; [+7]
       65 GETTABLEKS                       R8 R0 K35 ["Localization"]
       67 LOADK                            R10 K36 ["ReduceDetails"]
       68 LOADK                            R11 K39 ["ToggleAction.UndoText"]
       69 NAMECALL                         R8 R8 K38 ["getText"]
       71 CALL                             R8 3 1
       72 SETTABLEKS                       R8 R7 K22 ["Text"]
       74 GETTABLEKS                       R9 R0 K40 ["IsDevtools"]
       76 JUMPIFNOT                        R9 ; [+8]
       77 GETTABLEKS                       R8 R0 K35 ["Localization"]
       79 LOADK                            R10 K36 ["ReduceDetails"]
       80 LOADK                            R11 K41 ["ToggleAction.IsDevtools"]
       81 NAMECALL                         R8 R8 K38 ["getText"]
       83 CALL                             R8 3 1
       84 JUMP                             ; [+18]
       85 GETTABLEKS                       R9 R0 K32 ["IsUndone"]
       87 JUMPIFNOT                        R9 ; [+8]
       88 GETTABLEKS                       R8 R0 K35 ["Localization"]
       90 LOADK                            R10 K36 ["ReduceDetails"]
       91 LOADK                            R11 K42 ["ToggleAction.RedoTooltip"]
       92 NAMECALL                         R8 R8 K38 ["getText"]
       94 CALL                             R8 3 1
       95 JUMP                             ; [+7]
       96 GETTABLEKS                       R8 R0 K35 ["Localization"]
       98 LOADK                            R10 K36 ["ReduceDetails"]
       99 LOADK                            R11 K43 ["ToggleAction.UndoTooltip"]
      100 NAMECALL                         R8 R8 K38 ["getText"]
      102 CALL                             R8 3 1
      103 SETTABLEKS                       R8 R7 K23 ["TooltipText"]
      105 GETTABLEKS                       R8 R0 K40 ["IsDevtools"]
      107 SETTABLEKS                       R8 R7 K24 ["Disabled"]
      109 GETTABLEKS                       R8 R0 K44 ["OnToggleActionClick"]
      111 SETTABLEKS                       R8 R7 K25 ["OnClick"]
      113 CALL                             R5 2 1
      114 SETTABLEKS                       R5 R4 K16 ["ToggleAction"]
      116 CALL                             R1 3 -1
      117 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
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
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K0 ["createElement"]
       33 GETUPVAL                         R6 2
       34 DUPTABLE                         R7 K28 [{["LayoutOrder"] = -1, ["Size"], ["AutomaticSize"], ["BackgroundStyle"] = "None", ["LeftIcon"] = "rbxasset://textures/RoduxDevtools/SetState.png", ["Text"], ["TooltipText"], ["OnClick"]}]
       35 GETIMPORT                        R8 K31 [UDim2.fromScale]
       37 LOADN                            R9 0
       38 LOADN                            R10 1
       39 CALL                             R8 2 1
       40 SETTABLEKS                       R8 R7 K1 ["Size"]
       42 GETIMPORT                        R8 K33 [Enum.AutomaticSize.X]
       44 SETTABLEKS                       R8 R7 K20 ["AutomaticSize"]
       46 GETTABLEKS                       R8 R0 K34 ["Localization"]
       48 LOADK                            R10 K35 ["ReduceDetails"]
       49 LOADK                            R11 K36 ["SetState.Text"]
       50 NAMECALL                         R8 R8 K37 ["getText"]
       52 CALL                             R8 3 1
       53 SETTABLEKS                       R8 R7 K25 ["Text"]
       55 GETTABLEKS                       R8 R0 K34 ["Localization"]
       57 LOADK                            R10 K35 ["ReduceDetails"]
       58 LOADK                            R11 K38 ["SetState.Tooltip"]
       59 NAMECALL                         R8 R8 K37 ["getText"]
       61 CALL                             R8 3 1
       62 SETTABLEKS                       R8 R7 K26 ["TooltipText"]
       64 GETTABLEKS                       R8 R0 K39 ["OnSetStateClick"]
       66 SETTABLEKS                       R8 R7 K27 ["OnClick"]
       68 CALL                             R5 2 1
       69 SETTABLEKS                       R5 R4 K16 ["SetState"]
       71 GETUPVAL                         R5 0
       72 GETTABLEKS                       R5 R5 K0 ["createElement"]
       74 GETUPVAL                         R6 3
       75 DUPTABLE                         R7 K42 [{"Tabs", "SelectedTab", "OnTabSelected"}]
       76 GETTABLEKS                       R8 R0 K17 ["Tabs"]
       78 SETTABLEKS                       R8 R7 K17 ["Tabs"]
       80 GETTABLEKS                       R8 R0 K43 ["Selected"]
       82 SETTABLEKS                       R8 R7 K40 ["SelectedTab"]
       84 GETTABLEKS                       R8 R0 K41 ["OnTabSelected"]
       86 SETTABLEKS                       R8 R7 K41 ["OnTabSelected"]
       88 CALL                             R5 2 1
       89 SETTABLEKS                       R5 R4 K17 ["Tabs"]
       91 CALL                             R1 3 -1
       92 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"selectedStateTab"}]
        2 SETTABLEKS                       R0 R3 K0 ["selectedStateTab"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R1 0 2
        2 DUPTABLE                         R2 K6 [{[1] = "rbxasset://textures/RoduxDevtools/StateTabs/Diff.png", ["Label"] = "Diff", ["Tooltip"] = "The changes in state as a result of the reduced action"}]
        3 DUPTABLE                         R3 K10 [{[1] = "rbxasset://textures/RoduxDevtools/StateTabs/Full.png", ["Label"] = "Full", ["Tooltip"] = "The full state after the action was reduced"}]
        4 SETLIST                          R1 R2 2 [1]
        6 SETTABLEKS                       R1 R0 K11 ["stateTabs"]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R1 R0 K12 ["setStateTab"]
       12 DUPTABLE                         R3 K22 [{["summaryExpanded"] = True, ["actionExpanded"] = True, ["stateExpanded"] = True, ["selectedStateTab"], ["diffText"] = , ["fullText"] = , ["actionText"] = }]
       13 GETTABLEKS                       R5 R0 K11 ["stateTabs"]
       15 GETTABLEN                        R4 R5 1
       16 SETTABLEKS                       R4 R3 K17 ["selectedStateTab"]
       18 NAMECALL                         R1 R0 K23 ["setState"]
       20 CALL                             R1 2 0
       21 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["computeText"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["stateTabs"]
        2 GETTABLEN                        R1 R2 1
        3 GETTABLEKS                       R2 R0 K1 ["props"]
        5 GETTABLEKS                       R2 R2 K2 ["Localization"]
        7 LOADK                            R4 K3 ["ReduceDetails"]
        8 LOADK                            R5 K4 ["StateTab.Diff.Label"]
        9 NAMECALL                         R2 R2 K5 ["getText"]
       11 CALL                             R2 3 1
       12 SETTABLEKS                       R2 R1 K6 ["Label"]
       14 GETTABLEKS                       R2 R0 K0 ["stateTabs"]
       16 GETTABLEN                        R1 R2 1
       17 GETTABLEKS                       R2 R0 K1 ["props"]
       19 GETTABLEKS                       R2 R2 K2 ["Localization"]
       21 LOADK                            R4 K3 ["ReduceDetails"]
       22 LOADK                            R5 K7 ["StateTab.Diff.Tooltip"]
       23 NAMECALL                         R2 R2 K5 ["getText"]
       25 CALL                             R2 3 1
       26 SETTABLEKS                       R2 R1 K8 ["Tooltip"]
       28 GETTABLEKS                       R2 R0 K0 ["stateTabs"]
       30 GETTABLEN                        R1 R2 2
       31 GETTABLEKS                       R2 R0 K1 ["props"]
       33 GETTABLEKS                       R2 R2 K2 ["Localization"]
       35 LOADK                            R4 K3 ["ReduceDetails"]
       36 LOADK                            R5 K9 ["StateTab.Full.Label"]
       37 NAMECALL                         R2 R2 K5 ["getText"]
       39 CALL                             R2 3 1
       40 SETTABLEKS                       R2 R1 K6 ["Label"]
       42 GETTABLEKS                       R2 R0 K0 ["stateTabs"]
       44 GETTABLEN                        R1 R2 2
       45 GETTABLEKS                       R2 R0 K1 ["props"]
       47 GETTABLEKS                       R2 R2 K2 ["Localization"]
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
       50 GETTABLEKS                       R11 R0 K0 ["props"]
       52 GETTABLEKS                       R11 R11 K2 ["Event"]
       54 JUMPIFEQ                         R11 R3 ; [+2]
       56 RETURN                           R0 0
       57 JUMPIFNOTEQKS                    R10 K9 ["action"] ; [+13]
       59 GETUPVAL                         R11 0
       60 GETTABLEKS                       R12 R4 K9 ["action"]
       62 DUPTABLE                         R13 K20 [{["depth"] = 100, ["multiline"] = True, ["maxLineLength"] = 100, ["indent"] = "  "}]
       63 CALL                             R11 2 1
       64 DUPTABLE                         R14 K22 [{"actionText"}]
       65 SETTABLEKS                       R11 R14 K21 ["actionText"]
       67 NAMECALL                         R12 R0 K23 ["setState"]
       69 CALL                             R12 2 0
       70 JUMP                             ; [+42]
       71 JUMPIFNOTEQKS                    R10 K6 ["diff"] ; [+28]
       73 GETTABLEKS                       R12 R4 K24 ["lastState"]
       75 JUMPIFEQKNIL                     R12 ; [+8]
       77 GETUPVAL                         R11 1
       78 GETTABLEKS                       R12 R4 K24 ["lastState"]
       80 GETTABLEKS                       R13 R4 K1 ["state"]
       82 CALL                             R11 2 1
       83 JUMP                             ; [+9]
       84 GETTABLEKS                       R11 R0 K0 ["props"]
       86 GETTABLEKS                       R11 R11 K25 ["Localization"]
       88 LOADK                            R13 K26 ["ReduceDetails"]
       89 LOADK                            R14 K27 ["NoPriorState"]
       90 NAMECALL                         R11 R11 K28 ["getText"]
       92 CALL                             R11 3 1
       93 DUPTABLE                         R14 K30 [{"diffText"}]
       94 SETTABLEKS                       R11 R14 K29 ["diffText"]
       96 NAMECALL                         R12 R0 K23 ["setState"]
       98 CALL                             R12 2 0
       99 JUMP                             ; [+13]
      100 JUMPIFNOTEQKS                    R10 K7 ["full"] ; [+12]
      102 GETUPVAL                         R11 0
      103 GETTABLEKS                       R12 R4 K1 ["state"]
      105 DUPTABLE                         R13 K20 [{["depth"] = 100, ["multiline"] = True, ["maxLineLength"] = 100, ["indent"] = "  "}]
      106 CALL                             R11 2 1
      107 DUPTABLE                         R14 K32 [{"fullText"}]
      108 SETTABLEKS                       R11 R14 K31 ["fullText"]
      110 NAMECALL                         R12 R0 K23 ["setState"]
      112 CALL                             R12 2 0
      113 GETIMPORT                        R11 K35 [task.wait]
      115 LOADK                            R12 K36 [0.0333333333333333]
      116 CALL                             R11 1 0
      117 FORGLOOP                         R6 2 ; [-68]
      119 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["computeText"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["Event"]
        4 GETTABLEKS                       R3 R1 K1 ["Event"]
        6 JUMPIFEQ                         R2 R3 ; [+25]
        8 DUPTABLE                         R4 K5 [{"diffText", "fullText", "actionText"}]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K6 ["None"]
       12 SETTABLEKS                       R5 R4 K2 ["diffText"]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K6 ["None"]
       17 SETTABLEKS                       R5 R4 K3 ["fullText"]
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K6 ["None"]
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
        5 GETUPVAL                         R0 2
        6 GETTABLEKS                       R0 R0 K0 ["props"]
        8 GETTABLEKS                       R0 R0 K1 ["OnRedoAction"]
       10 JUMPIF                           R0 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 2
       13 GETTABLEKS                       R0 R0 K0 ["props"]
       15 GETTABLEKS                       R0 R0 K1 ["OnRedoAction"]
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R1 R1 K0 ["props"]
       20 GETTABLEKS                       R1 R1 K2 ["SelectedIndex"]
       22 CALL                             R0 1 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R0 2
       25 GETTABLEKS                       R0 R0 K0 ["props"]
       27 GETTABLEKS                       R0 R0 K3 ["OnUndoAction"]
       29 JUMPIF                           R0 ; [+1]
       30 RETURN                           R0 0
       31 GETUPVAL                         R0 2
       32 GETTABLEKS                       R0 R0 K0 ["props"]
       34 GETTABLEKS                       R0 R0 K3 ["OnUndoAction"]
       36 GETUPVAL                         R1 2
       37 GETTABLEKS                       R1 R1 K0 ["props"]
       39 GETTABLEKS                       R1 R1 K2 ["SelectedIndex"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["OnSetState"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K0 ["props"]
       10 GETTABLEKS                       R0 R0 K1 ["OnSetState"]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K0 ["props"]
       15 GETTABLEKS                       R1 R1 K2 ["SelectedIndex"]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Event"]
        4 JUMPIF                           R2 ; [+2]
        5 LOADNIL                          R3
        6 RETURN                           R3 1
        7 GETTABLEKS                       R3 R2 K0 ["props"]
        9 GETTABLEKS                       R5 R0 K2 ["state"]
       11 GETTABLEKS                       R5 R5 K3 ["selectedStateTab"]
       13 GETTABLEKS                       R7 R0 K4 ["stateTabs"]
       15 GETTABLEN                        R6 R7 1
       16 JUMPIFNOTEQ                      R5 R6 ; [+6]
       18 GETTABLEKS                       R4 R0 K2 ["state"]
       20 GETTABLEKS                       R4 R4 K5 ["diffText"]
       22 JUMP                             ; [+4]
       23 GETTABLEKS                       R4 R0 K2 ["state"]
       25 GETTABLEKS                       R4 R4 K6 ["fullText"]
       27 GETTABLEKS                       R5 R0 K2 ["state"]
       29 GETTABLEKS                       R5 R5 K7 ["actionText"]
       31 LOADB                            R6 0
       32 GETTABLEKS                       R7 R2 K8 ["altered"]
       34 JUMPIFEQKNIL                     R7 ; [+9]
       36 GETTABLEKS                       R7 R2 K8 ["altered"]
       38 GETTABLEKS                       R7 R7 K9 ["skipped"]
       40 JUMPIFEQKB                       R7 TRUE ; [+2]
       42 LOADB                            R6 0 +1
       43 LOADB                            R6 1
       44 GETTABLEKS                       R8 R3 K10 ["isDevtools"]
       46 JUMPIFEQKB                       R8 TRUE ; [+2]
       48 LOADB                            R7 0 +1
       49 LOADB                            R7 1
       50 GETUPVAL                         R8 0
       51 GETTABLEKS                       R8 R8 K11 ["createElement"]
       53 GETUPVAL                         R9 1
       54 LOADNIL                          R10
       55 DUPTABLE                         R11 K13 [{"ReduceDetails"}]
       56 GETUPVAL                         R12 0
       57 GETTABLEKS                       R12 R12 K11 ["createElement"]
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
       84 GETUPVAL                         R16 0
       85 GETTABLEKS                       R16 R16 K11 ["createElement"]
       87 GETUPVAL                         R17 3
       88 DUPTABLE                         R18 K47 [{["Style"] = "Section", ["LayoutOrder"], ["Size"], ["Text"], ["ContentPadding"] = 5, ["HorizontalAlignment"], ["Expanded"], ["OnExpandedChanged"]}]
       89 GETUPVAL                         R19 4
       90 CALL                             R19 0 1
       91 SETTABLEKS                       R19 R18 K40 ["LayoutOrder"]
       93 GETIMPORT                        R19 K48 [UDim2.new]
       95 LOADN                            R20 1
       96 LOADN                            R21 0
       97 LOADN                            R22 0
       98 LOADN                            R23 32
       99 CALL                             R19 4 1
      100 SETTABLEKS                       R19 R18 K14 ["Size"]
      102 GETTABLEKS                       R19 R0 K0 ["props"]
      104 GETTABLEKS                       R19 R19 K49 ["Localization"]
      106 LOADK                            R21 K12 ["ReduceDetails"]
      107 LOADK                            R22 K50 ["SummaryTitle"]
      108 NAMECALL                         R19 R19 K51 ["getText"]
      110 CALL                             R19 3 1
      111 SETTABLEKS                       R19 R18 K41 ["Text"]
      113 GETIMPORT                        R19 K53 [Enum.HorizontalAlignment.Left]
      115 SETTABLEKS                       R19 R18 K44 ["HorizontalAlignment"]
      117 GETTABLEKS                       R19 R0 K2 ["state"]
      119 GETTABLEKS                       R19 R19 K54 ["summaryExpanded"]
      121 SETTABLEKS                       R19 R18 K45 ["Expanded"]
      123 NEWCLOSURE                       R19 P0
      124 CAPTURE                          VAL R0
      125 SETTABLEKS                       R19 R18 K46 ["OnExpandedChanged"]
      127 DUPTABLE                         R19 K56 [{"SummaryLabel"}]
      128 GETUPVAL                         R20 0
      129 GETTABLEKS                       R20 R20 K11 ["createElement"]
      131 GETUPVAL                         R21 5
      132 DUPTABLE                         R22 K60 [{["Size"], ["AutomaticSize"], ["TextXAlignment"], ["TextWrapped"] = True, ["Text"]}]
      133 GETIMPORT                        R23 K48 [UDim2.new]
      135 LOADN                            R24 1
      136 LOADN                            R25 0
      137 LOADN                            R26 0
      138 LOADN                            R27 0
      139 CALL                             R23 4 1
      140 SETTABLEKS                       R23 R22 K14 ["Size"]
      142 GETIMPORT                        R23 K25 [Enum.AutomaticSize.Y]
      144 SETTABLEKS                       R23 R22 K23 ["AutomaticSize"]
      146 GETIMPORT                        R23 K61 [Enum.TextXAlignment.Left]
      148 SETTABLEKS                       R23 R22 K57 ["TextXAlignment"]
      150 GETTABLEKS                       R24 R2 K62 ["isStub"]
      152 JUMPIFNOT                        R24 ; [+10]
      153 GETTABLEKS                       R23 R0 K0 ["props"]
      155 GETTABLEKS                       R23 R23 K49 ["Localization"]
      157 LOADK                            R25 K63 ["Common"]
      158 LOADK                            R26 K64 ["LoadingStub"]
      159 NAMECALL                         R23 R23 K51 ["getText"]
      161 CALL                             R23 3 1
      162 JUMP                             ; [+36]
      163 GETTABLEKS                       R23 R0 K0 ["props"]
      165 GETTABLEKS                       R23 R23 K49 ["Localization"]
      167 LOADK                            R25 K12 ["ReduceDetails"]
      168 LOADK                            R26 K65 ["Summary"]
      169 DUPTABLE                         R27 K70 [{"action", "elapsed", "timestamp", "source"}]
      170 GETTABLEKS                       R28 R3 K66 ["action"]
      172 GETTABLEKS                       R28 R28 K71 ["type"]
      174 SETTABLEKS                       R28 R27 K66 ["action"]
      176 GETTABLEKS                       R28 R3 K72 ["elapsedMs"]
      178 SETTABLEKS                       R28 R27 K67 ["elapsed"]
      180 GETIMPORT                        R28 K75 [DateTime.fromUnixTimestampMillis]
      182 GETTABLEKS                       R29 R2 K68 ["timestamp"]
      184 CALL                             R28 1 1
      185 LOADK                            R30 K76 ["h:mm:ss.SSS a"]
      186 LOADK                            R31 K77 ["en-us"]
      187 NAMECALL                         R28 R28 K78 ["FormatLocalTime"]
      189 CALL                             R28 3 1
      190 SETTABLEKS                       R28 R27 K68 ["timestamp"]
      192 GETTABLEKS                       R28 R2 K69 ["source"]
      194 SETTABLEKS                       R28 R27 K69 ["source"]
      196 NAMECALL                         R23 R23 K51 ["getText"]
      198 CALL                             R23 4 1
      199 SETTABLEKS                       R23 R22 K41 ["Text"]
      201 CALL                             R20 2 1
      202 SETTABLEKS                       R20 R19 K55 ["SummaryLabel"]
      204 CALL                             R16 3 1
      205 SETTABLEKS                       R16 R15 K32 ["SummaryInfo"]
      207 GETUPVAL                         R16 0
      208 GETTABLEKS                       R16 R16 K11 ["createElement"]
      210 GETUPVAL                         R17 6
      211 DUPTABLE                         R18 K79 [{"LayoutOrder"}]
      212 GETUPVAL                         R19 4
      213 CALL                             R19 0 1
      214 SETTABLEKS                       R19 R18 K40 ["LayoutOrder"]
      216 CALL                             R16 2 1
      217 SETTABLEKS                       R16 R15 K33 ["SummarySeparator"]
      219 GETUPVAL                         R16 0
      220 GETTABLEKS                       R16 R16 K11 ["createElement"]
      222 GETUPVAL                         R17 3
      223 DUPTABLE                         R18 K82 [{["Style"] = "Section", ["LayoutOrder"], ["Size"], ["Text"], ["ContentPadding"] = 5, ["HorizontalAlignment"], ["Expanded"], ["OnExpandedChanged"], ["HeaderComponent"], ["HeaderComponentProps"]}]
      224 GETUPVAL                         R19 4
      225 CALL                             R19 0 1
      226 SETTABLEKS                       R19 R18 K40 ["LayoutOrder"]
      228 GETIMPORT                        R19 K48 [UDim2.new]
      230 LOADN                            R20 1
      231 LOADN                            R21 0
      232 LOADN                            R22 0
      233 LOADN                            R23 32
      234 CALL                             R19 4 1
      235 SETTABLEKS                       R19 R18 K14 ["Size"]
      237 GETTABLEKS                       R19 R0 K0 ["props"]
      239 GETTABLEKS                       R19 R19 K49 ["Localization"]
      241 LOADK                            R21 K12 ["ReduceDetails"]
      242 LOADK                            R22 K83 ["ActionTitle"]
      243 NAMECALL                         R19 R19 K51 ["getText"]
      245 CALL                             R19 3 1
      246 SETTABLEKS                       R19 R18 K41 ["Text"]
      248 GETIMPORT                        R19 K53 [Enum.HorizontalAlignment.Left]
      250 SETTABLEKS                       R19 R18 K44 ["HorizontalAlignment"]
      252 GETTABLEKS                       R19 R0 K2 ["state"]
      254 GETTABLEKS                       R19 R19 K84 ["actionExpanded"]
      256 SETTABLEKS                       R19 R18 K45 ["Expanded"]
      258 NEWCLOSURE                       R19 P1
      259 CAPTURE                          VAL R0
      260 SETTABLEKS                       R19 R18 K46 ["OnExpandedChanged"]
      262 GETUPVAL                         R19 7
      263 SETTABLEKS                       R19 R18 K80 ["HeaderComponent"]
      265 DUPTABLE                         R19 K88 [{"Localization", "IsUndone", "IsDevtools", "OnToggleActionClick"}]
      266 GETTABLEKS                       R20 R0 K0 ["props"]
      268 GETTABLEKS                       R20 R20 K49 ["Localization"]
      270 SETTABLEKS                       R20 R19 K49 ["Localization"]
      272 SETTABLEKS                       R6 R19 K85 ["IsUndone"]
      274 SETTABLEKS                       R7 R19 K86 ["IsDevtools"]
      276 NEWCLOSURE                       R20 P2
      277 CAPTURE                          VAL R7
      278 CAPTURE                          VAL R6
      279 CAPTURE                          VAL R0
      280 SETTABLEKS                       R20 R19 K87 ["OnToggleActionClick"]
      282 SETTABLEKS                       R19 R18 K81 ["HeaderComponentProps"]
      284 DUPTABLE                         R19 K90 [{"ActionLabel"}]
      285 JUMPIFEQKNIL                     R5 ; [+22]
      287 GETUPVAL                         R20 0
      288 GETTABLEKS                       R20 R20 K11 ["createElement"]
      290 GETUPVAL                         R21 8
      291 DUPTABLE                         R22 K95 [{["MaxHeight"] = 300, ["TextXAlignment"], ["TextYAlignment"], ["Font"], ["Text"]}]
      292 GETIMPORT                        R23 K61 [Enum.TextXAlignment.Left]
      294 SETTABLEKS                       R23 R22 K57 ["TextXAlignment"]
      296 GETIMPORT                        R23 K97 [Enum.TextYAlignment.Top]
      298 SETTABLEKS                       R23 R22 K93 ["TextYAlignment"]
      300 GETIMPORT                        R23 K99 [Enum.Font.RobotoMono]
      302 SETTABLEKS                       R23 R22 K94 ["Font"]
      304 SETTABLEKS                       R5 R22 K41 ["Text"]
      306 CALL                             R20 2 1
      307 JUMP                             ; [+6]
      308 GETUPVAL                         R20 0
      309 GETTABLEKS                       R20 R20 K11 ["createElement"]
      311 GETUPVAL                         R21 9
      312 DUPTABLE                         R22 K101 [{["LineCount"] = 5}]
      313 CALL                             R20 2 1
      314 SETTABLEKS                       R20 R19 K89 ["ActionLabel"]
      316 CALL                             R16 3 1
      317 SETTABLEKS                       R16 R15 K34 ["ActionInfo"]
      319 GETUPVAL                         R16 0
      320 GETTABLEKS                       R16 R16 K11 ["createElement"]
      322 GETUPVAL                         R17 6
      323 DUPTABLE                         R18 K79 [{"LayoutOrder"}]
      324 GETUPVAL                         R19 4
      325 CALL                             R19 0 1
      326 SETTABLEKS                       R19 R18 K40 ["LayoutOrder"]
      328 CALL                             R16 2 1
      329 SETTABLEKS                       R16 R15 K35 ["ActionSeparator"]
      331 GETUPVAL                         R16 0
      332 GETTABLEKS                       R16 R16 K11 ["createElement"]
      334 GETUPVAL                         R17 3
      335 DUPTABLE                         R18 K82 [{["Style"] = "Section", ["LayoutOrder"], ["Size"], ["Text"], ["ContentPadding"] = 5, ["HorizontalAlignment"], ["Expanded"], ["OnExpandedChanged"], ["HeaderComponent"], ["HeaderComponentProps"]}]
      336 GETUPVAL                         R19 4
      337 CALL                             R19 0 1
      338 SETTABLEKS                       R19 R18 K40 ["LayoutOrder"]
      340 GETIMPORT                        R19 K48 [UDim2.new]
      342 LOADN                            R20 1
      343 LOADN                            R21 0
      344 LOADN                            R22 0
      345 LOADN                            R23 32
      346 CALL                             R19 4 1
      347 SETTABLEKS                       R19 R18 K14 ["Size"]
      349 GETTABLEKS                       R19 R0 K0 ["props"]
      351 GETTABLEKS                       R19 R19 K49 ["Localization"]
      353 LOADK                            R21 K12 ["ReduceDetails"]
      354 LOADK                            R22 K102 ["StateTitle"]
      355 NAMECALL                         R19 R19 K51 ["getText"]
      357 CALL                             R19 3 1
      358 SETTABLEKS                       R19 R18 K41 ["Text"]
      360 GETIMPORT                        R19 K53 [Enum.HorizontalAlignment.Left]
      362 SETTABLEKS                       R19 R18 K44 ["HorizontalAlignment"]
      364 GETTABLEKS                       R19 R0 K2 ["state"]
      366 GETTABLEKS                       R19 R19 K103 ["stateExpanded"]
      368 SETTABLEKS                       R19 R18 K45 ["Expanded"]
      370 NEWCLOSURE                       R19 P3
      371 CAPTURE                          VAL R0
      372 SETTABLEKS                       R19 R18 K46 ["OnExpandedChanged"]
      374 GETUPVAL                         R19 10
      375 SETTABLEKS                       R19 R18 K80 ["HeaderComponent"]
      377 DUPTABLE                         R19 K108 [{"Localization", "Tabs", "Selected", "OnTabSelected", "OnSetStateClick"}]
      378 GETTABLEKS                       R20 R0 K0 ["props"]
      380 GETTABLEKS                       R20 R20 K49 ["Localization"]
      382 SETTABLEKS                       R20 R19 K49 ["Localization"]
      384 GETTABLEKS                       R20 R0 K4 ["stateTabs"]
      386 SETTABLEKS                       R20 R19 K104 ["Tabs"]
      388 GETTABLEKS                       R20 R0 K2 ["state"]
      390 GETTABLEKS                       R20 R20 K3 ["selectedStateTab"]
      392 SETTABLEKS                       R20 R19 K105 ["Selected"]
      394 GETTABLEKS                       R20 R0 K109 ["setStateTab"]
      396 SETTABLEKS                       R20 R19 K106 ["OnTabSelected"]
      398 NEWCLOSURE                       R20 P4
      399 CAPTURE                          VAL R0
      400 SETTABLEKS                       R20 R19 K107 ["OnSetStateClick"]
      402 SETTABLEKS                       R19 R18 K81 ["HeaderComponentProps"]
      404 DUPTABLE                         R19 K111 [{"StateLabel"}]
      405 JUMPIFEQKNIL                     R4 ; [+22]
      407 GETUPVAL                         R20 0
      408 GETTABLEKS                       R20 R20 K11 ["createElement"]
      410 GETUPVAL                         R21 8
      411 DUPTABLE                         R22 K114 [{["MaxHeight"] = 400, ["TextXAlignment"], ["TextYAlignment"], ["Font"], ["Text"], ["RichText"] = True}]
      412 GETIMPORT                        R23 K61 [Enum.TextXAlignment.Left]
      414 SETTABLEKS                       R23 R22 K57 ["TextXAlignment"]
      416 GETIMPORT                        R23 K97 [Enum.TextYAlignment.Top]
      418 SETTABLEKS                       R23 R22 K93 ["TextYAlignment"]
      420 GETIMPORT                        R23 K99 [Enum.Font.RobotoMono]
      422 SETTABLEKS                       R23 R22 K94 ["Font"]
      424 SETTABLEKS                       R4 R22 K41 ["Text"]
      426 CALL                             R20 2 1
      427 JUMP                             ; [+20]
      428 GETUPVAL                         R20 0
      429 GETTABLEKS                       R20 R20 K11 ["createElement"]
      431 GETUPVAL                         R21 9
      432 DUPTABLE                         R22 K115 [{"LineCount"}]
      433 GETTABLEKS                       R24 R0 K2 ["state"]
      435 GETTABLEKS                       R24 R24 K3 ["selectedStateTab"]
      437 GETTABLEKS                       R26 R0 K4 ["stateTabs"]
      439 GETTABLEN                        R25 R26 1
      440 JUMPIFNOTEQ                      R24 R25 ; [+3]
      442 LOADN                            R23 10
      443 JUMP                             ; [+1]
      444 LOADN                            R23 30
      445 SETTABLEKS                       R23 R22 K100 ["LineCount"]
      447 CALL                             R20 2 1
      448 SETTABLEKS                       R20 R19 K110 ["StateLabel"]
      450 CALL                             R16 3 1
      451 SETTABLEKS                       R16 R15 K36 ["StateInfo"]
      453 CALL                             R12 3 1
      454 SETTABLEKS                       R12 R11 K12 ["ReduceDetails"]
      456 CALL                             R8 3 -1
      457 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Types"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K7 ["Packages"]
       22 GETTABLEKS                       R3 R3 K8 ["React"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K7 ["Packages"]
       29 GETTABLEKS                       R4 R4 K9 ["Framework"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R5 R0 K7 ["Packages"]
       36 GETTABLEKS                       R5 R5 K10 ["Dash"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R4 K11 ["pretty"]
       41 GETIMPORT                        R6 K4 [require]
       43 GETTABLEKS                       R7 R0 K5 ["Src"]
       45 GETTABLEKS                       R7 R7 K12 ["Util"]
       47 GETTABLEKS                       R7 R7 K13 ["diff"]
       49 CALL                             R6 1 1
       50 GETTABLEKS                       R7 R3 K14 ["ContextServices"]
       52 GETTABLEKS                       R8 R7 K15 ["withContext"]
       54 GETTABLEKS                       R9 R7 K16 ["Analytics"]
       56 GETTABLEKS                       R10 R7 K17 ["Localization"]
       58 GETTABLEKS                       R11 R3 K18 ["Style"]
       60 GETTABLEKS                       R11 R11 K19 ["Stylizer"]
       62 GETTABLEKS                       R12 R3 K20 ["UI"]
       64 GETTABLEKS                       R13 R12 K21 ["Pane"]
       66 GETTABLEKS                       R14 R12 K22 ["TextLabel"]
       68 GETTABLEKS                       R15 R12 K23 ["IconButton"]
       70 GETTABLEKS                       R16 R12 K24 ["Separator"]
       72 GETTABLEKS                       R17 R12 K25 ["ScrollingFrame"]
       74 GETTABLEKS                       R18 R12 K26 ["ExpandablePane"]
       76 GETTABLEKS                       R19 R12 K27 ["Tabs"]
       78 GETIMPORT                        R20 K4 [require]
       80 GETIMPORT                        R21 K1 [script]
       82 GETTABLEKS                       R21 R21 K2 ["Parent"]
       84 GETTABLEKS                       R21 R21 K2 ["Parent"]
       86 GETTABLEKS                       R21 R21 K28 ["LongText"]
       88 CALL                             R20 1 1
       89 GETIMPORT                        R21 K4 [require]
       91 GETIMPORT                        R22 K1 [script]
       93 GETTABLEKS                       R22 R22 K2 ["Parent"]
       95 GETTABLEKS                       R22 R22 K2 ["Parent"]
       97 GETTABLEKS                       R22 R22 K2 ["Parent"]
       99 GETTABLEKS                       R22 R22 K12 ["Util"]
      101 GETTABLEKS                       R22 R22 K29 ["counter"]
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
