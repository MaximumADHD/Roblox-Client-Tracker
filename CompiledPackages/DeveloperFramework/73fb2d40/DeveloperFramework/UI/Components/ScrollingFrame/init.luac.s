PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["OnScrollUpdate"]
        5 JUMPIFNOT                        R1 ; [+8]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K0 ["props"]
        9 GETTABLEKS                       R1 R2 K1 ["OnScrollUpdate"]
       11 GETTABLEKS                       R2 R0 K2 ["CanvasPosition"]
       13 CALL                             R1 1 0
       14 GETUPVAL                         R1 0
       15 NAMECALL                         R1 R1 K3 ["checkNextPage"]
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["AutomaticCanvasSize"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["props"]
        8 GETTABLEKS                       R1 R2 K2 ["CanvasSize"]
       10 JUMPIF                           R1 ; [+1]
       11 JUMPIFNOT                        R0 ; [+1]
       12 RETURN                           R0 0
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R2 R3 K3 ["scrollingRef"]
       16 GETTABLEKS                       R1 R2 K4 ["current"]
       18 JUMPIFNOT                        R1 ; [+101]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R2 R3 K5 ["layoutRef"]
       22 GETTABLEKS                       R1 R2 K4 ["current"]
       24 JUMPIFNOT                        R1 ; [+95]
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R3 R4 K5 ["layoutRef"]
       28 GETTABLEKS                       R2 R3 K4 ["current"]
       30 GETTABLEKS                       R1 R2 K6 ["AbsoluteContentSize"]
       32 GETTABLEKS                       R2 R1 K7 ["X"]
       34 GETTABLEKS                       R3 R1 K8 ["Y"]
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R4 R5 K9 ["getPaddingProps"]
       39 CALL                             R4 0 1
       40 GETTABLEKS                       R7 R4 K10 ["PaddingLeft"]
       42 GETTABLEKS                       R6 R7 K11 ["Offset"]
       44 ADD                              R5 R2 R6
       45 GETTABLEKS                       R7 R4 K12 ["PaddingRight"]
       47 GETTABLEKS                       R6 R7 K11 ["Offset"]
       49 ADD                              R2 R5 R6
       50 GETTABLEKS                       R7 R4 K13 ["PaddingTop"]
       52 GETTABLEKS                       R6 R7 K11 ["Offset"]
       54 ADD                              R5 R3 R6
       55 GETTABLEKS                       R7 R4 K14 ["PaddingBottom"]
       57 GETTABLEKS                       R6 R7 K11 ["Offset"]
       59 ADD                              R3 R5 R6
       60 JUMPIF                           R0 ; [+28]
       61 GETUPVAL                         R6 0
       62 GETTABLEKS                       R5 R6 K0 ["props"]
       64 GETTABLEKS                       R6 R5 K15 ["Stylizer"]
       66 JUMPIF                           R6 ; [+1]
       67 GETUPVAL                         R6 1
       68 GETUPVAL                         R8 0
       69 GETTABLEKS                       R7 R8 K16 ["getScrollingFrameProps"]
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
       89 GETUPVAL                         R7 0
       90 GETTABLEKS                       R6 R7 K3 ["scrollingRef"]
       92 GETTABLEKS                       R5 R6 K4 ["current"]
       94 GETIMPORT                        R6 K23 [UDim2.new]
       96 LOADN                            R7 0
       97 MOVE                             R8 R2
       98 LOADN                            R9 0
       99 MOVE                             R10 R3
      100 CALL                             R6 4 1
      101 SETTABLEKS                       R6 R5 K2 ["CanvasSize"]
      103 GETUPVAL                         R7 0
      104 GETTABLEKS                       R6 R7 K0 ["props"]
      106 GETTABLEKS                       R5 R6 K24 ["OnCanvasResize"]
      108 JUMPIFNOT                        R5 ; [+11]
      109 GETUPVAL                         R7 0
      110 GETTABLEKS                       R6 R7 K0 ["props"]
      112 GETTABLEKS                       R5 R6 K24 ["OnCanvasResize"]
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
       25 GETUPVAL                         R7 0
       26 JUMPIFNOT                        R7 ; [+10]
       27 JUMPIFEQKNIL                     R5 ; [+3]
       29 MOVE                             R6 R5
       30 JUMP                             ; [+7]
       31 GETIMPORT                        R6 K11 [UDim2.fromScale]
       33 MOVE                             R7 R2
       34 MOVE                             R8 R3
       35 CALL                             R6 2 1
       36 JUMP                             ; [+1]
       37 LOADNIL                          R6
       38 GETUPVAL                         R9 1
       39 GETTABLEKS                       R8 R9 K12 ["Dictionary"]
       41 GETTABLEKS                       R7 R8 K13 ["join"]
       43 GETUPVAL                         R9 2
       44 JUMPIFNOT                        R9 ; [+15]
       45 NEWTABLE                         R8 1 0
       47 GETUPVAL                         R10 3
       48 GETTABLEKS                       R9 R10 K14 ["Tag"]
       50 GETUPVAL                         R11 0
       51 JUMPIFNOT                        R11 ; [+5]
       52 GETUPVAL                         R11 4
       53 JUMPIFNOTEQ                      R6 R11 ; [+3]
       55 LOADK                            R10 K15 ["X-DefaultSize"]
       56 JUMP                             ; [+1]
       57 LOADNIL                          R10
       58 SETTABLE                         R10 R8 R9
       59 JUMP                             ; [+1]
       60 MOVE                             R8 R1
       61 MOVE                             R9 R0
       62 GETUPVAL                         R12 5
       63 GETTABLEKS                       R11 R12 K16 ["propFilters"]
       65 GETTABLEKS                       R10 R11 K17 ["parentContainerProps"]
       67 NEWTABLE                         R11 8 0
       69 GETUPVAL                         R13 2
       70 JUMPIFNOT                        R13 ; [+6]
       71 GETTABLEKS                       R13 R0 K18 ["CanvasSize"]
       73 JUMPIF                           R13 ; [+3]
       74 GETIMPORT                        R12 K5 [Enum.AutomaticSize.XY]
       76 JUMP                             ; [+2]
       77 GETTABLEKS                       R12 R0 K19 ["AutomaticCanvasSize"]
       79 SETTABLEKS                       R12 R11 K19 ["AutomaticCanvasSize"]
       81 GETUPVAL                         R13 0
       82 JUMPIFNOT                        R13 ; [+2]
       83 MOVE                             R12 R6
       84 JUMP                             ; [+9]
       85 JUMPIFEQKNIL                     R5 ; [+3]
       87 MOVE                             R12 R5
       88 JUMP                             ; [+5]
       89 GETIMPORT                        R12 K11 [UDim2.fromScale]
       91 MOVE                             R13 R2
       92 MOVE                             R14 R3
       93 CALL                             R12 2 1
       94 SETTABLEKS                       R12 R11 K20 ["Size"]
       96 GETUPVAL                         R13 1
       97 GETTABLEKS                       R12 R13 K21 ["None"]
       99 SETTABLEKS                       R12 R11 K22 ["ForwardRef"]
      101 GETUPVAL                         R13 6
      102 GETTABLEKS                       R12 R13 K23 ["Children"]
      104 GETUPVAL                         R14 1
      105 GETTABLEKS                       R13 R14 K21 ["None"]
      107 SETTABLE                         R13 R11 R12
      108 GETUPVAL                         R14 6
      109 GETTABLEKS                       R13 R14 K24 ["Change"]
      111 GETTABLEKS                       R12 R13 K25 ["CanvasPosition"]
      113 GETUPVAL                         R14 5
      114 GETTABLEKS                       R13 R14 K26 ["onScroll"]
      116 SETTABLE                         R13 R11 R12
      117 GETUPVAL                         R14 6
      118 GETTABLEKS                       R13 R14 K24 ["Change"]
      120 GETTABLEKS                       R12 R13 K27 ["AbsoluteSize"]
      122 GETUPVAL                         R14 2
      123 JUMPIFNOT                        R14 ; [+2]
      124 LOADNIL                          R13
      125 JUMP                             ; [+3]
      126 GETUPVAL                         R14 5
      127 GETTABLEKS                       R13 R14 K28 ["updateCanvasSize"]
      129 SETTABLE                         R13 R11 R12
      130 GETUPVAL                         R13 6
      131 GETTABLEKS                       R12 R13 K29 ["Ref"]
      133 GETUPVAL                         R14 5
      134 GETTABLEKS                       R13 R14 K30 ["scrollingRef"]
      136 SETTABLE                         R13 R11 R12
      137 GETUPVAL                         R13 1
      138 GETTABLEKS                       R12 R13 K21 ["None"]
      140 SETTABLEKS                       R12 R11 K31 ["Spacing"]
      142 CALL                             R7 4 -1
      143 RETURN                           R7 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
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
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["ForwardRef"]
        4 JUMPIF                           R1 ; [+4]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K2 ["createRef"]
        8 CALL                             R1 0 1
        9 SETTABLEKS                       R1 R0 K3 ["scrollingRef"]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R1 R2 K2 ["createRef"]
       14 CALL                             R1 0 1
       15 SETTABLEKS                       R1 R0 K4 ["layoutRef"]
       17 DUPTABLE                         R1 K6 [{"isRequestingNextPage"}]
       18 LOADB                            R2 0
       19 SETTABLEKS                       R2 R1 K5 ["isRequestingNextPage"]
       21 SETTABLEKS                       R1 R0 K7 ["state"]
       23 GETUPVAL                         R1 1
       24 JUMPIFNOT                        R1 ; [+22]
       25 GETTABLEKS                       R4 R0 K0 ["props"]
       27 GETTABLEKS                       R3 R4 K8 ["EnableScrollBarBackground"]
       29 NOT                              R2 R3
       30 FASTCALL2K                       ASSERT R2 K9 ; [+4]
       32 LOADK                            R3 K9 ["[StyleSheets] ScrollingFrame does not support EnableScrollbarBackground due to design consistency"]
       33 GETIMPORT                        R1 K11 [assert]
       35 CALL                             R1 2 0
       36 GETTABLEKS                       R4 R0 K0 ["props"]
       38 GETTABLEKS                       R3 R4 K12 ["Style"]
       40 NOT                              R2 R3
       41 FASTCALL2K                       ASSERT R2 K13 ; [+4]
       43 LOADK                            R3 K13 ["[StyleSheets] ScrollingFrame does not support Style prop, use React.Tag for style props instead"]
       44 GETIMPORT                        R1 K11 [assert]
       46 CALL                             R1 2 0
       47 NEWCLOSURE                       R1 P0
       48 CAPTURE                          VAL R0
       49 SETTABLEKS                       R1 R0 K14 ["onScroll"]
       51 GETUPVAL                         R1 1
       52 JUMPIF                           R1 ; [+5]
       53 NEWCLOSURE                       R1 P1
       54 CAPTURE                          VAL R0
       55 CAPTURE                          UPVAL U2
       56 SETTABLEKS                       R1 R0 K15 ["updateCanvasSize"]
       58 DUPTABLE                         R1 K17 [{"parentContainerProps"}]
       59 DUPTABLE                         R2 K35 [{"Position", "Size", "Layout", "LayoutOrder", "AutoSizeCanvas", "AutoSizeLayoutElement", "AutoSizeLayoutOptions", "OnCanvasResize", "OnScrollUpdate", "NextPageFunc", "NextPageRequestDistance", "Theme", "Style", "Stylizer", "ScrollBarBackgroundColor", "EnableScrollBarBackground", "Padding", "HorizontalAlignment", "ScrollingFrameSize"}]
       60 GETUPVAL                         R4 3
       61 GETTABLEKS                       R3 R4 K36 ["None"]
       63 SETTABLEKS                       R3 R2 K18 ["Position"]
       65 GETUPVAL                         R4 3
       66 GETTABLEKS                       R3 R4 K36 ["None"]
       68 SETTABLEKS                       R3 R2 K19 ["Size"]
       70 GETUPVAL                         R4 3
       71 GETTABLEKS                       R3 R4 K36 ["None"]
       73 SETTABLEKS                       R3 R2 K20 ["Layout"]
       75 GETUPVAL                         R4 3
       76 GETTABLEKS                       R3 R4 K36 ["None"]
       78 SETTABLEKS                       R3 R2 K21 ["LayoutOrder"]
       80 GETUPVAL                         R4 3
       81 GETTABLEKS                       R3 R4 K36 ["None"]
       83 SETTABLEKS                       R3 R2 K22 ["AutoSizeCanvas"]
       85 GETUPVAL                         R4 3
       86 GETTABLEKS                       R3 R4 K36 ["None"]
       88 SETTABLEKS                       R3 R2 K23 ["AutoSizeLayoutElement"]
       90 GETUPVAL                         R4 3
       91 GETTABLEKS                       R3 R4 K36 ["None"]
       93 SETTABLEKS                       R3 R2 K24 ["AutoSizeLayoutOptions"]
       95 GETUPVAL                         R4 3
       96 GETTABLEKS                       R3 R4 K36 ["None"]
       98 SETTABLEKS                       R3 R2 K25 ["OnCanvasResize"]
      100 GETUPVAL                         R4 3
      101 GETTABLEKS                       R3 R4 K36 ["None"]
      103 SETTABLEKS                       R3 R2 K26 ["OnScrollUpdate"]
      105 GETUPVAL                         R4 3
      106 GETTABLEKS                       R3 R4 K36 ["None"]
      108 SETTABLEKS                       R3 R2 K27 ["NextPageFunc"]
      110 GETUPVAL                         R4 3
      111 GETTABLEKS                       R3 R4 K36 ["None"]
      113 SETTABLEKS                       R3 R2 K28 ["NextPageRequestDistance"]
      115 GETUPVAL                         R4 1
      116 JUMPIFNOT                        R4 ; [+2]
      117 LOADNIL                          R3
      118 JUMP                             ; [+3]
      119 GETUPVAL                         R4 3
      120 GETTABLEKS                       R3 R4 K36 ["None"]
      122 SETTABLEKS                       R3 R2 K29 ["Theme"]
      124 GETUPVAL                         R4 1
      125 JUMPIFNOT                        R4 ; [+2]
      126 LOADNIL                          R3
      127 JUMP                             ; [+3]
      128 GETUPVAL                         R4 3
      129 GETTABLEKS                       R3 R4 K36 ["None"]
      131 SETTABLEKS                       R3 R2 K12 ["Style"]
      133 GETUPVAL                         R4 1
      134 JUMPIFNOT                        R4 ; [+2]
      135 LOADNIL                          R3
      136 JUMP                             ; [+3]
      137 GETUPVAL                         R4 3
      138 GETTABLEKS                       R3 R4 K36 ["None"]
      140 SETTABLEKS                       R3 R2 K30 ["Stylizer"]
      142 GETUPVAL                         R4 3
      143 GETTABLEKS                       R3 R4 K36 ["None"]
      145 SETTABLEKS                       R3 R2 K31 ["ScrollBarBackgroundColor"]
      147 GETUPVAL                         R4 1
      148 JUMPIFNOT                        R4 ; [+2]
      149 LOADNIL                          R3
      150 JUMP                             ; [+3]
      151 GETUPVAL                         R4 3
      152 GETTABLEKS                       R3 R4 K36 ["None"]
      154 SETTABLEKS                       R3 R2 K8 ["EnableScrollBarBackground"]
      156 GETUPVAL                         R4 3
      157 GETTABLEKS                       R3 R4 K36 ["None"]
      159 SETTABLEKS                       R3 R2 K32 ["Padding"]
      161 GETUPVAL                         R4 3
      162 GETTABLEKS                       R3 R4 K36 ["None"]
      164 SETTABLEKS                       R3 R2 K33 ["HorizontalAlignment"]
      166 GETUPVAL                         R4 3
      167 GETTABLEKS                       R3 R4 K36 ["None"]
      169 SETTABLEKS                       R3 R2 K34 ["ScrollingFrameSize"]
      171 SETTABLEKS                       R2 R1 K16 ["parentContainerProps"]
      173 SETTABLEKS                       R1 R0 K37 ["propFilters"]
      175 NEWCLOSURE                       R1 P2
      176 CAPTURE                          UPVAL U4
      177 CAPTURE                          UPVAL U3
      178 CAPTURE                          UPVAL U1
      179 CAPTURE                          UPVAL U5
      180 CAPTURE                          UPVAL U6
      181 CAPTURE                          VAL R0
      182 CAPTURE                          UPVAL U0
      183 SETTABLEKS                       R1 R0 K38 ["getScrollingFrameProps"]
      185 GETUPVAL                         R1 1
      186 JUMPIF                           R1 ; [+6]
      187 NEWCLOSURE                       R1 P3
      188 CAPTURE                          VAL R0
      189 CAPTURE                          UPVAL U2
      190 CAPTURE                          UPVAL U7
      191 SETTABLEKS                       R1 R0 K39 ["getPaddingProps"]
      193 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["updateCanvasSize"]
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["state"]
        2 GETTABLEKS                       R1 R2 K1 ["isRequestingNextPage"]
        4 JUMPIF                           R1 ; [+5]
        5 GETTABLEKS                       R2 R0 K2 ["props"]
        7 GETTABLEKS                       R1 R2 K3 ["NextPageFunc"]
        9 JUMPIF                           R1 ; [+1]
       10 RETURN                           R0 0
       11 GETTABLEKS                       R2 R0 K4 ["scrollingRef"]
       13 GETTABLEKS                       R1 R2 K5 ["current"]
       15 JUMPIF                           R1 ; [+1]
       16 RETURN                           R0 0
       17 GETTABLEKS                       R4 R0 K2 ["props"]
       19 GETTABLEKS                       R3 R4 K7 ["NextPageRequestDistance"]
       21 ORK                              R2 R3 K6 [100]
       22 GETTABLEKS                       R4 R1 K8 ["AbsoluteSize"]
       24 GETTABLEKS                       R3 R4 K9 ["Y"]
       26 GETTABLEKS                       R5 R1 K10 ["AbsoluteCanvasSize"]
       28 GETTABLEKS                       R4 R5 K9 ["Y"]
       30 GETTABLEKS                       R6 R1 K11 ["CanvasPosition"]
       32 GETTABLEKS                       R5 R6 K9 ["Y"]
       34 ADD                              R6 R5 R3
       35 SUB                              R7 R4 R2
       36 JUMPIFNOTLT                      R7 R6 ; [+13]
       38 DUPTABLE                         R8 K12 [{"isRequestingNextPage"}]
       39 LOADB                            R9 1
       40 SETTABLEKS                       R9 R8 K1 ["isRequestingNextPage"]
       42 NAMECALL                         R6 R0 K13 ["setState"]
       44 CALL                             R6 2 0
       45 GETTABLEKS                       R7 R0 K2 ["props"]
       47 GETTABLEKS                       R6 R7 K3 ["NextPageFunc"]
       49 CALL                             R6 0 0
       50 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R3 K1 ["isRequestingNextPage"]
        4 JUMPIFNOT                        R2 ; [+38]
        5 LOADN                            R2 0
        6 LOADN                            R3 0
        7 GETIMPORT                        R4 K3 [pairs]
        9 GETUPVAL                         R8 0
       10 GETTABLEKS                       R7 R8 K4 ["Children"]
       12 GETTABLE                         R5 R1 R7
       13 CALL                             R4 1 3
       14 FORGPREP_NEXT                    R4
       15 ADDK                             R2 R2 K5 [1]
       16 FORGLOOP                         R4 1 ; [-2]
       18 GETIMPORT                        R4 K3 [pairs]
       20 GETTABLEKS                       R7 R0 K6 ["props"]
       22 GETUPVAL                         R9 0
       23 GETTABLEKS                       R8 R9 K4 ["Children"]
       25 GETTABLE                         R5 R7 R8
       26 CALL                             R4 1 3
       27 FORGPREP_NEXT                    R4
       28 ADDK                             R3 R3 K5 [1]
       29 FORGLOOP                         R4 1 ; [-2]
       31 JUMPIFNOTLT                      R2 R3 ; [+11]
       33 DUPTABLE                         R6 K7 [{"isRequestingNextPage"}]
       34 LOADB                            R7 0
       35 SETTABLEKS                       R7 R6 K1 ["isRequestingNextPage"]
       37 NAMECALL                         R4 R0 K8 ["setState"]
       39 CALL                             R4 2 0
       40 NAMECALL                         R4 R0 K9 ["checkNextPage"]
       42 CALL                             R4 1 0
       43 RETURN                           R0 0

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
       12 GETUPVAL                         R7 2
       13 GETTABLEKS                       R6 R7 K3 ["Tag"]
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
       33 GETUPVAL                         R11 3
       34 GETTABLEKS                       R10 R11 K8 ["Children"]
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
      102 GETUPVAL                         R19 3
      103 GETTABLEKS                       R18 R19 K27 ["createElement"]
      105 MOVE                             R19 R13
      106 GETUPVAL                         R22 5
      107 GETTABLEKS                       R21 R22 K28 ["Dictionary"]
      109 GETTABLEKS                       R20 R21 K29 ["join"]
      111 MOVE                             R21 R14
      112 NEWTABLE                         R22 2 0
      114 GETUPVAL                         R25 3
      115 GETTABLEKS                       R24 R25 K30 ["Change"]
      117 GETTABLEKS                       R23 R24 K31 ["AbsoluteContentSize"]
      119 GETTABLEKS                       R24 R0 K32 ["updateCanvasSize"]
      121 SETTABLE                         R24 R22 R23
      122 GETUPVAL                         R24 3
      123 GETTABLEKS                       R23 R24 K33 ["Ref"]
      125 GETTABLEKS                       R24 R0 K34 ["layoutRef"]
      127 SETTABLE                         R24 R22 R23
      128 CALL                             R20 2 -1
      129 CALL                             R18 -1 1
      130 SETTABLEKS                       R18 R17 K24 ["Layout"]
      132 GETUPVAL                         R19 3
      133 GETTABLEKS                       R18 R19 K27 ["createElement"]
      135 LOADK                            R19 K35 ["UIPadding"]
      136 MOVE                             R20 R15
      137 CALL                             R18 2 1
      138 SETTABLEKS                       R18 R17 K25 ["Padding"]
      140 GETUPVAL                         R19 3
      141 GETTABLEKS                       R18 R19 K36 ["createFragment"]
      143 MOVE                             R19 R8
      144 CALL                             R18 1 1
      145 SETTABLEKS                       R18 R17 K8 ["Children"]
      147 MOVE                             R8 R17
      148 JUMP                             ; [+75]
      149 GETTABLEKS                       R17 R1 K24 ["Layout"]
      151 JUMPIFNOT                        R17 ; [+55]
      152 DUPTABLE                         R17 K26 [{"Layout", "Padding", "Children"}]
      153 GETUPVAL                         R19 3
      154 GETTABLEKS                       R18 R19 K27 ["createElement"]
      156 LOADK                            R19 K14 ["UIListLayout"]
      157 NEWTABLE                         R20 8 0
      159 GETIMPORT                        R21 K39 [Enum.SortOrder.LayoutOrder]
      161 SETTABLEKS                       R21 R20 K38 ["SortOrder"]
      163 GETTABLEKS                       R21 R1 K24 ["Layout"]
      165 SETTABLEKS                       R21 R20 K40 ["FillDirection"]
      167 SETTABLEKS                       R16 R20 K25 ["Padding"]
      169 GETUPVAL                         R23 3
      170 GETTABLEKS                       R22 R23 K30 ["Change"]
      172 GETTABLEKS                       R21 R22 K31 ["AbsoluteContentSize"]
      174 GETTABLEKS                       R22 R0 K32 ["updateCanvasSize"]
      176 SETTABLE                         R22 R20 R21
      177 GETUPVAL                         R22 3
      178 GETTABLEKS                       R21 R22 K33 ["Ref"]
      180 GETTABLEKS                       R22 R0 K34 ["layoutRef"]
      182 SETTABLE                         R22 R20 R21
      183 GETTABLEKS                       R21 R1 K41 ["HorizontalAlignment"]
      185 SETTABLEKS                       R21 R20 K41 ["HorizontalAlignment"]
      187 CALL                             R18 2 1
      188 SETTABLEKS                       R18 R17 K24 ["Layout"]
      190 GETUPVAL                         R19 3
      191 GETTABLEKS                       R18 R19 K27 ["createElement"]
      193 LOADK                            R19 K35 ["UIPadding"]
      194 MOVE                             R20 R15
      195 CALL                             R18 2 1
      196 SETTABLEKS                       R18 R17 K25 ["Padding"]
      198 GETUPVAL                         R19 3
      199 GETTABLEKS                       R18 R19 K36 ["createFragment"]
      201 MOVE                             R19 R8
      202 CALL                             R18 1 1
      203 SETTABLEKS                       R18 R17 K8 ["Children"]
      205 MOVE                             R8 R17
      206 JUMP                             ; [+17]
      207 DUPTABLE                         R17 K42 [{"Padding", "Children"}]
      208 GETUPVAL                         R19 3
      209 GETTABLEKS                       R18 R19 K27 ["createElement"]
      211 LOADK                            R19 K35 ["UIPadding"]
      212 MOVE                             R20 R15
      213 CALL                             R18 2 1
      214 SETTABLEKS                       R18 R17 K25 ["Padding"]
      216 GETUPVAL                         R19 3
      217 GETTABLEKS                       R18 R19 K36 ["createFragment"]
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
      236 GETUPVAL                         R14 2
      237 GETTABLEKS                       R13 R14 K3 ["Tag"]
      239 SETTABLE                         R3 R12 R13
      240 GETUPVAL                         R14 3
      241 GETTABLEKS                       R13 R14 K27 ["createElement"]
      243 GETUPVAL                         R14 6
      244 MOVE                             R15 R12
      245 DUPTABLE                         R16 K47 [{"ScrollBarBackground", "Scroller"}]
      246 MOVE                             R17 R4
      247 JUMPIFNOT                        R17 ; [+41]
      248 GETUPVAL                         R18 3
      249 GETTABLEKS                       R17 R18 K27 ["createElement"]
      251 LOADK                            R18 K48 ["Frame"]
      252 DUPTABLE                         R19 K53 [{"AnchorPoint", "Position", "Size", "BorderSizePixel", "BackgroundColor3", "ZIndex"}]
      253 GETIMPORT                        R20 K55 [Vector2.new]
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
      278 LOADN                            R20 0
      279 SETTABLEKS                       R20 R19 K50 ["BorderSizePixel"]
      281 GETTABLEKS                       R20 R2 K56 ["ScrollBarBackgroundColor"]
      283 SETTABLEKS                       R20 R19 K51 ["BackgroundColor3"]
      285 LOADN                            R20 0
      286 SETTABLEKS                       R20 R19 K52 ["ZIndex"]
      288 CALL                             R17 2 1
      289 SETTABLEKS                       R17 R16 K45 ["ScrollBarBackground"]
      291 GETUPVAL                         R18 3
      292 GETTABLEKS                       R17 R18 K27 ["createElement"]
      294 LOADK                            R18 K57 ["ScrollingFrame"]
      295 MOVE                             R19 R9
      296 MOVE                             R20 R8
      297 CALL                             R17 3 1
      298 SETTABLEKS                       R17 R16 K46 ["Scroller"]
      300 CALL                             R13 3 -1
      301 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K8 ["Util"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K6 [require]
       23 GETTABLEKS                       R4 R0 K9 ["SharedFlags"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R4 R3 K10 ["getFFlagDeveloperFrameworkMigrateStylingV2"]
       28 CALL                             R4 0 1
       29 GETTABLEKS                       R6 R0 K4 ["Parent"]
       31 LOADK                            R8 K11 ["React"]
       32 NAMECALL                         R6 R6 K12 ["FindFirstChild"]
       34 CALL                             R6 2 1
       35 JUMPIFNOT                        R6 ; [+8]
       36 GETIMPORT                        R5 K6 [require]
       38 GETTABLEKS                       R7 R0 K4 ["Parent"]
       40 GETTABLEKS                       R6 R7 K11 ["React"]
       42 CALL                             R5 1 1
       43 JUMP                             ; [+1]
       44 LOADNIL                          R5
       45 GETIMPORT                        R6 K6 [require]
       47 GETTABLEKS                       R8 R0 K13 ["Styling"]
       49 GETTABLEKS                       R7 R8 K14 ["supportsStyleSheets"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K6 [require]
       54 GETTABLEKS                       R9 R0 K13 ["Styling"]
       56 GETTABLEKS                       R8 R9 K15 ["joinTags"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K6 [require]
       61 GETTABLEKS                       R10 R0 K4 ["Parent"]
       63 GETTABLEKS                       R9 R10 K16 ["Cryo"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K6 [require]
       68 GETTABLEKS                       R11 R0 K2 ["UI"]
       70 GETTABLEKS                       R10 R11 K17 ["ContextServices"]
       72 CALL                             R9 1 1
       73 GETTABLEKS                       R10 R9 K18 ["withContext"]
       75 GETIMPORT                        R11 K6 [require]
       77 GETIMPORT                        R14 K1 [script]
       79 GETTABLEKS                       R13 R14 K4 ["Parent"]
       81 GETTABLEKS                       R12 R13 K19 ["Pane"]
       83 CALL                             R11 1 1
       84 GETTABLEKS                       R12 R2 K20 ["prioritize"]
       86 GETIMPORT                        R13 K6 [require]
       88 GETTABLEKS                       R15 R0 K8 ["Util"]
       90 GETTABLEKS                       R14 R15 K21 ["Typecheck"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K6 [require]
       95 GETTABLEKS                       R16 R0 K22 ["Wrappers"]
       97 GETTABLEKS                       R15 R16 K23 ["withForwardRef"]
       99 CALL                             R14 1 1
      100 JUMPIF                           R6 ; [+8]
      101 GETIMPORT                        R15 K6 [require]
      103 GETIMPORT                        R17 K1 [script]
      105 GETTABLEKS                       R16 R17 K24 ["style"]
      107 CALL                             R15 1 1
      108 JUMP                             ; [+1]
      109 LOADNIL                          R15
      110 GETTABLEKS                       R16 R1 K25 ["PureComponent"]
      112 LOADK                            R18 K26 ["ScrollingFrame"]
      113 NAMECALL                         R16 R16 K27 ["extend"]
      115 CALL                             R16 2 1
      116 GETTABLEKS                       R17 R13 K28 ["wrap"]
      118 MOVE                             R18 R16
      119 GETIMPORT                        R19 K1 [script]
      121 CALL                             R17 2 0
      122 GETIMPORT                        R17 K31 [UDim2.fromScale]
      124 LOADN                            R18 0
      125 LOADN                            R19 0
      126 CALL                             R17 2 1
      127 DUPCLOSURE                       R18 K32 [PROTO_4]
      128 CAPTURE                          VAL R1
      129 CAPTURE                          VAL R6
      130 CAPTURE                          VAL R15
      131 CAPTURE                          VAL R8
      132 CAPTURE                          VAL R4
      133 CAPTURE                          VAL R5
      134 CAPTURE                          VAL R17
      135 CAPTURE                          VAL R12
      136 SETTABLEKS                       R18 R16 K33 ["init"]
      138 JUMPIF                           R6 ; [+3]
      139 DUPCLOSURE                       R18 K34 [PROTO_5]
      140 SETTABLEKS                       R18 R16 K35 ["didMount"]
      142 DUPCLOSURE                       R18 K36 [PROTO_6]
      143 SETTABLEKS                       R18 R16 K37 ["checkNextPage"]
      145 DUPCLOSURE                       R18 K38 [PROTO_7]
      146 CAPTURE                          VAL R1
      147 SETTABLEKS                       R18 R16 K39 ["didUpdate"]
      149 DUPCLOSURE                       R18 K40 [PROTO_8]
      150 CAPTURE                          VAL R6
      151 CAPTURE                          VAL R7
      152 CAPTURE                          VAL R5
      153 CAPTURE                          VAL R1
      154 CAPTURE                          VAL R12
      155 CAPTURE                          VAL R8
      156 CAPTURE                          VAL R11
      157 SETTABLEKS                       R18 R16 K41 ["render"]
      159 JUMPIF                           R6 ; [+10]
      160 MOVE                             R18 R10
      161 DUPTABLE                         R19 K43 [{"Stylizer"}]
      162 GETTABLEKS                       R20 R9 K42 ["Stylizer"]
      164 SETTABLEKS                       R20 R19 K42 ["Stylizer"]
      166 CALL                             R18 1 1
      167 MOVE                             R19 R16
      168 CALL                             R18 1 1
      169 MOVE                             R16 R18
      170 MOVE                             R18 R14
      171 MOVE                             R19 R16
      172 CALL                             R18 1 -1
      173 RETURN                           R18 -1
