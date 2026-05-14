PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["tabSetRef"]
        3 GETTABLEKS                       R0 R0 K1 ["current"]
        5 GETTABLEKS                       R0 R0 K2 ["AbsoluteSize"]
        7 GETTABLEKS                       R0 R0 K3 ["x"]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K4 ["state"]
       12 GETTABLEKS                       R1 R1 K5 ["currentWidth"]
       14 JUMPIFEQ                         R1 R0 ; [+8]
       16 GETUPVAL                         R1 0
       17 DUPTABLE                         R3 K6 [{"currentWidth"}]
       18 SETTABLEKS                       R0 R3 K5 ["currentWidth"]
       20 NAMECALL                         R1 R1 K7 ["setState"]
       22 CALL                             R1 2 0
       23 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["onTabSelected"]
        5 JUMPIFNOT                        R1 ; [+7]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["props"]
        9 GETTABLEKS                       R1 R1 K1 ["onTabSelected"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"currentWidth"}]
        1 GETTABLEKS                       R3 R0 K3 ["props"]
        3 GETTABLEKS                       R3 R3 K4 ["InitialWidth"]
        5 ORK                              R2 R3 K2 [0]
        6 SETTABLEKS                       R2 R1 K0 ["currentWidth"]
        8 SETTABLEKS                       R1 R0 K5 ["state"]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K6 ["createRef"]
       13 CALL                             R1 0 1
       14 SETTABLEKS                       R1 R0 K7 ["tabSetRef"]
       16 NEWCLOSURE                       R1 P0
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R1 R0 K8 ["onAbsoluteSizeChange"]
       20 NEWCLOSURE                       R1 P1
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R1 R0 K9 ["onTabSelected"]
       24 RETURN                           R0 0

PROTO_3:
        0 LOADN                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["currentLayout"]
        3 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K1 ["currentLayout"]
        2 ADDK                             R1 R2 K0 [1]
        3 SETTABLEKS                       R1 R0 K1 ["currentLayout"]
        5 GETTABLEKS                       R1 R0 K1 ["currentLayout"]
        7 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onTabSelected"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R8 0
        1 GETTABLEKS                       R8 R8 K0 ["createElement"]
        3 GETUPVAL                         R9 1
        4 DUPTABLE                         R10 K9 [{"Disabled", "LayoutOrder", "Image", "Text", "Selected", "TabWidth", "DisplayText", "onClick"}]
        5 SETTABLEKS                       R7 R10 K1 ["Disabled"]
        7 NAMECALL                         R11 R0 K10 ["nextLayout"]
        9 CALL                             R11 1 1
       10 SETTABLEKS                       R11 R10 K2 ["LayoutOrder"]
       12 SETTABLEKS                       R4 R10 K3 ["Image"]
       14 SETTABLEKS                       R3 R10 K4 ["Text"]
       16 JUMPIFEQ                         R1 R2 ; [+2]
       18 LOADB                            R11 0 +1
       19 LOADB                            R11 1
       20 SETTABLEKS                       R11 R10 K5 ["Selected"]
       22 SETTABLEKS                       R5 R10 K6 ["TabWidth"]
       24 GETUPVAL                         R12 2
       25 CALL                             R12 0 1
       26 JUMPIFNOT                        R12 ; [+9]
       27 GETUPVAL                         R12 3
       28 GETTABLEKS                       R13 R0 K11 ["props"]
       30 GETTABLEKS                       R13 R13 K12 ["IXP"]
       32 CALL                             R12 1 1
       33 JUMPIFNOT                        R12 ; [+2]
       34 LOADNIL                          R11
       35 JUMP                             ; [+1]
       36 MOVE                             R11 R6
       37 SETTABLEKS                       R11 R10 K7 ["DisplayText"]
       39 NEWCLOSURE                       R11 P0
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R1
       42 SETTABLEKS                       R11 R10 K8 ["onClick"]
       44 CALL                             R8 2 -1
       45 RETURN                           R8 -1

