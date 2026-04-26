PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R2 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["createElement"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K3 ["View"]
       12 DUPTABLE                         R4 K8 [{"LayoutOrder", "onActivated", "stateLayer", "tag"}]
       13 GETTABLEKS                       R5 R0 K4 ["LayoutOrder"]
       15 SETTABLEKS                       R5 R4 K4 ["LayoutOrder"]
       17 GETTABLEKS                       R6 R0 K9 ["IsDisabled"]
       19 JUMPIF                           R6 ; [+3]
       20 GETTABLEKS                       R5 R0 K10 ["OnSelect"]
       22 JUMP                             ; [+1]
       23 LOADNIL                          R5
       24 SETTABLEKS                       R5 R4 K5 ["onActivated"]
       26 DUPTABLE                         R5 K12 [{"affordance"}]
       27 GETUPVAL                         R9 0
       28 GETTABLEKS                       R8 R9 K13 ["Enums"]
       30 GETTABLEKS                       R7 R8 K14 ["StateLayerAffordance"]
       32 GETTABLEKS                       R6 R7 K15 ["None"]
       34 SETTABLEKS                       R6 R5 K11 ["affordance"]
       36 SETTABLEKS                       R5 R4 K6 ["stateLayer"]
       38 NEWTABLE                         R5 4 0
       40 LOADB                            R6 1
       41 SETTABLEKS                       R6 R5 K16 ["row radius-small size-full-0 auto-y align-y-center padding-xsmall gap-small"]
       43 GETTABLEKS                       R6 R0 K17 ["IsSelected"]
       45 SETTABLEKS                       R6 R5 K18 ["bg-action-soft-emphasis"]
       47 GETTABLEKS                       R7 R0 K17 ["IsSelected"]
       49 NOT                              R6 R7
       50 SETTABLEKS                       R6 R5 K19 ["am-hover"]
       52 SETTABLEKS                       R5 R4 K7 ["tag"]
       54 DUPTABLE                         R5 K23 [{"Icon", "Name", "DrillInButton"}]
       55 GETUPVAL                         R7 1
       56 GETTABLEKS                       R6 R7 K2 ["createElement"]
       58 GETUPVAL                         R8 0
       59 GETTABLEKS                       R7 R8 K20 ["Icon"]
       61 DUPTABLE                         R8 K28 [{"LayoutOrder", "name", "variant", "style", "size"}]
       62 LOADN                            R9 1
       63 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       65 GETUPVAL                         R12 0
       66 GETTABLEKS                       R11 R12 K13 ["Enums"]
       68 GETTABLEKS                       R10 R11 K29 ["IconName"]
       70 GETTABLEKS                       R9 R10 K30 ["Folder"]
       72 SETTABLEKS                       R9 R8 K24 ["name"]
       74 GETUPVAL                         R12 0
       75 GETTABLEKS                       R11 R12 K13 ["Enums"]
       77 GETTABLEKS                       R10 R11 K31 ["IconVariant"]
       79 GETTABLEKS                       R9 R10 K32 ["Filled"]
       81 SETTABLEKS                       R9 R8 K25 ["variant"]
       83 GETTABLEKS                       R12 R1 K33 ["Color"]
       85 GETTABLEKS                       R11 R12 K34 ["Extended"]
       87 GETTABLEKS                       R10 R11 K35 ["Yellow"]
       89 GETTABLEKS                       R9 R10 K36 ["Yellow_300"]
       91 SETTABLEKS                       R9 R8 K26 ["style"]
       93 GETTABLEKS                       R10 R1 K37 ["Size"]
       95 GETTABLEKS                       R9 R10 K38 ["Size_400"]
       97 SETTABLEKS                       R9 R8 K27 ["size"]
       99 CALL                             R6 2 1
      100 SETTABLEKS                       R6 R5 K20 ["Icon"]
      102 GETUPVAL                         R7 1
      103 GETTABLEKS                       R6 R7 K2 ["createElement"]
      105 GETUPVAL                         R8 0
      106 GETTABLEKS                       R7 R8 K39 ["Text"]
      108 DUPTABLE                         R8 K40 [{"LayoutOrder", "Text", "tag"}]
      109 LOADN                            R9 2
      110 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
      112 GETTABLEKS                       R10 R0 K30 ["Folder"]
      114 GETTABLEKS                       R9 R10 K41 ["DisplayName"]
      116 SETTABLEKS                       R9 R8 K39 ["Text"]
      118 NEWTABLE                         R9 2 0
      120 LOADB                            R10 1
      121 SETTABLEKS                       R10 R9 K42 ["fill auto-y text-label-medium text-truncate-end text-align-x-left"]
      123 GETTABLEKS                       R10 R0 K9 ["IsDisabled"]
      125 SETTABLEKS                       R10 R9 K43 ["content-inverse-muted"]
      127 SETTABLEKS                       R9 R8 K7 ["tag"]
      129 CALL                             R6 2 1
      130 SETTABLEKS                       R6 R5 K21 ["Name"]
      132 LOADB                            R6 0
      133 GETTABLEKS                       R7 R0 K9 ["IsDisabled"]
      135 JUMPIFEQKB                       R7 TRUE ; [+45]
      137 GETUPVAL                         R7 1
      138 GETTABLEKS                       R6 R7 K2 ["createElement"]
      140 GETUPVAL                         R8 0
      141 GETTABLEKS                       R7 R8 K3 ["View"]
      143 DUPTABLE                         R8 K44 [{"LayoutOrder", "onActivated", "tag"}]
      144 LOADN                            R9 3
      145 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
      147 GETTABLEKS                       R9 R0 K45 ["OnDrillIn"]
      149 SETTABLEKS                       R9 R8 K5 ["onActivated"]
      151 LOADK                            R9 K46 ["auto-xy align-y-center data-testid=folder-row-drill-in"]
      152 SETTABLEKS                       R9 R8 K7 ["tag"]
      154 GETUPVAL                         R10 1
      155 GETTABLEKS                       R9 R10 K2 ["createElement"]
      157 GETUPVAL                         R11 0
      158 GETTABLEKS                       R10 R11 K20 ["Icon"]
      160 DUPTABLE                         R11 K47 [{"name", "size"}]
      161 GETUPVAL                         R15 0
      162 GETTABLEKS                       R14 R15 K13 ["Enums"]
      164 GETTABLEKS                       R13 R14 K29 ["IconName"]
      166 GETTABLEKS                       R12 R13 K48 ["ChevronSmallRight"]
      168 SETTABLEKS                       R12 R11 K24 ["name"]
      170 GETUPVAL                         R15 0
      171 GETTABLEKS                       R14 R15 K13 ["Enums"]
      173 GETTABLEKS                       R13 R14 K49 ["IconSize"]
      175 GETTABLEKS                       R12 R13 K50 ["Small"]
      177 SETTABLEKS                       R12 R11 K27 ["size"]
      179 CALL                             R9 2 -1
      180 CALL                             R6 -1 1
      181 SETTABLEKS                       R6 R5 K22 ["DrillInButton"]
      183 CALL                             R2 3 -1
      184 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["use"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["createElement"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R2 R3 K2 ["View"]
       10 DUPTABLE                         R3 K4 [{"tag"}]
       11 LOADK                            R4 K5 ["size-full align-x-center align-y-center padding-medium"]
       12 SETTABLEKS                       R4 R3 K3 ["tag"]
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R4 R5 K1 ["createElement"]
       17 GETUPVAL                         R6 2
       18 GETTABLEKS                       R5 R6 K6 ["Text"]
       20 DUPTABLE                         R6 K7 [{"Text", "tag"}]
       21 LOADK                            R9 K8 ["Plugin"]
       22 LOADK                            R10 K9 ["NoAssets"]
       23 NAMECALL                         R7 R0 K10 ["getText"]
       25 CALL                             R7 3 1
       26 SETTABLEKS                       R7 R6 K6 ["Text"]
       28 LOADK                            R7 K11 ["text-body-medium text-align-x-center auto-xy"]
       29 SETTABLEKS                       R7 R6 K3 ["tag"]
       31 CALL                             R4 2 -1
       32 CALL                             R1 -1 -1
       33 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["View"]
        6 DUPTABLE                         R2 K3 [{"tag"}]
        7 LOADK                            R3 K4 ["size-full align-x-center align-y-center"]
        8 SETTABLEKS                       R3 R2 K2 ["tag"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K0 ["createElement"]
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R4 R5 K5 ["Loading"]
       16 DUPTABLE                         R5 K7 [{"size"}]
       17 GETUPVAL                         R9 1
       18 GETTABLEKS                       R8 R9 K8 ["Enums"]
       20 GETTABLEKS                       R7 R8 K9 ["IconSize"]
       22 GETTABLEKS                       R6 R7 K10 ["Medium"]
       24 SETTABLEKS                       R6 R5 K6 ["size"]
       26 CALL                             R3 2 -1
       27 CALL                             R0 -1 -1
       28 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Uid"]
        3 GETTABLE                         R1 R0 R2
        4 JUMPIF                           R1 ; [+2]
        5 NEWTABLE                         R1 0 0
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R1
        9 CALL                             R2 1 0
       10 GETUPVAL                         R2 2
       11 LOADB                            R3 0
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R2 0 0
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 LOADB                            R2 0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADK                            R1 K0 [""]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 2
        7 DUPTABLE                         R2 K3 [{"Scopes", "Roots"}]
        8 NEWTABLE                         R3 0 1
       10 GETUPVAL                         R4 3
       11 SETLIST                          R3 R4 1 [1]
       13 SETTABLEKS                       R3 R2 K1 ["Scopes"]
       15 NEWTABLE                         R3 0 1
       17 GETUPVAL                         R5 4
       18 GETTABLEKS                       R4 R5 K4 ["RootScope"]
       20 SETLIST                          R3 R4 1 [1]
       22 SETTABLEKS                       R3 R2 K2 ["Roots"]
       24 NEWCLOSURE                       R3 P0
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          UPVAL U5
       27 CAPTURE                          UPVAL U0
       28 NEWCLOSURE                       R4 P1
       29 CAPTURE                          UPVAL U5
       30 CAPTURE                          UPVAL U0
       31 NAMECALL                         R0 R0 K5 ["fetchFoldersAsync"]
       33 CALL                             R0 4 0
       34 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["MoveInfo"]
        5 GETTABLEKS                       R1 R2 K1 ["SourceZone"]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K2 ["UiZone"]
       10 GETTABLEKS                       R2 R3 K3 ["Browser"]
       12 JUMPIFNOTEQ                      R1 R2 ; [+14]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R4 R5 K0 ["MoveInfo"]
       17 GETTABLEKS                       R1 R4 K4 ["DraggedItems"]
       19 LOADNIL                          R2
       20 LOADNIL                          R3
       21 FORGPREP                         R1
       22 LOADB                            R6 1
       23 SETTABLE                         R6 R0 R5
       24 FORGLOOP                         R1 2 ; [-3]
       26 RETURN                           R0 1
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R2 R3 K0 ["MoveInfo"]
       30 GETTABLEKS                       R1 R2 K4 ["DraggedItems"]
       32 GETTABLEKS                       R2 R1 K5 ["Path"]
       34 JUMPIFEQKNIL                     R2 ; [+5]
       36 GETTABLEKS                       R2 R1 K5 ["Path"]
       38 LOADB                            R3 1
       39 SETTABLE                         R3 R0 R2
       40 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K0 ["Uid"]
        5 CALL                             R1 2 1
        6 GETIMPORT                        R2 K3 [table.clone]
        8 GETUPVAL                         R3 2
        9 CALL                             R2 1 1
       10 GETUPVAL                         R5 1
       11 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       13 MOVE                             R4 R2
       14 GETIMPORT                        R3 K5 [table.insert]
       16 CALL                             R3 2 0
       17 GETUPVAL                         R3 3
       18 MOVE                             R4 R2
       19 CALL                             R3 1 0
       20 GETUPVAL                         R3 4
       21 MOVE                             R4 R1
       22 CALL                             R3 1 0
       23 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 LENGTH                           R0 R1
        2 JUMPIFNOTEQKN                    R0 K0 [0] ; [+2]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [table.clone]
        7 GETUPVAL                         R1 0
        8 CALL                             R0 1 1
        9 GETIMPORT                        R1 K5 [table.remove]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 1
       13 JUMPIFNOT                        R1 ; [+3]
       14 GETUPVAL                         R2 1
       15 MOVE                             R3 R1
       16 CALL                             R2 1 0
       17 GETUPVAL                         R2 2
       18 MOVE                             R3 R0
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKS                    R0 K0 [""] ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R2 R3 K1 ["MoveInfo"]
        8 GETUPVAL                         R3 0
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R4 R5 K2 ["CurrentScope"]
       12 NAMECALL                         R0 R0 K3 ["requestMoveSelectionToItem"]
       14 CALL                             R0 4 0
       15 GETUPVAL                         R0 3
       16 NAMECALL                         R0 R0 K4 ["closeDialog"]
       18 CALL                             R0 1 0
       19 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["Path"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 MOVE                             R2 R0
        3 GETUPVAL                         R4 2
        4 GETTABLEKS                       R3 R4 K0 ["Uid"]
        6 CALL                             R1 2 1
        7 GETIMPORT                        R2 K3 [table.clone]
        9 GETUPVAL                         R3 3
       10 CALL                             R2 1 1
       11 GETUPVAL                         R5 2
       12 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       14 MOVE                             R4 R2
       15 GETIMPORT                        R3 K5 [table.insert]
       17 CALL                             R3 2 0
       18 GETUPVAL                         R3 4
       19 MOVE                             R4 R2
       20 CALL                             R3 1 0
       21 GETUPVAL                         R3 5
       22 MOVE                             R4 R1
       23 CALL                             R3 1 0
       24 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K7 [{"Folder", "IsDisabled", "IsSelected", "OnSelect", "OnDrillIn", "LayoutOrder"}]
        5 SETTABLEKS                       R0 R4 K1 ["Folder"]
        7 GETUPVAL                         R6 2
        8 GETTABLEKS                       R7 R0 K8 ["Path"]
       10 GETTABLE                         R5 R6 R7
       11 SETTABLEKS                       R5 R4 K2 ["IsDisabled"]
       13 LOADB                            R5 0
       14 GETUPVAL                         R6 3
       15 JUMPIFEQKS                       R6 K9 [""] ; [+8]
       17 GETUPVAL                         R6 3
       18 GETTABLEKS                       R7 R0 K8 ["Path"]
       20 JUMPIFEQ                         R6 R7 ; [+2]
       22 LOADB                            R5 0 +1
       23 LOADB                            R5 1
       24 SETTABLEKS                       R5 R4 K3 ["IsSelected"]
       26 NEWCLOSURE                       R5 P0
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R5 R4 K4 ["OnSelect"]
       31 NEWCLOSURE                       R5 P1
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U5
       34 CAPTURE                          UPVAL U6
       35 CAPTURE                          UPVAL U7
       36 CAPTURE                          UPVAL U8
       37 CAPTURE                          UPVAL U9
       38 SETTABLEKS                       R5 R4 K5 ["OnDrillIn"]
       40 SETTABLEKS                       R1 R4 K6 ["LayoutOrder"]
       42 CALL                             R2 2 -1
       43 RETURN                           R2 -1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["closeDialog"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K0 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R4 R5 K0 ["use"]
       15 CALL                             R4 0 1
       16 GETUPVAL                         R6 4
       17 GETTABLEKS                       R5 R6 K1 ["new"]
       19 CALL                             R5 0 1
       20 GETUPVAL                         R7 5
       21 GETTABLEKS                       R6 R7 K2 ["useState"]
       23 GETTABLEKS                       R7 R0 K3 ["RootScope"]
       25 CALL                             R6 1 2
       26 GETUPVAL                         R9 5
       27 GETTABLEKS                       R8 R9 K2 ["useState"]
       29 NEWTABLE                         R9 0 0
       31 CALL                             R8 1 2
       32 GETUPVAL                         R11 5
       33 GETTABLEKS                       R10 R11 K2 ["useState"]
       35 NEWTABLE                         R11 0 0
       37 CALL                             R10 1 2
       38 GETUPVAL                         R13 5
       39 GETTABLEKS                       R12 R13 K2 ["useState"]
       41 LOADB                            R13 1
       42 CALL                             R12 1 2
       43 GETUPVAL                         R15 5
       44 GETTABLEKS                       R14 R15 K2 ["useState"]
       46 LOADK                            R15 K4 [""]
       47 CALL                             R14 1 2
       48 GETUPVAL                         R17 5
       49 GETTABLEKS                       R16 R17 K5 ["useEffect"]
       51 NEWCLOSURE                       R17 P0
       52 CAPTURE                          VAL R13
       53 CAPTURE                          VAL R15
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R0
       57 CAPTURE                          VAL R11
       58 NEWTABLE                         R18 0 1
       60 MOVE                             R19 R6
       61 SETLIST                          R18 R19 1 [1]
       63 CALL                             R16 2 0
       64 GETUPVAL                         R17 5
       65 GETTABLEKS                       R16 R17 K6 ["useMemo"]
       67 NEWCLOSURE                       R17 P1
       68 CAPTURE                          VAL R0
       69 CAPTURE                          UPVAL U6
       70 NEWTABLE                         R18 0 1
       72 GETTABLEKS                       R19 R0 K7 ["MoveInfo"]
       74 SETLIST                          R18 R19 1 [1]
       76 CALL                             R16 2 1
       77 NEWCLOSURE                       R17 P2
       78 CAPTURE                          UPVAL U7
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R9
       82 CAPTURE                          VAL R7
       83 NEWCLOSURE                       R18 P3
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R9
       87 NEWCLOSURE                       R19 P4
       88 CAPTURE                          VAL R14
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R0
       91 CAPTURE                          VAL R1
       92 LENGTH                           R21 R8
       93 LOADN                            R22 0
       94 JUMPIFLT                         R22 R21 ; [+2]
       96 LOADB                            R20 0 +1
       97 LOADB                            R20 1
       98 GETUPVAL                         R22 5
       99 GETTABLEKS                       R21 R22 K8 ["createElement"]
      101 GETUPVAL                         R23 8
      102 GETTABLEKS                       R22 R23 K9 ["View"]
      104 DUPTABLE                         R23 K11 [{"tag"}]
      105 LOADK                            R24 K12 ["col size-full padding-medium gap-medium"]
      106 SETTABLEKS                       R24 R23 K10 ["tag"]
      108 DUPTABLE                         R24 K16 [{"Description", "List", "Footer"}]
      109 GETUPVAL                         R26 5
      110 GETTABLEKS                       R25 R26 K8 ["createElement"]
      112 GETUPVAL                         R27 8
      113 GETTABLEKS                       R26 R27 K17 ["Text"]
      115 DUPTABLE                         R27 K19 [{"LayoutOrder", "Text", "tag"}]
      116 LOADN                            R28 1
      117 SETTABLEKS                       R28 R27 K18 ["LayoutOrder"]
      119 LOADK                            R30 K20 ["Dialogs"]
      120 LOADK                            R31 K21 ["MoveDescription"]
      121 NAMECALL                         R28 R4 K22 ["getText"]
      123 CALL                             R28 3 1
      124 SETTABLEKS                       R28 R27 K17 ["Text"]
      126 LOADK                            R28 K23 ["text-body-medium text-wrap auto-xy"]
      127 SETTABLEKS                       R28 R27 K10 ["tag"]
      129 CALL                             R25 2 1
      130 SETTABLEKS                       R25 R24 K13 ["Description"]
      132 GETUPVAL                         R26 5
      133 GETTABLEKS                       R25 R26 K8 ["createElement"]
      135 GETUPVAL                         R27 8
      136 GETTABLEKS                       R26 R27 K9 ["View"]
      138 DUPTABLE                         R27 K24 [{"LayoutOrder", "tag"}]
      139 LOADN                            R28 2
      140 SETTABLEKS                       R28 R27 K18 ["LayoutOrder"]
      142 LOADK                            R28 K25 ["col size-full-0 fill stroke-emphasis radius-medium padding-small"]
      143 SETTABLEKS                       R28 R27 K10 ["tag"]
      145 DUPTABLE                         R28 K27 [{"Content"}]
      146 JUMPIFNOT                        R12 ; [+6]
      147 GETUPVAL                         R30 5
      148 GETTABLEKS                       R29 R30 K8 ["createElement"]
      150 GETUPVAL                         R30 9
      151 CALL                             R29 1 1
      152 JUMP                             ; [+61]
      153 GETUPVAL                         R30 5
      154 GETTABLEKS                       R29 R30 K8 ["createElement"]
      156 GETUPVAL                         R31 8
      157 GETTABLEKS                       R30 R31 K28 ["ScrollView"]
      159 DUPTABLE                         R31 K31 [{"tag", "layout", "scroll"}]
      160 LOADK                            R32 K32 ["size-full-0 fill"]
      161 SETTABLEKS                       R32 R31 K10 ["tag"]
      163 DUPTABLE                         R32 K34 [{"FillDirection"}]
      164 GETIMPORT                        R33 K37 [Enum.FillDirection.Vertical]
      166 SETTABLEKS                       R33 R32 K33 ["FillDirection"]
      168 SETTABLEKS                       R32 R31 K29 ["layout"]
      170 DUPTABLE                         R32 K41 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      171 GETIMPORT                        R33 K44 [Enum.AutomaticSize.Y]
      173 SETTABLEKS                       R33 R32 K38 ["AutomaticCanvasSize"]
      175 GETIMPORT                        R33 K47 [UDim2.fromOffset]
      177 LOADN                            R34 0
      178 LOADN                            R35 0
      179 CALL                             R33 2 1
      180 SETTABLEKS                       R33 R32 K39 ["CanvasSize"]
      182 GETIMPORT                        R33 K48 [Enum.ScrollingDirection.Y]
      184 SETTABLEKS                       R33 R32 K40 ["ScrollingDirection"]
      186 SETTABLEKS                       R32 R31 K30 ["scroll"]
      188 LENGTH                           R33 R10
      189 JUMPIFNOTEQKN                    R33 K49 [0] ; [+7]
      191 GETUPVAL                         R33 5
      192 GETTABLEKS                       R32 R33 K8 ["createElement"]
      194 GETUPVAL                         R33 10
      195 CALL                             R32 1 1
      196 JUMP                             ; [+16]
      197 GETUPVAL                         R33 11
      198 GETTABLEKS                       R32 R33 K50 ["map"]
      200 MOVE                             R33 R10
      201 NEWCLOSURE                       R34 P5
      202 CAPTURE                          UPVAL U5
      203 CAPTURE                          UPVAL U12
      204 CAPTURE                          VAL R16
      205 CAPTURE                          VAL R14
      206 CAPTURE                          VAL R15
      207 CAPTURE                          UPVAL U7
      208 CAPTURE                          VAL R6
      209 CAPTURE                          VAL R8
      210 CAPTURE                          VAL R9
      211 CAPTURE                          VAL R7
      212 CALL                             R32 2 1
      213 CALL                             R29 3 1
      214 SETTABLEKS                       R29 R28 K26 ["Content"]
      216 CALL                             R25 3 1
      217 SETTABLEKS                       R25 R24 K14 ["List"]
      219 GETUPVAL                         R26 5
      220 GETTABLEKS                       R25 R26 K8 ["createElement"]
      222 GETUPVAL                         R27 8
      223 GETTABLEKS                       R26 R27 K9 ["View"]
      225 DUPTABLE                         R27 K24 [{"LayoutOrder", "tag"}]
      226 LOADN                            R28 3
      227 SETTABLEKS                       R28 R27 K18 ["LayoutOrder"]
      229 LOADK                            R28 K51 ["row size-full-0 auto-y align-y-center gap-xsmall"]
      230 SETTABLEKS                       R28 R27 K10 ["tag"]
      232 DUPTABLE                         R28 K56 [{"Back", "Spacer", "Cancel", "Move"}]
      233 MOVE                             R29 R20
      234 JUMPIFNOT                        R29 ; [+43]
      235 GETUPVAL                         R30 5
      236 GETTABLEKS                       R29 R30 K8 ["createElement"]
      238 GETUPVAL                         R31 8
      239 GETTABLEKS                       R30 R31 K57 ["Button"]
      241 DUPTABLE                         R31 K63 [{"LayoutOrder", "text", "variant", "size", "onActivated", "testId"}]
      242 NAMECALL                         R32 R5 K64 ["getNextOrder"]
      244 CALL                             R32 1 1
      245 SETTABLEKS                       R32 R31 K18 ["LayoutOrder"]
      247 LOADK                            R34 K65 ["TopBar"]
      248 LOADK                            R35 K66 ["BackButton"]
      249 NAMECALL                         R32 R4 K22 ["getText"]
      251 CALL                             R32 3 1
      252 SETTABLEKS                       R32 R31 K58 ["text"]
      254 GETUPVAL                         R35 8
      255 GETTABLEKS                       R34 R35 K67 ["Enums"]
      257 GETTABLEKS                       R33 R34 K68 ["ButtonVariant"]
      259 GETTABLEKS                       R32 R33 K69 ["Standard"]
      261 SETTABLEKS                       R32 R31 K59 ["variant"]
      263 GETUPVAL                         R35 8
      264 GETTABLEKS                       R34 R35 K67 ["Enums"]
      266 GETTABLEKS                       R33 R34 K70 ["InputSize"]
      268 GETTABLEKS                       R32 R33 K71 ["Small"]
      270 SETTABLEKS                       R32 R31 K60 ["size"]
      272 SETTABLEKS                       R18 R31 K61 ["onActivated"]
      274 LOADK                            R32 K72 ["move-dialog-back-button"]
      275 SETTABLEKS                       R32 R31 K62 ["testId"]
      277 CALL                             R29 2 1
      278 SETTABLEKS                       R29 R28 K52 ["Back"]
      280 GETUPVAL                         R30 5
      281 GETTABLEKS                       R29 R30 K8 ["createElement"]
      283 GETUPVAL                         R31 8
      284 GETTABLEKS                       R30 R31 K9 ["View"]
      286 DUPTABLE                         R31 K24 [{"LayoutOrder", "tag"}]
      287 NAMECALL                         R32 R5 K64 ["getNextOrder"]
      289 CALL                             R32 1 1
      290 SETTABLEKS                       R32 R31 K18 ["LayoutOrder"]
      292 LOADK                            R32 K73 ["fill auto-y"]
      293 SETTABLEKS                       R32 R31 K10 ["tag"]
      295 CALL                             R29 2 1
      296 SETTABLEKS                       R29 R28 K53 ["Spacer"]
      298 GETUPVAL                         R30 5
      299 GETTABLEKS                       R29 R30 K8 ["createElement"]
      301 GETUPVAL                         R31 8
      302 GETTABLEKS                       R30 R31 K57 ["Button"]
      304 DUPTABLE                         R31 K63 [{"LayoutOrder", "text", "variant", "size", "onActivated", "testId"}]
      305 NAMECALL                         R32 R5 K64 ["getNextOrder"]
      307 CALL                             R32 1 1
      308 SETTABLEKS                       R32 R31 K18 ["LayoutOrder"]
      310 LOADK                            R34 K74 ["MainView"]
      311 LOADK                            R35 K75 ["CancelText"]
      312 NAMECALL                         R32 R4 K22 ["getText"]
      314 CALL                             R32 3 1
      315 SETTABLEKS                       R32 R31 K58 ["text"]
      317 GETUPVAL                         R35 8
      318 GETTABLEKS                       R34 R35 K67 ["Enums"]
      320 GETTABLEKS                       R33 R34 K68 ["ButtonVariant"]
      322 GETTABLEKS                       R32 R33 K69 ["Standard"]
      324 SETTABLEKS                       R32 R31 K59 ["variant"]
      326 GETUPVAL                         R35 8
      327 GETTABLEKS                       R34 R35 K67 ["Enums"]
      329 GETTABLEKS                       R33 R34 K70 ["InputSize"]
      331 GETTABLEKS                       R32 R33 K71 ["Small"]
      333 SETTABLEKS                       R32 R31 K60 ["size"]
      335 NEWCLOSURE                       R32 P6
      336 CAPTURE                          VAL R1
      337 SETTABLEKS                       R32 R31 K61 ["onActivated"]
      339 LOADK                            R32 K76 ["move-dialog-cancel-button"]
      340 SETTABLEKS                       R32 R31 K62 ["testId"]
      342 CALL                             R29 2 1
      343 SETTABLEKS                       R29 R28 K54 ["Cancel"]
      345 GETUPVAL                         R30 5
      346 GETTABLEKS                       R29 R30 K8 ["createElement"]
      348 GETUPVAL                         R31 8
      349 GETTABLEKS                       R30 R31 K57 ["Button"]
      351 DUPTABLE                         R31 K78 [{"LayoutOrder", "text", "variant", "size", "isDisabled", "onActivated", "testId"}]
      352 NAMECALL                         R32 R5 K64 ["getNextOrder"]
      354 CALL                             R32 1 1
      355 SETTABLEKS                       R32 R31 K18 ["LayoutOrder"]
      357 LOADK                            R34 K79 ["ContextMenu"]
      358 LOADK                            R35 K55 ["Move"]
      359 NAMECALL                         R32 R4 K22 ["getText"]
      361 CALL                             R32 3 1
      362 SETTABLEKS                       R32 R31 K58 ["text"]
      364 GETUPVAL                         R35 8
      365 GETTABLEKS                       R34 R35 K67 ["Enums"]
      367 GETTABLEKS                       R33 R34 K68 ["ButtonVariant"]
      369 GETTABLEKS                       R32 R33 K80 ["Emphasis"]
      371 SETTABLEKS                       R32 R31 K59 ["variant"]
      373 GETUPVAL                         R35 8
      374 GETTABLEKS                       R34 R35 K67 ["Enums"]
      376 GETTABLEKS                       R33 R34 K70 ["InputSize"]
      378 GETTABLEKS                       R32 R33 K71 ["Small"]
      380 SETTABLEKS                       R32 R31 K60 ["size"]
      382 JUMPIFEQKS                       R14 K4 [""] ; [+2]
      384 LOADB                            R32 0 +1
      385 LOADB                            R32 1
      386 SETTABLEKS                       R32 R31 K77 ["isDisabled"]
      388 SETTABLEKS                       R19 R31 K61 ["onActivated"]
      390 LOADK                            R32 K81 ["move-dialog-move-button"]
      391 SETTABLEKS                       R32 R31 K62 ["testId"]
      393 CALL                             R29 2 1
      394 SETTABLEKS                       R29 R28 K55 ["Move"]
      396 CALL                             R25 3 1
      397 SETTABLEKS                       R25 R24 K15 ["Footer"]
      399 CALL                             R21 3 -1
      400 RETURN                           R21 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["Localization"]
       39 GETTABLEKS                       R8 R4 K13 ["Util"]
       41 GETTABLEKS                       R7 R8 K14 ["LayoutOrderIterator"]
       43 GETIMPORT                        R8 K5 [require]
       45 GETTABLEKS                       R10 R0 K15 ["Src"]
       47 GETTABLEKS                       R9 R10 K16 ["Types"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K5 [require]
       52 GETTABLEKS                       R11 R0 K15 ["Src"]
       54 GETTABLEKS                       R10 R11 K17 ["Networking"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K5 [require]
       59 GETTABLEKS                       R13 R0 K15 ["Src"]
       61 GETTABLEKS                       R12 R13 K18 ["Controllers"]
       63 GETTABLEKS                       R11 R12 K19 ["PluginController"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K5 [require]
       68 GETTABLEKS                       R14 R0 K15 ["Src"]
       70 GETTABLEKS                       R13 R14 K18 ["Controllers"]
       72 GETTABLEKS                       R12 R13 K20 ["ItemsController"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K5 [require]
       77 GETTABLEKS                       R15 R0 K15 ["Src"]
       79 GETTABLEKS                       R14 R15 K13 ["Util"]
       81 GETTABLEKS                       R13 R14 K21 ["convertFolderItemToScope"]
       83 CALL                             R12 1 1
       84 DUPCLOSURE                       R13 K22 [PROTO_0]
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R1
       87 DUPCLOSURE                       R14 K23 [PROTO_1]
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R3
       91 DUPCLOSURE                       R15 K24 [PROTO_2]
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R3
       94 DUPCLOSURE                       R16 K25 [PROTO_14]
       95 CAPTURE                          VAL R10
       96 CAPTURE                          VAL R11
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R8
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R15
      105 CAPTURE                          VAL R14
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R13
      108 RETURN                           R16 1
