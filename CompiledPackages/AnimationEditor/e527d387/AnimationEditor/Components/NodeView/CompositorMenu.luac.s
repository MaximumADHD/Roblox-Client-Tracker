PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsolutePosition"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 FASTCALL1                        TABLE_UNPACK R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [unpack]
        4 CALL                             R1 1 3
        5 JUMPIFEQKNIL                     R1 ; [+5]
        7 JUMPIFEQKNIL                     R2 ; [+3]
        9 JUMPIFNOTEQKNIL                  R3 ; [+7]
       11 GETIMPORT                        R4 K4 [UDim2.new]
       13 LOADN                            R5 -1000
       14 LOADN                            R6 0
       15 CALL                             R4 2 -1
       16 RETURN                           R4 -1
       17 GETIMPORT                        R4 K6 [UDim2.fromOffset]
       19 LOADK                            R7 K7 [0.5]
       20 GETTABLEKS                       R9 R2 K8 ["X"]
       22 GETTABLEKS                       R10 R3 K8 ["X"]
       24 SUB                              R8 R9 R10
       25 MUL                              R6 R7 R8
       26 GETTABLEKS                       R7 R1 K8 ["X"]
       28 FASTCALL2                        MATH_MAX R6 R7 ; [+3]
       30 GETIMPORT                        R5 K11 [math.max]
       32 CALL                             R5 2 1
       33 LOADN                            R6 0
       34 CALL                             R4 2 -1
       35 RETURN                           R4 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useBinding"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["useBinding"]
        8 LOADNIL                          R3
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K0 ["useBinding"]
       13 LOADNIL                          R5
       14 CALL                             R4 1 2
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K1 ["useCallback"]
       18 NEWCLOSURE                       R7 P0
       19 CAPTURE                          VAL R1
       20 NEWTABLE                         R8 0 0
       22 CALL                             R6 2 1
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R7 R7 K1 ["useCallback"]
       26 NEWCLOSURE                       R8 P1
       27 CAPTURE                          VAL R3
       28 NEWTABLE                         R9 0 0
       30 CALL                             R7 2 1
       31 GETUPVAL                         R8 0
       32 GETTABLEKS                       R8 R8 K1 ["useCallback"]
       34 NEWCLOSURE                       R9 P2
       35 CAPTURE                          VAL R5
       36 NEWTABLE                         R10 0 0
       38 CALL                             R8 2 1
       39 DUPTABLE                         R9 K6 [{"onAnchorPositionChanged", "onContainerSizeChanged", "onContentSizeChanged", "positionBinding"}]
       40 SETTABLEKS                       R6 R9 K2 ["onAnchorPositionChanged"]
       42 SETTABLEKS                       R7 R9 K3 ["onContainerSizeChanged"]
       44 SETTABLEKS                       R8 R9 K4 ["onContentSizeChanged"]
       46 GETUPVAL                         R10 0
       47 GETTABLEKS                       R10 R10 K7 ["joinBindings"]
       49 NEWTABLE                         R11 0 3
       51 MOVE                             R12 R0
       52 MOVE                             R13 R2
       53 MOVE                             R14 R4
       54 SETLIST                          R11 R12 3 [1]
       56 CALL                             R10 1 1
       57 DUPCLOSURE                       R12 K8 [PROTO_3]
       58 NAMECALL                         R10 R10 K9 ["map"]
       60 CALL                             R10 2 1
       61 SETTABLEKS                       R10 R9 K5 ["positionBinding"]
       63 RETURN                           R9 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setMenuOpen"]
        3 LOADK                            R1 K1 [""]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onActivated"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R0 K3 ["text"]
        6 JUMPIFEQKNIL                     R2 ; [+34]
        8 GETUPVAL                         R2 0
        9 LOADK                            R4 K4 ["Common"]
       10 LOADK                            R5 K5 ["AnimationEditor"]
       11 LOADK                            R6 K6 ["Menu"]
       12 GETTABLEKS                       R7 R0 K3 ["text"]
       14 GETUPVAL                         R9 1
       15 CALL                             R9 0 1
       16 JUMPIFNOT                        R9 ; [+15]
       17 GETTABLEKS                       R9 R0 K7 ["textArgs"]
       19 JUMPIFEQKNIL                     R9 ; [+12]
       21 GETUPVAL                         R8 2
       22 GETTABLEKS                       R8 R8 K8 ["join"]
       24 DUPTABLE                         R9 K10 [{"selectionName"}]
       25 GETUPVAL                         R10 3
       26 SETTABLEKS                       R10 R9 K9 ["selectionName"]
       28 GETTABLEKS                       R10 R0 K7 ["textArgs"]
       30 CALL                             R8 2 1
       31 JUMP                             ; [+4]
       32 DUPTABLE                         R8 K10 [{"selectionName"}]
       33 GETUPVAL                         R9 3
       34 SETTABLEKS                       R9 R8 K9 ["selectionName"]
       36 NAMECALL                         R2 R2 K11 ["getExternalText"]
       38 CALL                             R2 6 1
       39 SETTABLEKS                       R2 R1 K3 ["text"]
       41 GETUPVAL                         R2 1
       42 CALL                             R2 0 1
       43 JUMPIFNOT                        R2 ; [+62]
       44 GETTABLEKS                       R2 R0 K12 ["items"]
       46 JUMPIFEQKNIL                     R2 ; [+59]
       48 LOADNIL                          R2
       49 SETTABLEKS                       R2 R1 K7 ["textArgs"]
       51 NEWTABLE                         R2 0 0
       53 GETTABLEKS                       R3 R0 K12 ["items"]
       55 LOADNIL                          R4
       56 LOADNIL                          R5
       57 FORGPREP                         R3
       58 GETTABLEKS                       R8 R7 K13 ["id"]
       60 JUMPIFEQKNIL                     R8 ; [+10]
       62 MOVE                             R9 R2
       63 GETUPVAL                         R10 4
       64 MOVE                             R11 R7
       65 CALL                             R10 1 -1
       66 FASTCALL                         TABLE_INSERT ; [+2]
       67 GETIMPORT                        R8 K15 [table.insert]
       69 CALL                             R8 -1 0
       70 JUMP                             ; [+30]
       71 GETIMPORT                        R8 K2 [table.clone]
       73 MOVE                             R9 R7
       74 CALL                             R8 1 1
       75 NEWTABLE                         R9 0 0
       77 GETTABLEKS                       R10 R8 K12 ["items"]
       79 LOADNIL                          R11
       80 LOADNIL                          R12
       81 FORGPREP                         R10
       82 MOVE                             R16 R9
       83 GETUPVAL                         R17 4
       84 MOVE                             R18 R14
       85 CALL                             R17 1 -1
       86 FASTCALL                         TABLE_INSERT ; [+2]
       87 GETIMPORT                        R15 K15 [table.insert]
       89 CALL                             R15 -1 0
       90 FORGLOOP                         R10 2 ; [-9]
       92 SETTABLEKS                       R9 R8 K12 ["items"]
       94 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       96 MOVE                             R11 R2
       97 MOVE                             R12 R8
       98 GETIMPORT                        R10 K15 [table.insert]
      100 CALL                             R10 2 0
      101 FORGLOOP                         R3 2 ; [-44]
      103 SETTABLEKS                       R2 R1 K12 ["items"]
      105 RETURN                           R1 1
      106 GETUPVAL                         R2 1
      107 CALL                             R2 0 1
      108 JUMPIFNOT                        R2 ; [+3]
      109 LOADNIL                          R2
      110 SETTABLEKS                       R2 R1 K7 ["textArgs"]
      112 GETTABLEKS                       R2 R0 K16 ["onActivated"]
      114 JUMPIFNOTEQKNIL                  R2 ; [+5]
      116 LOADB                            R2 1
      117 SETTABLEKS                       R2 R1 K17 ["isDisabled"]
      119 RETURN                           R1 1
      120 NEWCLOSURE                       R2 P0
      121 CAPTURE                          VAL R0
      122 CAPTURE                          UPVAL U5
      123 SETTABLEKS                       R2 R1 K16 ["onActivated"]
      125 RETURN                           R1 1

