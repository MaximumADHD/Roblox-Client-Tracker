PROTO_0:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["ScreenGui"]
        3 CALL                             R0 1 1
        4 LOADK                            R1 K4 ["AssistantCloseTooltipOverlay"]
        5 SETTABLEKS                       R1 R0 K5 ["Name"]
        7 LOADN                            R1 999
        8 SETTABLEKS                       R1 R0 K6 ["DisplayOrder"]
       10 GETIMPORT                        R1 K10 [Enum.ZIndexBehavior.Sibling]
       12 SETTABLEKS                       R1 R0 K8 ["ZIndexBehavior"]
       14 GETUPVAL                         R1 0
       15 SETTABLEKS                       R1 R0 K11 ["Parent"]
       17 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["plugin"]
        3 LOADK                            R2 K1 ["Actions"]
        4 NAMECALL                         R0 R0 K2 ["GetPluginComponent"]
        6 CALL                             R0 2 1
        7 NEWTABLE                         R3 0 1
        9 GETUPVAL                         R4 1
       10 SETLIST                          R3 R4 1 [1]
       12 NAMECALL                         R1 R0 K3 ["GetAsync"]
       14 CALL                             R1 2 1
       15 JUMPIFNOT                        R1 ; [+19]
       16 GETTABLEN                        R2 R1 1
       17 JUMPIFNOT                        R2 ; [+17]
       18 GETTABLEN                        R2 R1 1
       19 GETTABLEKS                       R2 R2 K4 ["Shortcuts"]
       21 JUMPIFNOT                        R2 ; [+13]
       22 GETTABLEN                        R3 R1 1
       23 GETTABLEKS                       R3 R3 K4 ["Shortcuts"]
       25 LENGTH                           R2 R3
       26 LOADN                            R3 0
       27 JUMPIFNOTLT                      R3 R2 ; [+7]
       29 GETUPVAL                         R2 2
       30 GETTABLEN                        R4 R1 1
       31 GETTABLEKS                       R4 R4 K4 ["Shortcuts"]
       33 GETTABLEN                        R3 R4 1
       34 CALL                             R2 1 0
       35 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 NEWCLOSURE                       R0 P1
        8 CAPTURE                          UPVAL U3
        9 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagStudioAssistantCloseTooltip"]
        3 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        5 LOADK                            R3 K1 ["CloseTooltip requires FFlagStudioAssistantCloseTooltip"]
        6 GETIMPORT                        R1 K3 [assert]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K4 ["useMemo"]
       12 DUPCLOSURE                       R2 K5 [PROTO_0]
       13 CAPTURE                          UPVAL U2
       14 NEWTABLE                         R3 0 0
       16 CALL                             R1 2 1
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K6 ["useState"]
       20 LOADNIL                          R3
       21 CALL                             R2 1 2
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K7 ["useEffect"]
       25 NEWCLOSURE                       R5 P1
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R1
       30 NEWTABLE                         R6 0 0
       32 CALL                             R4 2 0
       33 JUMPIFNOT                        R2 ; [+10]
       34 GETUPVAL                         R4 4
       35 LOADK                            R6 K8 ["CloseTooltip"]
       36 LOADK                            R7 K9 ["BodyWithShortcut"]
       37 DUPTABLE                         R8 K11 [{"shortcut"}]
       38 SETTABLEKS                       R2 R8 K10 ["shortcut"]
       40 NAMECALL                         R4 R4 K12 ["getText"]
       42 CALL                             R4 4 1
       43 JUMP                             ; [+6]
       44 GETUPVAL                         R4 4
       45 LOADK                            R6 K8 ["CloseTooltip"]
       46 LOADK                            R7 K13 ["Body"]
       47 NAMECALL                         R4 R4 K12 ["getText"]
       49 CALL                             R4 3 1
       50 GETUPVAL                         R5 5
       51 GETUPVAL                         R6 6
       52 DUPTABLE                         R7 K16 [{"plugin", "overlayGui"}]
       53 GETTABLEKS                       R8 R0 K14 ["plugin"]
       55 SETTABLEKS                       R8 R7 K14 ["plugin"]
       57 SETTABLEKS                       R1 R7 K15 ["overlayGui"]
       59 DUPTABLE                         R8 K18 [{"Coachmark"}]
       60 GETUPVAL                         R9 5
       61 GETUPVAL                         R10 7
       62 DUPTABLE                         R11 K27 [{["title"], ["text"], ["onClose"], ["isOpen"] = True, ["anchorRef"], ["side"], ["align"]}]
       63 GETUPVAL                         R12 4
       64 LOADK                            R14 K8 ["CloseTooltip"]
       65 LOADK                            R15 K28 ["Title"]
       66 NAMECALL                         R12 R12 K12 ["getText"]
       68 CALL                             R12 3 1
       69 SETTABLEKS                       R12 R11 K19 ["title"]
       71 SETTABLEKS                       R4 R11 K20 ["text"]
       73 GETTABLEKS                       R12 R0 K29 ["onDismiss"]
       75 SETTABLEKS                       R12 R11 K21 ["onClose"]
       77 GETUPVAL                         R12 8
       78 SETTABLEKS                       R12 R11 K24 ["anchorRef"]
       80 GETUPVAL                         R12 9
       81 GETTABLEKS                       R12 R12 K30 ["Enums"]
       83 GETTABLEKS                       R12 R12 K31 ["PopoverSide"]
       85 GETTABLEKS                       R12 R12 K32 ["Bottom"]
       87 SETTABLEKS                       R12 R11 K25 ["side"]
       89 GETUPVAL                         R12 9
       90 GETTABLEKS                       R12 R12 K30 ["Enums"]
       92 GETTABLEKS                       R12 R12 K33 ["PopoverAlign"]
       94 GETTABLEKS                       R12 R12 K34 ["End"]
       96 SETTABLEKS                       R12 R11 K26 ["align"]
       98 CALL                             R9 2 1
       99 SETTABLEKS                       R9 R8 K17 ["Coachmark"]
      101 CALL                             R5 3 -1
      102 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["CoreGui"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["AssistantUI"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Src"]
       24 GETTABLEKS                       R4 R4 K13 ["Flags"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K10 ["Packages"]
       31 GETTABLEKS                       R5 R5 K14 ["Foundation"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R0 K10 ["Packages"]
       38 GETTABLEKS                       R6 R6 K15 ["React"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R0 K10 ["Packages"]
       45 GETTABLEKS                       R7 R7 K16 ["StudioFoundation"]
       47 CALL                             R6 1 1
       48 GETTABLEKS                       R7 R6 K17 ["Components"]
       50 GETTABLEKS                       R7 R7 K18 ["FoundationProviderAdapter"]
       52 GETTABLEKS                       R8 R2 K19 ["Resources"]
       54 GETTABLEKS                       R8 R8 K20 ["Localization"]
       56 GETTABLEKS                       R8 R8 K21 ["Translator"]
       58 GETTABLEKS                       R9 R4 K22 ["Coachmark"]
       60 GETTABLEKS                       R10 R5 K23 ["createElement"]
       62 DUPTABLE                         R11 K33 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "Ribbon", ["Category"] = "Widgets", ["ItemId"] = "RightMezzanine/AssistantPlugin"}]
       63 DUPTABLE                         R12 K36 [{["Category"] = "Actions", ["ItemId"] = "FocusAssistant", ["PluginId"] = "Assistant"}]
       64 DUPCLOSURE                       R13 K37 [PROTO_4]
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R12
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R10
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R9
       73 CAPTURE                          VAL R11
       74 CAPTURE                          VAL R4
       75 RETURN                           R13 1
