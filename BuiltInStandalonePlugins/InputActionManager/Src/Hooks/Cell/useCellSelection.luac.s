PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["action"]
        4 GETTABLEKS                       R1 R1 K1 ["uuid"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["binding"]
        9 JUMPIFNOT                        R3 ; [+6]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K2 ["binding"]
       13 GETTABLEKS                       R2 R2 K1 ["uuid"]
       15 JUMP                             ; [+1]
       16 LOADNIL                          R2
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K3 ["property"]
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R4 R4 K4 ["schema"]
       23 GETUPVAL                         R5 1
       24 GETTABLEKS                       R5 R5 K5 ["index"]
       26 CALL                             R0 5 -1
       27 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["setSelectedCell"]
        5 LOADNIL                          R1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K0 ["setSelectedCell"]
       11 GETUPVAL                         R1 2
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 3
       14 GETTABLEKS                       R0 R0 K1 ["ResetSelection"]
       16 CALL                             R0 0 0
       17 RETURN                           R0 0

PROTO_2:
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
       41 GETTABLEKS                       R1 R1 K10 ["setSelectedCell"]
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
       97 GETTABLEKS                       R1 R1 K10 ["setSelectedCell"]
       99 LOADNIL                          R2
      100 CALL                             R1 1 0
      101 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["setSelectedCell"]
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

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["Hover"]
        4 JUMPIFEQ                         R0 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_5:
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
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          VAL R0
       20 NEWTABLE                         R5 0 5
       22 GETTABLEKS                       R6 R0 K3 ["action"]
       24 GETTABLEKS                       R7 R0 K4 ["binding"]
       26 GETTABLEKS                       R8 R0 K5 ["property"]
       28 GETTABLEKS                       R9 R0 K6 ["schema"]
       30 GETTABLEKS                       R10 R0 K7 ["index"]
       32 SETLIST                          R5 R6 5 [1]
       34 CALL                             R3 2 1
       35 GETTABLEKS                       R5 R2 K8 ["selectedCell"]
       37 JUMPIFEQ                         R5 R3 ; [+2]
       39 LOADB                            R4 0 +1
       40 LOADB                            R4 1
       41 GETUPVAL                         R5 4
       42 GETTABLEKS                       R5 R5 K9 ["useEventCallback"]
       44 NEWCLOSURE                       R6 P1
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R1
       49 CALL                             R5 1 1
       50 GETUPVAL                         R6 4
       51 GETTABLEKS                       R6 R6 K9 ["useEventCallback"]
       53 NEWCLOSURE                       R7 P2
       54 CAPTURE                          VAL R0
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R2
       57 CALL                             R6 1 1
       58 GETUPVAL                         R7 5
       59 MOVE                             R8 R4
       60 MOVE                             R9 R6
       61 CALL                             R7 2 0
       62 GETUPVAL                         R7 4
       63 GETTABLEKS                       R7 R7 K9 ["useEventCallback"]
       65 NEWCLOSURE                       R8 P3
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R0
       69 CAPTURE                          VAL R1
       70 CALL                             R7 1 1
       71 GETUPVAL                         R8 0
       72 GETTABLEKS                       R8 R8 K10 ["useState"]
       74 LOADB                            R9 0
       75 CALL                             R8 1 2
       76 GETUPVAL                         R10 4
       77 GETTABLEKS                       R10 R10 K9 ["useEventCallback"]
       79 NEWCLOSURE                       R11 P4
       80 CAPTURE                          VAL R9
       81 CAPTURE                          UPVAL U6
       82 CALL                             R10 1 1
       83 DUPTABLE                         R11 K16 [{"isHovered", "onButtonSelectorActivated", "onRemoveActivated", "onStateChanged", "selected"}]
       84 SETTABLEKS                       R8 R11 K11 ["isHovered"]
       86 SETTABLEKS                       R5 R11 K12 ["onButtonSelectorActivated"]
       88 SETTABLEKS                       R7 R11 K13 ["onRemoveActivated"]
       90 SETTABLEKS                       R10 R11 K14 ["onStateChanged"]
       92 SETTABLEKS                       R4 R11 K15 ["selected"]
       94 RETURN                           R11 1

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
       36 GETTABLEKS                       R6 R6 K13 ["Util"]
       38 GETTABLEKS                       R6 R6 K14 ["Cell"]
       40 GETTABLEKS                       R6 R6 K15 ["formatCellIdentifier"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K5 [require]
       45 GETTABLEKS                       R7 R0 K12 ["Src"]
       47 GETTABLEKS                       R7 R7 K16 ["Contexts"]
       49 GETTABLEKS                       R7 R7 K17 ["Guest"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K5 [require]
       54 GETTABLEKS                       R8 R0 K12 ["Src"]
       56 GETTABLEKS                       R8 R8 K16 ["Contexts"]
       58 GETTABLEKS                       R8 R8 K18 ["SelectionConfiguration"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K5 [require]
       63 GETTABLEKS                       R9 R0 K12 ["Src"]
       65 GETTABLEKS                       R9 R9 K19 ["Types"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K5 [require]
       70 GETTABLEKS                       R10 R0 K12 ["Src"]
       72 GETTABLEKS                       R10 R10 K20 ["Hooks"]
       74 GETTABLEKS                       R10 R10 K21 ["Binding"]
       76 GETTABLEKS                       R10 R10 K22 ["useSelectedButton"]
       78 CALL                             R9 1 1
       79 DUPCLOSURE                       R10 K23 [PROTO_5]
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R4
       87 RETURN                           R10 1
