PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["OnScrollUpdate"]
        5 JUMPIFNOT                        R1 ; [+8]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["props"]
        9 GETTABLEKS                       R1 R1 K1 ["OnScrollUpdate"]
       11 GETTABLEKS                       R2 R0 K2 ["CanvasPosition"]
       13 CALL                             R1 1 0
       14 GETUPVAL                         R1 0
       15 NAMECALL                         R1 R1 K3 ["checkNextPage"]
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["AutomaticCanvasSize"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["props"]
        8 GETTABLEKS                       R1 R1 K2 ["CanvasSize"]
       10 JUMPIF                           R1 ; [+1]
       11 JUMPIFNOT                        R0 ; [+1]
       12 RETURN                           R0 0
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K3 ["scrollingRef"]
       16 GETTABLEKS                       R1 R1 K4 ["current"]
       18 JUMPIFNOT                        R1 ; [+101]
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K5 ["layoutRef"]
       22 GETTABLEKS                       R1 R1 K4 ["current"]
       24 JUMPIFNOT                        R1 ; [+95]
       25 GETUPVAL                         R1 0
       26 GETTABLEKS                       R1 R1 K5 ["layoutRef"]
       28 GETTABLEKS                       R1 R1 K4 ["current"]
       30 GETTABLEKS                       R1 R1 K6 ["AbsoluteContentSize"]
       32 GETTABLEKS                       R2 R1 K7 ["X"]
       34 GETTABLEKS                       R3 R1 K8 ["Y"]
       36 GETUPVAL                         R4 0
       37 GETTABLEKS                       R4 R4 K9 ["getPaddingProps"]
       39 CALL                             R4 0 1
       40 GETTABLEKS                       R6 R4 K10 ["PaddingLeft"]
       42 GETTABLEKS                       R6 R6 K11 ["Offset"]
       44 ADD                              R5 R2 R6
       45 GETTABLEKS                       R6 R4 K12 ["PaddingRight"]
       47 GETTABLEKS                       R6 R6 K11 ["Offset"]
       49 ADD                              R2 R5 R6
       50 GETTABLEKS                       R6 R4 K13 ["PaddingTop"]
       52 GETTABLEKS                       R6 R6 K11 ["Offset"]
       54 ADD                              R5 R3 R6
       55 GETTABLEKS                       R6 R4 K14 ["PaddingBottom"]
       57 GETTABLEKS                       R6 R6 K11 ["Offset"]
       59 ADD                              R3 R5 R6
       60 JUMPIF                           R0 ; [+28]
       61 GETUPVAL                         R5 0
       62 GETTABLEKS                       R5 R5 K0 ["props"]
       64 GETTABLEKS                       R6 R5 K15 ["Stylizer"]
       66 JUMPIF                           R6 ; [+1]
       67 GETUPVAL                         R6 1
       68 GETUPVAL                         R7 0
       69 GETTABLEKS                       R7 R7 K16 ["getScrollingFrameProps"]
       71 MOVE                             R8 R5
       72 MOVE                             R9 R6
       73 CALL                             R7 2 1
       74 GETTABLEKS                       R8 R7 K17 ["ScrollingDirection"]
       76 GETIMPORT                        R9 K19 [Enum.ScrollingDirection.Y]
       78 JUMPIFNOTEQ                      R8 R9 ; [+3]
       80 LOADN                            R2 0
       81 JUMP                             ; [+7]
       82 GETTABLEKS                       R8 R7 K17 ["ScrollingDirection"]
       84 GETIMPORT                        R9 K20 [Enum.ScrollingDirection.X]
       86 JUMPIFNOTEQ                      R8 R9 ; [+2]
       88 LOADN                            R3 0
       89 GETUPVAL                         R5 0
       90 GETTABLEKS                       R5 R5 K3 ["scrollingRef"]
       92 GETTABLEKS                       R5 R5 K4 ["current"]
       94 GETIMPORT                        R6 K23 [UDim2.new]
       96 LOADN                            R7 0
       97 MOVE                             R8 R2
       98 LOADN                            R9 0
       99 MOVE                             R10 R3
      100 CALL                             R6 4 1
      101 SETTABLEKS                       R6 R5 K2 ["CanvasSize"]
      103 GETUPVAL                         R5 0
      104 GETTABLEKS                       R5 R5 K0 ["props"]
      106 GETTABLEKS                       R5 R5 K24 ["OnCanvasResize"]
      108 JUMPIFNOT                        R5 ; [+11]
      109 GETUPVAL                         R5 0
      110 GETTABLEKS                       R5 R5 K0 ["props"]
      112 GETTABLEKS                       R5 R5 K24 ["OnCanvasResize"]
      114 GETIMPORT                        R6 K26 [Vector2.new]
      116 MOVE                             R7 R2
      117 MOVE                             R8 R3
      118 CALL                             R6 2 -1
      119 CALL                             R5 -1 0
      120 RETURN                           R0 0

PROTO_2:
        0 LOADN                            R2 1
        1 LOADN                            R3 1
        2 GETTABLEKS                       R4 R0 K0 ["AutomaticSize"]
        4 JUMPIFNOT                        R4 ; [+18]
        5 GETIMPORT                        R5 K3 [Enum.AutomaticSize.X]
        7 JUMPIFEQ                         R4 R5 ; [+5]
        9 GETIMPORT                        R5 K5 [Enum.AutomaticSize.XY]
       11 JUMPIFNOTEQ                      R4 R5 ; [+2]
       13 LOADN                            R2 0
       14 GETIMPORT                        R5 K7 [Enum.AutomaticSize.Y]
       16 JUMPIFEQ                         R4 R5 ; [+5]
       18 GETIMPORT                        R5 K5 [Enum.AutomaticSize.XY]
       20 JUMPIFNOTEQ                      R4 R5 ; [+2]
       22 LOADN                            R3 0
       23 GETTABLEKS                       R5 R0 K8 ["ScrollingFrameSize"]
       25 JUMPIFEQKNIL                     R5 ; [+3]
       27 MOVE                             R6 R5
       28 JUMP                             ; [+5]
       29 GETIMPORT                        R6 K11 [UDim2.fromScale]
       31 MOVE                             R7 R2
       32 MOVE                             R8 R3
       33 CALL                             R6 2 1
       34 GETUPVAL                         R7 0
       35 GETTABLEKS                       R7 R7 K12 ["Dictionary"]
       37 GETTABLEKS                       R7 R7 K13 ["join"]
       39 GETUPVAL                         R9 1
       40 JUMPIFNOT                        R9 ; [+13]
       41 NEWTABLE                         R8 1 0
       43 GETUPVAL                         R9 2
       44 GETTABLEKS                       R9 R9 K14 ["Tag"]
       46 GETUPVAL                         R11 3
       47 JUMPIFNOTEQ                      R6 R11 ; [+3]
       49 LOADK                            R10 K15 ["X-DefaultSize"]
       50 JUMP                             ; [+1]
       51 LOADNIL                          R10
       52 SETTABLE                         R10 R8 R9
       53 JUMP                             ; [+1]
       54 MOVE                             R8 R1
       55 MOVE                             R9 R0
       56 GETUPVAL                         R10 4
       57 GETTABLEKS                       R10 R10 K16 ["propFilters"]
       59 GETTABLEKS                       R10 R10 K17 ["parentContainerProps"]
       61 NEWTABLE                         R11 16 0
       63 GETUPVAL                         R13 1
       64 JUMPIFNOT                        R13 ; [+6]
       65 GETTABLEKS                       R13 R0 K18 ["CanvasSize"]
       67 JUMPIF                           R13 ; [+3]
       68 GETIMPORT                        R12 K5 [Enum.AutomaticSize.XY]
       70 JUMP                             ; [+2]
       71 GETTABLEKS                       R12 R0 K19 ["AutomaticCanvasSize"]
       73 SETTABLEKS                       R12 R11 K19 ["AutomaticCanvasSize"]
       75 GETUPVAL                         R13 5
       76 CALL                             R13 0 1
       77 JUMPIFNOT                        R13 ; [+9]
       78 GETTABLEKS                       R13 R0 K20 ["Selectable"]
       80 JUMPIFNOTEQKNIL                  R13 ; [+3]
       82 LOADB                            R12 0
       83 JUMP                             ; [+4]
       84 GETTABLEKS                       R12 R0 K20 ["Selectable"]
       86 JUMP                             ; [+1]
       87 LOADNIL                          R12
       88 SETTABLEKS                       R12 R11 K20 ["Selectable"]
       90 SETTABLEKS                       R6 R11 K21 ["Size"]
       92 GETUPVAL                         R12 0
       93 GETTABLEKS                       R12 R12 K22 ["None"]
       95 SETTABLEKS                       R12 R11 K23 ["ForwardRef"]
       97 GETUPVAL                         R12 6
       98 GETTABLEKS                       R12 R12 K24 ["Children"]
      100 GETUPVAL                         R13 0
      101 GETTABLEKS                       R13 R13 K22 ["None"]
      103 SETTABLE                         R13 R11 R12
      104 GETUPVAL                         R12 6
      105 GETTABLEKS                       R12 R12 K25 ["Change"]
      107 GETTABLEKS                       R12 R12 K26 ["CanvasPosition"]
      109 GETUPVAL                         R13 4
      110 GETTABLEKS                       R13 R13 K27 ["onScroll"]
      112 SETTABLE                         R13 R11 R12
      113 GETUPVAL                         R12 6
      114 GETTABLEKS                       R12 R12 K25 ["Change"]
      116 GETTABLEKS                       R12 R12 K28 ["AbsoluteSize"]
      118 GETUPVAL                         R14 1
      119 JUMPIFNOT                        R14 ; [+2]
      120 LOADNIL                          R13
      121 JUMP                             ; [+3]
      122 GETUPVAL                         R13 4
      123 GETTABLEKS                       R13 R13 K29 ["updateCanvasSize"]
      125 SETTABLE                         R13 R11 R12
      126 GETUPVAL                         R12 6
      127 GETTABLEKS                       R12 R12 K30 ["Ref"]
      129 GETUPVAL                         R13 4
      130 GETTABLEKS                       R13 R13 K31 ["scrollingRef"]
      132 SETTABLE                         R13 R11 R12
      133 GETUPVAL                         R12 0
      134 GETTABLEKS                       R12 R12 K22 ["None"]
      136 SETTABLEKS                       R12 R11 K32 ["Spacing"]
      138 CALL                             R7 4 -1
      139 RETURN                           R7 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Stylizer"]
        5 JUMPIF                           R1 ; [+1]
        6 GETUPVAL                         R1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R3 R0 K2 ["Padding"]
       10 GETTABLEKS                       R4 R1 K2 ["Padding"]
       12 LOADN                            R5 0
       13 CALL                             R2 3 1
       14 FASTCALL1                        TYPE R2 ; [+3]
       15 MOVE                             R5 R2
       16 GETIMPORT                        R4 K4 [type]
       18 CALL                             R4 1 1
       19 JUMPIFEQKS                       R4 K5 ["number"] ; [+2]
       21 LOADB                            R3 0 +1
       22 LOADB                            R3 1
       23 DUPTABLE                         R4 K10 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       24 GETIMPORT                        R5 K13 [UDim.new]
       26 LOADN                            R6 0
       27 JUMPIFNOT                        R3 ; [+2]
       28 MOVE                             R7 R2
       29 JUMPIF                           R7 ; [+4]
       30 GETTABLEKS                       R7 R2 K14 ["Top"]
       32 JUMPIF                           R7 ; [+1]
       33 LOADN                            R7 0
       34 CALL                             R5 2 1
       35 SETTABLEKS                       R5 R4 K6 ["PaddingTop"]
       37 GETIMPORT                        R5 K13 [UDim.new]
       39 LOADN                            R6 0
       40 JUMPIFNOT                        R3 ; [+2]
       41 MOVE                             R7 R2
       42 JUMPIF                           R7 ; [+4]
       43 GETTABLEKS                       R7 R2 K15 ["Bottom"]
       45 JUMPIF                           R7 ; [+1]
       46 LOADN                            R7 0
       47 CALL                             R5 2 1
       48 SETTABLEKS                       R5 R4 K7 ["PaddingBottom"]
       50 GETIMPORT                        R5 K13 [UDim.new]
       52 LOADN                            R6 0
       53 JUMPIFNOT                        R3 ; [+2]
       54 MOVE                             R7 R2
       55 JUMPIF                           R7 ; [+4]
       56 GETTABLEKS                       R7 R2 K16 ["Left"]
       58 JUMPIF                           R7 ; [+1]
       59 LOADN                            R7 0
       60 CALL                             R5 2 1
       61 SETTABLEKS                       R5 R4 K8 ["PaddingLeft"]
       63 GETIMPORT                        R5 K13 [UDim.new]
       65 LOADN                            R6 0
       66 JUMPIFNOT                        R3 ; [+2]
       67 MOVE                             R7 R2
       68 JUMPIF                           R7 ; [+4]
       69 GETTABLEKS                       R7 R2 K17 ["Right"]
       71 JUMPIF                           R7 ; [+1]
       72 LOADN                            R7 0
       73 CALL                             R5 2 1
       74 SETTABLEKS                       R5 R4 K9 ["PaddingRight"]
       76 RETURN                           R4 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["ForwardRef"]
        4 JUMPIF                           R1 ; [+4]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K2 ["createRef"]
        8 CALL                             R1 0 1
        9 SETTABLEKS                       R1 R0 K3 ["scrollingRef"]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K2 ["createRef"]
       14 CALL                             R1 0 1
       15 SETTABLEKS                       R1 R0 K4 ["layoutRef"]
       17 DUPTABLE                         R1 K7 [{["isRequestingNextPage"] = False}]
       18 SETTABLEKS                       R1 R0 K8 ["state"]
       20 GETUPVAL                         R1 1
       21 JUMPIFNOT                        R1 ; [+22]
       22 GETTABLEKS                       R3 R0 K0 ["props"]
       24 GETTABLEKS                       R3 R3 K9 ["EnableScrollBarBackground"]
       26 NOT                              R2 R3
       27 FASTCALL2K                       ASSERT R2 K10 ; [+4]
       29 LOADK                            R3 K10 ["[StyleSheets] ScrollingFrame does not support EnableScrollbarBackground due to design consistency"]
       30 GETIMPORT                        R1 K12 [assert]
       32 CALL                             R1 2 0
       33 GETTABLEKS                       R3 R0 K0 ["props"]
       35 GETTABLEKS                       R3 R3 K13 ["Style"]
       37 NOT                              R2 R3
       38 FASTCALL2K                       ASSERT R2 K14 ; [+4]
       40 LOADK                            R3 K14 ["[StyleSheets] ScrollingFrame does not support Style prop, use React.Tag for style props instead"]
       41 GETIMPORT                        R1 K12 [assert]
       43 CALL                             R1 2 0
       44 NEWCLOSURE                       R1 P0
       45 CAPTURE                          VAL R0
       46 SETTABLEKS                       R1 R0 K15 ["onScroll"]
       48 GETUPVAL                         R1 1
       49 JUMPIF                           R1 ; [+5]
       50 NEWCLOSURE                       R1 P1
       51 CAPTURE                          VAL R0
       52 CAPTURE                          UPVAL U2
       53 SETTABLEKS                       R1 R0 K16 ["updateCanvasSize"]
       55 DUPTABLE                         R1 K18 [{"parentContainerProps"}]
       56 DUPTABLE                         R2 K36 [{"Position", "Size", "Layout", "LayoutOrder", "AutoSizeCanvas", "AutoSizeLayoutElement", "AutoSizeLayoutOptions", "OnCanvasResize", "OnScrollUpdate", "NextPageFunc", "NextPageRequestDistance", "Theme", "Style", "Stylizer", "ScrollBarBackgroundColor", "EnableScrollBarBackground", "Padding", "HorizontalAlignment", "ScrollingFrameSize"}]
       57 GETUPVAL                         R3 3
       58 GETTABLEKS                       R3 R3 K37 ["None"]
       60 SETTABLEKS                       R3 R2 K19 ["Position"]
       62 GETUPVAL                         R3 3
       63 GETTABLEKS                       R3 R3 K37 ["None"]
       65 SETTABLEKS                       R3 R2 K20 ["Size"]
       67 GETUPVAL                         R3 3
       68 GETTABLEKS                       R3 R3 K37 ["None"]
       70 SETTABLEKS                       R3 R2 K21 ["Layout"]
       72 GETUPVAL                         R3 3
       73 GETTABLEKS                       R3 R3 K37 ["None"]
       75 SETTABLEKS                       R3 R2 K22 ["LayoutOrder"]
       77 GETUPVAL                         R3 3
       78 GETTABLEKS                       R3 R3 K37 ["None"]
       80 SETTABLEKS                       R3 R2 K23 ["AutoSizeCanvas"]
       82 GETUPVAL                         R3 3
       83 GETTABLEKS                       R3 R3 K37 ["None"]
       85 SETTABLEKS                       R3 R2 K24 ["AutoSizeLayoutElement"]
       87 GETUPVAL                         R3 3
       88 GETTABLEKS                       R3 R3 K37 ["None"]
       90 SETTABLEKS                       R3 R2 K25 ["AutoSizeLayoutOptions"]
       92 GETUPVAL                         R3 3
       93 GETTABLEKS                       R3 R3 K37 ["None"]
       95 SETTABLEKS                       R3 R2 K26 ["OnCanvasResize"]
       97 GETUPVAL                         R3 3
       98 GETTABLEKS                       R3 R3 K37 ["None"]
      100 SETTABLEKS                       R3 R2 K27 ["OnScrollUpdate"]
      102 GETUPVAL                         R3 3
      103 GETTABLEKS                       R3 R3 K37 ["None"]
      105 SETTABLEKS                       R3 R2 K28 ["NextPageFunc"]
      107 GETUPVAL                         R3 3
      108 GETTABLEKS                       R3 R3 K37 ["None"]
      110 SETTABLEKS                       R3 R2 K29 ["NextPageRequestDistance"]
      112 GETUPVAL                         R4 1
      113 JUMPIFNOT                        R4 ; [+2]
      114 LOADNIL                          R3
      115 JUMP                             ; [+3]
      116 GETUPVAL                         R3 3
      117 GETTABLEKS                       R3 R3 K37 ["None"]
      119 SETTABLEKS                       R3 R2 K30 ["Theme"]
      121 GETUPVAL                         R4 1
      122 JUMPIFNOT                        R4 ; [+2]
      123 LOADNIL                          R3
      124 JUMP                             ; [+3]
      125 GETUPVAL                         R3 3
      126 GETTABLEKS                       R3 R3 K37 ["None"]
      128 SETTABLEKS                       R3 R2 K13 ["Style"]
      130 GETUPVAL                         R4 1
      131 JUMPIFNOT                        R4 ; [+2]
      132 LOADNIL                          R3
      133 JUMP                             ; [+3]
      134 GETUPVAL                         R3 3
      135 GETTABLEKS                       R3 R3 K37 ["None"]
      137 SETTABLEKS                       R3 R2 K31 ["Stylizer"]
      139 GETUPVAL                         R3 3
      140 GETTABLEKS                       R3 R3 K37 ["None"]
      142 SETTABLEKS                       R3 R2 K32 ["ScrollBarBackgroundColor"]
      144 GETUPVAL                         R4 1
      145 JUMPIFNOT                        R4 ; [+2]
      146 LOADNIL                          R3
      147 JUMP                             ; [+3]
      148 GETUPVAL                         R3 3
      149 GETTABLEKS                       R3 R3 K37 ["None"]
      151 SETTABLEKS                       R3 R2 K9 ["EnableScrollBarBackground"]
      153 GETUPVAL                         R3 3
      154 GETTABLEKS                       R3 R3 K37 ["None"]
      156 SETTABLEKS                       R3 R2 K33 ["Padding"]
      158 GETUPVAL                         R3 3
      159 GETTABLEKS                       R3 R3 K37 ["None"]
      161 SETTABLEKS                       R3 R2 K34 ["HorizontalAlignment"]
      163 GETUPVAL                         R3 3
      164 GETTABLEKS                       R3 R3 K37 ["None"]
      166 SETTABLEKS                       R3 R2 K35 ["ScrollingFrameSize"]
      168 SETTABLEKS                       R2 R1 K17 ["parentContainerProps"]
      170 SETTABLEKS                       R1 R0 K38 ["propFilters"]
      172 NEWCLOSURE                       R1 P2
      173 CAPTURE                          UPVAL U3
      174 CAPTURE                          UPVAL U1
      175 CAPTURE                          UPVAL U4
      176 CAPTURE                          UPVAL U5
      177 CAPTURE                          VAL R0
      178 CAPTURE                          UPVAL U6
      179 CAPTURE                          UPVAL U0
      180 SETTABLEKS                       R1 R0 K39 ["getScrollingFrameProps"]
      182 GETUPVAL                         R1 1
      183 JUMPIF                           R1 ; [+6]
      184 NEWCLOSURE                       R1 P3
      185 CAPTURE                          VAL R0
      186 CAPTURE                          UPVAL U2
      187 CAPTURE                          UPVAL U7
      188 SETTABLEKS                       R1 R0 K40 ["getPaddingProps"]
      190 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["updateCanvasSize"]
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R1 R1 K1 ["isRequestingNextPage"]
        4 JUMPIF                           R1 ; [+5]
        5 GETTABLEKS                       R1 R0 K2 ["props"]
        7 GETTABLEKS                       R1 R1 K3 ["NextPageFunc"]
        9 JUMPIF                           R1 ; [+1]
       10 RETURN                           R0 0
       11 GETTABLEKS                       R1 R0 K4 ["scrollingRef"]
       13 GETTABLEKS                       R1 R1 K5 ["current"]
       15 JUMPIF                           R1 ; [+1]
       16 RETURN                           R0 0
       17 GETTABLEKS                       R3 R0 K2 ["props"]
       19 GETTABLEKS                       R3 R3 K7 ["NextPageRequestDistance"]
       21 ORK                              R2 R3 K6 [100]
       22 GETTABLEKS                       R3 R1 K8 ["AbsoluteSize"]
       24 GETTABLEKS                       R3 R3 K9 ["Y"]
       26 GETTABLEKS                       R4 R1 K10 ["AbsoluteCanvasSize"]
       28 GETTABLEKS                       R4 R4 K9 ["Y"]
       30 GETTABLEKS                       R5 R1 K11 ["CanvasPosition"]
       32 GETTABLEKS                       R5 R5 K9 ["Y"]
       34 ADD                              R6 R5 R3
       35 SUB                              R7 R4 R2
       36 JUMPIFNOTLT                      R7 R6 ; [+10]
       38 DUPTABLE                         R8 K13 [{["isRequestingNextPage"] = True}]
       39 NAMECALL                         R6 R0 K14 ["setState"]
       41 CALL                             R6 2 0
       42 GETTABLEKS                       R6 R0 K2 ["props"]
       44 GETTABLEKS                       R6 R6 K3 ["NextPageFunc"]
       46 CALL                             R6 0 0
       47 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R2 K1 ["isRequestingNextPage"]
        4 JUMPIFNOT                        R2 ; [+35]
        5 LOADN                            R2 0
        6 LOADN                            R3 0
        7 GETIMPORT                        R4 K3 [pairs]
        9 GETUPVAL                         R7 0
       10 GETTABLEKS                       R7 R7 K4 ["Children"]
       12 GETTABLE                         R5 R1 R7
       13 CALL                             R4 1 3
       14 FORGPREP_NEXT                    R4
       15 ADDK                             R2 R2 K5 [1]
       16 FORGLOOP                         R4 1 ; [-2]
       18 GETIMPORT                        R4 K3 [pairs]
       20 GETTABLEKS                       R7 R0 K6 ["props"]
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R8 R8 K4 ["Children"]
       25 GETTABLE                         R5 R7 R8
       26 CALL                             R4 1 3
       27 FORGPREP_NEXT                    R4
       28 ADDK                             R3 R3 K5 [1]
       29 FORGLOOP                         R4 1 ; [-2]
       31 JUMPIFNOTLT                      R2 R3 ; [+8]
       33 DUPTABLE                         R6 K8 [{["isRequestingNextPage"] = False}]
       34 NAMECALL                         R4 R0 K9 ["setState"]
       36 CALL                             R4 2 0
       37 NAMECALL                         R4 R0 K10 ["checkNextPage"]
       39 CALL                             R4 1 0
       40 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R3 0
        3 JUMPIFNOT                        R3 ; [+2]
        4 LOADNIL                          R2
        5 JUMP                             ; [+2]
        6 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        8 GETUPVAL                         R4 0
        9 JUMPIFNOT                        R4 ; [+8]
       10 GETUPVAL                         R3 1
       11 LOADK                            R4 K2 ["Component-ScrollingFrame"]
       12 GETUPVAL                         R6 2
       13 GETTABLEKS                       R6 R6 K3 ["Tag"]
       15 GETTABLE                         R5 R1 R6
       16 CALL                             R3 2 1
       17 JUMP                             ; [+1]
       18 LOADNIL                          R3
       19 GETUPVAL                         R5 0
       20 JUMPIFNOT                        R5 ; [+2]
       21 LOADNIL                          R4
       22 JUMP                             ; [+2]
       23 GETTABLEKS                       R4 R1 K4 ["EnableScrollBarBackground"]
       25 GETTABLEKS                       R5 R1 K5 ["Position"]
       27 GETTABLEKS                       R6 R1 K6 ["Size"]
       29 GETTABLEKS                       R7 R1 K7 ["LayoutOrder"]
       31 GETTABLEKS                       R9 R0 K0 ["props"]
       33 GETUPVAL                         R10 3
       34 GETTABLEKS                       R10 R10 K8 ["Children"]
       36 GETTABLE                         R8 R9 R10
       37 GETTABLEKS                       R9 R0 K9 ["getScrollingFrameProps"]
       39 GETTABLEKS                       R10 R0 K0 ["props"]
       41 MOVE                             R11 R2
       42 CALL                             R9 2 1
       43 GETTABLEKS                       R10 R1 K10 ["AutomaticCanvasSize"]
       45 GETUPVAL                         R12 0
       46 JUMPIFNOT                        R12 ; [+2]
       47 LOADNIL                          R11
       48 JUMP                             ; [+6]
       49 GETUPVAL                         R11 4
       50 GETTABLEKS                       R12 R1 K11 ["ScrollBarThickness"]
       52 GETTABLEKS                       R13 R2 K11 ["ScrollBarThickness"]
       54 CALL                             R11 2 1
       55 GETUPVAL                         R12 0
       56 JUMPIF                           R12 ; [+167]
       57 GETUPVAL                         R12 4
       58 GETTABLEKS                       R13 R1 K12 ["AutoSizeCanvas"]
       60 GETTABLEKS                       R14 R2 K12 ["AutoSizeCanvas"]
       62 LOADB                            R15 0
       63 CALL                             R12 3 1
       64 GETUPVAL                         R13 4
       65 GETTABLEKS                       R14 R1 K13 ["AutoSizeLayoutElement"]
       67 GETTABLEKS                       R15 R2 K13 ["AutoSizeLayoutElement"]
       69 LOADK                            R16 K14 ["UIListLayout"]
       70 CALL                             R13 3 1
       71 GETUPVAL                         R14 4
       72 GETTABLEKS                       R15 R1 K15 ["AutoSizeLayoutOptions"]
       74 GETTABLEKS                       R16 R2 K15 ["AutoSizeLayoutOptions"]
       76 NEWTABLE                         R17 0 0
       78 CALL                             R14 3 1
       79 JUMPIFNOT                        R10 ; [+9]
       80 LOADB                            R12 0
       81 GETTABLEKS                       R15 R1 K16 ["CanvasSize"]
       83 JUMPIF                           R15 ; [+5]
       84 GETIMPORT                        R15 K19 [UDim2.new]
       86 CALL                             R15 0 1
       87 SETTABLEKS                       R15 R9 K16 ["CanvasSize"]
       89 GETTABLEKS                       R15 R0 K20 ["getPaddingProps"]
       91 CALL                             R15 0 1
       92 GETTABLEKS                       R16 R1 K21 ["Spacing"]
       94 JUMPIF                           R16 ; [+5]
       95 GETIMPORT                        R16 K23 [UDim.new]
       97 LOADN                            R17 0
       98 LOADN                            R18 0
       99 CALL                             R16 2 1
      100 JUMPIFNOT                        R12 ; [+48]
      101 DUPTABLE                         R17 K26 [{"Layout", "Padding", "Children"}]
      102 GETUPVAL                         R18 3
      103 GETTABLEKS                       R18 R18 K27 ["createElement"]
      105 MOVE                             R19 R13
      106 GETUPVAL                         R20 5
      107 GETTABLEKS                       R20 R20 K28 ["Dictionary"]
      109 GETTABLEKS                       R20 R20 K29 ["join"]
      111 MOVE                             R21 R14
      112 NEWTABLE                         R22 2 0
      114 GETUPVAL                         R23 3
      115 GETTABLEKS                       R23 R23 K30 ["Change"]
      117 GETTABLEKS                       R23 R23 K31 ["AbsoluteContentSize"]
      119 GETTABLEKS                       R24 R0 K32 ["updateCanvasSize"]
      121 SETTABLE                         R24 R22 R23
      122 GETUPVAL                         R23 3
      123 GETTABLEKS                       R23 R23 K33 ["Ref"]
      125 GETTABLEKS                       R24 R0 K34 ["layoutRef"]
      127 SETTABLE                         R24 R22 R23
      128 CALL                             R20 2 -1
      129 CALL                             R18 -1 1
      130 SETTABLEKS                       R18 R17 K24 ["Layout"]
      132 GETUPVAL                         R18 3
      133 GETTABLEKS                       R18 R18 K27 ["createElement"]
      135 LOADK                            R19 K35 ["UIPadding"]
      136 MOVE                             R20 R15
      137 CALL                             R18 2 1
      138 SETTABLEKS                       R18 R17 K25 ["Padding"]
      140 GETUPVAL                         R18 3
      141 GETTABLEKS                       R18 R18 K36 ["createFragment"]
      143 MOVE                             R19 R8
      144 CALL                             R18 1 1
      145 SETTABLEKS                       R18 R17 K8 ["Children"]
      147 MOVE                             R8 R17
      148 JUMP                             ; [+75]
      149 GETTABLEKS                       R17 R1 K24 ["Layout"]
      151 JUMPIFNOT                        R17 ; [+55]
      152 DUPTABLE                         R17 K26 [{"Layout", "Padding", "Children"}]
      153 GETUPVAL                         R18 3
      154 GETTABLEKS                       R18 R18 K27 ["createElement"]
      156 LOADK                            R19 K14 ["UIListLayout"]
      157 NEWTABLE                         R20 8 0
      159 GETIMPORT                        R21 K39 [Enum.SortOrder.LayoutOrder]
      161 SETTABLEKS                       R21 R20 K38 ["SortOrder"]
      163 GETTABLEKS                       R21 R1 K24 ["Layout"]
      165 SETTABLEKS                       R21 R20 K40 ["FillDirection"]
      167 SETTABLEKS                       R16 R20 K25 ["Padding"]
      169 GETUPVAL                         R21 3
      170 GETTABLEKS                       R21 R21 K30 ["Change"]
      172 GETTABLEKS                       R21 R21 K31 ["AbsoluteContentSize"]
      174 GETTABLEKS                       R22 R0 K32 ["updateCanvasSize"]
      176 SETTABLE                         R22 R20 R21
      177 GETUPVAL                         R21 3
      178 GETTABLEKS                       R21 R21 K33 ["Ref"]
      180 GETTABLEKS                       R22 R0 K34 ["layoutRef"]
      182 SETTABLE                         R22 R20 R21
      183 GETTABLEKS                       R21 R1 K41 ["HorizontalAlignment"]
      185 SETTABLEKS                       R21 R20 K41 ["HorizontalAlignment"]
      187 CALL                             R18 2 1
      188 SETTABLEKS                       R18 R17 K24 ["Layout"]
      190 GETUPVAL                         R18 3
      191 GETTABLEKS                       R18 R18 K27 ["createElement"]
      193 LOADK                            R19 K35 ["UIPadding"]
      194 MOVE                             R20 R15
      195 CALL                             R18 2 1
      196 SETTABLEKS                       R18 R17 K25 ["Padding"]
      198 GETUPVAL                         R18 3
      199 GETTABLEKS                       R18 R18 K36 ["createFragment"]
      201 MOVE                             R19 R8
      202 CALL                             R18 1 1
      203 SETTABLEKS                       R18 R17 K8 ["Children"]
      205 MOVE                             R8 R17
      206 JUMP                             ; [+17]
      207 DUPTABLE                         R17 K42 [{"Padding", "Children"}]
      208 GETUPVAL                         R18 3
      209 GETTABLEKS                       R18 R18 K27 ["createElement"]
      211 LOADK                            R19 K35 ["UIPadding"]
      212 MOVE                             R20 R15
      213 CALL                             R18 2 1
      214 SETTABLEKS                       R18 R17 K25 ["Padding"]
      216 GETUPVAL                         R18 3
      217 GETTABLEKS                       R18 R18 K36 ["createFragment"]
      219 MOVE                             R19 R8
      220 CALL                             R18 1 1
      221 SETTABLEKS                       R18 R17 K8 ["Children"]
      223 MOVE                             R8 R17
      224 DUPTABLE                         R12 K44 [{"AutomaticSize", "LayoutOrder", "Position", "Size"}]
      225 GETTABLEKS                       R13 R1 K43 ["AutomaticSize"]
      227 SETTABLEKS                       R13 R12 K43 ["AutomaticSize"]
      229 SETTABLEKS                       R7 R12 K7 ["LayoutOrder"]
      231 SETTABLEKS                       R5 R12 K5 ["Position"]
      233 SETTABLEKS                       R6 R12 K6 ["Size"]
      235 JUMPIFNOT                        R3 ; [+4]
      236 GETUPVAL                         R13 2
      237 GETTABLEKS                       R13 R13 K3 ["Tag"]
      239 SETTABLE                         R3 R12 R13
      240 GETUPVAL                         R13 3
      241 GETTABLEKS                       R13 R13 K27 ["createElement"]
      243 GETUPVAL                         R14 6
      244 MOVE                             R15 R12
      245 DUPTABLE                         R16 K47 [{"ScrollBarBackground", "Scroller"}]
      246 MOVE                             R17 R4
      247 JUMPIFNOT                        R17 ; [+35]
      248 GETUPVAL                         R17 3
      249 GETTABLEKS                       R17 R17 K27 ["createElement"]
      251 LOADK                            R18 K48 ["Frame"]
      252 DUPTABLE                         R19 K54 [{["AnchorPoint"], ["Position"], ["Size"], ["BorderSizePixel"] = 0, ["BackgroundColor3"], ["ZIndex"] = 0}]
      253 GETIMPORT                        R20 K56 [Vector2.new]
      255 LOADN                            R21 1
      256 LOADN                            R22 0
      257 CALL                             R20 2 1
      258 SETTABLEKS                       R20 R19 K49 ["AnchorPoint"]
      260 GETIMPORT                        R20 K19 [UDim2.new]
      262 LOADN                            R21 1
      263 LOADN                            R22 0
      264 LOADN                            R23 0
      265 LOADN                            R24 0
      266 CALL                             R20 4 1
      267 SETTABLEKS                       R20 R19 K5 ["Position"]
      269 GETIMPORT                        R20 K19 [UDim2.new]
      271 LOADN                            R21 0
      272 MOVE                             R22 R11
      273 LOADN                            R23 1
      274 LOADN                            R24 0
      275 CALL                             R20 4 1
      276 SETTABLEKS                       R20 R19 K6 ["Size"]
      278 GETTABLEKS                       R20 R2 K57 ["ScrollBarBackgroundColor"]
      280 SETTABLEKS                       R20 R19 K52 ["BackgroundColor3"]
      282 CALL                             R17 2 1
      283 SETTABLEKS                       R17 R16 K45 ["ScrollBarBackground"]
      285 GETUPVAL                         R17 3
      286 GETTABLEKS                       R17 R17 K27 ["createElement"]
      288 LOADK                            R18 K58 ["ScrollingFrame"]
      289 MOVE                             R19 R9
      290 MOVE                             R20 R8
      291 CALL                             R17 3 1
      292 SETTABLEKS                       R17 R16 K46 ["Scroller"]
      294 CALL                             R13 3 -1
      295 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K8 ["Util"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R4 R0 K4 ["Parent"]
       23 LOADK                            R6 K9 ["React"]
       24 NAMECALL                         R4 R4 K10 ["FindFirstChild"]
       26 CALL                             R4 2 1
       27 JUMPIFNOT                        R4 ; [+8]
       28 GETIMPORT                        R3 K6 [require]
       30 GETTABLEKS                       R4 R0 K4 ["Parent"]
       32 GETTABLEKS                       R4 R4 K9 ["React"]
       34 CALL                             R3 1 1
       35 JUMP                             ; [+1]
       36 LOADNIL                          R3
       37 GETIMPORT                        R4 K6 [require]
       39 GETTABLEKS                       R5 R0 K11 ["Styling"]
       41 GETTABLEKS                       R5 R5 K12 ["supportsStyleSheets"]
       43 CALL                             R4 1 1
       44 GETIMPORT                        R5 K6 [require]
       46 GETTABLEKS                       R6 R0 K11 ["Styling"]
       48 GETTABLEKS                       R6 R6 K13 ["joinTags"]
       50 CALL                             R5 1 1
       51 GETIMPORT                        R6 K6 [require]
       53 GETTABLEKS                       R7 R0 K4 ["Parent"]
       55 GETTABLEKS                       R7 R7 K14 ["Cryo"]
       57 CALL                             R6 1 1
       58 GETIMPORT                        R7 K6 [require]
       60 GETTABLEKS                       R8 R0 K2 ["UI"]
       62 GETTABLEKS                       R8 R8 K15 ["ContextServices"]
       64 CALL                             R7 1 1
       65 GETTABLEKS                       R8 R7 K16 ["withContext"]
       67 GETIMPORT                        R9 K6 [require]
       69 GETIMPORT                        R10 K1 [script]
       71 GETTABLEKS                       R10 R10 K4 ["Parent"]
       73 GETTABLEKS                       R10 R10 K17 ["Pane"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K6 [require]
       78 GETTABLEKS                       R11 R0 K18 ["SharedFlags"]
       80 GETTABLEKS                       R11 R11 K19 ["getFFlagDevFrameworkKeyboardNavComponentChanges"]
       82 CALL                             R10 1 1
       83 GETTABLEKS                       R11 R2 K20 ["prioritize"]
       85 GETIMPORT                        R12 K6 [require]
       87 GETTABLEKS                       R13 R0 K8 ["Util"]
       89 GETTABLEKS                       R13 R13 K21 ["Typecheck"]
       91 CALL                             R12 1 1
       92 GETIMPORT                        R13 K6 [require]
       94 GETTABLEKS                       R14 R0 K22 ["Wrappers"]
       96 GETTABLEKS                       R14 R14 K23 ["withForwardRef"]
       98 CALL                             R13 1 1
       99 JUMPIF                           R4 ; [+8]
      100 GETIMPORT                        R14 K6 [require]
      102 GETIMPORT                        R15 K1 [script]
      104 GETTABLEKS                       R15 R15 K24 ["style"]
      106 CALL                             R14 1 1
      107 JUMP                             ; [+1]
      108 LOADNIL                          R14
      109 GETTABLEKS                       R15 R1 K25 ["PureComponent"]
      111 LOADK                            R17 K26 ["ScrollingFrame"]
      112 NAMECALL                         R15 R15 K27 ["extend"]
      114 CALL                             R15 2 1
      115 GETTABLEKS                       R16 R12 K28 ["wrap"]
      117 MOVE                             R17 R15
      118 GETIMPORT                        R18 K1 [script]
      120 CALL                             R16 2 0
      121 GETIMPORT                        R16 K31 [UDim2.fromScale]
      123 LOADN                            R17 0
      124 LOADN                            R18 0
      125 CALL                             R16 2 1
      126 DUPCLOSURE                       R17 K32 [PROTO_4]
      127 CAPTURE                          VAL R1
      128 CAPTURE                          VAL R4
      129 CAPTURE                          VAL R14
      130 CAPTURE                          VAL R6
      131 CAPTURE                          VAL R3
      132 CAPTURE                          VAL R16
      133 CAPTURE                          VAL R10
      134 CAPTURE                          VAL R11
      135 SETTABLEKS                       R17 R15 K33 ["init"]
      137 JUMPIF                           R4 ; [+3]
      138 DUPCLOSURE                       R17 K34 [PROTO_5]
      139 SETTABLEKS                       R17 R15 K35 ["didMount"]
      141 DUPCLOSURE                       R17 K36 [PROTO_6]
      142 SETTABLEKS                       R17 R15 K37 ["checkNextPage"]
      144 DUPCLOSURE                       R17 K38 [PROTO_7]
      145 CAPTURE                          VAL R1
      146 SETTABLEKS                       R17 R15 K39 ["didUpdate"]
      148 DUPCLOSURE                       R17 K40 [PROTO_8]
      149 CAPTURE                          VAL R4
      150 CAPTURE                          VAL R5
      151 CAPTURE                          VAL R3
      152 CAPTURE                          VAL R1
      153 CAPTURE                          VAL R11
      154 CAPTURE                          VAL R6
      155 CAPTURE                          VAL R9
      156 SETTABLEKS                       R17 R15 K41 ["render"]
      158 JUMPIF                           R4 ; [+10]
      159 MOVE                             R17 R8
      160 DUPTABLE                         R18 K43 [{"Stylizer"}]
      161 GETTABLEKS                       R19 R7 K42 ["Stylizer"]
      163 SETTABLEKS                       R19 R18 K42 ["Stylizer"]
      165 CALL                             R17 1 1
      166 MOVE                             R18 R15
      167 CALL                             R17 1 1
      168 MOVE                             R15 R17
      169 MOVE                             R17 R13
      170 MOVE                             R18 R15
      171 CALL                             R17 1 -1
      172 RETURN                           R17 -1
