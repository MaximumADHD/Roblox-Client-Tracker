PROTO_0:
        0 GETIMPORT                        R0 K1 [tick]
        2 CALL                             R0 0 1
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K2 ["current"]
        6 SUB                              R1 R0 R2
        7 GETUPVAL                         R2 1
        8 JUMPIFNOTLT                      R1 R2 ; [+10]
       10 GETUPVAL                         R1 0
       11 LOADN                            R2 0
       12 SETTABLEKS                       R2 R1 K2 ["current"]
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R1 R1 K3 ["OnDrillIn"]
       17 CALL                             R1 0 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R1 0
       20 SETTABLEKS                       R0 R1 K2 ["current"]
       22 GETUPVAL                         R1 2
       23 GETTABLEKS                       R1 R1 K4 ["OnSelect"]
       25 CALL                             R1 0 0
       26 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["use"]
        9 CALL                             R2 0 1
       10 GETTABLEKS                       R3 R2 K3 ["clickDelay"]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K4 ["useRef"]
       15 LOADN                            R5 0
       16 CALL                             R4 1 1
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R5 R5 K5 ["createElement"]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K6 ["View"]
       23 DUPTABLE                         R7 K13 [{["LayoutOrder"], ["onActivated"], ["stateLayer"], ["tag"], ["testId"] = "move-dialog-folder-row"}]
       24 GETTABLEKS                       R8 R0 K7 ["LayoutOrder"]
       26 SETTABLEKS                       R8 R7 K7 ["LayoutOrder"]
       28 GETTABLEKS                       R9 R0 K14 ["IsDisabled"]
       30 JUMPIF                           R9 ; [+5]
       31 NEWCLOSURE                       R8 P0
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R0
       35 JUMP                             ; [+1]
       36 LOADNIL                          R8
       37 SETTABLEKS                       R8 R7 K8 ["onActivated"]
       39 DUPTABLE                         R8 K16 [{"affordance"}]
       40 GETUPVAL                         R9 0
       41 GETTABLEKS                       R9 R9 K17 ["Enums"]
       43 GETTABLEKS                       R9 R9 K18 ["StateLayerAffordance"]
       45 GETTABLEKS                       R9 R9 K19 ["None"]
       47 SETTABLEKS                       R9 R8 K15 ["affordance"]
       49 SETTABLEKS                       R8 R7 K9 ["stateLayer"]
       51 NEWTABLE                         R8 4 0
       53 LOADB                            R9 1
       54 SETTABLEKS                       R9 R8 K20 ["row align-y-center gap-small size-full-0 auto-y padding-xsmall radius-small"]
       56 GETTABLEKS                       R9 R0 K21 ["IsSelected"]
       58 SETTABLEKS                       R9 R8 K22 ["bg-action-soft-emphasis"]
       60 GETTABLEKS                       R10 R0 K21 ["IsSelected"]
       62 NOT                              R9 R10
       63 SETTABLEKS                       R9 R8 K23 ["am-hover"]
       65 SETTABLEKS                       R8 R7 K10 ["tag"]
       67 DUPTABLE                         R8 K27 [{"Icon", "Name", "DrillInButton"}]
       68 GETUPVAL                         R9 2
       69 GETTABLEKS                       R9 R9 K5 ["createElement"]
       71 GETUPVAL                         R10 0
       72 GETTABLEKS                       R10 R10 K24 ["Icon"]
       74 DUPTABLE                         R11 K33 [{["LayoutOrder"] = 1, ["name"], ["variant"], ["style"], ["size"]}]
       75 GETUPVAL                         R12 0
       76 GETTABLEKS                       R12 R12 K17 ["Enums"]
       78 GETTABLEKS                       R12 R12 K34 ["IconName"]
       80 GETTABLEKS                       R12 R12 K35 ["Folder"]
       82 SETTABLEKS                       R12 R11 K29 ["name"]
       84 GETUPVAL                         R12 0
       85 GETTABLEKS                       R12 R12 K17 ["Enums"]
       87 GETTABLEKS                       R12 R12 K36 ["IconVariant"]
       89 GETTABLEKS                       R12 R12 K37 ["Filled"]
       91 SETTABLEKS                       R12 R11 K30 ["variant"]
       93 GETTABLEKS                       R12 R1 K38 ["Color"]
       95 GETTABLEKS                       R12 R12 K39 ["Extended"]
       97 GETTABLEKS                       R12 R12 K40 ["Yellow"]
       99 GETTABLEKS                       R12 R12 K41 ["Yellow_300"]
      101 SETTABLEKS                       R12 R11 K31 ["style"]
      103 GETTABLEKS                       R12 R1 K42 ["Size"]
      105 GETTABLEKS                       R12 R12 K43 ["Size_400"]
      107 SETTABLEKS                       R12 R11 K32 ["size"]
      109 CALL                             R9 2 1
      110 SETTABLEKS                       R9 R8 K24 ["Icon"]
      112 GETUPVAL                         R9 2
      113 GETTABLEKS                       R9 R9 K5 ["createElement"]
      115 GETUPVAL                         R10 0
      116 GETTABLEKS                       R10 R10 K44 ["Text"]
      118 DUPTABLE                         R11 K46 [{["LayoutOrder"] = 2, ["Text"], ["tag"]}]
      119 GETTABLEKS                       R12 R0 K35 ["Folder"]
      121 GETTABLEKS                       R12 R12 K25 ["Name"]
      123 SETTABLEKS                       R12 R11 K44 ["Text"]
      125 NEWTABLE                         R12 2 0
      127 LOADB                            R13 1
      128 SETTABLEKS                       R13 R12 K47 ["fill auto-y text-label-medium text-align-x-left text-truncate-end"]
      130 GETTABLEKS                       R13 R0 K14 ["IsDisabled"]
      132 SETTABLEKS                       R13 R12 K48 ["content-inverse-muted"]
      134 SETTABLEKS                       R12 R11 K10 ["tag"]
      136 CALL                             R9 2 1
      137 SETTABLEKS                       R9 R8 K25 ["Name"]
      139 LOADB                            R9 0
      140 GETTABLEKS                       R10 R0 K14 ["IsDisabled"]
      142 JUMPIFEQKB                       R10 TRUE ; [+39]
      144 GETUPVAL                         R9 2
      145 GETTABLEKS                       R9 R9 K5 ["createElement"]
      147 GETUPVAL                         R10 0
      148 GETTABLEKS                       R10 R10 K6 ["View"]
      150 DUPTABLE                         R11 K52 [{["LayoutOrder"] = 3, ["onActivated"], ["tag"] = "align-y-center auto-xy", ["testId"] = "folder-row-drill-in"}]
      151 GETTABLEKS                       R12 R0 K53 ["OnDrillIn"]
      153 SETTABLEKS                       R12 R11 K8 ["onActivated"]
      155 GETUPVAL                         R12 2
      156 GETTABLEKS                       R12 R12 K5 ["createElement"]
      158 GETUPVAL                         R13 0
      159 GETTABLEKS                       R13 R13 K24 ["Icon"]
      161 DUPTABLE                         R14 K54 [{"name", "size"}]
      162 GETUPVAL                         R15 0
      163 GETTABLEKS                       R15 R15 K17 ["Enums"]
      165 GETTABLEKS                       R15 R15 K34 ["IconName"]
      167 GETTABLEKS                       R15 R15 K55 ["ChevronSmallRight"]
      169 SETTABLEKS                       R15 R14 K29 ["name"]
      171 GETUPVAL                         R15 0
      172 GETTABLEKS                       R15 R15 K17 ["Enums"]
      174 GETTABLEKS                       R15 R15 K56 ["IconSize"]
      176 GETTABLEKS                       R15 R15 K57 ["Small"]
      178 SETTABLEKS                       R15 R14 K32 ["size"]
      180 CALL                             R12 2 -1
      181 CALL                             R9 -1 1
      182 SETTABLEKS                       R9 R8 K26 ["DrillInButton"]
      184 CALL                             R5 3 -1
      185 RETURN                           R5 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["use"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["createElement"]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["View"]
       10 DUPTABLE                         R3 K5 [{["tag"] = "align-x-center align-y-center size-full padding-medium"}]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K1 ["createElement"]
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R5 R5 K6 ["Text"]
       17 DUPTABLE                         R6 K8 [{["Text"], ["tag"] = "auto-xy text-body-medium text-align-x-center"}]
       18 LOADK                            R9 K9 ["Plugin"]
       19 LOADK                            R10 K10 ["NoAssets"]
       20 NAMECALL                         R7 R0 K11 ["getText"]
       22 CALL                             R7 3 1
       23 SETTABLEKS                       R7 R6 K6 ["Text"]
       25 CALL                             R4 2 -1
       26 CALL                             R1 -1 -1
       27 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["View"]
        6 DUPTABLE                         R2 K4 [{["tag"] = "align-x-center align-y-center size-full"}]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K0 ["createElement"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K5 ["Loading"]
       13 DUPTABLE                         R5 K7 [{"size"}]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K8 ["Enums"]
       17 GETTABLEKS                       R6 R6 K9 ["IconSize"]
       19 GETTABLEKS                       R6 R6 K10 ["Medium"]
       21 SETTABLEKS                       R6 R5 K6 ["size"]
       23 CALL                             R3 2 -1
       24 CALL                             R0 -1 -1
       25 RETURN                           R0 -1

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETUPVAL                         R7 0
        7 MOVE                             R9 R6
        8 NAMECALL                         R7 R7 K0 ["getScopeWithUid"]
       10 CALL                             R7 2 1
       11 JUMPIFNOT                        R7 ; [+24]
       12 GETTABLEKS                       R10 R7 K1 ["Type"]
       14 GETUPVAL                         R11 1
       15 GETTABLEKS                       R11 R11 K2 ["ScopeType"]
       17 GETTABLEKS                       R11 R11 K3 ["Folder"]
       19 JUMPIFEQ                         R10 R11 ; [+2]
       21 LOADB                            R9 0 +1
       22 LOADB                            R9 1
       23 FASTCALL2K                       ASSERT R9 K4 ; [+4]
       25 LOADK                            R10 K4 ["Expected child scope to be a folder"]
       26 GETIMPORT                        R8 K6 [assert]
       28 CALL                             R8 2 0
       29 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       31 MOVE                             R9 R1
       32 MOVE                             R10 R7
       33 GETIMPORT                        R8 K9 [table.insert]
       35 CALL                             R8 2 0
       36 FORGLOOP                         R2 2 ; [-31]
       38 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["Utils"]
        3 GETTABLEKS                       R3 R3 K1 ["naturalCompare"]
        5 GETTABLEKS                       R4 R0 K2 ["Name"]
        7 GETTABLEKS                       R5 R1 K2 ["Name"]
        9 CALL                             R3 2 1
       10 LOADN                            R4 0
       11 JUMPIFLT                         R3 R4 ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Uid"]
        3 GETTABLE                         R1 R0 R2
        4 JUMPIF                           R1 ; [+2]
        5 NEWTABLE                         R1 0 0
        7 NEWTABLE                         R2 0 0
        9 MOVE                             R3 R1
       10 LOADNIL                          R4
       11 LOADNIL                          R5
       12 FORGPREP                         R3
       13 MOVE                             R9 R2
       14 GETUPVAL                         R10 1
       15 MOVE                             R11 R7
       16 GETUPVAL                         R12 0
       17 GETTABLEKS                       R12 R12 K0 ["Uid"]
       19 CALL                             R10 2 -1
       20 FASTCALL                         TABLE_INSERT ; [+2]
       21 GETIMPORT                        R8 K3 [table.insert]
       23 CALL                             R8 -1 0
       24 FORGLOOP                         R3 2 ; [-12]
       26 GETIMPORT                        R3 K5 [table.sort]
       28 MOVE                             R4 R2
       29 DUPCLOSURE                       R5 K6 [PROTO_5]
       30 CAPTURE                          UPVAL U2
       31 CALL                             R3 2 0
       32 GETUPVAL                         R3 3
       33 MOVE                             R4 R2
       34 CALL                             R3 1 0
       35 GETUPVAL                         R3 4
       36 LOADB                            R4 0
       37 CALL                             R3 1 0
       38 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R2 0 0
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 LOADB                            R2 0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 NEWCLOSURE                       R0 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U0
        9 NEWCLOSURE                       R1 P1
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U0
       12 GETUPVAL                         R2 5
       13 CALL                             R2 0 1
       14 JUMPIFNOT                        R2 ; [+16]
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R2 R2 K0 ["Networking"]
       18 GETTABLEKS                       R2 R2 K1 ["fetchFoldersAsync"]
       20 GETUPVAL                         R3 1
       21 GETUPVAL                         R4 6
       22 GETTABLEKS                       R4 R4 K2 ["RootScope"]
       24 CALL                             R2 2 1
       25 MOVE                             R4 R0
       26 MOVE                             R5 R1
       27 NAMECALL                         R2 R2 K3 ["andThen"]
       29 CALL                             R2 3 0
       30 RETURN                           R0 0
       31 GETUPVAL                         R2 7
       32 DUPTABLE                         R4 K6 [{"Scopes", "Roots"}]
       33 NEWTABLE                         R5 0 1
       35 GETUPVAL                         R6 1
       36 SETLIST                          R5 R6 1 [1]
       38 SETTABLEKS                       R5 R4 K4 ["Scopes"]
       40 NEWTABLE                         R5 0 1
       42 GETUPVAL                         R6 6
       43 GETTABLEKS                       R6 R6 K2 ["RootScope"]
       45 SETLIST                          R5 R6 1 [1]
       47 SETTABLEKS                       R5 R4 K5 ["Roots"]
       49 MOVE                             R5 R0
       50 MOVE                             R6 R1
       51 NAMECALL                         R2 R2 K1 ["fetchFoldersAsync"]
       53 CALL                             R2 4 0
       54 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 [""]
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADK                            R1 K0 [""]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 [""]
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADK                            R1 K0 [""]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R2 3
        8 GETTABLEKS                       R2 R2 K1 ["Uid"]
       10 NAMECALL                         R0 R0 K2 ["getScopeWithUid"]
       12 CALL                             R0 2 1
       13 JUMPIFNOT                        R0 ; [+14]
       14 GETTABLEKS                       R1 R0 K3 ["Children"]
       16 JUMPIFEQKNIL                     R1 ; [+11]
       18 GETUPVAL                         R1 4
       19 GETUPVAL                         R2 5
       20 GETTABLEKS                       R3 R0 K3 ["Children"]
       22 CALL                             R2 1 1
       23 CALL                             R1 1 0
       24 GETUPVAL                         R1 6
       25 LOADB                            R2 0
       26 CALL                             R1 1 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R1 7
       29 CALL                             R1 0 0
       30 RETURN                           R0 0

PROTO_11:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["MoveInfo"]
        5 GETTABLEKS                       R1 R1 K1 ["SourceZone"]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["UiZone"]
       10 GETTABLEKS                       R2 R2 K3 ["Browser"]
       12 JUMPIFNOTEQ                      R1 R2 ; [+14]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K0 ["MoveInfo"]
       17 GETTABLEKS                       R1 R1 K4 ["DraggedItems"]
       19 LOADNIL                          R2
       20 LOADNIL                          R3
       21 FORGPREP                         R1
       22 LOADB                            R6 1
       23 SETTABLE                         R6 R0 R5
       24 FORGLOOP                         R1 2 ; [-3]
       26 RETURN                           R0 1
       27 GETUPVAL                         R1 0
       28 GETTABLEKS                       R1 R1 K0 ["MoveInfo"]
       30 GETTABLEKS                       R1 R1 K4 ["DraggedItems"]
       32 GETTABLEKS                       R2 R1 K5 ["Path"]
       34 JUMPIFEQKNIL                     R2 ; [+5]
       36 GETTABLEKS                       R2 R1 K5 ["Path"]
       38 LOADB                            R3 1
       39 SETTABLE                         R3 R0 R2
       40 RETURN                           R0 1

PROTO_12:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R4 1
        5 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
        7 MOVE                             R3 R1
        8 GETIMPORT                        R2 K4 [table.insert]
       10 CALL                             R2 2 0
       11 GETUPVAL                         R2 2
       12 MOVE                             R3 R1
       13 CALL                             R2 1 0
       14 GETUPVAL                         R2 3
       15 MOVE                             R3 R0
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_13:
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

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["RootScope"]
        4 JUMPIFNOTEQ                      R0 R1 ; [+20]
        6 GETUPVAL                         R0 2
        7 JUMPIFNOTEQKS                    R0 K1 [""] ; [+17]
        9 GETUPVAL                         R0 3
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K2 ["MoveInfo"]
       13 LOADNIL                          R3
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K3 ["CurrentScope"]
       17 NAMECALL                         R0 R0 K4 ["requestMoveSelectionToItem"]
       19 CALL                             R0 4 0
       20 GETUPVAL                         R0 4
       21 NAMECALL                         R0 R0 K5 ["closeDialog"]
       23 CALL                             R0 1 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R0 2
       26 JUMPIFNOTEQKS                    R0 K1 [""] ; [+2]
       28 RETURN                           R0 0
       29 GETUPVAL                         R0 3
       30 GETUPVAL                         R2 1
       31 GETTABLEKS                       R2 R2 K2 ["MoveInfo"]
       33 GETUPVAL                         R3 2
       34 GETUPVAL                         R4 1
       35 GETTABLEKS                       R4 R4 K3 ["CurrentScope"]
       37 NAMECALL                         R0 R0 K4 ["requestMoveSelectionToItem"]
       39 CALL                             R0 4 0
       40 GETUPVAL                         R0 4
       41 NAMECALL                         R0 R0 K5 ["closeDialog"]
       43 CALL                             R0 1 0
       44 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Path"]
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["Name"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [table.clone]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R4 2
        6 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
        8 MOVE                             R3 R1
        9 GETIMPORT                        R2 K4 [table.insert]
       11 CALL                             R2 2 0
       12 GETUPVAL                         R2 3
       13 MOVE                             R3 R1
       14 CALL                             R2 1 0
       15 GETUPVAL                         R2 4
       16 MOVE                             R3 R0
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R3 R0 K0 ["Path"]
        2 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        4 LOADK                            R4 K1 ["Folder item is missing a Path"]
        5 GETIMPORT                        R2 K3 [assert]
        7 CALL                             R2 2 0
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K4 ["createElement"]
       11 GETUPVAL                         R3 1
       12 DUPTABLE                         R4 K11 [{"Folder", "IsDisabled", "IsSelected", "OnSelect", "OnDrillIn", "LayoutOrder"}]
       13 SETTABLEKS                       R0 R4 K5 ["Folder"]
       15 GETTABLEKS                       R6 R0 K0 ["Path"]
       17 JUMPIFNOT                        R6 ; [+5]
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R7 R0 K0 ["Path"]
       21 GETTABLE                         R5 R6 R7
       22 JUMP                             ; [+1]
       23 LOADNIL                          R5
       24 SETTABLEKS                       R5 R4 K6 ["IsDisabled"]
       26 LOADB                            R5 0
       27 GETUPVAL                         R6 3
       28 JUMPIFEQKS                       R6 K12 [""] ; [+8]
       30 GETUPVAL                         R6 3
       31 GETTABLEKS                       R7 R0 K0 ["Path"]
       33 JUMPIFEQ                         R6 R7 ; [+2]
       35 LOADB                            R5 0 +1
       36 LOADB                            R5 1
       37 SETTABLEKS                       R5 R4 K7 ["IsSelected"]
       39 NEWCLOSURE                       R5 P0
       40 CAPTURE                          UPVAL U4
       41 CAPTURE                          VAL R0
       42 CAPTURE                          UPVAL U5
       43 SETTABLEKS                       R5 R4 K8 ["OnSelect"]
       45 NEWCLOSURE                       R5 P1
       46 CAPTURE                          VAL R0
       47 CAPTURE                          UPVAL U6
       48 CAPTURE                          UPVAL U7
       49 CAPTURE                          UPVAL U8
       50 CAPTURE                          UPVAL U9
       51 SETTABLEKS                       R5 R4 K9 ["OnDrillIn"]
       53 SETTABLEKS                       R1 R4 K10 ["LayoutOrder"]
       55 CALL                             R2 2 -1
       56 RETURN                           R2 -1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["closeDialog"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K0 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K0 ["use"]
       15 CALL                             R4 0 1
       16 GETUPVAL                         R5 4
       17 GETTABLEKS                       R5 R5 K1 ["new"]
       19 CALL                             R5 0 1
       20 GETUPVAL                         R6 5
       21 GETTABLEKS                       R6 R6 K0 ["use"]
       23 CALL                             R6 0 1
       24 GETUPVAL                         R7 6
       25 GETTABLEKS                       R7 R7 K2 ["useState"]
       27 GETTABLEKS                       R8 R0 K3 ["RootScope"]
       29 CALL                             R7 1 2
       30 GETUPVAL                         R9 6
       31 GETTABLEKS                       R9 R9 K2 ["useState"]
       33 NEWTABLE                         R10 0 0
       35 CALL                             R9 1 2
       36 GETUPVAL                         R11 6
       37 GETTABLEKS                       R11 R11 K2 ["useState"]
       39 NEWTABLE                         R12 0 0
       41 CALL                             R11 1 2
       42 GETUPVAL                         R13 6
       43 GETTABLEKS                       R13 R13 K2 ["useState"]
       45 LOADB                            R14 1
       46 CALL                             R13 1 2
       47 GETUPVAL                         R15 6
       48 GETTABLEKS                       R15 R15 K2 ["useState"]
       50 LOADK                            R16 K4 [""]
       51 CALL                             R15 1 2
       52 GETUPVAL                         R17 6
       53 GETTABLEKS                       R17 R17 K2 ["useState"]
       55 LOADK                            R18 K4 [""]
       56 CALL                             R17 1 2
       57 NEWCLOSURE                       R19 P0
       58 CAPTURE                          VAL R6
       59 CAPTURE                          UPVAL U7
       60 GETUPVAL                         R20 8
       61 CALL                             R20 0 1
       62 GETTABLEKS                       R20 R20 K5 ["Items"]
       64 NEWCLOSURE                       R21 P1
       65 CAPTURE                          VAL R14
       66 CAPTURE                          VAL R7
       67 CAPTURE                          UPVAL U9
       68 CAPTURE                          UPVAL U10
       69 CAPTURE                          VAL R12
       70 CAPTURE                          UPVAL U11
       71 CAPTURE                          VAL R0
       72 CAPTURE                          VAL R3
       73 NEWCLOSURE                       R22 P2
       74 CAPTURE                          VAL R16
       75 CAPTURE                          VAL R18
       76 GETUPVAL                         R23 6
       77 GETTABLEKS                       R23 R23 K6 ["useEffect"]
       79 NEWCLOSURE                       R24 P3
       80 CAPTURE                          VAL R16
       81 CAPTURE                          VAL R18
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R12
       85 CAPTURE                          VAL R19
       86 CAPTURE                          VAL R14
       87 CAPTURE                          VAL R21
       88 NEWTABLE                         R25 0 2
       90 MOVE                             R26 R7
       91 MOVE                             R27 R20
       92 SETLIST                          R25 R26 2 [1]
       94 CALL                             R23 2 0
       95 GETUPVAL                         R23 6
       96 GETTABLEKS                       R23 R23 K7 ["useMemo"]
       98 NEWCLOSURE                       R24 P4
       99 CAPTURE                          VAL R0
      100 CAPTURE                          UPVAL U7
      101 NEWTABLE                         R25 0 1
      103 GETTABLEKS                       R26 R0 K8 ["MoveInfo"]
      105 SETLIST                          R25 R26 1 [1]
      107 CALL                             R23 2 1
      108 NEWCLOSURE                       R24 P5
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R7
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R8
      113 NEWCLOSURE                       R25 P6
      114 CAPTURE                          VAL R9
      115 CAPTURE                          VAL R8
      116 CAPTURE                          VAL R10
      117 NEWCLOSURE                       R26 P7
      118 CAPTURE                          VAL R7
      119 CAPTURE                          VAL R0
      120 CAPTURE                          VAL R15
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R1
      123 LENGTH                           R28 R9
      124 LOADN                            R29 0
      125 JUMPIFLT                         R29 R28 ; [+2]
      127 LOADB                            R27 0 +1
      128 LOADB                            R27 1
      129 GETTABLEKS                       R29 R0 K3 ["RootScope"]
      131 JUMPIFNOTEQ                      R7 R29 ; [+8]
      133 JUMPIFNOTEQKS                    R15 K4 [""] ; [+6]
      135 GETTABLEKS                       R28 R0 K3 ["RootScope"]
      137 GETTABLEKS                       R28 R28 K9 ["Name"]
      139 JUMP                             ; [+1]
      140 MOVE                             R28 R17
      141 GETUPVAL                         R29 6
      142 GETTABLEKS                       R29 R29 K10 ["createElement"]
      144 GETUPVAL                         R30 12
      145 GETTABLEKS                       R30 R30 K11 ["View"]
      147 DUPTABLE                         R31 K14 [{["tag"] = "col gap-medium size-full padding-medium"}]
      148 DUPTABLE                         R32 K18 [{"Description", "List", "Footer"}]
      149 GETUPVAL                         R33 6
      150 GETTABLEKS                       R33 R33 K10 ["createElement"]
      152 GETUPVAL                         R34 12
      153 GETTABLEKS                       R34 R34 K11 ["View"]
      155 DUPTABLE                         R35 K22 [{["LayoutOrder"] = 1, ["tag"] = "row align-y-center gap-small size-full-0 auto-y"}]
      156 DUPTABLE                         R36 K25 [{"Text", "RefreshButton"}]
      157 GETUPVAL                         R37 6
      158 GETTABLEKS                       R37 R37 K10 ["createElement"]
      160 GETUPVAL                         R38 12
      161 GETTABLEKS                       R38 R38 K23 ["Text"]
      163 DUPTABLE                         R39 K27 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "fill text-body-medium text-wrap text-align-x-left"}]
      164 LOADK                            R42 K28 ["Dialogs"]
      165 LOADK                            R43 K29 ["MoveDescription"]
      166 NAMECALL                         R40 R4 K30 ["getText"]
      168 CALL                             R40 3 1
      169 SETTABLEKS                       R40 R39 K23 ["Text"]
      171 CALL                             R37 2 1
      172 SETTABLEKS                       R37 R36 K23 ["Text"]
      174 GETUPVAL                         R37 6
      175 GETTABLEKS                       R37 R37 K10 ["createElement"]
      177 GETUPVAL                         R38 12
      178 GETTABLEKS                       R38 R38 K31 ["Tooltip"]
      180 DUPTABLE                         R39 K36 [{["LayoutOrder"] = 2, ["title"], ["align"], ["side"]}]
      181 LOADK                            R42 K31 ["Tooltip"]
      182 LOADK                            R43 K37 ["Refresh"]
      183 NAMECALL                         R40 R4 K30 ["getText"]
      185 CALL                             R40 3 1
      186 SETTABLEKS                       R40 R39 K33 ["title"]
      188 GETUPVAL                         R40 12
      189 GETTABLEKS                       R40 R40 K38 ["Enums"]
      191 GETTABLEKS                       R40 R40 K39 ["PopoverAlign"]
      193 GETTABLEKS                       R40 R40 K40 ["End"]
      195 SETTABLEKS                       R40 R39 K34 ["align"]
      197 GETUPVAL                         R40 12
      198 GETTABLEKS                       R40 R40 K38 ["Enums"]
      200 GETTABLEKS                       R40 R40 K41 ["PopoverSide"]
      202 GETTABLEKS                       R40 R40 K42 ["Bottom"]
      204 SETTABLEKS                       R40 R39 K35 ["side"]
      206 GETUPVAL                         R40 6
      207 GETTABLEKS                       R40 R40 K10 ["createElement"]
      209 GETUPVAL                         R41 12
      210 GETTABLEKS                       R41 R41 K43 ["IconButton"]
      212 DUPTABLE                         R42 K49 [{"onActivated", "variant", "isDisabled", "size", "icon"}]
      213 SETTABLEKS                       R21 R42 K44 ["onActivated"]
      215 GETUPVAL                         R43 12
      216 GETTABLEKS                       R43 R43 K38 ["Enums"]
      218 GETTABLEKS                       R43 R43 K50 ["ButtonVariant"]
      220 GETTABLEKS                       R43 R43 K51 ["Utility"]
      222 SETTABLEKS                       R43 R42 K45 ["variant"]
      224 SETTABLEKS                       R13 R42 K46 ["isDisabled"]
      226 GETUPVAL                         R43 12
      227 GETTABLEKS                       R43 R43 K38 ["Enums"]
      229 GETTABLEKS                       R43 R43 K52 ["InputSize"]
      231 GETTABLEKS                       R43 R43 K53 ["XSmall"]
      233 SETTABLEKS                       R43 R42 K47 ["size"]
      235 GETUPVAL                         R43 12
      236 GETTABLEKS                       R43 R43 K38 ["Enums"]
      238 GETTABLEKS                       R43 R43 K54 ["IconName"]
      240 GETTABLEKS                       R43 R43 K55 ["TwoArrowsSpinClockwise"]
      242 SETTABLEKS                       R43 R42 K48 ["icon"]
      244 CALL                             R40 2 -1
      245 CALL                             R37 -1 1
      246 SETTABLEKS                       R37 R36 K24 ["RefreshButton"]
      248 CALL                             R33 3 1
      249 SETTABLEKS                       R33 R32 K15 ["Description"]
      251 GETUPVAL                         R33 6
      252 GETTABLEKS                       R33 R33 K10 ["createElement"]
      254 GETUPVAL                         R34 12
      255 GETTABLEKS                       R34 R34 K11 ["View"]
      257 DUPTABLE                         R35 K57 [{["LayoutOrder"] = 2, ["tag"] = "col fill size-full-0 padding-small stroke-emphasis radius-medium"}]
      258 DUPTABLE                         R36 K59 [{"Content"}]
      259 JUMPIFNOT                        R13 ; [+6]
      260 GETUPVAL                         R37 6
      261 GETTABLEKS                       R37 R37 K10 ["createElement"]
      263 GETUPVAL                         R38 13
      264 CALL                             R37 1 1
      265 JUMP                             ; [+72]
      266 GETUPVAL                         R37 6
      267 GETTABLEKS                       R37 R37 K10 ["createElement"]
      269 GETUPVAL                         R38 12
      270 GETTABLEKS                       R38 R38 K60 ["ScrollView"]
      272 DUPTABLE                         R39 K65 [{["onActivated"], ["tag"] = "fill size-full-0", ["stateLayer"], ["layout"], ["scroll"]}]
      273 SETTABLEKS                       R22 R39 K44 ["onActivated"]
      275 DUPTABLE                         R40 K67 [{"affordance"}]
      276 GETUPVAL                         R41 12
      277 GETTABLEKS                       R41 R41 K38 ["Enums"]
      279 GETTABLEKS                       R41 R41 K68 ["StateLayerAffordance"]
      281 GETTABLEKS                       R41 R41 K69 ["None"]
      283 SETTABLEKS                       R41 R40 K66 ["affordance"]
      285 SETTABLEKS                       R40 R39 K62 ["stateLayer"]
      287 DUPTABLE                         R40 K71 [{"FillDirection"}]
      288 GETIMPORT                        R41 K74 [Enum.FillDirection.Vertical]
      290 SETTABLEKS                       R41 R40 K70 ["FillDirection"]
      292 SETTABLEKS                       R40 R39 K63 ["layout"]
      294 DUPTABLE                         R40 K78 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      295 GETIMPORT                        R41 K81 [Enum.AutomaticSize.Y]
      297 SETTABLEKS                       R41 R40 K75 ["AutomaticCanvasSize"]
      299 GETIMPORT                        R41 K84 [UDim2.fromOffset]
      301 LOADN                            R42 0
      302 LOADN                            R43 0
      303 CALL                             R41 2 1
      304 SETTABLEKS                       R41 R40 K76 ["CanvasSize"]
      306 GETIMPORT                        R41 K85 [Enum.ScrollingDirection.Y]
      308 SETTABLEKS                       R41 R40 K77 ["ScrollingDirection"]
      310 SETTABLEKS                       R40 R39 K64 ["scroll"]
      312 LENGTH                           R41 R11
      313 JUMPIFNOTEQKN                    R41 K86 [0] ; [+7]
      315 GETUPVAL                         R40 6
      316 GETTABLEKS                       R40 R40 K10 ["createElement"]
      318 GETUPVAL                         R41 14
      319 CALL                             R40 1 1
      320 JUMP                             ; [+16]
      321 GETUPVAL                         R40 15
      322 GETTABLEKS                       R40 R40 K87 ["map"]
      324 MOVE                             R41 R11
      325 NEWCLOSURE                       R42 P8
      326 CAPTURE                          UPVAL U6
      327 CAPTURE                          UPVAL U16
      328 CAPTURE                          VAL R23
      329 CAPTURE                          VAL R15
      330 CAPTURE                          VAL R16
      331 CAPTURE                          VAL R18
      332 CAPTURE                          VAL R9
      333 CAPTURE                          VAL R7
      334 CAPTURE                          VAL R10
      335 CAPTURE                          VAL R8
      336 CALL                             R40 2 1
      337 CALL                             R37 3 1
      338 SETTABLEKS                       R37 R36 K58 ["Content"]
      340 CALL                             R33 3 1
      341 SETTABLEKS                       R33 R32 K16 ["List"]
      343 GETUPVAL                         R33 6
      344 GETTABLEKS                       R33 R33 K10 ["createElement"]
      346 GETUPVAL                         R34 12
      347 GETTABLEKS                       R34 R34 K11 ["View"]
      349 DUPTABLE                         R35 K90 [{["LayoutOrder"] = 3, ["tag"] = "row align-y-center gap-xsmall size-full-0 auto-y"}]
      350 DUPTABLE                         R36 K95 [{"Back", "Spacer", "Cancel", "Move"}]
      351 MOVE                             R37 R27
      352 JUMPIFNOT                        R37 ; [+40]
      353 GETUPVAL                         R37 6
      354 GETTABLEKS                       R37 R37 K10 ["createElement"]
      356 GETUPVAL                         R38 12
      357 GETTABLEKS                       R38 R38 K96 ["Button"]
      359 DUPTABLE                         R39 K100 [{["LayoutOrder"], ["text"], ["variant"], ["size"], ["onActivated"], ["testId"] = "move-dialog-back-button"}]
      360 NAMECALL                         R40 R5 K101 ["getNextOrder"]
      362 CALL                             R40 1 1
      363 SETTABLEKS                       R40 R39 K19 ["LayoutOrder"]
      365 LOADK                            R42 K102 ["TopBar"]
      366 LOADK                            R43 K103 ["BackButton"]
      367 NAMECALL                         R40 R4 K30 ["getText"]
      369 CALL                             R40 3 1
      370 SETTABLEKS                       R40 R39 K97 ["text"]
      372 GETUPVAL                         R40 12
      373 GETTABLEKS                       R40 R40 K38 ["Enums"]
      375 GETTABLEKS                       R40 R40 K50 ["ButtonVariant"]
      377 GETTABLEKS                       R40 R40 K104 ["Standard"]
      379 SETTABLEKS                       R40 R39 K45 ["variant"]
      381 GETUPVAL                         R40 12
      382 GETTABLEKS                       R40 R40 K38 ["Enums"]
      384 GETTABLEKS                       R40 R40 K52 ["InputSize"]
      386 GETTABLEKS                       R40 R40 K105 ["Small"]
      388 SETTABLEKS                       R40 R39 K47 ["size"]
      390 SETTABLEKS                       R25 R39 K44 ["onActivated"]
      392 CALL                             R37 2 1
      393 SETTABLEKS                       R37 R36 K91 ["Back"]
      395 GETUPVAL                         R37 6
      396 GETTABLEKS                       R37 R37 K10 ["createElement"]
      398 GETUPVAL                         R38 12
      399 GETTABLEKS                       R38 R38 K11 ["View"]
      401 DUPTABLE                         R39 K107 [{["LayoutOrder"], ["tag"] = "fill auto-y"}]
      402 NAMECALL                         R40 R5 K101 ["getNextOrder"]
      404 CALL                             R40 1 1
      405 SETTABLEKS                       R40 R39 K19 ["LayoutOrder"]
      407 CALL                             R37 2 1
      408 SETTABLEKS                       R37 R36 K92 ["Spacer"]
      410 GETUPVAL                         R37 6
      411 GETTABLEKS                       R37 R37 K10 ["createElement"]
      413 GETUPVAL                         R38 12
      414 GETTABLEKS                       R38 R38 K96 ["Button"]
      416 DUPTABLE                         R39 K109 [{["LayoutOrder"], ["text"], ["variant"], ["size"], ["onActivated"], ["testId"] = "move-dialog-cancel-button"}]
      417 NAMECALL                         R40 R5 K101 ["getNextOrder"]
      419 CALL                             R40 1 1
      420 SETTABLEKS                       R40 R39 K19 ["LayoutOrder"]
      422 LOADK                            R42 K110 ["MainView"]
      423 LOADK                            R43 K111 ["CancelText"]
      424 NAMECALL                         R40 R4 K30 ["getText"]
      426 CALL                             R40 3 1
      427 SETTABLEKS                       R40 R39 K97 ["text"]
      429 GETUPVAL                         R40 12
      430 GETTABLEKS                       R40 R40 K38 ["Enums"]
      432 GETTABLEKS                       R40 R40 K50 ["ButtonVariant"]
      434 GETTABLEKS                       R40 R40 K104 ["Standard"]
      436 SETTABLEKS                       R40 R39 K45 ["variant"]
      438 GETUPVAL                         R40 12
      439 GETTABLEKS                       R40 R40 K38 ["Enums"]
      441 GETTABLEKS                       R40 R40 K52 ["InputSize"]
      443 GETTABLEKS                       R40 R40 K105 ["Small"]
      445 SETTABLEKS                       R40 R39 K47 ["size"]
      447 NEWCLOSURE                       R40 P9
      448 CAPTURE                          VAL R1
      449 SETTABLEKS                       R40 R39 K44 ["onActivated"]
      451 CALL                             R37 2 1
      452 SETTABLEKS                       R37 R36 K93 ["Cancel"]
      454 GETUPVAL                         R37 6
      455 GETTABLEKS                       R37 R37 K10 ["createElement"]
      457 GETUPVAL                         R38 12
      458 GETTABLEKS                       R38 R38 K96 ["Button"]
      460 DUPTABLE                         R39 K113 [{["LayoutOrder"], ["text"], ["variant"], ["size"], ["isDisabled"], ["onActivated"], ["testId"] = "move-dialog-move-button"}]
      461 NAMECALL                         R40 R5 K101 ["getNextOrder"]
      463 CALL                             R40 1 1
      464 SETTABLEKS                       R40 R39 K19 ["LayoutOrder"]
      466 JUMPIFEQKS                       R28 K4 [""] ; [+10]
      468 LOADK                            R42 K28 ["Dialogs"]
      469 LOADK                            R43 K114 ["MoveToFolder"]
      470 DUPTABLE                         R44 K116 [{"folder"}]
      471 SETTABLEKS                       R28 R44 K115 ["folder"]
      473 NAMECALL                         R40 R4 K30 ["getText"]
      475 CALL                             R40 4 1
      476 JUMP                             ; [+5]
      477 LOADK                            R42 K117 ["ContextMenu"]
      478 LOADK                            R43 K94 ["Move"]
      479 NAMECALL                         R40 R4 K30 ["getText"]
      481 CALL                             R40 3 1
      482 SETTABLEKS                       R40 R39 K97 ["text"]
      484 GETUPVAL                         R40 12
      485 GETTABLEKS                       R40 R40 K38 ["Enums"]
      487 GETTABLEKS                       R40 R40 K50 ["ButtonVariant"]
      489 GETTABLEKS                       R40 R40 K118 ["Emphasis"]
      491 SETTABLEKS                       R40 R39 K45 ["variant"]
      493 GETUPVAL                         R40 12
      494 GETTABLEKS                       R40 R40 K38 ["Enums"]
      496 GETTABLEKS                       R40 R40 K52 ["InputSize"]
      498 GETTABLEKS                       R40 R40 K105 ["Small"]
      500 SETTABLEKS                       R40 R39 K47 ["size"]
      502 LOADB                            R40 0
      503 GETTABLEKS                       R41 R0 K3 ["RootScope"]
      505 JUMPIFEQ                         R7 R41 ; [+5]
      507 JUMPIFEQKS                       R15 K4 [""] ; [+2]
      509 LOADB                            R40 0 +1
      510 LOADB                            R40 1
      511 SETTABLEKS                       R40 R39 K46 ["isDisabled"]
      513 SETTABLEKS                       R26 R39 K44 ["onActivated"]
      515 CALL                             R37 2 1
      516 SETTABLEKS                       R37 R36 K94 ["Move"]
      518 CALL                             R33 3 1
      519 SETTABLEKS                       R33 R32 K17 ["Footer"]
      521 CALL                             R29 3 -1
      522 RETURN                           R29 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssetManagement"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Dash"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Packages"]
       39 GETTABLEKS                       R6 R6 K11 ["Framework"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R5 K12 ["ContextServices"]
       44 GETTABLEKS                       R7 R6 K13 ["Localization"]
       46 GETTABLEKS                       R8 R5 K14 ["Util"]
       48 GETTABLEKS                       R8 R8 K15 ["LayoutOrderIterator"]
       50 GETIMPORT                        R9 K5 [require]
       52 GETTABLEKS                       R10 R0 K16 ["Src"]
       54 GETTABLEKS                       R10 R10 K17 ["Types"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K5 [require]
       59 GETTABLEKS                       R11 R0 K16 ["Src"]
       61 GETTABLEKS                       R11 R11 K18 ["Networking"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K5 [require]
       66 GETTABLEKS                       R12 R0 K16 ["Src"]
       68 GETTABLEKS                       R12 R12 K19 ["Controllers"]
       70 GETTABLEKS                       R12 R12 K20 ["Input"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K5 [require]
       75 GETTABLEKS                       R13 R0 K16 ["Src"]
       77 GETTABLEKS                       R13 R13 K19 ["Controllers"]
       79 GETTABLEKS                       R13 R13 K21 ["PluginController"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K5 [require]
       84 GETTABLEKS                       R14 R0 K16 ["Src"]
       86 GETTABLEKS                       R14 R14 K19 ["Controllers"]
       88 GETTABLEKS                       R14 R14 K22 ["ItemsController"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K5 [require]
       93 GETTABLEKS                       R15 R0 K16 ["Src"]
       95 GETTABLEKS                       R15 R15 K19 ["Controllers"]
       97 GETTABLEKS                       R15 R15 K23 ["ExplorerController"]
       99 CALL                             R14 1 1
      100 GETIMPORT                        R15 K5 [require]
      102 GETTABLEKS                       R16 R0 K16 ["Src"]
      104 GETTABLEKS                       R16 R16 K24 ["Hooks"]
      106 GETTABLEKS                       R16 R16 K25 ["useExplorerInfo"]
      108 CALL                             R15 1 1
      109 GETIMPORT                        R16 K5 [require]
      111 GETTABLEKS                       R17 R0 K16 ["Src"]
      113 GETTABLEKS                       R17 R17 K14 ["Util"]
      115 GETTABLEKS                       R17 R17 K26 ["convertFolderItemToScope"]
      117 CALL                             R16 1 1
      118 GETIMPORT                        R17 K5 [require]
      120 GETTABLEKS                       R18 R0 K16 ["Src"]
      122 GETTABLEKS                       R18 R18 K27 ["Flags"]
      124 GETTABLEKS                       R18 R18 K28 ["getFFlagAmrUseAssetManagementNetworking"]
      126 CALL                             R17 1 1
      127 DUPCLOSURE                       R18 K29 [PROTO_1]
      128 CAPTURE                          VAL R4
      129 CAPTURE                          VAL R11
      130 CAPTURE                          VAL R2
      131 DUPCLOSURE                       R19 K30 [PROTO_2]
      132 CAPTURE                          VAL R7
      133 CAPTURE                          VAL R2
      134 CAPTURE                          VAL R4
      135 DUPCLOSURE                       R20 K31 [PROTO_3]
      136 CAPTURE                          VAL R2
      137 CAPTURE                          VAL R4
      138 DUPCLOSURE                       R21 K32 [PROTO_19]
      139 CAPTURE                          VAL R12
      140 CAPTURE                          VAL R13
      141 CAPTURE                          VAL R10
      142 CAPTURE                          VAL R7
      143 CAPTURE                          VAL R8
      144 CAPTURE                          VAL R14
      145 CAPTURE                          VAL R2
      146 CAPTURE                          VAL R9
      147 CAPTURE                          VAL R15
      148 CAPTURE                          VAL R16
      149 CAPTURE                          VAL R1
      150 CAPTURE                          VAL R17
      151 CAPTURE                          VAL R4
      152 CAPTURE                          VAL R20
      153 CAPTURE                          VAL R19
      154 CAPTURE                          VAL R3
      155 CAPTURE                          VAL R18
      156 RETURN                           R21 1
