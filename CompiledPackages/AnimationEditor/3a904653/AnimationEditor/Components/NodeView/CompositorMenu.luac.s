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
        6 JUMPIFEQKNIL                     R2 ; [+16]
        8 GETUPVAL                         R2 0
        9 LOADK                            R4 K4 ["Common"]
       10 LOADK                            R5 K5 ["AnimationEditor"]
       11 LOADK                            R6 K6 ["Menu"]
       12 GETTABLEKS                       R7 R0 K3 ["text"]
       14 DUPTABLE                         R8 K8 [{"selectionName"}]
       15 GETUPVAL                         R9 1
       16 SETTABLEKS                       R9 R8 K7 ["selectionName"]
       18 NAMECALL                         R2 R2 K9 ["getExternalText"]
       20 CALL                             R2 6 1
       21 SETTABLEKS                       R2 R1 K3 ["text"]
       23 GETTABLEKS                       R2 R0 K10 ["onActivated"]
       25 JUMPIFNOTEQKNIL                  R2 ; [+5]
       27 LOADB                            R2 1
       28 SETTABLEKS                       R2 R1 K11 ["isDisabled"]
       30 RETURN                           R1 1
       31 NEWCLOSURE                       R2 P0
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U2
       34 SETTABLEKS                       R2 R1 K10 ["onActivated"]
       36 RETURN                           R1 1

