PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isOpen"]
        3 JUMPIFNOTEQKB                    R0 FALSE ; [+12]
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["current"]
        8 JUMPIFNOT                        R0 ; [+7]
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K1 ["current"]
       12 GETTABLEKS                       R0 R0 K2 ["close"]
       14 CALL                             R0 0 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R0 0
       17 GETTABLEKS                       R0 R0 K0 ["isOpen"]
       19 JUMPIFNOT                        R0 ; [+3]
       20 GETUPVAL                         R0 2
       21 LOADB                            R1 1
       22 CALL                             R0 1 0
       23 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+7]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["isOpen"]
        5 JUMPIFNOT                        R0 ; [+3]
        6 GETUPVAL                         R0 2
        7 LOADB                            R1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["ViewportDisplaySize"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["AbsoluteSize"]
        4 GETTABLEKS                       R2 R2 K1 ["X"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K0 ["AbsoluteSize"]
        9 GETTABLEKS                       R3 R3 K2 ["Y"]
       11 JUMPIFLT                         R3 R2 ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_6:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 JUMPIFNOT                        R1 ; [+28]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K0 ["AbsoluteSize"]
        7 GETTABLEKS                       R3 R3 K1 ["X"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K0 ["AbsoluteSize"]
       12 GETTABLEKS                       R4 R4 K2 ["Y"]
       14 JUMPIFLT                         R4 R3 ; [+2]
       16 LOADB                            R2 0 +1
       17 LOADB                            R2 1
       18 CALL                             R1 1 0
       19 GETUPVAL                         R1 0
       20 LOADK                            R3 K0 ["AbsoluteSize"]
       21 NAMECALL                         R1 R1 K3 ["GetPropertyChangedSignal"]
       23 CALL                             R1 2 1
       24 NEWCLOSURE                       R3 P0
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          UPVAL U0
       27 NAMECALL                         R1 R1 K4 ["Connect"]
       29 CALL                             R1 2 1
       30 MOVE                             R0 R1
       31 NEWCLOSURE                       R1 P1
       32 CAPTURE                          REF R0
       33 CLOSEUPVALS                      R0
       34 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onClose"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["onClose"]
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 1
        9 LOADB                            R1 0
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["useState"]
        7 GETTABLEKS                       R5 R2 K1 ["isOpen"]
        9 JUMPIFNOTEQKNIL                  R5 ; [+3]
       11 LOADB                            R4 1
       12 JUMP                             ; [+2]
       13 GETTABLEKS                       R4 R2 K1 ["isOpen"]
       15 CALL                             R3 1 2
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R5 R5 K2 ["useRef"]
       19 LOADNIL                          R6
       20 CALL                             R5 1 1
       21 GETUPVAL                         R6 3
       22 CALL                             R6 0 1
       23 GETUPVAL                         R7 2
       24 GETTABLEKS                       R7 R7 K0 ["useState"]
       26 JUMPIFNOT                        R6 ; [+13]
       27 GETTABLEKS                       R9 R6 K3 ["AbsoluteSize"]
       29 GETTABLEKS                       R9 R9 K4 ["X"]
       31 GETTABLEKS                       R10 R6 K3 ["AbsoluteSize"]
       33 GETTABLEKS                       R10 R10 K5 ["Y"]
       35 JUMPIFLT                         R10 R9 ; [+2]
       37 LOADB                            R8 0 +1
       38 LOADB                            R8 1
       39 JUMP                             ; [+1]
       40 LOADB                            R8 1
       41 CALL                             R7 1 2
       42 GETUPVAL                         R9 2
       43 GETTABLEKS                       R9 R9 K0 ["useState"]
       45 GETUPVAL                         R10 4
       46 GETTABLEKS                       R10 R10 K6 ["ViewportDisplaySize"]
       48 CALL                             R9 1 2
       49 GETUPVAL                         R11 2
       50 GETTABLEKS                       R11 R11 K7 ["useImperativeHandle"]
       52 GETTABLEKS                       R12 R2 K8 ["sheetRef"]
       54 NEWCLOSURE                       R13 P0
       55 CAPTURE                          VAL R5
       56 NEWTABLE                         R14 0 0
       58 CALL                             R11 3 0
       59 GETUPVAL                         R11 2
       60 GETTABLEKS                       R11 R11 K9 ["useEffect"]
       62 NEWCLOSURE                       R12 P1
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R4
       66 NEWTABLE                         R13 0 1
       68 GETTABLEKS                       R14 R2 K1 ["isOpen"]
       70 SETLIST                          R13 R14 1 [1]
       72 CALL                             R11 2 0
       73 GETUPVAL                         R11 2
       74 GETTABLEKS                       R11 R11 K9 ["useEffect"]
       76 NEWCLOSURE                       R12 P2
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R4
       80 NEWTABLE                         R13 0 1
       82 MOVE                             R14 R3
       83 SETLIST                          R13 R14 1 [1]
       85 CALL                             R11 2 0
       86 GETUPVAL                         R11 5
       87 GETTABLEKS                       R11 R11 K10 ["useEventConnection"]
       89 GETUPVAL                         R12 4
       90 LOADK                            R14 K6 ["ViewportDisplaySize"]
       91 NAMECALL                         R12 R12 K11 ["GetPropertyChangedSignal"]
       93 CALL                             R12 2 1
       94 NEWCLOSURE                       R13 P3
       95 CAPTURE                          VAL R10
       96 CAPTURE                          UPVAL U4
       97 NEWTABLE                         R14 0 0
       99 CALL                             R11 3 0
      100 GETUPVAL                         R12 6
      101 GETTABLEKS                       R12 R12 K12 ["FoundationSheetFixLandscapeFlicker"]
      103 JUMPIFNOT                        R12 ; [+4]
      104 GETUPVAL                         R11 2
      105 GETTABLEKS                       R11 R11 K13 ["useLayoutEffect"]
      107 JUMP                             ; [+3]
      108 GETUPVAL                         R11 2
      109 GETTABLEKS                       R11 R11 K9 ["useEffect"]
      111 MOVE                             R12 R11
      112 NEWCLOSURE                       R13 P4
      113 CAPTURE                          VAL R6
      114 CAPTURE                          VAL R8
      115 NEWTABLE                         R14 0 1
      117 MOVE                             R15 R6
      118 SETLIST                          R14 R15 1 [1]
      120 CALL                             R12 2 0
      121 JUMPIF                           R3 ; [+2]
      122 LOADNIL                          R12
      123 RETURN                           R12 1
      124 GETIMPORT                        R12 K16 [table.clone]
      126 MOVE                             R13 R2
      127 CALL                             R12 1 1
      128 LOADNIL                          R13
      129 SETTABLEKS                       R13 R12 K1 ["isOpen"]
      131 SETTABLEKS                       R1 R12 K17 ["ref"]
      133 SETTABLEKS                       R5 R12 K8 ["sheetRef"]
      135 SETTABLEKS                       R9 R12 K18 ["displaySize"]
      137 NEWCLOSURE                       R13 P5
      138 CAPTURE                          VAL R2
      139 CAPTURE                          VAL R4
      140 SETTABLEKS                       R13 R12 K19 ["onClose"]
      142 GETIMPORT                        R13 K23 [Enum.DisplaySize.Small]
      144 JUMPIFNOTEQ                      R9 R13 ; [+9]
      146 JUMPIF                           R7 ; [+7]
      147 GETUPVAL                         R13 2
      148 GETTABLEKS                       R13 R13 K24 ["createElement"]
      150 GETUPVAL                         R14 7
      151 MOVE                             R15 R12
      152 CALL                             R13 2 -1
      153 RETURN                           R13 -1
      154 GETTABLEKS                       R13 R2 K25 ["preferCenterSheet"]
      156 JUMPIFNOT                        R13 ; [+20]
      157 GETUPVAL                         R14 6
      158 GETTABLEKS                       R14 R14 K26 ["FoundationSheetNoCenterSheetSmallScreens"]
      160 JUMPIFNOT                        R14 ; [+7]
      161 GETIMPORT                        R14 K23 [Enum.DisplaySize.Small]
      163 JUMPIFNOTEQ                      R9 R14 ; [+2]
      165 LOADB                            R13 0 +1
      166 LOADB                            R13 1
      167 JUMP                             ; [+1]
      168 LOADB                            R13 1
      169 JUMPIFNOT                        R13 ; [+7]
      170 GETUPVAL                         R13 2
      171 GETTABLEKS                       R13 R13 K24 ["createElement"]
      173 GETUPVAL                         R14 8
      174 MOVE                             R15 R12
      175 CALL                             R13 2 -1
      176 RETURN                           R13 -1
      177 GETUPVAL                         R13 2
      178 GETTABLEKS                       R13 R13 K24 ["createElement"]
      180 GETUPVAL                         R14 9
      181 MOVE                             R15 R12
      182 CALL                             R13 2 -1
      183 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["ReactUtils"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Utility"]
       23 GETTABLEKS                       R5 R5 K10 ["Flags"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETIMPORT                        R6 K1 [script]
       30 GETTABLEKS                       R6 R6 K4 ["Parent"]
       32 GETTABLEKS                       R6 R6 K11 ["BottomSheet"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETIMPORT                        R7 K1 [script]
       39 GETTABLEKS                       R7 R7 K4 ["Parent"]
       41 GETTABLEKS                       R7 R7 K12 ["CenterSheet"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETIMPORT                        R8 K1 [script]
       48 GETTABLEKS                       R8 R8 K4 ["Parent"]
       50 GETTABLEKS                       R8 R8 K13 ["SideSheet"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K6 [require]
       55 GETTABLEKS                       R9 R0 K14 ["Providers"]
       57 GETTABLEKS                       R9 R9 K15 ["Overlay"]
       59 GETTABLEKS                       R9 R9 K16 ["useOverlay"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K6 [require]
       64 GETTABLEKS                       R10 R0 K9 ["Utility"]
       66 GETTABLEKS                       R10 R10 K17 ["Wrappers"]
       68 CALL                             R9 1 1
       69 GETTABLEKS                       R9 R9 K18 ["Services"]
       71 GETTABLEKS                       R9 R9 K19 ["GuiService"]
       73 GETIMPORT                        R10 K6 [require]
       75 GETTABLEKS                       R11 R0 K20 ["Enums"]
       77 GETTABLEKS                       R11 R11 K21 ["DialogSize"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K6 [require]
       82 GETTABLEKS                       R12 R0 K9 ["Utility"]
       84 GETTABLEKS                       R12 R12 K22 ["withDefaults"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R12 K6 [require]
       89 GETIMPORT                        R13 K1 [script]
       91 GETTABLEKS                       R13 R13 K4 ["Parent"]
       93 GETTABLEKS                       R13 R13 K23 ["Types"]
       95 CALL                             R12 1 1
       96 DUPTABLE                         R13 K26 [{["testId"] = "--foundation-sheet"}]
       97 DUPCLOSURE                       R14 K27 [PROTO_8]
       98 CAPTURE                          VAL R11
       99 CAPTURE                          VAL R13
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R8
      102 CAPTURE                          VAL R9
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R5
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R7
      108 GETTABLEKS                       R15 R2 K28 ["memo"]
      110 GETTABLEKS                       R16 R2 K29 ["forwardRef"]
      112 MOVE                             R17 R14
      113 CALL                             R16 1 -1
      114 CALL                             R15 -1 -1
      115 RETURN                           R15 -1
