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
        1 GETTABLEKS                       R0 R0 K0 ["setActiveCellId"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 GETTABLEKS                       R0 R0 K1 ["ResetSelection"]
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["binding"]
        3 JUMPIFNOT                        R1 ; [+24]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["UpdateBinding"]
        7 LOADNIL                          R2
        8 DUPTABLE                         R3 K3 [{"uuid", "binding"}]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K0 ["binding"]
       12 GETTABLEKS                       R4 R4 K2 ["uuid"]
       14 SETTABLEKS                       R4 R3 K2 ["uuid"]
       16 DUPTABLE                         R4 K5 [{"uiButton"}]
       17 SETTABLEKS                       R0 R4 K4 ["uiButton"]
       19 SETTABLEKS                       R4 R3 K0 ["binding"]
       21 CALL                             R1 2 0
       22 GETUPVAL                         R1 2
       23 GETTABLEKS                       R1 R1 K6 ["setActiveCellId"]
       25 LOADNIL                          R2
       26 CALL                             R1 1 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R1 1
       29 GETTABLEKS                       R1 R1 K1 ["UpdateBinding"]
       31 LOADNIL                          R2
       32 DUPTABLE                         R3 K7 [{"binding"}]
       33 DUPTABLE                         R4 K10 [{"name", "parentUuid", "uiButton"}]
       34 LOADK                            R6 K11 ["%*%*"]
       35 GETUPVAL                         R8 0
       36 GETTABLEKS                       R8 R8 K12 ["action"]
       38 GETTABLEKS                       R8 R8 K8 ["name"]
       40 GETUPVAL                         R9 0
       41 GETTABLEKS                       R9 R9 K13 ["schema"]
       43 NAMECALL                         R6 R6 K14 ["format"]
       45 CALL                             R6 3 1
       46 MOVE                             R5 R6
       47 SETTABLEKS                       R5 R4 K8 ["name"]
       49 GETUPVAL                         R5 0
       50 GETTABLEKS                       R5 R5 K12 ["action"]
       52 GETTABLEKS                       R5 R5 K2 ["uuid"]
       54 SETTABLEKS                       R5 R4 K9 ["parentUuid"]
       56 SETTABLEKS                       R0 R4 K4 ["uiButton"]
       58 SETTABLEKS                       R4 R3 K0 ["binding"]
       60 CALL                             R1 2 0
       61 GETUPVAL                         R1 2
       62 GETTABLEKS                       R1 R1 K6 ["setActiveCellId"]
       64 LOADNIL                          R2
       65 CALL                             R1 1 0
       66 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["binding"]
        3 JUMPIFNOT                        R0 ; [+16]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["UpdateBinding"]
        7 LOADNIL                          R1
        8 DUPTABLE                         R2 K3 [{"uuid", "binding"}]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K0 ["binding"]
       12 GETTABLEKS                       R3 R3 K2 ["uuid"]
       14 SETTABLEKS                       R3 R2 K2 ["uuid"]
       16 LOADNIL                          R3
       17 SETTABLEKS                       R3 R2 K0 ["binding"]
       19 CALL                             R0 2 0
       20 RETURN                           R0 0

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
       59 GETUPVAL                         R6 0
       60 GETTABLEKS                       R6 R6 K12 ["useCallback"]
       62 NEWCLOSURE                       R7 P2
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R1
       66 NEWTABLE                         R8 0 3
       68 MOVE                             R9 R1
       69 MOVE                             R10 R2
       70 MOVE                             R11 R3
       71 SETLIST                          R8 R9 3 [1]
       73 CALL                             R6 2 1
       74 GETUPVAL                         R7 0
       75 GETTABLEKS                       R7 R7 K12 ["useCallback"]
       77 NEWCLOSURE                       R8 P3
       78 CAPTURE                          VAL R0
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R2
       81 NEWTABLE                         R9 0 5
       83 GETTABLEKS                       R10 R0 K4 ["binding"]
       85 GETTABLEKS                       R11 R0 K3 ["action"]
       87 GETTABLEKS                       R12 R0 K6 ["schema"]
       89 MOVE                             R13 R1
       90 MOVE                             R14 R2
       91 SETLIST                          R9 R10 5 [1]
       93 CALL                             R7 2 1
       94 GETUPVAL                         R8 4
       95 MOVE                             R9 R4
       96 MOVE                             R10 R7
       97 CALL                             R8 2 0
       98 GETUPVAL                         R8 0
       99 GETTABLEKS                       R8 R8 K12 ["useCallback"]
      101 NEWCLOSURE                       R9 P4
      102 CAPTURE                          VAL R0
      103 CAPTURE                          VAL R1
      104 NEWTABLE                         R10 0 2
      106 GETTABLEKS                       R11 R0 K4 ["binding"]
      108 MOVE                             R12 R1
      109 SETLIST                          R10 R11 2 [1]
      111 CALL                             R8 2 1
      112 GETUPVAL                         R9 0
      113 GETTABLEKS                       R9 R9 K8 ["useState"]
      115 LOADB                            R10 0
      116 CALL                             R9 1 2
      117 GETUPVAL                         R11 3
      118 GETTABLEKS                       R11 R11 K13 ["useEventCallback"]
      120 NEWCLOSURE                       R12 P5
      121 CAPTURE                          VAL R10
      122 CAPTURE                          UPVAL U5
      123 CALL                             R11 1 1
      124 DUPTABLE                         R12 K19 [{"isHovered", "onButtonSelectorActivated", "onRemoveActivated", "onStateChanged", "selected"}]
      125 SETTABLEKS                       R9 R12 K14 ["isHovered"]
      127 SETTABLEKS                       R6 R12 K15 ["onButtonSelectorActivated"]
      129 SETTABLEKS                       R8 R12 K16 ["onRemoveActivated"]
      131 SETTABLEKS                       R11 R12 K17 ["onStateChanged"]
      133 SETTABLEKS                       R4 R12 K18 ["selected"]
      135 RETURN                           R12 1

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
