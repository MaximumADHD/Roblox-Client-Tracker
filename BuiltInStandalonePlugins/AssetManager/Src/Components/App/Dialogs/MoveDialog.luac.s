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
        1 GETTABLEKS                       R4 R0 K0 ["Name"]
        3 GETTABLEKS                       R5 R1 K0 ["Name"]
        5 CALL                             R3 2 1
        6 LOADN                            R4 0
        7 JUMPIFLT                         R3 R4 ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 RETURN                           R2 1

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
        3 GETUPVAL                         R0 1
        4 DUPTABLE                         R2 K2 [{"Scopes", "Roots"}]
        5 NEWTABLE                         R3 0 1
        7 GETUPVAL                         R4 2
        8 SETLIST                          R3 R4 1 [1]
       10 SETTABLEKS                       R3 R2 K0 ["Scopes"]
       12 NEWTABLE                         R3 0 1
       14 GETUPVAL                         R4 3
       15 GETTABLEKS                       R4 R4 K3 ["RootScope"]
       17 SETLIST                          R3 R4 1 [1]
       19 SETTABLEKS                       R3 R2 K1 ["Roots"]
       21 NEWCLOSURE                       R3 P0
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          UPVAL U4
       24 CAPTURE                          UPVAL U5
       25 CAPTURE                          UPVAL U6
       26 CAPTURE                          UPVAL U0
       27 NEWCLOSURE                       R4 P1
       28 CAPTURE                          UPVAL U6
       29 CAPTURE                          UPVAL U0
       30 NAMECALL                         R0 R0 K4 ["fetchFoldersAsync"]
       32 CALL                             R0 4 0
       33 RETURN                           R0 0

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
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R0
       69 CAPTURE                          UPVAL U9
       70 CAPTURE                          UPVAL U10
       71 CAPTURE                          VAL R12
       72 NEWCLOSURE                       R22 P2
       73 CAPTURE                          VAL R16
       74 CAPTURE                          VAL R18
       75 GETUPVAL                         R23 6
       76 GETTABLEKS                       R23 R23 K6 ["useEffect"]
       78 NEWCLOSURE                       R24 P3
       79 CAPTURE                          VAL R16
       80 CAPTURE                          VAL R18
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R12
       84 CAPTURE                          VAL R19
       85 CAPTURE                          VAL R14
       86 CAPTURE                          VAL R21
       87 NEWTABLE                         R25 0 2
       89 MOVE                             R26 R7
       90 MOVE                             R27 R20
       91 SETLIST                          R25 R26 2 [1]
       93 CALL                             R23 2 0
       94 GETUPVAL                         R23 6
       95 GETTABLEKS                       R23 R23 K7 ["useMemo"]
       97 NEWCLOSURE                       R24 P4
       98 CAPTURE                          VAL R0
       99 CAPTURE                          UPVAL U7
      100 NEWTABLE                         R25 0 1
      102 GETTABLEKS                       R26 R0 K8 ["MoveInfo"]
      104 SETLIST                          R25 R26 1 [1]
      106 CALL                             R23 2 1
      107 NEWCLOSURE                       R24 P5
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R10
      111 CAPTURE                          VAL R8
      112 NEWCLOSURE                       R25 P6
      113 CAPTURE                          VAL R9
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R10
      116 NEWCLOSURE                       R26 P7
      117 CAPTURE                          VAL R7
      118 CAPTURE                          VAL R0
      119 CAPTURE                          VAL R15
      120 CAPTURE                          VAL R2
      121 CAPTURE                          VAL R1
      122 LENGTH                           R28 R9
      123 LOADN                            R29 0
      124 JUMPIFLT                         R29 R28 ; [+2]
      126 LOADB                            R27 0 +1
      127 LOADB                            R27 1
      128 GETTABLEKS                       R29 R0 K3 ["RootScope"]
      130 JUMPIFNOTEQ                      R7 R29 ; [+8]
      132 JUMPIFNOTEQKS                    R15 K4 [""] ; [+6]
      134 GETTABLEKS                       R28 R0 K3 ["RootScope"]
      136 GETTABLEKS                       R28 R28 K9 ["Name"]
      138 JUMP                             ; [+1]
      139 MOVE                             R28 R17
      140 GETUPVAL                         R29 6
      141 GETTABLEKS                       R29 R29 K10 ["createElement"]
      143 GETUPVAL                         R30 11
      144 GETTABLEKS                       R30 R30 K11 ["View"]
      146 DUPTABLE                         R31 K14 [{["tag"] = "col gap-medium size-full padding-medium"}]
      147 DUPTABLE                         R32 K18 [{"Description", "List", "Footer"}]
      148 GETUPVAL                         R33 6
      149 GETTABLEKS                       R33 R33 K10 ["createElement"]
      151 GETUPVAL                         R34 11
      152 GETTABLEKS                       R34 R34 K11 ["View"]
      154 DUPTABLE                         R35 K22 [{["LayoutOrder"] = 1, ["tag"] = "row align-y-center gap-small size-full-0 auto-y"}]
      155 DUPTABLE                         R36 K25 [{"Text", "RefreshButton"}]
      156 GETUPVAL                         R37 6
      157 GETTABLEKS                       R37 R37 K10 ["createElement"]
      159 GETUPVAL                         R38 11
      160 GETTABLEKS                       R38 R38 K23 ["Text"]
      162 DUPTABLE                         R39 K27 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "fill text-body-medium text-wrap text-align-x-left"}]
      163 LOADK                            R42 K28 ["Dialogs"]
      164 LOADK                            R43 K29 ["MoveDescription"]
      165 NAMECALL                         R40 R4 K30 ["getText"]
      167 CALL                             R40 3 1
      168 SETTABLEKS                       R40 R39 K23 ["Text"]
      170 CALL                             R37 2 1
      171 SETTABLEKS                       R37 R36 K23 ["Text"]
      173 GETUPVAL                         R37 6
      174 GETTABLEKS                       R37 R37 K10 ["createElement"]
      176 GETUPVAL                         R38 11
      177 GETTABLEKS                       R38 R38 K31 ["Tooltip"]
      179 DUPTABLE                         R39 K36 [{["LayoutOrder"] = 2, ["title"], ["align"], ["side"]}]
      180 LOADK                            R42 K31 ["Tooltip"]
      181 LOADK                            R43 K37 ["Refresh"]
      182 NAMECALL                         R40 R4 K30 ["getText"]
      184 CALL                             R40 3 1
      185 SETTABLEKS                       R40 R39 K33 ["title"]
      187 GETUPVAL                         R40 11
      188 GETTABLEKS                       R40 R40 K38 ["Enums"]
      190 GETTABLEKS                       R40 R40 K39 ["PopoverAlign"]
      192 GETTABLEKS                       R40 R40 K40 ["End"]
      194 SETTABLEKS                       R40 R39 K34 ["align"]
      196 GETUPVAL                         R40 11
      197 GETTABLEKS                       R40 R40 K38 ["Enums"]
      199 GETTABLEKS                       R40 R40 K41 ["PopoverSide"]
      201 GETTABLEKS                       R40 R40 K42 ["Bottom"]
      203 SETTABLEKS                       R40 R39 K35 ["side"]
      205 GETUPVAL                         R40 6
      206 GETTABLEKS                       R40 R40 K10 ["createElement"]
      208 GETUPVAL                         R41 11
      209 GETTABLEKS                       R41 R41 K43 ["IconButton"]
      211 DUPTABLE                         R42 K49 [{"onActivated", "variant", "isDisabled", "size", "icon"}]
      212 SETTABLEKS                       R21 R42 K44 ["onActivated"]
      214 GETUPVAL                         R43 11
      215 GETTABLEKS                       R43 R43 K38 ["Enums"]
      217 GETTABLEKS                       R43 R43 K50 ["ButtonVariant"]
      219 GETTABLEKS                       R43 R43 K51 ["Utility"]
      221 SETTABLEKS                       R43 R42 K45 ["variant"]
      223 SETTABLEKS                       R13 R42 K46 ["isDisabled"]
      225 GETUPVAL                         R43 11
      226 GETTABLEKS                       R43 R43 K38 ["Enums"]
      228 GETTABLEKS                       R43 R43 K52 ["InputSize"]
      230 GETTABLEKS                       R43 R43 K53 ["XSmall"]
      232 SETTABLEKS                       R43 R42 K47 ["size"]
      234 GETUPVAL                         R43 11
      235 GETTABLEKS                       R43 R43 K38 ["Enums"]
      237 GETTABLEKS                       R43 R43 K54 ["IconName"]
      239 GETTABLEKS                       R43 R43 K55 ["TwoArrowsSpinClockwise"]
      241 SETTABLEKS                       R43 R42 K48 ["icon"]
      243 CALL                             R40 2 -1
      244 CALL                             R37 -1 1
      245 SETTABLEKS                       R37 R36 K24 ["RefreshButton"]
      247 CALL                             R33 3 1
      248 SETTABLEKS                       R33 R32 K15 ["Description"]
      250 GETUPVAL                         R33 6
      251 GETTABLEKS                       R33 R33 K10 ["createElement"]
      253 GETUPVAL                         R34 11
      254 GETTABLEKS                       R34 R34 K11 ["View"]
      256 DUPTABLE                         R35 K57 [{["LayoutOrder"] = 2, ["tag"] = "col fill size-full-0 padding-small stroke-emphasis radius-medium"}]
      257 DUPTABLE                         R36 K59 [{"Content"}]
      258 JUMPIFNOT                        R13 ; [+6]
      259 GETUPVAL                         R37 6
      260 GETTABLEKS                       R37 R37 K10 ["createElement"]
      262 GETUPVAL                         R38 12
      263 CALL                             R37 1 1
      264 JUMP                             ; [+72]
      265 GETUPVAL                         R37 6
      266 GETTABLEKS                       R37 R37 K10 ["createElement"]
      268 GETUPVAL                         R38 11
      269 GETTABLEKS                       R38 R38 K60 ["ScrollView"]
      271 DUPTABLE                         R39 K65 [{["onActivated"], ["tag"] = "fill size-full-0", ["stateLayer"], ["layout"], ["scroll"]}]
      272 SETTABLEKS                       R22 R39 K44 ["onActivated"]
      274 DUPTABLE                         R40 K67 [{"affordance"}]
      275 GETUPVAL                         R41 11
      276 GETTABLEKS                       R41 R41 K38 ["Enums"]
      278 GETTABLEKS                       R41 R41 K68 ["StateLayerAffordance"]
      280 GETTABLEKS                       R41 R41 K69 ["None"]
      282 SETTABLEKS                       R41 R40 K66 ["affordance"]
      284 SETTABLEKS                       R40 R39 K62 ["stateLayer"]
      286 DUPTABLE                         R40 K71 [{"FillDirection"}]
      287 GETIMPORT                        R41 K74 [Enum.FillDirection.Vertical]
      289 SETTABLEKS                       R41 R40 K70 ["FillDirection"]
      291 SETTABLEKS                       R40 R39 K63 ["layout"]
      293 DUPTABLE                         R40 K78 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      294 GETIMPORT                        R41 K81 [Enum.AutomaticSize.Y]
      296 SETTABLEKS                       R41 R40 K75 ["AutomaticCanvasSize"]
      298 GETIMPORT                        R41 K84 [UDim2.fromOffset]
      300 LOADN                            R42 0
      301 LOADN                            R43 0
      302 CALL                             R41 2 1
      303 SETTABLEKS                       R41 R40 K76 ["CanvasSize"]
      305 GETIMPORT                        R41 K85 [Enum.ScrollingDirection.Y]
      307 SETTABLEKS                       R41 R40 K77 ["ScrollingDirection"]
      309 SETTABLEKS                       R40 R39 K64 ["scroll"]
      311 LENGTH                           R41 R11
      312 JUMPIFNOTEQKN                    R41 K86 [0] ; [+7]
      314 GETUPVAL                         R40 6
      315 GETTABLEKS                       R40 R40 K10 ["createElement"]
      317 GETUPVAL                         R41 13
      318 CALL                             R40 1 1
      319 JUMP                             ; [+16]
      320 GETUPVAL                         R40 14
      321 GETTABLEKS                       R40 R40 K87 ["map"]
      323 MOVE                             R41 R11
      324 NEWCLOSURE                       R42 P8
      325 CAPTURE                          UPVAL U6
      326 CAPTURE                          UPVAL U15
      327 CAPTURE                          VAL R23
      328 CAPTURE                          VAL R15
      329 CAPTURE                          VAL R16
      330 CAPTURE                          VAL R18
      331 CAPTURE                          VAL R9
      332 CAPTURE                          VAL R7
      333 CAPTURE                          VAL R10
      334 CAPTURE                          VAL R8
      335 CALL                             R40 2 1
      336 CALL                             R37 3 1
      337 SETTABLEKS                       R37 R36 K58 ["Content"]
      339 CALL                             R33 3 1
      340 SETTABLEKS                       R33 R32 K16 ["List"]
      342 GETUPVAL                         R33 6
      343 GETTABLEKS                       R33 R33 K10 ["createElement"]
      345 GETUPVAL                         R34 11
      346 GETTABLEKS                       R34 R34 K11 ["View"]
      348 DUPTABLE                         R35 K90 [{["LayoutOrder"] = 3, ["tag"] = "row align-y-center gap-xsmall size-full-0 auto-y"}]
      349 DUPTABLE                         R36 K95 [{"Back", "Spacer", "Cancel", "Move"}]
      350 MOVE                             R37 R27
      351 JUMPIFNOT                        R37 ; [+40]
      352 GETUPVAL                         R37 6
      353 GETTABLEKS                       R37 R37 K10 ["createElement"]
      355 GETUPVAL                         R38 11
      356 GETTABLEKS                       R38 R38 K96 ["Button"]
      358 DUPTABLE                         R39 K100 [{["LayoutOrder"], ["text"], ["variant"], ["size"], ["onActivated"], ["testId"] = "move-dialog-back-button"}]
      359 NAMECALL                         R40 R5 K101 ["getNextOrder"]
      361 CALL                             R40 1 1
      362 SETTABLEKS                       R40 R39 K19 ["LayoutOrder"]
      364 LOADK                            R42 K102 ["TopBar"]
      365 LOADK                            R43 K103 ["BackButton"]
      366 NAMECALL                         R40 R4 K30 ["getText"]
      368 CALL                             R40 3 1
      369 SETTABLEKS                       R40 R39 K97 ["text"]
      371 GETUPVAL                         R40 11
      372 GETTABLEKS                       R40 R40 K38 ["Enums"]
      374 GETTABLEKS                       R40 R40 K50 ["ButtonVariant"]
      376 GETTABLEKS                       R40 R40 K104 ["Standard"]
      378 SETTABLEKS                       R40 R39 K45 ["variant"]
      380 GETUPVAL                         R40 11
      381 GETTABLEKS                       R40 R40 K38 ["Enums"]
      383 GETTABLEKS                       R40 R40 K52 ["InputSize"]
      385 GETTABLEKS                       R40 R40 K105 ["Small"]
      387 SETTABLEKS                       R40 R39 K47 ["size"]
      389 SETTABLEKS                       R25 R39 K44 ["onActivated"]
      391 CALL                             R37 2 1
      392 SETTABLEKS                       R37 R36 K91 ["Back"]
      394 GETUPVAL                         R37 6
      395 GETTABLEKS                       R37 R37 K10 ["createElement"]
      397 GETUPVAL                         R38 11
      398 GETTABLEKS                       R38 R38 K11 ["View"]
      400 DUPTABLE                         R39 K107 [{["LayoutOrder"], ["tag"] = "fill auto-y"}]
      401 NAMECALL                         R40 R5 K101 ["getNextOrder"]
      403 CALL                             R40 1 1
      404 SETTABLEKS                       R40 R39 K19 ["LayoutOrder"]
      406 CALL                             R37 2 1
      407 SETTABLEKS                       R37 R36 K92 ["Spacer"]
      409 GETUPVAL                         R37 6
      410 GETTABLEKS                       R37 R37 K10 ["createElement"]
      412 GETUPVAL                         R38 11
      413 GETTABLEKS                       R38 R38 K96 ["Button"]
      415 DUPTABLE                         R39 K109 [{["LayoutOrder"], ["text"], ["variant"], ["size"], ["onActivated"], ["testId"] = "move-dialog-cancel-button"}]
      416 NAMECALL                         R40 R5 K101 ["getNextOrder"]
      418 CALL                             R40 1 1
      419 SETTABLEKS                       R40 R39 K19 ["LayoutOrder"]
      421 LOADK                            R42 K110 ["MainView"]
      422 LOADK                            R43 K111 ["CancelText"]
      423 NAMECALL                         R40 R4 K30 ["getText"]
      425 CALL                             R40 3 1
      426 SETTABLEKS                       R40 R39 K97 ["text"]
      428 GETUPVAL                         R40 11
      429 GETTABLEKS                       R40 R40 K38 ["Enums"]
      431 GETTABLEKS                       R40 R40 K50 ["ButtonVariant"]
      433 GETTABLEKS                       R40 R40 K104 ["Standard"]
      435 SETTABLEKS                       R40 R39 K45 ["variant"]
      437 GETUPVAL                         R40 11
      438 GETTABLEKS                       R40 R40 K38 ["Enums"]
      440 GETTABLEKS                       R40 R40 K52 ["InputSize"]
      442 GETTABLEKS                       R40 R40 K105 ["Small"]
      444 SETTABLEKS                       R40 R39 K47 ["size"]
      446 NEWCLOSURE                       R40 P9
      447 CAPTURE                          VAL R1
      448 SETTABLEKS                       R40 R39 K44 ["onActivated"]
      450 CALL                             R37 2 1
      451 SETTABLEKS                       R37 R36 K93 ["Cancel"]
      453 GETUPVAL                         R37 6
      454 GETTABLEKS                       R37 R37 K10 ["createElement"]
      456 GETUPVAL                         R38 11
      457 GETTABLEKS                       R38 R38 K96 ["Button"]
      459 DUPTABLE                         R39 K113 [{["LayoutOrder"], ["text"], ["variant"], ["size"], ["isDisabled"], ["onActivated"], ["testId"] = "move-dialog-move-button"}]
      460 NAMECALL                         R40 R5 K101 ["getNextOrder"]
      462 CALL                             R40 1 1
      463 SETTABLEKS                       R40 R39 K19 ["LayoutOrder"]
      465 JUMPIFEQKS                       R28 K4 [""] ; [+10]
      467 LOADK                            R42 K28 ["Dialogs"]
      468 LOADK                            R43 K114 ["MoveToFolder"]
      469 DUPTABLE                         R44 K116 [{"folder"}]
      470 SETTABLEKS                       R28 R44 K115 ["folder"]
      472 NAMECALL                         R40 R4 K30 ["getText"]
      474 CALL                             R40 4 1
      475 JUMP                             ; [+5]
      476 LOADK                            R42 K117 ["ContextMenu"]
      477 LOADK                            R43 K94 ["Move"]
      478 NAMECALL                         R40 R4 K30 ["getText"]
      480 CALL                             R40 3 1
      481 SETTABLEKS                       R40 R39 K97 ["text"]
      483 GETUPVAL                         R40 11
      484 GETTABLEKS                       R40 R40 K38 ["Enums"]
      486 GETTABLEKS                       R40 R40 K50 ["ButtonVariant"]
      488 GETTABLEKS                       R40 R40 K118 ["Emphasis"]
      490 SETTABLEKS                       R40 R39 K45 ["variant"]
      492 GETUPVAL                         R40 11
      493 GETTABLEKS                       R40 R40 K38 ["Enums"]
      495 GETTABLEKS                       R40 R40 K52 ["InputSize"]
      497 GETTABLEKS                       R40 R40 K105 ["Small"]
      499 SETTABLEKS                       R40 R39 K47 ["size"]
      501 LOADB                            R40 0
      502 GETTABLEKS                       R41 R0 K3 ["RootScope"]
      504 JUMPIFEQ                         R7 R41 ; [+5]
      506 JUMPIFEQKS                       R15 K4 [""] ; [+2]
      508 LOADB                            R40 0 +1
      509 LOADB                            R40 1
      510 SETTABLEKS                       R40 R39 K46 ["isDisabled"]
      512 SETTABLEKS                       R26 R39 K44 ["onActivated"]
      514 CALL                             R37 2 1
      515 SETTABLEKS                       R37 R36 K94 ["Move"]
      517 CALL                             R33 3 1
      518 SETTABLEKS                       R33 R32 K17 ["Footer"]
      520 CALL                             R29 3 -1
      521 RETURN                           R29 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["Localization"]
       39 GETTABLEKS                       R7 R4 K13 ["Util"]
       41 GETTABLEKS                       R7 R7 K14 ["LayoutOrderIterator"]
       43 GETIMPORT                        R8 K5 [require]
       45 GETTABLEKS                       R9 R0 K15 ["Src"]
       47 GETTABLEKS                       R9 R9 K16 ["Types"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K5 [require]
       52 GETTABLEKS                       R10 R0 K15 ["Src"]
       54 GETTABLEKS                       R10 R10 K17 ["Networking"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K5 [require]
       59 GETTABLEKS                       R11 R0 K15 ["Src"]
       61 GETTABLEKS                       R11 R11 K18 ["Controllers"]
       63 GETTABLEKS                       R11 R11 K19 ["Input"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K5 [require]
       68 GETTABLEKS                       R12 R0 K15 ["Src"]
       70 GETTABLEKS                       R12 R12 K18 ["Controllers"]
       72 GETTABLEKS                       R12 R12 K20 ["PluginController"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K5 [require]
       77 GETTABLEKS                       R13 R0 K15 ["Src"]
       79 GETTABLEKS                       R13 R13 K18 ["Controllers"]
       81 GETTABLEKS                       R13 R13 K21 ["ItemsController"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K5 [require]
       86 GETTABLEKS                       R14 R0 K15 ["Src"]
       88 GETTABLEKS                       R14 R14 K18 ["Controllers"]
       90 GETTABLEKS                       R14 R14 K22 ["ExplorerController"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K5 [require]
       95 GETTABLEKS                       R15 R0 K15 ["Src"]
       97 GETTABLEKS                       R15 R15 K23 ["Hooks"]
       99 GETTABLEKS                       R15 R15 K24 ["useExplorerInfo"]
      101 CALL                             R14 1 1
      102 GETIMPORT                        R15 K5 [require]
      104 GETTABLEKS                       R16 R0 K15 ["Src"]
      106 GETTABLEKS                       R16 R16 K13 ["Util"]
      108 GETTABLEKS                       R16 R16 K25 ["convertFolderItemToScope"]
      110 CALL                             R15 1 1
      111 GETIMPORT                        R16 K5 [require]
      113 GETTABLEKS                       R17 R0 K15 ["Src"]
      115 GETTABLEKS                       R17 R17 K13 ["Util"]
      117 GETTABLEKS                       R17 R17 K26 ["naturalCompare"]
      119 CALL                             R16 1 1
      120 DUPCLOSURE                       R17 K27 [PROTO_1]
      121 CAPTURE                          VAL R3
      122 CAPTURE                          VAL R10
      123 CAPTURE                          VAL R1
      124 DUPCLOSURE                       R18 K28 [PROTO_2]
      125 CAPTURE                          VAL R6
      126 CAPTURE                          VAL R1
      127 CAPTURE                          VAL R3
      128 DUPCLOSURE                       R19 K29 [PROTO_3]
      129 CAPTURE                          VAL R1
      130 CAPTURE                          VAL R3
      131 DUPCLOSURE                       R20 K30 [PROTO_19]
      132 CAPTURE                          VAL R11
      133 CAPTURE                          VAL R12
      134 CAPTURE                          VAL R9
      135 CAPTURE                          VAL R6
      136 CAPTURE                          VAL R7
      137 CAPTURE                          VAL R13
      138 CAPTURE                          VAL R1
      139 CAPTURE                          VAL R8
      140 CAPTURE                          VAL R14
      141 CAPTURE                          VAL R15
      142 CAPTURE                          VAL R16
      143 CAPTURE                          VAL R3
      144 CAPTURE                          VAL R19
      145 CAPTURE                          VAL R18
      146 CAPTURE                          VAL R2
      147 CAPTURE                          VAL R17
      148 RETURN                           R20 1
