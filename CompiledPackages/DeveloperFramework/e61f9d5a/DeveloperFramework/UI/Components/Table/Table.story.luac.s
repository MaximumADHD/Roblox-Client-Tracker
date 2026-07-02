PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"sizes"}]
        2 SETTABLEKS                       R0 R3 K0 ["sizes"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"sizes"}]
        1 GETTABLEKS                       R2 R0 K2 ["props"]
        3 GETTABLEKS                       R2 R2 K3 ["InitialSizes"]
        5 SETTABLEKS                       R2 R1 K0 ["sizes"]
        7 SETTABLEKS                       R1 R0 K4 ["state"]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R1 R0 K5 ["onSizesChange"]
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"Width"}]
        3 GETUPVAL                         R6 1
        4 GETTABLEKS                       R6 R6 K2 ["sizes"]
        6 GETTABLE                         R5 R6 R1
        7 SETTABLEKS                       R5 R4 K0 ["Width"]
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["Id"]
        2 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R4 R1 K2 ["Columns"]
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R2
       10 CALL                             R3 2 1
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R5 R1 K3 ["Rows"]
       14 CALL                             R4 1 1
       15 GETUPVAL                         R5 3
       16 GETTABLEKS                       R5 R5 K4 ["createElement"]
       18 GETUPVAL                         R6 4
       19 GETUPVAL                         R7 1
       20 MOVE                             R8 R1
       21 DUPTABLE                         R9 K7 [{"OnColumnSizesChange", "Rows", "Columns", "GetRowId"}]
       22 GETTABLEKS                       R10 R0 K8 ["onSizesChange"]
       24 SETTABLEKS                       R10 R9 K5 ["OnColumnSizesChange"]
       26 SETTABLEKS                       R4 R9 K3 ["Rows"]
       28 SETTABLEKS                       R3 R9 K2 ["Columns"]
       30 DUPCLOSURE                       R10 K9 [PROTO_3]
       31 SETTABLEKS                       R10 R9 K6 ["GetRowId"]
       33 CALL                             R7 2 -1
       34 CALL                             R5 -1 -1
       35 RETURN                           R5 -1

