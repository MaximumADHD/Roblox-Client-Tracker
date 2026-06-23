PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLEKS                       R8 R1 K0 ["Max"]
        8 GETTABLEKS                       R8 R8 K1 ["X"]
       10 GETTABLEKS                       R9 R7 K2 ["Min"]
       12 GETTABLEKS                       R9 R9 K1 ["X"]
       14 JUMPIFLE                         R8 R9 ; [+31]
       16 GETTABLEKS                       R8 R1 K2 ["Min"]
       18 GETTABLEKS                       R8 R8 K1 ["X"]
       20 GETTABLEKS                       R9 R7 K0 ["Max"]
       22 GETTABLEKS                       R9 R9 K1 ["X"]
       24 JUMPIFLE                         R9 R8 ; [+21]
       26 GETTABLEKS                       R8 R1 K0 ["Max"]
       28 GETTABLEKS                       R8 R8 K3 ["Y"]
       30 GETTABLEKS                       R9 R7 K2 ["Min"]
       32 GETTABLEKS                       R9 R9 K3 ["Y"]
       34 JUMPIFLE                         R8 R9 ; [+11]
       36 GETTABLEKS                       R8 R1 K2 ["Min"]
       38 GETTABLEKS                       R8 R8 K3 ["Y"]
       40 GETTABLEKS                       R9 R7 K0 ["Max"]
       42 GETTABLEKS                       R9 R9 K3 ["Y"]
       44 JUMPIFNOTLE                      R9 R8 ; [+9]
       46 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       48 MOVE                             R9 R2
       49 MOVE                             R10 R7
       50 GETIMPORT                        R8 K6 [table.insert]
       52 CALL                             R8 2 0
       53 JUMP                             ; [+154]
       54 GETTABLEKS                       R9 R7 K2 ["Min"]
       56 GETTABLEKS                       R9 R9 K1 ["X"]
       58 GETTABLEKS                       R10 R1 K2 ["Min"]
       60 GETTABLEKS                       R10 R10 K1 ["X"]
       62 FASTCALL2                        MATH_MAX R9 R10 ; [+3]
       64 GETIMPORT                        R8 K9 [math.max]
       66 CALL                             R8 2 1
       67 GETTABLEKS                       R10 R7 K0 ["Max"]
       69 GETTABLEKS                       R10 R10 K1 ["X"]
       71 GETTABLEKS                       R11 R1 K0 ["Max"]
       73 GETTABLEKS                       R11 R11 K1 ["X"]
       75 FASTCALL2                        MATH_MIN R10 R11 ; [+3]
       77 GETIMPORT                        R9 K11 [math.min]
       79 CALL                             R9 2 1
       80 GETTABLEKS                       R11 R7 K2 ["Min"]
       82 GETTABLEKS                       R11 R11 K3 ["Y"]
       84 GETTABLEKS                       R12 R1 K2 ["Min"]
       86 GETTABLEKS                       R12 R12 K3 ["Y"]
       88 FASTCALL2                        MATH_MAX R11 R12 ; [+3]
       90 GETIMPORT                        R10 K9 [math.max]
       92 CALL                             R10 2 1
       93 GETTABLEKS                       R12 R7 K0 ["Max"]
       95 GETTABLEKS                       R12 R12 K3 ["Y"]
       97 GETTABLEKS                       R13 R1 K0 ["Max"]
       99 GETTABLEKS                       R13 R13 K3 ["Y"]
      101 FASTCALL2                        MATH_MIN R12 R13 ; [+3]
      103 GETIMPORT                        R11 K11 [math.min]
      105 CALL                             R11 2 1
      106 GETTABLEKS                       R12 R7 K2 ["Min"]
      108 GETTABLEKS                       R12 R12 K3 ["Y"]
      110 JUMPIFNOTLT                      R12 R10 ; [+19]
      112 MOVE                             R13 R2
      113 GETIMPORT                        R14 K14 [Rect.new]
      115 GETTABLEKS                       R15 R7 K2 ["Min"]
      117 GETIMPORT                        R16 K16 [Vector2.new]
      119 GETTABLEKS                       R17 R7 K0 ["Max"]
      121 GETTABLEKS                       R17 R17 K1 ["X"]
      123 MOVE                             R18 R10
      124 CALL                             R16 2 -1
      125 CALL                             R14 -1 -1
      126 FASTCALL                         TABLE_INSERT ; [+2]
      127 GETIMPORT                        R12 K6 [table.insert]
      129 CALL                             R12 -1 0
      130 GETTABLEKS                       R12 R7 K0 ["Max"]
      132 GETTABLEKS                       R12 R12 K3 ["Y"]
      134 JUMPIFNOTLT                      R11 R12 ; [+19]
      136 MOVE                             R13 R2
      137 GETIMPORT                        R14 K14 [Rect.new]
      139 GETIMPORT                        R15 K16 [Vector2.new]
      141 GETTABLEKS                       R16 R7 K2 ["Min"]
      143 GETTABLEKS                       R16 R16 K1 ["X"]
      145 MOVE                             R17 R11
      146 CALL                             R15 2 1
      147 GETTABLEKS                       R16 R7 K0 ["Max"]
      149 CALL                             R14 2 -1
      150 FASTCALL                         TABLE_INSERT ; [+2]
      151 GETIMPORT                        R12 K6 [table.insert]
      153 CALL                             R12 -1 0
      154 GETTABLEKS                       R12 R7 K2 ["Min"]
      156 GETTABLEKS                       R12 R12 K1 ["X"]
      158 JUMPIFNOTLT                      R12 R8 ; [+22]
      160 MOVE                             R13 R2
      161 GETIMPORT                        R14 K14 [Rect.new]
      163 GETIMPORT                        R15 K16 [Vector2.new]
      165 GETTABLEKS                       R16 R7 K2 ["Min"]
      167 GETTABLEKS                       R16 R16 K1 ["X"]
      169 MOVE                             R17 R10
      170 CALL                             R15 2 1
      171 GETIMPORT                        R16 K16 [Vector2.new]
      173 MOVE                             R17 R8
      174 MOVE                             R18 R11
      175 CALL                             R16 2 -1
      176 CALL                             R14 -1 -1
      177 FASTCALL                         TABLE_INSERT ; [+2]
      178 GETIMPORT                        R12 K6 [table.insert]
      180 CALL                             R12 -1 0
      181 GETTABLEKS                       R12 R7 K0 ["Max"]
      183 GETTABLEKS                       R12 R12 K1 ["X"]
      185 JUMPIFNOTLT                      R9 R12 ; [+22]
      187 MOVE                             R13 R2
      188 GETIMPORT                        R14 K14 [Rect.new]
      190 GETIMPORT                        R15 K16 [Vector2.new]
      192 MOVE                             R16 R9
      193 MOVE                             R17 R10
      194 CALL                             R15 2 1
      195 GETIMPORT                        R16 K16 [Vector2.new]
      197 GETTABLEKS                       R17 R7 K0 ["Max"]
      199 GETTABLEKS                       R17 R17 K1 ["X"]
      201 MOVE                             R18 R11
      202 CALL                             R16 2 -1
      203 CALL                             R14 -1 -1
      204 FASTCALL                         TABLE_INSERT ; [+2]
      205 GETIMPORT                        R12 K6 [table.insert]
      207 CALL                             R12 -1 0
      208 FORGLOOP                         R3 2 ; [-203]
      210 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["AbsolutePosition"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["AbsoluteSize"]
        6 NEWTABLE                         R2 0 1
        8 GETIMPORT                        R3 K4 [Rect.new]
       10 GETIMPORT                        R4 K7 [Vector2.zero]
       12 MOVE                             R5 R1
       13 CALL                             R3 2 -1
       14 SETLIST                          R2 R3 -1 [1]
       16 GETUPVAL                         R3 1
       17 LOADNIL                          R4
       18 LOADNIL                          R5
       19 FORGPREP                         R3
       20 GETTABLEKS                       R8 R6 K8 ["Visible"]
       22 JUMPIFNOT                        R8 ; [+27]
       23 GETTABLEKS                       R8 R6 K9 ["Active"]
       25 JUMPIFNOT                        R8 ; [+24]
       26 GETTABLEKS                       R8 R6 K1 ["AbsoluteSize"]
       28 GETTABLEKS                       R9 R8 K10 ["X"]
       30 LOADN                            R10 0
       31 JUMPIFLE                         R9 R10 ; [+18]
       33 GETTABLEKS                       R9 R8 K11 ["Y"]
       35 LOADN                            R10 0
       36 JUMPIFLE                         R9 R10 ; [+13]
       38 GETTABLEKS                       R10 R6 K0 ["AbsolutePosition"]
       40 SUB                              R9 R10 R0
       41 GETUPVAL                         R10 2
       42 MOVE                             R11 R2
       43 GETIMPORT                        R12 K4 [Rect.new]
       45 MOVE                             R13 R9
       46 ADD                              R14 R9 R8
       47 CALL                             R12 2 -1
       48 CALL                             R10 -1 1
       49 MOVE                             R2 R10
       50 FORGLOOP                         R3 1 ; [-31]
       52 GETUPVAL                         R3 3
       53 MOVE                             R4 R2
       54 CALL                             R3 1 0
       55 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+1]
        5 RETURN                           R0 0
        6 GETIMPORT                        R0 K2 [task.defer]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U2
       11 CALL                             R0 1 1
       12 SETUPVAL                         R0 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFEQKNIL                     R1 ; [+2]
        4 RETURN                           R0 0
        5 NEWTABLE                         R1 0 4
        7 LOADK                            R4 K0 ["AbsolutePosition"]
        8 NAMECALL                         R2 R0 K1 ["GetPropertyChangedSignal"]
       10 CALL                             R2 2 1
       11 GETUPVAL                         R4 1
       12 NAMECALL                         R2 R2 K2 ["Connect"]
       14 CALL                             R2 2 1
       15 LOADK                            R5 K3 ["AbsoluteSize"]
       16 NAMECALL                         R3 R0 K1 ["GetPropertyChangedSignal"]
       18 CALL                             R3 2 1
       19 GETUPVAL                         R5 1
       20 NAMECALL                         R3 R3 K2 ["Connect"]
       22 CALL                             R3 2 1
       23 LOADK                            R6 K4 ["Visible"]
       24 NAMECALL                         R4 R0 K1 ["GetPropertyChangedSignal"]
       26 CALL                             R4 2 1
       27 GETUPVAL                         R6 1
       28 NAMECALL                         R4 R4 K2 ["Connect"]
       30 CALL                             R4 2 1
       31 LOADK                            R7 K5 ["Active"]
       32 NAMECALL                         R5 R0 K1 ["GetPropertyChangedSignal"]
       34 CALL                             R5 2 1
       35 GETUPVAL                         R7 1
       36 NAMECALL                         R5 R5 K2 ["Connect"]
       38 CALL                             R5 2 -1
       39 SETLIST                          R1 R2 -1 [1]
       41 GETUPVAL                         R2 0
       42 SETTABLE                         R1 R2 R0
       43 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOTEQKNIL                  R1 ; [+2]
        4 RETURN                           R0 0
        5 MOVE                             R2 R1
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 NAMECALL                         R7 R6 K0 ["Disconnect"]
       11 CALL                             R7 1 0
       12 FORGLOOP                         R2 2 ; [-4]
       14 GETUPVAL                         R2 0
       15 LOADNIL                          R3
       16 SETTABLE                         R3 R2 R0
       17 RETURN                           R0 0