PROTO_8:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U4
        7 NEWTABLE                         R1 0 0
        9 GETUPVAL                         R2 5
       10 GETTABLEKS                       R2 R2 K0 ["menus"]
       12 LOADNIL                          R3
       13 LOADNIL                          R4
       14 FORGPREP                         R2
       15 GETIMPORT                        R7 K3 [table.clone]
       17 MOVE                             R8 R6
       18 CALL                             R7 1 1
       19 MOVE                             R6 R7
       20 GETUPVAL                         R7 6
       21 JUMPIFNOT                        R7 ; [+23]
       22 GETTABLEKS                       R7 R6 K4 ["text"]
       24 JUMPIFEQKNIL                     R7 ; [+20]
       26 GETTABLEKS                       R7 R6 K5 ["id"]
       28 JUMPIFEQKS                       R7 K6 ["debug"] ; [+16]
       30 GETUPVAL                         R7 0
       31 LOADK                            R9 K7 ["Common"]
       32 LOADK                            R10 K8 ["AnimationEditor"]
       33 LOADK                            R11 K9 ["Menu"]
       34 GETTABLEKS                       R12 R6 K4 ["text"]
       36 DUPTABLE                         R13 K11 [{"selectionName"}]
       37 GETUPVAL                         R14 3
       38 SETTABLEKS                       R14 R13 K10 ["selectionName"]
       40 NAMECALL                         R7 R7 K12 ["getExternalText"]
       42 CALL                             R7 6 1
       43 SETTABLEKS                       R7 R6 K4 ["text"]
       45 NEWTABLE                         R7 0 0
       47 GETTABLEKS                       R8 R6 K13 ["groups"]
       49 LOADNIL                          R9
       50 LOADNIL                          R10
       51 FORGPREP                         R8
       52 GETIMPORT                        R13 K3 [table.clone]
       54 MOVE                             R14 R12
       55 CALL                             R13 1 1
       56 NEWTABLE                         R14 0 0
       58 SETTABLEKS                       R14 R13 K14 ["items"]
       60 GETTABLEKS                       R14 R12 K14 ["items"]
       62 LOADNIL                          R15
       63 LOADNIL                          R16
       64 FORGPREP                         R14
       65 GETTABLEKS                       R20 R13 K14 ["items"]
       67 MOVE                             R21 R0
       68 MOVE                             R22 R18
       69 CALL                             R21 1 1
       70 FASTCALL2                        TABLE_INSERT R20 R21 ; [+3]
       72 GETIMPORT                        R19 K16 [table.insert]
       74 CALL                             R19 2 0
       75 FORGLOOP                         R14 2 ; [-11]
       77 FASTCALL2                        TABLE_INSERT R7 R13 ; [+5]
       79 MOVE                             R15 R7
       80 MOVE                             R16 R13
       81 GETIMPORT                        R14 K16 [table.insert]
       83 CALL                             R14 2 0
       84 FORGLOOP                         R8 2 ; [-33]
       86 SETTABLEKS                       R7 R6 K13 ["groups"]
       88 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       90 MOVE                             R9 R1
       91 MOVE                             R10 R6
       92 GETIMPORT                        R8 K16 [table.insert]
       94 CALL                             R8 2 0
       95 FORGLOOP                         R2 2 ; [-81]
       97 RETURN                           R1 1