PROTO_8:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 NEWTABLE                         R1 0 0
        6 GETUPVAL                         R2 3
        7 GETTABLEKS                       R2 R2 K0 ["menus"]
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 FORGPREP                         R2
       12 GETIMPORT                        R7 K3 [table.clone]
       14 MOVE                             R8 R6
       15 CALL                             R7 1 1
       16 MOVE                             R6 R7
       17 GETUPVAL                         R7 4
       18 JUMPIFNOT                        R7 ; [+23]
       19 GETTABLEKS                       R7 R6 K4 ["text"]
       21 JUMPIFEQKNIL                     R7 ; [+20]
       23 GETTABLEKS                       R7 R6 K5 ["id"]
       25 JUMPIFEQKS                       R7 K6 ["debug"] ; [+16]
       27 GETUPVAL                         R7 0
       28 LOADK                            R9 K7 ["Common"]
       29 LOADK                            R10 K8 ["AnimationEditor"]
       30 LOADK                            R11 K9 ["Menu"]
       31 GETTABLEKS                       R12 R6 K4 ["text"]
       33 DUPTABLE                         R13 K11 [{"selectionName"}]
       34 GETUPVAL                         R14 1
       35 SETTABLEKS                       R14 R13 K10 ["selectionName"]
       37 NAMECALL                         R7 R7 K12 ["getExternalText"]
       39 CALL                             R7 6 1
       40 SETTABLEKS                       R7 R6 K4 ["text"]
       42 NEWTABLE                         R7 0 0
       44 GETTABLEKS                       R8 R6 K13 ["groups"]
       46 LOADNIL                          R9
       47 LOADNIL                          R10
       48 FORGPREP                         R8
       49 GETIMPORT                        R13 K3 [table.clone]
       51 MOVE                             R14 R12
       52 CALL                             R13 1 1
       53 NEWTABLE                         R14 0 0
       55 SETTABLEKS                       R14 R13 K14 ["items"]
       57 GETTABLEKS                       R14 R12 K14 ["items"]
       59 LOADNIL                          R15
       60 LOADNIL                          R16
       61 FORGPREP                         R14
       62 GETTABLEKS                       R20 R13 K14 ["items"]
       64 MOVE                             R21 R0
       65 MOVE                             R22 R18
       66 CALL                             R21 1 1
       67 FASTCALL2                        TABLE_INSERT R20 R21 ; [+3]
       69 GETIMPORT                        R19 K16 [table.insert]
       71 CALL                             R19 2 0
       72 FORGLOOP                         R14 2 ; [-11]
       74 FASTCALL2                        TABLE_INSERT R7 R13 ; [+5]
       76 MOVE                             R15 R7
       77 MOVE                             R16 R13
       78 GETIMPORT                        R14 K16 [table.insert]
       80 CALL                             R14 2 0
       81 FORGLOOP                         R8 2 ; [-33]
       83 SETTABLEKS                       R7 R6 K13 ["groups"]
       85 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       87 MOVE                             R9 R1
       88 MOVE                             R10 R6
       89 GETIMPORT                        R8 K16 [table.insert]
       91 CALL                             R8 2 0
       92 FORGLOOP                         R2 2 ; [-81]
       94 RETURN                           R1 1

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
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R2
       88 CAPTURE                          UPVAL U8
       89 NEWTABLE                         R10 0 3
       91 MOVE                             R11 R3
       92 GETTABLEKS                       R12 R2 K18 ["menus"]
       94 MOVE                             R13 R7
       95 SETLIST                          R10 R11 3 [1]
       97 CALL                             R8 2 1
       98 NEWTABLE                         R9 0 0
      100 MOVE                             R10 R8
      101 LOADNIL                          R11
      102 LOADNIL                          R12
      103 FORGPREP                         R10
      104 GETTABLEKS                       R15 R14 K19 ["id"]
      106 GETUPVAL                         R16 0
      107 GETTABLEKS                       R16 R16 K8 ["createElement"]
      109 GETUPVAL                         R17 9
      110 GETTABLEKS                       R17 R17 K20 ["Menu"]
      112 DUPTABLE                         R18 K25 [{"isOpen", "items", "size", "LayoutOrder", "onPressedOutside"}]
      113 GETTABLEKS                       R20 R14 K19 ["id"]
      115 GETTABLEKS                       R21 R0 K26 ["menuOpen"]
      117 JUMPIFEQ                         R20 R21 ; [+2]
      119 LOADB                            R19 0 +1
      120 LOADB                            R19 1
      121 SETTABLEKS                       R19 R18 K21 ["isOpen"]
      123 GETTABLEKS                       R19 R14 K27 ["groups"]
      125 SETTABLEKS                       R19 R18 K22 ["items"]
      127 GETUPVAL                         R19 9
      128 GETTABLEKS                       R19 R19 K28 ["Enums"]
      130 GETTABLEKS                       R19 R19 K29 ["InputSize"]
      132 GETTABLEKS                       R19 R19 K30 ["XSmall"]
      134 SETTABLEKS                       R19 R18 K23 ["size"]
      136 MOVE                             R19 R4
      137 CALL                             R19 0 1
      138 SETTABLEKS                       R19 R18 K13 ["LayoutOrder"]
      140 SETTABLEKS                       R5 R18 K24 ["onPressedOutside"]
      142 DUPTABLE                         R19 K32 [{"Button"}]
      143 GETUPVAL                         R20 0
      144 GETTABLEKS                       R20 R20 K8 ["createElement"]
      146 GETUPVAL                         R21 9
      147 GETTABLEKS                       R21 R21 K33 ["View"]
      149 DUPTABLE                         R22 K37 [{["tag"] = "auto-xy", ["onStateChanged"]}]
      150 NEWCLOSURE                       R23 P2
      151 CAPTURE                          VAL R0
      152 CAPTURE                          VAL R14
      153 SETTABLEKS                       R23 R22 K36 ["onStateChanged"]
      155 GETUPVAL                         R23 0
      156 GETTABLEKS                       R23 R23 K8 ["createElement"]
      158 GETUPVAL                         R24 9
      159 GETTABLEKS                       R24 R24 K31 ["Button"]
      161 DUPTABLE                         R25 K42 [{"testId", "text", "size", "variant", "onActivated"}]
      162 LOADK                            R27 K43 ["compositormenu-"]
      163 GETTABLEKS                       R28 R14 K19 ["id"]
      165 CONCAT                           R26 R27 R28
      166 SETTABLEKS                       R26 R25 K38 ["testId"]
      168 GETTABLEKS                       R26 R14 K39 ["text"]
      170 SETTABLEKS                       R26 R25 K39 ["text"]
      172 GETUPVAL                         R26 9
      173 GETTABLEKS                       R26 R26 K28 ["Enums"]
      175 GETTABLEKS                       R26 R26 K29 ["InputSize"]
      177 GETTABLEKS                       R26 R26 K30 ["XSmall"]
      179 SETTABLEKS                       R26 R25 K23 ["size"]
      181 GETUPVAL                         R26 9
      182 GETTABLEKS                       R26 R26 K28 ["Enums"]
      184 GETTABLEKS                       R26 R26 K44 ["ButtonVariant"]
      186 GETTABLEKS                       R26 R26 K45 ["Text"]
      188 SETTABLEKS                       R26 R25 K40 ["variant"]
      190 NEWCLOSURE                       R26 P3
      191 CAPTURE                          UPVAL U10
      192 CAPTURE                          VAL R14
      193 CAPTURE                          VAL R0
      194 SETTABLEKS                       R26 R25 K41 ["onActivated"]
      196 CALL                             R23 2 -1
      197 CALL                             R20 -1 1
      198 SETTABLEKS                       R20 R19 K31 ["Button"]
      200 CALL                             R16 3 1
      201 SETTABLE                         R16 R9 R15
      202 FORGLOOP                         R10 2 ; [-99]
      204 GETUPVAL                         R10 11
      205 CALL                             R10 0 1
      206 GETUPVAL                         R11 0
      207 GETTABLEKS                       R11 R11 K8 ["createElement"]
      209 GETUPVAL                         R12 9
      210 GETTABLEKS                       R12 R12 K33 ["View"]
      212 DUPTABLE                         R13 K50 [{["tag"] = "size-full-800 padding-xsmall padding-left-small bg-surface-200", ["onAbsoluteSizeChanged"], ["LayoutOrder"], ["ZIndex"] = 10}]
      213 GETTABLEKS                       R14 R10 K51 ["onContainerSizeChanged"]
      215 SETTABLEKS                       R14 R13 K47 ["onAbsoluteSizeChanged"]
      217 GETTABLEKS                       R14 R0 K13 ["LayoutOrder"]
      219 SETTABLEKS                       R14 R13 K13 ["LayoutOrder"]
      221 DUPTABLE                         R14 K54 [{"Toolbar", "PlaybackToolbar"}]
      222 GETUPVAL                         R15 0
      223 GETTABLEKS                       R15 R15 K8 ["createElement"]
      225 GETUPVAL                         R16 9
      226 GETTABLEKS                       R16 R16 K33 ["View"]
      228 DUPTABLE                         R17 K57 [{["tag"] = "row align-y-top gap-xsmall size-full", ["testId"] = "--animationeditor--mainmenutoolbar", ["ZIndex"]}]
      229 MOVE                             R18 R4
      230 CALL                             R18 0 1
      231 SETTABLEKS                       R18 R17 K48 ["ZIndex"]
      233 DUPTABLE                         R18 K61 [{"GraphDropdownWithSaveButton", "RemainingSpaceTracker", "ChildMenus"}]
      234 SETTABLEKS                       R6 R18 K58 ["GraphDropdownWithSaveButton"]
      236 GETUPVAL                         R19 0
      237 GETTABLEKS                       R19 R19 K8 ["createElement"]
      239 GETUPVAL                         R20 9
      240 GETTABLEKS                       R20 R20 K33 ["View"]
      242 DUPTABLE                         R21 K64 [{["tag"] = "fill size-0-full", ["LayoutOrder"], ["onAbsolutePositionChanged"]}]
      243 MOVE                             R22 R4
      244 CALL                             R22 0 1
      245 SETTABLEKS                       R22 R21 K13 ["LayoutOrder"]
      247 GETTABLEKS                       R22 R10 K65 ["onAnchorPositionChanged"]
      249 SETTABLEKS                       R22 R21 K63 ["onAbsolutePositionChanged"]
      251 CALL                             R19 2 1
      252 SETTABLEKS                       R19 R18 K59 ["RemainingSpaceTracker"]
      254 GETUPVAL                         R19 0
      255 GETTABLEKS                       R19 R19 K8 ["createElement"]
      257 GETUPVAL                         R20 0
      258 GETTABLEKS                       R20 R20 K9 ["Fragment"]
      260 NEWTABLE                         R21 0 0
      262 MOVE                             R22 R9
      263 CALL                             R19 3 1
      264 SETTABLEKS                       R19 R18 K60 ["ChildMenus"]
      266 CALL                             R15 3 1
      267 SETTABLEKS                       R15 R14 K52 ["Toolbar"]
      269 GETUPVAL                         R15 0
      270 GETTABLEKS                       R15 R15 K8 ["createElement"]
      272 GETUPVAL                         R16 9
      273 GETTABLEKS                       R16 R16 K33 ["View"]
      275 DUPTABLE                         R17 K68 [{["tag"] = "row align-x-center gap-xsmall size-0-full auto-x", ["Position"], ["ZIndex"], ["onAbsoluteSizeChanged"]}]
      276 GETTABLEKS                       R18 R10 K69 ["positionBinding"]
      278 SETTABLEKS                       R18 R17 K67 ["Position"]
      280 MOVE                             R18 R4
      281 CALL                             R18 0 1
      282 SETTABLEKS                       R18 R17 K48 ["ZIndex"]
      284 GETTABLEKS                       R18 R10 K70 ["onContentSizeChanged"]
      286 SETTABLEKS                       R18 R17 K47 ["onAbsoluteSizeChanged"]
      288 DUPTABLE                         R18 K78 [{"PreviewEnabledButton", "RigDropdown", "ResetRigButton", "PlayButton", "StepForwardButton", "PlaybackSpeedDropdown", "RigDropdown_DEPRECATED"}]
      289 GETUPVAL                         R19 12
      290 CALL                             R19 0 1
      291 JUMPIFNOT                        R19 ; [+10]
      292 GETUPVAL                         R19 0
      293 GETTABLEKS                       R19 R19 K8 ["createElement"]
      295 GETUPVAL                         R20 13
      296 DUPTABLE                         R21 K14 [{"LayoutOrder"}]
      297 MOVE                             R22 R4
      298 CALL                             R22 0 1
      299 SETTABLEKS                       R22 R21 K13 ["LayoutOrder"]
      301 CALL                             R19 2 1
      302 SETTABLEKS                       R19 R18 K71 ["PreviewEnabledButton"]
      304 GETUPVAL                         R19 12
      305 CALL                             R19 0 1
      306 JUMPIFNOT                        R19 ; [+10]
      307 GETUPVAL                         R19 0
      308 GETTABLEKS                       R19 R19 K8 ["createElement"]
      310 GETUPVAL                         R20 14
      311 DUPTABLE                         R21 K14 [{"LayoutOrder"}]
      312 MOVE                             R22 R4
      313 CALL                             R22 0 1
      314 SETTABLEKS                       R22 R21 K13 ["LayoutOrder"]
      316 CALL                             R19 2 1
      317 SETTABLEKS                       R19 R18 K72 ["RigDropdown"]
      319 GETUPVAL                         R19 12
      320 CALL                             R19 0 1
      321 JUMPIFNOT                        R19 ; [+10]
      322 GETUPVAL                         R19 0
      323 GETTABLEKS                       R19 R19 K8 ["createElement"]
      325 GETUPVAL                         R20 15
      326 DUPTABLE                         R21 K14 [{"LayoutOrder"}]
      327 MOVE                             R22 R4
      328 CALL                             R22 0 1
      329 SETTABLEKS                       R22 R21 K13 ["LayoutOrder"]
      331 CALL                             R19 2 1
      332 SETTABLEKS                       R19 R18 K73 ["ResetRigButton"]
      334 GETUPVAL                         R19 0
      335 GETTABLEKS                       R19 R19 K8 ["createElement"]
      337 GETUPVAL                         R20 16
      338 DUPTABLE                         R21 K14 [{"LayoutOrder"}]
      339 MOVE                             R22 R4
      340 CALL                             R22 0 1
      341 SETTABLEKS                       R22 R21 K13 ["LayoutOrder"]
      343 CALL                             R19 2 1
      344 SETTABLEKS                       R19 R18 K74 ["PlayButton"]
      346 GETUPVAL                         R19 0
      347 GETTABLEKS                       R19 R19 K8 ["createElement"]
      349 GETUPVAL                         R20 17
      350 DUPTABLE                         R21 K14 [{"LayoutOrder"}]
      351 MOVE                             R22 R4
      352 CALL                             R22 0 1
      353 SETTABLEKS                       R22 R21 K13 ["LayoutOrder"]
      355 CALL                             R19 2 1
      356 SETTABLEKS                       R19 R18 K75 ["StepForwardButton"]
      358 GETUPVAL                         R19 0
      359 GETTABLEKS                       R19 R19 K8 ["createElement"]
      361 GETUPVAL                         R20 18
      362 DUPTABLE                         R21 K14 [{"LayoutOrder"}]
      363 MOVE                             R22 R4
      364 CALL                             R22 0 1
      365 SETTABLEKS                       R22 R21 K13 ["LayoutOrder"]
      367 CALL                             R19 2 1
      368 SETTABLEKS                       R19 R18 K76 ["PlaybackSpeedDropdown"]
      370 GETUPVAL                         R20 12
      371 CALL                             R20 0 1
      372 NOT                              R19 R20
      373 JUMPIFNOT                        R19 ; [+10]
      374 GETUPVAL                         R19 0
      375 GETTABLEKS                       R19 R19 K8 ["createElement"]
      377 GETUPVAL                         R20 14
      378 DUPTABLE                         R21 K14 [{"LayoutOrder"}]
      379 MOVE                             R22 R4
      380 CALL                             R22 0 1
      381 SETTABLEKS                       R22 R21 K13 ["LayoutOrder"]
      383 CALL                             R19 2 1
      384 SETTABLEKS                       R19 R18 K77 ["RigDropdown_DEPRECATED"]
      386 CALL                             R15 3 1
      387 SETTABLEKS                       R15 R14 K53 ["PlaybackToolbar"]
      389 CALL                             R11 3 -1
      390 RETURN                           R11 -1

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
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 GETTABLEKS                       R3 R3 K9 ["FFlagAnimGraphUI_ImprovedTranslations"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Parent"]
       25 GETTABLEKS                       R4 R4 K11 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Parent"]
       32 GETTABLEKS                       R5 R5 K12 ["Framework"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K13 ["Components"]
       39 GETTABLEKS                       R6 R6 K14 ["NodeView"]
       41 GETTABLEKS                       R6 R6 K15 ["GraphDropdown"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K6 ["Contexts"]
       48 GETTABLEKS                       R7 R7 K16 ["MenuItemsContext"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K13 ["Components"]
       55 GETTABLEKS                       R8 R8 K17 ["Toolbar"]
       57 GETTABLEKS                       R8 R8 K18 ["PlayButton"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K13 ["Components"]
       64 GETTABLEKS                       R9 R9 K17 ["Toolbar"]
       66 GETTABLEKS                       R9 R9 K19 ["PlaybackSpeedDropdown"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K13 ["Components"]
       73 GETTABLEKS                       R10 R10 K17 ["Toolbar"]
       75 GETTABLEKS                       R10 R10 K20 ["PreviewEnabledButton"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETTABLEKS                       R11 R0 K10 ["Parent"]
       82 GETTABLEKS                       R11 R11 K21 ["React"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K5 [require]
       87 GETTABLEKS                       R12 R0 K10 ["Parent"]
       89 GETTABLEKS                       R12 R12 K22 ["ReactUtils"]
       91 CALL                             R11 1 1
       92 GETIMPORT                        R12 K5 [require]
       94 GETTABLEKS                       R13 R0 K13 ["Components"]
       96 GETTABLEKS                       R13 R13 K17 ["Toolbar"]
       98 GETTABLEKS                       R13 R13 K23 ["ResetRigButton"]
      100 CALL                             R12 1 1
      101 GETIMPORT                        R13 K5 [require]
      103 GETTABLEKS                       R14 R0 K13 ["Components"]
      105 GETTABLEKS                       R14 R14 K17 ["Toolbar"]
      107 GETTABLEKS                       R14 R14 K24 ["RigDropdown"]
      109 CALL                             R13 1 1
      110 GETIMPORT                        R14 K5 [require]
      112 GETTABLEKS                       R15 R0 K13 ["Components"]
      114 GETTABLEKS                       R15 R15 K14 ["NodeView"]
      116 GETTABLEKS                       R15 R15 K25 ["SaveToRobloxButton"]
      118 CALL                             R14 1 1
      119 GETIMPORT                        R15 K5 [require]
      121 GETTABLEKS                       R16 R0 K13 ["Components"]
      123 GETTABLEKS                       R16 R16 K17 ["Toolbar"]
      125 GETTABLEKS                       R16 R16 K26 ["StepForwardButton"]
      127 CALL                             R15 1 1
      128 GETIMPORT                        R16 K5 [require]
      130 GETTABLEKS                       R17 R0 K8 ["Flags"]
      132 GETTABLEKS                       R17 R17 K27 ["getFFlagAnimGraphSaveToRobloxButtonEnabled"]
      134 CALL                             R16 1 1
      135 GETIMPORT                        R17 K5 [require]
      137 GETTABLEKS                       R18 R0 K8 ["Flags"]
      139 GETTABLEKS                       R18 R18 K28 ["getFFlagAnimGraphUI_RunTimeDebug"]
      141 CALL                             R17 1 1
      142 GETIMPORT                        R18 K5 [require]
      144 GETTABLEKS                       R19 R0 K29 ["Util"]
      146 GETTABLEKS                       R19 R19 K30 ["Logger"]
      148 CALL                             R18 1 1
      149 LOADK                            R20 K31 ["CompositorMenu"]
      150 NAMECALL                         R18 R18 K32 ["new"]
      152 CALL                             R18 2 1
      153 DUPCLOSURE                       R19 K33 [PROTO_4]
      154 CAPTURE                          VAL R10
      155 DUPCLOSURE                       R20 K34 [PROTO_11]
      156 CAPTURE                          VAL R10
      157 CAPTURE                          VAL R1
      158 CAPTURE                          VAL R6
      159 CAPTURE                          VAL R4
      160 CAPTURE                          VAL R11
      161 CAPTURE                          VAL R5
      162 CAPTURE                          VAL R16
      163 CAPTURE                          VAL R14
      164 CAPTURE                          VAL R2
      165 CAPTURE                          VAL R3
      166 CAPTURE                          VAL R18
      167 CAPTURE                          VAL R19
      168 CAPTURE                          VAL R17
      169 CAPTURE                          VAL R9
      170 CAPTURE                          VAL R13
      171 CAPTURE                          VAL R12
      172 CAPTURE                          VAL R7
      173 CAPTURE                          VAL R15
      174 CAPTURE                          VAL R8
      175 RETURN                           R20 1