PROTO_7:
        0 LENGTH                           R3 R0
        1 LOADN                            R4 0
        2 JUMPIFNOTLT                      R4 R3 ; [+4]
        4 LENGTH                           R3 R0
        5 DIV                              R2 R1 R3
        6 JUMPIF                           R2 ; [+1]
        7 LOADN                            R2 0
        8 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K0 ["FONT_BOLD"]
        6 GETIMPORT                        R5 K3 [Vector2.new]
        8 LOADN                            R6 0
        9 LOADN                            R7 0
       10 CALL                             R5 2 -1
       11 CALL                             R1 -1 1
       12 GETTABLEKS                       R1 R1 K4 ["X"]
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R5 R5 K5 ["TAB_ICON_SIZE"]
       17 ADD                              R4 R1 R5
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R5 R5 K6 ["TAB_INNER_PADDING"]
       21 ADD                              R3 R4 R5
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R5 R5 K8 ["TAB_OUTER_PADDING"]
       25 MULK                             R4 R5 K7 [2]
       26 ADD                              R2 R3 R4
       27 RETURN                           R2 1

PROTO_9:
        0 LENGTH                           R2 R0
        1 LOADN                            R3 0
        2 JUMPIFNOTLT                      R3 R2 ; [+41]
        4 GETIMPORT                        R2 K1 [ipairs]
        6 MOVE                             R3 R0
        7 CALL                             R2 1 3
        8 FORGPREP_INEXT                   R2
        9 GETTABLEKS                       R8 R6 K2 ["Text"]
       11 GETUPVAL                         R9 0
       12 MOVE                             R10 R8
       13 LOADNIL                          R11
       14 GETUPVAL                         R12 1
       15 GETTABLEKS                       R12 R12 K3 ["FONT_BOLD"]
       17 GETIMPORT                        R13 K6 [Vector2.new]
       19 LOADN                            R14 0
       20 LOADN                            R15 0
       21 CALL                             R13 2 -1
       22 CALL                             R9 -1 1
       23 GETTABLEKS                       R9 R9 K7 ["X"]
       25 GETUPVAL                         R12 1
       26 GETTABLEKS                       R12 R12 K8 ["TAB_ICON_SIZE"]
       28 ADD                              R11 R9 R12
       29 GETUPVAL                         R12 1
       30 GETTABLEKS                       R12 R12 K9 ["TAB_INNER_PADDING"]
       32 ADD                              R10 R11 R12
       33 GETUPVAL                         R12 1
       34 GETTABLEKS                       R12 R12 K11 ["TAB_OUTER_PADDING"]
       36 MULK                             R11 R12 K10 [2]
       37 ADD                              R7 R10 R11
       38 JUMPIFNOTLT                      R1 R7 ; [+3]
       40 LOADB                            R8 0
       41 RETURN                           R8 1
       42 FORGLOOP                         R2 2 [inext] ; [-34]
       44 LOADB                            R2 1
       45 RETURN                           R2 1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["Size"]
        8 JUMPIF                           R2 ; [+3]
        9 GETIMPORT                        R2 K5 [UDim2.new]
       11 CALL                             R2 0 1
       12 GETTABLEKS                       R3 R0 K0 ["props"]
       14 GETTABLEKS                       R3 R3 K6 ["Position"]
       16 JUMPIF                           R3 ; [+3]
       17 GETIMPORT                        R3 K5 [UDim2.new]
       19 CALL                             R3 0 1
       20 GETTABLEKS                       R4 R0 K0 ["props"]
       22 GETTABLEKS                       R4 R4 K7 ["Tabs"]
       24 JUMPIF                           R4 ; [+2]
       25 NEWTABLE                         R4 0 0
       27 GETTABLEKS                       R5 R0 K0 ["props"]
       29 GETTABLEKS                       R5 R5 K8 ["CurrentTab"]
       31 GETTABLEKS                       R6 R0 K0 ["props"]
       33 GETTABLEKS                       R6 R6 K9 ["Disabled"]
       35 GETTABLEKS                       R7 R1 K10 ["tabSet"]
       37 GETTABLEKS                       R8 R0 K11 ["state"]
       39 GETTABLEKS                       R8 R8 K12 ["currentWidth"]
       41 NAMECALL                         R9 R0 K13 ["resetLayout"]
       43 CALL                             R9 1 0
       44 DUPTABLE                         R9 K16 [{"Layout", "LeftPadding"}]
       45 GETUPVAL                         R10 0
       46 GETTABLEKS                       R10 R10 K17 ["createElement"]
       48 LOADK                            R11 K18 ["UIListLayout"]
       49 DUPTABLE                         R12 K22 [{"SortOrder", "FillDirection", "HorizontalAlignment"}]
       50 GETIMPORT                        R13 K25 [Enum.SortOrder.LayoutOrder]
       52 SETTABLEKS                       R13 R12 K19 ["SortOrder"]
       54 GETIMPORT                        R13 K27 [Enum.FillDirection.Horizontal]
       56 SETTABLEKS                       R13 R12 K20 ["FillDirection"]
       58 GETIMPORT                        R13 K29 [Enum.HorizontalAlignment.Left]
       60 SETTABLEKS                       R13 R12 K21 ["HorizontalAlignment"]
       62 CALL                             R10 2 1
       63 SETTABLEKS                       R10 R9 K14 ["Layout"]
       65 GETUPVAL                         R10 0
       66 GETTABLEKS                       R10 R10 K17 ["createElement"]
       68 LOADK                            R11 K30 ["Frame"]
       69 DUPTABLE                         R12 K33 [{"LayoutOrder", "Size", "BorderSizePixel", "BackgroundColor3"}]
       70 NAMECALL                         R13 R0 K34 ["nextLayout"]
       72 CALL                             R13 1 1
       73 SETTABLEKS                       R13 R12 K24 ["LayoutOrder"]
       75 GETIMPORT                        R13 K5 [UDim2.new]
       77 LOADN                            R14 0
       78 LOADN                            R15 1
       79 LOADN                            R16 1
       80 LOADN                            R17 0
       81 CALL                             R13 4 1
       82 SETTABLEKS                       R13 R12 K2 ["Size"]
       84 LOADN                            R13 0
       85 SETTABLEKS                       R13 R12 K31 ["BorderSizePixel"]
       87 GETTABLEKS                       R13 R7 K35 ["tabBackground"]
       89 SETTABLEKS                       R13 R12 K32 ["BackgroundColor3"]
       91 CALL                             R10 2 1
       92 SETTABLEKS                       R10 R9 K15 ["LeftPadding"]
       94 LENGTH                           R11 R4
       95 LOADN                            R12 0
       96 JUMPIFNOTLT                      R12 R11 ; [+4]
       98 LENGTH                           R11 R4
       99 DIV                              R10 R8 R11
      100 JUMPIF                           R10 ; [+1]
      101 LOADN                            R10 0
      102 GETUPVAL                         R12 1
      103 CALL                             R12 0 1
      104 JUMPIFNOT                        R12 ; [+9]
      105 GETUPVAL                         R12 2
      106 GETTABLEKS                       R13 R0 K0 ["props"]
      108 GETTABLEKS                       R13 R13 K36 ["IXP"]
      110 CALL                             R12 1 1
      111 JUMPIFNOT                        R12 ; [+2]
      112 LOADNIL                          R11
      113 JUMP                             ; [+4]
      114 GETUPVAL                         R11 3
      115 MOVE                             R12 R4
      116 MOVE                             R13 R10
      117 CALL                             R11 2 1
      118 GETIMPORT                        R12 K38 [ipairs]
      120 MOVE                             R13 R4
      121 CALL                             R12 1 3
      122 FORGPREP_INEXT                   R12
      123 GETTABLEKS                       R17 R16 K39 ["Key"]
      125 GETTABLEKS                       R20 R16 K39 ["Key"]
      127 MOVE                             R21 R5
      128 GETTABLEKS                       R22 R16 K40 ["Text"]
      130 GETTABLEKS                       R23 R16 K41 ["Image"]
      132 MOVE                             R24 R10
      133 MOVE                             R25 R11
      134 MOVE                             R26 R6
      135 NAMECALL                         R18 R0 K42 ["createTab"]
      137 CALL                             R18 8 1
      138 SETTABLE                         R18 R9 R17
      139 FORGLOOP                         R12 2 [inext] ; [-17]
      141 GETUPVAL                         R12 0
      142 GETTABLEKS                       R12 R12 K17 ["createElement"]
      144 LOADK                            R13 K30 ["Frame"]
      145 DUPTABLE                         R14 K33 [{"LayoutOrder", "Size", "BorderSizePixel", "BackgroundColor3"}]
      146 NAMECALL                         R15 R0 K34 ["nextLayout"]
      148 CALL                             R15 1 1
      149 SETTABLEKS                       R15 R14 K24 ["LayoutOrder"]
      151 GETIMPORT                        R15 K5 [UDim2.new]
      153 LOADN                            R16 1
      154 LOADN                            R17 0
      155 LOADN                            R18 1
      156 LOADN                            R19 0
      157 CALL                             R15 4 1
      158 SETTABLEKS                       R15 R14 K2 ["Size"]
      160 LOADN                            R15 0
      161 SETTABLEKS                       R15 R14 K31 ["BorderSizePixel"]
      163 GETTABLEKS                       R15 R7 K35 ["tabBackground"]
      165 SETTABLEKS                       R15 R14 K32 ["BackgroundColor3"]
      167 DUPTABLE                         R15 K44 [{"LowerBorder"}]
      168 GETUPVAL                         R16 0
      169 GETTABLEKS                       R16 R16 K17 ["createElement"]
      171 LOADK                            R17 K30 ["Frame"]
      172 DUPTABLE                         R18 K46 [{"Size", "AnchorPoint", "Position", "BorderSizePixel", "BackgroundColor3"}]
      173 GETIMPORT                        R19 K5 [UDim2.new]
      175 LOADN                            R20 1
      176 LOADN                            R21 0
      177 LOADN                            R22 0
      178 LOADN                            R23 2
      179 CALL                             R19 4 1
      180 SETTABLEKS                       R19 R18 K2 ["Size"]
      182 GETIMPORT                        R19 K48 [Vector2.new]
      184 LOADN                            R20 0
      185 LOADN                            R21 1
      186 CALL                             R19 2 1
      187 SETTABLEKS                       R19 R18 K45 ["AnchorPoint"]
      189 GETIMPORT                        R19 K5 [UDim2.new]
      191 LOADN                            R20 0
      192 LOADN                            R21 0
      193 LOADN                            R22 1
      194 LOADN                            R23 0
      195 CALL                             R19 4 1
      196 SETTABLEKS                       R19 R18 K6 ["Position"]
      198 LOADN                            R19 0
      199 SETTABLEKS                       R19 R18 K31 ["BorderSizePixel"]
      201 GETTABLEKS                       R19 R7 K49 ["borderColor"]
      203 SETTABLEKS                       R19 R18 K32 ["BackgroundColor3"]
      205 CALL                             R16 2 1
      206 SETTABLEKS                       R16 R15 K43 ["LowerBorder"]
      208 CALL                             R12 3 1
      209 SETTABLEKS                       R12 R9 K50 ["RightPadding"]
      211 GETUPVAL                         R12 0
      212 GETTABLEKS                       R12 R12 K17 ["createElement"]
      214 LOADK                            R13 K30 ["Frame"]
      215 NEWTABLE                         R14 8 0
      217 SETTABLEKS                       R2 R14 K2 ["Size"]
      219 SETTABLEKS                       R3 R14 K6 ["Position"]
      221 GETTABLEKS                       R15 R7 K51 ["backgroundColor"]
      223 SETTABLEKS                       R15 R14 K32 ["BackgroundColor3"]
      225 LOADN                            R15 0
      226 SETTABLEKS                       R15 R14 K31 ["BorderSizePixel"]
      228 GETUPVAL                         R15 0
      229 GETTABLEKS                       R15 R15 K52 ["Ref"]
      231 GETTABLEKS                       R16 R0 K53 ["tabSetRef"]
      233 SETTABLE                         R16 R14 R15
      234 GETUPVAL                         R15 0
      235 GETTABLEKS                       R15 R15 K54 ["Change"]
      237 GETTABLEKS                       R15 R15 K55 ["AbsoluteSize"]
      239 GETTABLEKS                       R16 R0 K56 ["onAbsoluteSizeChange"]
      241 SETTABLE                         R16 R14 R15
      242 LOADN                            R16 0
      243 JUMPIFNOTLE                      R8 R16 ; [+3]
      245 LOADNIL                          R15
      246 JUMP                             ; [+1]
      247 MOVE                             R15 R9
      248 CALL                             R12 3 -1
      249 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Roact"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K7 ["Framework"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Src"]
       25 GETTABLEKS                       R5 R5 K9 ["Util"]
       27 GETTABLEKS                       R5 R5 K10 ["Constants"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R0 K8 ["Src"]
       34 GETTABLEKS                       R6 R6 K11 ["ContextServices"]
       36 GETTABLEKS                       R6 R6 K12 ["IXPContext"]
       38 CALL                             R5 1 1
       39 GETTABLEKS                       R6 R3 K11 ["ContextServices"]
       41 GETTABLEKS                       R7 R6 K13 ["withContext"]
       43 GETTABLEKS                       R8 R3 K9 ["Util"]
       45 GETTABLEKS                       R8 R8 K14 ["GetTextSize"]
       47 GETIMPORT                        R9 K5 [require]
       49 GETTABLEKS                       R10 R0 K8 ["Src"]
       51 GETTABLEKS                       R10 R10 K15 ["Components"]
       53 GETTABLEKS                       R10 R10 K16 ["Tab"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K5 [require]
       58 GETTABLEKS                       R11 R0 K8 ["Src"]
       60 GETTABLEKS                       R11 R11 K9 ["Util"]
       62 GETTABLEKS                       R11 R11 K17 ["SharedFlags"]
       64 GETTABLEKS                       R11 R11 K18 ["getFFlagToolboxContentManagementCombineTabs"]
       66 CALL                             R10 1 1
       67 GETIMPORT                        R11 K5 [require]
       69 GETTABLEKS                       R12 R0 K8 ["Src"]
       71 GETTABLEKS                       R12 R12 K9 ["Util"]
       73 GETTABLEKS                       R12 R12 K17 ["SharedFlags"]
       75 GETTABLEKS                       R12 R12 K19 ["getIsIXPEnabledForListView"]
       77 CALL                             R11 1 1
       78 GETTABLEKS                       R12 R2 K20 ["PureComponent"]
       80 LOADK                            R14 K21 ["TabSet"]
       81 NAMECALL                         R12 R12 K22 ["extend"]
       83 CALL                             R12 2 1
       84 DUPCLOSURE                       R13 K23 [PROTO_2]
       85 CAPTURE                          VAL R2
       86 SETTABLEKS                       R13 R12 K24 ["init"]
       88 DUPCLOSURE                       R13 K25 [PROTO_3]
       89 SETTABLEKS                       R13 R12 K26 ["resetLayout"]
       91 DUPCLOSURE                       R13 K27 [PROTO_4]
       92 SETTABLEKS                       R13 R12 K28 ["nextLayout"]
       94 DUPCLOSURE                       R13 K29 [PROTO_6]
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R10
       98 CAPTURE                          VAL R11
       99 SETTABLEKS                       R13 R12 K30 ["createTab"]
      101 DUPCLOSURE                       R13 K31 [PROTO_7]
      102 DUPCLOSURE                       R14 K32 [PROTO_8]
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R4
      105 DUPCLOSURE                       R15 K33 [PROTO_9]
      106 CAPTURE                          VAL R8
      107 CAPTURE                          VAL R4
      108 DUPCLOSURE                       R16 K34 [PROTO_10]
      109 CAPTURE                          VAL R2
      110 CAPTURE                          VAL R10
      111 CAPTURE                          VAL R11
      112 CAPTURE                          VAL R15
      113 SETTABLEKS                       R16 R12 K35 ["render"]
      115 MOVE                             R16 R7
      116 DUPTABLE                         R17 K38 [{"IXP", "Stylizer"}]
      117 MOVE                             R19 R10
      118 CALL                             R19 0 1
      119 JUMPIFNOT                        R19 ; [+2]
      120 MOVE                             R18 R5
      121 JUMP                             ; [+1]
      122 LOADNIL                          R18
      123 SETTABLEKS                       R18 R17 K36 ["IXP"]
      125 GETTABLEKS                       R18 R6 K37 ["Stylizer"]
      127 SETTABLEKS                       R18 R17 K37 ["Stylizer"]
      129 CALL                             R16 1 1
      130 MOVE                             R17 R12
      131 CALL                             R16 1 1
      132 MOVE                             R12 R16
      133 RETURN                           R12 1