PROTO_9:
        0 JUMPIFNOTEQKS                    R0 K0 ["Hover"] ; [+21]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K1 ["menuOpen"]
        5 JUMPIFEQKS                       R1 K2 [""] ; [+16]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K3 ["id"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K1 ["menuOpen"]
       13 JUMPIFEQ                         R1 R2 ; [+8]
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K4 ["setMenuOpen"]
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K3 ["id"]
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Toggling menu {}"]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K1 ["id"]
        5 NAMECALL                         R0 R0 K2 ["trace"]
        7 CALL                             R0 3 0
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K3 ["setMenuOpen"]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K1 ["id"]
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K4 ["menuOpen"]
       17 JUMPIFNOTEQ                      R2 R3 ; [+3]
       19 LOADK                            R1 K5 [""]
       20 JUMP                             ; [+3]
       21 GETUPVAL                         R1 1
       22 GETTABLEKS                       R1 R1 K1 ["id"]
       24 CALL                             R0 1 0
       25 RETURN                           R0 0

PROTO_11:
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
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R3 R3 K2 ["ContextServices"]
       17 GETTABLEKS                       R3 R3 K3 ["Localization"]
       19 NAMECALL                         R3 R3 K4 ["use"]
       21 CALL                             R3 1 1
       22 GETUPVAL                         R4 4
       23 GETTABLEKS                       R4 R4 K5 ["createNextOrder"]
       25 CALL                             R4 0 1
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K6 ["useCallback"]
       29 NEWCLOSURE                       R6 P0
       30 CAPTURE                          VAL R0
       31 NEWTABLE                         R7 0 1
       33 GETTABLEKS                       R8 R0 K7 ["setMenuOpen"]
       35 SETLIST                          R7 R8 1 [1]
       37 CALL                             R5 2 1
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R6 R6 K8 ["createElement"]
       41 GETUPVAL                         R7 0
       42 GETTABLEKS                       R7 R7 K9 ["Fragment"]
       44 NEWTABLE                         R8 0 0
       46 DUPTABLE                         R9 K12 [{"GraphDropdown", "SaveToRobloxButton"}]
       47 GETUPVAL                         R10 0
       48 GETTABLEKS                       R10 R10 K8 ["createElement"]
       50 GETUPVAL                         R11 5
       51 DUPTABLE                         R12 K14 [{"LayoutOrder"}]
       52 MOVE                             R13 R4
       53 CALL                             R13 0 1
       54 SETTABLEKS                       R13 R12 K13 ["LayoutOrder"]
       56 CALL                             R10 2 1
       57 SETTABLEKS                       R10 R9 K10 ["GraphDropdown"]
       59 GETUPVAL                         R11 6
       60 CALL                             R11 0 1
       61 JUMPIFNOT                        R11 ; [+11]
       62 GETUPVAL                         R10 0
       63 GETTABLEKS                       R10 R10 K8 ["createElement"]
       65 GETUPVAL                         R11 7
       66 DUPTABLE                         R12 K14 [{"LayoutOrder"}]
       67 MOVE                             R13 R4
       68 CALL                             R13 0 1
       69 SETTABLEKS                       R13 R12 K13 ["LayoutOrder"]
       71 CALL                             R10 2 1
       72 JUMP                             ; [+1]
       73 LOADNIL                          R10
       74 SETTABLEKS                       R10 R9 K11 ["SaveToRobloxButton"]
       76 CALL                             R6 3 1
       77 GETTABLEKS                       R8 R1 K16 ["selectedTargetName"]
       79 ORK                              R7 R8 K15 [""]
       80 GETUPVAL                         R8 0
       81 GETTABLEKS                       R8 R8 K17 ["useMemo"]
       83 NEWCLOSURE                       R9 P1
       84 CAPTURE                          VAL R3
       85 CAPTURE                          UPVAL U8
       86 CAPTURE                          UPVAL U9
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R2
       90 CAPTURE                          UPVAL U10
       91 NEWTABLE                         R10 0 3
       93 MOVE                             R11 R3
       94 GETTABLEKS                       R12 R2 K18 ["menus"]
       96 MOVE                             R13 R7
       97 SETLIST                          R10 R11 3 [1]
       99 CALL                             R8 2 1
      100 NEWTABLE                         R9 0 0
      102 MOVE                             R10 R8
      103 LOADNIL                          R11
      104 LOADNIL                          R12
      105 FORGPREP                         R10
      106 GETTABLEKS                       R15 R14 K19 ["id"]
      108 GETUPVAL                         R16 0
      109 GETTABLEKS                       R16 R16 K8 ["createElement"]
      111 GETUPVAL                         R17 11
      112 GETTABLEKS                       R17 R17 K20 ["Menu"]
      114 DUPTABLE                         R18 K25 [{"isOpen", "items", "size", "LayoutOrder", "onPressedOutside"}]
      115 GETTABLEKS                       R20 R14 K19 ["id"]
      117 GETTABLEKS                       R21 R0 K26 ["menuOpen"]
      119 JUMPIFEQ                         R20 R21 ; [+2]
      121 LOADB                            R19 0 +1
      122 LOADB                            R19 1
      123 SETTABLEKS                       R19 R18 K21 ["isOpen"]
      125 GETTABLEKS                       R19 R14 K27 ["groups"]
      127 SETTABLEKS                       R19 R18 K22 ["items"]
      129 GETUPVAL                         R19 11
      130 GETTABLEKS                       R19 R19 K28 ["Enums"]
      132 GETTABLEKS                       R19 R19 K29 ["InputSize"]
      134 GETTABLEKS                       R19 R19 K30 ["XSmall"]
      136 SETTABLEKS                       R19 R18 K23 ["size"]
      138 MOVE                             R19 R4
      139 CALL                             R19 0 1
      140 SETTABLEKS                       R19 R18 K13 ["LayoutOrder"]
      142 SETTABLEKS                       R5 R18 K24 ["onPressedOutside"]
      144 DUPTABLE                         R19 K32 [{"Button"}]
      145 GETUPVAL                         R20 0
      146 GETTABLEKS                       R20 R20 K8 ["createElement"]
      148 GETUPVAL                         R21 11
      149 GETTABLEKS                       R21 R21 K33 ["View"]
      151 DUPTABLE                         R22 K37 [{["tag"] = "auto-xy", ["onStateChanged"]}]
      152 NEWCLOSURE                       R23 P2
      153 CAPTURE                          VAL R0
      154 CAPTURE                          VAL R14
      155 SETTABLEKS                       R23 R22 K36 ["onStateChanged"]
      157 GETUPVAL                         R23 0
      158 GETTABLEKS                       R23 R23 K8 ["createElement"]
      160 GETUPVAL                         R24 11
      161 GETTABLEKS                       R24 R24 K31 ["Button"]
      163 DUPTABLE                         R25 K42 [{"testId", "text", "size", "variant", "onActivated"}]
      164 LOADK                            R27 K43 ["compositormenu-"]
      165 GETTABLEKS                       R28 R14 K19 ["id"]
      167 CONCAT                           R26 R27 R28
      168 SETTABLEKS                       R26 R25 K38 ["testId"]
      170 GETTABLEKS                       R26 R14 K39 ["text"]
      172 SETTABLEKS                       R26 R25 K39 ["text"]
      174 GETUPVAL                         R26 11
      175 GETTABLEKS                       R26 R26 K28 ["Enums"]
      177 GETTABLEKS                       R26 R26 K29 ["InputSize"]
      179 GETTABLEKS                       R26 R26 K30 ["XSmall"]
      181 SETTABLEKS                       R26 R25 K23 ["size"]
      183 GETUPVAL                         R26 11
      184 GETTABLEKS                       R26 R26 K28 ["Enums"]
      186 GETTABLEKS                       R26 R26 K44 ["ButtonVariant"]
      188 GETTABLEKS                       R26 R26 K45 ["Text"]
      190 SETTABLEKS                       R26 R25 K40 ["variant"]
      192 NEWCLOSURE                       R26 P3
      193 CAPTURE                          UPVAL U12
      194 CAPTURE                          VAL R14
      195 CAPTURE                          VAL R0
      196 SETTABLEKS                       R26 R25 K41 ["onActivated"]
      198 CALL                             R23 2 -1
      199 CALL                             R20 -1 1
      200 SETTABLEKS                       R20 R19 K31 ["Button"]
      202 CALL                             R16 3 1
      203 SETTABLE                         R16 R9 R15
      204 FORGLOOP                         R10 2 ; [-99]
      206 GETUPVAL                         R10 13
      207 CALL                             R10 0 1
      208 GETUPVAL                         R11 0
      209 GETTABLEKS                       R11 R11 K8 ["createElement"]
      211 GETUPVAL                         R12 11
      212 GETTABLEKS                       R12 R12 K33 ["View"]
      214 DUPTABLE                         R13 K50 [{["tag"] = "size-full-800 padding-xsmall padding-left-small bg-surface-200", ["onAbsoluteSizeChanged"], ["LayoutOrder"], ["ZIndex"] = 10}]
      215 GETTABLEKS                       R14 R10 K51 ["onContainerSizeChanged"]
      217 SETTABLEKS                       R14 R13 K47 ["onAbsoluteSizeChanged"]
      219 GETTABLEKS                       R14 R0 K13 ["LayoutOrder"]
      221 SETTABLEKS                       R14 R13 K13 ["LayoutOrder"]
      223 DUPTABLE                         R14 K54 [{"Toolbar", "PlaybackToolbar"}]
      224 GETUPVAL                         R15 0
      225 GETTABLEKS                       R15 R15 K8 ["createElement"]
      227 GETUPVAL                         R16 11
      228 GETTABLEKS                       R16 R16 K33 ["View"]
      230 DUPTABLE                         R17 K57 [{["tag"] = "row align-y-top gap-xsmall size-full", ["testId"] = "--animationeditor--mainmenutoolbar", ["ZIndex"]}]
      231 MOVE                             R18 R4
      232 CALL                             R18 0 1
      233 SETTABLEKS                       R18 R17 K48 ["ZIndex"]
      235 DUPTABLE                         R18 K61 [{"GraphDropdownWithSaveButton", "RemainingSpaceTracker", "ChildMenus"}]
      236 SETTABLEKS                       R6 R18 K58 ["GraphDropdownWithSaveButton"]
      238 GETUPVAL                         R19 0
      239 GETTABLEKS                       R19 R19 K8 ["createElement"]
      241 GETUPVAL                         R20 11
      242 GETTABLEKS                       R20 R20 K33 ["View"]
      244 DUPTABLE                         R21 K64 [{["tag"] = "fill size-0-full", ["LayoutOrder"], ["onAbsolutePositionChanged"]}]
      245 MOVE                             R22 R4
      246 CALL                             R22 0 1
      247 SETTABLEKS                       R22 R21 K13 ["LayoutOrder"]
      249 GETTABLEKS                       R22 R10 K65 ["onAnchorPositionChanged"]
      251 SETTABLEKS                       R22 R21 K63 ["onAbsolutePositionChanged"]
      253 CALL                             R19 2 1
      254 SETTABLEKS                       R19 R18 K59 ["RemainingSpaceTracker"]
      256 GETUPVAL                         R19 0
      257 GETTABLEKS                       R19 R19 K8 ["createElement"]
      259 GETUPVAL                         R20 0
      260 GETTABLEKS                       R20 R20 K9 ["Fragment"]
      262 NEWTABLE                         R21 0 0
      264 MOVE                             R22 R9
      265 CALL                             R19 3 1
      266 SETTABLEKS                       R19 R18 K60 ["ChildMenus"]
      268 CALL                             R15 3 1
      269 SETTABLEKS                       R15 R14 K52 ["Toolbar"]
      271 GETUPVAL                         R15 0
      272 GETTABLEKS                       R15 R15 K8 ["createElement"]
      274 GETUPVAL                         R16 11
      275 GETTABLEKS                       R16 R16 K33 ["View"]
      277 DUPTABLE                         R17 K68 [{["tag"] = "row align-x-center gap-xsmall size-0-full auto-x", ["Position"], ["ZIndex"], ["onAbsoluteSizeChanged"]}]
      278 GETTABLEKS                       R18 R10 K69 ["positionBinding"]
      280 SETTABLEKS                       R18 R17 K67 ["Position"]
      282 MOVE                             R18 R4
      283 CALL                             R18 0 1
      284 SETTABLEKS                       R18 R17 K48 ["ZIndex"]
      286 GETTABLEKS                       R18 R10 K70 ["onContentSizeChanged"]
      288 SETTABLEKS                       R18 R17 K47 ["onAbsoluteSizeChanged"]
      290 DUPTABLE                         R18 K79 [{["PreviewEnabledButton"], ["RigDropdown"], ["ResetRigButton"], ["PlayButton"], ["StepForwardButton"], ["PlaybackSpeedDropdown"], ["RigDropdown_DEPRECATED"] = False}]
      291 GETUPVAL                         R19 0
      292 GETTABLEKS                       R19 R19 K8 ["createElement"]
      294 GETUPVAL                         R20 14
      295 DUPTABLE                         R21 K14 [{"LayoutOrder"}]
      296 MOVE                             R22 R4
      297 CALL                             R22 0 1
      298 SETTABLEKS                       R22 R21 K13 ["LayoutOrder"]
      300 CALL                             R19 2 1
      301 SETTABLEKS                       R19 R18 K71 ["PreviewEnabledButton"]
      303 GETUPVAL                         R19 0
      304 GETTABLEKS                       R19 R19 K8 ["createElement"]
      306 GETUPVAL                         R20 15
      307 DUPTABLE                         R21 K14 [{"LayoutOrder"}]
      308 MOVE                             R22 R4
      309 CALL                             R22 0 1
      310 SETTABLEKS                       R22 R21 K13 ["LayoutOrder"]
      312 CALL                             R19 2 1
      313 SETTABLEKS                       R19 R18 K72 ["RigDropdown"]
      315 GETUPVAL                         R19 0
      316 GETTABLEKS                       R19 R19 K8 ["createElement"]
      318 GETUPVAL                         R20 16
      319 DUPTABLE                         R21 K14 [{"LayoutOrder"}]
      320 MOVE                             R22 R4
      321 CALL                             R22 0 1
      322 SETTABLEKS                       R22 R21 K13 ["LayoutOrder"]
      324 CALL                             R19 2 1
      325 SETTABLEKS                       R19 R18 K73 ["ResetRigButton"]
      327 GETUPVAL                         R19 0
      328 GETTABLEKS                       R19 R19 K8 ["createElement"]
      330 GETUPVAL                         R20 17
      331 DUPTABLE                         R21 K14 [{"LayoutOrder"}]
      332 MOVE                             R22 R4
      333 CALL                             R22 0 1
      334 SETTABLEKS                       R22 R21 K13 ["LayoutOrder"]
      336 CALL                             R19 2 1
      337 SETTABLEKS                       R19 R18 K74 ["PlayButton"]
      339 GETUPVAL                         R19 0
      340 GETTABLEKS                       R19 R19 K8 ["createElement"]
      342 GETUPVAL                         R20 18
      343 DUPTABLE                         R21 K14 [{"LayoutOrder"}]
      344 MOVE                             R22 R4
      345 CALL                             R22 0 1
      346 SETTABLEKS                       R22 R21 K13 ["LayoutOrder"]
      348 CALL                             R19 2 1
      349 SETTABLEKS                       R19 R18 K75 ["StepForwardButton"]
      351 GETUPVAL                         R19 0
      352 GETTABLEKS                       R19 R19 K8 ["createElement"]
      354 GETUPVAL                         R20 19
      355 DUPTABLE                         R21 K14 [{"LayoutOrder"}]
      356 MOVE                             R22 R4
      357 CALL                             R22 0 1
      358 SETTABLEKS                       R22 R21 K13 ["LayoutOrder"]
      360 CALL                             R19 2 1
      361 SETTABLEKS                       R19 R18 K76 ["PlaybackSpeedDropdown"]
      363 CALL                             R15 3 1
      364 SETTABLEKS                       R15 R14 K53 ["PlaybackToolbar"]
      366 CALL                             R11 3 -1
      367 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R2 K7 ["CreateGraphContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Flags"]
       25 GETTABLEKS                       R4 R4 K11 ["FFlagAnimGraphUI_ImprovedTranslations"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R5 K12 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K8 ["Parent"]
       39 GETTABLEKS                       R6 R6 K13 ["Framework"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K14 ["Components"]
       46 GETTABLEKS                       R7 R7 K15 ["NodeView"]
       48 GETTABLEKS                       R7 R7 K16 ["GraphDropdown"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K6 ["Contexts"]
       55 GETTABLEKS                       R8 R8 K17 ["MenuItemsContext"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K14 ["Components"]
       62 GETTABLEKS                       R9 R9 K18 ["Toolbar"]
       64 GETTABLEKS                       R9 R9 K19 ["PlayButton"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K14 ["Components"]
       71 GETTABLEKS                       R10 R10 K18 ["Toolbar"]
       73 GETTABLEKS                       R10 R10 K20 ["PlaybackSpeedDropdown"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K14 ["Components"]
       80 GETTABLEKS                       R11 R11 K18 ["Toolbar"]
       82 GETTABLEKS                       R11 R11 K21 ["PreviewEnabledButton"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K5 [require]
       87 GETTABLEKS                       R12 R0 K8 ["Parent"]
       89 GETTABLEKS                       R12 R12 K22 ["React"]
       91 CALL                             R11 1 1
       92 GETIMPORT                        R12 K5 [require]
       94 GETTABLEKS                       R13 R0 K8 ["Parent"]
       96 GETTABLEKS                       R13 R13 K23 ["ReactUtils"]
       98 CALL                             R12 1 1
       99 GETIMPORT                        R13 K5 [require]
      101 GETTABLEKS                       R14 R0 K14 ["Components"]
      103 GETTABLEKS                       R14 R14 K18 ["Toolbar"]
      105 GETTABLEKS                       R14 R14 K24 ["ResetRigButton"]
      107 CALL                             R13 1 1
      108 GETIMPORT                        R14 K5 [require]
      110 GETTABLEKS                       R15 R0 K14 ["Components"]
      112 GETTABLEKS                       R15 R15 K18 ["Toolbar"]
      114 GETTABLEKS                       R15 R15 K25 ["RigDropdown"]
      116 CALL                             R14 1 1
      117 GETIMPORT                        R15 K5 [require]
      119 GETTABLEKS                       R16 R0 K14 ["Components"]
      121 GETTABLEKS                       R16 R16 K15 ["NodeView"]
      123 GETTABLEKS                       R16 R16 K26 ["SaveToRobloxButton"]
      125 CALL                             R15 1 1
      126 GETIMPORT                        R16 K5 [require]
      128 GETTABLEKS                       R17 R0 K14 ["Components"]
      130 GETTABLEKS                       R17 R17 K18 ["Toolbar"]
      132 GETTABLEKS                       R17 R17 K27 ["StepForwardButton"]
      134 CALL                             R16 1 1
      135 GETIMPORT                        R17 K5 [require]
      137 GETTABLEKS                       R18 R0 K10 ["Flags"]
      139 GETTABLEKS                       R18 R18 K28 ["getFFlagAnimGraphSaveToRobloxButtonEnabled"]
      141 CALL                             R17 1 1
      142 GETIMPORT                        R18 K5 [require]
      144 GETTABLEKS                       R19 R0 K10 ["Flags"]
      146 GETTABLEKS                       R19 R19 K29 ["getFFlagAnimGraphUITimestampFrames"]
      148 CALL                             R18 1 1
      149 GETIMPORT                        R19 K5 [require]
      151 GETTABLEKS                       R20 R0 K30 ["Util"]
      153 GETTABLEKS                       R20 R20 K31 ["Logger"]
      155 CALL                             R19 1 1
      156 LOADK                            R21 K32 ["CompositorMenu"]
      157 NAMECALL                         R19 R19 K33 ["new"]
      159 CALL                             R19 2 1
      160 DUPCLOSURE                       R20 K34 [PROTO_4]
      161 CAPTURE                          VAL R11
      162 DUPCLOSURE                       R21 K35 [PROTO_11]
      163 CAPTURE                          VAL R11
      164 CAPTURE                          VAL R1
      165 CAPTURE                          VAL R7
      166 CAPTURE                          VAL R5
      167 CAPTURE                          VAL R12
      168 CAPTURE                          VAL R6
      169 CAPTURE                          VAL R17
      170 CAPTURE                          VAL R15
      171 CAPTURE                          VAL R18
      172 CAPTURE                          VAL R2
      173 CAPTURE                          VAL R3
      174 CAPTURE                          VAL R4
      175 CAPTURE                          VAL R19
      176 CAPTURE                          VAL R20
      177 CAPTURE                          VAL R10
      178 CAPTURE                          VAL R14
      179 CAPTURE                          VAL R13
      180 CAPTURE                          VAL R8
      181 CAPTURE                          VAL R16
      182 CAPTURE                          VAL R9
      183 RETURN                           R21 1
