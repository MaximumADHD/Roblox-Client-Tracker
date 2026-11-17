PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["slicerStateHistory"]
        3 GETTABLEKS                       R1 R1 K1 ["observeValue"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R1 R1 K2 ["imageSize"]
        9 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 MOVE                             R0 R2
        5 GETIMPORT                        R2 K5 [Vector2.new]
        7 FASTCALL1                        MATH_FLOOR R1 ; [+3]
        8 MOVE                             R5 R1
        9 GETIMPORT                        R4 K8 [math.floor]
       11 CALL                             R4 1 1
       12 LOADN                            R5 1
       13 GETTABLEKS                       R6 R0 K9 ["sheetSize"]
       15 GETTABLEKS                       R6 R6 K10 ["X"]
       17 FASTCALL                         MATH_CLAMP ; [+2]
       18 GETIMPORT                        R3 K12 [math.clamp]
       20 CALL                             R3 3 1
       21 GETTABLEKS                       R4 R0 K13 ["grid"]
       23 GETTABLEKS                       R4 R4 K14 ["Y"]
       25 CALL                             R2 2 1
       26 SETTABLEKS                       R2 R0 K13 ["grid"]
       28 RETURN                           R0 1

PROTO_3:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 MOVE                             R0 R2
        5 GETIMPORT                        R2 K5 [Vector2.new]
        7 GETTABLEKS                       R3 R0 K6 ["grid"]
        9 GETTABLEKS                       R3 R3 K7 ["X"]
       11 FASTCALL1                        MATH_FLOOR R1 ; [+3]
       12 MOVE                             R6 R1
       13 GETIMPORT                        R5 K10 [math.floor]
       15 CALL                             R5 1 1
       16 LOADN                            R6 1
       17 GETTABLEKS                       R7 R0 K11 ["sheetSize"]
       19 GETTABLEKS                       R7 R7 K12 ["Y"]
       21 FASTCALL                         MATH_CLAMP ; [+2]
       22 GETIMPORT                        R4 K14 [math.clamp]
       24 CALL                             R4 3 1
       25 CALL                             R2 2 1
       26 SETTABLEKS                       R2 R0 K6 ["grid"]
       28 RETURN                           R0 1

PROTO_4:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 MOVE                             R0 R2
        5 GETIMPORT                        R2 K5 [Vector2.new]
        7 FASTCALL1                        MATH_FLOOR R1 ; [+3]
        8 MOVE                             R5 R1
        9 GETIMPORT                        R4 K8 [math.floor]
       11 CALL                             R4 1 1
       12 GETTABLEKS                       R5 R0 K9 ["grid"]
       14 GETTABLEKS                       R5 R5 K10 ["X"]
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R7 R7 K10 ["X"]
       19 GETTABLEKS                       R8 R0 K11 ["offset"]
       21 GETTABLEKS                       R8 R8 K10 ["X"]
       23 SUB                              R6 R7 R8
       24 FASTCALL                         MATH_CLAMP ; [+2]
       25 GETIMPORT                        R3 K13 [math.clamp]
       27 CALL                             R3 3 1
       28 GETTABLEKS                       R4 R0 K14 ["sheetSize"]
       30 GETTABLEKS                       R4 R4 K15 ["Y"]
       32 CALL                             R2 2 1
       33 SETTABLEKS                       R2 R0 K14 ["sheetSize"]
       35 RETURN                           R0 1

PROTO_5:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 MOVE                             R0 R2
        5 GETIMPORT                        R2 K5 [Vector2.new]
        7 GETTABLEKS                       R3 R0 K6 ["sheetSize"]
        9 GETTABLEKS                       R3 R3 K7 ["X"]
       11 FASTCALL1                        MATH_FLOOR R1 ; [+3]
       12 MOVE                             R6 R1
       13 GETIMPORT                        R5 K10 [math.floor]
       15 CALL                             R5 1 1
       16 GETTABLEKS                       R6 R0 K11 ["grid"]
       18 GETTABLEKS                       R6 R6 K12 ["Y"]
       20 GETUPVAL                         R8 0
       21 GETTABLEKS                       R8 R8 K12 ["Y"]
       23 GETTABLEKS                       R9 R0 K13 ["offset"]
       25 GETTABLEKS                       R9 R9 K12 ["Y"]
       27 SUB                              R7 R8 R9
       28 FASTCALL                         MATH_CLAMP ; [+2]
       29 GETIMPORT                        R4 K15 [math.clamp]
       31 CALL                             R4 3 1
       32 CALL                             R2 2 1
       33 SETTABLEKS                       R2 R0 K6 ["sheetSize"]
       35 RETURN                           R0 1

PROTO_6:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 MOVE                             R0 R2
        5 GETIMPORT                        R2 K5 [Vector2.new]
        7 FASTCALL1                        MATH_FLOOR R1 ; [+3]
        8 MOVE                             R5 R1
        9 GETIMPORT                        R4 K8 [math.floor]
       11 CALL                             R4 1 1
       12 LOADN                            R5 0
       13 GETTABLEKS                       R7 R0 K9 ["imageSize"]
       15 GETTABLEKS                       R7 R7 K10 ["X"]
       17 GETTABLEKS                       R8 R0 K11 ["sheetSize"]
       19 GETTABLEKS                       R8 R8 K10 ["X"]
       21 SUB                              R6 R7 R8
       22 FASTCALL                         MATH_CLAMP ; [+2]
       23 GETIMPORT                        R3 K13 [math.clamp]
       25 CALL                             R3 3 1
       26 GETTABLEKS                       R4 R0 K14 ["offset"]
       28 GETTABLEKS                       R4 R4 K15 ["Y"]
       30 CALL                             R2 2 1
       31 SETTABLEKS                       R2 R0 K14 ["offset"]
       33 RETURN                           R0 1

PROTO_7:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 MOVE                             R0 R2
        5 GETIMPORT                        R2 K5 [Vector2.new]
        7 GETTABLEKS                       R3 R0 K6 ["offset"]
        9 GETTABLEKS                       R3 R3 K7 ["X"]
       11 FASTCALL1                        MATH_FLOOR R1 ; [+3]
       12 MOVE                             R6 R1
       13 GETIMPORT                        R5 K10 [math.floor]
       15 CALL                             R5 1 1
       16 LOADN                            R6 0
       17 GETTABLEKS                       R8 R0 K11 ["imageSize"]
       19 GETTABLEKS                       R8 R8 K12 ["Y"]
       21 GETTABLEKS                       R9 R0 K13 ["sheetSize"]
       23 GETTABLEKS                       R9 R9 K12 ["Y"]
       25 SUB                              R7 R8 R9
       26 FASTCALL                         MATH_CLAMP ; [+2]
       27 GETIMPORT                        R4 K15 [math.clamp]
       29 CALL                             R4 3 1
       30 CALL                             R2 2 1
       31 SETTABLEKS                       R2 R0 K6 ["offset"]
       33 RETURN                           R0 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["source"]
        2 GETTABLEKS                       R1 R1 K1 ["filename"]
        4 RETURN                           R1 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["grid"]
        2 GETTABLEKS                       R1 R1 K1 ["X"]
        4 RETURN                           R1 1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["grid"]
        2 GETTABLEKS                       R1 R1 K1 ["Y"]
        4 RETURN                           R1 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["sheetSize"]
        2 GETTABLEKS                       R1 R1 K1 ["X"]
        4 RETURN                           R1 1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["sheetSize"]
        2 GETTABLEKS                       R1 R1 K1 ["Y"]
        4 RETURN                           R1 1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["offset"]
        2 GETTABLEKS                       R1 R1 K1 ["X"]
        4 RETURN                           R1 1

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["offset"]
        2 GETTABLEKS                       R1 R1 K1 ["Y"]
        4 RETURN                           R1 1

PROTO_15:
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

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Contexts"]
        6 GETTABLEKS                       R2 R2 K2 ["Localization"]
        8 GETTABLEKS                       R2 R2 K3 ["Context"]
       10 CALL                             R1 1 1
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K4 ["useSignalBinding"]
       14 GETTABLEKS                       R3 R0 K5 ["slicerStateHistory"]
       16 GETTABLEKS                       R3 R3 K6 ["observeValue"]
       18 CALL                             R2 1 1
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R3 R3 K7 ["useSignalState"]
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K8 ["useMemo"]
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          VAL R0
       28 NEWTABLE                         R6 0 1
       30 GETTABLEKS                       R7 R0 K5 ["slicerStateHistory"]
       32 GETTABLEKS                       R7 R7 K6 ["observeValue"]
       34 SETLIST                          R6 R7 1 [1]
       36 CALL                             R4 2 -1
       37 CALL                             R3 -1 1
       38 GETUPVAL                         R4 4
       39 GETTABLEKS                       R4 R4 K9 ["useEventCallback"]
       41 DUPCLOSURE                       R5 K10 [PROTO_2]
       42 CALL                             R4 1 1
       43 GETUPVAL                         R5 4
       44 GETTABLEKS                       R5 R5 K9 ["useEventCallback"]
       46 DUPCLOSURE                       R6 K11 [PROTO_3]
       47 CALL                             R5 1 1
       48 GETUPVAL                         R6 4
       49 GETTABLEKS                       R6 R6 K9 ["useEventCallback"]
       51 NEWCLOSURE                       R7 P3
       52 CAPTURE                          VAL R3
       53 CALL                             R6 1 1
       54 GETUPVAL                         R7 4
       55 GETTABLEKS                       R7 R7 K9 ["useEventCallback"]
       57 NEWCLOSURE                       R8 P4
       58 CAPTURE                          VAL R3
       59 CALL                             R7 1 1
       60 GETUPVAL                         R8 4
       61 GETTABLEKS                       R8 R8 K9 ["useEventCallback"]
       63 DUPCLOSURE                       R9 K12 [PROTO_6]
       64 CALL                             R8 1 1
       65 GETUPVAL                         R9 4
       66 GETTABLEKS                       R9 R9 K9 ["useEventCallback"]
       68 DUPCLOSURE                       R10 K13 [PROTO_7]
       69 CALL                             R9 1 1
       70 GETUPVAL                         R10 4
       71 GETTABLEKS                       R10 R10 K14 ["createNextOrder"]
       73 CALL                             R10 0 1
       74 GETUPVAL                         R11 0
       75 GETTABLEKS                       R11 R11 K15 ["createElement"]
       77 GETUPVAL                         R12 5
       78 GETTABLEKS                       R12 R12 K16 ["View"]
       80 DUPTABLE                         R13 K19 [{["tag"] = "col size-full"}]
       81 DUPTABLE                         R14 K32 [{"Gap1", "Title", "Gap2", "MetadataDivider", "Columns", "Rows", "Width", "Height", "OffsetX", "OffsetY", "Gap3", "FrameCount"}]
       82 GETUPVAL                         R15 0
       83 GETTABLEKS                       R15 R15 K15 ["createElement"]
       85 GETUPVAL                         R16 5
       86 GETTABLEKS                       R16 R16 K16 ["View"]
       88 DUPTABLE                         R17 K35 [{["LayoutOrder"], ["tag"] = "size-0-300"}]
       89 MOVE                             R18 R10
       90 CALL                             R18 0 1
       91 SETTABLEKS                       R18 R17 K33 ["LayoutOrder"]
       93 CALL                             R15 2 1
       94 SETTABLEKS                       R15 R14 K20 ["Gap1"]
       96 GETUPVAL                         R15 0
       97 GETTABLEKS                       R15 R15 K15 ["createElement"]
       99 GETUPVAL                         R16 5
      100 GETTABLEKS                       R16 R16 K36 ["Text"]
      102 DUPTABLE                         R17 K38 [{["Text"], ["LayoutOrder"], ["tag"] = "content-emphasis text-title-large auto-xy"}]
      103 DUPCLOSURE                       R20 K39 [PROTO_8]
      104 NAMECALL                         R18 R2 K40 ["map"]
      106 CALL                             R18 2 1
      107 SETTABLEKS                       R18 R17 K36 ["Text"]
      109 MOVE                             R18 R10
      110 CALL                             R18 0 1
      111 SETTABLEKS                       R18 R17 K33 ["LayoutOrder"]
      113 CALL                             R15 2 1
      114 SETTABLEKS                       R15 R14 K21 ["Title"]
      116 GETUPVAL                         R15 0
      117 GETTABLEKS                       R15 R15 K15 ["createElement"]
      119 GETUPVAL                         R16 5
      120 GETTABLEKS                       R16 R16 K16 ["View"]
      122 DUPTABLE                         R17 K42 [{["LayoutOrder"], ["tag"] = "size-0-800"}]
      123 MOVE                             R18 R10
      124 CALL                             R18 0 1
      125 SETTABLEKS                       R18 R17 K33 ["LayoutOrder"]
      127 CALL                             R15 2 1
      128 SETTABLEKS                       R15 R14 K22 ["Gap2"]
      130 GETUPVAL                         R15 0
      131 GETTABLEKS                       R15 R15 K15 ["createElement"]
      133 GETUPVAL                         R16 5
      134 GETTABLEKS                       R16 R16 K43 ["Divider"]
      136 DUPTABLE                         R17 K45 [{"orientation", "LayoutOrder"}]
      137 GETUPVAL                         R18 5
      138 GETTABLEKS                       R18 R18 K46 ["Enums"]
      140 GETTABLEKS                       R18 R18 K47 ["Orientation"]
      142 GETTABLEKS                       R18 R18 K48 ["Horizontal"]
      144 SETTABLEKS                       R18 R17 K44 ["orientation"]
      146 MOVE                             R18 R10
      147 CALL                             R18 0 1
      148 SETTABLEKS                       R18 R17 K33 ["LayoutOrder"]
      150 CALL                             R15 2 1
      151 SETTABLEKS                       R15 R14 K23 ["MetadataDivider"]
      153 GETUPVAL                         R15 0
      154 GETTABLEKS                       R15 R15 K15 ["createElement"]
      156 GETUPVAL                         R16 6
      157 DUPTABLE                         R17 K57 [{["text"], ["layoutOrder"], ["historyState"], ["getNextState"], ["value"], ["minimum"] = 1, ["maximum"]}]
      158 LOADK                            R20 K58 ["Slicer"]
      159 LOADK                            R21 K24 ["Columns"]
      160 NAMECALL                         R18 R1 K59 ["getText"]
      162 CALL                             R18 3 1
      163 SETTABLEKS                       R18 R17 K49 ["text"]
      165 MOVE                             R18 R10
      166 CALL                             R18 0 1
      167 SETTABLEKS                       R18 R17 K50 ["layoutOrder"]
      169 GETTABLEKS                       R18 R0 K5 ["slicerStateHistory"]
      171 SETTABLEKS                       R18 R17 K51 ["historyState"]
      173 SETTABLEKS                       R4 R17 K52 ["getNextState"]
      175 DUPCLOSURE                       R20 K60 [PROTO_9]
      176 NAMECALL                         R18 R2 K40 ["map"]
      178 CALL                             R18 2 1
      179 SETTABLEKS                       R18 R17 K53 ["value"]
      181 GETTABLEKS                       R18 R3 K61 ["X"]
      183 SETTABLEKS                       R18 R17 K56 ["maximum"]
      185 CALL                             R15 2 1
      186 SETTABLEKS                       R15 R14 K24 ["Columns"]
      188 GETUPVAL                         R15 0
      189 GETTABLEKS                       R15 R15 K15 ["createElement"]
      191 GETUPVAL                         R16 6
      192 DUPTABLE                         R17 K57 [{["text"], ["layoutOrder"], ["historyState"], ["getNextState"], ["value"], ["minimum"] = 1, ["maximum"]}]
      193 LOADK                            R20 K58 ["Slicer"]
      194 LOADK                            R21 K25 ["Rows"]
      195 NAMECALL                         R18 R1 K59 ["getText"]
      197 CALL                             R18 3 1
      198 SETTABLEKS                       R18 R17 K49 ["text"]
      200 MOVE                             R18 R10
      201 CALL                             R18 0 1
      202 SETTABLEKS                       R18 R17 K50 ["layoutOrder"]
      204 GETTABLEKS                       R18 R0 K5 ["slicerStateHistory"]
      206 SETTABLEKS                       R18 R17 K51 ["historyState"]
      208 SETTABLEKS                       R5 R17 K52 ["getNextState"]
      210 DUPCLOSURE                       R20 K62 [PROTO_10]
      211 NAMECALL                         R18 R2 K40 ["map"]
      213 CALL                             R18 2 1
      214 SETTABLEKS                       R18 R17 K53 ["value"]
      216 GETTABLEKS                       R18 R3 K63 ["Y"]
      218 SETTABLEKS                       R18 R17 K56 ["maximum"]
      220 CALL                             R15 2 1
      221 SETTABLEKS                       R15 R14 K25 ["Rows"]
      223 GETUPVAL                         R15 0
      224 GETTABLEKS                       R15 R15 K15 ["createElement"]
      226 GETUPVAL                         R16 6
      227 DUPTABLE                         R17 K57 [{["text"], ["layoutOrder"], ["historyState"], ["getNextState"], ["value"], ["minimum"] = 1, ["maximum"]}]
      228 LOADK                            R20 K58 ["Slicer"]
      229 LOADK                            R21 K26 ["Width"]
      230 NAMECALL                         R18 R1 K59 ["getText"]
      232 CALL                             R18 3 1
      233 SETTABLEKS                       R18 R17 K49 ["text"]
      235 MOVE                             R18 R10
      236 CALL                             R18 0 1
      237 SETTABLEKS                       R18 R17 K50 ["layoutOrder"]
      239 GETTABLEKS                       R18 R0 K5 ["slicerStateHistory"]
      241 SETTABLEKS                       R18 R17 K51 ["historyState"]
      243 SETTABLEKS                       R6 R17 K52 ["getNextState"]
      245 DUPCLOSURE                       R20 K64 [PROTO_11]
      246 NAMECALL                         R18 R2 K40 ["map"]
      248 CALL                             R18 2 1
      249 SETTABLEKS                       R18 R17 K53 ["value"]
      251 GETTABLEKS                       R18 R3 K61 ["X"]
      253 SETTABLEKS                       R18 R17 K56 ["maximum"]
      255 CALL                             R15 2 1
      256 SETTABLEKS                       R15 R14 K26 ["Width"]
      258 GETUPVAL                         R15 0
      259 GETTABLEKS                       R15 R15 K15 ["createElement"]
      261 GETUPVAL                         R16 6
      262 DUPTABLE                         R17 K57 [{["text"], ["layoutOrder"], ["historyState"], ["getNextState"], ["value"], ["minimum"] = 1, ["maximum"]}]
      263 LOADK                            R20 K58 ["Slicer"]
      264 LOADK                            R21 K27 ["Height"]
      265 NAMECALL                         R18 R1 K59 ["getText"]
      267 CALL                             R18 3 1
      268 SETTABLEKS                       R18 R17 K49 ["text"]
      270 MOVE                             R18 R10
      271 CALL                             R18 0 1
      272 SETTABLEKS                       R18 R17 K50 ["layoutOrder"]
      274 GETTABLEKS                       R18 R0 K5 ["slicerStateHistory"]
      276 SETTABLEKS                       R18 R17 K51 ["historyState"]
      278 SETTABLEKS                       R7 R17 K52 ["getNextState"]
      280 DUPCLOSURE                       R20 K65 [PROTO_12]
      281 NAMECALL                         R18 R2 K40 ["map"]
      283 CALL                             R18 2 1
      284 SETTABLEKS                       R18 R17 K53 ["value"]
      286 GETTABLEKS                       R18 R3 K63 ["Y"]
      288 SETTABLEKS                       R18 R17 K56 ["maximum"]
      290 CALL                             R15 2 1
      291 SETTABLEKS                       R15 R14 K27 ["Height"]
      293 GETUPVAL                         R15 0
      294 GETTABLEKS                       R15 R15 K15 ["createElement"]
      296 GETUPVAL                         R16 6
      297 DUPTABLE                         R17 K67 [{["text"], ["layoutOrder"], ["historyState"], ["getNextState"], ["value"], ["minimum"] = 0, ["maximum"]}]
      298 LOADK                            R20 K58 ["Slicer"]
      299 LOADK                            R21 K28 ["OffsetX"]
      300 NAMECALL                         R18 R1 K59 ["getText"]
      302 CALL                             R18 3 1
      303 SETTABLEKS                       R18 R17 K49 ["text"]
      305 MOVE                             R18 R10
      306 CALL                             R18 0 1
      307 SETTABLEKS                       R18 R17 K50 ["layoutOrder"]
      309 GETTABLEKS                       R18 R0 K5 ["slicerStateHistory"]
      311 SETTABLEKS                       R18 R17 K51 ["historyState"]
      313 SETTABLEKS                       R8 R17 K52 ["getNextState"]
      315 DUPCLOSURE                       R20 K68 [PROTO_13]
      316 NAMECALL                         R18 R2 K40 ["map"]
      318 CALL                             R18 2 1
      319 SETTABLEKS                       R18 R17 K53 ["value"]
      321 GETTABLEKS                       R19 R3 K61 ["X"]
      323 SUBK                             R18 R19 K55 [1]
      324 SETTABLEKS                       R18 R17 K56 ["maximum"]
      326 CALL                             R15 2 1
      327 SETTABLEKS                       R15 R14 K28 ["OffsetX"]
      329 GETUPVAL                         R15 0
      330 GETTABLEKS                       R15 R15 K15 ["createElement"]
      332 GETUPVAL                         R16 6
      333 DUPTABLE                         R17 K67 [{["text"], ["layoutOrder"], ["historyState"], ["getNextState"], ["value"], ["minimum"] = 0, ["maximum"]}]
      334 LOADK                            R20 K58 ["Slicer"]
      335 LOADK                            R21 K29 ["OffsetY"]
      336 NAMECALL                         R18 R1 K59 ["getText"]
      338 CALL                             R18 3 1
      339 SETTABLEKS                       R18 R17 K49 ["text"]
      341 MOVE                             R18 R10
      342 CALL                             R18 0 1
      343 SETTABLEKS                       R18 R17 K50 ["layoutOrder"]
      345 GETTABLEKS                       R18 R0 K5 ["slicerStateHistory"]
      347 SETTABLEKS                       R18 R17 K51 ["historyState"]
      349 SETTABLEKS                       R9 R17 K52 ["getNextState"]
      351 DUPCLOSURE                       R20 K69 [PROTO_14]
      352 NAMECALL                         R18 R2 K40 ["map"]
      354 CALL                             R18 2 1
      355 SETTABLEKS                       R18 R17 K53 ["value"]
      357 GETTABLEKS                       R19 R3 K63 ["Y"]
      359 SUBK                             R18 R19 K55 [1]
      360 SETTABLEKS                       R18 R17 K56 ["maximum"]
      362 CALL                             R15 2 1
      363 SETTABLEKS                       R15 R14 K29 ["OffsetY"]
      365 GETUPVAL                         R15 0
      366 GETTABLEKS                       R15 R15 K15 ["createElement"]
      368 GETUPVAL                         R16 5
      369 GETTABLEKS                       R16 R16 K16 ["View"]
      371 DUPTABLE                         R17 K71 [{["tag"] = "fill", ["LayoutOrder"]}]
      372 MOVE                             R18 R10
      373 CALL                             R18 0 1
      374 SETTABLEKS                       R18 R17 K33 ["LayoutOrder"]
      376 CALL                             R15 2 1
      377 SETTABLEKS                       R15 R14 K30 ["Gap3"]
      379 GETUPVAL                         R15 0
      380 GETTABLEKS                       R15 R15 K15 ["createElement"]
      382 GETUPVAL                         R16 5
      383 GETTABLEKS                       R16 R16 K36 ["Text"]
      385 DUPTABLE                         R17 K73 [{["Text"], ["LayoutOrder"], ["tag"] = "auto-xy text-caption-small"}]
      386 NEWCLOSURE                       R20 P14
      387 CAPTURE                          VAL R1
      388 NAMECALL                         R18 R2 K40 ["map"]
      390 CALL                             R18 2 1
      391 SETTABLEKS                       R18 R17 K36 ["Text"]
      393 MOVE                             R18 R10
      394 CALL                             R18 0 1
      395 SETTABLEKS                       R18 R17 K33 ["LayoutOrder"]
      397 CALL                             R15 2 1
      398 SETTABLEKS                       R15 R14 K31 ["FrameCount"]
      400 CALL                             R11 3 -1
      401 RETURN                           R11 -1

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
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K8 ["Src"]
       69 GETTABLEKS                       R10 R10 K17 ["Libraries"]
       71 GETTABLEKS                       R10 R10 K18 ["useHistoryState"]
       73 CALL                             R9 1 1
       74 DUPCLOSURE                       R10 K19 [PROTO_16]
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R2
       82 RETURN                           R10 1
