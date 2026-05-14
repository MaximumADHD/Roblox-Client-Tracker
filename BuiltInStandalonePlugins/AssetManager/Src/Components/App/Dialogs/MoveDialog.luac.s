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
       23 DUPTABLE                         R7 K11 [{"LayoutOrder", "onActivated", "stateLayer", "tag"}]
       24 GETTABLEKS                       R8 R0 K7 ["LayoutOrder"]
       26 SETTABLEKS                       R8 R7 K7 ["LayoutOrder"]
       28 GETTABLEKS                       R9 R0 K12 ["IsDisabled"]
       30 JUMPIF                           R9 ; [+5]
       31 NEWCLOSURE                       R8 P0
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R0
       35 JUMP                             ; [+1]
       36 LOADNIL                          R8
       37 SETTABLEKS                       R8 R7 K8 ["onActivated"]
       39 DUPTABLE                         R8 K14 [{"affordance"}]
       40 GETUPVAL                         R9 0
       41 GETTABLEKS                       R9 R9 K15 ["Enums"]
       43 GETTABLEKS                       R9 R9 K16 ["StateLayerAffordance"]
       45 GETTABLEKS                       R9 R9 K17 ["None"]
       47 SETTABLEKS                       R9 R8 K13 ["affordance"]
       49 SETTABLEKS                       R8 R7 K9 ["stateLayer"]
       51 NEWTABLE                         R8 4 0
       53 LOADB                            R9 1
       54 SETTABLEKS                       R9 R8 K18 ["row radius-small size-full-0 auto-y align-y-center padding-xsmall gap-small data-testid=move-dialog-folder-row"]
       56 GETTABLEKS                       R9 R0 K19 ["IsSelected"]
       58 SETTABLEKS                       R9 R8 K20 ["bg-action-soft-emphasis"]
       60 GETTABLEKS                       R10 R0 K19 ["IsSelected"]
       62 NOT                              R9 R10
       63 SETTABLEKS                       R9 R8 K21 ["am-hover"]
       65 SETTABLEKS                       R8 R7 K10 ["tag"]
       67 DUPTABLE                         R8 K25 [{"Icon", "Name", "DrillInButton"}]
       68 GETUPVAL                         R9 2
       69 GETTABLEKS                       R9 R9 K5 ["createElement"]
       71 GETUPVAL                         R10 0
       72 GETTABLEKS                       R10 R10 K22 ["Icon"]
       74 DUPTABLE                         R11 K30 [{"LayoutOrder", "name", "variant", "style", "size"}]
       75 LOADN                            R12 1
       76 SETTABLEKS                       R12 R11 K7 ["LayoutOrder"]
       78 GETUPVAL                         R12 0
       79 GETTABLEKS                       R12 R12 K15 ["Enums"]
       81 GETTABLEKS                       R12 R12 K31 ["IconName"]
       83 GETTABLEKS                       R12 R12 K32 ["Folder"]
       85 SETTABLEKS                       R12 R11 K26 ["name"]
       87 GETUPVAL                         R12 0
       88 GETTABLEKS                       R12 R12 K15 ["Enums"]
       90 GETTABLEKS                       R12 R12 K33 ["IconVariant"]
       92 GETTABLEKS                       R12 R12 K34 ["Filled"]
       94 SETTABLEKS                       R12 R11 K27 ["variant"]
       96 GETTABLEKS                       R12 R1 K35 ["Color"]
       98 GETTABLEKS                       R12 R12 K36 ["Extended"]
      100 GETTABLEKS                       R12 R12 K37 ["Yellow"]
      102 GETTABLEKS                       R12 R12 K38 ["Yellow_300"]
      104 SETTABLEKS                       R12 R11 K28 ["style"]
      106 GETTABLEKS                       R12 R1 K39 ["Size"]
      108 GETTABLEKS                       R12 R12 K40 ["Size_400"]
      110 SETTABLEKS                       R12 R11 K29 ["size"]
      112 CALL                             R9 2 1
      113 SETTABLEKS                       R9 R8 K22 ["Icon"]
      115 GETUPVAL                         R9 2
      116 GETTABLEKS                       R9 R9 K5 ["createElement"]
      118 GETUPVAL                         R10 0
      119 GETTABLEKS                       R10 R10 K41 ["Text"]
      121 DUPTABLE                         R11 K42 [{"LayoutOrder", "Text", "tag"}]
      122 LOADN                            R12 2
      123 SETTABLEKS                       R12 R11 K7 ["LayoutOrder"]
      125 GETTABLEKS                       R12 R0 K32 ["Folder"]
      127 GETTABLEKS                       R12 R12 K23 ["Name"]
      129 SETTABLEKS                       R12 R11 K41 ["Text"]
      131 NEWTABLE                         R12 2 0
      133 LOADB                            R13 1
      134 SETTABLEKS                       R13 R12 K43 ["fill auto-y text-label-medium text-truncate-end text-align-x-left"]
      136 GETTABLEKS                       R13 R0 K12 ["IsDisabled"]
      138 SETTABLEKS                       R13 R12 K44 ["content-inverse-muted"]
      140 SETTABLEKS                       R12 R11 K10 ["tag"]
      142 CALL                             R9 2 1
      143 SETTABLEKS                       R9 R8 K23 ["Name"]
      145 LOADB                            R9 0
      146 GETTABLEKS                       R10 R0 K12 ["IsDisabled"]
      148 JUMPIFEQKB                       R10 TRUE ; [+45]
      150 GETUPVAL                         R9 2
      151 GETTABLEKS                       R9 R9 K5 ["createElement"]
      153 GETUPVAL                         R10 0
      154 GETTABLEKS                       R10 R10 K6 ["View"]
      156 DUPTABLE                         R11 K45 [{"LayoutOrder", "onActivated", "tag"}]
      157 LOADN                            R12 3
      158 SETTABLEKS                       R12 R11 K7 ["LayoutOrder"]
      160 GETTABLEKS                       R12 R0 K46 ["OnDrillIn"]
      162 SETTABLEKS                       R12 R11 K8 ["onActivated"]
      164 LOADK                            R12 K47 ["auto-xy align-y-center data-testid=folder-row-drill-in"]
      165 SETTABLEKS                       R12 R11 K10 ["tag"]
      167 GETUPVAL                         R12 2
      168 GETTABLEKS                       R12 R12 K5 ["createElement"]
      170 GETUPVAL                         R13 0
      171 GETTABLEKS                       R13 R13 K22 ["Icon"]
      173 DUPTABLE                         R14 K48 [{"name", "size"}]
      174 GETUPVAL                         R15 0
      175 GETTABLEKS                       R15 R15 K15 ["Enums"]
      177 GETTABLEKS                       R15 R15 K31 ["IconName"]
      179 GETTABLEKS                       R15 R15 K49 ["ChevronSmallRight"]
      181 SETTABLEKS                       R15 R14 K26 ["name"]
      183 GETUPVAL                         R15 0
      184 GETTABLEKS                       R15 R15 K15 ["Enums"]
      186 GETTABLEKS                       R15 R15 K50 ["IconSize"]
      188 GETTABLEKS                       R15 R15 K51 ["Small"]
      190 SETTABLEKS                       R15 R14 K29 ["size"]
      192 CALL                             R12 2 -1
      193 CALL                             R9 -1 1
      194 SETTABLEKS                       R9 R8 K24 ["DrillInButton"]
      196 CALL                             R5 3 -1
      197 RETURN                           R5 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["use"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["createElement"]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["View"]
       10 DUPTABLE                         R3 K4 [{"tag"}]
       11 LOADK                            R4 K5 ["size-full align-x-center align-y-center padding-medium"]
       12 SETTABLEKS                       R4 R3 K3 ["tag"]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K1 ["createElement"]
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R5 R5 K6 ["Text"]
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

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["View"]
        6 DUPTABLE                         R2 K3 [{"tag"}]
        7 LOADK                            R3 K4 ["size-full align-x-center align-y-center"]
        8 SETTABLEKS                       R3 R2 K2 ["tag"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K0 ["createElement"]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K5 ["Loading"]
       16 DUPTABLE                         R5 K7 [{"size"}]
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R6 R6 K8 ["Enums"]
       20 GETTABLEKS                       R6 R6 K9 ["IconSize"]
       22 GETTABLEKS                       R6 R6 K10 ["Medium"]
       24 SETTABLEKS                       R6 R5 K6 ["size"]
       26 CALL                             R3 2 -1
       27 CALL                             R0 -1 -1
       28 RETURN                           R0 -1

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
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K1 ["Uid"]
        7 NAMECALL                         R0 R0 K2 ["getScopeWithUid"]
        9 CALL                             R0 2 1
       10 JUMPIFNOT                        R0 ; [+14]
       11 GETTABLEKS                       R1 R0 K3 ["Children"]
       13 JUMPIFEQKNIL                     R1 ; [+11]
       15 GETUPVAL                         R1 3
       16 GETUPVAL                         R2 4
       17 GETTABLEKS                       R3 R0 K3 ["Children"]
       19 CALL                             R2 1 1
       20 CALL                             R1 1 0
       21 GETUPVAL                         R1 5
       22 LOADB                            R2 0
       23 CALL                             R1 1 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R1 6
       26 CALL                             R1 0 0
       27 RETURN                           R0 0

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
        1 JUMPIFNOTEQKS                    R0 K0 [""] ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K1 ["MoveInfo"]
        8 GETUPVAL                         R3 0
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K2 ["CurrentScope"]
       12 NAMECALL                         R0 R0 K3 ["requestMoveSelectionToItem"]
       14 CALL                             R0 4 0
       15 GETUPVAL                         R0 3
       16 NAMECALL                         R0 R0 K4 ["closeDialog"]
       18 CALL                             R0 1 0
       19 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Path"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

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
       42 SETTABLEKS                       R5 R4 K8 ["OnSelect"]
       44 NEWCLOSURE                       R5 P1
       45 CAPTURE                          VAL R0
       46 CAPTURE                          UPVAL U5
       47 CAPTURE                          UPVAL U6
       48 CAPTURE                          UPVAL U7
       49 CAPTURE                          UPVAL U8
       50 SETTABLEKS                       R5 R4 K9 ["OnDrillIn"]
       52 SETTABLEKS                       R1 R4 K10 ["LayoutOrder"]
       54 CALL                             R2 2 -1
       55 RETURN                           R2 -1

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
       52 NEWCLOSURE                       R17 P0
       53 CAPTURE                          VAL R6
       54 CAPTURE                          UPVAL U7
       55 GETUPVAL                         R18 8
       56 CALL                             R18 0 1
       57 GETTABLEKS                       R18 R18 K5 ["Items"]
       59 NEWCLOSURE                       R19 P1
       60 CAPTURE                          VAL R14
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R0
       64 CAPTURE                          UPVAL U9
       65 CAPTURE                          VAL R12
       66 GETUPVAL                         R20 6
       67 GETTABLEKS                       R20 R20 K6 ["useEffect"]
       69 NEWCLOSURE                       R21 P2
       70 CAPTURE                          VAL R16
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R12
       74 CAPTURE                          VAL R17
       75 CAPTURE                          VAL R14
       76 CAPTURE                          VAL R19
       77 NEWTABLE                         R22 0 2
       79 MOVE                             R23 R7
       80 MOVE                             R24 R18
       81 SETLIST                          R22 R23 2 [1]
       83 CALL                             R20 2 0
       84 GETUPVAL                         R20 6
       85 GETTABLEKS                       R20 R20 K7 ["useMemo"]
       87 NEWCLOSURE                       R21 P3
       88 CAPTURE                          VAL R0
       89 CAPTURE                          UPVAL U7
       90 NEWTABLE                         R22 0 1
       92 GETTABLEKS                       R23 R0 K8 ["MoveInfo"]
       94 SETLIST                          R22 R23 1 [1]
       96 CALL                             R20 2 1
       97 NEWCLOSURE                       R21 P4
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R8
      102 NEWCLOSURE                       R22 P5
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R8
      105 CAPTURE                          VAL R10
      106 NEWCLOSURE                       R23 P6
      107 CAPTURE                          VAL R15
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R0
      110 CAPTURE                          VAL R1
      111 LENGTH                           R25 R9
      112 LOADN                            R26 0
      113 JUMPIFLT                         R26 R25 ; [+2]
      115 LOADB                            R24 0 +1
      116 LOADB                            R24 1
      117 GETUPVAL                         R25 6
      118 GETTABLEKS                       R25 R25 K9 ["createElement"]
      120 GETUPVAL                         R26 10
      121 GETTABLEKS                       R26 R26 K10 ["View"]
      123 DUPTABLE                         R27 K12 [{"tag"}]
      124 LOADK                            R28 K13 ["col size-full padding-medium gap-medium"]
      125 SETTABLEKS                       R28 R27 K11 ["tag"]
      127 DUPTABLE                         R28 K17 [{"Description", "List", "Footer"}]
      128 GETUPVAL                         R29 6
      129 GETTABLEKS                       R29 R29 K9 ["createElement"]
      131 GETUPVAL                         R30 10
      132 GETTABLEKS                       R30 R30 K10 ["View"]
      134 DUPTABLE                         R31 K19 [{"LayoutOrder", "tag"}]
      135 LOADN                            R32 1
      136 SETTABLEKS                       R32 R31 K18 ["LayoutOrder"]
      138 LOADK                            R32 K20 ["row size-full-0 auto-y align-y-center gap-small"]
      139 SETTABLEKS                       R32 R31 K11 ["tag"]
      141 DUPTABLE                         R32 K23 [{"Text", "RefreshButton"}]
      142 GETUPVAL                         R33 6
      143 GETTABLEKS                       R33 R33 K9 ["createElement"]
      145 GETUPVAL                         R34 10
      146 GETTABLEKS                       R34 R34 K21 ["Text"]
      148 DUPTABLE                         R35 K24 [{"LayoutOrder", "Text", "tag"}]
      149 LOADN                            R36 1
      150 SETTABLEKS                       R36 R35 K18 ["LayoutOrder"]
      152 LOADK                            R38 K25 ["Dialogs"]
      153 LOADK                            R39 K26 ["MoveDescription"]
      154 NAMECALL                         R36 R4 K27 ["getText"]
      156 CALL                             R36 3 1
      157 SETTABLEKS                       R36 R35 K21 ["Text"]
      159 LOADK                            R36 K28 ["fill text-align-x-left text-body-medium text-wrap"]
      160 SETTABLEKS                       R36 R35 K11 ["tag"]
      162 CALL                             R33 2 1
      163 SETTABLEKS                       R33 R32 K21 ["Text"]
      165 GETUPVAL                         R33 6
      166 GETTABLEKS                       R33 R33 K9 ["createElement"]
      168 GETUPVAL                         R34 10
      169 GETTABLEKS                       R34 R34 K29 ["Tooltip"]
      171 DUPTABLE                         R35 K32 [{"LayoutOrder", "title", "side"}]
      172 LOADN                            R36 2
      173 SETTABLEKS                       R36 R35 K18 ["LayoutOrder"]
      175 LOADK                            R38 K29 ["Tooltip"]
      176 LOADK                            R39 K33 ["Refresh"]
      177 NAMECALL                         R36 R4 K27 ["getText"]
      179 CALL                             R36 3 1
      180 SETTABLEKS                       R36 R35 K30 ["title"]
      182 GETUPVAL                         R36 10
      183 GETTABLEKS                       R36 R36 K34 ["Enums"]
      185 GETTABLEKS                       R36 R36 K35 ["PopoverSide"]
      187 GETTABLEKS                       R36 R36 K36 ["Bottom"]
      189 SETTABLEKS                       R36 R35 K31 ["side"]
      191 GETUPVAL                         R36 6
      192 GETTABLEKS                       R36 R36 K9 ["createElement"]
      194 GETUPVAL                         R37 10
      195 GETTABLEKS                       R37 R37 K37 ["IconButton"]
      197 DUPTABLE                         R38 K43 [{"onActivated", "variant", "isDisabled", "size", "icon"}]
      198 SETTABLEKS                       R19 R38 K38 ["onActivated"]
      200 GETUPVAL                         R39 10
      201 GETTABLEKS                       R39 R39 K34 ["Enums"]
      203 GETTABLEKS                       R39 R39 K44 ["ButtonVariant"]
      205 GETTABLEKS                       R39 R39 K45 ["Utility"]
      207 SETTABLEKS                       R39 R38 K39 ["variant"]
      209 SETTABLEKS                       R13 R38 K40 ["isDisabled"]
      211 GETUPVAL                         R39 10
      212 GETTABLEKS                       R39 R39 K34 ["Enums"]
      214 GETTABLEKS                       R39 R39 K46 ["InputSize"]
      216 GETTABLEKS                       R39 R39 K47 ["XSmall"]
      218 SETTABLEKS                       R39 R38 K41 ["size"]
      220 GETUPVAL                         R39 10
      221 GETTABLEKS                       R39 R39 K34 ["Enums"]
      223 GETTABLEKS                       R39 R39 K48 ["IconName"]
      225 GETTABLEKS                       R39 R39 K49 ["TwoArrowsSpinClockwise"]
      227 SETTABLEKS                       R39 R38 K42 ["icon"]
      229 CALL                             R36 2 -1
      230 CALL                             R33 -1 1
      231 SETTABLEKS                       R33 R32 K22 ["RefreshButton"]
      233 CALL                             R29 3 1
      234 SETTABLEKS                       R29 R28 K14 ["Description"]
      236 GETUPVAL                         R29 6
      237 GETTABLEKS                       R29 R29 K9 ["createElement"]
      239 GETUPVAL                         R30 10
      240 GETTABLEKS                       R30 R30 K10 ["View"]
      242 DUPTABLE                         R31 K19 [{"LayoutOrder", "tag"}]
      243 LOADN                            R32 2
      244 SETTABLEKS                       R32 R31 K18 ["LayoutOrder"]
      246 LOADK                            R32 K50 ["col size-full-0 fill stroke-emphasis radius-medium padding-small"]
      247 SETTABLEKS                       R32 R31 K11 ["tag"]
      249 DUPTABLE                         R32 K52 [{"Content"}]
      250 JUMPIFNOT                        R13 ; [+6]
      251 GETUPVAL                         R33 6
      252 GETTABLEKS                       R33 R33 K9 ["createElement"]
      254 GETUPVAL                         R34 11
      255 CALL                             R33 1 1
      256 JUMP                             ; [+60]
      257 GETUPVAL                         R33 6
      258 GETTABLEKS                       R33 R33 K9 ["createElement"]
      260 GETUPVAL                         R34 10
      261 GETTABLEKS                       R34 R34 K53 ["ScrollView"]
      263 DUPTABLE                         R35 K56 [{"tag", "layout", "scroll"}]
      264 LOADK                            R36 K57 ["size-full-0 fill"]
      265 SETTABLEKS                       R36 R35 K11 ["tag"]
      267 DUPTABLE                         R36 K59 [{"FillDirection"}]
      268 GETIMPORT                        R37 K62 [Enum.FillDirection.Vertical]
      270 SETTABLEKS                       R37 R36 K58 ["FillDirection"]
      272 SETTABLEKS                       R36 R35 K54 ["layout"]
      274 DUPTABLE                         R36 K66 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      275 GETIMPORT                        R37 K69 [Enum.AutomaticSize.Y]
      277 SETTABLEKS                       R37 R36 K63 ["AutomaticCanvasSize"]
      279 GETIMPORT                        R37 K72 [UDim2.fromOffset]
      281 LOADN                            R38 0
      282 LOADN                            R39 0
      283 CALL                             R37 2 1
      284 SETTABLEKS                       R37 R36 K64 ["CanvasSize"]
      286 GETIMPORT                        R37 K73 [Enum.ScrollingDirection.Y]
      288 SETTABLEKS                       R37 R36 K65 ["ScrollingDirection"]
      290 SETTABLEKS                       R36 R35 K55 ["scroll"]
      292 LENGTH                           R37 R11
      293 JUMPIFNOTEQKN                    R37 K74 [0] ; [+7]
      295 GETUPVAL                         R36 6
      296 GETTABLEKS                       R36 R36 K9 ["createElement"]
      298 GETUPVAL                         R37 12
      299 CALL                             R36 1 1
      300 JUMP                             ; [+15]
      301 GETUPVAL                         R36 13
      302 GETTABLEKS                       R36 R36 K75 ["map"]
      304 MOVE                             R37 R11
      305 NEWCLOSURE                       R38 P7
      306 CAPTURE                          UPVAL U6
      307 CAPTURE                          UPVAL U14
      308 CAPTURE                          VAL R20
      309 CAPTURE                          VAL R15
      310 CAPTURE                          VAL R16
      311 CAPTURE                          VAL R9
      312 CAPTURE                          VAL R7
      313 CAPTURE                          VAL R10
      314 CAPTURE                          VAL R8
      315 CALL                             R36 2 1
      316 CALL                             R33 3 1
      317 SETTABLEKS                       R33 R32 K51 ["Content"]
      319 CALL                             R29 3 1
      320 SETTABLEKS                       R29 R28 K15 ["List"]
      322 GETUPVAL                         R29 6
      323 GETTABLEKS                       R29 R29 K9 ["createElement"]
      325 GETUPVAL                         R30 10
      326 GETTABLEKS                       R30 R30 K10 ["View"]
      328 DUPTABLE                         R31 K19 [{"LayoutOrder", "tag"}]
      329 LOADN                            R32 3
      330 SETTABLEKS                       R32 R31 K18 ["LayoutOrder"]
      332 LOADK                            R32 K76 ["row size-full-0 auto-y align-y-center gap-xsmall"]
      333 SETTABLEKS                       R32 R31 K11 ["tag"]
      335 DUPTABLE                         R32 K81 [{"Back", "Spacer", "Cancel", "Move"}]
      336 MOVE                             R33 R24
      337 JUMPIFNOT                        R33 ; [+43]
      338 GETUPVAL                         R33 6
      339 GETTABLEKS                       R33 R33 K9 ["createElement"]
      341 GETUPVAL                         R34 10
      342 GETTABLEKS                       R34 R34 K82 ["Button"]
      344 DUPTABLE                         R35 K85 [{"LayoutOrder", "text", "variant", "size", "onActivated", "testId"}]
      345 NAMECALL                         R36 R5 K86 ["getNextOrder"]
      347 CALL                             R36 1 1
      348 SETTABLEKS                       R36 R35 K18 ["LayoutOrder"]
      350 LOADK                            R38 K87 ["TopBar"]
      351 LOADK                            R39 K88 ["BackButton"]
      352 NAMECALL                         R36 R4 K27 ["getText"]
      354 CALL                             R36 3 1
      355 SETTABLEKS                       R36 R35 K83 ["text"]
      357 GETUPVAL                         R36 10
      358 GETTABLEKS                       R36 R36 K34 ["Enums"]
      360 GETTABLEKS                       R36 R36 K44 ["ButtonVariant"]
      362 GETTABLEKS                       R36 R36 K89 ["Standard"]
      364 SETTABLEKS                       R36 R35 K39 ["variant"]
      366 GETUPVAL                         R36 10
      367 GETTABLEKS                       R36 R36 K34 ["Enums"]
      369 GETTABLEKS                       R36 R36 K46 ["InputSize"]
      371 GETTABLEKS                       R36 R36 K90 ["Small"]
      373 SETTABLEKS                       R36 R35 K41 ["size"]
      375 SETTABLEKS                       R22 R35 K38 ["onActivated"]
      377 LOADK                            R36 K91 ["move-dialog-back-button"]
      378 SETTABLEKS                       R36 R35 K84 ["testId"]
      380 CALL                             R33 2 1
      381 SETTABLEKS                       R33 R32 K77 ["Back"]
      383 GETUPVAL                         R33 6
      384 GETTABLEKS                       R33 R33 K9 ["createElement"]
      386 GETUPVAL                         R34 10
      387 GETTABLEKS                       R34 R34 K10 ["View"]
      389 DUPTABLE                         R35 K19 [{"LayoutOrder", "tag"}]
      390 NAMECALL                         R36 R5 K86 ["getNextOrder"]
      392 CALL                             R36 1 1
      393 SETTABLEKS                       R36 R35 K18 ["LayoutOrder"]
      395 LOADK                            R36 K92 ["fill auto-y"]
      396 SETTABLEKS                       R36 R35 K11 ["tag"]
      398 CALL                             R33 2 1
      399 SETTABLEKS                       R33 R32 K78 ["Spacer"]
      401 GETUPVAL                         R33 6
      402 GETTABLEKS                       R33 R33 K9 ["createElement"]
      404 GETUPVAL                         R34 10
      405 GETTABLEKS                       R34 R34 K82 ["Button"]
      407 DUPTABLE                         R35 K85 [{"LayoutOrder", "text", "variant", "size", "onActivated", "testId"}]
      408 NAMECALL                         R36 R5 K86 ["getNextOrder"]
      410 CALL                             R36 1 1
      411 SETTABLEKS                       R36 R35 K18 ["LayoutOrder"]
      413 LOADK                            R38 K93 ["MainView"]
      414 LOADK                            R39 K94 ["CancelText"]
      415 NAMECALL                         R36 R4 K27 ["getText"]
      417 CALL                             R36 3 1
      418 SETTABLEKS                       R36 R35 K83 ["text"]
      420 GETUPVAL                         R36 10
      421 GETTABLEKS                       R36 R36 K34 ["Enums"]
      423 GETTABLEKS                       R36 R36 K44 ["ButtonVariant"]
      425 GETTABLEKS                       R36 R36 K89 ["Standard"]
      427 SETTABLEKS                       R36 R35 K39 ["variant"]
      429 GETUPVAL                         R36 10
      430 GETTABLEKS                       R36 R36 K34 ["Enums"]
      432 GETTABLEKS                       R36 R36 K46 ["InputSize"]
      434 GETTABLEKS                       R36 R36 K90 ["Small"]
      436 SETTABLEKS                       R36 R35 K41 ["size"]
      438 NEWCLOSURE                       R36 P8
      439 CAPTURE                          VAL R1
      440 SETTABLEKS                       R36 R35 K38 ["onActivated"]
      442 LOADK                            R36 K95 ["move-dialog-cancel-button"]
      443 SETTABLEKS                       R36 R35 K84 ["testId"]
      445 CALL                             R33 2 1
      446 SETTABLEKS                       R33 R32 K79 ["Cancel"]
      448 GETUPVAL                         R33 6
      449 GETTABLEKS                       R33 R33 K9 ["createElement"]
      451 GETUPVAL                         R34 10
      452 GETTABLEKS                       R34 R34 K82 ["Button"]
      454 DUPTABLE                         R35 K96 [{"LayoutOrder", "text", "variant", "size", "isDisabled", "onActivated", "testId"}]
      455 NAMECALL                         R36 R5 K86 ["getNextOrder"]
      457 CALL                             R36 1 1
      458 SETTABLEKS                       R36 R35 K18 ["LayoutOrder"]
      460 LOADK                            R38 K97 ["ContextMenu"]
      461 LOADK                            R39 K80 ["Move"]
      462 NAMECALL                         R36 R4 K27 ["getText"]
      464 CALL                             R36 3 1
      465 SETTABLEKS                       R36 R35 K83 ["text"]
      467 GETUPVAL                         R36 10
      468 GETTABLEKS                       R36 R36 K34 ["Enums"]
      470 GETTABLEKS                       R36 R36 K44 ["ButtonVariant"]
      472 GETTABLEKS                       R36 R36 K98 ["Emphasis"]
      474 SETTABLEKS                       R36 R35 K39 ["variant"]
      476 GETUPVAL                         R36 10
      477 GETTABLEKS                       R36 R36 K34 ["Enums"]
      479 GETTABLEKS                       R36 R36 K46 ["InputSize"]
      481 GETTABLEKS                       R36 R36 K90 ["Small"]
      483 SETTABLEKS                       R36 R35 K41 ["size"]
      485 JUMPIFEQKS                       R15 K4 [""] ; [+2]
      487 LOADB                            R36 0 +1
      488 LOADB                            R36 1
      489 SETTABLEKS                       R36 R35 K40 ["isDisabled"]
      491 SETTABLEKS                       R23 R35 K38 ["onActivated"]
      493 LOADK                            R36 K99 ["move-dialog-move-button"]
      494 SETTABLEKS                       R36 R35 K84 ["testId"]
      496 CALL                             R33 2 1
      497 SETTABLEKS                       R33 R32 K80 ["Move"]
      499 CALL                             R29 3 1
      500 SETTABLEKS                       R29 R28 K16 ["Footer"]
      502 CALL                             R25 3 -1
      503 RETURN                           R25 -1

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