PROTO_6:
        0 LOADK                            R3 K0 ["GuiButton"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+16]
        5 GETUPVAL                         R1 0
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 1
        9 JUMPIFNOTEQKNIL                  R1 ; [+11]
       11 GETUPVAL                         R1 2
       12 JUMPIFNOT                        R1 ; [+1]
       13 RETURN                           R0 0
       14 GETIMPORT                        R1 K4 [task.defer]
       16 NEWCLOSURE                       R2 P0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U3
       19 CALL                             R1 1 1
       20 SETUPVAL                         R1 1
       21 RETURN                           R0 0

PROTO_7:
        0 LOADK                            R3 K0 ["GuiButton"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+30]
        5 GETUPVAL                         R2 0
        6 GETTABLE                         R1 R2 R0
        7 JUMPIFNOTEQKNIL                  R1 ; [+2]
        9 JUMP                             ; [+12]
       10 MOVE                             R2 R1
       11 LOADNIL                          R3
       12 LOADNIL                          R4
       13 FORGPREP                         R2
       14 NAMECALL                         R7 R6 K2 ["Disconnect"]
       16 CALL                             R7 1 0
       17 FORGLOOP                         R2 2 ; [-4]
       19 GETUPVAL                         R2 0
       20 LOADNIL                          R3
       21 SETTABLE                         R3 R2 R0
       22 GETUPVAL                         R1 1
       23 JUMPIFNOTEQKNIL                  R1 ; [+11]
       25 GETUPVAL                         R1 2
       26 JUMPIFNOT                        R1 ; [+1]
       27 RETURN                           R0 0
       28 GETIMPORT                        R1 K5 [task.defer]
       30 NEWCLOSURE                       R2 P0
       31 CAPTURE                          UPVAL U1
       32 CAPTURE                          UPVAL U3
       33 CALL                             R1 1 1
       34 SETUPVAL                         R1 1
       35 RETURN                           R0 0

