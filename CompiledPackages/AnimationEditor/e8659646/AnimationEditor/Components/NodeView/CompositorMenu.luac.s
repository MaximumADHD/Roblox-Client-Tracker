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
       13 LOADN                            R5 24
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
       17 NEWTABLE                         R7 0 0
       19 GETTABLEKS                       R8 R6 K4 ["groups"]
       21 LOADNIL                          R9
       22 LOADNIL                          R10
       23 FORGPREP                         R8
       24 GETIMPORT                        R13 K3 [table.clone]
       26 MOVE                             R14 R12
       27 CALL                             R13 1 1
       28 NEWTABLE                         R14 0 0
       30 SETTABLEKS                       R14 R13 K5 ["items"]
       32 GETTABLEKS                       R14 R12 K5 ["items"]
       34 LOADNIL                          R15
       35 LOADNIL                          R16
       36 FORGPREP                         R14
       37 GETTABLEKS                       R20 R13 K5 ["items"]
       39 MOVE                             R21 R0
       40 MOVE                             R22 R18
       41 CALL                             R21 1 1
       42 FASTCALL2                        TABLE_INSERT R20 R21 ; [+3]
       44 GETIMPORT                        R19 K7 [table.insert]
       46 CALL                             R19 2 0
       47 FORGLOOP                         R14 2 ; [-11]
       49 FASTCALL2                        TABLE_INSERT R7 R13 ; [+5]
       51 MOVE                             R15 R7
       52 MOVE                             R16 R13
       53 GETIMPORT                        R14 K7 [table.insert]
       55 CALL                             R14 2 0
       56 FORGLOOP                         R8 2 ; [-33]
       58 SETTABLEKS                       R7 R6 K4 ["groups"]
       60 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       62 MOVE                             R9 R1
       63 MOVE                             R10 R6
       64 GETIMPORT                        R8 K7 [table.insert]
       66 CALL                             R8 2 0
       67 FORGLOOP                         R2 2 ; [-56]
       69 RETURN                           R1 1

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
       88 NEWTABLE                         R10 0 3
       90 MOVE                             R11 R3
       91 GETTABLEKS                       R12 R2 K18 ["menus"]
       93 MOVE                             R13 R7
       94 SETLIST                          R10 R11 3 [1]
       96 CALL                             R8 2 1
       97 NEWTABLE                         R9 0 0
       99 MOVE                             R10 R8
      100 LOADNIL                          R11
      101 LOADNIL                          R12
      102 FORGPREP                         R10
      103 GETTABLEKS                       R15 R14 K19 ["id"]
      105 GETUPVAL                         R16 0
      106 GETTABLEKS                       R16 R16 K8 ["createElement"]
      108 GETUPVAL                         R17 8
      109 GETTABLEKS                       R17 R17 K20 ["Menu"]
      111 DUPTABLE                         R18 K25 [{"isOpen", "items", "size", "LayoutOrder", "onPressedOutside"}]
      112 GETTABLEKS                       R20 R14 K19 ["id"]
      114 GETTABLEKS                       R21 R0 K26 ["menuOpen"]
      116 JUMPIFEQ                         R20 R21 ; [+2]
      118 LOADB                            R19 0 +1
      119 LOADB                            R19 1
      120 SETTABLEKS                       R19 R18 K21 ["isOpen"]
      122 GETTABLEKS                       R19 R14 K27 ["groups"]
      124 SETTABLEKS                       R19 R18 K22 ["items"]
      126 GETUPVAL                         R19 8
      127 GETTABLEKS                       R19 R19 K28 ["Enums"]
      129 GETTABLEKS                       R19 R19 K29 ["InputSize"]
      131 GETTABLEKS                       R19 R19 K30 ["XSmall"]
      133 SETTABLEKS                       R19 R18 K23 ["size"]
      135 MOVE                             R19 R4
      136 CALL                             R19 0 1
      137 SETTABLEKS                       R19 R18 K13 ["LayoutOrder"]
      139 SETTABLEKS                       R5 R18 K24 ["onPressedOutside"]
      141 DUPTABLE                         R19 K32 [{"Button"}]
      142 GETUPVAL                         R20 0
      143 GETTABLEKS                       R20 R20 K8 ["createElement"]
      145 GETUPVAL                         R21 8
      146 GETTABLEKS                       R21 R21 K33 ["View"]
      148 DUPTABLE                         R22 K36 [{"tag", "onStateChanged"}]
      149 LOADK                            R23 K37 ["auto-xy"]
      150 SETTABLEKS                       R23 R22 K34 ["tag"]
      152 NEWCLOSURE                       R23 P2
      153 CAPTURE                          VAL R0
      154 CAPTURE                          VAL R14
      155 SETTABLEKS                       R23 R22 K35 ["onStateChanged"]
      157 GETUPVAL                         R23 0
      158 GETTABLEKS                       R23 R23 K8 ["createElement"]
      160 GETUPVAL                         R24 8
      161 GETTABLEKS                       R24 R24 K31 ["Button"]
      163 DUPTABLE                         R25 K42 [{"testId", "text", "size", "variant", "onActivated"}]
      164 LOADK                            R27 K43 ["compositormenu-"]
      165 GETTABLEKS                       R28 R14 K19 ["id"]
      167 CONCAT                           R26 R27 R28
      168 SETTABLEKS                       R26 R25 K38 ["testId"]
      170 GETTABLEKS                       R26 R14 K39 ["text"]
      172 SETTABLEKS                       R26 R25 K39 ["text"]
      174 GETUPVAL                         R26 8
      175 GETTABLEKS                       R26 R26 K28 ["Enums"]
      177 GETTABLEKS                       R26 R26 K29 ["InputSize"]
      179 GETTABLEKS                       R26 R26 K30 ["XSmall"]
      181 SETTABLEKS                       R26 R25 K23 ["size"]
      183 GETUPVAL                         R26 8
      184 GETTABLEKS                       R26 R26 K28 ["Enums"]
      186 GETTABLEKS                       R26 R26 K44 ["ButtonVariant"]
      188 GETTABLEKS                       R26 R26 K45 ["Text"]
      190 SETTABLEKS                       R26 R25 K40 ["variant"]
      192 NEWCLOSURE                       R26 P3
      193 CAPTURE                          UPVAL U9
      194 CAPTURE                          VAL R14
      195 CAPTURE                          VAL R0
      196 SETTABLEKS                       R26 R25 K41 ["onActivated"]
      198 CALL                             R23 2 -1
      199 CALL                             R20 -1 1
      200 SETTABLEKS                       R20 R19 K31 ["Button"]
      202 CALL                             R16 3 1
      203 SETTABLE                         R16 R9 R15
      204 FORGLOOP                         R10 2 ; [-102]
      206 GETUPVAL                         R10 10
      207 CALL                             R10 0 1
      208 GETUPVAL                         R11 0
      209 GETTABLEKS                       R11 R11 K8 ["createElement"]
      211 GETUPVAL                         R12 8
      212 GETTABLEKS                       R12 R12 K33 ["View"]
      214 DUPTABLE                         R13 K48 [{"tag", "onAbsoluteSizeChanged", "LayoutOrder", "ZIndex"}]
      215 LOADK                            R14 K49 ["size-full-800 border-bottom bg-surface-200 padding-xsmall padding-left-small"]
      216 SETTABLEKS                       R14 R13 K34 ["tag"]
      218 GETTABLEKS                       R14 R10 K50 ["onContainerSizeChanged"]
      220 SETTABLEKS                       R14 R13 K46 ["onAbsoluteSizeChanged"]
      222 GETTABLEKS                       R14 R0 K13 ["LayoutOrder"]
      224 SETTABLEKS                       R14 R13 K13 ["LayoutOrder"]
      226 LOADN                            R14 10
      227 SETTABLEKS                       R14 R13 K47 ["ZIndex"]
      229 DUPTABLE                         R14 K53 [{"Toolbar", "PlaybackToolbar"}]
      230 GETUPVAL                         R15 0
      231 GETTABLEKS                       R15 R15 K8 ["createElement"]
      233 GETUPVAL                         R16 8
      234 GETTABLEKS                       R16 R16 K33 ["View"]
      236 DUPTABLE                         R17 K54 [{"tag", "testId", "ZIndex"}]
      237 LOADK                            R18 K55 ["size-full row align-y-top gap-xsmall"]
      238 SETTABLEKS                       R18 R17 K34 ["tag"]
      240 LOADK                            R18 K56 ["--animationeditor--mainmenutoolbar"]
      241 SETTABLEKS                       R18 R17 K38 ["testId"]
      243 MOVE                             R18 R4
      244 CALL                             R18 0 1
      245 SETTABLEKS                       R18 R17 K47 ["ZIndex"]
      247 DUPTABLE                         R18 K60 [{"GraphDropdownWithSaveButton", "RemainingSpaceTracker", "ChildMenus"}]
      248 SETTABLEKS                       R6 R18 K57 ["GraphDropdownWithSaveButton"]
      250 GETUPVAL                         R19 0
      251 GETTABLEKS                       R19 R19 K8 ["createElement"]
      253 GETUPVAL                         R20 8
      254 GETTABLEKS                       R20 R20 K33 ["View"]
      256 DUPTABLE                         R21 K62 [{"tag", "LayoutOrder", "onAbsolutePositionChanged"}]
      257 LOADK                            R22 K63 ["fill size-0-full"]
      258 SETTABLEKS                       R22 R21 K34 ["tag"]
      260 MOVE                             R22 R4
      261 CALL                             R22 0 1
      262 SETTABLEKS                       R22 R21 K13 ["LayoutOrder"]
      264 GETTABLEKS                       R22 R10 K64 ["onAnchorPositionChanged"]
      266 SETTABLEKS                       R22 R21 K61 ["onAbsolutePositionChanged"]
      268 CALL                             R19 2 1
      269 SETTABLEKS                       R19 R18 K58 ["RemainingSpaceTracker"]
      271 GETUPVAL                         R19 0
      272 GETTABLEKS                       R19 R19 K8 ["createElement"]
      274 GETUPVAL                         R20 0
      275 GETTABLEKS                       R20 R20 K9 ["Fragment"]
      277 NEWTABLE                         R21 0 0
      279 MOVE                             R22 R9
      280 CALL                             R19 3 1
      281 SETTABLEKS                       R19 R18 K59 ["ChildMenus"]
      283 CALL                             R15 3 1
      284 SETTABLEKS                       R15 R14 K51 ["Toolbar"]
      286 GETUPVAL                         R15 0
      287 GETTABLEKS                       R15 R15 K8 ["createElement"]
      289 GETUPVAL                         R16 8
      290 GETTABLEKS                       R16 R16 K33 ["View"]
      292 DUPTABLE                         R17 K66 [{"tag", "Position", "ZIndex", "onAbsoluteSizeChanged"}]
      293 LOADK                            R18 K67 ["row align-x-center gap-xsmall auto-x size-0-full"]
      294 SETTABLEKS                       R18 R17 K34 ["tag"]
      296 GETTABLEKS                       R18 R10 K68 ["positionBinding"]
      298 SETTABLEKS                       R18 R17 K65 ["Position"]
      300 MOVE                             R18 R4
      301 CALL                             R18 0 1
      302 SETTABLEKS                       R18 R17 K47 ["ZIndex"]
      304 GETTABLEKS                       R18 R10 K69 ["onContentSizeChanged"]
      306 SETTABLEKS                       R18 R17 K46 ["onAbsoluteSizeChanged"]
      308 DUPTABLE                         R18 K74 [{"PlayButton", "StepForwardButton", "PlaybackSpeedDropdown", "RigDropdown"}]
      309 GETUPVAL                         R19 0
      310 GETTABLEKS                       R19 R19 K8 ["createElement"]
      312 GETUPVAL                         R20 11
      313 DUPTABLE                         R21 K14 [{"LayoutOrder"}]
      314 MOVE                             R22 R4
      315 CALL                             R22 0 1
      316 SETTABLEKS                       R22 R21 K13 ["LayoutOrder"]
      318 CALL                             R19 2 1
      319 SETTABLEKS                       R19 R18 K70 ["PlayButton"]
      321 GETUPVAL                         R19 0
      322 GETTABLEKS                       R19 R19 K8 ["createElement"]
      324 GETUPVAL                         R20 12
      325 DUPTABLE                         R21 K14 [{"LayoutOrder"}]
      326 MOVE                             R22 R4
      327 CALL                             R22 0 1
      328 SETTABLEKS                       R22 R21 K13 ["LayoutOrder"]
      330 CALL                             R19 2 1
      331 SETTABLEKS                       R19 R18 K71 ["StepForwardButton"]
      333 GETUPVAL                         R19 0
      334 GETTABLEKS                       R19 R19 K8 ["createElement"]
      336 GETUPVAL                         R20 13
      337 DUPTABLE                         R21 K14 [{"LayoutOrder"}]
      338 MOVE                             R22 R4
      339 CALL                             R22 0 1
      340 SETTABLEKS                       R22 R21 K13 ["LayoutOrder"]
      342 CALL                             R19 2 1
      343 SETTABLEKS                       R19 R18 K72 ["PlaybackSpeedDropdown"]
      345 GETUPVAL                         R19 0
      346 GETTABLEKS                       R19 R19 K8 ["createElement"]
      348 GETUPVAL                         R20 14
      349 DUPTABLE                         R21 K14 [{"LayoutOrder"}]
      350 MOVE                             R22 R4
      351 CALL                             R22 0 1
      352 SETTABLEKS                       R22 R21 K13 ["LayoutOrder"]
      354 CALL                             R19 2 1
      355 SETTABLEKS                       R19 R18 K73 ["RigDropdown"]
      357 CALL                             R15 3 1
      358 SETTABLEKS                       R15 R14 K52 ["PlaybackToolbar"]
      360 CALL                             R11 3 -1
      361 RETURN                           R11 -1

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
       18 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Components"]
       32 GETTABLEKS                       R5 R5 K12 ["NodeView"]
       34 GETTABLEKS                       R5 R5 K13 ["GraphDropdown"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Contexts"]
       41 GETTABLEKS                       R6 R6 K14 ["MenuItemsContext"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K11 ["Components"]
       48 GETTABLEKS                       R7 R7 K15 ["Toolbar"]
       50 GETTABLEKS                       R7 R7 K16 ["PlayButton"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K11 ["Components"]
       57 GETTABLEKS                       R8 R8 K15 ["Toolbar"]
       59 GETTABLEKS                       R8 R8 K17 ["PlaybackSpeedDropdown"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K8 ["Parent"]
       66 GETTABLEKS                       R9 R9 K18 ["React"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K8 ["Parent"]
       73 GETTABLEKS                       R10 R10 K19 ["ReactUtils"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K11 ["Components"]
       80 GETTABLEKS                       R11 R11 K15 ["Toolbar"]
       82 GETTABLEKS                       R11 R11 K20 ["RigDropdown"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K5 [require]
       87 GETTABLEKS                       R12 R0 K11 ["Components"]
       89 GETTABLEKS                       R12 R12 K12 ["NodeView"]
       91 GETTABLEKS                       R12 R12 K21 ["SaveToRobloxButton"]
       93 CALL                             R11 1 1
       94 GETIMPORT                        R12 K5 [require]
       96 GETTABLEKS                       R13 R0 K11 ["Components"]
       98 GETTABLEKS                       R13 R13 K15 ["Toolbar"]
      100 GETTABLEKS                       R13 R13 K22 ["StepForwardButton"]
      102 CALL                             R12 1 1
      103 GETIMPORT                        R13 K5 [require]
      105 GETTABLEKS                       R14 R0 K23 ["Flags"]
      107 GETTABLEKS                       R14 R14 K24 ["getFFlagAnimGraphSaveToRobloxButtonEnabled"]
      109 CALL                             R13 1 1
      110 GETIMPORT                        R14 K5 [require]
      112 GETTABLEKS                       R15 R0 K25 ["Util"]
      114 GETTABLEKS                       R15 R15 K26 ["Logger"]
      116 CALL                             R14 1 1
      117 LOADK                            R16 K27 ["CompositorMenu"]
      118 NAMECALL                         R14 R14 K28 ["new"]
      120 CALL                             R14 2 1
      121 DUPCLOSURE                       R15 K29 [PROTO_4]
      122 CAPTURE                          VAL R8
      123 DUPCLOSURE                       R16 K30 [PROTO_11]
      124 CAPTURE                          VAL R8
      125 CAPTURE                          VAL R1
      126 CAPTURE                          VAL R5
      127 CAPTURE                          VAL R3
      128 CAPTURE                          VAL R9
      129 CAPTURE                          VAL R4
      130 CAPTURE                          VAL R13
      131 CAPTURE                          VAL R11
      132 CAPTURE                          VAL R2
      133 CAPTURE                          VAL R14
      134 CAPTURE                          VAL R15
      135 CAPTURE                          VAL R6
      136 CAPTURE                          VAL R12
      137 CAPTURE                          VAL R7
      138 CAPTURE                          VAL R10
      139 RETURN                           R16 1
