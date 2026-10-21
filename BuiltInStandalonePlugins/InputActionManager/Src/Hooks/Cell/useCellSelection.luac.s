PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+30]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["formatCellId"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["action"]
        8 GETTABLEKS                       R1 R1 K2 ["uuid"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K3 ["binding"]
       13 JUMPIFNOT                        R3 ; [+6]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K3 ["binding"]
       17 GETTABLEKS                       R2 R2 K2 ["uuid"]
       19 JUMP                             ; [+1]
       20 LOADNIL                          R2
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K4 ["property"]
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R4 R4 K5 ["schema"]
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R5 R5 K6 ["index"]
       30 CALL                             R0 5 1
       31 RETURN                           R0 1
       32 GETUPVAL                         R0 2
       33 GETUPVAL                         R1 1
       34 GETTABLEKS                       R1 R1 K1 ["action"]
       36 GETTABLEKS                       R1 R1 K2 ["uuid"]
       38 GETUPVAL                         R3 1
       39 GETTABLEKS                       R3 R3 K3 ["binding"]
       41 JUMPIFNOT                        R3 ; [+6]
       42 GETUPVAL                         R2 1
       43 GETTABLEKS                       R2 R2 K3 ["binding"]
       45 GETTABLEKS                       R2 R2 K2 ["uuid"]
       47 JUMP                             ; [+1]
       48 LOADNIL                          R2
       49 GETUPVAL                         R3 1
       50 GETTABLEKS                       R3 R3 K4 ["property"]
       52 GETUPVAL                         R4 1
       53 GETTABLEKS                       R4 R4 K5 ["schema"]
       55 GETUPVAL                         R5 1
       56 GETTABLEKS                       R5 R5 K6 ["index"]
       58 CALL                             R0 5 1
       59 RETURN                           R0 1

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
        2 JUMPIFNOT                        R0 ; [+25]
        3 GETUPVAL                         R1 1
        4 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        6 LOADK                            R2 K0 ["selectionConfiguration must be provided"]
        7 GETIMPORT                        R0 K2 [assert]
        9 CALL                             R0 2 0
       10 GETUPVAL                         R0 2
       11 JUMPIFNOT                        R0 ; [+6]
       12 GETUPVAL                         R0 1
       13 GETTABLEKS                       R0 R0 K3 ["setSelectedCell"]
       15 LOADNIL                          R1
       16 CALL                             R0 1 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R0 1
       19 GETTABLEKS                       R0 R0 K3 ["setSelectedCell"]
       21 GETUPVAL                         R1 3
       22 CALL                             R0 1 0
       23 GETUPVAL                         R0 4
       24 GETTABLEKS                       R0 R0 K4 ["ResetSelection"]
       26 CALL                             R0 0 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R1 5
       29 FASTCALL2K                       ASSERT R1 K5 ; [+4]
       31 LOADK                            R2 K5 ["pluginConfiguration must be provided"]
       32 GETIMPORT                        R0 K2 [assert]
       34 CALL                             R0 2 0
       35 GETUPVAL                         R0 2
       36 JUMPIFNOT                        R0 ; [+6]
       37 GETUPVAL                         R0 5
       38 GETTABLEKS                       R0 R0 K6 ["setActiveCellId"]
       40 LOADNIL                          R1
       41 CALL                             R0 1 0
       42 RETURN                           R0 0
       43 GETUPVAL                         R0 5
       44 GETTABLEKS                       R0 R0 K6 ["setActiveCellId"]
       46 GETUPVAL                         R1 3
       47 CALL                             R0 1 0
       48 GETUPVAL                         R0 4
       49 GETTABLEKS                       R0 R0 K4 ["ResetSelection"]
       51 CALL                             R0 0 0
       52 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["binding"]
        3 JUMPIFNOT                        R1 ; [+65]
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
       41 CALL                             R1 0 1
       42 JUMPIFNOT                        R1 ; [+13]
       43 GETUPVAL                         R2 3
       44 FASTCALL2K                       ASSERT R2 K10 ; [+4]
       46 LOADK                            R3 K10 ["selectionConfiguration must be provided"]
       47 GETIMPORT                        R1 K12 [assert]
       49 CALL                             R1 2 0
       50 GETUPVAL                         R1 3
       51 GETTABLEKS                       R1 R1 K13 ["setSelectedCell"]
       53 LOADNIL                          R2
       54 CALL                             R1 1 0
       55 RETURN                           R0 0
       56 GETUPVAL                         R2 4
       57 FASTCALL2K                       ASSERT R2 K14 ; [+4]
       59 LOADK                            R3 K14 ["pluginConfiguration must be provided"]
       60 GETIMPORT                        R1 K12 [assert]
       62 CALL                             R1 2 0
       63 GETUPVAL                         R1 4
       64 GETTABLEKS                       R1 R1 K15 ["setActiveCellId"]
       66 LOADNIL                          R2
       67 CALL                             R1 1 0
       68 RETURN                           R0 0
       69 GETUPVAL                         R1 1
       70 GETTABLEKS                       R1 R1 K1 ["UpdateBinding"]
       72 LOADNIL                          R2
       73 DUPTABLE                         R3 K16 [{"binding"}]
       74 DUPTABLE                         R4 K19 [{"name", "parentUuid", "uiButton", "uiModifier"}]
       75 LOADK                            R5 K20 ["%*%*"]
       76 GETUPVAL                         R7 0
       77 GETTABLEKS                       R7 R7 K21 ["action"]
       79 GETTABLEKS                       R7 R7 K17 ["name"]
       81 GETUPVAL                         R8 0
       82 GETTABLEKS                       R8 R8 K22 ["schema"]
       84 NAMECALL                         R5 R5 K23 ["format"]
       86 CALL                             R5 3 1
       87 SETTABLEKS                       R5 R4 K17 ["name"]
       89 GETUPVAL                         R5 0
       90 GETTABLEKS                       R5 R5 K21 ["action"]
       92 GETTABLEKS                       R5 R5 K2 ["uuid"]
       94 SETTABLEKS                       R5 R4 K18 ["parentUuid"]
       96 GETUPVAL                         R6 0
       97 GETTABLEKS                       R6 R6 K7 ["property"]
       99 JUMPIFNOTEQKS                    R6 K8 ["keyCode"] ; [+3]
      101 MOVE                             R5 R0
      102 JUMP                             ; [+1]
      103 LOADNIL                          R5
      104 SETTABLEKS                       R5 R4 K4 ["uiButton"]
      106 GETUPVAL                         R6 0
      107 GETTABLEKS                       R6 R6 K7 ["property"]
      109 JUMPIFNOTEQKS                    R6 K9 ["primaryModifier"] ; [+3]
      111 MOVE                             R5 R0
      112 JUMP                             ; [+1]
      113 LOADNIL                          R5
      114 SETTABLEKS                       R5 R4 K5 ["uiModifier"]
      116 SETTABLEKS                       R4 R3 K0 ["binding"]
      118 CALL                             R1 2 0
      119 GETUPVAL                         R1 2
      120 CALL                             R1 0 1
      121 JUMPIFNOT                        R1 ; [+13]
      122 GETUPVAL                         R2 3
      123 FASTCALL2K                       ASSERT R2 K10 ; [+4]
      125 LOADK                            R3 K10 ["selectionConfiguration must be provided"]
      126 GETIMPORT                        R1 K12 [assert]
      128 CALL                             R1 2 0
      129 GETUPVAL                         R1 3
      130 GETTABLEKS                       R1 R1 K13 ["setSelectedCell"]
      132 LOADNIL                          R2
      133 CALL                             R1 1 0
      134 RETURN                           R0 0
      135 GETUPVAL                         R2 4
      136 FASTCALL2K                       ASSERT R2 K14 ; [+4]
      138 LOADK                            R3 K14 ["pluginConfiguration must be provided"]
      139 GETIMPORT                        R1 K12 [assert]
      141 CALL                             R1 2 0
      142 GETUPVAL                         R1 4
      143 GETTABLEKS                       R1 R1 K15 ["setActiveCellId"]
      145 LOADNIL                          R2
      146 CALL                             R1 1 0
      147 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+28]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+13]
        5 GETUPVAL                         R1 2
        6 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        8 LOADK                            R2 K0 ["selectionConfiguration must be provided"]
        9 GETIMPORT                        R0 K2 [assert]
       11 CALL                             R0 2 0
       12 GETUPVAL                         R0 2
       13 GETTABLEKS                       R0 R0 K3 ["setSelectedCell"]
       15 LOADNIL                          R1
       16 CALL                             R0 1 0
       17 JUMP                             ; [+12]
       18 GETUPVAL                         R1 3
       19 FASTCALL2K                       ASSERT R1 K4 ; [+4]
       21 LOADK                            R2 K4 ["pluginConfiguration must be provided"]
       22 GETIMPORT                        R0 K2 [assert]
       24 CALL                             R0 2 0
       25 GETUPVAL                         R0 3
       26 GETTABLEKS                       R0 R0 K5 ["setActiveCellId"]
       28 LOADNIL                          R1
       29 CALL                             R0 1 0
       30 GETUPVAL                         R0 4
       31 GETTABLEKS                       R0 R0 K6 ["binding"]
       33 JUMPIF                           R0 ; [+1]
       34 RETURN                           R0 0
       35 GETUPVAL                         R0 4
       36 GETTABLEKS                       R0 R0 K7 ["schema"]
       38 JUMPIFNOTEQKS                    R0 K8 ["Touch"] ; [+72]
       40 GETUPVAL                         R0 4
       41 GETTABLEKS                       R0 R0 K9 ["property"]
       43 JUMPIFEQKS                       R0 K10 ["keyCode"] ; [+6]
       45 GETUPVAL                         R0 4
       46 GETTABLEKS                       R0 R0 K9 ["property"]
       48 JUMPIFNOTEQKS                    R0 K11 ["primaryModifier"] ; [+62]
       50 GETUPVAL                         R0 4
       51 GETTABLEKS                       R0 R0 K9 ["property"]
       53 JUMPIFNOTEQKS                    R0 K10 ["keyCode"] ; [+26]
       55 GETUPVAL                         R0 4
       56 GETTABLEKS                       R0 R0 K6 ["binding"]
       58 GETTABLEKS                       R0 R0 K12 ["uiButton"]
       60 JUMPIFNOT                        R0 ; [+19]
       61 GETUPVAL                         R0 5
       62 GETTABLEKS                       R0 R0 K13 ["UpdateBinding"]
       64 LOADNIL                          R1
       65 DUPTABLE                         R2 K15 [{"uuid", "binding"}]
       66 GETUPVAL                         R3 4
       67 GETTABLEKS                       R3 R3 K6 ["binding"]
       69 GETTABLEKS                       R3 R3 K14 ["uuid"]
       71 SETTABLEKS                       R3 R2 K14 ["uuid"]
       73 DUPTABLE                         R3 K16 [{"uiButton"}]
       74 DUPTABLE                         R4 K20 [{["name"] = "", ["uuid"] = "", ["type"] = ""}]
       75 SETTABLEKS                       R4 R3 K12 ["uiButton"]
       77 SETTABLEKS                       R3 R2 K6 ["binding"]
       79 CALL                             R0 2 0
       80 GETUPVAL                         R0 4
       81 GETTABLEKS                       R0 R0 K9 ["property"]
       83 JUMPIFNOTEQKS                    R0 K11 ["primaryModifier"] ; [+26]
       85 GETUPVAL                         R0 4
       86 GETTABLEKS                       R0 R0 K6 ["binding"]
       88 GETTABLEKS                       R0 R0 K21 ["uiModifier"]
       90 JUMPIFNOT                        R0 ; [+19]
       91 GETUPVAL                         R0 5
       92 GETTABLEKS                       R0 R0 K13 ["UpdateBinding"]
       94 LOADNIL                          R1
       95 DUPTABLE                         R2 K15 [{"uuid", "binding"}]
       96 GETUPVAL                         R3 4
       97 GETTABLEKS                       R3 R3 K6 ["binding"]
       99 GETTABLEKS                       R3 R3 K14 ["uuid"]
      101 SETTABLEKS                       R3 R2 K14 ["uuid"]
      103 DUPTABLE                         R3 K22 [{"uiModifier"}]
      104 DUPTABLE                         R4 K20 [{["name"] = "", ["uuid"] = "", ["type"] = ""}]
      105 SETTABLEKS                       R4 R3 K21 ["uiModifier"]
      107 SETTABLEKS                       R3 R2 K6 ["binding"]
      109 CALL                             R0 2 0
      110 RETURN                           R0 0
      111 NEWTABLE                         R0 0 0
      113 GETUPVAL                         R1 4
      114 GETTABLEKS                       R1 R1 K9 ["property"]
      116 GETIMPORT                        R2 K26 [Enum.KeyCode.None]
      118 SETTABLE                         R2 R0 R1
      119 GETUPVAL                         R1 5
      120 GETTABLEKS                       R1 R1 K13 ["UpdateBinding"]
      122 LOADNIL                          R2
      123 DUPTABLE                         R3 K15 [{"uuid", "binding"}]
      124 GETUPVAL                         R4 4
      125 GETTABLEKS                       R4 R4 K6 ["binding"]
      127 GETTABLEKS                       R4 R4 K14 ["uuid"]
      129 SETTABLEKS                       R4 R3 K14 ["uuid"]
      131 SETTABLEKS                       R0 R3 K6 ["binding"]
      133 CALL                             R1 2 0
      134 RETURN                           R0 0

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
        7 GETUPVAL                         R3 2
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+2]
       10 LOADNIL                          R2
       11 JUMP                             ; [+7]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K0 ["useContext"]
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R3 R3 K1 ["Context"]
       18 CALL                             R2 1 1
       19 GETUPVAL                         R4 2
       20 CALL                             R4 0 1
       21 JUMPIFNOT                        R4 ; [+8]
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K0 ["useContext"]
       25 GETUPVAL                         R4 4
       26 GETTABLEKS                       R4 R4 K1 ["Context"]
       28 CALL                             R3 1 1
       29 JUMP                             ; [+1]
       30 LOADNIL                          R3
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R4 R4 K2 ["useMemo"]
       34 NEWCLOSURE                       R5 P0
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R0
       37 CAPTURE                          UPVAL U5
       38 NEWTABLE                         R6 0 5
       40 GETTABLEKS                       R7 R0 K3 ["action"]
       42 GETTABLEKS                       R8 R0 K4 ["binding"]
       44 GETTABLEKS                       R9 R0 K5 ["property"]
       46 GETTABLEKS                       R10 R0 K6 ["schema"]
       48 GETTABLEKS                       R11 R0 K7 ["index"]
       50 SETLIST                          R6 R7 5 [1]
       52 CALL                             R4 2 1
       53 LOADB                            R5 0
       54 GETUPVAL                         R6 6
       55 GETTABLEKS                       R6 R6 K8 ["createUnimplemented"]
       57 LOADK                            R7 K9 ["setSelected"]
       58 CALL                             R6 1 1
       59 GETUPVAL                         R7 2
       60 CALL                             R7 0 1
       61 JUMPIFNOT                        R7 ; [+14]
       62 FASTCALL2K                       ASSERT R3 K10 ; [+5]
       64 MOVE                             R8 R3
       65 LOADK                            R9 K10 ["selectionConfiguration must be provided"]
       66 GETIMPORT                        R7 K12 [assert]
       68 CALL                             R7 2 0
       69 GETTABLEKS                       R7 R3 K13 ["selectedCell"]
       71 JUMPIFEQ                         R7 R4 ; [+2]
       73 LOADB                            R5 0 +1
       74 LOADB                            R5 1
       75 JUMP                             ; [+33]
       76 FASTCALL2K                       ASSERT R2 K14 ; [+5]
       78 MOVE                             R8 R2
       79 LOADK                            R9 K14 ["pluginConfiguration must be provided"]
       80 GETIMPORT                        R7 K12 [assert]
       82 CALL                             R7 2 0
       83 GETUPVAL                         R7 0
       84 GETTABLEKS                       R7 R7 K15 ["useState"]
       86 GETTABLEKS                       R9 R2 K16 ["activeCellId"]
       88 JUMPIFEQ                         R9 R4 ; [+2]
       90 LOADB                            R8 0 +1
       91 LOADB                            R8 1
       92 CALL                             R7 1 2
       93 MOVE                             R5 R7
       94 MOVE                             R6 R8
       95 GETUPVAL                         R7 6
       96 GETTABLEKS                       R7 R7 K17 ["useEventConnection"]
       98 GETTABLEKS                       R8 R2 K18 ["activeCellIdChangedSignal"]
      100 NEWCLOSURE                       R9 P1
      101 CAPTURE                          REF R6
      102 CAPTURE                          VAL R4
      103 NEWTABLE                         R10 0 1
      105 MOVE                             R11 R4
      106 SETLIST                          R10 R11 1 [1]
      108 CALL                             R7 3 0
      109 GETUPVAL                         R7 6
      110 GETTABLEKS                       R7 R7 K19 ["useEventCallback"]
      112 NEWCLOSURE                       R8 P2
      113 CAPTURE                          UPVAL U2
      114 CAPTURE                          VAL R3
      115 CAPTURE                          REF R5
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R1
      118 CAPTURE                          VAL R2
      119 CALL                             R7 1 1
      120 GETUPVAL                         R8 6
      121 GETTABLEKS                       R8 R8 K19 ["useEventCallback"]
      123 NEWCLOSURE                       R9 P3
      124 CAPTURE                          VAL R0
      125 CAPTURE                          VAL R1
      126 CAPTURE                          UPVAL U2
      127 CAPTURE                          VAL R3
      128 CAPTURE                          VAL R2
      129 CALL                             R8 1 1
      130 GETUPVAL                         R9 7
      131 MOVE                             R10 R5
      132 MOVE                             R11 R8
      133 CALL                             R9 2 0
      134 GETUPVAL                         R9 6
      135 GETTABLEKS                       R9 R9 K19 ["useEventCallback"]
      137 NEWCLOSURE                       R10 P4
      138 CAPTURE                          REF R5
      139 CAPTURE                          UPVAL U2
      140 CAPTURE                          VAL R3
      141 CAPTURE                          VAL R2
      142 CAPTURE                          VAL R0
      143 CAPTURE                          VAL R1
      144 CALL                             R9 1 1
      145 GETUPVAL                         R10 0
      146 GETTABLEKS                       R10 R10 K15 ["useState"]
      148 LOADB                            R11 0
      149 CALL                             R10 1 2
      150 GETUPVAL                         R12 6
      151 GETTABLEKS                       R12 R12 K19 ["useEventCallback"]
      153 NEWCLOSURE                       R13 P5
      154 CAPTURE                          VAL R11
      155 CAPTURE                          UPVAL U8
      156 CALL                             R12 1 1
      157 DUPTABLE                         R13 K25 [{"isHovered", "onButtonSelectorActivated", "onRemoveActivated", "onStateChanged", "selected"}]
      158 SETTABLEKS                       R10 R13 K20 ["isHovered"]
      160 SETTABLEKS                       R7 R13 K21 ["onButtonSelectorActivated"]
      162 SETTABLEKS                       R9 R13 K22 ["onRemoveActivated"]
      164 SETTABLEKS                       R12 R13 K23 ["onStateChanged"]
      166 SETTABLEKS                       R5 R13 K24 ["selected"]
      168 CLOSEUPVALS                      R5
      169 RETURN                           R13 1

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
       58 GETTABLEKS                       R8 R8 K18 ["PluginConfiguration"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K5 [require]
       63 GETTABLEKS                       R9 R0 K12 ["Src"]
       65 GETTABLEKS                       R9 R9 K16 ["Contexts"]
       67 GETTABLEKS                       R9 R9 K19 ["SelectionConfiguration"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K5 [require]
       72 GETTABLEKS                       R10 R0 K12 ["Src"]
       74 GETTABLEKS                       R10 R10 K20 ["Types"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K5 [require]
       79 GETTABLEKS                       R11 R0 K12 ["Src"]
       81 GETTABLEKS                       R11 R11 K21 ["Hooks"]
       83 GETTABLEKS                       R11 R11 K22 ["Binding"]
       85 GETTABLEKS                       R11 R11 K23 ["useSelectedButton"]
       87 CALL                             R10 1 1
       88 GETTABLEKS                       R11 R0 K12 ["Src"]
       90 GETTABLEKS                       R11 R11 K24 ["Flags"]
       92 GETIMPORT                        R12 K5 [require]
       94 GETTABLEKS                       R13 R11 K25 ["getFFlagIAMRefactorPluginConfiguration"]
       96 CALL                             R12 1 1
       97 DUPCLOSURE                       R13 K26 [PROTO_6]
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R6
      100 CAPTURE                          VAL R12
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R8
      103 CAPTURE                          VAL R5
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R4
      107 RETURN                           R13 1
