PROTO_0:
        0 DUPTABLE                         R4 K2 [{"HeaderLayout", "Padding"}]
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R5 R5 K3 ["createElement"]
        4 LOADK                            R6 K4 ["UIListLayout"]
        5 DUPTABLE                         R7 K9 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
        6 GETIMPORT                        R8 K12 [Enum.FillDirection.Horizontal]
        8 SETTABLEKS                       R8 R7 K5 ["FillDirection"]
       10 GETIMPORT                        R8 K14 [Enum.HorizontalAlignment.Left]
       12 SETTABLEKS                       R8 R7 K6 ["HorizontalAlignment"]
       14 GETIMPORT                        R8 K16 [Enum.VerticalAlignment.Center]
       16 SETTABLEKS                       R8 R7 K7 ["VerticalAlignment"]
       18 GETIMPORT                        R8 K18 [Enum.SortOrder.LayoutOrder]
       20 SETTABLEKS                       R8 R7 K8 ["SortOrder"]
       22 CALL                             R5 2 1
       23 SETTABLEKS                       R5 R4 K0 ["HeaderLayout"]
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R5 R5 K3 ["createElement"]
       28 LOADK                            R6 K19 ["UIPadding"]
       29 DUPTABLE                         R7 K22 [{"PaddingLeft", "PaddingRight"}]
       30 GETIMPORT                        R8 K25 [UDim.new]
       32 LOADN                            R9 0
       33 GETTABLEKS                       R10 R1 K26 ["table"]
       35 GETTABLEKS                       R10 R10 K27 ["textPadding"]
       37 CALL                             R8 2 1
       38 SETTABLEKS                       R8 R7 K20 ["PaddingLeft"]
       40 GETIMPORT                        R8 K25 [UDim.new]
       42 LOADN                            R9 0
       43 GETTABLEKS                       R10 R1 K26 ["table"]
       45 GETTABLEKS                       R10 R10 K27 ["textPadding"]
       47 CALL                             R8 2 1
       48 SETTABLEKS                       R8 R7 K21 ["PaddingRight"]
       50 CALL                             R5 2 1
       51 SETTABLEKS                       R5 R4 K1 ["Padding"]
       53 LENGTH                           R5 R2
       54 LOADN                            R8 1
       55 LENGTH                           R6 R2
       56 LOADN                            R7 1
       57 FORNPREP                         R6
       58 GETUPVAL                         R9 0
       59 GETTABLEKS                       R9 R9 K3 ["createElement"]
       61 LOADK                            R10 K28 ["TextLabel"]
       62 GETUPVAL                         R11 1
       63 GETTABLEKS                       R11 R11 K29 ["Dictionary"]
       65 GETTABLEKS                       R11 R11 K30 ["join"]
       67 GETTABLEKS                       R12 R1 K31 ["fontStyle"]
       69 GETTABLEKS                       R12 R12 K32 ["Normal"]
       71 DUPTABLE                         R13 K39 [{"Size", "LayoutOrder", "Text", "BackgroundTransparency", "BorderSizePixel", "TextXAlignment", "TextTruncate"}]
       72 GETIMPORT                        R14 K41 [UDim2.new]
       74 DIVRK                            R15 R42 K5 ["FillDirection"]
       75 LOADN                            R16 0
       76 LOADN                            R17 1
       77 LOADN                            R18 0
       78 CALL                             R14 4 1
       79 SETTABLEKS                       R14 R13 K33 ["Size"]
       81 SETTABLEKS                       R8 R13 K17 ["LayoutOrder"]
       83 GETTABLE                         R14 R2 R8
       84 SETTABLEKS                       R14 R13 K34 ["Text"]
       86 LOADN                            R14 1
       87 SETTABLEKS                       R14 R13 K35 ["BackgroundTransparency"]
       89 LOADN                            R14 0
       90 SETTABLEKS                       R14 R13 K36 ["BorderSizePixel"]
       92 GETIMPORT                        R14 K43 [Enum.TextXAlignment.Left]
       94 SETTABLEKS                       R14 R13 K37 ["TextXAlignment"]
       96 GETIMPORT                        R14 K45 [Enum.TextTruncate.AtEnd]
       98 SETTABLEKS                       R14 R13 K38 ["TextTruncate"]
      100 CALL                             R11 2 -1
      101 CALL                             R9 -1 1
      102 SETTABLE                         R9 R4 R8
      103 FORNLOOP                         R6
      104 JUMPIFNOT                        R3 ; [+30]
      105 GETUPVAL                         R6 0
      106 GETTABLEKS                       R6 R6 K3 ["createElement"]
      108 LOADK                            R7 K46 ["Frame"]
      109 DUPTABLE                         R8 K47 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
      110 LOADN                            R9 1
      111 SETTABLEKS                       R9 R8 K35 ["BackgroundTransparency"]
      113 LENGTH                           R10 R2
      114 ADDK                             R9 R10 K42 [1]
      115 SETTABLEKS                       R9 R8 K17 ["LayoutOrder"]
      117 GETIMPORT                        R9 K41 [UDim2.new]
      119 LOADN                            R10 0
      120 LOADN                            R11 0
      121 LOADN                            R12 1
      122 LOADN                            R13 0
      123 CALL                             R9 4 1
      124 SETTABLEKS                       R9 R8 K33 ["Size"]
      126 NEWTABLE                         R9 0 1
      128 MOVE                             R10 R3
      129 SETLIST                          R9 R10 1 [1]
      131 CALL                             R6 3 1
      132 LENGTH                           R8 R2
      133 ADDK                             R7 R8 K42 [1]
      134 SETTABLE                         R6 R4 R7
      135 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R5 K1 [{"ListLayout"}]
        1 GETUPVAL                         R6 0
        2 GETTABLEKS                       R6 R6 K2 ["createElement"]
        4 LOADK                            R7 K3 ["UIListLayout"]
        5 NEWTABLE                         R8 8 0
        7 GETIMPORT                        R9 K7 [Enum.FillDirection.Vertical]
        9 SETTABLEKS                       R9 R8 K5 ["FillDirection"]
       11 GETIMPORT                        R9 K10 [Enum.HorizontalAlignment.Left]
       13 SETTABLEKS                       R9 R8 K8 ["HorizontalAlignment"]
       15 GETIMPORT                        R9 K13 [Enum.VerticalAlignment.Top]
       17 SETTABLEKS                       R9 R8 K11 ["VerticalAlignment"]
       19 GETIMPORT                        R9 K16 [Enum.SortOrder.LayoutOrder]
       21 SETTABLEKS                       R9 R8 K14 ["SortOrder"]
       23 GETUPVAL                         R9 0
       24 GETTABLEKS                       R9 R9 K17 ["Ref"]
       26 GETTABLEKS                       R10 R0 K18 ["layoutRef"]
       28 SETTABLE                         R10 R8 R9
       29 CALL                             R6 2 1
       30 SETTABLEKS                       R6 R5 K0 ["ListLayout"]
       32 LOADN                            R6 0
       33 GETIMPORT                        R7 K20 [pairs]
       35 MOVE                             R8 R1
       36 CALL                             R7 1 3
       37 FORGPREP_NEXT                    R7
       38 LOADNIL                          R12
       39 JUMPIFNOT                        R4 ; [+15]
       40 NEWTABLE                         R13 0 1
       42 FASTCALL1                        TABLE_UNPACK R2 ; [+3]
       43 MOVE                             R15 R2
       44 GETIMPORT                        R14 K22 [unpack]
       46 CALL                             R14 1 -1
       47 SETLIST                          R13 R14 -1 [1]
       49 MOVE                             R12 R13
       50 MOVE                             R13 R4
       51 MOVE                             R14 R11
       52 MOVE                             R15 R12
       53 CALL                             R13 2 0
       54 JUMP                             ; [+1]
       55 MOVE                             R12 R2
       56 GETUPVAL                         R13 0
       57 GETTABLEKS                       R13 R13 K2 ["createElement"]
       59 GETUPVAL                         R14 1
       60 DUPTABLE                         R15 K27 [{"RowData", "MenuItems", "OnItemClicked", "LayoutOrder", "Icon"}]
       61 GETTABLEKS                       R16 R11 K28 ["row"]
       63 SETTABLEKS                       R16 R15 K23 ["RowData"]
       65 SETTABLEKS                       R12 R15 K24 ["MenuItems"]
       67 NEWCLOSURE                       R16 P0
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R10
       70 SETTABLEKS                       R16 R15 K25 ["OnItemClicked"]
       72 GETTABLEKS                       R16 R11 K29 ["index"]
       74 SETTABLEKS                       R16 R15 K15 ["LayoutOrder"]
       76 GETTABLEKS                       R17 R11 K31 ["icon"]
       78 ORK                              R16 R17 K30 []
       79 SETTABLEKS                       R16 R15 K26 ["Icon"]
       81 CALL                             R13 2 1
       82 SETTABLE                         R13 R5 R10
       83 ADDK                             R6 R6 K32 [1]
       84 FORGLOOP                         R7 2 ; [-47]
       86 RETURN                           R5 2

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["layoutRef"]
        6 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Headers"]
        6 GETTABLEKS                       R4 R1 K3 ["Data"]
        8 GETTABLEKS                       R5 R1 K4 ["MenuItems"]
       10 GETTABLEKS                       R6 R1 K5 ["OnItemClicked"]
       12 GETTABLEKS                       R7 R1 K6 ["LayoutOrder"]
       14 GETTABLEKS                       R8 R1 K7 ["NextPageFunc"]
       16 JUMPIF                           R8 ; [+1]
       17 DUPCLOSURE                       R8 K8 [PROTO_4]
       18 GETTABLEKS                       R9 R1 K9 ["MenuItemsFilterFunc"]
       20 GETTABLEKS                       R10 R1 K10 ["ScrollingFrameNextPageRequestDistance"]
       22 GETTABLEKS                       R11 R1 K11 ["HeaderButton"]
       24 GETTABLEKS                       R12 R1 K12 ["TableHeight"]
       26 JUMPIF                           R12 ; [+4]
       27 GETTABLEKS                       R12 R2 K13 ["table"]
       29 GETTABLEKS                       R12 R12 K14 ["height"]
       31 GETTABLEKS                       R13 R1 K15 ["ShowTableBackground"]
       33 MOVE                             R16 R2
       34 MOVE                             R17 R3
       35 MOVE                             R18 R11
       36 NAMECALL                         R14 R0 K16 ["createHeaderLabels"]
       38 CALL                             R14 4 1
       39 MOVE                             R17 R4
       40 MOVE                             R18 R5
       41 MOVE                             R19 R6
       42 MOVE                             R20 R9
       43 NAMECALL                         R15 R0 K17 ["createDataLabels"]
       45 CALL                             R15 5 2
       46 JUMPIFNOTEQKN                    R16 K18 [0] ; [+4]
       48 GETTABLEKS                       R17 R1 K19 ["EmptyText"]
       50 JUMPIF                           R17 ; [+1]
       51 LOADNIL                          R17
       52 JUMPIFNOT                        R13 ; [+7]
       53 GETTABLEKS                       R18 R2 K13 ["table"]
       55 GETTABLEKS                       R18 R18 K20 ["item"]
       57 GETTABLEKS                       R18 R18 K21 ["background"]
       59 JUMPIF                           R18 ; [+1]
       60 LOADNIL                          R18
       61 GETIMPORT                        R19 K24 [UDim2.new]
       63 LOADN                            R20 1
       64 LOADN                            R21 0
       65 LOADN                            R22 1
       66 GETTABLEKS                       R24 R2 K13 ["table"]
       68 GETTABLEKS                       R24 R24 K25 ["header"]
       70 GETTABLEKS                       R24 R24 K14 ["height"]
       72 MINUS                            R23 R24
       73 CALL                             R19 4 1
       74 GETUPVAL                         R20 0
       75 GETTABLEKS                       R20 R20 K26 ["createElement"]
       77 LOADK                            R21 K27 ["Frame"]
       78 DUPTABLE                         R22 K30 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
       79 GETIMPORT                        R23 K24 [UDim2.new]
       81 LOADN                            R24 1
       82 LOADN                            R25 0
       83 LOADN                            R26 0
       84 MOVE                             R27 R12
       85 CALL                             R23 4 1
       86 SETTABLEKS                       R23 R22 K28 ["Size"]
       88 LOADN                            R23 1
       89 SETTABLEKS                       R23 R22 K29 ["BackgroundTransparency"]
       91 SETTABLEKS                       R7 R22 K6 ["LayoutOrder"]
       93 DUPTABLE                         R23 K35 [{"ListLayout", "HeaderFrame", "ScrollingContainer", "EmptyTextBox"}]
       94 GETUPVAL                         R24 0
       95 GETTABLEKS                       R24 R24 K26 ["createElement"]
       97 LOADK                            R25 K36 ["UIListLayout"]
       98 DUPTABLE                         R26 K41 [{"SortOrder", "VerticalAlignment", "FillDirection", "HorizontalAlignment"}]
       99 GETIMPORT                        R27 K43 [Enum.SortOrder.LayoutOrder]
      101 SETTABLEKS                       R27 R26 K37 ["SortOrder"]
      103 GETIMPORT                        R27 K45 [Enum.VerticalAlignment.Top]
      105 SETTABLEKS                       R27 R26 K38 ["VerticalAlignment"]
      107 GETIMPORT                        R27 K47 [Enum.FillDirection.Vertical]
      109 SETTABLEKS                       R27 R26 K39 ["FillDirection"]
      111 GETIMPORT                        R27 K49 [Enum.HorizontalAlignment.Left]
      113 SETTABLEKS                       R27 R26 K40 ["HorizontalAlignment"]
      115 CALL                             R24 2 1
      116 SETTABLEKS                       R24 R23 K31 ["ListLayout"]
      118 GETUPVAL                         R24 0
      119 GETTABLEKS                       R24 R24 K26 ["createElement"]
      121 LOADK                            R25 K27 ["Frame"]
      122 DUPTABLE                         R26 K30 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
      123 GETIMPORT                        R27 K24 [UDim2.new]
      125 LOADN                            R28 1
      126 LOADN                            R29 0
      127 LOADN                            R30 0
      128 GETTABLEKS                       R31 R2 K13 ["table"]
      130 GETTABLEKS                       R31 R31 K25 ["header"]
      132 GETTABLEKS                       R31 R31 K14 ["height"]
      134 CALL                             R27 4 1
      135 SETTABLEKS                       R27 R26 K28 ["Size"]
      137 LOADN                            R27 1
      138 SETTABLEKS                       R27 R26 K29 ["BackgroundTransparency"]
      140 LOADN                            R27 1
      141 SETTABLEKS                       R27 R26 K6 ["LayoutOrder"]
      143 MOVE                             R27 R14
      144 CALL                             R24 3 1
      145 SETTABLEKS                       R24 R23 K32 ["HeaderFrame"]
      147 NOT                              R24 R17
      148 JUMPIFNOT                        R24 ; [+20]
      149 GETUPVAL                         R24 0
      150 GETTABLEKS                       R24 R24 K26 ["createElement"]
      152 GETUPVAL                         R25 1
      153 DUPTABLE                         R26 K52 [{"AutomaticCanvasSize", "Size", "NextPageFunc", "NextPageRequestDistance", "LayoutOrder"}]
      154 GETIMPORT                        R27 K55 [Enum.AutomaticSize.Y]
      156 SETTABLEKS                       R27 R26 K50 ["AutomaticCanvasSize"]
      158 SETTABLEKS                       R19 R26 K28 ["Size"]
      160 SETTABLEKS                       R8 R26 K7 ["NextPageFunc"]
      162 SETTABLEKS                       R10 R26 K51 ["NextPageRequestDistance"]
      164 LOADN                            R27 2
      165 SETTABLEKS                       R27 R26 K6 ["LayoutOrder"]
      167 MOVE                             R27 R15
      168 CALL                             R24 3 1
      169 SETTABLEKS                       R24 R23 K33 ["ScrollingContainer"]
      171 MOVE                             R24 R17
      172 JUMPIFNOT                        R24 ; [+43]
      173 GETUPVAL                         R24 0
      174 GETTABLEKS                       R24 R24 K26 ["createElement"]
      176 LOADK                            R25 K56 ["TextLabel"]
      177 GETUPVAL                         R26 2
      178 GETTABLEKS                       R26 R26 K57 ["Dictionary"]
      180 GETTABLEKS                       R26 R26 K58 ["join"]
      182 GETTABLEKS                       R27 R2 K59 ["fontStyle"]
      184 GETTABLEKS                       R27 R27 K60 ["Smaller"]
      186 DUPTABLE                         R28 K66 [{"Size", "LayoutOrder", "Text", "BackgroundTransparency", "BackgroundColor3", "BorderColor3", "TextXAlignment", "TextTruncate"}]
      187 SETTABLEKS                       R19 R28 K28 ["Size"]
      189 LOADN                            R29 2
      190 SETTABLEKS                       R29 R28 K6 ["LayoutOrder"]
      192 SETTABLEKS                       R17 R28 K61 ["Text"]
      194 JUMPIFNOT                        R13 ; [+2]
      195 LOADN                            R29 0
      196 JUMP                             ; [+1]
      197 LOADN                            R29 1
      198 SETTABLEKS                       R29 R28 K29 ["BackgroundTransparency"]
      200 SETTABLEKS                       R18 R28 K62 ["BackgroundColor3"]
      202 SETTABLEKS                       R18 R28 K63 ["BorderColor3"]
      204 GETIMPORT                        R29 K68 [Enum.TextXAlignment.Center]
      206 SETTABLEKS                       R29 R28 K64 ["TextXAlignment"]
      208 GETIMPORT                        R29 K70 [Enum.TextTruncate.AtEnd]
      210 SETTABLEKS                       R29 R28 K65 ["TextTruncate"]
      212 CALL                             R26 2 1
      213 NEWTABLE                         R27 0 0
      215 CALL                             R24 3 1
      216 SETTABLEKS                       R24 R23 K34 ["EmptyTextBox"]
      218 CALL                             R20 3 -1
      219 RETURN                           R20 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K9 ["UI"]
       32 GETTABLEKS                       R5 R4 K10 ["ScrollingFrame"]
       34 GETTABLEKS                       R6 R3 K11 ["ContextServices"]
       36 GETTABLEKS                       R7 R6 K12 ["withContext"]
       38 GETIMPORT                        R8 K4 [require]
       40 GETTABLEKS                       R9 R0 K13 ["Src"]
       42 GETTABLEKS                       R9 R9 K14 ["Components"]
       44 GETTABLEKS                       R9 R9 K15 ["TableWithMenuItem"]
       46 CALL                             R8 1 1
       47 GETTABLEKS                       R9 R1 K16 ["PureComponent"]
       49 LOADK                            R11 K17 ["TableWithMenu"]
       50 NAMECALL                         R9 R9 K18 ["extend"]
       52 CALL                             R9 2 1
       53 DUPCLOSURE                       R10 K19 [PROTO_0]
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R2
       56 SETTABLEKS                       R10 R9 K20 ["createHeaderLabels"]
       58 DUPCLOSURE                       R10 K21 [PROTO_2]
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R8
       61 SETTABLEKS                       R10 R9 K22 ["createDataLabels"]
       63 DUPCLOSURE                       R10 K23 [PROTO_3]
       64 CAPTURE                          VAL R1
       65 SETTABLEKS                       R10 R9 K24 ["init"]
       67 DUPCLOSURE                       R10 K25 [PROTO_5]
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R2
       71 SETTABLEKS                       R10 R9 K26 ["render"]
       73 MOVE                             R10 R7
       74 DUPTABLE                         R11 K28 [{"Stylizer"}]
       75 GETTABLEKS                       R12 R6 K27 ["Stylizer"]
       77 SETTABLEKS                       R12 R11 K27 ["Stylizer"]
       79 CALL                             R10 1 1
       80 MOVE                             R11 R9
       81 CALL                             R10 1 1
       82 MOVE                             R9 R10
       83 RETURN                           R9 1
