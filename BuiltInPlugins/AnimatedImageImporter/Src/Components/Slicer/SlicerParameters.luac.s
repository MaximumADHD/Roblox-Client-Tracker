PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeSlicerState"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R1 R1 K1 ["imageSize"]
        7 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R0 R1
        5 GETIMPORT                        R1 K5 [Vector2.new]
        7 GETUPVAL                         R4 0
        8 FASTCALL1                        MATH_FLOOR R4 ; [+2]
        9 GETIMPORT                        R3 K8 [math.floor]
       11 CALL                             R3 1 1
       12 LOADN                            R4 1
       13 GETTABLEKS                       R5 R0 K9 ["sheetSize"]
       15 GETTABLEKS                       R5 R5 K10 ["X"]
       17 FASTCALL                         MATH_CLAMP ; [+2]
       18 GETIMPORT                        R2 K12 [math.clamp]
       20 CALL                             R2 3 1
       21 GETTABLEKS                       R3 R0 K13 ["grid"]
       23 GETTABLEKS                       R3 R3 K14 ["Y"]
       25 CALL                             R1 2 1
       26 SETTABLEKS                       R1 R0 K13 ["grid"]
       28 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setSlicerState"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R0 R1
        5 GETIMPORT                        R1 K5 [Vector2.new]
        7 GETTABLEKS                       R2 R0 K6 ["grid"]
        9 GETTABLEKS                       R2 R2 K7 ["X"]
       11 GETUPVAL                         R5 0
       12 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       13 GETIMPORT                        R4 K10 [math.floor]
       15 CALL                             R4 1 1
       16 LOADN                            R5 1
       17 GETTABLEKS                       R6 R0 K11 ["sheetSize"]
       19 GETTABLEKS                       R6 R6 K12 ["Y"]
       21 FASTCALL                         MATH_CLAMP ; [+2]
       22 GETIMPORT                        R3 K14 [math.clamp]
       24 CALL                             R3 3 1
       25 CALL                             R1 2 1
       26 SETTABLEKS                       R1 R0 K6 ["grid"]
       28 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setSlicerState"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R0 R1
        5 GETIMPORT                        R1 K5 [Vector2.new]
        7 GETUPVAL                         R4 0
        8 FASTCALL1                        MATH_FLOOR R4 ; [+2]
        9 GETIMPORT                        R3 K8 [math.floor]
       11 CALL                             R3 1 1
       12 GETTABLEKS                       R4 R0 K9 ["grid"]
       14 GETTABLEKS                       R4 R4 K10 ["X"]
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R6 R6 K10 ["X"]
       19 GETTABLEKS                       R7 R0 K11 ["offset"]
       21 GETTABLEKS                       R7 R7 K10 ["X"]
       23 SUB                              R5 R6 R7
       24 FASTCALL                         MATH_CLAMP ; [+2]
       25 GETIMPORT                        R2 K13 [math.clamp]
       27 CALL                             R2 3 1
       28 GETTABLEKS                       R3 R0 K14 ["sheetSize"]
       30 GETTABLEKS                       R3 R3 K15 ["Y"]
       32 CALL                             R1 2 1
       33 SETTABLEKS                       R1 R0 K14 ["sheetSize"]
       35 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setSlicerState"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R0 R1
        5 GETIMPORT                        R1 K5 [Vector2.new]
        7 GETTABLEKS                       R2 R0 K6 ["sheetSize"]
        9 GETTABLEKS                       R2 R2 K7 ["X"]
       11 GETUPVAL                         R5 0
       12 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       13 GETIMPORT                        R4 K10 [math.floor]
       15 CALL                             R4 1 1
       16 GETTABLEKS                       R5 R0 K11 ["grid"]
       18 GETTABLEKS                       R5 R5 K12 ["Y"]
       20 GETUPVAL                         R7 1
       21 GETTABLEKS                       R7 R7 K12 ["Y"]
       23 GETTABLEKS                       R8 R0 K13 ["offset"]
       25 GETTABLEKS                       R8 R8 K12 ["Y"]
       27 SUB                              R6 R7 R8
       28 FASTCALL                         MATH_CLAMP ; [+2]
       29 GETIMPORT                        R3 K15 [math.clamp]
       31 CALL                             R3 3 1
       32 CALL                             R1 2 1
       33 SETTABLEKS                       R1 R0 K6 ["sheetSize"]
       35 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setSlicerState"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R0 R1
        5 GETIMPORT                        R1 K5 [Vector2.new]
        7 GETUPVAL                         R4 0
        8 FASTCALL1                        MATH_FLOOR R4 ; [+2]
        9 GETIMPORT                        R3 K8 [math.floor]
       11 CALL                             R3 1 1
       12 LOADN                            R4 0
       13 GETTABLEKS                       R6 R0 K9 ["imageSize"]
       15 GETTABLEKS                       R6 R6 K10 ["X"]
       17 GETTABLEKS                       R7 R0 K11 ["sheetSize"]
       19 GETTABLEKS                       R7 R7 K10 ["X"]
       21 SUB                              R5 R6 R7
       22 FASTCALL                         MATH_CLAMP ; [+2]
       23 GETIMPORT                        R2 K13 [math.clamp]
       25 CALL                             R2 3 1
       26 GETTABLEKS                       R3 R0 K14 ["offset"]
       28 GETTABLEKS                       R3 R3 K15 ["Y"]
       30 CALL                             R1 2 1
       31 SETTABLEKS                       R1 R0 K14 ["offset"]
       33 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setSlicerState"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R0 R1
        5 GETIMPORT                        R1 K5 [Vector2.new]
        7 GETTABLEKS                       R2 R0 K6 ["offset"]
        9 GETTABLEKS                       R2 R2 K7 ["X"]
       11 GETUPVAL                         R5 0
       12 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       13 GETIMPORT                        R4 K10 [math.floor]
       15 CALL                             R4 1 1
       16 LOADN                            R5 0
       17 GETTABLEKS                       R7 R0 K11 ["imageSize"]
       19 GETTABLEKS                       R7 R7 K12 ["Y"]
       21 GETTABLEKS                       R8 R0 K13 ["sheetSize"]
       23 GETTABLEKS                       R8 R8 K12 ["Y"]
       25 SUB                              R6 R7 R8
       26 FASTCALL                         MATH_CLAMP ; [+2]
       27 GETIMPORT                        R3 K15 [math.clamp]
       29 CALL                             R3 3 1
       30 CALL                             R1 2 1
       31 SETTABLEKS                       R1 R0 K6 ["offset"]
       33 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setSlicerState"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["source"]
        2 GETTABLEKS                       R1 R1 K1 ["filename"]
        4 RETURN                           R1 1

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["grid"]
        2 GETTABLEKS                       R1 R1 K1 ["X"]
        4 RETURN                           R1 1

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["grid"]
        2 GETTABLEKS                       R1 R1 K1 ["Y"]
        4 RETURN                           R1 1

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["sheetSize"]
        2 GETTABLEKS                       R1 R1 K1 ["X"]
        4 RETURN                           R1 1

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["sheetSize"]
        2 GETTABLEKS                       R1 R1 K1 ["Y"]
        4 RETURN                           R1 1

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["offset"]
        2 GETTABLEKS                       R1 R1 K1 ["X"]
        4 RETURN                           R1 1

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["offset"]
        2 GETTABLEKS                       R1 R1 K1 ["Y"]
        4 RETURN                           R1 1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Common"]
        2 LOADK                            R4 K1 ["FrameCount"]
        3 DUPTABLE                         R5 K3 [{"count"}]
        4 GETTABLEKS                       R8 R0 K4 ["grid"]
        6 GETTABLEKS                       R8 R8 K5 ["X"]
        8 GETTABLEKS                       R9 R0 K4 ["grid"]
       10 GETTABLEKS                       R9 R9 K6 ["Y"]
       12 MUL                              R7 R8 R9
       13 FASTCALL1                        TOSTRING R7 ; [+2]
       14 GETIMPORT                        R6 K8 [tostring]
       16 CALL                             R6 1 1
       17 SETTABLEKS                       R6 R5 K2 ["count"]
       19 NAMECALL                         R1 R1 K9 ["getText"]
       21 CALL                             R1 4 -1
       22 RETURN                           R1 -1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Contexts"]
        6 GETTABLEKS                       R2 R2 K2 ["Localization"]
        8 GETTABLEKS                       R2 R2 K3 ["Context"]
       10 CALL                             R1 1 1
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K4 ["useSignalBinding"]
       14 GETTABLEKS                       R3 R0 K5 ["observeSlicerState"]
       16 CALL                             R2 1 1
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R3 R3 K6 ["useSignalState"]
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K7 ["useMemo"]
       23 NEWCLOSURE                       R5 P0
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          VAL R0
       26 NEWTABLE                         R6 0 1
       28 GETTABLEKS                       R7 R0 K5 ["observeSlicerState"]
       30 SETLIST                          R6 R7 1 [1]
       32 CALL                             R4 2 -1
       33 CALL                             R3 -1 1
       34 GETUPVAL                         R4 4
       35 GETTABLEKS                       R4 R4 K8 ["useEventCallback"]
       37 NEWCLOSURE                       R5 P1
       38 CAPTURE                          VAL R0
       39 CALL                             R4 1 1
       40 GETUPVAL                         R5 4
       41 GETTABLEKS                       R5 R5 K8 ["useEventCallback"]
       43 NEWCLOSURE                       R6 P2
       44 CAPTURE                          VAL R0
       45 CALL                             R5 1 1
       46 GETUPVAL                         R6 4
       47 GETTABLEKS                       R6 R6 K8 ["useEventCallback"]
       49 NEWCLOSURE                       R7 P3
       50 CAPTURE                          VAL R0
       51 CAPTURE                          VAL R3
       52 CALL                             R6 1 1
       53 GETUPVAL                         R7 4
       54 GETTABLEKS                       R7 R7 K8 ["useEventCallback"]
       56 NEWCLOSURE                       R8 P4
       57 CAPTURE                          VAL R0
       58 CAPTURE                          VAL R3
       59 CALL                             R7 1 1
       60 GETUPVAL                         R8 4
       61 GETTABLEKS                       R8 R8 K8 ["useEventCallback"]
       63 NEWCLOSURE                       R9 P5
       64 CAPTURE                          VAL R0
       65 CALL                             R8 1 1
       66 GETUPVAL                         R9 4
       67 GETTABLEKS                       R9 R9 K8 ["useEventCallback"]
       69 NEWCLOSURE                       R10 P6
       70 CAPTURE                          VAL R0
       71 CALL                             R9 1 1
       72 GETUPVAL                         R10 4
       73 GETTABLEKS                       R10 R10 K9 ["createNextOrder"]
       75 CALL                             R10 0 1
       76 GETUPVAL                         R11 0
       77 GETTABLEKS                       R11 R11 K10 ["createElement"]
       79 GETUPVAL                         R12 5
       80 GETTABLEKS                       R12 R12 K11 ["View"]
       82 DUPTABLE                         R13 K14 [{["tag"] = "col size-full"}]
       83 DUPTABLE                         R14 K29 [{"Gap1", "Title", "Gap2", "MetadataDivider", "Columns", "Rows", "Width", "Height", "OffsetX", "OffsetY", "Gap3", "FrameCount", "Gap4", "SliceImageButton"}]
       84 GETUPVAL                         R15 0
       85 GETTABLEKS                       R15 R15 K10 ["createElement"]
       87 GETUPVAL                         R16 5
       88 GETTABLEKS                       R16 R16 K11 ["View"]
       90 DUPTABLE                         R17 K32 [{["LayoutOrder"], ["tag"] = "size-0-300"}]
       91 MOVE                             R18 R10
       92 CALL                             R18 0 1
       93 SETTABLEKS                       R18 R17 K30 ["LayoutOrder"]
       95 CALL                             R15 2 1
       96 SETTABLEKS                       R15 R14 K15 ["Gap1"]
       98 GETUPVAL                         R15 0
       99 GETTABLEKS                       R15 R15 K10 ["createElement"]
      101 GETUPVAL                         R16 5
      102 GETTABLEKS                       R16 R16 K33 ["Text"]
      104 DUPTABLE                         R17 K35 [{["Text"], ["LayoutOrder"], ["tag"] = "content-emphasis text-title-large auto-xy"}]
      105 DUPCLOSURE                       R20 K36 [PROTO_14]
      106 NAMECALL                         R18 R2 K37 ["map"]
      108 CALL                             R18 2 1
      109 SETTABLEKS                       R18 R17 K33 ["Text"]
      111 MOVE                             R18 R10
      112 CALL                             R18 0 1
      113 SETTABLEKS                       R18 R17 K30 ["LayoutOrder"]
      115 CALL                             R15 2 1
      116 SETTABLEKS                       R15 R14 K16 ["Title"]
      118 GETUPVAL                         R15 0
      119 GETTABLEKS                       R15 R15 K10 ["createElement"]
      121 GETUPVAL                         R16 5
      122 GETTABLEKS                       R16 R16 K11 ["View"]
      124 DUPTABLE                         R17 K39 [{["LayoutOrder"], ["tag"] = "size-0-800"}]
      125 MOVE                             R18 R10
      126 CALL                             R18 0 1
      127 SETTABLEKS                       R18 R17 K30 ["LayoutOrder"]
      129 CALL                             R15 2 1
      130 SETTABLEKS                       R15 R14 K17 ["Gap2"]
      132 GETUPVAL                         R15 0
      133 GETTABLEKS                       R15 R15 K10 ["createElement"]
      135 GETUPVAL                         R16 5
      136 GETTABLEKS                       R16 R16 K40 ["Divider"]
      138 DUPTABLE                         R17 K42 [{"orientation", "LayoutOrder"}]
      139 GETUPVAL                         R18 5
      140 GETTABLEKS                       R18 R18 K43 ["Enums"]
      142 GETTABLEKS                       R18 R18 K44 ["Orientation"]
      144 GETTABLEKS                       R18 R18 K45 ["Horizontal"]
      146 SETTABLEKS                       R18 R17 K41 ["orientation"]
      148 MOVE                             R18 R10
      149 CALL                             R18 0 1
      150 SETTABLEKS                       R18 R17 K30 ["LayoutOrder"]
      152 CALL                             R15 2 1
      153 SETTABLEKS                       R15 R14 K18 ["MetadataDivider"]
      155 GETUPVAL                         R15 0
      156 GETTABLEKS                       R15 R15 K10 ["createElement"]
      158 GETUPVAL                         R16 6
      159 DUPTABLE                         R17 K53 [{["text"], ["layoutOrder"], ["onChanged"], ["value"], ["minimum"] = 1, ["maximum"]}]
      160 LOADK                            R20 K54 ["Slicer"]
      161 LOADK                            R21 K19 ["Columns"]
      162 NAMECALL                         R18 R1 K55 ["getText"]
      164 CALL                             R18 3 1
      165 SETTABLEKS                       R18 R17 K46 ["text"]
      167 MOVE                             R18 R10
      168 CALL                             R18 0 1
      169 SETTABLEKS                       R18 R17 K47 ["layoutOrder"]
      171 SETTABLEKS                       R4 R17 K48 ["onChanged"]
      173 DUPCLOSURE                       R20 K56 [PROTO_15]
      174 NAMECALL                         R18 R2 K37 ["map"]
      176 CALL                             R18 2 1
      177 SETTABLEKS                       R18 R17 K49 ["value"]
      179 GETTABLEKS                       R18 R3 K57 ["X"]
      181 SETTABLEKS                       R18 R17 K52 ["maximum"]
      183 CALL                             R15 2 1
      184 SETTABLEKS                       R15 R14 K19 ["Columns"]
      186 GETUPVAL                         R15 0
      187 GETTABLEKS                       R15 R15 K10 ["createElement"]
      189 GETUPVAL                         R16 6
      190 DUPTABLE                         R17 K53 [{["text"], ["layoutOrder"], ["onChanged"], ["value"], ["minimum"] = 1, ["maximum"]}]
      191 LOADK                            R20 K54 ["Slicer"]
      192 LOADK                            R21 K20 ["Rows"]
      193 NAMECALL                         R18 R1 K55 ["getText"]
      195 CALL                             R18 3 1
      196 SETTABLEKS                       R18 R17 K46 ["text"]
      198 MOVE                             R18 R10
      199 CALL                             R18 0 1
      200 SETTABLEKS                       R18 R17 K47 ["layoutOrder"]
      202 SETTABLEKS                       R5 R17 K48 ["onChanged"]
      204 DUPCLOSURE                       R20 K58 [PROTO_16]
      205 NAMECALL                         R18 R2 K37 ["map"]
      207 CALL                             R18 2 1
      208 SETTABLEKS                       R18 R17 K49 ["value"]
      210 GETTABLEKS                       R18 R3 K59 ["Y"]
      212 SETTABLEKS                       R18 R17 K52 ["maximum"]
      214 CALL                             R15 2 1
      215 SETTABLEKS                       R15 R14 K20 ["Rows"]
      217 GETUPVAL                         R15 0
      218 GETTABLEKS                       R15 R15 K10 ["createElement"]
      220 GETUPVAL                         R16 6
      221 DUPTABLE                         R17 K53 [{["text"], ["layoutOrder"], ["onChanged"], ["value"], ["minimum"] = 1, ["maximum"]}]
      222 LOADK                            R20 K54 ["Slicer"]
      223 LOADK                            R21 K21 ["Width"]
      224 NAMECALL                         R18 R1 K55 ["getText"]
      226 CALL                             R18 3 1
      227 SETTABLEKS                       R18 R17 K46 ["text"]
      229 MOVE                             R18 R10
      230 CALL                             R18 0 1
      231 SETTABLEKS                       R18 R17 K47 ["layoutOrder"]
      233 SETTABLEKS                       R6 R17 K48 ["onChanged"]
      235 DUPCLOSURE                       R20 K60 [PROTO_17]
      236 NAMECALL                         R18 R2 K37 ["map"]
      238 CALL                             R18 2 1
      239 SETTABLEKS                       R18 R17 K49 ["value"]
      241 GETTABLEKS                       R18 R3 K57 ["X"]
      243 SETTABLEKS                       R18 R17 K52 ["maximum"]
      245 CALL                             R15 2 1
      246 SETTABLEKS                       R15 R14 K21 ["Width"]
      248 GETUPVAL                         R15 0
      249 GETTABLEKS                       R15 R15 K10 ["createElement"]
      251 GETUPVAL                         R16 6
      252 DUPTABLE                         R17 K53 [{["text"], ["layoutOrder"], ["onChanged"], ["value"], ["minimum"] = 1, ["maximum"]}]
      253 LOADK                            R20 K54 ["Slicer"]
      254 LOADK                            R21 K22 ["Height"]
      255 NAMECALL                         R18 R1 K55 ["getText"]
      257 CALL                             R18 3 1
      258 SETTABLEKS                       R18 R17 K46 ["text"]
      260 MOVE                             R18 R10
      261 CALL                             R18 0 1
      262 SETTABLEKS                       R18 R17 K47 ["layoutOrder"]
      264 SETTABLEKS                       R7 R17 K48 ["onChanged"]
      266 DUPCLOSURE                       R20 K61 [PROTO_18]
      267 NAMECALL                         R18 R2 K37 ["map"]
      269 CALL                             R18 2 1
      270 SETTABLEKS                       R18 R17 K49 ["value"]
      272 GETTABLEKS                       R18 R3 K59 ["Y"]
      274 SETTABLEKS                       R18 R17 K52 ["maximum"]
      276 CALL                             R15 2 1
      277 SETTABLEKS                       R15 R14 K22 ["Height"]
      279 GETUPVAL                         R15 0
      280 GETTABLEKS                       R15 R15 K10 ["createElement"]
      282 GETUPVAL                         R16 6
      283 DUPTABLE                         R17 K63 [{["text"], ["layoutOrder"], ["onChanged"], ["value"], ["minimum"] = 0, ["maximum"]}]
      284 LOADK                            R20 K54 ["Slicer"]
      285 LOADK                            R21 K23 ["OffsetX"]
      286 NAMECALL                         R18 R1 K55 ["getText"]
      288 CALL                             R18 3 1
      289 SETTABLEKS                       R18 R17 K46 ["text"]
      291 MOVE                             R18 R10
      292 CALL                             R18 0 1
      293 SETTABLEKS                       R18 R17 K47 ["layoutOrder"]
      295 SETTABLEKS                       R8 R17 K48 ["onChanged"]
      297 DUPCLOSURE                       R20 K64 [PROTO_19]
      298 NAMECALL                         R18 R2 K37 ["map"]
      300 CALL                             R18 2 1
      301 SETTABLEKS                       R18 R17 K49 ["value"]
      303 GETTABLEKS                       R19 R3 K57 ["X"]
      305 SUBK                             R18 R19 K51 [1]
      306 SETTABLEKS                       R18 R17 K52 ["maximum"]
      308 CALL                             R15 2 1
      309 SETTABLEKS                       R15 R14 K23 ["OffsetX"]
      311 GETUPVAL                         R15 0
      312 GETTABLEKS                       R15 R15 K10 ["createElement"]
      314 GETUPVAL                         R16 6
      315 DUPTABLE                         R17 K63 [{["text"], ["layoutOrder"], ["onChanged"], ["value"], ["minimum"] = 0, ["maximum"]}]
      316 LOADK                            R20 K54 ["Slicer"]
      317 LOADK                            R21 K24 ["OffsetY"]
      318 NAMECALL                         R18 R1 K55 ["getText"]
      320 CALL                             R18 3 1
      321 SETTABLEKS                       R18 R17 K46 ["text"]
      323 MOVE                             R18 R10
      324 CALL                             R18 0 1
      325 SETTABLEKS                       R18 R17 K47 ["layoutOrder"]
      327 SETTABLEKS                       R9 R17 K48 ["onChanged"]
      329 DUPCLOSURE                       R20 K65 [PROTO_20]
      330 NAMECALL                         R18 R2 K37 ["map"]
      332 CALL                             R18 2 1
      333 SETTABLEKS                       R18 R17 K49 ["value"]
      335 GETTABLEKS                       R19 R3 K59 ["Y"]
      337 SUBK                             R18 R19 K51 [1]
      338 SETTABLEKS                       R18 R17 K52 ["maximum"]
      340 CALL                             R15 2 1
      341 SETTABLEKS                       R15 R14 K24 ["OffsetY"]
      343 GETUPVAL                         R15 0
      344 GETTABLEKS                       R15 R15 K10 ["createElement"]
      346 GETUPVAL                         R16 5
      347 GETTABLEKS                       R16 R16 K11 ["View"]
      349 DUPTABLE                         R17 K67 [{["tag"] = "fill", ["LayoutOrder"]}]
      350 MOVE                             R18 R10
      351 CALL                             R18 0 1
      352 SETTABLEKS                       R18 R17 K30 ["LayoutOrder"]
      354 CALL                             R15 2 1
      355 SETTABLEKS                       R15 R14 K25 ["Gap3"]
      357 GETUPVAL                         R15 0
      358 GETTABLEKS                       R15 R15 K10 ["createElement"]
      360 GETUPVAL                         R16 5
      361 GETTABLEKS                       R16 R16 K33 ["Text"]
      363 DUPTABLE                         R17 K69 [{["Text"], ["LayoutOrder"], ["tag"] = "auto-xy text-caption-small"}]
      364 NEWCLOSURE                       R20 P14
      365 CAPTURE                          VAL R1
      366 NAMECALL                         R18 R2 K37 ["map"]
      368 CALL                             R18 2 1
      369 SETTABLEKS                       R18 R17 K33 ["Text"]
      371 MOVE                             R18 R10
      372 CALL                             R18 0 1
      373 SETTABLEKS                       R18 R17 K30 ["LayoutOrder"]
      375 CALL                             R15 2 1
      376 SETTABLEKS                       R15 R14 K26 ["FrameCount"]
      378 GETUPVAL                         R15 0
      379 GETTABLEKS                       R15 R15 K10 ["createElement"]
      381 GETUPVAL                         R16 5
      382 GETTABLEKS                       R16 R16 K11 ["View"]
      384 DUPTABLE                         R17 K71 [{["tag"] = "size-0-250", ["LayoutOrder"]}]
      385 MOVE                             R18 R10
      386 CALL                             R18 0 1
      387 SETTABLEKS                       R18 R17 K30 ["LayoutOrder"]
      389 CALL                             R15 2 1
      390 SETTABLEKS                       R15 R14 K27 ["Gap4"]
      392 GETUPVAL                         R15 0
      393 GETTABLEKS                       R15 R15 K10 ["createElement"]
      395 GETUPVAL                         R16 5
      396 GETTABLEKS                       R16 R16 K72 ["Button"]
      398 DUPTABLE                         R17 K78 [{"text", "variant", "onActivated", "size", "width", "isDisabled", "LayoutOrder"}]
      399 LOADK                            R20 K54 ["Slicer"]
      400 LOADK                            R21 K79 ["SliceImage"]
      401 NAMECALL                         R18 R1 K55 ["getText"]
      403 CALL                             R18 3 1
      404 SETTABLEKS                       R18 R17 K46 ["text"]
      406 GETUPVAL                         R18 5
      407 GETTABLEKS                       R18 R18 K43 ["Enums"]
      409 GETTABLEKS                       R18 R18 K80 ["ButtonVariant"]
      411 GETTABLEKS                       R18 R18 K81 ["Emphasis"]
      413 SETTABLEKS                       R18 R17 K73 ["variant"]
      415 GETTABLEKS                       R18 R0 K82 ["onFinish"]
      417 SETTABLEKS                       R18 R17 K74 ["onActivated"]
      419 GETUPVAL                         R18 5
      420 GETTABLEKS                       R18 R18 K43 ["Enums"]
      422 GETTABLEKS                       R18 R18 K83 ["ButtonSize"]
      424 GETTABLEKS                       R18 R18 K84 ["Small"]
      426 SETTABLEKS                       R18 R17 K75 ["size"]
      428 GETIMPORT                        R18 K87 [UDim.new]
      430 LOADN                            R19 1
      431 LOADN                            R20 0
      432 CALL                             R18 2 1
      433 SETTABLEKS                       R18 R17 K76 ["width"]
      435 GETTABLEKS                       R18 R0 K88 ["finishing"]
      437 SETTABLEKS                       R18 R17 K77 ["isDisabled"]
      439 MOVE                             R18 R10
      440 CALL                             R18 0 1
      441 SETTABLEKS                       R18 R17 K30 ["LayoutOrder"]
      443 CALL                             R15 2 1
      444 SETTABLEKS                       R15 R14 K28 ["SliceImageButton"]
      446 CALL                             R11 3 -1
      447 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimatedImageImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Components"]
       20 GETTABLEKS                       R3 R3 K10 ["MetadataNumberInput"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Packages"]
       34 GETTABLEKS                       R5 R5 K12 ["ReactUtils"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Packages"]
       41 GETTABLEKS                       R6 R6 K13 ["Signals"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K6 ["Packages"]
       48 GETTABLEKS                       R7 R7 K14 ["SignalsReact"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K6 ["Packages"]
       55 GETTABLEKS                       R8 R8 K15 ["StudioFoundation"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K8 ["Src"]
       62 GETTABLEKS                       R9 R9 K16 ["Types"]
       64 CALL                             R8 1 1
       65 DUPCLOSURE                       R9 K17 [PROTO_22]
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R2
       73 RETURN                           R9 1
