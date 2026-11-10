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
       43 JUMPIF                           R2 ; [+3]
       44 GETUPVAL                         R2 4
       45 CALL                             R2 0 1
       46 JUMPIFNOT                        R2 ; [+62]
       47 GETTABLEKS                       R2 R0 K12 ["items"]
       49 JUMPIFEQKNIL                     R2 ; [+59]
       51 LOADNIL                          R2
       52 SETTABLEKS                       R2 R1 K7 ["textArgs"]
       54 NEWTABLE                         R2 0 0
       56 GETTABLEKS                       R3 R0 K12 ["items"]
       58 LOADNIL                          R4
       59 LOADNIL                          R5
       60 FORGPREP                         R3
       61 GETTABLEKS                       R8 R7 K13 ["id"]
       63 JUMPIFEQKNIL                     R8 ; [+10]
       65 MOVE                             R9 R2
       66 GETUPVAL                         R10 5
       67 MOVE                             R11 R7
       68 CALL                             R10 1 -1
       69 FASTCALL                         TABLE_INSERT ; [+2]
       70 GETIMPORT                        R8 K15 [table.insert]
       72 CALL                             R8 -1 0
       73 JUMP                             ; [+30]
       74 GETIMPORT                        R8 K2 [table.clone]
       76 MOVE                             R9 R7
       77 CALL                             R8 1 1
       78 NEWTABLE                         R9 0 0
       80 GETTABLEKS                       R10 R8 K12 ["items"]
       82 LOADNIL                          R11
       83 LOADNIL                          R12
       84 FORGPREP                         R10
       85 MOVE                             R16 R9
       86 GETUPVAL                         R17 5
       87 MOVE                             R18 R14
       88 CALL                             R17 1 -1
       89 FASTCALL                         TABLE_INSERT ; [+2]
       90 GETIMPORT                        R15 K15 [table.insert]
       92 CALL                             R15 -1 0
       93 FORGLOOP                         R10 2 ; [-9]
       95 SETTABLEKS                       R9 R8 K12 ["items"]
       97 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       99 MOVE                             R11 R2
      100 MOVE                             R12 R8
      101 GETIMPORT                        R10 K15 [table.insert]
      103 CALL                             R10 2 0
      104 FORGLOOP                         R3 2 ; [-44]
      106 SETTABLEKS                       R2 R1 K12 ["items"]
      108 RETURN                           R1 1
      109 GETUPVAL                         R2 1
      110 CALL                             R2 0 1
      111 JUMPIFNOT                        R2 ; [+3]
      112 LOADNIL                          R2
      113 SETTABLEKS                       R2 R1 K7 ["textArgs"]
      115 GETTABLEKS                       R2 R0 K16 ["onActivated"]
      117 JUMPIFNOTEQKNIL                  R2 ; [+5]
      119 LOADB                            R2 1
      120 SETTABLEKS                       R2 R1 K17 ["isDisabled"]
      122 RETURN                           R1 1
      123 NEWCLOSURE                       R2 P0
      124 CAPTURE                          VAL R0
      125 CAPTURE                          UPVAL U6
      126 SETTABLEKS                       R2 R1 K16 ["onActivated"]
      128 RETURN                           R1 1

