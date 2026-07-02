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
        0 GETTABLEKS                       R3 R0 K0 ["Name"]
        2 NAMECALL                         R3 R3 K1 ["lower"]
        4 CALL                             R3 1 1
        5 GETTABLEKS                       R4 R1 K0 ["Name"]
        7 NAMECALL                         R4 R4 K1 ["lower"]
        9 CALL                             R4 1 1
       10 JUMPIFLT                         R3 R4 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1

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
       30 CALL                             R3 2 0
       31 GETUPVAL                         R3 2
       32 MOVE                             R4 R2
       33 CALL                             R3 1 0
       34 GETUPVAL                         R3 3
       35 LOADB                            R4 0
       36 CALL                             R3 1 0
       37 RETURN                           R0 0

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
       25 CAPTURE                          UPVAL U0
       26 NEWCLOSURE                       R4 P1
       27 CAPTURE                          UPVAL U5
       28 CAPTURE                          UPVAL U0
       29 NAMECALL                         R0 R0 K4 ["fetchFoldersAsync"]
       31 CALL                             R0 4 0
       32 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Path"]
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["Name"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_15:
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

PROTO_16:
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

PROTO_17:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["closeDialog"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_18:
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
       70 CAPTURE                          VAL R12
       71 GETUPVAL                         R22 6
       72 GETTABLEKS                       R22 R22 K6 ["useEffect"]
       74 NEWCLOSURE                       R23 P2
       75 CAPTURE                          VAL R16
       76 CAPTURE                          VAL R18
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R12
       80 CAPTURE                          VAL R19
       81 CAPTURE                          VAL R14
       82 CAPTURE                          VAL R21
       83 NEWTABLE                         R24 0 2
       85 MOVE                             R25 R7
       86 MOVE                             R26 R20
       87 SETLIST                          R24 R25 2 [1]
       89 CALL                             R22 2 0
       90 GETUPVAL                         R22 6
       91 GETTABLEKS                       R22 R22 K7 ["useMemo"]
       93 NEWCLOSURE                       R23 P3
       94 CAPTURE                          VAL R0
       95 CAPTURE                          UPVAL U7
       96 NEWTABLE                         R24 0 1
       98 GETTABLEKS                       R25 R0 K8 ["MoveInfo"]
      100 SETLIST                          R24 R25 1 [1]
      102 CALL                             R22 2 1
      103 NEWCLOSURE                       R23 P4
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R8
      108 NEWCLOSURE                       R24 P5
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R8
      111 CAPTURE                          VAL R10
      112 NEWCLOSURE                       R25 P6
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R0
      115 CAPTURE                          VAL R15
      116 CAPTURE                          VAL R2
      117 CAPTURE                          VAL R1
      118 LENGTH                           R27 R9
      119 LOADN                            R28 0
      120 JUMPIFLT                         R28 R27 ; [+2]
      122 LOADB                            R26 0 +1
      123 LOADB                            R26 1
      124 GETTABLEKS                       R28 R0 K3 ["RootScope"]
      126 JUMPIFNOTEQ                      R7 R28 ; [+8]
      128 JUMPIFNOTEQKS                    R15 K4 [""] ; [+6]
      130 GETTABLEKS                       R27 R0 K3 ["RootScope"]
      132 GETTABLEKS                       R27 R27 K9 ["Name"]
      134 JUMP                             ; [+1]
      135 MOVE                             R27 R17
      136 GETUPVAL                         R28 6
      137 GETTABLEKS                       R28 R28 K10 ["createElement"]
      139 GETUPVAL                         R29 10
      140 GETTABLEKS                       R29 R29 K11 ["View"]
      142 DUPTABLE                         R30 K14 [{["tag"] = "col gap-medium size-full padding-medium"}]
      143 DUPTABLE                         R31 K18 [{"Description", "List", "Footer"}]
      144 GETUPVAL                         R32 6
      145 GETTABLEKS                       R32 R32 K10 ["createElement"]
      147 GETUPVAL                         R33 10
      148 GETTABLEKS                       R33 R33 K11 ["View"]
      150 DUPTABLE                         R34 K22 [{["LayoutOrder"] = 1, ["tag"] = "row align-y-center gap-small size-full-0 auto-y"}]
      151 DUPTABLE                         R35 K25 [{"Text", "RefreshButton"}]
      152 GETUPVAL                         R36 6
      153 GETTABLEKS                       R36 R36 K10 ["createElement"]
      155 GETUPVAL                         R37 10
      156 GETTABLEKS                       R37 R37 K23 ["Text"]
      158 DUPTABLE                         R38 K27 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "fill text-body-medium text-wrap text-align-x-left"}]
      159 LOADK                            R41 K28 ["Dialogs"]
      160 LOADK                            R42 K29 ["MoveDescription"]
      161 NAMECALL                         R39 R4 K30 ["getText"]
      163 CALL                             R39 3 1
      164 SETTABLEKS                       R39 R38 K23 ["Text"]
      166 CALL                             R36 2 1
      167 SETTABLEKS                       R36 R35 K23 ["Text"]
      169 GETUPVAL                         R36 6
      170 GETTABLEKS                       R36 R36 K10 ["createElement"]
      172 GETUPVAL                         R37 10
      173 GETTABLEKS                       R37 R37 K31 ["Tooltip"]
      175 DUPTABLE                         R38 K36 [{["LayoutOrder"] = 2, ["title"], ["align"], ["side"]}]
      176 LOADK                            R41 K31 ["Tooltip"]
      177 LOADK                            R42 K37 ["Refresh"]
      178 NAMECALL                         R39 R4 K30 ["getText"]
      180 CALL                             R39 3 1
      181 SETTABLEKS                       R39 R38 K33 ["title"]
      183 GETUPVAL                         R39 10
      184 GETTABLEKS                       R39 R39 K38 ["Enums"]
      186 GETTABLEKS                       R39 R39 K39 ["PopoverAlign"]
      188 GETTABLEKS                       R39 R39 K40 ["End"]
      190 SETTABLEKS                       R39 R38 K34 ["align"]
      192 GETUPVAL                         R39 10
      193 GETTABLEKS                       R39 R39 K38 ["Enums"]
      195 GETTABLEKS                       R39 R39 K41 ["PopoverSide"]
      197 GETTABLEKS                       R39 R39 K42 ["Bottom"]
      199 SETTABLEKS                       R39 R38 K35 ["side"]
      201 GETUPVAL                         R39 6
      202 GETTABLEKS                       R39 R39 K10 ["createElement"]
      204 GETUPVAL                         R40 10
      205 GETTABLEKS                       R40 R40 K43 ["IconButton"]
      207 DUPTABLE                         R41 K49 [{"onActivated", "variant", "isDisabled", "size", "icon"}]
      208 SETTABLEKS                       R21 R41 K44 ["onActivated"]
      210 GETUPVAL                         R42 10
      211 GETTABLEKS                       R42 R42 K38 ["Enums"]
      213 GETTABLEKS                       R42 R42 K50 ["ButtonVariant"]
      215 GETTABLEKS                       R42 R42 K51 ["Utility"]
      217 SETTABLEKS                       R42 R41 K45 ["variant"]
      219 SETTABLEKS                       R13 R41 K46 ["isDisabled"]
      221 GETUPVAL                         R42 10
      222 GETTABLEKS                       R42 R42 K38 ["Enums"]
      224 GETTABLEKS                       R42 R42 K52 ["InputSize"]
      226 GETTABLEKS                       R42 R42 K53 ["XSmall"]
      228 SETTABLEKS                       R42 R41 K47 ["size"]
      230 GETUPVAL                         R42 10
      231 GETTABLEKS                       R42 R42 K38 ["Enums"]
      233 GETTABLEKS                       R42 R42 K54 ["IconName"]
      235 GETTABLEKS                       R42 R42 K55 ["TwoArrowsSpinClockwise"]
      237 SETTABLEKS                       R42 R41 K48 ["icon"]
      239 CALL                             R39 2 -1
      240 CALL                             R36 -1 1
      241 SETTABLEKS                       R36 R35 K24 ["RefreshButton"]
      243 CALL                             R32 3 1
      244 SETTABLEKS                       R32 R31 K15 ["Description"]
      246 GETUPVAL                         R32 6
      247 GETTABLEKS                       R32 R32 K10 ["createElement"]
      249 GETUPVAL                         R33 10
      250 GETTABLEKS                       R33 R33 K11 ["View"]
      252 DUPTABLE                         R34 K57 [{["LayoutOrder"] = 2, ["tag"] = "col fill size-full-0 padding-small stroke-emphasis radius-medium"}]
      253 DUPTABLE                         R35 K59 [{"Content"}]
      254 JUMPIFNOT                        R13 ; [+6]
      255 GETUPVAL                         R36 6
      256 GETTABLEKS                       R36 R36 K10 ["createElement"]
      258 GETUPVAL                         R37 11
      259 CALL                             R36 1 1
      260 JUMP                             ; [+58]
      261 GETUPVAL                         R36 6
      262 GETTABLEKS                       R36 R36 K10 ["createElement"]
      264 GETUPVAL                         R37 10
      265 GETTABLEKS                       R37 R37 K60 ["ScrollView"]
      267 DUPTABLE                         R38 K64 [{["tag"] = "fill size-full-0", ["layout"], ["scroll"]}]
      268 DUPTABLE                         R39 K66 [{"FillDirection"}]
      269 GETIMPORT                        R40 K69 [Enum.FillDirection.Vertical]
      271 SETTABLEKS                       R40 R39 K65 ["FillDirection"]
      273 SETTABLEKS                       R39 R38 K62 ["layout"]
      275 DUPTABLE                         R39 K73 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      276 GETIMPORT                        R40 K76 [Enum.AutomaticSize.Y]
      278 SETTABLEKS                       R40 R39 K70 ["AutomaticCanvasSize"]
      280 GETIMPORT                        R40 K79 [UDim2.fromOffset]
      282 LOADN                            R41 0
      283 LOADN                            R42 0
      284 CALL                             R40 2 1
      285 SETTABLEKS                       R40 R39 K71 ["CanvasSize"]
      287 GETIMPORT                        R40 K80 [Enum.ScrollingDirection.Y]
      289 SETTABLEKS                       R40 R39 K72 ["ScrollingDirection"]
      291 SETTABLEKS                       R39 R38 K63 ["scroll"]
      293 LENGTH                           R40 R11
      294 JUMPIFNOTEQKN                    R40 K81 [0] ; [+7]
      296 GETUPVAL                         R39 6
      297 GETTABLEKS                       R39 R39 K10 ["createElement"]
      299 GETUPVAL                         R40 12
      300 CALL                             R39 1 1
      301 JUMP                             ; [+16]
      302 GETUPVAL                         R39 13
      303 GETTABLEKS                       R39 R39 K82 ["map"]
      305 MOVE                             R40 R11
      306 NEWCLOSURE                       R41 P7
      307 CAPTURE                          UPVAL U6
      308 CAPTURE                          UPVAL U14
      309 CAPTURE                          VAL R22
      310 CAPTURE                          VAL R15
      311 CAPTURE                          VAL R16
      312 CAPTURE                          VAL R18
      313 CAPTURE                          VAL R9
      314 CAPTURE                          VAL R7
      315 CAPTURE                          VAL R10
      316 CAPTURE                          VAL R8
      317 CALL                             R39 2 1
      318 CALL                             R36 3 1
      319 SETTABLEKS                       R36 R35 K58 ["Content"]
      321 CALL                             R32 3 1
      322 SETTABLEKS                       R32 R31 K16 ["List"]
      324 GETUPVAL                         R32 6
      325 GETTABLEKS                       R32 R32 K10 ["createElement"]
      327 GETUPVAL                         R33 10
      328 GETTABLEKS                       R33 R33 K11 ["View"]
      330 DUPTABLE                         R34 K85 [{["LayoutOrder"] = 3, ["tag"] = "row align-y-center gap-xsmall size-full-0 auto-y"}]
      331 DUPTABLE                         R35 K90 [{"Back", "Spacer", "Cancel", "Move"}]
      332 MOVE                             R36 R26
      333 JUMPIFNOT                        R36 ; [+40]
      334 GETUPVAL                         R36 6
      335 GETTABLEKS                       R36 R36 K10 ["createElement"]
      337 GETUPVAL                         R37 10
      338 GETTABLEKS                       R37 R37 K91 ["Button"]
      340 DUPTABLE                         R38 K95 [{["LayoutOrder"], ["text"], ["variant"], ["size"], ["onActivated"], ["testId"] = "move-dialog-back-button"}]
      341 NAMECALL                         R39 R5 K96 ["getNextOrder"]
      343 CALL                             R39 1 1
      344 SETTABLEKS                       R39 R38 K19 ["LayoutOrder"]
      346 LOADK                            R41 K97 ["TopBar"]
      347 LOADK                            R42 K98 ["BackButton"]
      348 NAMECALL                         R39 R4 K30 ["getText"]
      350 CALL                             R39 3 1
      351 SETTABLEKS                       R39 R38 K92 ["text"]
      353 GETUPVAL                         R39 10
      354 GETTABLEKS                       R39 R39 K38 ["Enums"]
      356 GETTABLEKS                       R39 R39 K50 ["ButtonVariant"]
      358 GETTABLEKS                       R39 R39 K99 ["Standard"]
      360 SETTABLEKS                       R39 R38 K45 ["variant"]
      362 GETUPVAL                         R39 10
      363 GETTABLEKS                       R39 R39 K38 ["Enums"]
      365 GETTABLEKS                       R39 R39 K52 ["InputSize"]
      367 GETTABLEKS                       R39 R39 K100 ["Small"]
      369 SETTABLEKS                       R39 R38 K47 ["size"]
      371 SETTABLEKS                       R24 R38 K44 ["onActivated"]
      373 CALL                             R36 2 1
      374 SETTABLEKS                       R36 R35 K86 ["Back"]
      376 GETUPVAL                         R36 6
      377 GETTABLEKS                       R36 R36 K10 ["createElement"]
      379 GETUPVAL                         R37 10
      380 GETTABLEKS                       R37 R37 K11 ["View"]
      382 DUPTABLE                         R38 K102 [{["LayoutOrder"], ["tag"] = "fill auto-y"}]
      383 NAMECALL                         R39 R5 K96 ["getNextOrder"]
      385 CALL                             R39 1 1
      386 SETTABLEKS                       R39 R38 K19 ["LayoutOrder"]
      388 CALL                             R36 2 1
      389 SETTABLEKS                       R36 R35 K87 ["Spacer"]
      391 GETUPVAL                         R36 6
      392 GETTABLEKS                       R36 R36 K10 ["createElement"]
      394 GETUPVAL                         R37 10
      395 GETTABLEKS                       R37 R37 K91 ["Button"]
      397 DUPTABLE                         R38 K104 [{["LayoutOrder"], ["text"], ["variant"], ["size"], ["onActivated"], ["testId"] = "move-dialog-cancel-button"}]
      398 NAMECALL                         R39 R5 K96 ["getNextOrder"]
      400 CALL                             R39 1 1
      401 SETTABLEKS                       R39 R38 K19 ["LayoutOrder"]
      403 LOADK                            R41 K105 ["MainView"]
      404 LOADK                            R42 K106 ["CancelText"]
      405 NAMECALL                         R39 R4 K30 ["getText"]
      407 CALL                             R39 3 1
      408 SETTABLEKS                       R39 R38 K92 ["text"]
      410 GETUPVAL                         R39 10
      411 GETTABLEKS                       R39 R39 K38 ["Enums"]
      413 GETTABLEKS                       R39 R39 K50 ["ButtonVariant"]
      415 GETTABLEKS                       R39 R39 K99 ["Standard"]
      417 SETTABLEKS                       R39 R38 K45 ["variant"]
      419 GETUPVAL                         R39 10
      420 GETTABLEKS                       R39 R39 K38 ["Enums"]
      422 GETTABLEKS                       R39 R39 K52 ["InputSize"]
      424 GETTABLEKS                       R39 R39 K100 ["Small"]
      426 SETTABLEKS                       R39 R38 K47 ["size"]
      428 NEWCLOSURE                       R39 P8
      429 CAPTURE                          VAL R1
      430 SETTABLEKS                       R39 R38 K44 ["onActivated"]
      432 CALL                             R36 2 1
      433 SETTABLEKS                       R36 R35 K88 ["Cancel"]
      435 GETUPVAL                         R36 6
      436 GETTABLEKS                       R36 R36 K10 ["createElement"]
      438 GETUPVAL                         R37 10
      439 GETTABLEKS                       R37 R37 K91 ["Button"]
      441 DUPTABLE                         R38 K108 [{["LayoutOrder"], ["text"], ["variant"], ["size"], ["isDisabled"], ["onActivated"], ["testId"] = "move-dialog-move-button"}]
      442 NAMECALL                         R39 R5 K96 ["getNextOrder"]
      444 CALL                             R39 1 1
      445 SETTABLEKS                       R39 R38 K19 ["LayoutOrder"]
      447 JUMPIFEQKS                       R27 K4 [""] ; [+10]
      449 LOADK                            R41 K28 ["Dialogs"]
      450 LOADK                            R42 K109 ["MoveToFolder"]
      451 DUPTABLE                         R43 K111 [{"folder"}]
      452 SETTABLEKS                       R27 R43 K110 ["folder"]
      454 NAMECALL                         R39 R4 K30 ["getText"]
      456 CALL                             R39 4 1
      457 JUMP                             ; [+5]
      458 LOADK                            R41 K112 ["ContextMenu"]
      459 LOADK                            R42 K89 ["Move"]
      460 NAMECALL                         R39 R4 K30 ["getText"]
      462 CALL                             R39 3 1
      463 SETTABLEKS                       R39 R38 K92 ["text"]
      465 GETUPVAL                         R39 10
      466 GETTABLEKS                       R39 R39 K38 ["Enums"]
      468 GETTABLEKS                       R39 R39 K50 ["ButtonVariant"]
      470 GETTABLEKS                       R39 R39 K113 ["Emphasis"]
      472 SETTABLEKS                       R39 R38 K45 ["variant"]
      474 GETUPVAL                         R39 10
      475 GETTABLEKS                       R39 R39 K38 ["Enums"]
      477 GETTABLEKS                       R39 R39 K52 ["InputSize"]
      479 GETTABLEKS                       R39 R39 K100 ["Small"]
      481 SETTABLEKS                       R39 R38 K47 ["size"]
      483 LOADB                            R39 0
      484 GETTABLEKS                       R40 R0 K3 ["RootScope"]
      486 JUMPIFEQ                         R7 R40 ; [+5]
      488 JUMPIFEQKS                       R15 K4 [""] ; [+2]
      490 LOADB                            R39 0 +1
      491 LOADB                            R39 1
      492 SETTABLEKS                       R39 R38 K46 ["isDisabled"]
      494 SETTABLEKS                       R25 R38 K44 ["onActivated"]
      496 CALL                             R36 2 1
      497 SETTABLEKS                       R36 R35 K89 ["Move"]
      499 CALL                             R32 3 1
      500 SETTABLEKS                       R32 R31 K17 ["Footer"]
      502 CALL                             R28 3 -1
      503 RETURN                           R28 -1

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
      111 DUPCLOSURE                       R16 K26 [PROTO_1]
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R1
      115 DUPCLOSURE                       R17 K27 [PROTO_2]
      116 CAPTURE                          VAL R6
      117 CAPTURE                          VAL R1
      118 CAPTURE                          VAL R3
      119 DUPCLOSURE                       R18 K28 [PROTO_3]
      120 CAPTURE                          VAL R1
      121 CAPTURE                          VAL R3
      122 DUPCLOSURE                       R19 K29 [PROTO_18]
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R12
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R6
      127 CAPTURE                          VAL R7
      128 CAPTURE                          VAL R13
      129 CAPTURE                          VAL R1
      130 CAPTURE                          VAL R8
      131 CAPTURE                          VAL R14
      132 CAPTURE                          VAL R15
      133 CAPTURE                          VAL R3
      134 CAPTURE                          VAL R18
      135 CAPTURE                          VAL R17
      136 CAPTURE                          VAL R2
      137 CAPTURE                          VAL R16
      138 RETURN                           R19 1
