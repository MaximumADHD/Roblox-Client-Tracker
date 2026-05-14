PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["GetChildren"]
        2 CALL                             R1 1 1
        3 LOADN                            R2 0
        4 MOVE                             R3 R1
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 LOADK                            R10 K1 ["GuiObject"]
        9 NAMECALL                         R8 R7 K2 ["IsA"]
       11 CALL                             R8 2 1
       12 JUMPIFNOT                        R8 ; [+6]
       13 GETTABLEKS                       R9 R7 K4 ["AbsoluteSize"]
       15 GETTABLEKS                       R9 R9 K5 ["Y"]
       17 ADDK                             R8 R9 K3 [10]
       18 ADD                              R2 R2 R8
       19 FORGLOOP                         R3 2 ; [-12]
       21 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["OnScrollToBottom"]
        3 FASTCALL1                        ASSERT R2 ; [+2]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K3 ["current"]
       10 JUMPIFNOT                        R1 ; [+22]
       11 GETUPVAL                         R3 2
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R6 R1 K4 ["CanvasPosition"]
       15 GETTABLEKS                       R6 R6 K5 ["Y"]
       17 ADD                              R4 R5 R6
       18 SUB                              R2 R3 R4
       19 LOADN                            R3 100
       20 JUMPIFNOTLE                      R2 R3 ; [+12]
       22 GETUPVAL                         R2 4
       23 JUMPIFNOT                        R2 ; [+1]
       24 JUMPIFNOT                        R0 ; [+11]
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R2 R2 K0 ["OnScrollToBottom"]
       28 CALL                             R2 0 0
       29 GETUPVAL                         R2 5
       30 LOADB                            R3 1
       31 CALL                             R2 1 0
       32 RETURN                           R0 0
       33 GETUPVAL                         R2 5
       34 LOADB                            R3 0
       35 CALL                             R2 1 0
       36 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["AbsoluteWindowSize"]
        4 GETTABLEKS                       R1 R1 K1 ["Y"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 JUMPIFNOT                        R0 ; [+4]
        8 GETUPVAL                         R0 1
        9 NAMECALL                         R0 R0 K0 ["Disconnect"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 JUMPIFNOT                        R0 ; [+28]
        6 LOADK                            R5 K1 ["AbsoluteWindowSize"]
        7 NAMECALL                         R3 R0 K2 ["GetPropertyChangedSignal"]
        9 CALL                             R3 2 1
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R0
       13 NAMECALL                         R3 R3 K3 ["Connect"]
       15 CALL                             R3 2 1
       16 MOVE                             R1 R3
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R3 R3 K4 ["OnScrollToBottom"]
       20 JUMPIFNOT                        R3 ; [+13]
       21 LOADK                            R5 K5 ["CanvasPosition"]
       22 NAMECALL                         R3 R0 K2 ["GetPropertyChangedSignal"]
       24 CALL                             R3 2 1
       25 NEWCLOSURE                       R5 P1
       26 CAPTURE                          UPVAL U3
       27 NAMECALL                         R3 R3 K3 ["Connect"]
       29 CALL                             R3 2 1
       30 MOVE                             R2 R3
       31 GETUPVAL                         R3 3
       32 LOADB                            R4 1
       33 CALL                             R3 1 0
       34 NEWCLOSURE                       R3 P2
       35 CAPTURE                          REF R1
       36 CAPTURE                          REF R2
       37 CLOSEUPVALS                      R1
       38 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETTABLEKS                       R2 R2 K0 ["current"]
        5 CALL                             R1 1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 GETIMPORT                        R0 K3 [table.clear]
       11 GETUPVAL                         R1 0
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 1
       14 GETTABLEKS                       R0 R0 K4 ["current"]
       16 JUMPIFNOT                        R0 ; [+34]
       17 GETUPVAL                         R0 2
       18 GETUPVAL                         R1 3
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K4 ["current"]
       22 CALL                             R1 1 1
       23 CALL                             R0 1 0
       24 GETUPVAL                         R0 4
       25 LOADNIL                          R1
       26 LOADNIL                          R2
       27 FORGPREP                         R0
       28 LOADK                            R7 K5 ["GuiObject"]
       29 NAMECALL                         R5 R4 K6 ["IsA"]
       31 CALL                             R5 2 1
       32 JUMPIFNOT                        R5 ; [+16]
       33 GETUPVAL                         R6 0
       34 LOADK                            R9 K7 ["AbsoluteSize"]
       35 NAMECALL                         R7 R4 K8 ["GetPropertyChangedSignal"]
       37 CALL                             R7 2 1
       38 NEWCLOSURE                       R9 P0
       39 CAPTURE                          UPVAL U2
       40 CAPTURE                          UPVAL U3
       41 CAPTURE                          UPVAL U1
       42 NAMECALL                         R7 R7 K9 ["Connect"]
       44 CALL                             R7 2 -1
       45 FASTCALL                         TABLE_INSERT ; [+2]
       46 GETIMPORT                        R5 K11 [table.insert]
       48 CALL                             R5 -1 0
       49 FORGLOOP                         R0 2 ; [-22]
       51 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["useState"]
        8 LOADN                            R3 0
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K1 ["useState"]
       13 LOADN                            R5 0
       14 CALL                             R4 1 2
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K1 ["useState"]
       18 LOADB                            R7 0
       19 CALL                             R6 1 2
       20 GETTABLEKS                       R8 R1 K2 ["current"]
       22 JUMPIFNOT                        R8 ; [+10]
       23 GETTABLEKS                       R9 R1 K2 ["current"]
       25 GETTABLEKS                       R9 R9 K3 ["AbsoluteSize"]
       27 GETTABLEKS                       R9 R9 K4 ["Y"]
       29 JUMPIFLT                         R9 R2 ; [+2]
       31 LOADB                            R8 0 +1
       32 LOADB                            R8 1
       33 GETUPVAL                         R9 0
       34 GETTABLEKS                       R9 R9 K5 ["useCallback"]
       36 NEWCLOSURE                       R10 P0
       37 CAPTURE                          VAL R0
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R7
       43 NEWTABLE                         R11 0 5
       45 GETTABLEKS                       R12 R1 K2 ["current"]
       47 GETTABLEKS                       R13 R0 K6 ["OnScrollToBottom"]
       49 MOVE                             R14 R6
       50 MOVE                             R15 R4
       51 MOVE                             R16 R2
       52 SETLIST                          R11 R12 5 [1]
       54 CALL                             R9 2 1
       55 GETUPVAL                         R10 0
       56 GETTABLEKS                       R10 R10 K7 ["useEffect"]
       58 NEWCLOSURE                       R11 P1
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R0
       62 CAPTURE                          VAL R9
       63 NEWTABLE                         R12 0 3
       65 GETTABLEKS                       R13 R1 K2 ["current"]
       67 GETTABLEKS                       R14 R0 K6 ["OnScrollToBottom"]
       69 MOVE                             R15 R9
       70 SETLIST                          R12 R13 3 [1]
       72 CALL                             R10 2 0
       73 NEWTABLE                         R10 0 0
       75 GETTABLEKS                       R11 R1 K2 ["current"]
       77 JUMPIFNOT                        R11 ; [+6]
       78 GETTABLEKS                       R11 R1 K2 ["current"]
       80 NAMECALL                         R11 R11 K8 ["GetChildren"]
       82 CALL                             R11 1 1
       83 MOVE                             R10 R11
       84 NEWTABLE                         R11 0 0
       86 GETUPVAL                         R12 0
       87 GETTABLEKS                       R12 R12 K7 ["useEffect"]
       89 NEWCLOSURE                       R13 P2
       90 CAPTURE                          VAL R11
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R3
       93 CAPTURE                          UPVAL U1
       94 CAPTURE                          REF R10
       95 NEWTABLE                         R14 0 2
       97 GETTABLEKS                       R15 R1 K2 ["current"]
       99 MOVE                             R16 R10
      100 SETLIST                          R14 R15 2 [1]
      102 CALL                             R12 2 0
      103 GETTABLEKS                       R13 R0 K9 ["MaxY"]
      105 JUMPIFNOT                        R13 ; [+15]
      106 GETIMPORT                        R12 K12 [UDim2.new]
      108 LOADN                            R13 1
      109 LOADN                            R14 0
      110 LOADN                            R15 0
      111 GETTABLEKS                       R18 R0 K9 ["MaxY"]
      113 FASTCALL2                        MATH_MIN R2 R18 ; [+4]
      115 MOVE                             R17 R2
      116 GETIMPORT                        R16 K15 [math.min]
      118 CALL                             R16 2 1
      119 CALL                             R12 4 1
      120 JUMP                             ; [+5]
      121 GETIMPORT                        R12 K17 [UDim2.fromScale]
      123 LOADN                            R13 1
      124 LOADN                            R14 1
      125 CALL                             R12 2 1
      126 GETUPVAL                         R13 0
      127 GETTABLEKS                       R13 R13 K18 ["createElement"]
      129 LOADK                            R14 K19 ["ScrollingFrame"]
      130 NEWTABLE                         R15 8 0
      132 GETTABLEKS                       R16 R0 K20 ["LayoutOrder"]
      134 SETTABLEKS                       R16 R15 K20 ["LayoutOrder"]
      136 SETTABLEKS                       R12 R15 K21 ["Size"]
      138 GETIMPORT                        R16 K12 [UDim2.new]
      140 LOADN                            R17 1
      141 LOADN                            R18 0
      142 LOADN                            R19 0
      143 MOVE                             R20 R2
      144 CALL                             R16 4 1
      145 SETTABLEKS                       R16 R15 K22 ["CanvasSize"]
      147 SETTABLEKS                       R1 R15 K23 ["ref"]
      149 GETUPVAL                         R16 0
      150 GETTABLEKS                       R16 R16 K24 ["Tag"]
      152 GETUPVAL                         R17 2
      153 LOADK                            R18 K25 ["Component-SizedScrollingFrame X-Center X-ColumnM"]
      154 GETUPVAL                         R20 0
      155 GETTABLEKS                       R20 R20 K24 ["Tag"]
      157 GETTABLE                         R19 R0 R20
      158 JUMPIFNOT                        R8 ; [+2]
      159 LOADK                            R20 K26 ["PadScrollbar"]
      160 JUMP                             ; [+1]
      161 LOADNIL                          R20
      162 CALL                             R17 3 1
      163 SETTABLE                         R17 R15 R16
      164 GETTABLEKS                       R16 R0 K27 ["children"]
      166 CALL                             R13 3 -1
      167 CLOSEUPVALS                      R10
      168 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Styling"]
       23 GETTABLEKS                       R3 R3 K10 ["joinTags"]
       25 DUPCLOSURE                       R4 K11 [PROTO_0]
       26 DUPCLOSURE                       R5 K12 [PROTO_8]
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R4
       29 CAPTURE                          VAL R3
       30 RETURN                           R5 1
