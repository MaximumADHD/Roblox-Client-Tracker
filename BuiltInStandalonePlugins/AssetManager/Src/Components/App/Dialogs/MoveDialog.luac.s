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
       23 DUPTABLE                         R7 K12 [{"LayoutOrder", "onActivated", "stateLayer", "tag", "testId"}]
       24 GETTABLEKS                       R8 R0 K7 ["LayoutOrder"]
       26 SETTABLEKS                       R8 R7 K7 ["LayoutOrder"]
       28 GETTABLEKS                       R9 R0 K13 ["IsDisabled"]
       30 JUMPIF                           R9 ; [+5]
       31 NEWCLOSURE                       R8 P0
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R0
       35 JUMP                             ; [+1]
       36 LOADNIL                          R8
       37 SETTABLEKS                       R8 R7 K8 ["onActivated"]
       39 DUPTABLE                         R8 K15 [{"affordance"}]
       40 GETUPVAL                         R9 0
       41 GETTABLEKS                       R9 R9 K16 ["Enums"]
       43 GETTABLEKS                       R9 R9 K17 ["StateLayerAffordance"]
       45 GETTABLEKS                       R9 R9 K18 ["None"]
       47 SETTABLEKS                       R9 R8 K14 ["affordance"]
       49 SETTABLEKS                       R8 R7 K9 ["stateLayer"]
       51 NEWTABLE                         R8 4 0
       53 LOADB                            R9 1
       54 SETTABLEKS                       R9 R8 K19 ["row radius-small size-full-0 auto-y align-y-center padding-xsmall gap-small"]
       56 GETTABLEKS                       R9 R0 K20 ["IsSelected"]
       58 SETTABLEKS                       R9 R8 K21 ["bg-action-soft-emphasis"]
       60 GETTABLEKS                       R10 R0 K20 ["IsSelected"]
       62 NOT                              R9 R10
       63 SETTABLEKS                       R9 R8 K22 ["am-hover"]
       65 SETTABLEKS                       R8 R7 K10 ["tag"]
       67 LOADK                            R8 K23 ["move-dialog-folder-row"]
       68 SETTABLEKS                       R8 R7 K11 ["testId"]
       70 DUPTABLE                         R8 K27 [{"Icon", "Name", "DrillInButton"}]
       71 GETUPVAL                         R9 2
       72 GETTABLEKS                       R9 R9 K5 ["createElement"]
       74 GETUPVAL                         R10 0
       75 GETTABLEKS                       R10 R10 K24 ["Icon"]
       77 DUPTABLE                         R11 K32 [{"LayoutOrder", "name", "variant", "style", "size"}]
       78 LOADN                            R12 1
       79 SETTABLEKS                       R12 R11 K7 ["LayoutOrder"]
       81 GETUPVAL                         R12 0
       82 GETTABLEKS                       R12 R12 K16 ["Enums"]
       84 GETTABLEKS                       R12 R12 K33 ["IconName"]
       86 GETTABLEKS                       R12 R12 K34 ["Folder"]
       88 SETTABLEKS                       R12 R11 K28 ["name"]
       90 GETUPVAL                         R12 0
       91 GETTABLEKS                       R12 R12 K16 ["Enums"]
       93 GETTABLEKS                       R12 R12 K35 ["IconVariant"]
       95 GETTABLEKS                       R12 R12 K36 ["Filled"]
       97 SETTABLEKS                       R12 R11 K29 ["variant"]
       99 GETTABLEKS                       R12 R1 K37 ["Color"]
      101 GETTABLEKS                       R12 R12 K38 ["Extended"]
      103 GETTABLEKS                       R12 R12 K39 ["Yellow"]
      105 GETTABLEKS                       R12 R12 K40 ["Yellow_300"]
      107 SETTABLEKS                       R12 R11 K30 ["style"]
      109 GETTABLEKS                       R12 R1 K41 ["Size"]
      111 GETTABLEKS                       R12 R12 K42 ["Size_400"]
      113 SETTABLEKS                       R12 R11 K31 ["size"]
      115 CALL                             R9 2 1
      116 SETTABLEKS                       R9 R8 K24 ["Icon"]
      118 GETUPVAL                         R9 2
      119 GETTABLEKS                       R9 R9 K5 ["createElement"]
      121 GETUPVAL                         R10 0
      122 GETTABLEKS                       R10 R10 K43 ["Text"]
      124 DUPTABLE                         R11 K44 [{"LayoutOrder", "Text", "tag"}]
      125 LOADN                            R12 2
      126 SETTABLEKS                       R12 R11 K7 ["LayoutOrder"]
      128 GETTABLEKS                       R12 R0 K34 ["Folder"]
      130 GETTABLEKS                       R12 R12 K25 ["Name"]
      132 SETTABLEKS                       R12 R11 K43 ["Text"]
      134 NEWTABLE                         R12 2 0
      136 LOADB                            R13 1
      137 SETTABLEKS                       R13 R12 K45 ["fill auto-y text-label-medium text-truncate-end text-align-x-left"]
      139 GETTABLEKS                       R13 R0 K13 ["IsDisabled"]
      141 SETTABLEKS                       R13 R12 K46 ["content-inverse-muted"]
      143 SETTABLEKS                       R12 R11 K10 ["tag"]
      145 CALL                             R9 2 1
      146 SETTABLEKS                       R9 R8 K25 ["Name"]
      148 LOADB                            R9 0
      149 GETTABLEKS                       R10 R0 K13 ["IsDisabled"]
      151 JUMPIFEQKB                       R10 TRUE ; [+48]
      153 GETUPVAL                         R9 2
      154 GETTABLEKS                       R9 R9 K5 ["createElement"]
      156 GETUPVAL                         R10 0
      157 GETTABLEKS                       R10 R10 K6 ["View"]
      159 DUPTABLE                         R11 K47 [{"LayoutOrder", "onActivated", "tag", "testId"}]
      160 LOADN                            R12 3
      161 SETTABLEKS                       R12 R11 K7 ["LayoutOrder"]
      163 GETTABLEKS                       R12 R0 K48 ["OnDrillIn"]
      165 SETTABLEKS                       R12 R11 K8 ["onActivated"]
      167 LOADK                            R12 K49 ["auto-xy align-y-center"]
      168 SETTABLEKS                       R12 R11 K10 ["tag"]
      170 LOADK                            R12 K50 ["folder-row-drill-in"]
      171 SETTABLEKS                       R12 R11 K11 ["testId"]
      173 GETUPVAL                         R12 2
      174 GETTABLEKS                       R12 R12 K5 ["createElement"]
      176 GETUPVAL                         R13 0
      177 GETTABLEKS                       R13 R13 K24 ["Icon"]
      179 DUPTABLE                         R14 K51 [{"name", "size"}]
      180 GETUPVAL                         R15 0
      181 GETTABLEKS                       R15 R15 K16 ["Enums"]
      183 GETTABLEKS                       R15 R15 K33 ["IconName"]
      185 GETTABLEKS                       R15 R15 K52 ["ChevronSmallRight"]
      187 SETTABLEKS                       R15 R14 K28 ["name"]
      189 GETUPVAL                         R15 0
      190 GETTABLEKS                       R15 R15 K16 ["Enums"]
      192 GETTABLEKS                       R15 R15 K53 ["IconSize"]
      194 GETTABLEKS                       R15 R15 K54 ["Small"]
      196 SETTABLEKS                       R15 R14 K31 ["size"]
      198 CALL                             R12 2 -1
      199 CALL                             R9 -1 1
      200 SETTABLEKS                       R9 R8 K26 ["DrillInButton"]
      202 CALL                             R5 3 -1
      203 RETURN                           R5 -1

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
      142 DUPTABLE                         R30 K13 [{"tag"}]
      143 LOADK                            R31 K14 ["col size-full padding-medium gap-medium"]
      144 SETTABLEKS                       R31 R30 K12 ["tag"]
      146 DUPTABLE                         R31 K18 [{"Description", "List", "Footer"}]
      147 GETUPVAL                         R32 6
      148 GETTABLEKS                       R32 R32 K10 ["createElement"]
      150 GETUPVAL                         R33 10
      151 GETTABLEKS                       R33 R33 K11 ["View"]
      153 DUPTABLE                         R34 K20 [{"LayoutOrder", "tag"}]
      154 LOADN                            R35 1
      155 SETTABLEKS                       R35 R34 K19 ["LayoutOrder"]
      157 LOADK                            R35 K21 ["row size-full-0 auto-y align-y-center gap-small"]
      158 SETTABLEKS                       R35 R34 K12 ["tag"]
      160 DUPTABLE                         R35 K24 [{"Text", "RefreshButton"}]
      161 GETUPVAL                         R36 6
      162 GETTABLEKS                       R36 R36 K10 ["createElement"]
      164 GETUPVAL                         R37 10
      165 GETTABLEKS                       R37 R37 K22 ["Text"]
      167 DUPTABLE                         R38 K25 [{"LayoutOrder", "Text", "tag"}]
      168 LOADN                            R39 1
      169 SETTABLEKS                       R39 R38 K19 ["LayoutOrder"]
      171 LOADK                            R41 K26 ["Dialogs"]
      172 LOADK                            R42 K27 ["MoveDescription"]
      173 NAMECALL                         R39 R4 K28 ["getText"]
      175 CALL                             R39 3 1
      176 SETTABLEKS                       R39 R38 K22 ["Text"]
      178 LOADK                            R39 K29 ["fill text-align-x-left text-body-medium text-wrap"]
      179 SETTABLEKS                       R39 R38 K12 ["tag"]
      181 CALL                             R36 2 1
      182 SETTABLEKS                       R36 R35 K22 ["Text"]
      184 GETUPVAL                         R36 6
      185 GETTABLEKS                       R36 R36 K10 ["createElement"]
      187 GETUPVAL                         R37 10
      188 GETTABLEKS                       R37 R37 K30 ["Tooltip"]
      190 DUPTABLE                         R38 K34 [{"LayoutOrder", "title", "align", "side"}]
      191 LOADN                            R39 2
      192 SETTABLEKS                       R39 R38 K19 ["LayoutOrder"]
      194 LOADK                            R41 K30 ["Tooltip"]
      195 LOADK                            R42 K35 ["Refresh"]
      196 NAMECALL                         R39 R4 K28 ["getText"]
      198 CALL                             R39 3 1
      199 SETTABLEKS                       R39 R38 K31 ["title"]
      201 GETUPVAL                         R39 10
      202 GETTABLEKS                       R39 R39 K36 ["Enums"]
      204 GETTABLEKS                       R39 R39 K37 ["PopoverAlign"]
      206 GETTABLEKS                       R39 R39 K38 ["End"]
      208 SETTABLEKS                       R39 R38 K32 ["align"]
      210 GETUPVAL                         R39 10
      211 GETTABLEKS                       R39 R39 K36 ["Enums"]
      213 GETTABLEKS                       R39 R39 K39 ["PopoverSide"]
      215 GETTABLEKS                       R39 R39 K40 ["Bottom"]
      217 SETTABLEKS                       R39 R38 K33 ["side"]
      219 GETUPVAL                         R39 6
      220 GETTABLEKS                       R39 R39 K10 ["createElement"]
      222 GETUPVAL                         R40 10
      223 GETTABLEKS                       R40 R40 K41 ["IconButton"]
      225 DUPTABLE                         R41 K47 [{"onActivated", "variant", "isDisabled", "size", "icon"}]
      226 SETTABLEKS                       R21 R41 K42 ["onActivated"]
      228 GETUPVAL                         R42 10
      229 GETTABLEKS                       R42 R42 K36 ["Enums"]
      231 GETTABLEKS                       R42 R42 K48 ["ButtonVariant"]
      233 GETTABLEKS                       R42 R42 K49 ["Utility"]
      235 SETTABLEKS                       R42 R41 K43 ["variant"]
      237 SETTABLEKS                       R13 R41 K44 ["isDisabled"]
      239 GETUPVAL                         R42 10
      240 GETTABLEKS                       R42 R42 K36 ["Enums"]
      242 GETTABLEKS                       R42 R42 K50 ["InputSize"]
      244 GETTABLEKS                       R42 R42 K51 ["XSmall"]
      246 SETTABLEKS                       R42 R41 K45 ["size"]
      248 GETUPVAL                         R42 10
      249 GETTABLEKS                       R42 R42 K36 ["Enums"]
      251 GETTABLEKS                       R42 R42 K52 ["IconName"]
      253 GETTABLEKS                       R42 R42 K53 ["TwoArrowsSpinClockwise"]
      255 SETTABLEKS                       R42 R41 K46 ["icon"]
      257 CALL                             R39 2 -1
      258 CALL                             R36 -1 1
      259 SETTABLEKS                       R36 R35 K23 ["RefreshButton"]
      261 CALL                             R32 3 1
      262 SETTABLEKS                       R32 R31 K15 ["Description"]
      264 GETUPVAL                         R32 6
      265 GETTABLEKS                       R32 R32 K10 ["createElement"]
      267 GETUPVAL                         R33 10
      268 GETTABLEKS                       R33 R33 K11 ["View"]
      270 DUPTABLE                         R34 K20 [{"LayoutOrder", "tag"}]
      271 LOADN                            R35 2
      272 SETTABLEKS                       R35 R34 K19 ["LayoutOrder"]
      274 LOADK                            R35 K54 ["col size-full-0 fill stroke-emphasis radius-medium padding-small"]
      275 SETTABLEKS                       R35 R34 K12 ["tag"]
      277 DUPTABLE                         R35 K56 [{"Content"}]
      278 JUMPIFNOT                        R13 ; [+6]
      279 GETUPVAL                         R36 6
      280 GETTABLEKS                       R36 R36 K10 ["createElement"]
      282 GETUPVAL                         R37 11
      283 CALL                             R36 1 1
      284 JUMP                             ; [+61]
      285 GETUPVAL                         R36 6
      286 GETTABLEKS                       R36 R36 K10 ["createElement"]
      288 GETUPVAL                         R37 10
      289 GETTABLEKS                       R37 R37 K57 ["ScrollView"]
      291 DUPTABLE                         R38 K60 [{"tag", "layout", "scroll"}]
      292 LOADK                            R39 K61 ["size-full-0 fill"]
      293 SETTABLEKS                       R39 R38 K12 ["tag"]
      295 DUPTABLE                         R39 K63 [{"FillDirection"}]
      296 GETIMPORT                        R40 K66 [Enum.FillDirection.Vertical]
      298 SETTABLEKS                       R40 R39 K62 ["FillDirection"]
      300 SETTABLEKS                       R39 R38 K58 ["layout"]
      302 DUPTABLE                         R39 K70 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      303 GETIMPORT                        R40 K73 [Enum.AutomaticSize.Y]
      305 SETTABLEKS                       R40 R39 K67 ["AutomaticCanvasSize"]
      307 GETIMPORT                        R40 K76 [UDim2.fromOffset]
      309 LOADN                            R41 0
      310 LOADN                            R42 0
      311 CALL                             R40 2 1
      312 SETTABLEKS                       R40 R39 K68 ["CanvasSize"]
      314 GETIMPORT                        R40 K77 [Enum.ScrollingDirection.Y]
      316 SETTABLEKS                       R40 R39 K69 ["ScrollingDirection"]
      318 SETTABLEKS                       R39 R38 K59 ["scroll"]
      320 LENGTH                           R40 R11
      321 JUMPIFNOTEQKN                    R40 K78 [0] ; [+7]
      323 GETUPVAL                         R39 6
      324 GETTABLEKS                       R39 R39 K10 ["createElement"]
      326 GETUPVAL                         R40 12
      327 CALL                             R39 1 1
      328 JUMP                             ; [+16]
      329 GETUPVAL                         R39 13
      330 GETTABLEKS                       R39 R39 K79 ["map"]
      332 MOVE                             R40 R11
      333 NEWCLOSURE                       R41 P7
      334 CAPTURE                          UPVAL U6
      335 CAPTURE                          UPVAL U14
      336 CAPTURE                          VAL R22
      337 CAPTURE                          VAL R15
      338 CAPTURE                          VAL R16
      339 CAPTURE                          VAL R18
      340 CAPTURE                          VAL R9
      341 CAPTURE                          VAL R7
      342 CAPTURE                          VAL R10
      343 CAPTURE                          VAL R8
      344 CALL                             R39 2 1
      345 CALL                             R36 3 1
      346 SETTABLEKS                       R36 R35 K55 ["Content"]
      348 CALL                             R32 3 1
      349 SETTABLEKS                       R32 R31 K16 ["List"]
      351 GETUPVAL                         R32 6
      352 GETTABLEKS                       R32 R32 K10 ["createElement"]
      354 GETUPVAL                         R33 10
      355 GETTABLEKS                       R33 R33 K11 ["View"]
      357 DUPTABLE                         R34 K20 [{"LayoutOrder", "tag"}]
      358 LOADN                            R35 3
      359 SETTABLEKS                       R35 R34 K19 ["LayoutOrder"]
      361 LOADK                            R35 K80 ["row size-full-0 auto-y align-y-center gap-xsmall"]
      362 SETTABLEKS                       R35 R34 K12 ["tag"]
      364 DUPTABLE                         R35 K85 [{"Back", "Spacer", "Cancel", "Move"}]
      365 MOVE                             R36 R26
      366 JUMPIFNOT                        R36 ; [+43]
      367 GETUPVAL                         R36 6
      368 GETTABLEKS                       R36 R36 K10 ["createElement"]
      370 GETUPVAL                         R37 10
      371 GETTABLEKS                       R37 R37 K86 ["Button"]
      373 DUPTABLE                         R38 K89 [{"LayoutOrder", "text", "variant", "size", "onActivated", "testId"}]
      374 NAMECALL                         R39 R5 K90 ["getNextOrder"]
      376 CALL                             R39 1 1
      377 SETTABLEKS                       R39 R38 K19 ["LayoutOrder"]
      379 LOADK                            R41 K91 ["TopBar"]
      380 LOADK                            R42 K92 ["BackButton"]
      381 NAMECALL                         R39 R4 K28 ["getText"]
      383 CALL                             R39 3 1
      384 SETTABLEKS                       R39 R38 K87 ["text"]
      386 GETUPVAL                         R39 10
      387 GETTABLEKS                       R39 R39 K36 ["Enums"]
      389 GETTABLEKS                       R39 R39 K48 ["ButtonVariant"]
      391 GETTABLEKS                       R39 R39 K93 ["Standard"]
      393 SETTABLEKS                       R39 R38 K43 ["variant"]
      395 GETUPVAL                         R39 10
      396 GETTABLEKS                       R39 R39 K36 ["Enums"]
      398 GETTABLEKS                       R39 R39 K50 ["InputSize"]
      400 GETTABLEKS                       R39 R39 K94 ["Small"]
      402 SETTABLEKS                       R39 R38 K45 ["size"]
      404 SETTABLEKS                       R24 R38 K42 ["onActivated"]
      406 LOADK                            R39 K95 ["move-dialog-back-button"]
      407 SETTABLEKS                       R39 R38 K88 ["testId"]
      409 CALL                             R36 2 1
      410 SETTABLEKS                       R36 R35 K81 ["Back"]
      412 GETUPVAL                         R36 6
      413 GETTABLEKS                       R36 R36 K10 ["createElement"]
      415 GETUPVAL                         R37 10
      416 GETTABLEKS                       R37 R37 K11 ["View"]
      418 DUPTABLE                         R38 K20 [{"LayoutOrder", "tag"}]
      419 NAMECALL                         R39 R5 K90 ["getNextOrder"]
      421 CALL                             R39 1 1
      422 SETTABLEKS                       R39 R38 K19 ["LayoutOrder"]
      424 LOADK                            R39 K96 ["fill auto-y"]
      425 SETTABLEKS                       R39 R38 K12 ["tag"]
      427 CALL                             R36 2 1
      428 SETTABLEKS                       R36 R35 K82 ["Spacer"]
      430 GETUPVAL                         R36 6
      431 GETTABLEKS                       R36 R36 K10 ["createElement"]
      433 GETUPVAL                         R37 10
      434 GETTABLEKS                       R37 R37 K86 ["Button"]
      436 DUPTABLE                         R38 K89 [{"LayoutOrder", "text", "variant", "size", "onActivated", "testId"}]
      437 NAMECALL                         R39 R5 K90 ["getNextOrder"]
      439 CALL                             R39 1 1
      440 SETTABLEKS                       R39 R38 K19 ["LayoutOrder"]
      442 LOADK                            R41 K97 ["MainView"]
      443 LOADK                            R42 K98 ["CancelText"]
      444 NAMECALL                         R39 R4 K28 ["getText"]
      446 CALL                             R39 3 1
      447 SETTABLEKS                       R39 R38 K87 ["text"]
      449 GETUPVAL                         R39 10
      450 GETTABLEKS                       R39 R39 K36 ["Enums"]
      452 GETTABLEKS                       R39 R39 K48 ["ButtonVariant"]
      454 GETTABLEKS                       R39 R39 K93 ["Standard"]
      456 SETTABLEKS                       R39 R38 K43 ["variant"]
      458 GETUPVAL                         R39 10
      459 GETTABLEKS                       R39 R39 K36 ["Enums"]
      461 GETTABLEKS                       R39 R39 K50 ["InputSize"]
      463 GETTABLEKS                       R39 R39 K94 ["Small"]
      465 SETTABLEKS                       R39 R38 K45 ["size"]
      467 NEWCLOSURE                       R39 P8
      468 CAPTURE                          VAL R1
      469 SETTABLEKS                       R39 R38 K42 ["onActivated"]
      471 LOADK                            R39 K99 ["move-dialog-cancel-button"]
      472 SETTABLEKS                       R39 R38 K88 ["testId"]
      474 CALL                             R36 2 1
      475 SETTABLEKS                       R36 R35 K83 ["Cancel"]
      477 GETUPVAL                         R36 6
      478 GETTABLEKS                       R36 R36 K10 ["createElement"]
      480 GETUPVAL                         R37 10
      481 GETTABLEKS                       R37 R37 K86 ["Button"]
      483 DUPTABLE                         R38 K100 [{"LayoutOrder", "text", "variant", "size", "isDisabled", "onActivated", "testId"}]
      484 NAMECALL                         R39 R5 K90 ["getNextOrder"]
      486 CALL                             R39 1 1
      487 SETTABLEKS                       R39 R38 K19 ["LayoutOrder"]
      489 JUMPIFEQKS                       R27 K4 [""] ; [+10]
      491 LOADK                            R41 K26 ["Dialogs"]
      492 LOADK                            R42 K101 ["MoveToFolder"]
      493 DUPTABLE                         R43 K103 [{"folder"}]
      494 SETTABLEKS                       R27 R43 K102 ["folder"]
      496 NAMECALL                         R39 R4 K28 ["getText"]
      498 CALL                             R39 4 1
      499 JUMP                             ; [+5]
      500 LOADK                            R41 K104 ["ContextMenu"]
      501 LOADK                            R42 K84 ["Move"]
      502 NAMECALL                         R39 R4 K28 ["getText"]
      504 CALL                             R39 3 1
      505 SETTABLEKS                       R39 R38 K87 ["text"]
      507 GETUPVAL                         R39 10
      508 GETTABLEKS                       R39 R39 K36 ["Enums"]
      510 GETTABLEKS                       R39 R39 K48 ["ButtonVariant"]
      512 GETTABLEKS                       R39 R39 K105 ["Emphasis"]
      514 SETTABLEKS                       R39 R38 K43 ["variant"]
      516 GETUPVAL                         R39 10
      517 GETTABLEKS                       R39 R39 K36 ["Enums"]
      519 GETTABLEKS                       R39 R39 K50 ["InputSize"]
      521 GETTABLEKS                       R39 R39 K94 ["Small"]
      523 SETTABLEKS                       R39 R38 K45 ["size"]
      525 LOADB                            R39 0
      526 GETTABLEKS                       R40 R0 K3 ["RootScope"]
      528 JUMPIFEQ                         R7 R40 ; [+5]
      530 JUMPIFEQKS                       R15 K4 [""] ; [+2]
      532 LOADB                            R39 0 +1
      533 LOADB                            R39 1
      534 SETTABLEKS                       R39 R38 K44 ["isDisabled"]
      536 SETTABLEKS                       R25 R38 K42 ["onActivated"]
      538 LOADK                            R39 K106 ["move-dialog-move-button"]
      539 SETTABLEKS                       R39 R38 K88 ["testId"]
      541 CALL                             R36 2 1
      542 SETTABLEKS                       R36 R35 K84 ["Move"]
      544 CALL                             R32 3 1
      545 SETTABLEKS                       R32 R31 K17 ["Footer"]
      547 CALL                             R28 3 -1
      548 RETURN                           R28 -1

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