PROTO_5:
        0 GETTABLEKS                       R6 R0 K2 ["Name"]
        2 FASTCALL1                        STRING_LEN R6 ; [+2]
        3 GETIMPORT                        R5 K5 [string.len]
        5 CALL                             R5 1 1
        6 DIVK                             R4 R5 K1 [20]
        7 FASTCALL1                        MATH_CEIL R4 ; [+2]
        8 GETIMPORT                        R3 K8 [math.ceil]
       10 CALL                             R3 1 1
       11 SUBK                             R2 R3 K0 [1]
       12 LOADN                            R4 0
       13 JUMPIFNOTLT                      R4 R2 ; [+4]
       15 MULK                             R4 R2 K1 [20]
       16 ADD                              R3 R1 R4
       17 RETURN                           R3 1
       18 MOVE                             R3 R1
       19 RETURN                           R3 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["Value"]
        2 GETTABLEKS                       R2 R0 K1 ["Style"]
        4 GETTABLEKS                       R3 R0 K2 ["Width"]
        6 JUMPIF                           R3 ; [+8]
        7 GETIMPORT                        R3 K5 [UDim.new]
        9 GETTABLEKS                       R6 R0 K7 ["Columns"]
       11 LENGTH                           R5 R6
       12 DIVRK                            R4 K6 [1] R5
       13 LOADN                            R5 0
       14 CALL                             R3 2 1
       15 GETTABLEKS                       R5 R0 K8 ["Emphasis"]
       17 JUMPIFNOT                        R5 ; [+3]
       18 GETTABLEKS                       R4 R2 K9 ["BackgroundOdd"]
       20 JUMP                             ; [+2]
       21 GETTABLEKS                       R4 R2 K10 ["BackgroundEven"]
       23 LOADNIL                          R5
       24 FASTCALL1                        TYPEOF R1 ; [+3]
       25 MOVE                             R7 R1
       26 GETIMPORT                        R6 K12 [typeof]
       28 CALL                             R6 1 1
       29 JUMPIFNOTEQKS                    R6 K13 ["number"] ; [+15]
       31 FASTCALL1                        MATH_FLOOR R1 ; [+3]
       32 MOVE                             R7 R1
       33 GETIMPORT                        R6 K16 [math.floor]
       35 CALL                             R6 1 1
       36 JUMPIFEQ                         R6 R1 ; [+8]
       38 LOADK                            R6 K17 ["%.3f"]
       39 MOVE                             R8 R1
       40 NAMECALL                         R6 R6 K18 ["format"]
       42 CALL                             R6 2 1
       43 MOVE                             R5 R6
       44 JUMP                             ; [+6]
       45 FASTCALL1                        TOSTRING R1 ; [+3]
       46 MOVE                             R7 R1
       47 GETIMPORT                        R6 K20 [tostring]
       49 CALL                             R6 1 1
       50 MOVE                             R5 R6
       51 GETTABLEKS                       R7 R0 K21 ["Tooltip"]
       53 OR                               R6 R7 R5
       54 LOADB                            R7 0
       55 JUMPIFEQKNIL                     R6 ; [+5]
       57 JUMPIFNOTEQKS                    R6 K22 [""] ; [+2]
       59 LOADB                            R7 0 +1
       60 LOADB                            R7 1
       61 GETUPVAL                         R8 0
       62 GETTABLEKS                       R8 R8 K23 ["createElement"]
       64 GETUPVAL                         R9 1
       65 DUPTABLE                         R10 K33 [{["LayoutOrder"], ["Padding"], ["Style"] = "Box", ["BackgroundColor3"], ["BorderSizePixel"] = 1, ["BorderColor3"], ["Size"], ["ClipsDescendants"] = True}]
       66 GETTABLEKS                       R11 R0 K34 ["ColumnIndex"]
       68 SETTABLEKS                       R11 R10 K24 ["LayoutOrder"]
       70 DUPTABLE                         R11 K40 [{["Top"] = 1, ["Bottom"] = 1, ["Left"] = 5, ["Right"] = 5}]
       71 SETTABLEKS                       R11 R10 K25 ["Padding"]
       73 SETTABLEKS                       R4 R10 K27 ["BackgroundColor3"]
       75 GETTABLEKS                       R11 R2 K41 ["Border"]
       77 SETTABLEKS                       R11 R10 K29 ["BorderColor3"]
       79 GETIMPORT                        R11 K43 [UDim2.new]
       81 GETTABLEKS                       R12 R3 K44 ["Scale"]
       83 GETTABLEKS                       R13 R3 K45 ["Offset"]
       85 LOADN                            R14 1
       86 LOADN                            R15 0
       87 CALL                             R11 4 1
       88 SETTABLEKS                       R11 R10 K30 ["Size"]
       90 DUPTABLE                         R11 K47 [{"Text", "Tooltip"}]
       91 GETUPVAL                         R12 0
       92 GETTABLEKS                       R12 R12 K23 ["createElement"]
       94 GETUPVAL                         R13 2
       95 DUPTABLE                         R14 K50 [{["Text"], ["TextWrapped"] = True, ["Size"], ["TextXAlignment"]}]
       96 SETTABLEKS                       R5 R14 K46 ["Text"]
       98 GETIMPORT                        R15 K52 [UDim2.fromScale]
      100 LOADN                            R16 1
      101 LOADN                            R17 1
      102 CALL                             R15 2 1
      103 SETTABLEKS                       R15 R14 K30 ["Size"]
      105 GETIMPORT                        R15 K54 [Enum.TextXAlignment.Left]
      107 SETTABLEKS                       R15 R14 K49 ["TextXAlignment"]
      109 CALL                             R12 2 1
      110 SETTABLEKS                       R12 R11 K46 ["Text"]
      112 MOVE                             R12 R7
      113 JUMPIFNOT                        R12 ; [+18]
      114 GETUPVAL                         R12 0
      115 GETTABLEKS                       R12 R12 K23 ["createElement"]
      117 GETUPVAL                         R13 3
      118 DUPTABLE                         R14 K56 [{"MaxWidth", "Text", "TextXAlignment"}]
      119 GETTABLEKS                       R15 R2 K21 ["Tooltip"]
      121 GETTABLEKS                       R15 R15 K55 ["MaxWidth"]
      123 SETTABLEKS                       R15 R14 K55 ["MaxWidth"]
      125 SETTABLEKS                       R6 R14 K46 ["Text"]
      127 GETIMPORT                        R15 K54 [Enum.TextXAlignment.Left]
      129 SETTABLEKS                       R15 R14 K49 ["TextXAlignment"]
      131 CALL                             R12 2 1
      132 SETTABLEKS                       R12 R11 K21 ["Tooltip"]
      134 CALL                             R8 3 -1
      135 RETURN                           R8 -1

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
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["Components"]
       22 GETTABLEKS                       R3 R3 K9 ["Pane"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R4 R0 K2 ["UI"]
       29 GETTABLEKS                       R4 R4 K8 ["Components"]
       31 GETTABLEKS                       R4 R4 K10 ["Table"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K6 [require]
       36 GETTABLEKS                       R5 R0 K2 ["UI"]
       38 GETTABLEKS                       R5 R5 K8 ["Components"]
       40 GETTABLEKS                       R5 R5 K11 ["Tooltip"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K6 [require]
       45 GETTABLEKS                       R6 R0 K2 ["UI"]
       47 GETTABLEKS                       R6 R6 K8 ["Components"]
       49 GETTABLEKS                       R6 R6 K12 ["TextLabel"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K6 [require]
       54 GETTABLEKS                       R7 R0 K4 ["Parent"]
       56 GETTABLEKS                       R7 R7 K13 ["Dash"]
       58 CALL                             R6 1 1
       59 GETTABLEKS                       R7 R6 K14 ["copy"]
       61 GETTABLEKS                       R8 R6 K15 ["join"]
       63 GETTABLEKS                       R9 R6 K16 ["map"]
       65 GETIMPORT                        R10 K19 [table.insert]
       67 NEWTABLE                         R11 0 0
       69 LOADN                            R14 1
       70 LOADN                            R12 1000
       71 LOADN                            R13 1
       72 FORNPREP                         R12
       73 DUPTABLE                         R17 K24 [{"Id", "Name", "Count", "Size"}]
       74 FASTCALL1                        TOSTRING R14 ; [+3]
       75 MOVE                             R19 R14
       76 GETIMPORT                        R18 K26 [tostring]
       78 CALL                             R18 1 1
       79 SETTABLEKS                       R18 R17 K20 ["Id"]
       81 LOADK                            R19 K27 ["Row "]
       82 MOVE                             R20 R14
       83 CONCAT                           R18 R19 R20
       84 SETTABLEKS                       R18 R17 K21 ["Name"]
       86 GETIMPORT                        R20 K31 [math.random]
       88 CALL                             R20 0 1
       89 MULK                             R19 R20 K28 [100]
       90 FASTCALL1                        MATH_FLOOR R19 ; [+2]
       91 GETIMPORT                        R18 K33 [math.floor]
       93 CALL                             R18 1 1
       94 SETTABLEKS                       R18 R17 K22 ["Count"]
       96 GETIMPORT                        R23 K31 [math.random]
       98 CALL                             R23 0 1
       99 MULK                             R22 R23 K28 [100]
      100 FASTCALL1                        MATH_FLOOR R22 ; [+2]
      101 GETIMPORT                        R21 K33 [math.floor]
      103 CALL                             R21 1 1
      104 MULK                             R19 R21 K34 [10]
      105 LOADK                            R20 K35 ["px"]
      106 CONCAT                           R18 R19 R20
      107 SETTABLEKS                       R18 R17 K23 ["Size"]
      109 FASTCALL2                        TABLE_INSERT R11 R17 ; [+3]
      111 MOVE                             R16 R11
      112 MOVE                             R15 R10
      113 CALL                             R15 2 0
      114 FORNLOOP                         R12
      115 GETTABLEKS                       R12 R1 K36 ["PureComponent"]
      117 LOADK                            R14 K37 ["TableStory"]
      118 NAMECALL                         R12 R12 K38 ["extend"]
      120 CALL                             R12 2 1
      121 DUPCLOSURE                       R13 K39 [PROTO_1]
      122 SETTABLEKS                       R13 R12 K40 ["init"]
      124 DUPCLOSURE                       R13 K41 [PROTO_4]
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R7
      128 CAPTURE                          VAL R1
      129 CAPTURE                          VAL R3
      130 SETTABLEKS                       R13 R12 K42 ["render"]
      132 NEWTABLE                         R13 0 3
      134 DUPTABLE                         R14 K43 [{["Name"] = "Name"}]
      135 DUPTABLE                         R15 K44 [{["Name"] = "Count"}]
      136 DUPTABLE                         R16 K45 [{["Name"] = "Size"}]
      137 SETLIST                          R13 R14 3 [1]
      139 NEWTABLE                         R14 0 3
      141 DUPTABLE                         R15 K50 [{["Name"] = "Left", ["Count"] = 1, ["Size"] = "50px", ["Id"] = "1"}]
      142 DUPTABLE                         R16 K54 [{["Name"] = "Middle", ["Count"] = 10, ["Size"] = "80px", ["Id"] = "2"}]
      143 DUPTABLE                         R17 K59 [{["Name"] = "Right", ["Count"] = 3, ["Size"] = "20px", ["Id"] = "3"}]
      144 SETLIST                          R14 R15 3 [1]
      146 NEWTABLE                         R15 0 3
      148 DUPTABLE                         R16 K50 [{["Name"] = "Left", ["Count"] = 1, ["Size"] = "50px", ["Id"] = "1"}]
      149 DUPTABLE                         R17 K54 [{["Name"] = "Middle", ["Count"] = 10, ["Size"] = "80px", ["Id"] = "2"}]
      150 DUPTABLE                         R18 K61 [{["Name"] = "This cell/row will have a larger row height because it has more characters", ["Count"] = 3, ["Size"] = "20px", ["Id"] = "3"}]
      151 SETLIST                          R15 R16 3 [1]
      153 DUPCLOSURE                       R16 K62 [PROTO_5]
      154 DUPCLOSURE                       R17 K63 [PROTO_6]
      155 CAPTURE                          VAL R1
      156 CAPTURE                          VAL R2
      157 CAPTURE                          VAL R5
      158 CAPTURE                          VAL R4
      159 DUPTABLE                         R18 K65 [{"stories"}]
      160 NEWTABLE                         R19 0 4
      162 DUPTABLE                         R20 K69 [{["name"] = "Fixed size", ["story"]}]
      163 GETTABLEKS                       R21 R1 K70 ["createElement"]
      165 MOVE                             R22 R12
      166 DUPTABLE                         R23 K77 [{["UseScale"] = True, ["ClampSize"] = True, ["InitialSizes"], ["Size"], ["Columns"], ["Rows"]}]
      167 NEWTABLE                         R24 0 3
      169 GETIMPORT                        R25 K80 [UDim.new]
      171 LOADK                            R26 K81 [0.333333333333333]
      172 LOADN                            R27 0
      173 CALL                             R25 2 1
      174 GETIMPORT                        R26 K80 [UDim.new]
      176 LOADK                            R27 K81 [0.333333333333333]
      177 LOADN                            R28 0
      178 CALL                             R26 2 1
      179 GETIMPORT                        R27 K80 [UDim.new]
      181 LOADK                            R28 K81 [0.333333333333333]
      182 LOADN                            R29 0
      183 CALL                             R27 2 -1
      184 SETLIST                          R24 R25 -1 [1]
      186 SETTABLEKS                       R24 R23 K74 ["InitialSizes"]
      188 GETIMPORT                        R24 K83 [UDim2.new]
      190 LOADN                            R25 1
      191 LOADN                            R26 0
      192 LOADN                            R27 0
      193 LOADN                            R28 200
      194 CALL                             R24 4 1
      195 SETTABLEKS                       R24 R23 K23 ["Size"]
      197 SETTABLEKS                       R13 R23 K75 ["Columns"]
      199 SETTABLEKS                       R14 R23 K76 ["Rows"]
      201 CALL                             R21 2 1
      202 SETTABLEKS                       R21 R20 K68 ["story"]
      204 DUPTABLE                         R21 K85 [{["name"] = "With footer", ["story"]}]
      205 GETTABLEKS                       R22 R1 K70 ["createElement"]
      207 MOVE                             R23 R12
      208 DUPTABLE                         R24 K87 [{["UseScale"] = True, ["ClampSize"] = True, ["Size"], ["InitialSizes"], ["Footer"], ["Columns"], ["Rows"]}]
      209 GETIMPORT                        R25 K83 [UDim2.new]
      211 LOADN                            R26 1
      212 LOADN                            R27 0
      213 LOADN                            R28 0
      214 LOADN                            R29 200
      215 CALL                             R25 4 1
      216 SETTABLEKS                       R25 R24 K23 ["Size"]
      218 NEWTABLE                         R25 0 3
      220 GETIMPORT                        R26 K80 [UDim.new]
      222 LOADK                            R27 K81 [0.333333333333333]
      223 LOADN                            R28 0
      224 CALL                             R26 2 1
      225 GETIMPORT                        R27 K80 [UDim.new]
      227 LOADK                            R28 K81 [0.333333333333333]
      228 LOADN                            R29 0
      229 CALL                             R27 2 1
      230 GETIMPORT                        R28 K80 [UDim.new]
      232 LOADK                            R29 K81 [0.333333333333333]
      233 LOADN                            R30 0
      234 CALL                             R28 2 -1
      235 SETLIST                          R25 R26 -1 [1]
      237 SETTABLEKS                       R25 R24 K74 ["InitialSizes"]
      239 GETTABLEKS                       R25 R1 K70 ["createElement"]
      241 MOVE                             R26 R2
      242 DUPTABLE                         R27 K92 [{["Padding"] = 5, ["Layout"], ["HorizontalAlignment"]}]
      243 GETIMPORT                        R28 K96 [Enum.FillDirection.Horizontal]
      245 SETTABLEKS                       R28 R27 K90 ["Layout"]
      247 GETIMPORT                        R28 K97 [Enum.HorizontalAlignment.Left]
      249 SETTABLEKS                       R28 R27 K91 ["HorizontalAlignment"]
      251 DUPTABLE                         R28 K99 [{"Label"}]
      252 GETTABLEKS                       R29 R1 K70 ["createElement"]
      254 MOVE                             R30 R5
      255 DUPTABLE                         R31 K103 [{["AutomaticSize"], ["Text"] = "3 items"}]
      256 GETIMPORT                        R32 K105 [Enum.AutomaticSize.XY]
      258 SETTABLEKS                       R32 R31 K100 ["AutomaticSize"]
      260 CALL                             R29 2 1
      261 SETTABLEKS                       R29 R28 K98 ["Label"]
      263 CALL                             R25 3 1
      264 SETTABLEKS                       R25 R24 K86 ["Footer"]
      266 SETTABLEKS                       R13 R24 K75 ["Columns"]
      268 SETTABLEKS                       R14 R24 K76 ["Rows"]
      270 CALL                             R22 2 1
      271 SETTABLEKS                       R22 R21 K68 ["story"]
      273 DUPTABLE                         R22 K107 [{["name"] = "With scroll", ["story"]}]
      274 GETTABLEKS                       R23 R1 K70 ["createElement"]
      276 MOVE                             R24 R12
      277 DUPTABLE                         R25 K109 [{["Scroll"] = True, ["UseScale"] = True, ["ClampSize"] = True, ["Size"], ["InitialSizes"], ["Footer"], ["Columns"], ["Rows"]}]
      278 GETIMPORT                        R26 K83 [UDim2.new]
      280 LOADN                            R27 1
      281 LOADN                            R28 0
      282 LOADN                            R29 0
      283 LOADN                            R30 200
      284 CALL                             R26 4 1
      285 SETTABLEKS                       R26 R25 K23 ["Size"]
      287 NEWTABLE                         R26 0 3
      289 GETIMPORT                        R27 K80 [UDim.new]
      291 LOADK                            R28 K81 [0.333333333333333]
      292 LOADN                            R29 0
      293 CALL                             R27 2 1
      294 GETIMPORT                        R28 K80 [UDim.new]
      296 LOADK                            R29 K81 [0.333333333333333]
      297 LOADN                            R30 0
      298 CALL                             R28 2 1
      299 GETIMPORT                        R29 K80 [UDim.new]
      301 LOADK                            R30 K81 [0.333333333333333]
      302 LOADN                            R31 0
      303 CALL                             R29 2 -1
      304 SETLIST                          R26 R27 -1 [1]
      306 SETTABLEKS                       R26 R25 K74 ["InitialSizes"]
      308 GETTABLEKS                       R26 R1 K70 ["createElement"]
      310 MOVE                             R27 R2
      311 DUPTABLE                         R28 K92 [{["Padding"] = 5, ["Layout"], ["HorizontalAlignment"]}]
      312 GETIMPORT                        R29 K96 [Enum.FillDirection.Horizontal]
      314 SETTABLEKS                       R29 R28 K90 ["Layout"]
      316 GETIMPORT                        R29 K97 [Enum.HorizontalAlignment.Left]
      318 SETTABLEKS                       R29 R28 K91 ["HorizontalAlignment"]
      320 DUPTABLE                         R29 K99 [{"Label"}]
      321 GETTABLEKS                       R30 R1 K70 ["createElement"]
      323 MOVE                             R31 R5
      324 DUPTABLE                         R32 K111 [{["AutomaticSize"], ["Text"] = "1000 items"}]
      325 GETIMPORT                        R33 K105 [Enum.AutomaticSize.XY]
      327 SETTABLEKS                       R33 R32 K100 ["AutomaticSize"]
      329 CALL                             R30 2 1
      330 SETTABLEKS                       R30 R29 K98 ["Label"]
      332 CALL                             R26 3 1
      333 SETTABLEKS                       R26 R25 K86 ["Footer"]
      335 SETTABLEKS                       R13 R25 K75 ["Columns"]
      337 SETTABLEKS                       R11 R25 K76 ["Rows"]
      339 CALL                             R23 2 1
      340 SETTABLEKS                       R23 R22 K68 ["story"]
      342 DUPTABLE                         R23 K113 [{["name"] = "With GetRowHeight", ["story"]}]
      343 GETTABLEKS                       R24 R1 K70 ["createElement"]
      345 MOVE                             R25 R12
      346 DUPTABLE                         R26 K118 [{["Size"], ["InitialSizes"], ["Columns"], ["CellComponent"], ["Rows"], ["RowHeight"] = 20, ["GetRowHeight"]}]
      347 GETIMPORT                        R27 K83 [UDim2.new]
      349 LOADN                            R28 1
      350 LOADN                            R29 0
      351 LOADN                            R30 0
      352 LOADN                            R31 200
      353 CALL                             R27 4 1
      354 SETTABLEKS                       R27 R26 K23 ["Size"]
      356 NEWTABLE                         R27 0 3
      358 GETIMPORT                        R28 K80 [UDim.new]
      360 LOADK                            R29 K81 [0.333333333333333]
      361 LOADN                            R30 0
      362 CALL                             R28 2 1
      363 GETIMPORT                        R29 K80 [UDim.new]
      365 LOADK                            R30 K81 [0.333333333333333]
      366 LOADN                            R31 0
      367 CALL                             R29 2 1
      368 GETIMPORT                        R30 K80 [UDim.new]
      370 LOADK                            R31 K81 [0.333333333333333]
      371 LOADN                            R32 0
      372 CALL                             R30 2 -1
      373 SETLIST                          R27 R28 -1 [1]
      375 SETTABLEKS                       R27 R26 K74 ["InitialSizes"]
      377 SETTABLEKS                       R13 R26 K75 ["Columns"]
      379 SETTABLEKS                       R17 R26 K114 ["CellComponent"]
      381 SETTABLEKS                       R15 R26 K76 ["Rows"]
      383 SETTABLEKS                       R16 R26 K117 ["GetRowHeight"]
      385 CALL                             R24 2 1
      386 SETTABLEKS                       R24 R23 K68 ["story"]
      388 SETLIST                          R19 R20 4 [1]
      390 SETTABLEKS                       R19 R18 K64 ["stories"]
      392 RETURN                           R18 1
