PROTO_0:
        0 GETTABLEKS                       R5 R1 K0 ["X"]
        2 ADD                              R4 R0 R5
        3 GETTABLEKS                       R5 R2 K0 ["X"]
        5 JUMPIFLT                         R4 R5 ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 RETURN                           R3 1

PROTO_1:
        0 GETIMPORT                        R2 K2 [Vector2.new]
        2 LOADN                            R3 0
        3 LOADN                            R4 0
        4 CALL                             R2 2 1
        5 JUMPIFNOTEQ                      R0 R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnLoadRange"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["OnLoadRange"]
        7 LOADN                            R1 0
        8 LOADN                            R2 10
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["current"]
        6 JUMPIF                           R1 ; [+1]
        7 RETURN                           R0 0
        8 GETIMPORT                        R2 K3 [TweenInfo.new]
       10 LOADK                            R3 K4 [0.1]
       11 GETIMPORT                        R4 K8 [Enum.EasingStyle.Linear]
       13 GETIMPORT                        R5 K11 [Enum.EasingDirection.Out]
       15 CALL                             R2 3 1
       16 GETUPVAL                         R3 2
       17 MOVE                             R5 R1
       18 MOVE                             R6 R2
       19 DUPTABLE                         R7 K13 [{"CanvasPosition"}]
       20 GETIMPORT                        R8 K15 [Vector2.new]
       22 GETTABLEKS                       R10 R1 K12 ["CanvasPosition"]
       24 GETTABLEKS                       R10 R10 K16 ["X"]
       26 ADD                              R9 R10 R0
       27 LOADN                            R10 0
       28 CALL                             R8 2 1
       29 SETTABLEKS                       R8 R7 K12 ["CanvasPosition"]
       31 NAMECALL                         R3 R3 K17 ["Create"]
       33 CALL                             R3 4 1
       34 NAMECALL                         R4 R3 K18 ["Play"]
       36 CALL                             R4 1 0
       37 GETUPVAL                         R4 3
       38 LOADB                            R5 1
       39 CALL                             R4 1 0
       40 GETTABLEKS                       R4 R3 K19 ["Completed"]
       42 NEWCLOSURE                       R6 P0
       43 CAPTURE                          UPVAL U3
       44 NAMECALL                         R4 R4 K20 ["Connect"]
       46 CALL                             R4 2 0
       47 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R2 K1 ["X"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 -236
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 236
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 2
        3 GETUPVAL                         R3 0
        4 LOADN                            R4 0
        5 CALL                             R3 1 2
        6 GETUPVAL                         R5 1
        7 LOADNIL                          R6
        8 CALL                             R5 1 1
        9 GETUPVAL                         R6 0
       10 GETIMPORT                        R7 K2 [Vector2.new]
       12 LOADN                            R8 0
       13 LOADN                            R9 0
       14 CALL                             R7 2 -1
       15 CALL                             R6 -1 2
       16 GETUPVAL                         R8 2
       17 NEWCLOSURE                       R9 P0
       18 CAPTURE                          VAL R0
       19 NEWTABLE                         R10 0 0
       21 CALL                             R8 2 0
       22 NEWTABLE                         R8 0 0
       24 GETTABLEKS                       R9 R0 K3 ["Cells"]
       26 LOADNIL                          R10
       27 LOADNIL                          R11
       28 FORGPREP                         R9
       29 MOVE                             R15 R8
       30 GETUPVAL                         R16 3
       31 GETTABLEKS                       R16 R16 K4 ["createElement"]
       33 GETTABLEKS                       R17 R0 K5 ["CellComponent"]
       35 DUPTABLE                         R18 K9 [{"key", "Size", "Cell"}]
       36 SETTABLEKS                       R12 R18 K6 ["key"]
       38 GETTABLEKS                       R19 R0 K10 ["CellSize"]
       40 SETTABLEKS                       R19 R18 K7 ["Size"]
       42 SETTABLEKS                       R13 R18 K8 ["Cell"]
       44 CALL                             R16 2 -1
       45 FASTCALL                         TABLE_INSERT ; [+2]
       46 GETIMPORT                        R14 K13 [table.insert]
       48 CALL                             R14 -1 0
       49 FORGLOOP                         R9 2 ; [-21]
       51 NEWCLOSURE                       R9 P1
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R5
       54 CAPTURE                          UPVAL U4
       55 CAPTURE                          VAL R2
       56 GETUPVAL                         R10 3
       57 GETTABLEKS                       R10 R10 K4 ["createElement"]
       59 LOADK                            R11 K14 ["Frame"]
       60 NEWTABLE                         R12 8 0
       62 GETTABLEKS                       R13 R0 K7 ["Size"]
       64 SETTABLEKS                       R13 R12 K7 ["Size"]
       66 GETTABLEKS                       R13 R0 K15 ["Position"]
       68 SETTABLEKS                       R13 R12 K15 ["Position"]
       70 GETUPVAL                         R13 3
       71 GETTABLEKS                       R13 R13 K16 ["Change"]
       73 GETTABLEKS                       R13 R13 K17 ["AbsoluteSize"]
       75 NEWCLOSURE                       R14 P2
       76 CAPTURE                          VAL R4
       77 SETTABLE                         R14 R12 R13
       78 GETUPVAL                         R13 3
       79 GETTABLEKS                       R13 R13 K18 ["Tag"]
       81 LOADK                            R14 K19 ["X-Transparent"]
       82 SETTABLE                         R14 R12 R13
       83 GETTABLEKS                       R13 R0 K20 ["LayoutOrder"]
       85 SETTABLEKS                       R13 R12 K20 ["LayoutOrder"]
       87 NEWTABLE                         R13 0 3
       89 GETIMPORT                        R16 K2 [Vector2.new]
       91 LOADN                            R17 0
       92 LOADN                            R18 0
       93 CALL                             R16 2 1
       94 JUMPIFNOTEQ                      R6 R16 ; [+2]
       96 LOADB                            R15 0 +1
       97 LOADB                            R15 1
       98 JUMPIFNOT                        R15 ; [+34]
       99 GETUPVAL                         R14 3
      100 GETTABLEKS                       R14 R14 K4 ["createElement"]
      102 GETUPVAL                         R15 5
      103 DUPTABLE                         R16 K24 [{["Size"], ["Position"], ["IsArrowRight"] = False, ["OnClick"]}]
      104 GETIMPORT                        R17 K26 [UDim2.new]
      106 LOADN                            R18 0
      107 LOADN                            R19 100
      108 LOADN                            R20 0
      109 GETTABLEKS                       R21 R0 K10 ["CellSize"]
      111 GETTABLEKS                       R21 R21 K27 ["Height"]
      113 GETTABLEKS                       R21 R21 K28 ["Offset"]
      115 CALL                             R17 4 1
      116 SETTABLEKS                       R17 R16 K7 ["Size"]
      118 GETIMPORT                        R17 K26 [UDim2.new]
      120 LOADN                            R18 0
      121 LOADN                            R19 0
      122 LOADN                            R20 0
      123 LOADN                            R21 0
      124 CALL                             R17 4 1
      125 SETTABLEKS                       R17 R16 K15 ["Position"]
      127 NEWCLOSURE                       R17 P3
      128 CAPTURE                          VAL R9
      129 SETTABLEKS                       R17 R16 K23 ["OnClick"]
      131 CALL                             R14 2 1
      132 JUMP                             ; [+1]
      133 LOADNIL                          R14
      134 GETUPVAL                         R15 3
      135 GETTABLEKS                       R15 R15 K4 ["createElement"]
      137 GETUPVAL                         R16 6
      138 NEWTABLE                         R17 8 0
      140 LOADN                            R18 0
      141 SETTABLEKS                       R18 R17 K29 ["ScrollBarThickness"]
      143 GETIMPORT                        R18 K33 [Enum.FillDirection.Horizontal]
      145 SETTABLEKS                       R18 R17 K34 ["Layout"]
      147 GETIMPORT                        R18 K37 [Enum.ScrollingDirection.X]
      149 SETTABLEKS                       R18 R17 K35 ["ScrollingDirection"]
      151 SETTABLEKS                       R5 R17 K38 ["ForwardRef"]
      153 LOADB                            R18 1
      154 SETTABLEKS                       R18 R17 K39 ["ScrollingEnabled"]
      156 SETTABLEKS                       R7 R17 K40 ["OnScrollUpdate"]
      158 GETUPVAL                         R18 3
      159 GETTABLEKS                       R18 R18 K18 ["Tag"]
      161 LOADK                            R19 K41 ["X-Fill X-RowM X-Middle StartPage-PadScrollingCarouselLeft X-Transparent"]
      162 SETTABLE                         R19 R17 R18
      163 MOVE                             R18 R8
      164 CALL                             R15 3 1
      165 GETTABLEKS                       R17 R5 K42 ["current"]
      167 JUMPIFNOT                        R17 ; [+48]
      168 GETTABLEKS                       R18 R5 K42 ["current"]
      170 GETTABLEKS                       R18 R18 K43 ["AbsoluteCanvasSize"]
      172 GETTABLEKS                       R20 R6 K36 ["X"]
      174 ADD                              R19 R3 R20
      175 GETTABLEKS                       R20 R18 K36 ["X"]
      177 JUMPIFLT                         R19 R20 ; [+2]
      179 LOADB                            R17 0 +1
      180 LOADB                            R17 1
      181 JUMPIFNOT                        R17 ; [+34]
      182 GETUPVAL                         R16 3
      183 GETTABLEKS                       R16 R16 K4 ["createElement"]
      185 GETUPVAL                         R17 5
      186 DUPTABLE                         R18 K45 [{["Size"], ["Position"], ["OnClick"], ["IsArrowRight"] = True}]
      187 GETIMPORT                        R19 K26 [UDim2.new]
      189 LOADN                            R20 0
      190 LOADN                            R21 100
      191 LOADN                            R22 0
      192 GETTABLEKS                       R23 R0 K10 ["CellSize"]
      194 GETTABLEKS                       R23 R23 K27 ["Height"]
      196 GETTABLEKS                       R23 R23 K28 ["Offset"]
      198 CALL                             R19 4 1
      199 SETTABLEKS                       R19 R18 K7 ["Size"]
      201 GETIMPORT                        R19 K26 [UDim2.new]
      203 LOADN                            R20 1
      204 LOADN                            R21 -100
      205 LOADN                            R22 0
      206 LOADN                            R23 0
      207 CALL                             R19 4 1
      208 SETTABLEKS                       R19 R18 K15 ["Position"]
      210 NEWCLOSURE                       R19 P4
      211 CAPTURE                          VAL R9
      212 SETTABLEKS                       R19 R18 K23 ["OnClick"]
      214 CALL                             R16 2 1
      215 JUMP                             ; [+1]
      216 LOADNIL                          R16
      217 SETLIST                          R13 R14 3 [1]
      219 CALL                             R10 3 -1
      220 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useRef"]
       16 GETTABLEKS                       R3 R1 K9 ["useState"]
       18 GETTABLEKS                       R4 R1 K10 ["useEffect"]
       20 GETIMPORT                        R5 K5 [require]
       22 GETTABLEKS                       R6 R0 K6 ["Packages"]
       24 GETTABLEKS                       R6 R6 K11 ["Framework"]
       26 CALL                             R5 1 1
       27 GETTABLEKS                       R6 R5 K12 ["UI"]
       29 GETTABLEKS                       R7 R6 K13 ["ScrollingFrame"]
       31 GETIMPORT                        R8 K15 [game]
       33 LOADK                            R10 K16 ["TweenService"]
       34 NAMECALL                         R8 R8 K17 ["GetService"]
       36 CALL                             R8 2 1
       37 GETIMPORT                        R9 K5 [require]
       39 GETTABLEKS                       R10 R0 K18 ["Src"]
       41 GETTABLEKS                       R10 R10 K19 ["Components"]
       43 GETTABLEKS                       R10 R10 K20 ["ScrollingCarousel"]
       45 GETTABLEKS                       R10 R10 K21 ["Chevron"]
       47 CALL                             R9 1 1
       48 GETIMPORT                        R10 K5 [require]
       50 GETTABLEKS                       R11 R0 K18 ["Src"]
       52 GETTABLEKS                       R11 R11 K22 ["Types"]
       54 CALL                             R10 1 1
       55 DUPCLOSURE                       R11 K23 [PROTO_0]
       56 DUPCLOSURE                       R12 K24 [PROTO_1]
       57 DUPCLOSURE                       R13 K25 [PROTO_8]
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R8
       63 CAPTURE                          VAL R9
       64 CAPTURE                          VAL R7
       65 RETURN                           R13 1
