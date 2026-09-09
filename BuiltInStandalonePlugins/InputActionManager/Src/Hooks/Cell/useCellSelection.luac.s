PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["formatCellId"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["action"]
        6 GETTABLEKS                       R1 R1 K2 ["uuid"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["binding"]
       11 JUMPIFNOT                        R3 ; [+6]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K3 ["binding"]
       15 GETTABLEKS                       R2 R2 K2 ["uuid"]
       17 JUMP                             ; [+1]
       18 LOADNIL                          R2
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K4 ["property"]
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K5 ["schema"]
       25 GETUPVAL                         R5 1
       26 GETTABLEKS                       R5 R5 K6 ["index"]
       28 CALL                             R0 5 -1
       29 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 JUMPIFEQ                         R0 R3 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+8]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+6]
        5 GETUPVAL                         R0 2
        6 GETTABLEKS                       R0 R0 K0 ["setActiveCellId"]
        8 LOADNIL                          R1
        9 CALL                             R0 1 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 2
       12 GETTABLEKS                       R0 R0 K0 ["setActiveCellId"]
       14 GETUPVAL                         R1 3
       15 CALL                             R0 1 0
       16 GETUPVAL                         R0 4
       17 GETTABLEKS                       R0 R0 K1 ["ResetSelection"]
       19 CALL                             R0 0 0
       20 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["binding"]
        3 JUMPIFNOT                        R1 ; [+48]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["UpdateBinding"]
        7 LOADNIL                          R2
        8 DUPTABLE                         R3 K3 [{"uuid", "binding"}]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K0 ["binding"]
       12 GETTABLEKS                       R4 R4 K2 ["uuid"]
       14 SETTABLEKS                       R4 R3 K2 ["uuid"]
       16 DUPTABLE                         R4 K6 [{"uiButton", "uiModifier"}]
       17 GETUPVAL                         R6 2
       18 CALL                             R6 0 1
       19 JUMPIFNOT                        R6 ; [+5]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K7 ["property"]
       23 JUMPIFNOTEQKS                    R6 K8 ["keyCode"] ; [+3]
       25 MOVE                             R5 R0
       26 JUMP                             ; [+1]
       27 LOADNIL                          R5
       28 SETTABLEKS                       R5 R4 K4 ["uiButton"]
       30 GETUPVAL                         R6 2
       31 CALL                             R6 0 1
       32 JUMPIFNOT                        R6 ; [+7]
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R6 R6 K7 ["property"]
       36 JUMPIFNOTEQKS                    R6 K9 ["primaryModifier"] ; [+3]
       38 MOVE                             R5 R0
       39 JUMP                             ; [+1]
       40 LOADNIL                          R5
       41 SETTABLEKS                       R5 R4 K5 ["uiModifier"]
       43 SETTABLEKS                       R4 R3 K0 ["binding"]
       45 CALL                             R1 2 0
       46 GETUPVAL                         R1 3
       47 GETTABLEKS                       R1 R1 K10 ["setActiveCellId"]
       49 LOADNIL                          R2
       50 CALL                             R1 1 0
       51 RETURN                           R0 0
       52 GETUPVAL                         R1 1
       53 GETTABLEKS                       R1 R1 K1 ["UpdateBinding"]
       55 LOADNIL                          R2
       56 DUPTABLE                         R3 K11 [{"binding"}]
       57 DUPTABLE                         R4 K14 [{"name", "parentUuid", "uiButton", "uiModifier"}]
       58 LOADK                            R6 K15 ["%*%*"]
       59 GETUPVAL                         R8 0
       60 GETTABLEKS                       R8 R8 K16 ["action"]
       62 GETTABLEKS                       R8 R8 K12 ["name"]
       64 GETUPVAL                         R9 0
       65 GETTABLEKS                       R9 R9 K17 ["schema"]
       67 NAMECALL                         R6 R6 K18 ["format"]
       69 CALL                             R6 3 1
       70 MOVE                             R5 R6
       71 SETTABLEKS                       R5 R4 K12 ["name"]
       73 GETUPVAL                         R5 0
       74 GETTABLEKS                       R5 R5 K16 ["action"]
       76 GETTABLEKS                       R5 R5 K2 ["uuid"]
       78 SETTABLEKS                       R5 R4 K13 ["parentUuid"]
       80 GETUPVAL                         R6 2
       81 CALL                             R6 0 1
       82 JUMPIFNOT                        R6 ; [+5]
       83 GETUPVAL                         R6 0
       84 GETTABLEKS                       R6 R6 K7 ["property"]
       86 JUMPIFNOTEQKS                    R6 K8 ["keyCode"] ; [+3]
       88 MOVE                             R5 R0
       89 JUMP                             ; [+1]
       90 LOADNIL                          R5
       91 SETTABLEKS                       R5 R4 K4 ["uiButton"]
       93 GETUPVAL                         R6 2
       94 CALL                             R6 0 1
       95 JUMPIFNOT                        R6 ; [+7]
       96 GETUPVAL                         R6 0
       97 GETTABLEKS                       R6 R6 K7 ["property"]
       99 JUMPIFNOTEQKS                    R6 K9 ["primaryModifier"] ; [+3]
      101 MOVE                             R5 R0
      102 JUMP                             ; [+1]
      103 LOADNIL                          R5
      104 SETTABLEKS                       R5 R4 K5 ["uiModifier"]
      106 SETTABLEKS                       R4 R3 K0 ["binding"]
      108 CALL                             R1 2 0
      109 GETUPVAL                         R1 3
      110 GETTABLEKS                       R1 R1 K10 ["setActiveCellId"]
      112 LOADNIL                          R2
      113 CALL                             R1 1 0
      114 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+115]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 1
        5 JUMPIFNOT                        R0 ; [+7]
        6 GETUPVAL                         R0 2
        7 JUMPIFNOT                        R0 ; [+5]
        8 GETUPVAL                         R0 3
        9 GETTABLEKS                       R0 R0 K0 ["setActiveCellId"]
       11 LOADNIL                          R1
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 4
       14 GETTABLEKS                       R0 R0 K1 ["binding"]
       16 JUMPIF                           R0 ; [+1]
       17 RETURN                           R0 0
       18 GETUPVAL                         R0 4
       19 GETTABLEKS                       R0 R0 K2 ["schema"]
       21 JUMPIFNOTEQKS                    R0 K3 ["Touch"] ; [+72]
       23 GETUPVAL                         R0 4
       24 GETTABLEKS                       R0 R0 K4 ["property"]
       26 JUMPIFEQKS                       R0 K5 ["keyCode"] ; [+6]
       28 GETUPVAL                         R0 4
       29 GETTABLEKS                       R0 R0 K4 ["property"]
       31 JUMPIFNOTEQKS                    R0 K6 ["primaryModifier"] ; [+62]
       33 GETUPVAL                         R0 4
       34 GETTABLEKS                       R0 R0 K4 ["property"]
       36 JUMPIFNOTEQKS                    R0 K5 ["keyCode"] ; [+26]
       38 GETUPVAL                         R0 4
       39 GETTABLEKS                       R0 R0 K1 ["binding"]
       41 GETTABLEKS                       R0 R0 K7 ["uiButton"]
       43 JUMPIFNOT                        R0 ; [+19]
       44 GETUPVAL                         R0 5
       45 GETTABLEKS                       R0 R0 K8 ["UpdateBinding"]
       47 LOADNIL                          R1
       48 DUPTABLE                         R2 K10 [{"uuid", "binding"}]
       49 GETUPVAL                         R3 4
       50 GETTABLEKS                       R3 R3 K1 ["binding"]
       52 GETTABLEKS                       R3 R3 K9 ["uuid"]
       54 SETTABLEKS                       R3 R2 K9 ["uuid"]
       56 DUPTABLE                         R3 K11 [{"uiButton"}]
       57 DUPTABLE                         R4 K15 [{["name"] = "", ["uuid"] = "", ["type"] = ""}]
       58 SETTABLEKS                       R4 R3 K7 ["uiButton"]
       60 SETTABLEKS                       R3 R2 K1 ["binding"]
       62 CALL                             R0 2 0
       63 GETUPVAL                         R0 4
       64 GETTABLEKS                       R0 R0 K4 ["property"]
       66 JUMPIFNOTEQKS                    R0 K6 ["primaryModifier"] ; [+26]
       68 GETUPVAL                         R0 4
       69 GETTABLEKS                       R0 R0 K1 ["binding"]
       71 GETTABLEKS                       R0 R0 K16 ["uiModifier"]
       73 JUMPIFNOT                        R0 ; [+19]
       74 GETUPVAL                         R0 5
       75 GETTABLEKS                       R0 R0 K8 ["UpdateBinding"]
       77 LOADNIL                          R1
       78 DUPTABLE                         R2 K10 [{"uuid", "binding"}]
       79 GETUPVAL                         R3 4
       80 GETTABLEKS                       R3 R3 K1 ["binding"]
       82 GETTABLEKS                       R3 R3 K9 ["uuid"]
       84 SETTABLEKS                       R3 R2 K9 ["uuid"]
       86 DUPTABLE                         R3 K17 [{"uiModifier"}]
       87 DUPTABLE                         R4 K15 [{["name"] = "", ["uuid"] = "", ["type"] = ""}]
       88 SETTABLEKS                       R4 R3 K16 ["uiModifier"]
       90 SETTABLEKS                       R3 R2 K1 ["binding"]
       92 CALL                             R0 2 0
       93 RETURN                           R0 0
       94 NEWTABLE                         R0 0 0
       96 GETUPVAL                         R1 4
       97 GETTABLEKS                       R1 R1 K4 ["property"]
       99 GETIMPORT                        R2 K21 [Enum.KeyCode.None]
      101 SETTABLE                         R2 R0 R1
      102 GETUPVAL                         R1 5
      103 GETTABLEKS                       R1 R1 K8 ["UpdateBinding"]
      105 LOADNIL                          R2
      106 DUPTABLE                         R3 K10 [{"uuid", "binding"}]
      107 GETUPVAL                         R4 4
      108 GETTABLEKS                       R4 R4 K1 ["binding"]
      110 GETTABLEKS                       R4 R4 K9 ["uuid"]
      112 SETTABLEKS                       R4 R3 K9 ["uuid"]
      114 SETTABLEKS                       R0 R3 K1 ["binding"]
      116 CALL                             R1 2 0
      117 RETURN                           R0 0
      118 GETUPVAL                         R0 1
      119 CALL                             R0 0 1
      120 JUMPIFNOT                        R0 ; [+7]
      121 GETUPVAL                         R0 2
      122 JUMPIFNOT                        R0 ; [+5]
      123 GETUPVAL                         R0 3
      124 GETTABLEKS                       R0 R0 K0 ["setActiveCellId"]
      126 LOADNIL                          R1
      127 CALL                             R0 1 0
      128 GETUPVAL                         R0 4
      129 GETTABLEKS                       R0 R0 K1 ["binding"]
      131 JUMPIFNOT                        R0 ; [+13]
      132 GETUPVAL                         R0 5
      133 GETTABLEKS                       R0 R0 K8 ["UpdateBinding"]
      135 LOADNIL                          R1
      136 DUPTABLE                         R2 K23 [{["uuid"], ["binding"] = }]
      137 GETUPVAL                         R3 4
      138 GETTABLEKS                       R3 R3 K1 ["binding"]
      140 GETTABLEKS                       R3 R3 K9 ["uuid"]
      142 SETTABLEKS                       R3 R2 K9 ["uuid"]
      144 CALL                             R0 2 0
      145 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["Hover"]
        4 JUMPIFEQ                         R0 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K2 ["useMemo"]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R0
       20 NEWTABLE                         R5 0 5
       22 GETTABLEKS                       R6 R0 K3 ["action"]
       24 GETTABLEKS                       R7 R0 K4 ["binding"]
       26 GETTABLEKS                       R8 R0 K5 ["property"]
       28 GETTABLEKS                       R9 R0 K6 ["schema"]
       30 GETTABLEKS                       R10 R0 K7 ["index"]
       32 SETLIST                          R5 R6 5 [1]
       34 CALL                             R3 2 1
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R4 R4 K8 ["useState"]
       38 GETTABLEKS                       R6 R2 K9 ["activeCellId"]
       40 JUMPIFEQ                         R6 R3 ; [+2]
       42 LOADB                            R5 0 +1
       43 LOADB                            R5 1
       44 CALL                             R4 1 2
       45 GETUPVAL                         R6 3
       46 GETTABLEKS                       R6 R6 K10 ["useEventConnection"]
       48 GETTABLEKS                       R7 R2 K11 ["activeCellIdChangedSignal"]
       50 NEWCLOSURE                       R8 P1
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R3
       53 NEWTABLE                         R9 0 1
       55 MOVE                             R10 R3
       56 SETLIST                          R9 R10 1 [1]
       58 CALL                             R6 3 0
       59 GETUPVAL                         R6 3
       60 GETTABLEKS                       R6 R6 K12 ["useEventCallback"]
       62 NEWCLOSURE                       R7 P2
       63 CAPTURE                          UPVAL U4
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R1
       68 CALL                             R6 1 1
       69 GETUPVAL                         R7 3
       70 GETTABLEKS                       R7 R7 K12 ["useEventCallback"]
       72 NEWCLOSURE                       R8 P3
       73 CAPTURE                          VAL R0
       74 CAPTURE                          VAL R1
       75 CAPTURE                          UPVAL U5
       76 CAPTURE                          VAL R2
       77 CALL                             R7 1 1
       78 GETUPVAL                         R8 6
       79 MOVE                             R9 R4
       80 MOVE                             R10 R7
       81 CALL                             R8 2 0
       82 GETUPVAL                         R8 3
       83 GETTABLEKS                       R8 R8 K12 ["useEventCallback"]
       85 NEWCLOSURE                       R9 P4
       86 CAPTURE                          UPVAL U5
       87 CAPTURE                          UPVAL U4
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R0
       91 CAPTURE                          VAL R1
       92 CALL                             R8 1 1
       93 GETUPVAL                         R9 0
       94 GETTABLEKS                       R9 R9 K8 ["useState"]
       96 LOADB                            R10 0
       97 CALL                             R9 1 2
       98 GETUPVAL                         R11 3
       99 GETTABLEKS                       R11 R11 K12 ["useEventCallback"]
      101 NEWCLOSURE                       R12 P5
      102 CAPTURE                          VAL R10
      103 CAPTURE                          UPVAL U7
      104 CALL                             R11 1 1
      105 DUPTABLE                         R12 K18 [{"isHovered", "onButtonSelectorActivated", "onRemoveActivated", "onStateChanged", "selected"}]
      106 SETTABLEKS                       R9 R12 K13 ["isHovered"]
      108 SETTABLEKS                       R6 R12 K14 ["onButtonSelectorActivated"]
      110 SETTABLEKS                       R8 R12 K15 ["onRemoveActivated"]
      112 SETTABLEKS                       R11 R12 K16 ["onStateChanged"]
      114 SETTABLEKS                       R4 R12 K17 ["selected"]
      116 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["Enums"]
       30 GETTABLEKS                       R4 R4 K11 ["ControlState"]
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R0 K12 ["Src"]
       36 GETTABLEKS                       R6 R6 K13 ["Contexts"]
       38 GETTABLEKS                       R6 R6 K14 ["Guest"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R0 K12 ["Src"]
       45 GETTABLEKS                       R7 R7 K13 ["Contexts"]
       47 GETTABLEKS                       R7 R7 K15 ["PluginConfiguration"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K5 [require]
       52 GETTABLEKS                       R8 R0 K12 ["Src"]
       54 GETTABLEKS                       R8 R8 K16 ["Types"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K5 [require]
       59 GETTABLEKS                       R9 R0 K12 ["Src"]
       61 GETTABLEKS                       R9 R9 K17 ["Hooks"]
       63 GETTABLEKS                       R9 R9 K18 ["Binding"]
       65 GETTABLEKS                       R9 R9 K19 ["useSelectedButton"]
       67 CALL                             R8 1 1
       68 GETTABLEKS                       R9 R0 K12 ["Src"]
       70 GETTABLEKS                       R9 R9 K20 ["Flags"]
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R9 K21 ["getFFlagIAMTouchButtonImprovements"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R9 K22 ["getFFlagIAMUIModifier"]
       81 CALL                             R11 1 1
       82 DUPCLOSURE                       R12 K23 [PROTO_6]
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R4
       91 RETURN                           R12 1
