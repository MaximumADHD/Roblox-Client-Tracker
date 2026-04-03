PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"sizes"}]
        2 SETTABLEKS                       R0 R3 K0 ["sizes"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"sizes"}]
        1 GETTABLEKS                       R3 R0 K2 ["props"]
        3 GETTABLEKS                       R2 R3 K3 ["InitialSizes"]
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
        3 GETUPVAL                         R7 1
        4 GETTABLEKS                       R6 R7 K2 ["sizes"]
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
       15 GETUPVAL                         R6 3
       16 GETTABLEKS                       R5 R6 K4 ["createElement"]
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
       12 DIVRK                            R4 R6 K5 [UDim.new]
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
       61 GETUPVAL                         R9 0
       62 GETTABLEKS                       R8 R9 K23 ["createElement"]
       64 GETUPVAL                         R9 1
       65 DUPTABLE                         R10 K31 [{"LayoutOrder", "Padding", "Style", "BackgroundColor3", "BorderSizePixel", "BorderColor3", "Size", "ClipsDescendants"}]
       66 GETTABLEKS                       R11 R0 K32 ["ColumnIndex"]
       68 SETTABLEKS                       R11 R10 K24 ["LayoutOrder"]
       70 DUPTABLE                         R11 K37 [{"Top", "Bottom", "Left", "Right"}]
       71 LOADN                            R12 1
       72 SETTABLEKS                       R12 R11 K33 ["Top"]
       74 LOADN                            R12 1
       75 SETTABLEKS                       R12 R11 K34 ["Bottom"]
       77 LOADN                            R12 5
       78 SETTABLEKS                       R12 R11 K35 ["Left"]
       80 LOADN                            R12 5
       81 SETTABLEKS                       R12 R11 K36 ["Right"]
       83 SETTABLEKS                       R11 R10 K25 ["Padding"]
       85 LOADK                            R11 K38 ["Box"]
       86 SETTABLEKS                       R11 R10 K1 ["Style"]
       88 SETTABLEKS                       R4 R10 K26 ["BackgroundColor3"]
       90 LOADN                            R11 1
       91 SETTABLEKS                       R11 R10 K27 ["BorderSizePixel"]
       93 GETTABLEKS                       R11 R2 K39 ["Border"]
       95 SETTABLEKS                       R11 R10 K28 ["BorderColor3"]
       97 GETIMPORT                        R11 K41 [UDim2.new]
       99 GETTABLEKS                       R12 R3 K42 ["Scale"]
      101 GETTABLEKS                       R13 R3 K43 ["Offset"]
      103 LOADN                            R14 1
      104 LOADN                            R15 0
      105 CALL                             R11 4 1
      106 SETTABLEKS                       R11 R10 K29 ["Size"]
      108 LOADB                            R11 1
      109 SETTABLEKS                       R11 R10 K30 ["ClipsDescendants"]
      111 DUPTABLE                         R11 K45 [{"Text", "Tooltip"}]
      112 GETUPVAL                         R13 0
      113 GETTABLEKS                       R12 R13 K23 ["createElement"]
      115 GETUPVAL                         R13 2
      116 DUPTABLE                         R14 K48 [{"Text", "TextWrapped", "Size", "TextXAlignment"}]
      117 SETTABLEKS                       R5 R14 K44 ["Text"]
      119 LOADB                            R15 1
      120 SETTABLEKS                       R15 R14 K46 ["TextWrapped"]
      122 GETIMPORT                        R15 K50 [UDim2.fromScale]
      124 LOADN                            R16 1
      125 LOADN                            R17 1
      126 CALL                             R15 2 1
      127 SETTABLEKS                       R15 R14 K29 ["Size"]
      129 GETIMPORT                        R15 K52 [Enum.TextXAlignment.Left]
      131 SETTABLEKS                       R15 R14 K47 ["TextXAlignment"]
      133 CALL                             R12 2 1
      134 SETTABLEKS                       R12 R11 K44 ["Text"]
      136 MOVE                             R12 R7
      137 JUMPIFNOT                        R12 ; [+18]
      138 GETUPVAL                         R13 0
      139 GETTABLEKS                       R12 R13 K23 ["createElement"]
      141 GETUPVAL                         R13 3
      142 DUPTABLE                         R14 K54 [{"MaxWidth", "Text", "TextXAlignment"}]
      143 GETTABLEKS                       R16 R2 K21 ["Tooltip"]
      145 GETTABLEKS                       R15 R16 K53 ["MaxWidth"]
      147 SETTABLEKS                       R15 R14 K53 ["MaxWidth"]
      149 SETTABLEKS                       R6 R14 K44 ["Text"]
      151 GETIMPORT                        R15 K52 [Enum.TextXAlignment.Left]
      153 SETTABLEKS                       R15 R14 K47 ["TextXAlignment"]
      155 CALL                             R12 2 1
      156 SETTABLEKS                       R12 R11 K21 ["Tooltip"]
      158 CALL                             R8 3 -1
      159 RETURN                           R8 -1

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
       18 GETTABLEKS                       R5 R0 K2 ["UI"]
       20 GETTABLEKS                       R4 R5 K8 ["Components"]
       22 GETTABLEKS                       R3 R4 K9 ["Pane"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R6 R0 K2 ["UI"]
       29 GETTABLEKS                       R5 R6 K8 ["Components"]
       31 GETTABLEKS                       R4 R5 K10 ["Table"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K6 [require]
       36 GETTABLEKS                       R7 R0 K2 ["UI"]
       38 GETTABLEKS                       R6 R7 K8 ["Components"]
       40 GETTABLEKS                       R5 R6 K11 ["Tooltip"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K6 [require]
       45 GETTABLEKS                       R8 R0 K2 ["UI"]
       47 GETTABLEKS                       R7 R8 K8 ["Components"]
       49 GETTABLEKS                       R6 R7 K12 ["TextLabel"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K6 [require]
       54 GETTABLEKS                       R8 R0 K4 ["Parent"]
       56 GETTABLEKS                       R7 R8 K13 ["Dash"]
       58 CALL                             R6 1 1
       59 GETTABLEKS                       R7 R6 K14 ["copy"]
       61 GETTABLEKS                       R8 R6 K15 ["join"]
       63 GETTABLEKS                       R9 R6 K16 ["map"]
       65 GETIMPORT                        R10 K19 [table.insert]
       67 NEWTABLE                         R11 0 0
       69 LOADN                            R14 1
       70 LOADN                            R12 232
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
      134 DUPTABLE                         R14 K43 [{"Name"}]
      135 LOADK                            R15 K21 ["Name"]
      136 SETTABLEKS                       R15 R14 K21 ["Name"]
      138 DUPTABLE                         R15 K43 [{"Name"}]
      139 LOADK                            R16 K22 ["Count"]
      140 SETTABLEKS                       R16 R15 K21 ["Name"]
      142 DUPTABLE                         R16 K43 [{"Name"}]
      143 LOADK                            R17 K23 ["Size"]
      144 SETTABLEKS                       R17 R16 K21 ["Name"]
      146 SETLIST                          R13 R14 3 [1]
      148 NEWTABLE                         R14 0 3
      150 DUPTABLE                         R15 K44 [{"Name", "Count", "Size", "Id"}]
      151 LOADK                            R16 K45 ["Left"]
      152 SETTABLEKS                       R16 R15 K21 ["Name"]
      154 LOADN                            R16 1
      155 SETTABLEKS                       R16 R15 K22 ["Count"]
      157 LOADK                            R16 K46 ["50px"]
      158 SETTABLEKS                       R16 R15 K23 ["Size"]
      160 LOADK                            R16 K47 ["1"]
      161 SETTABLEKS                       R16 R15 K20 ["Id"]
      163 DUPTABLE                         R16 K44 [{"Name", "Count", "Size", "Id"}]
      164 LOADK                            R17 K48 ["Middle"]
      165 SETTABLEKS                       R17 R16 K21 ["Name"]
      167 LOADN                            R17 10
      168 SETTABLEKS                       R17 R16 K22 ["Count"]
      170 LOADK                            R17 K49 ["80px"]
      171 SETTABLEKS                       R17 R16 K23 ["Size"]
      173 LOADK                            R17 K50 ["2"]
      174 SETTABLEKS                       R17 R16 K20 ["Id"]
      176 DUPTABLE                         R17 K44 [{"Name", "Count", "Size", "Id"}]
      177 LOADK                            R18 K51 ["Right"]
      178 SETTABLEKS                       R18 R17 K21 ["Name"]
      180 LOADN                            R18 3
      181 SETTABLEKS                       R18 R17 K22 ["Count"]
      183 LOADK                            R18 K52 ["20px"]
      184 SETTABLEKS                       R18 R17 K23 ["Size"]
      186 LOADK                            R18 K53 ["3"]
      187 SETTABLEKS                       R18 R17 K20 ["Id"]
      189 SETLIST                          R14 R15 3 [1]
      191 NEWTABLE                         R15 0 3
      193 DUPTABLE                         R16 K44 [{"Name", "Count", "Size", "Id"}]
      194 LOADK                            R17 K45 ["Left"]
      195 SETTABLEKS                       R17 R16 K21 ["Name"]
      197 LOADN                            R17 1
      198 SETTABLEKS                       R17 R16 K22 ["Count"]
      200 LOADK                            R17 K46 ["50px"]
      201 SETTABLEKS                       R17 R16 K23 ["Size"]
      203 LOADK                            R17 K47 ["1"]
      204 SETTABLEKS                       R17 R16 K20 ["Id"]
      206 DUPTABLE                         R17 K44 [{"Name", "Count", "Size", "Id"}]
      207 LOADK                            R18 K48 ["Middle"]
      208 SETTABLEKS                       R18 R17 K21 ["Name"]
      210 LOADN                            R18 10
      211 SETTABLEKS                       R18 R17 K22 ["Count"]
      213 LOADK                            R18 K49 ["80px"]
      214 SETTABLEKS                       R18 R17 K23 ["Size"]
      216 LOADK                            R18 K50 ["2"]
      217 SETTABLEKS                       R18 R17 K20 ["Id"]
      219 DUPTABLE                         R18 K44 [{"Name", "Count", "Size", "Id"}]
      220 LOADK                            R19 K54 ["This cell/row will have a larger row height because it has more characters"]
      221 SETTABLEKS                       R19 R18 K21 ["Name"]
      223 LOADN                            R19 3
      224 SETTABLEKS                       R19 R18 K22 ["Count"]
      226 LOADK                            R19 K52 ["20px"]
      227 SETTABLEKS                       R19 R18 K23 ["Size"]
      229 LOADK                            R19 K53 ["3"]
      230 SETTABLEKS                       R19 R18 K20 ["Id"]
      232 SETLIST                          R15 R16 3 [1]
      234 DUPCLOSURE                       R16 K55 [PROTO_5]
      235 DUPCLOSURE                       R17 K56 [PROTO_6]
      236 CAPTURE                          VAL R1
      237 CAPTURE                          VAL R2
      238 CAPTURE                          VAL R5
      239 CAPTURE                          VAL R4
      240 DUPTABLE                         R18 K58 [{"stories"}]
      241 NEWTABLE                         R19 0 4
      243 DUPTABLE                         R20 K61 [{"name", "story"}]
      244 LOADK                            R21 K62 ["Fixed size"]
      245 SETTABLEKS                       R21 R20 K59 ["name"]
      247 GETTABLEKS                       R21 R1 K63 ["createElement"]
      249 MOVE                             R22 R12
      250 DUPTABLE                         R23 K69 [{"UseScale", "ClampSize", "InitialSizes", "Size", "Columns", "Rows"}]
      251 LOADB                            R24 1
      252 SETTABLEKS                       R24 R23 K64 ["UseScale"]
      254 LOADB                            R24 1
      255 SETTABLEKS                       R24 R23 K65 ["ClampSize"]
      257 NEWTABLE                         R24 0 3
      259 GETIMPORT                        R25 K72 [UDim.new]
      261 LOADK                            R26 K73 [0.333333333333333]
      262 LOADN                            R27 0
      263 CALL                             R25 2 1
      264 GETIMPORT                        R26 K72 [UDim.new]
      266 LOADK                            R27 K73 [0.333333333333333]
      267 LOADN                            R28 0
      268 CALL                             R26 2 1
      269 GETIMPORT                        R27 K72 [UDim.new]
      271 LOADK                            R28 K73 [0.333333333333333]
      272 LOADN                            R29 0
      273 CALL                             R27 2 -1
      274 SETLIST                          R24 R25 -1 [1]
      276 SETTABLEKS                       R24 R23 K66 ["InitialSizes"]
      278 GETIMPORT                        R24 K75 [UDim2.new]
      280 LOADN                            R25 1
      281 LOADN                            R26 0
      282 LOADN                            R27 0
      283 LOADN                            R28 200
      284 CALL                             R24 4 1
      285 SETTABLEKS                       R24 R23 K23 ["Size"]
      287 SETTABLEKS                       R13 R23 K67 ["Columns"]
      289 SETTABLEKS                       R14 R23 K68 ["Rows"]
      291 CALL                             R21 2 1
      292 SETTABLEKS                       R21 R20 K60 ["story"]
      294 DUPTABLE                         R21 K61 [{"name", "story"}]
      295 LOADK                            R22 K76 ["With footer"]
      296 SETTABLEKS                       R22 R21 K59 ["name"]
      298 GETTABLEKS                       R22 R1 K63 ["createElement"]
      300 MOVE                             R23 R12
      301 DUPTABLE                         R24 K78 [{"UseScale", "ClampSize", "Size", "InitialSizes", "Footer", "Columns", "Rows"}]
      302 LOADB                            R25 1
      303 SETTABLEKS                       R25 R24 K64 ["UseScale"]
      305 LOADB                            R25 1
      306 SETTABLEKS                       R25 R24 K65 ["ClampSize"]
      308 GETIMPORT                        R25 K75 [UDim2.new]
      310 LOADN                            R26 1
      311 LOADN                            R27 0
      312 LOADN                            R28 0
      313 LOADN                            R29 200
      314 CALL                             R25 4 1
      315 SETTABLEKS                       R25 R24 K23 ["Size"]
      317 NEWTABLE                         R25 0 3
      319 GETIMPORT                        R26 K72 [UDim.new]
      321 LOADK                            R27 K73 [0.333333333333333]
      322 LOADN                            R28 0
      323 CALL                             R26 2 1
      324 GETIMPORT                        R27 K72 [UDim.new]
      326 LOADK                            R28 K73 [0.333333333333333]
      327 LOADN                            R29 0
      328 CALL                             R27 2 1
      329 GETIMPORT                        R28 K72 [UDim.new]
      331 LOADK                            R29 K73 [0.333333333333333]
      332 LOADN                            R30 0
      333 CALL                             R28 2 -1
      334 SETLIST                          R25 R26 -1 [1]
      336 SETTABLEKS                       R25 R24 K66 ["InitialSizes"]
      338 GETTABLEKS                       R25 R1 K63 ["createElement"]
      340 MOVE                             R26 R2
      341 DUPTABLE                         R27 K82 [{"Padding", "Layout", "HorizontalAlignment"}]
      342 LOADN                            R28 5
      343 SETTABLEKS                       R28 R27 K79 ["Padding"]
      345 GETIMPORT                        R28 K86 [Enum.FillDirection.Horizontal]
      347 SETTABLEKS                       R28 R27 K80 ["Layout"]
      349 GETIMPORT                        R28 K87 [Enum.HorizontalAlignment.Left]
      351 SETTABLEKS                       R28 R27 K81 ["HorizontalAlignment"]
      353 DUPTABLE                         R28 K89 [{"Label"}]
      354 GETTABLEKS                       R29 R1 K63 ["createElement"]
      356 MOVE                             R30 R5
      357 DUPTABLE                         R31 K92 [{"AutomaticSize", "Text"}]
      358 GETIMPORT                        R32 K94 [Enum.AutomaticSize.XY]
      360 SETTABLEKS                       R32 R31 K90 ["AutomaticSize"]
      362 LOADK                            R32 K95 ["3 items"]
      363 SETTABLEKS                       R32 R31 K91 ["Text"]
      365 CALL                             R29 2 1
      366 SETTABLEKS                       R29 R28 K88 ["Label"]
      368 CALL                             R25 3 1
      369 SETTABLEKS                       R25 R24 K77 ["Footer"]
      371 SETTABLEKS                       R13 R24 K67 ["Columns"]
      373 SETTABLEKS                       R14 R24 K68 ["Rows"]
      375 CALL                             R22 2 1
      376 SETTABLEKS                       R22 R21 K60 ["story"]
      378 DUPTABLE                         R22 K61 [{"name", "story"}]
      379 LOADK                            R23 K96 ["With scroll"]
      380 SETTABLEKS                       R23 R22 K59 ["name"]
      382 GETTABLEKS                       R23 R1 K63 ["createElement"]
      384 MOVE                             R24 R12
      385 DUPTABLE                         R25 K98 [{"Scroll", "UseScale", "ClampSize", "Size", "InitialSizes", "Footer", "Columns", "Rows"}]
      386 LOADB                            R26 1
      387 SETTABLEKS                       R26 R25 K97 ["Scroll"]
      389 LOADB                            R26 1
      390 SETTABLEKS                       R26 R25 K64 ["UseScale"]
      392 LOADB                            R26 1
      393 SETTABLEKS                       R26 R25 K65 ["ClampSize"]
      395 GETIMPORT                        R26 K75 [UDim2.new]
      397 LOADN                            R27 1
      398 LOADN                            R28 0
      399 LOADN                            R29 0
      400 LOADN                            R30 200
      401 CALL                             R26 4 1
      402 SETTABLEKS                       R26 R25 K23 ["Size"]
      404 NEWTABLE                         R26 0 3
      406 GETIMPORT                        R27 K72 [UDim.new]
      408 LOADK                            R28 K73 [0.333333333333333]
      409 LOADN                            R29 0
      410 CALL                             R27 2 1
      411 GETIMPORT                        R28 K72 [UDim.new]
      413 LOADK                            R29 K73 [0.333333333333333]
      414 LOADN                            R30 0
      415 CALL                             R28 2 1
      416 GETIMPORT                        R29 K72 [UDim.new]
      418 LOADK                            R30 K73 [0.333333333333333]
      419 LOADN                            R31 0
      420 CALL                             R29 2 -1
      421 SETLIST                          R26 R27 -1 [1]
      423 SETTABLEKS                       R26 R25 K66 ["InitialSizes"]
      425 GETTABLEKS                       R26 R1 K63 ["createElement"]
      427 MOVE                             R27 R2
      428 DUPTABLE                         R28 K82 [{"Padding", "Layout", "HorizontalAlignment"}]
      429 LOADN                            R29 5
      430 SETTABLEKS                       R29 R28 K79 ["Padding"]
      432 GETIMPORT                        R29 K86 [Enum.FillDirection.Horizontal]
      434 SETTABLEKS                       R29 R28 K80 ["Layout"]
      436 GETIMPORT                        R29 K87 [Enum.HorizontalAlignment.Left]
      438 SETTABLEKS                       R29 R28 K81 ["HorizontalAlignment"]
      440 DUPTABLE                         R29 K89 [{"Label"}]
      441 GETTABLEKS                       R30 R1 K63 ["createElement"]
      443 MOVE                             R31 R5
      444 DUPTABLE                         R32 K92 [{"AutomaticSize", "Text"}]
      445 GETIMPORT                        R33 K94 [Enum.AutomaticSize.XY]
      447 SETTABLEKS                       R33 R32 K90 ["AutomaticSize"]
      449 LOADK                            R33 K99 ["1000 items"]
      450 SETTABLEKS                       R33 R32 K91 ["Text"]
      452 CALL                             R30 2 1
      453 SETTABLEKS                       R30 R29 K88 ["Label"]
      455 CALL                             R26 3 1
      456 SETTABLEKS                       R26 R25 K77 ["Footer"]
      458 SETTABLEKS                       R13 R25 K67 ["Columns"]
      460 SETTABLEKS                       R11 R25 K68 ["Rows"]
      462 CALL                             R23 2 1
      463 SETTABLEKS                       R23 R22 K60 ["story"]
      465 DUPTABLE                         R23 K61 [{"name", "story"}]
      466 LOADK                            R24 K100 ["With GetRowHeight"]
      467 SETTABLEKS                       R24 R23 K59 ["name"]
      469 GETTABLEKS                       R24 R1 K63 ["createElement"]
      471 MOVE                             R25 R12
      472 DUPTABLE                         R26 K104 [{"Size", "InitialSizes", "Columns", "CellComponent", "Rows", "RowHeight", "GetRowHeight"}]
      473 GETIMPORT                        R27 K75 [UDim2.new]
      475 LOADN                            R28 1
      476 LOADN                            R29 0
      477 LOADN                            R30 0
      478 LOADN                            R31 200
      479 CALL                             R27 4 1
      480 SETTABLEKS                       R27 R26 K23 ["Size"]
      482 NEWTABLE                         R27 0 3
      484 GETIMPORT                        R28 K72 [UDim.new]
      486 LOADK                            R29 K73 [0.333333333333333]
      487 LOADN                            R30 0
      488 CALL                             R28 2 1
      489 GETIMPORT                        R29 K72 [UDim.new]
      491 LOADK                            R30 K73 [0.333333333333333]
      492 LOADN                            R31 0
      493 CALL                             R29 2 1
      494 GETIMPORT                        R30 K72 [UDim.new]
      496 LOADK                            R31 K73 [0.333333333333333]
      497 LOADN                            R32 0
      498 CALL                             R30 2 -1
      499 SETLIST                          R27 R28 -1 [1]
      501 SETTABLEKS                       R27 R26 K66 ["InitialSizes"]
      503 SETTABLEKS                       R13 R26 K67 ["Columns"]
      505 SETTABLEKS                       R17 R26 K101 ["CellComponent"]
      507 SETTABLEKS                       R15 R26 K68 ["Rows"]
      509 LOADN                            R27 20
      510 SETTABLEKS                       R27 R26 K102 ["RowHeight"]
      512 SETTABLEKS                       R16 R26 K103 ["GetRowHeight"]
      514 CALL                             R24 2 1
      515 SETTABLEKS                       R24 R23 K60 ["story"]
      517 SETLIST                          R19 R20 4 [1]
      519 SETTABLEKS                       R19 R18 K57 ["stories"]
      521 RETURN                           R18 1