PROTO_8:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U5
        8 NEWTABLE                         R1 0 0
       10 GETUPVAL                         R2 6
       11 GETTABLEKS                       R2 R2 K0 ["menus"]
       13 LOADNIL                          R3
       14 LOADNIL                          R4
       15 FORGPREP                         R2
       16 GETIMPORT                        R7 K3 [table.clone]
       18 MOVE                             R8 R6
       19 CALL                             R7 1 1
       20 MOVE                             R6 R7
       21 GETUPVAL                         R7 7
       22 JUMPIFNOT                        R7 ; [+23]
       23 GETTABLEKS                       R7 R6 K4 ["text"]
       25 JUMPIFEQKNIL                     R7 ; [+20]
       27 GETTABLEKS                       R7 R6 K5 ["id"]
       29 JUMPIFEQKS                       R7 K6 ["debug"] ; [+16]
       31 GETUPVAL                         R7 0
       32 LOADK                            R9 K7 ["Common"]
       33 LOADK                            R10 K8 ["AnimationEditor"]
       34 LOADK                            R11 K9 ["Menu"]
       35 GETTABLEKS                       R12 R6 K4 ["text"]
       37 DUPTABLE                         R13 K11 [{"selectionName"}]
       38 GETUPVAL                         R14 3
       39 SETTABLEKS                       R14 R13 K10 ["selectionName"]
       41 NAMECALL                         R7 R7 K12 ["getExternalText"]
       43 CALL                             R7 6 1
       44 SETTABLEKS                       R7 R6 K4 ["text"]
       46 NEWTABLE                         R7 0 0
       48 GETTABLEKS                       R8 R6 K13 ["groups"]
       50 LOADNIL                          R9
       51 LOADNIL                          R10
       52 FORGPREP                         R8
       53 GETIMPORT                        R13 K3 [table.clone]
       55 MOVE                             R14 R12
       56 CALL                             R13 1 1
       57 NEWTABLE                         R14 0 0
       59 SETTABLEKS                       R14 R13 K14 ["items"]
       61 GETTABLEKS                       R14 R12 K14 ["items"]
       63 LOADNIL                          R15
       64 LOADNIL                          R16
       65 FORGPREP                         R14
       66 GETTABLEKS                       R20 R13 K14 ["items"]
       68 MOVE                             R21 R0
       69 MOVE                             R22 R18
       70 CALL                             R21 1 1
       71 FASTCALL2                        TABLE_INSERT R20 R21 ; [+3]
       73 GETIMPORT                        R19 K16 [table.insert]
       75 CALL                             R19 2 0
       76 FORGLOOP                         R14 2 ; [-11]
       78 FASTCALL2                        TABLE_INSERT R7 R13 ; [+5]
       80 MOVE                             R15 R7
       81 MOVE                             R16 R13
       82 GETIMPORT                        R14 K16 [table.insert]
       84 CALL                             R14 2 0
       85 FORGLOOP                         R8 2 ; [-33]
       87 SETTABLEKS                       R7 R6 K13 ["groups"]
       89 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       91 MOVE                             R9 R1
       92 MOVE                             R10 R6
       93 GETIMPORT                        R8 K16 [table.insert]
       95 CALL                             R8 2 0
       96 FORGLOOP                         R2 2 ; [-81]
       98 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+22]
        2 JUMPIFNOTEQKS                    R0 K0 ["Hover"] ; [+21]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["menuOpen"]
        7 JUMPIFEQKS                       R1 K2 [""] ; [+16]
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K3 ["id"]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K1 ["menuOpen"]
       15 JUMPIFEQ                         R1 R2 ; [+8]
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K4 ["setMenuOpen"]
       20 GETUPVAL                         R2 2
       21 GETTABLEKS                       R2 R2 K3 ["id"]
       23 CALL                             R1 1 0
       24 RETURN                           R0 0

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
       77 GETUPVAL                         R8 8
       78 CALL                             R8 0 1
       79 JUMPIFNOT                        R8 ; [+19]
       80 GETTABLEKS                       R8 R0 K15 ["leading"]
       82 JUMPIFEQKNIL                     R8 ; [+16]
       84 GETUPVAL                         R7 0
       85 GETTABLEKS                       R7 R7 K8 ["createElement"]
       87 GETUPVAL                         R8 9
       88 GETTABLEKS                       R8 R8 K16 ["View"]
       90 DUPTABLE                         R9 K19 [{["tag"] = "row align-y-center gap-xsmall size-0-full auto-x", ["LayoutOrder"]}]
       91 MOVE                             R10 R4
       92 CALL                             R10 0 1
       93 SETTABLEKS                       R10 R9 K13 ["LayoutOrder"]
       95 GETTABLEKS                       R10 R0 K15 ["leading"]
       97 CALL                             R7 3 1
       98 JUMP                             ; [+1]
       99 LOADNIL                          R7
      100 GETUPVAL                         R9 8
      101 CALL                             R9 0 1
      102 JUMPIFNOT                        R9 ; [+3]
      103 GETTABLEKS                       R8 R0 K20 ["center"]
      105 JUMP                             ; [+1]
      106 LOADNIL                          R8
      107 GETTABLEKS                       R10 R1 K22 ["selectedTargetName"]
      109 ORK                              R9 R10 K21 [""]
      110 GETUPVAL                         R10 0
      111 GETTABLEKS                       R10 R10 K23 ["useMemo"]
      113 NEWCLOSURE                       R11 P1
      114 CAPTURE                          VAL R3
      115 CAPTURE                          UPVAL U10
      116 CAPTURE                          UPVAL U11
      117 CAPTURE                          VAL R9
      118 CAPTURE                          UPVAL U8
      119 CAPTURE                          VAL R5
      120 CAPTURE                          VAL R2
      121 CAPTURE                          UPVAL U12
      122 NEWTABLE                         R12 0 3
      124 MOVE                             R13 R3
      125 GETTABLEKS                       R14 R2 K24 ["menus"]
      127 MOVE                             R15 R9
      128 SETLIST                          R12 R13 3 [1]
      130 CALL                             R10 2 1
      131 NEWTABLE                         R11 0 0
      133 MOVE                             R12 R10
      134 LOADNIL                          R13
      135 LOADNIL                          R14
      136 FORGPREP                         R12
      137 GETUPVAL                         R17 8
      138 CALL                             R17 0 1
      139 JUMPIFNOT                        R17 ; [+6]
      140 GETTABLEKS                       R18 R16 K25 ["isDisabled"]
      142 JUMPIFEQKB                       R18 TRUE ; [+2]
      144 LOADB                            R17 0 +1
      145 LOADB                            R17 1
      146 GETTABLEKS                       R18 R16 K26 ["id"]
      148 GETUPVAL                         R19 0
      149 GETTABLEKS                       R19 R19 K8 ["createElement"]
      151 GETUPVAL                         R20 9
      152 GETTABLEKS                       R20 R20 K27 ["Menu"]
      154 DUPTABLE                         R21 K32 [{"isOpen", "items", "size", "LayoutOrder", "onPressedOutside"}]
      155 LOADB                            R22 0
      156 GETTABLEKS                       R23 R16 K26 ["id"]
      158 GETTABLEKS                       R24 R0 K33 ["menuOpen"]
      160 JUMPIFNOTEQ                      R23 R24 ; [+2]
      162 NOT                              R22 R17
      163 SETTABLEKS                       R22 R21 K28 ["isOpen"]
      165 GETTABLEKS                       R22 R16 K34 ["groups"]
      167 SETTABLEKS                       R22 R21 K29 ["items"]
      169 GETUPVAL                         R22 9
      170 GETTABLEKS                       R22 R22 K35 ["Enums"]
      172 GETTABLEKS                       R22 R22 K36 ["InputSize"]
      174 GETTABLEKS                       R22 R22 K37 ["XSmall"]
      176 SETTABLEKS                       R22 R21 K30 ["size"]
      178 MOVE                             R22 R4
      179 CALL                             R22 0 1
      180 SETTABLEKS                       R22 R21 K13 ["LayoutOrder"]
      182 SETTABLEKS                       R5 R21 K31 ["onPressedOutside"]
      184 DUPTABLE                         R22 K39 [{"Button"}]
      185 GETUPVAL                         R23 0
      186 GETTABLEKS                       R23 R23 K8 ["createElement"]
      188 GETUPVAL                         R24 9
      189 GETTABLEKS                       R24 R24 K16 ["View"]
      191 DUPTABLE                         R25 K42 [{["tag"] = "auto-xy", ["onStateChanged"]}]
      192 NEWCLOSURE                       R26 P2
      193 CAPTURE                          VAL R17
      194 CAPTURE                          VAL R0
      195 CAPTURE                          VAL R16
      196 SETTABLEKS                       R26 R25 K41 ["onStateChanged"]
      198 GETUPVAL                         R26 0
      199 GETTABLEKS                       R26 R26 K8 ["createElement"]
      201 GETUPVAL                         R27 9
      202 GETTABLEKS                       R27 R27 K38 ["Button"]
      204 DUPTABLE                         R28 K47 [{"testId", "text", "size", "variant", "isDisabled", "onActivated"}]
      205 GETUPVAL                         R30 8
      206 CALL                             R30 0 1
      207 JUMPIFNOT                        R30 ; [+7]
      208 GETTABLEKS                       R30 R16 K43 ["testId"]
      210 JUMPIFEQKNIL                     R30 ; [+4]
      212 GETTABLEKS                       R29 R16 K43 ["testId"]
      214 JUMP                             ; [+4]
      215 LOADK                            R30 K48 ["compositormenu-"]
      216 GETTABLEKS                       R31 R16 K26 ["id"]
      218 CONCAT                           R29 R30 R31
      219 SETTABLEKS                       R29 R28 K43 ["testId"]
      221 GETTABLEKS                       R29 R16 K44 ["text"]
      223 SETTABLEKS                       R29 R28 K44 ["text"]
      225 GETUPVAL                         R29 9
      226 GETTABLEKS                       R29 R29 K35 ["Enums"]
      228 GETTABLEKS                       R29 R29 K36 ["InputSize"]
      230 GETTABLEKS                       R29 R29 K37 ["XSmall"]
      232 SETTABLEKS                       R29 R28 K30 ["size"]
      234 GETUPVAL                         R29 9
      235 GETTABLEKS                       R29 R29 K35 ["Enums"]
      237 GETTABLEKS                       R29 R29 K49 ["ButtonVariant"]
      239 GETTABLEKS                       R29 R29 K50 ["Text"]
      241 SETTABLEKS                       R29 R28 K45 ["variant"]
      243 SETTABLEKS                       R17 R28 K25 ["isDisabled"]
      245 NEWCLOSURE                       R29 P3
      246 CAPTURE                          UPVAL U13
      247 CAPTURE                          VAL R16
      248 CAPTURE                          VAL R0
      249 SETTABLEKS                       R29 R28 K46 ["onActivated"]
      251 CALL                             R26 2 -1
      252 CALL                             R23 -1 1
      253 SETTABLEKS                       R23 R22 K38 ["Button"]
      255 CALL                             R19 3 1
      256 SETTABLE                         R19 R11 R18
      257 FORGLOOP                         R12 2 ; [-121]
      259 GETUPVAL                         R12 14
      260 CALL                             R12 0 1
      261 GETUPVAL                         R13 0
      262 GETTABLEKS                       R13 R13 K8 ["createElement"]
      264 GETUPVAL                         R14 9
      265 GETTABLEKS                       R14 R14 K16 ["View"]
      267 DUPTABLE                         R15 K55 [{["tag"] = "size-full-800 padding-xsmall padding-left-small bg-surface-200", ["onAbsoluteSizeChanged"], ["LayoutOrder"], ["ZIndex"] = 10}]
      268 GETTABLEKS                       R16 R12 K56 ["onContainerSizeChanged"]
      270 SETTABLEKS                       R16 R15 K52 ["onAbsoluteSizeChanged"]
      272 GETTABLEKS                       R16 R0 K13 ["LayoutOrder"]
      274 SETTABLEKS                       R16 R15 K13 ["LayoutOrder"]
      276 DUPTABLE                         R16 K59 [{"Toolbar", "PlaybackToolbar"}]
      277 GETUPVAL                         R17 0
      278 GETTABLEKS                       R17 R17 K8 ["createElement"]
      280 GETUPVAL                         R18 9
      281 GETTABLEKS                       R18 R18 K16 ["View"]
      283 DUPTABLE                         R19 K62 [{["tag"] = "row align-y-top gap-xsmall size-full", ["testId"] = "--animationeditor--mainmenutoolbar", ["ZIndex"]}]
      284 MOVE                             R20 R4
      285 CALL                             R20 0 1
      286 SETTABLEKS                       R20 R19 K53 ["ZIndex"]
      288 DUPTABLE                         R20 K68 [{"GraphDropdownWithSaveButton", "Leading", "RemainingSpaceTracker", "Trailing", "ChildMenus"}]
      289 JUMPIFNOTEQKNIL                  R7 ; [+3]
      291 MOVE                             R21 R6
      292 JUMP                             ; [+1]
      293 LOADNIL                          R21
      294 SETTABLEKS                       R21 R20 K63 ["GraphDropdownWithSaveButton"]
      296 SETTABLEKS                       R7 R20 K64 ["Leading"]
      298 GETUPVAL                         R21 0
      299 GETTABLEKS                       R21 R21 K8 ["createElement"]
      301 GETUPVAL                         R22 9
      302 GETTABLEKS                       R22 R22 K16 ["View"]
      304 DUPTABLE                         R23 K71 [{["tag"] = "fill size-0-full", ["LayoutOrder"], ["onAbsolutePositionChanged"]}]
      305 MOVE                             R24 R4
      306 CALL                             R24 0 1
      307 SETTABLEKS                       R24 R23 K13 ["LayoutOrder"]
      309 GETTABLEKS                       R24 R12 K72 ["onAnchorPositionChanged"]
      311 SETTABLEKS                       R24 R23 K70 ["onAbsolutePositionChanged"]
      313 CALL                             R21 2 1
      314 SETTABLEKS                       R21 R20 K65 ["RemainingSpaceTracker"]
      316 GETUPVAL                         R22 8
      317 CALL                             R22 0 1
      318 JUMPIFNOT                        R22 ; [+19]
      319 GETTABLEKS                       R22 R0 K73 ["trailing"]
      321 JUMPIFEQKNIL                     R22 ; [+16]
      323 GETUPVAL                         R21 0
      324 GETTABLEKS                       R21 R21 K8 ["createElement"]
      326 GETUPVAL                         R22 9
      327 GETTABLEKS                       R22 R22 K16 ["View"]
      329 DUPTABLE                         R23 K19 [{["tag"] = "row align-y-center gap-xsmall size-0-full auto-x", ["LayoutOrder"]}]
      330 MOVE                             R24 R4
      331 CALL                             R24 0 1
      332 SETTABLEKS                       R24 R23 K13 ["LayoutOrder"]
      334 GETTABLEKS                       R24 R0 K73 ["trailing"]
      336 CALL                             R21 3 1
      337 JUMP                             ; [+1]
      338 LOADNIL                          R21
      339 SETTABLEKS                       R21 R20 K66 ["Trailing"]
      341 GETUPVAL                         R21 0
      342 GETTABLEKS                       R21 R21 K8 ["createElement"]
      344 GETUPVAL                         R22 0
      345 GETTABLEKS                       R22 R22 K9 ["Fragment"]
      347 NEWTABLE                         R23 0 0
      349 MOVE                             R24 R11
      350 CALL                             R21 3 1
      351 SETTABLEKS                       R21 R20 K67 ["ChildMenus"]
      353 CALL                             R17 3 1
      354 SETTABLEKS                       R17 R16 K57 ["Toolbar"]
      356 GETUPVAL                         R17 0
      357 GETTABLEKS                       R17 R17 K8 ["createElement"]
      359 GETUPVAL                         R18 9
      360 GETTABLEKS                       R18 R18 K16 ["View"]
      362 DUPTABLE                         R19 K76 [{["tag"] = "row align-x-center gap-xsmall size-0-full auto-x", ["Position"], ["ZIndex"], ["onAbsoluteSizeChanged"]}]
      363 GETTABLEKS                       R20 R12 K77 ["positionBinding"]
      365 SETTABLEKS                       R20 R19 K75 ["Position"]
      367 MOVE                             R20 R4
      368 CALL                             R20 0 1
      369 SETTABLEKS                       R20 R19 K53 ["ZIndex"]
      371 GETTABLEKS                       R20 R12 K78 ["onContentSizeChanged"]
      373 SETTABLEKS                       R20 R19 K52 ["onAbsoluteSizeChanged"]
      375 MOVE                             R20 R8
      376 JUMPIF                           R20 ; [+73]
      377 DUPTABLE                         R20 K87 [{["PreviewEnabledButton"], ["RigDropdown"], ["ResetRigButton"], ["PlayButton"], ["StepForwardButton"], ["PlaybackSpeedDropdown"], ["RigDropdown_DEPRECATED"] = False}]
      378 GETUPVAL                         R21 0
      379 GETTABLEKS                       R21 R21 K8 ["createElement"]
      381 GETUPVAL                         R22 15
      382 DUPTABLE                         R23 K14 [{"LayoutOrder"}]
      383 MOVE                             R24 R4
      384 CALL                             R24 0 1
      385 SETTABLEKS                       R24 R23 K13 ["LayoutOrder"]
      387 CALL                             R21 2 1
      388 SETTABLEKS                       R21 R20 K79 ["PreviewEnabledButton"]
      390 GETUPVAL                         R21 0
      391 GETTABLEKS                       R21 R21 K8 ["createElement"]
      393 GETUPVAL                         R22 16
      394 DUPTABLE                         R23 K14 [{"LayoutOrder"}]
      395 MOVE                             R24 R4
      396 CALL                             R24 0 1
      397 SETTABLEKS                       R24 R23 K13 ["LayoutOrder"]
      399 CALL                             R21 2 1
      400 SETTABLEKS                       R21 R20 K80 ["RigDropdown"]
      402 GETUPVAL                         R21 0
      403 GETTABLEKS                       R21 R21 K8 ["createElement"]
      405 GETUPVAL                         R22 17
      406 DUPTABLE                         R23 K14 [{"LayoutOrder"}]
      407 MOVE                             R24 R4
      408 CALL                             R24 0 1
      409 SETTABLEKS                       R24 R23 K13 ["LayoutOrder"]
      411 CALL                             R21 2 1
      412 SETTABLEKS                       R21 R20 K81 ["ResetRigButton"]
      414 GETUPVAL                         R21 0
      415 GETTABLEKS                       R21 R21 K8 ["createElement"]
      417 GETUPVAL                         R22 18
      418 DUPTABLE                         R23 K14 [{"LayoutOrder"}]
      419 MOVE                             R24 R4
      420 CALL                             R24 0 1
      421 SETTABLEKS                       R24 R23 K13 ["LayoutOrder"]
      423 CALL                             R21 2 1
      424 SETTABLEKS                       R21 R20 K82 ["PlayButton"]
      426 GETUPVAL                         R21 0
      427 GETTABLEKS                       R21 R21 K8 ["createElement"]
      429 GETUPVAL                         R22 19
      430 DUPTABLE                         R23 K14 [{"LayoutOrder"}]
      431 MOVE                             R24 R4
      432 CALL                             R24 0 1
      433 SETTABLEKS                       R24 R23 K13 ["LayoutOrder"]
      435 CALL                             R21 2 1
      436 SETTABLEKS                       R21 R20 K83 ["StepForwardButton"]
      438 GETUPVAL                         R21 0
      439 GETTABLEKS                       R21 R21 K8 ["createElement"]
      441 GETUPVAL                         R22 20
      442 DUPTABLE                         R23 K14 [{"LayoutOrder"}]
      443 MOVE                             R24 R4
      444 CALL                             R24 0 1
      445 SETTABLEKS                       R24 R23 K13 ["LayoutOrder"]
      447 CALL                             R21 2 1
      448 SETTABLEKS                       R21 R20 K84 ["PlaybackSpeedDropdown"]
      450 CALL                             R17 3 1
      451 SETTABLEKS                       R17 R16 K58 ["PlaybackToolbar"]
      453 CALL                             R13 3 -1
      454 RETURN                           R13 -1

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
      151 GETTABLEKS                       R20 R0 K10 ["Flags"]
      153 GETTABLEKS                       R20 R20 K30 ["getFFlagAnimationEditorPluginUI"]
      155 CALL                             R19 1 1
      156 GETIMPORT                        R20 K5 [require]
      158 GETTABLEKS                       R21 R0 K31 ["Util"]
      160 GETTABLEKS                       R21 R21 K32 ["Logger"]
      162 CALL                             R20 1 1
      163 LOADK                            R22 K33 ["CompositorMenu"]
      164 NAMECALL                         R20 R20 K34 ["new"]
      166 CALL                             R20 2 1
      167 DUPCLOSURE                       R21 K35 [PROTO_4]
      168 CAPTURE                          VAL R11
      169 DUPCLOSURE                       R22 K36 [PROTO_11]
      170 CAPTURE                          VAL R11
      171 CAPTURE                          VAL R1
      172 CAPTURE                          VAL R7
      173 CAPTURE                          VAL R5
      174 CAPTURE                          VAL R12
      175 CAPTURE                          VAL R6
      176 CAPTURE                          VAL R17
      177 CAPTURE                          VAL R15
      178 CAPTURE                          VAL R19
      179 CAPTURE                          VAL R4
      180 CAPTURE                          VAL R18
      181 CAPTURE                          VAL R2
      182 CAPTURE                          VAL R3
      183 CAPTURE                          VAL R20
      184 CAPTURE                          VAL R21
      185 CAPTURE                          VAL R10
      186 CAPTURE                          VAL R14
      187 CAPTURE                          VAL R13
      188 CAPTURE                          VAL R8
      189 CAPTURE                          VAL R16
      190 CAPTURE                          VAL R9
      191 RETURN                           R22 1
