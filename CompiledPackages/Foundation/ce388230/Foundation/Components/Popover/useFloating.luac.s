PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 NAMECALL                         R5 R4 K1 ["Disconnect"]
        8 CALL                             R5 1 0
        9 FORGLOOP                         R0 2 ; [-4]
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+43]
        3 GETUPVAL                         R0 1
        4 LOADNIL                          R1
        5 LOADNIL                          R2
        6 FORGPREP                         R0
        7 GETUPVAL                         R7 0
        8 FASTCALL1                        TYPEOF R7 ; [+2]
        9 GETIMPORT                        R6 K1 [typeof]
       11 CALL                             R6 1 1
       12 JUMPIFNOTEQKS                    R6 K2 ["Instance"] ; [+7]
       14 GETUPVAL                         R5 0
       15 MOVE                             R7 R4
       16 NAMECALL                         R5 R5 K3 ["GetPropertyChangedSignal"]
       18 CALL                             R5 2 1
       19 JUMP                             ; [+5]
       20 GETUPVAL                         R5 0
       21 MOVE                             R7 R4
       22 NAMECALL                         R5 R5 K3 ["GetPropertyChangedSignal"]
       24 CALL                             R5 2 1
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R6 R6 K4 ["current"]
       28 GETUPVAL                         R11 3
       29 FASTCALL1                        TYPE R11 ; [+2]
       30 GETIMPORT                        R10 K6 [type]
       32 CALL                             R10 1 1
       33 JUMPIFNOTEQKS                    R10 K7 ["table"] ; [+4]
       35 NEWCLOSURE                       R9 P0
       36 CAPTURE                          UPVAL U3
       37 JUMP                             ; [+1]
       38 GETUPVAL                         R9 3
       39 NAMECALL                         R7 R5 K8 ["Connect"]
       41 CALL                             R7 2 1
       42 SETTABLE                         R7 R6 R4
       43 FORGLOOP                         R0 2 ; [-37]
       45 NEWCLOSURE                       R0 P1
       46 CAPTURE                          UPVAL U2
       47 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useRef"]
        3 NEWTABLE                         R4 0 0
        5 CALL                             R3 1 1
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R5 R5 K1 ["FoundationPopoverFixArrowPositioning"]
        9 JUMPIFNOT                        R5 ; [+4]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K2 ["useLayoutEffect"]
       13 JUMP                             ; [+3]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K3 ["useEffect"]
       17 MOVE                             R5 R4
       18 NEWCLOSURE                       R6 P0
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R3
       22 CAPTURE                          VAL R2
       23 NEWTABLE                         R7 0 2
       25 MOVE                             R8 R0
       26 MOVE                             R9 R2
       27 SETLIST                          R7 R8 2 [1]
       29 CALL                             R5 2 0
       30 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 2
        5 JUMPIFNOT                        R0 ; [+2]
        6 GETUPVAL                         R0 3
        7 JUMPIF                           R0 ; [+4]
        8 GETUPVAL                         R0 4
        9 LOADB                            R1 0
       10 CALL                             R0 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 1
       13 GETTABLEKS                       R0 R0 K0 ["AbsolutePosition"]
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K1 ["AbsoluteSize"]
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R2 R2 K1 ["AbsoluteSize"]
       21 GETUPVAL                         R3 3
       22 GETTABLEKS                       R3 R3 K1 ["AbsoluteSize"]
       24 GETUPVAL                         R4 3
       25 GETTABLEKS                       R4 R4 K0 ["AbsolutePosition"]
       27 GETIMPORT                        R5 K4 [Rect.new]
       29 MOVE                             R6 R0
       30 ADD                              R7 R0 R1
       31 CALL                             R5 2 1
       32 GETIMPORT                        R6 K4 [Rect.new]
       34 MOVE                             R7 R4
       35 ADD                              R8 R4 R3
       36 CALL                             R6 2 1
       37 GETUPVAL                         R7 5
       38 GETTABLEKS                       R7 R7 K5 ["FoundationPopoverOnScreenKeyboard"]
       40 JUMPIFNOT                        R7 ; [+17]
       41 GETUPVAL                         R7 6
       42 GETTABLEKS                       R7 R7 K6 ["OnScreenKeyboardVisible"]
       44 JUMPIFNOT                        R7 ; [+13]
       45 GETUPVAL                         R7 7
       46 GETTABLEKS                       R7 R7 K7 ["adjustForOnScreenKeyboard"]
       48 MOVE                             R8 R6
       49 GETUPVAL                         R9 6
       50 GETTABLEKS                       R9 R9 K8 ["OnScreenKeyboardPosition"]
       52 GETUPVAL                         R10 8
       53 NAMECALL                         R10 R10 K9 ["GetGuiInset"]
       55 CALL                             R10 1 -1
       56 CALL                             R7 -1 1
       57 MOVE                             R6 R7
       58 GETUPVAL                         R7 7
       59 GETTABLEKS                       R7 R7 K10 ["isOnScreen"]
       61 MOVE                             R8 R5
       62 MOVE                             R9 R6
       63 CALL                             R7 2 1
       64 JUMPIF                           R7 ; [+4]
       65 GETUPVAL                         R7 4
       66 LOADB                            R8 0
       67 CALL                             R7 1 0
       68 RETURN                           R0 0
       69 GETUPVAL                         R9 9
       70 FASTCALL1                        TYPE R9 ; [+2]
       71 GETIMPORT                        R8 K12 [type]
       73 CALL                             R8 1 1
       74 JUMPIFNOTEQKS                    R8 K13 ["table"] ; [+5]
       76 GETUPVAL                         R7 9
       77 GETTABLEKS                       R7 R7 K14 ["position"]
       79 JUMP                             ; [+1]
       80 GETUPVAL                         R7 9
       81 GETUPVAL                         R10 9
       82 FASTCALL1                        TYPE R10 ; [+2]
       83 GETIMPORT                        R9 K12 [type]
       85 CALL                             R9 1 1
       86 JUMPIFNOTEQKS                    R9 K13 ["table"] ; [+5]
       88 GETUPVAL                         R8 9
       89 GETTABLEKS                       R8 R8 K15 ["offset"]
       91 JUMP                             ; [+1]
       92 LOADN                            R8 0
       93 GETUPVAL                         R9 10
       94 LOADN                            R10 0
       95 GETUPVAL                         R12 10
       96 FASTCALL1                        TYPE R12 ; [+2]
       97 GETIMPORT                        R11 K12 [type]
       99 CALL                             R11 1 1
      100 JUMPIFNOTEQKS                    R11 K13 ["table"] ; [+7]
      102 GETUPVAL                         R11 10
      103 GETTABLEKS                       R9 R11 K14 ["position"]
      105 GETUPVAL                         R11 10
      106 GETTABLEKS                       R10 R11 K15 ["offset"]
      108 GETUPVAL                         R12 11
      109 ORK                              R11 R12 K16 [0]
      110 GETUPVAL                         R12 7
      111 GETTABLEKS                       R12 R12 K17 ["calculatePopoverBounds"]
      113 MOVE                             R13 R7
      114 MOVE                             R14 R8
      115 GETUPVAL                         R16 5
      116 GETTABLEKS                       R16 R16 K18 ["FoundationPopoverOverflow"]
      118 JUMPIFNOT                        R16 ; [+2]
      119 MOVE                             R15 R10
      120 JUMP                             ; [+1]
      121 LOADN                            R15 0
      122 MOVE                             R16 R11
      123 MOVE                             R17 R2
      124 CALL                             R12 5 1
      125 GETUPVAL                         R13 7
      126 GETTABLEKS                       R13 R13 K19 ["calculateSide"]
      128 MOVE                             R14 R7
      129 MOVE                             R15 R5
      130 MOVE                             R16 R6
      131 MOVE                             R17 R12
      132 CALL                             R13 4 1
      133 MOVE                             R7 R13
      134 GETUPVAL                         R13 5
      135 GETTABLEKS                       R13 R13 K18 ["FoundationPopoverOverflow"]
      137 JUMPIFNOT                        R13 ; [0]
      138 GETUPVAL                         R13 7
      139 GETTABLEKS                       R13 R13 K20 ["calculatePositions"]
      141 MOVE                             R14 R7
      142 MOVE                             R15 R8
      143 MOVE                             R16 R9
      144 MOVE                             R17 R10
      145 MOVE                             R18 R5
      146 MOVE                             R19 R6
      147 MOVE                             R20 R11
      148 MOVE                             R21 R2
      149 CALL                             R13 8 3
      150 GETUPVAL                         R16 12
      151 GETIMPORT                        R17 K23 [UDim2.fromOffset]
      153 GETTABLEKS                       R18 R2 K24 ["X"]
      155 GETTABLEKS                       R19 R2 K25 ["Y"]
      157 CALL                             R17 2 -1
      158 CALL                             R16 -1 0
      159 GETUPVAL                         R16 13
      160 MOVE                             R17 R3
      161 CALL                             R16 1 0
      162 GETUPVAL                         R16 14
      163 ADD                              R17 R14 R13
      164 CALL                             R16 1 0
      165 GETUPVAL                         R16 15
      166 MOVE                             R17 R13
      167 CALL                             R16 1 0
      168 GETUPVAL                         R16 16
      169 MOVE                             R17 R15
      170 CALL                             R16 1 0
      171 GETUPVAL                         R16 4
      172 LOADB                            R17 1
      173 CALL                             R16 1 0
      174 GETUPVAL                         R16 2
      175 GETTABLEKS                       R16 R16 K0 ["AbsolutePosition"]
      177 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R7 R7 K0 ["useBinding"]
        3 GETIMPORT                        R8 K3 [Vector2.new]
        5 CALL                             R8 0 -1
        6 CALL                             R7 -1 2
        7 GETUPVAL                         R9 0
        8 GETTABLEKS                       R9 R9 K0 ["useBinding"]
       10 LOADB                            R10 1
       11 CALL                             R9 1 2
       12 GETUPVAL                         R11 0
       13 GETTABLEKS                       R11 R11 K0 ["useBinding"]
       15 GETIMPORT                        R12 K5 [UDim2.new]
       17 CALL                             R12 0 -1
       18 CALL                             R11 -1 2
       19 GETUPVAL                         R13 0
       20 GETTABLEKS                       R13 R13 K0 ["useBinding"]
       22 GETIMPORT                        R14 K3 [Vector2.new]
       24 CALL                             R14 0 -1
       25 CALL                             R13 -1 2
       26 GETUPVAL                         R15 0
       27 GETTABLEKS                       R15 R15 K0 ["useBinding"]
       29 GETIMPORT                        R16 K3 [Vector2.new]
       31 CALL                             R16 0 -1
       32 CALL                             R15 -1 2
       33 GETUPVAL                         R17 0
       34 GETTABLEKS                       R17 R17 K0 ["useBinding"]
       36 GETIMPORT                        R18 K3 [Vector2.new]
       38 LOADN                            R19 0
       39 LOADN                            R20 0
       40 CALL                             R18 2 -1
       41 CALL                             R17 -1 2
       42 GETUPVAL                         R19 0
       43 GETTABLEKS                       R19 R19 K6 ["useRef"]
       45 DUPCLOSURE                       R20 K7 [PROTO_4]
       46 CALL                             R19 1 1
       47 GETUPVAL                         R20 0
       48 GETTABLEKS                       R20 R20 K8 ["useCallback"]
       50 NEWCLOSURE                       R21 P1
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R10
       56 CAPTURE                          UPVAL U1
       57 CAPTURE                          UPVAL U2
       58 CAPTURE                          UPVAL U3
       59 CAPTURE                          UPVAL U4
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R12
       64 CAPTURE                          VAL R14
       65 CAPTURE                          VAL R16
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R18
       68 NEWTABLE                         R22 0 7
       70 MOVE                             R23 R0
       71 MOVE                             R24 R1
       72 MOVE                             R25 R2
       73 MOVE                             R26 R3
       74 MOVE                             R27 R4
       75 MOVE                             R28 R5
       76 MOVE                             R29 R6
       77 SETLIST                          R22 R23 7 [1]
       79 CALL                             R20 2 1
       80 SETTABLEKS                       R20 R19 K9 ["current"]
       82 GETUPVAL                         R21 1
       83 GETTABLEKS                       R21 R21 K10 ["FoundationPopoverFixArrowPositioning"]
       85 JUMPIFNOT                        R21 ; [+54]
       86 GETUPVAL                         R21 5
       87 MOVE                             R22 R1
       88 NEWTABLE                         R23 0 2
       90 LOADK                            R24 K11 ["AbsolutePosition"]
       91 LOADK                            R25 K12 ["AbsoluteSize"]
       92 SETLIST                          R23 R24 2 [1]
       94 MOVE                             R24 R19
       95 CALL                             R21 3 0
       96 GETUPVAL                         R21 5
       97 MOVE                             R22 R2
       98 NEWTABLE                         R23 0 1
      100 LOADK                            R24 K12 ["AbsoluteSize"]
      101 SETLIST                          R23 R24 1 [1]
      103 MOVE                             R24 R19
      104 CALL                             R21 3 0
      105 GETUPVAL                         R21 5
      106 MOVE                             R22 R3
      107 NEWTABLE                         R23 0 1
      109 LOADK                            R24 K12 ["AbsoluteSize"]
      110 SETLIST                          R23 R24 1 [1]
      112 MOVE                             R24 R19
      113 CALL                             R21 3 0
      114 GETUPVAL                         R21 1
      115 GETTABLEKS                       R21 R21 K13 ["FoundationPopoverOnScreenKeyboard"]
      117 JUMPIFNOT                        R21 ; [+10]
      118 GETUPVAL                         R21 5
      119 GETUPVAL                         R22 2
      120 NEWTABLE                         R23 0 2
      122 LOADK                            R24 K14 ["OnScreenKeyboardVisible"]
      123 LOADK                            R25 K15 ["OnScreenKeyboardPosition"]
      124 SETLIST                          R23 R24 2 [1]
      126 MOVE                             R24 R19
      127 CALL                             R21 3 0
      128 GETUPVAL                         R21 0
      129 GETTABLEKS                       R21 R21 K16 ["useLayoutEffect"]
      131 NEWCLOSURE                       R22 P2
      132 CAPTURE                          VAL R20
      133 NEWTABLE                         R23 0 1
      135 MOVE                             R24 R20
      136 SETLIST                          R23 R24 1 [1]
      138 CALL                             R21 2 0
      139 JUMP                             ; [+53]
      140 GETUPVAL                         R21 0
      141 GETTABLEKS                       R21 R21 K16 ["useLayoutEffect"]
      143 NEWCLOSURE                       R22 P3
      144 CAPTURE                          VAL R20
      145 NEWTABLE                         R23 0 1
      147 MOVE                             R24 R20
      148 SETLIST                          R23 R24 1 [1]
      150 CALL                             R21 2 0
      151 GETUPVAL                         R21 5
      152 MOVE                             R22 R1
      153 NEWTABLE                         R23 0 2
      155 LOADK                            R24 K11 ["AbsolutePosition"]
      156 LOADK                            R25 K12 ["AbsoluteSize"]
      157 SETLIST                          R23 R24 2 [1]
      159 MOVE                             R24 R19
      160 CALL                             R21 3 0
      161 GETUPVAL                         R21 5
      162 MOVE                             R22 R2
      163 NEWTABLE                         R23 0 1
      165 LOADK                            R24 K12 ["AbsoluteSize"]
      166 SETLIST                          R23 R24 1 [1]
      168 MOVE                             R24 R19
      169 CALL                             R21 3 0
      170 GETUPVAL                         R21 5
      171 MOVE                             R22 R3
      172 NEWTABLE                         R23 0 1
      174 LOADK                            R24 K12 ["AbsoluteSize"]
      175 SETLIST                          R23 R24 1 [1]
      177 MOVE                             R24 R19
      178 CALL                             R21 3 0
      179 GETUPVAL                         R21 1
      180 GETTABLEKS                       R21 R21 K13 ["FoundationPopoverOnScreenKeyboard"]
      182 JUMPIFNOT                        R21 ; [+10]
      183 GETUPVAL                         R21 5
      184 GETUPVAL                         R22 2
      185 NEWTABLE                         R23 0 2
      187 LOADK                            R24 K14 ["OnScreenKeyboardVisible"]
      188 LOADK                            R25 K15 ["OnScreenKeyboardPosition"]
      189 SETLIST                          R23 R24 2 [1]
      191 MOVE                             R24 R19
      192 CALL                             R21 3 0
      193 MOVE                             R21 R7
      194 MOVE                             R22 R9
      195 MOVE                             R23 R11
      196 MOVE                             R24 R15
      197 MOVE                             R25 R13
      198 MOVE                             R26 R17
      199 RETURN                           R21 6

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Enums"]
       13 GETTABLEKS                       R3 R3 K8 ["PopoverAlign"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R0 K7 ["Enums"]
       20 GETTABLEKS                       R4 R4 K9 ["PopoverSide"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R1 K10 ["React"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETIMPORT                        R6 K1 [script]
       32 GETTABLEKS                       R6 R6 K4 ["Parent"]
       34 GETTABLEKS                       R6 R6 K11 ["positioning"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R0 K12 ["Utility"]
       41 GETTABLEKS                       R7 R7 K13 ["Wrappers"]
       43 CALL                             R6 1 1
       44 GETTABLEKS                       R6 R6 K14 ["Services"]
       46 GETTABLEKS                       R7 R6 K15 ["UserInputService"]
       48 GETTABLEKS                       R8 R6 K16 ["GuiService"]
       50 GETIMPORT                        R9 K6 [require]
       52 GETTABLEKS                       R10 R0 K12 ["Utility"]
       54 GETTABLEKS                       R10 R10 K17 ["Flags"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K6 [require]
       59 GETTABLEKS                       R11 R0 K18 ["Components"]
       61 GETTABLEKS                       R11 R11 K19 ["Types"]
       63 CALL                             R10 1 1
       64 DUPCLOSURE                       R11 K20 [PROTO_3]
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R9
       67 DUPCLOSURE                       R12 K21 [PROTO_8]
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R11
       74 RETURN                           R12 1
