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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useBinding"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["useBinding"]
        8 LOADNIL                          R3
        9 CALL                             R2 1 2
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K0 ["useBinding"]
       13 LOADNIL                          R5
       14 CALL                             R4 1 2
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R6 R7 K1 ["useCallback"]
       18 NEWCLOSURE                       R7 P0
       19 CAPTURE                          VAL R1
       20 NEWTABLE                         R8 0 0
       22 CALL                             R6 2 1
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R7 R8 K1 ["useCallback"]
       26 NEWCLOSURE                       R8 P1
       27 CAPTURE                          VAL R3
       28 NEWTABLE                         R9 0 0
       30 CALL                             R7 2 1
       31 GETUPVAL                         R9 0
       32 GETTABLEKS                       R8 R9 K1 ["useCallback"]
       34 NEWCLOSURE                       R9 P2
       35 CAPTURE                          VAL R5
       36 NEWTABLE                         R10 0 0
       38 CALL                             R8 2 1
       39 DUPTABLE                         R9 K6 [{"onAnchorPositionChanged", "onContainerSizeChanged", "onContentSizeChanged", "positionBinding"}]
       40 SETTABLEKS                       R6 R9 K2 ["onAnchorPositionChanged"]
       42 SETTABLEKS                       R7 R9 K3 ["onContainerSizeChanged"]
       44 SETTABLEKS                       R8 R9 K4 ["onContentSizeChanged"]
       46 GETUPVAL                         R11 0
       47 GETTABLEKS                       R10 R11 K7 ["joinBindings"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setMenuOpen"]
        3 LOADK                            R1 K1 [""]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onActivated"]
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
        6 GETUPVAL                         R5 3
        7 GETTABLEKS                       R2 R5 K0 ["menus"]
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
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K1 ["menuOpen"]
        5 JUMPIFEQKS                       R1 K2 [""] ; [+16]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K3 ["id"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K1 ["menuOpen"]
       13 JUMPIFEQ                         R1 R2 ; [+8]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R1 R2 K4 ["setMenuOpen"]
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R2 R3 K3 ["id"]
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Toggling menu {}"]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K1 ["id"]
        5 NAMECALL                         R0 R0 K2 ["trace"]
        7 CALL                             R0 3 0
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R0 R1 K3 ["setMenuOpen"]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R2 R3 K1 ["id"]
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R3 R4 K4 ["menuOpen"]
       17 JUMPIFNOTEQ                      R2 R3 ; [+3]
       19 LOADK                            R1 K5 [""]
       20 JUMP                             ; [+3]
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R1 R2 K1 ["id"]
       24 CALL                             R0 1 0
       25 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R3 R0 K0 ["name"]
        2 GETTABLEKS                       R4 R1 K0 ["name"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_12:
        0 DUPTABLE                         R1 K2 [{"id", "text"}]
        1 GETTABLEKS                       R2 R0 K3 ["animationId"]
        3 SETTABLEKS                       R2 R1 K0 ["id"]
        5 GETTABLEKS                       R2 R0 K4 ["name"]
        7 SETTABLEKS                       R2 R1 K1 ["text"]
        9 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 ADDK                             R1 R1 K0 [1]
        2 SETUPVAL                         R1 0
        3 DUPTABLE                         R1 K3 [{"id", "text"}]
        4 GETTABLEKS                       R2 R0 K4 ["animationId"]
        6 SETTABLEKS                       R2 R1 K1 ["id"]
        8 LOADK                            R3 K5 ["Local graph "]
        9 GETUPVAL                         R5 0
       10 FASTCALL1                        TOSTRING R5 ; [+2]
       11 GETIMPORT                        R4 K7 [tostring]
       13 CALL                             R4 1 1
       14 CONCAT                           R2 R3 R4
       15 SETTABLEKS                       R2 R1 K2 ["text"]
       17 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["runtimeDebugInfo"]
        3 MOVE                             R1 R0
        4 JUMPIFNOT                        R1 ; [+2]
        5 GETTABLEKS                       R1 R0 K1 ["availableTracks"]
        7 NEWTABLE                         R2 0 0
        9 NEWTABLE                         R3 0 0
       11 JUMPIFEQKNIL                     R1 ; [+25]
       13 MOVE                             R4 R1
       14 LOADNIL                          R5
       15 LOADNIL                          R6
       16 FORGPREP                         R4
       17 GETTABLEKS                       R9 R8 K2 ["published"]
       19 JUMPIFNOT                        R9 ; [+8]
       20 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       22 MOVE                             R10 R2
       23 MOVE                             R11 R8
       24 GETIMPORT                        R9 K5 [table.insert]
       26 CALL                             R9 2 0
       27 JUMP                             ; [+7]
       28 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       30 MOVE                             R10 R3
       31 MOVE                             R11 R8
       32 GETIMPORT                        R9 K5 [table.insert]
       34 CALL                             R9 2 0
       35 FORGLOOP                         R4 2 ; [-19]
       37 GETIMPORT                        R4 K7 [table.sort]
       39 MOVE                             R5 R2
       40 DUPCLOSURE                       R6 K8 [PROTO_11]
       41 CALL                             R4 2 0
       42 NEWTABLE                         R4 0 0
       44 LENGTH                           R5 R2
       45 LOADN                            R6 0
       46 JUMPIFNOTLT                      R6 R5 ; [+16]
       48 DUPTABLE                         R7 K10 [{"items"}]
       49 GETUPVAL                         R9 1
       50 GETTABLEKS                       R8 R9 K11 ["map"]
       52 MOVE                             R9 R2
       53 DUPCLOSURE                       R10 K12 [PROTO_12]
       54 CALL                             R8 2 1
       55 SETTABLEKS                       R8 R7 K9 ["items"]
       57 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
       59 MOVE                             R6 R4
       60 GETIMPORT                        R5 K5 [table.insert]
       62 CALL                             R5 2 0
       63 LENGTH                           R5 R3
       64 LOADN                            R6 0
       65 JUMPIFNOTLT                      R6 R5 ; [+19]
       67 LOADN                            R5 0
       68 DUPTABLE                         R8 K10 [{"items"}]
       69 GETUPVAL                         R10 1
       70 GETTABLEKS                       R9 R10 K11 ["map"]
       72 MOVE                             R10 R3
       73 NEWCLOSURE                       R11 P2
       74 CAPTURE                          REF R5
       75 CALL                             R9 2 1
       76 SETTABLEKS                       R9 R8 K9 ["items"]
       78 FASTCALL2                        TABLE_INSERT R4 R8 ; [+4]
       80 MOVE                             R7 R4
       81 GETIMPORT                        R6 K5 [table.insert]
       83 CALL                             R6 2 0
       84 CLOSEUPVALS                      R5
       85 MOVE                             R5 R4
       86 MOVE                             R6 R0
       87 RETURN                           R5 2

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["selectDebugTrackByIdAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_16:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["useContext"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K0 ["useContext"]
       17 GETUPVAL                         R5 3
       18 GETTABLEKS                       R4 R5 K1 ["Context"]
       20 CALL                             R3 1 1
       21 GETUPVAL                         R6 4
       22 GETTABLEKS                       R5 R6 K2 ["ContextServices"]
       24 GETTABLEKS                       R4 R5 K3 ["Localization"]
       26 NAMECALL                         R4 R4 K4 ["use"]
       28 CALL                             R4 1 1
       29 GETUPVAL                         R6 5
       30 GETTABLEKS                       R5 R6 K5 ["createNextOrder"]
       32 CALL                             R5 0 1
       33 GETUPVAL                         R7 0
       34 GETTABLEKS                       R6 R7 K6 ["useCallback"]
       36 NEWCLOSURE                       R7 P0
       37 CAPTURE                          VAL R0
       38 NEWTABLE                         R8 0 1
       40 GETTABLEKS                       R9 R0 K7 ["setMenuOpen"]
       42 SETLIST                          R8 R9 1 [1]
       44 CALL                             R6 2 1
       45 GETUPVAL                         R8 0
       46 GETTABLEKS                       R7 R8 K8 ["createElement"]
       48 GETUPVAL                         R9 0
       49 GETTABLEKS                       R8 R9 K9 ["Fragment"]
       51 NEWTABLE                         R9 0 0
       53 DUPTABLE                         R10 K12 [{"GraphDropdown", "SaveToRobloxButton"}]
       54 GETUPVAL                         R12 0
       55 GETTABLEKS                       R11 R12 K8 ["createElement"]
       57 GETUPVAL                         R12 6
       58 DUPTABLE                         R13 K14 [{"LayoutOrder"}]
       59 MOVE                             R14 R5
       60 CALL                             R14 0 1
       61 SETTABLEKS                       R14 R13 K13 ["LayoutOrder"]
       63 CALL                             R11 2 1
       64 SETTABLEKS                       R11 R10 K10 ["GraphDropdown"]
       66 GETUPVAL                         R12 0
       67 GETTABLEKS                       R11 R12 K8 ["createElement"]
       69 GETUPVAL                         R12 7
       70 DUPTABLE                         R13 K14 [{"LayoutOrder"}]
       71 MOVE                             R14 R5
       72 CALL                             R14 0 1
       73 SETTABLEKS                       R14 R13 K13 ["LayoutOrder"]
       75 CALL                             R11 2 1
       76 SETTABLEKS                       R11 R10 K11 ["SaveToRobloxButton"]
       78 CALL                             R7 3 1
       79 GETTABLEKS                       R9 R1 K16 ["selectedTargetName"]
       81 ORK                              R8 R9 K15 [""]
       82 GETUPVAL                         R10 0
       83 GETTABLEKS                       R9 R10 K17 ["useMemo"]
       85 NEWCLOSURE                       R10 P1
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R2
       90 NEWTABLE                         R11 0 3
       92 MOVE                             R12 R4
       93 GETTABLEKS                       R13 R2 K18 ["menus"]
       95 MOVE                             R14 R8
       96 SETLIST                          R11 R12 3 [1]
       98 CALL                             R9 2 1
       99 NEWTABLE                         R10 0 0
      101 MOVE                             R11 R9
      102 LOADNIL                          R12
      103 LOADNIL                          R13
      104 FORGPREP                         R11
      105 GETTABLEKS                       R16 R15 K19 ["id"]
      107 GETUPVAL                         R18 0
      108 GETTABLEKS                       R17 R18 K8 ["createElement"]
      110 GETUPVAL                         R19 8
      111 GETTABLEKS                       R18 R19 K20 ["Menu"]
      113 DUPTABLE                         R19 K25 [{"isOpen", "items", "size", "LayoutOrder", "onPressedOutside"}]
      114 GETTABLEKS                       R21 R15 K19 ["id"]
      116 GETTABLEKS                       R22 R0 K26 ["menuOpen"]
      118 JUMPIFEQ                         R21 R22 ; [+2]
      120 LOADB                            R20 0 +1
      121 LOADB                            R20 1
      122 SETTABLEKS                       R20 R19 K21 ["isOpen"]
      124 GETTABLEKS                       R20 R15 K27 ["groups"]
      126 SETTABLEKS                       R20 R19 K22 ["items"]
      128 GETUPVAL                         R23 8
      129 GETTABLEKS                       R22 R23 K28 ["Enums"]
      131 GETTABLEKS                       R21 R22 K29 ["InputSize"]
      133 GETTABLEKS                       R20 R21 K30 ["XSmall"]
      135 SETTABLEKS                       R20 R19 K23 ["size"]
      137 MOVE                             R20 R5
      138 CALL                             R20 0 1
      139 SETTABLEKS                       R20 R19 K13 ["LayoutOrder"]
      141 SETTABLEKS                       R6 R19 K24 ["onPressedOutside"]
      143 DUPTABLE                         R20 K32 [{"Button"}]
      144 GETUPVAL                         R22 0
      145 GETTABLEKS                       R21 R22 K8 ["createElement"]
      147 GETUPVAL                         R23 8
      148 GETTABLEKS                       R22 R23 K33 ["View"]
      150 DUPTABLE                         R23 K36 [{"tag", "onStateChanged"}]
      151 LOADK                            R24 K37 ["auto-xy"]
      152 SETTABLEKS                       R24 R23 K34 ["tag"]
      154 NEWCLOSURE                       R24 P2
      155 CAPTURE                          VAL R0
      156 CAPTURE                          VAL R15
      157 SETTABLEKS                       R24 R23 K35 ["onStateChanged"]
      159 GETUPVAL                         R25 0
      160 GETTABLEKS                       R24 R25 K8 ["createElement"]
      162 GETUPVAL                         R26 8
      163 GETTABLEKS                       R25 R26 K31 ["Button"]
      165 DUPTABLE                         R26 K42 [{"testId", "text", "size", "variant", "onActivated"}]
      166 LOADK                            R28 K43 ["compositormenu-"]
      167 GETTABLEKS                       R29 R15 K19 ["id"]
      169 CONCAT                           R27 R28 R29
      170 SETTABLEKS                       R27 R26 K38 ["testId"]
      172 GETTABLEKS                       R27 R15 K39 ["text"]
      174 SETTABLEKS                       R27 R26 K39 ["text"]
      176 GETUPVAL                         R30 8
      177 GETTABLEKS                       R29 R30 K28 ["Enums"]
      179 GETTABLEKS                       R28 R29 K29 ["InputSize"]
      181 GETTABLEKS                       R27 R28 K30 ["XSmall"]
      183 SETTABLEKS                       R27 R26 K23 ["size"]
      185 GETUPVAL                         R30 8
      186 GETTABLEKS                       R29 R30 K28 ["Enums"]
      188 GETTABLEKS                       R28 R29 K44 ["ButtonVariant"]
      190 GETTABLEKS                       R27 R28 K45 ["Text"]
      192 SETTABLEKS                       R27 R26 K40 ["variant"]
      194 NEWCLOSURE                       R27 P3
      195 CAPTURE                          UPVAL U9
      196 CAPTURE                          VAL R15
      197 CAPTURE                          VAL R0
      198 SETTABLEKS                       R27 R26 K41 ["onActivated"]
      200 CALL                             R24 2 -1
      201 CALL                             R21 -1 1
      202 SETTABLEKS                       R21 R20 K31 ["Button"]
      204 CALL                             R17 3 1
      205 SETTABLE                         R17 R10 R16
      206 FORGLOOP                         R11 2 ; [-102]
      208 GETUPVAL                         R12 0
      209 GETTABLEKS                       R11 R12 K17 ["useMemo"]
      211 NEWCLOSURE                       R12 P4
      212 CAPTURE                          VAL R3
      213 CAPTURE                          UPVAL U10
      214 NEWTABLE                         R13 0 1
      216 GETTABLEKS                       R14 R3 K46 ["runtimeDebugInfo"]
      218 SETLIST                          R13 R14 1 [1]
      220 CALL                             R11 2 2
      221 GETUPVAL                         R13 11
      222 CALL                             R13 0 1
      223 GETUPVAL                         R15 0
      224 GETTABLEKS                       R14 R15 K6 ["useCallback"]
      226 NEWCLOSURE                       R15 P5
      227 CAPTURE                          VAL R3
      228 NEWTABLE                         R16 0 1
      230 GETTABLEKS                       R17 R3 K47 ["selectDebugTrackByIdAsync"]
      232 SETLIST                          R16 R17 1 [1]
      234 CALL                             R14 2 1
      235 GETUPVAL                         R16 0
      236 GETTABLEKS                       R15 R16 K8 ["createElement"]
      238 GETUPVAL                         R17 8
      239 GETTABLEKS                       R16 R17 K33 ["View"]
      241 DUPTABLE                         R17 K50 [{"tag", "onAbsoluteSizeChanged", "ZIndex"}]
      242 LOADK                            R18 K51 ["size-full-800 border-bottom bg-surface-200 padding-xsmall padding-left-small"]
      243 SETTABLEKS                       R18 R17 K34 ["tag"]
      245 GETTABLEKS                       R18 R13 K52 ["onContainerSizeChanged"]
      247 SETTABLEKS                       R18 R17 K48 ["onAbsoluteSizeChanged"]
      249 GETTABLEKS                       R18 R0 K49 ["ZIndex"]
      251 SETTABLEKS                       R18 R17 K49 ["ZIndex"]
      253 DUPTABLE                         R18 K55 [{"Toolbar", "PlaybackToolbar"}]
      254 GETUPVAL                         R20 0
      255 GETTABLEKS                       R19 R20 K8 ["createElement"]
      257 GETUPVAL                         R21 8
      258 GETTABLEKS                       R20 R21 K33 ["View"]
      260 DUPTABLE                         R21 K56 [{"tag", "testId", "ZIndex"}]
      261 LOADK                            R22 K57 ["size-full row align-y-top gap-xsmall"]
      262 SETTABLEKS                       R22 R21 K34 ["tag"]
      264 LOADK                            R22 K58 ["--animationeditor--mainmenutoolbar"]
      265 SETTABLEKS                       R22 R21 K38 ["testId"]
      267 MOVE                             R22 R5
      268 CALL                             R22 0 1
      269 SETTABLEKS                       R22 R21 K49 ["ZIndex"]
      271 DUPTABLE                         R22 K62 [{"GraphDropdownWithSaveButton", "RemainingSpaceTracker", "ChildMenus"}]
      272 SETTABLEKS                       R7 R22 K59 ["GraphDropdownWithSaveButton"]
      274 GETUPVAL                         R24 0
      275 GETTABLEKS                       R23 R24 K8 ["createElement"]
      277 GETUPVAL                         R25 8
      278 GETTABLEKS                       R24 R25 K33 ["View"]
      280 DUPTABLE                         R25 K64 [{"tag", "LayoutOrder", "onAbsolutePositionChanged"}]
      281 LOADK                            R26 K65 ["fill size-0-full"]
      282 SETTABLEKS                       R26 R25 K34 ["tag"]
      284 MOVE                             R26 R5
      285 CALL                             R26 0 1
      286 SETTABLEKS                       R26 R25 K13 ["LayoutOrder"]
      288 GETTABLEKS                       R26 R13 K66 ["onAnchorPositionChanged"]
      290 SETTABLEKS                       R26 R25 K63 ["onAbsolutePositionChanged"]
      292 CALL                             R23 2 1
      293 SETTABLEKS                       R23 R22 K60 ["RemainingSpaceTracker"]
      295 GETUPVAL                         R24 0
      296 GETTABLEKS                       R23 R24 K8 ["createElement"]
      298 GETUPVAL                         R25 0
      299 GETTABLEKS                       R24 R25 K9 ["Fragment"]
      301 NEWTABLE                         R25 0 0
      303 MOVE                             R26 R10
      304 CALL                             R23 3 1
      305 SETTABLEKS                       R23 R22 K61 ["ChildMenus"]
      307 CALL                             R19 3 1
      308 SETTABLEKS                       R19 R18 K53 ["Toolbar"]
      310 GETUPVAL                         R20 0
      311 GETTABLEKS                       R19 R20 K8 ["createElement"]
      313 GETUPVAL                         R21 8
      314 GETTABLEKS                       R20 R21 K33 ["View"]
      316 DUPTABLE                         R21 K68 [{"tag", "Position", "ZIndex", "onAbsoluteSizeChanged"}]
      317 LOADK                            R22 K69 ["row align-x-center gap-xsmall auto-x size-0-full"]
      318 SETTABLEKS                       R22 R21 K34 ["tag"]
      320 GETTABLEKS                       R22 R13 K70 ["positionBinding"]
      322 SETTABLEKS                       R22 R21 K67 ["Position"]
      324 MOVE                             R22 R5
      325 CALL                             R22 0 1
      326 SETTABLEKS                       R22 R21 K49 ["ZIndex"]
      328 GETTABLEKS                       R22 R13 K71 ["onContentSizeChanged"]
      330 SETTABLEKS                       R22 R21 K48 ["onAbsoluteSizeChanged"]
      332 DUPTABLE                         R22 K77 [{"PlayButton", "StepBackButton", "StepForwardButton", "PlaybackSpeedDropdown", "TracksDropdown"}]
      333 GETUPVAL                         R24 0
      334 GETTABLEKS                       R23 R24 K8 ["createElement"]
      336 GETUPVAL                         R24 12
      337 DUPTABLE                         R25 K14 [{"LayoutOrder"}]
      338 MOVE                             R26 R5
      339 CALL                             R26 0 1
      340 SETTABLEKS                       R26 R25 K13 ["LayoutOrder"]
      342 CALL                             R23 2 1
      343 SETTABLEKS                       R23 R22 K72 ["PlayButton"]
      345 GETUPVAL                         R24 0
      346 GETTABLEKS                       R23 R24 K8 ["createElement"]
      348 GETUPVAL                         R24 13
      349 DUPTABLE                         R25 K14 [{"LayoutOrder"}]
      350 MOVE                             R26 R5
      351 CALL                             R26 0 1
      352 SETTABLEKS                       R26 R25 K13 ["LayoutOrder"]
      354 CALL                             R23 2 1
      355 SETTABLEKS                       R23 R22 K73 ["StepBackButton"]
      357 GETUPVAL                         R24 0
      358 GETTABLEKS                       R23 R24 K8 ["createElement"]
      360 GETUPVAL                         R24 14
      361 DUPTABLE                         R25 K14 [{"LayoutOrder"}]
      362 MOVE                             R26 R5
      363 CALL                             R26 0 1
      364 SETTABLEKS                       R26 R25 K13 ["LayoutOrder"]
      366 CALL                             R23 2 1
      367 SETTABLEKS                       R23 R22 K74 ["StepForwardButton"]
      369 GETUPVAL                         R24 0
      370 GETTABLEKS                       R23 R24 K8 ["createElement"]
      372 GETUPVAL                         R24 15
      373 DUPTABLE                         R25 K14 [{"LayoutOrder"}]
      374 MOVE                             R26 R5
      375 CALL                             R26 0 1
      376 SETTABLEKS                       R26 R25 K13 ["LayoutOrder"]
      378 CALL                             R23 2 1
      379 SETTABLEKS                       R23 R22 K75 ["PlaybackSpeedDropdown"]
      381 GETUPVAL                         R24 0
      382 GETTABLEKS                       R23 R24 K8 ["createElement"]
      384 GETUPVAL                         R26 8
      385 GETTABLEKS                       R25 R26 K78 ["Dropdown"]
      387 GETTABLEKS                       R24 R25 K79 ["Root"]
      389 DUPTABLE                         R25 K86 [{"isDisabled", "size", "width", "label", "items", "value", "placeholderText", "onItemChanged", "LayoutOrder"}]
      390 LENGTH                           R27 R11
      391 JUMPIFEQKN                       R27 K87 [0] ; [+2]
      393 LOADB                            R26 0 +1
      394 LOADB                            R26 1
      395 SETTABLEKS                       R26 R25 K80 ["isDisabled"]
      397 GETUPVAL                         R29 8
      398 GETTABLEKS                       R28 R29 K28 ["Enums"]
      400 GETTABLEKS                       R27 R28 K29 ["InputSize"]
      402 GETTABLEKS                       R26 R27 K30 ["XSmall"]
      404 SETTABLEKS                       R26 R25 K23 ["size"]
      406 GETIMPORT                        R26 K90 [UDim.new]
      408 LOADN                            R27 0
      409 LOADN                            R28 120
      410 CALL                             R26 2 1
      411 SETTABLEKS                       R26 R25 K81 ["width"]
      413 LOADK                            R26 K15 [""]
      414 SETTABLEKS                       R26 R25 K82 ["label"]
      416 SETTABLEKS                       R11 R25 K22 ["items"]
      418 MOVE                             R26 R12
      419 JUMPIFNOT                        R26 ; [+2]
      420 GETTABLEKS                       R26 R12 K91 ["debugTrackAnimationId"]
      422 SETTABLEKS                       R26 R25 K83 ["value"]
      424 LOADK                            R28 K92 ["Common"]
      425 LOADK                            R29 K93 ["AnimationEditor"]
      426 LOADK                            R30 K20 ["Menu"]
      427 LOADK                            R31 K94 ["TracksDropdownPlaceholder"]
      428 NAMECALL                         R26 R4 K95 ["getExternalText"]
      430 CALL                             R26 5 1
      431 SETTABLEKS                       R26 R25 K84 ["placeholderText"]
      433 SETTABLEKS                       R14 R25 K85 ["onItemChanged"]
      435 MOVE                             R26 R5
      436 CALL                             R26 0 1
      437 SETTABLEKS                       R26 R25 K13 ["LayoutOrder"]
      439 CALL                             R23 2 1
      440 SETTABLEKS                       R23 R22 K76 ["TracksDropdown"]
      442 CALL                             R19 3 1
      443 SETTABLEKS                       R19 R18 K54 ["PlaybackToolbar"]
      445 CALL                             R15 3 -1
      446 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R3 K7 ["CreateGraphContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R5 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R6 K11 ["Framework"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R8 R0 K12 ["Components"]
       39 GETTABLEKS                       R7 R8 K13 ["NodeView"]
       41 GETTABLEKS                       R6 R7 K14 ["GraphDropdown"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R8 R0 K6 ["Contexts"]
       48 GETTABLEKS                       R7 R8 K15 ["MenuItemsContext"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R9 R0 K6 ["Contexts"]
       55 GETTABLEKS                       R8 R9 K16 ["NativeGraphContext"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R11 R0 K12 ["Components"]
       62 GETTABLEKS                       R10 R11 K17 ["Toolbar"]
       64 GETTABLEKS                       R9 R10 K18 ["PlayButton"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R12 R0 K12 ["Components"]
       71 GETTABLEKS                       R11 R12 K17 ["Toolbar"]
       73 GETTABLEKS                       R10 R11 K19 ["PlaybackSpeedDropdown"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R12 R0 K8 ["Parent"]
       80 GETTABLEKS                       R11 R12 K20 ["React"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R13 R0 K8 ["Parent"]
       87 GETTABLEKS                       R12 R13 K21 ["ReactUtils"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R15 R0 K12 ["Components"]
       94 GETTABLEKS                       R14 R15 K13 ["NodeView"]
       96 GETTABLEKS                       R13 R14 K22 ["SaveToRobloxButton"]
       98 CALL                             R12 1 1
       99 GETIMPORT                        R13 K5 [require]
      101 GETTABLEKS                       R16 R0 K12 ["Components"]
      103 GETTABLEKS                       R15 R16 K17 ["Toolbar"]
      105 GETTABLEKS                       R14 R15 K23 ["StepBackButton"]
      107 CALL                             R13 1 1
      108 GETIMPORT                        R14 K5 [require]
      110 GETTABLEKS                       R17 R0 K12 ["Components"]
      112 GETTABLEKS                       R16 R17 K17 ["Toolbar"]
      114 GETTABLEKS                       R15 R16 K24 ["StepForwardButton"]
      116 CALL                             R14 1 1
      117 GETIMPORT                        R15 K5 [require]
      119 GETTABLEKS                       R17 R0 K25 ["Util"]
      121 GETTABLEKS                       R16 R17 K26 ["Logger"]
      123 CALL                             R15 1 1
      124 LOADK                            R17 K27 ["CompositorMenu"]
      125 NAMECALL                         R15 R15 K28 ["new"]
      127 CALL                             R15 2 1
      128 DUPCLOSURE                       R16 K29 [PROTO_4]
      129 CAPTURE                          VAL R10
      130 DUPCLOSURE                       R17 K30 [PROTO_17]
      131 CAPTURE                          VAL R10
      132 CAPTURE                          VAL R1
      133 CAPTURE                          VAL R6
      134 CAPTURE                          VAL R7
      135 CAPTURE                          VAL R4
      136 CAPTURE                          VAL R11
      137 CAPTURE                          VAL R5
      138 CAPTURE                          VAL R12
      139 CAPTURE                          VAL R3
      140 CAPTURE                          VAL R15
      141 CAPTURE                          VAL R2
      142 CAPTURE                          VAL R16
      143 CAPTURE                          VAL R8
      144 CAPTURE                          VAL R13
      145 CAPTURE                          VAL R14
      146 CAPTURE                          VAL R9
      147 RETURN                           R17 1