PROTO_8:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETIMPORT                        R0 K2 [task.cancel]
        6 GETUPVAL                         R1 1
        7 CALL                             R0 1 0
        8 LOADNIL                          R0
        9 SETUPVAL                         R0 1
       10 GETUPVAL                         R0 2
       11 LOADNIL                          R1
       12 LOADNIL                          R2
       13 FORGPREP                         R0
       14 NAMECALL                         R5 R4 K3 ["Disconnect"]
       16 CALL                             R5 1 0
       17 FORGLOOP                         R0 2 ; [-4]
       19 GETUPVAL                         R0 3
       20 LOADNIL                          R1
       21 LOADNIL                          R2
       22 FORGPREP                         R0
       23 GETUPVAL                         R6 3
       24 GETTABLE                         R5 R6 R3
       25 JUMPIFNOTEQKNIL                  R5 ; [+2]
       27 JUMP                             ; [+12]
       28 MOVE                             R6 R5
       29 LOADNIL                          R7
       30 LOADNIL                          R8
       31 FORGPREP                         R6
       32 NAMECALL                         R11 R10 K3 ["Disconnect"]
       34 CALL                             R11 1 0
       35 FORGLOOP                         R6 2 ; [-4]
       37 GETUPVAL                         R6 3
       38 LOADNIL                          R7
       39 SETTABLE                         R7 R6 R3
       40 FORGLOOP                         R0 1 ; [-18]
       42 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 NEWTABLE                         R1 0 0
        8 NEWTABLE                         R2 0 0
       10 LOADNIL                          R3
       11 LOADB                            R4 0
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R2
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U2
       17 NEWCLOSURE                       R6 P1
       18 CAPTURE                          REF R3
       19 CAPTURE                          REF R4
       20 CAPTURE                          VAL R5
       21 NEWCLOSURE                       R7 P2
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R6
       24 NEWCLOSURE                       R8 P3
       25 CAPTURE                          VAL R2
       26 MOVE                             R10 R1
       27 GETTABLEKS                       R11 R0 K1 ["DescendantAdded"]
       29 NEWCLOSURE                       R13 P4
       30 CAPTURE                          VAL R7
       31 CAPTURE                          REF R3
       32 CAPTURE                          REF R4
       33 CAPTURE                          VAL R5
       34 NAMECALL                         R11 R11 K2 ["Connect"]
       36 CALL                             R11 2 -1
       37 FASTCALL                         TABLE_INSERT ; [+2]
       38 GETIMPORT                        R9 K5 [table.insert]
       40 CALL                             R9 -1 0
       41 MOVE                             R10 R1
       42 GETTABLEKS                       R11 R0 K6 ["DescendantRemoving"]
       44 NEWCLOSURE                       R13 P5
       45 CAPTURE                          VAL R2
       46 CAPTURE                          REF R3
       47 CAPTURE                          REF R4
       48 CAPTURE                          VAL R5
       49 NAMECALL                         R11 R11 K2 ["Connect"]
       51 CALL                             R11 2 -1
       52 FASTCALL                         TABLE_INSERT ; [+2]
       53 GETIMPORT                        R9 K5 [table.insert]
       55 CALL                             R9 -1 0
       56 MOVE                             R10 R1
       57 LOADK                            R13 K7 ["AbsolutePosition"]
       58 NAMECALL                         R11 R0 K8 ["GetPropertyChangedSignal"]
       60 CALL                             R11 2 1
       61 MOVE                             R13 R6
       62 NAMECALL                         R11 R11 K2 ["Connect"]
       64 CALL                             R11 2 -1
       65 FASTCALL                         TABLE_INSERT ; [+2]
       66 GETIMPORT                        R9 K5 [table.insert]
       68 CALL                             R9 -1 0
       69 MOVE                             R10 R1
       70 LOADK                            R13 K9 ["AbsoluteSize"]
       71 NAMECALL                         R11 R0 K8 ["GetPropertyChangedSignal"]
       73 CALL                             R11 2 1
       74 MOVE                             R13 R6
       75 NAMECALL                         R11 R11 K2 ["Connect"]
       77 CALL                             R11 2 -1
       78 FASTCALL                         TABLE_INSERT ; [+2]
       79 GETIMPORT                        R9 K5 [table.insert]
       81 CALL                             R9 -1 0
       82 NAMECALL                         R9 R0 K10 ["GetDescendants"]
       84 CALL                             R9 1 3
       85 FORGPREP                         R9
       86 LOADK                            R16 K11 ["GuiButton"]
       87 NAMECALL                         R14 R13 K12 ["IsA"]
       89 CALL                             R14 2 1
       90 JUMPIFNOT                        R14 ; [+3]
       91 MOVE                             R14 R7
       92 MOVE                             R15 R13
       93 CALL                             R14 1 0
       94 FORGLOOP                         R9 2 ; [-9]
       96 MOVE                             R9 R5
       97 CALL                             R9 0 0
       98 NEWCLOSURE                       R9 P6
       99 CAPTURE                          REF R4
      100 CAPTURE                          REF R3
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R2
      103 CLOSEUPVALS                      R3
      104 RETURN                           R9 1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["useUncoveredRects called without StudioCustomWindowChromeFeature engine feature"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 GETUPVAL                         R2 1
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R1
       13 NEWTABLE                         R4 0 2
       15 MOVE                             R5 R0
       16 MOVE                             R6 R1
       17 SETLIST                          R4 R5 2 [1]
       19 CALL                             R2 2 0
       20 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useEffect"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Src"]
       20 GETTABLEKS                       R4 R4 K10 ["SharedFlags"]
       22 GETTABLEKS                       R4 R4 K11 ["getFeatureStudioCustomWindowChrome"]
       24 CALL                             R3 1 1
       25 DUPCLOSURE                       R4 K12 [PROTO_0]
       26 DUPCLOSURE                       R5 K13 [PROTO_10]
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R4
       30 RETURN                           R5 1
