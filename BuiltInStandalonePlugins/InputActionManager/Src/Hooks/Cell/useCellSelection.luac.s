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
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["setActiveCellId"]
        5 LOADNIL                          R1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K0 ["setActiveCellId"]
       11 GETUPVAL                         R1 2
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 3
       14 GETTABLEKS                       R0 R0 K1 ["ResetSelection"]
       16 CALL                             R0 0 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["binding"]
        3 JUMPIFNOT                        R1 ; [+42]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["UpdateBinding"]
        7 LOADNIL                          R2
        8 DUPTABLE                         R3 K3 [{"uuid", "binding"}]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K0 ["binding"]
       12 GETTABLEKS                       R4 R4 K2 ["uuid"]
       14 SETTABLEKS                       R4 R3 K2 ["uuid"]
       16 DUPTABLE                         R4 K6 [{"uiButton", "uiModifier"}]
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R6 R6 K7 ["property"]
       20 JUMPIFNOTEQKS                    R6 K8 ["keyCode"] ; [+3]
       22 MOVE                             R5 R0
       23 JUMP                             ; [+1]
       24 LOADNIL                          R5
       25 SETTABLEKS                       R5 R4 K4 ["uiButton"]
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R6 R6 K7 ["property"]
       30 JUMPIFNOTEQKS                    R6 K9 ["primaryModifier"] ; [+3]
       32 MOVE                             R5 R0
       33 JUMP                             ; [+1]
       34 LOADNIL                          R5
       35 SETTABLEKS                       R5 R4 K5 ["uiModifier"]
       37 SETTABLEKS                       R4 R3 K0 ["binding"]
       39 CALL                             R1 2 0
       40 GETUPVAL                         R1 2
       41 GETTABLEKS                       R1 R1 K10 ["setActiveCellId"]
       43 LOADNIL                          R2
       44 CALL                             R1 1 0
       45 RETURN                           R0 0
       46 GETUPVAL                         R1 1
       47 GETTABLEKS                       R1 R1 K1 ["UpdateBinding"]
       49 LOADNIL                          R2
       50 DUPTABLE                         R3 K11 [{"binding"}]
       51 DUPTABLE                         R4 K14 [{"name", "parentUuid", "uiButton", "uiModifier"}]
       52 LOADK                            R5 K15 ["%*%*"]
       53 GETUPVAL                         R7 0
       54 GETTABLEKS                       R7 R7 K16 ["action"]
       56 GETTABLEKS                       R7 R7 K12 ["name"]
       58 GETUPVAL                         R8 0
       59 GETTABLEKS                       R8 R8 K17 ["schema"]
       61 NAMECALL                         R5 R5 K18 ["format"]
       63 CALL                             R5 3 1
       64 SETTABLEKS                       R5 R4 K12 ["name"]
       66 GETUPVAL                         R5 0
       67 GETTABLEKS                       R5 R5 K16 ["action"]
       69 GETTABLEKS                       R5 R5 K2 ["uuid"]
       71 SETTABLEKS                       R5 R4 K13 ["parentUuid"]
       73 GETUPVAL                         R6 0
       74 GETTABLEKS                       R6 R6 K7 ["property"]
       76 JUMPIFNOTEQKS                    R6 K8 ["keyCode"] ; [+3]
       78 MOVE                             R5 R0
       79 JUMP                             ; [+1]
       80 LOADNIL                          R5
       81 SETTABLEKS                       R5 R4 K4 ["uiButton"]
       83 GETUPVAL                         R6 0
       84 GETTABLEKS                       R6 R6 K7 ["property"]
       86 JUMPIFNOTEQKS                    R6 K9 ["primaryModifier"] ; [+3]
       88 MOVE                             R5 R0
       89 JUMP                             ; [+1]
       90 LOADNIL                          R5
       91 SETTABLEKS                       R5 R4 K5 ["uiModifier"]
       93 SETTABLEKS                       R4 R3 K0 ["binding"]
       95 CALL                             R1 2 0
       96 GETUPVAL                         R1 2
       97 GETTABLEKS                       R1 R1 K10 ["setActiveCellId"]
       99 LOADNIL                          R2
      100 CALL                             R1 1 0
      101 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["setActiveCellId"]
        5 LOADNIL                          R1
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K1 ["binding"]
       10 JUMPIF                           R0 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 2
       13 GETTABLEKS                       R0 R0 K2 ["schema"]
       15 JUMPIFNOTEQKS                    R0 K3 ["Touch"] ; [+72]
       17 GETUPVAL                         R0 2
       18 GETTABLEKS                       R0 R0 K4 ["property"]
       20 JUMPIFEQKS                       R0 K5 ["keyCode"] ; [+6]
       22 GETUPVAL                         R0 2
       23 GETTABLEKS                       R0 R0 K4 ["property"]
       25 JUMPIFNOTEQKS                    R0 K6 ["primaryModifier"] ; [+62]
       27 GETUPVAL                         R0 2
       28 GETTABLEKS                       R0 R0 K4 ["property"]
       30 JUMPIFNOTEQKS                    R0 K5 ["keyCode"] ; [+26]
       32 GETUPVAL                         R0 2
       33 GETTABLEKS                       R0 R0 K1 ["binding"]
       35 GETTABLEKS                       R0 R0 K7 ["uiButton"]
       37 JUMPIFNOT                        R0 ; [+19]
       38 GETUPVAL                         R0 3
       39 GETTABLEKS                       R0 R0 K8 ["UpdateBinding"]
       41 LOADNIL                          R1
       42 DUPTABLE                         R2 K10 [{"uuid", "binding"}]
       43 GETUPVAL                         R3 2
       44 GETTABLEKS                       R3 R3 K1 ["binding"]
       46 GETTABLEKS                       R3 R3 K9 ["uuid"]
       48 SETTABLEKS                       R3 R2 K9 ["uuid"]
       50 DUPTABLE                         R3 K11 [{"uiButton"}]
       51 DUPTABLE                         R4 K15 [{["name"] = "", ["uuid"] = "", ["type"] = ""}]
       52 SETTABLEKS                       R4 R3 K7 ["uiButton"]
       54 SETTABLEKS                       R3 R2 K1 ["binding"]
       56 CALL                             R0 2 0
       57 GETUPVAL                         R0 2
       58 GETTABLEKS                       R0 R0 K4 ["property"]
       60 JUMPIFNOTEQKS                    R0 K6 ["primaryModifier"] ; [+26]
       62 GETUPVAL                         R0 2
       63 GETTABLEKS                       R0 R0 K1 ["binding"]
       65 GETTABLEKS                       R0 R0 K16 ["uiModifier"]
       67 JUMPIFNOT                        R0 ; [+19]
       68 GETUPVAL                         R0 3
       69 GETTABLEKS                       R0 R0 K8 ["UpdateBinding"]
       71 LOADNIL                          R1
       72 DUPTABLE                         R2 K10 [{"uuid", "binding"}]
       73 GETUPVAL                         R3 2
       74 GETTABLEKS                       R3 R3 K1 ["binding"]
       76 GETTABLEKS                       R3 R3 K9 ["uuid"]
       78 SETTABLEKS                       R3 R2 K9 ["uuid"]
       80 DUPTABLE                         R3 K17 [{"uiModifier"}]
       81 DUPTABLE                         R4 K15 [{["name"] = "", ["uuid"] = "", ["type"] = ""}]
       82 SETTABLEKS                       R4 R3 K16 ["uiModifier"]
       84 SETTABLEKS                       R3 R2 K1 ["binding"]
       86 CALL                             R0 2 0
       87 RETURN                           R0 0
       88 NEWTABLE                         R0 0 0
       90 GETUPVAL                         R1 2
       91 GETTABLEKS                       R1 R1 K4 ["property"]
       93 GETIMPORT                        R2 K21 [Enum.KeyCode.None]
       95 SETTABLE                         R2 R0 R1
       96 GETUPVAL                         R1 3
       97 GETTABLEKS                       R1 R1 K8 ["UpdateBinding"]
       99 LOADNIL                          R2
      100 DUPTABLE                         R3 K10 [{"uuid", "binding"}]
      101 GETUPVAL                         R4 2
      102 GETTABLEKS                       R4 R4 K1 ["binding"]
      104 GETTABLEKS                       R4 R4 K9 ["uuid"]
      106 SETTABLEKS                       R4 R3 K9 ["uuid"]
      108 SETTABLEKS                       R0 R3 K1 ["binding"]
      110 CALL                             R1 2 0
      111 RETURN                           R0 0

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
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R1
       67 CALL                             R6 1 1
       68 GETUPVAL                         R7 3
       69 GETTABLEKS                       R7 R7 K12 ["useEventCallback"]
       71 NEWCLOSURE                       R8 P3
       72 CAPTURE                          VAL R0
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R2
       75 CALL                             R7 1 1
       76 GETUPVAL                         R8 4
       77 MOVE                             R9 R4
       78 MOVE                             R10 R7
       79 CALL                             R8 2 0
       80 GETUPVAL                         R8 3
       81 GETTABLEKS                       R8 R8 K12 ["useEventCallback"]
       83 NEWCLOSURE                       R9 P4
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R0
       87 CAPTURE                          VAL R1
       88 CALL                             R8 1 1
       89 GETUPVAL                         R9 0
       90 GETTABLEKS                       R9 R9 K8 ["useState"]
       92 LOADB                            R10 0
       93 CALL                             R9 1 2
       94 GETUPVAL                         R11 3
       95 GETTABLEKS                       R11 R11 K12 ["useEventCallback"]
       97 NEWCLOSURE                       R12 P5
       98 CAPTURE                          VAL R10
       99 CAPTURE                          UPVAL U5
      100 CALL                             R11 1 1
      101 DUPTABLE                         R12 K18 [{"isHovered", "onButtonSelectorActivated", "onRemoveActivated", "onStateChanged", "selected"}]
      102 SETTABLEKS                       R9 R12 K13 ["isHovered"]
      104 SETTABLEKS                       R6 R12 K14 ["onButtonSelectorActivated"]
      106 SETTABLEKS                       R8 R12 K15 ["onRemoveActivated"]
      108 SETTABLEKS                       R11 R12 K16 ["onStateChanged"]
      110 SETTABLEKS                       R4 R12 K17 ["selected"]
      112 RETURN                           R12 1

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
       68 DUPCLOSURE                       R9 K20 [PROTO_6]
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R4
       75 RETURN                           R9 1
