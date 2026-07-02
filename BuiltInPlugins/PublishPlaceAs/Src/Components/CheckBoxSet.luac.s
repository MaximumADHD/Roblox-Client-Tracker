PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Title"]
        6 GETTABLEKS                       R5 R1 K4 ["LayoutOrder"]
        8 ORK                              R4 R5 K3 [1]
        9 GETTABLEKS                       R5 R1 K5 ["Boxes"]
       11 GETTABLEKS                       R7 R1 K6 ["Enabled"]
       13 JUMPIFNOTEQKNIL                  R7 ; [+3]
       15 LOADB                            R6 1
       16 JUMP                             ; [+2]
       17 GETTABLEKS                       R6 R1 K6 ["Enabled"]
       19 GETTABLEKS                       R7 R1 K7 ["EntryClicked"]
       21 GETTABLEKS                       R8 R1 K8 ["ErrorMessage"]
       23 FASTCALL1                        TYPE R5 ; [+3]
       24 MOVE                             R12 R5
       25 GETIMPORT                        R11 K10 [type]
       27 CALL                             R11 1 1
       28 JUMPIFEQKS                       R11 K11 ["table"] ; [+2]
       30 LOADB                            R10 0 +1
       31 LOADB                            R10 1
       32 FASTCALL2K                       ASSERT R10 K12 ; [+4]
       34 LOADK                            R11 K12 ["CheckBoxSet.Boxes must be a table"]
       35 GETIMPORT                        R9 K14 [assert]
       37 CALL                             R9 2 0
       38 DUPTABLE                         R9 K16 [{"Layout"}]
       39 GETUPVAL                         R10 0
       40 GETTABLEKS                       R10 R10 K17 ["createElement"]
       42 LOADK                            R11 K18 ["UIListLayout"]
       43 DUPTABLE                         R12 K21 [{"Padding", "SortOrder"}]
       44 GETIMPORT                        R13 K24 [UDim.new]
       46 LOADN                            R14 0
       47 LOADN                            R15 8
       48 CALL                             R13 2 1
       49 SETTABLEKS                       R13 R12 K19 ["Padding"]
       51 GETIMPORT                        R13 K26 [Enum.SortOrder.LayoutOrder]
       53 SETTABLEKS                       R13 R12 K20 ["SortOrder"]
       55 CALL                             R10 2 1
       56 SETTABLEKS                       R10 R9 K15 ["Layout"]
       58 LOADNIL                          R10
       59 MOVE                             R11 R9
       60 GETTABLEKS                       R12 R1 K27 ["UseGridLayout"]
       62 JUMPIFNOT                        R12 ; [+50]
       63 NEWTABLE                         R12 0 1
       65 GETUPVAL                         R13 0
       66 GETTABLEKS                       R13 R13 K17 ["createElement"]
       68 LOADK                            R14 K28 ["UIGridLayout"]
       69 NEWTABLE                         R15 8 0
       71 GETIMPORT                        R16 K30 [UDim2.new]
       73 LOADN                            R17 0
       74 GETTABLEKS                       R18 R2 K31 ["SCREEN_CHOOSE_GAME"]
       76 GETTABLEKS                       R18 R18 K32 ["ICON_SIZE"]
       78 LOADN                            R19 0
       79 LOADN                            R20 25
       80 CALL                             R16 4 1
       81 SETTABLEKS                       R16 R15 K33 ["CellSize"]
       83 GETIMPORT                        R16 K30 [UDim2.new]
       85 LOADN                            R17 0
       86 GETTABLEKS                       R18 R2 K31 ["SCREEN_CHOOSE_GAME"]
       88 GETTABLEKS                       R18 R18 K34 ["CELL_PADDING_X"]
       90 LOADN                            R19 0
       91 LOADN                            R20 2
       92 CALL                             R16 4 1
       93 SETTABLEKS                       R16 R15 K35 ["CellPadding"]
       95 GETUPVAL                         R16 0
       96 GETTABLEKS                       R16 R16 K36 ["Ref"]
       98 GETTABLEKS                       R17 R0 K37 ["layoutRef"]
      100 SETTABLE                         R17 R15 R16
      101 LOADN                            R16 2
      102 SETTABLEKS                       R16 R15 K38 ["FillDirectionMaxCells"]
      104 GETIMPORT                        R16 K41 [Enum.FillDirection.Vertical]
      106 SETTABLEKS                       R16 R15 K39 ["FillDirection"]
      108 CALL                             R13 2 -1
      109 SETLIST                          R12 R13 -1 [1]
      111 MOVE                             R10 R12
      112 MOVE                             R11 R10
      113 GETIMPORT                        R12 K43 [ipairs]
      115 MOVE                             R13 R5
      116 CALL                             R12 1 3
      117 FORGPREP_INEXT                   R12
      118 MOVE                             R18 R11
      119 GETUPVAL                         R19 0
      120 GETTABLEKS                       R19 R19 K17 ["createElement"]
      122 GETUPVAL                         R20 1
      123 DUPTABLE                         R21 K49 [{"Checked", "Disabled", "Key", "LayoutOrder", "OnClick", "Text"}]
      124 LOADB                            R22 0
      125 GETTABLEKS                       R23 R16 K50 ["Selected"]
      127 JUMPIFEQKNIL                     R23 ; [+3]
      129 GETTABLEKS                       R22 R16 K50 ["Selected"]
      131 SETTABLEKS                       R22 R21 K44 ["Checked"]
      133 NOT                              R22 R6
      134 SETTABLEKS                       R22 R21 K45 ["Disabled"]
      136 GETTABLEKS                       R22 R16 K51 ["Id"]
      138 SETTABLEKS                       R22 R21 K46 ["Key"]
      140 SETTABLEKS                       R15 R21 K4 ["LayoutOrder"]
      142 NEWCLOSURE                       R22 P0
      143 CAPTURE                          VAL R7
      144 CAPTURE                          VAL R16
      145 SETTABLEKS                       R22 R21 K47 ["OnClick"]
      147 GETTABLEKS                       R22 R16 K2 ["Title"]
      149 SETTABLEKS                       R22 R21 K48 ["Text"]
      151 DUPTABLE                         R22 K53 [{"Link"}]
      152 GETTABLEKS                       R23 R16 K54 ["LinkTextFrame"]
      154 SETTABLEKS                       R23 R22 K52 ["Link"]
      156 CALL                             R19 3 -1
      157 FASTCALL                         TABLE_INSERT ; [+2]
      158 GETIMPORT                        R17 K56 [table.insert]
      160 CALL                             R17 -1 0
      161 FORGLOOP                         R12 2 [inext] ; [-44]
      163 GETTABLEKS                       R12 R1 K27 ["UseGridLayout"]
      165 JUMPIFNOT                        R12 ; [+14]
      166 GETIMPORT                        R12 K43 [ipairs]
      168 MOVE                             R13 R10
      169 CALL                             R12 1 3
      170 FORGPREP_INEXT                   R12
      171 FASTCALL2                        TABLE_INSERT R9 R16 ; [+5]
      173 MOVE                             R18 R9
      174 MOVE                             R19 R16
      175 GETIMPORT                        R17 K56 [table.insert]
      177 CALL                             R17 2 0
      178 FORGLOOP                         R12 2 [inext] ; [-8]
      180 GETUPVAL                         R13 0
      181 GETTABLEKS                       R13 R13 K57 ["Children"]
      183 GETTABLE                         R12 R1 R13
      184 JUMPIFNOT                        R12 ; [+12]
      185 GETUPVAL                         R12 2
      186 GETTABLEKS                       R12 R12 K58 ["Dictionary"]
      188 GETTABLEKS                       R12 R12 K59 ["join"]
      190 GETUPVAL                         R14 0
      191 GETTABLEKS                       R14 R14 K57 ["Children"]
      193 GETTABLE                         R13 R1 R14
      194 MOVE                             R14 R9
      195 CALL                             R12 2 1
      196 MOVE                             R9 R12
      197 JUMPIFNOT                        R8 ; [+43]
      198 GETUPVAL                         R12 0
      199 GETTABLEKS                       R12 R12 K17 ["createElement"]
      201 LOADK                            R13 K60 ["TextLabel"]
      202 DUPTABLE                         R14 K69 [{["LayoutOrder"], ["Size"], ["BackgroundTransparency"] = 1, ["Text"], ["TextSize"] = 16, ["TextXAlignment"], ["TextYAlignment"], ["Font"], ["TextColor3"]}]
      203 LENGTH                           R16 R5
      204 ADDK                             R15 R16 K3 [1]
      205 SETTABLEKS                       R15 R14 K4 ["LayoutOrder"]
      207 GETIMPORT                        R15 K30 [UDim2.new]
      209 LOADN                            R16 1
      210 LOADN                            R17 0
      211 LOADN                            R18 0
      212 LOADN                            R19 20
      213 CALL                             R15 4 1
      214 SETTABLEKS                       R15 R14 K61 ["Size"]
      216 SETTABLEKS                       R8 R14 K48 ["Text"]
      218 GETIMPORT                        R15 K71 [Enum.TextXAlignment.Left]
      220 SETTABLEKS                       R15 R14 K65 ["TextXAlignment"]
      222 GETIMPORT                        R15 K73 [Enum.TextYAlignment.Center]
      224 SETTABLEKS                       R15 R14 K66 ["TextYAlignment"]
      226 GETTABLEKS                       R15 R2 K74 ["checkboxset"]
      228 GETTABLEKS                       R15 R15 K75 ["font"]
      230 SETTABLEKS                       R15 R14 K67 ["Font"]
      232 GETTABLEKS                       R15 R2 K74 ["checkboxset"]
      234 GETTABLEKS                       R15 R15 K76 ["error"]
      236 SETTABLEKS                       R15 R14 K68 ["TextColor3"]
      238 CALL                             R12 2 1
      239 SETTABLEKS                       R12 R9 K77 ["Error"]
      241 LENGTH                           R13 R5
      242 MULK                             R12 R13 K78 [28]
      243 GETTABLEKS                       R13 R1 K79 ["MaxHeight"]
      245 JUMPIFNOT                        R13 ; [+3]
      246 GETTABLEKS                       R13 R1 K79 ["MaxHeight"]
      248 ADD                              R12 R12 R13
      249 GETTABLEKS                       R13 R1 K80 ["AbsoluteMaxHeight"]
      251 JUMPIFNOT                        R13 ; [+2]
      252 GETTABLEKS                       R12 R1 K80 ["AbsoluteMaxHeight"]
      254 GETUPVAL                         R13 0
      255 GETTABLEKS                       R13 R13 K17 ["createElement"]
      257 GETUPVAL                         R14 3
      258 DUPTABLE                         R15 K81 [{"LayoutOrder", "Title"}]
      259 SETTABLEKS                       R4 R15 K4 ["LayoutOrder"]
      261 SETTABLEKS                       R3 R15 K2 ["Title"]
      263 MOVE                             R16 R9
      264 CALL                             R13 3 -1
      265 RETURN                           R13 -1

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
       30 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K10 ["withContext"]
       34 GETTABLEKS                       R6 R3 K11 ["UI"]
       36 GETTABLEKS                       R7 R6 K12 ["TitledFrame"]
       38 GETTABLEKS                       R8 R6 K13 ["Checkbox"]
       40 GETTABLEKS                       R9 R1 K14 ["PureComponent"]
       42 LOADK                            R11 K15 ["CheckBoxSet"]
       43 NAMECALL                         R9 R9 K16 ["extend"]
       45 CALL                             R9 2 1
       46 DUPCLOSURE                       R10 K17 [PROTO_1]
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R8
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R7
       51 SETTABLEKS                       R10 R9 K18 ["render"]
       53 MOVE                             R10 R5
       54 DUPTABLE                         R11 K20 [{"Stylizer"}]
       55 GETTABLEKS                       R12 R4 K19 ["Stylizer"]
       57 SETTABLEKS                       R12 R11 K19 ["Stylizer"]
       59 CALL                             R10 1 1
       60 MOVE                             R11 R9
       61 CALL                             R10 1 1
       62 MOVE                             R9 R10
       63 RETURN                           R9 1
