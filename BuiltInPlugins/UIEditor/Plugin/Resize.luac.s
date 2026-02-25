PROTO_0:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R0 R1 ; [+3]
        3 GETUPVAL                         R1 1
        4 SETUPVAL                         R1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["Frame"]
        3 CALL                             R0 1 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 0
        6 LOADK                            R1 K4 ["UIEditorResizeHandleParent"]
        7 SETTABLEKS                       R1 R0 K5 ["Name"]
        9 GETUPVAL                         R0 0
       10 GETIMPORT                        R1 K7 [Vector2.new]
       12 LOADN                            R2 0
       13 LOADN                            R3 0
       14 CALL                             R1 2 1
       15 SETTABLEKS                       R1 R0 K8 ["AnchorPoint"]
       17 GETUPVAL                         R0 0
       18 LOADN                            R1 1
       19 SETTABLEKS                       R1 R0 K9 ["BackgroundTransparency"]
       21 GETUPVAL                         R0 0
       22 GETIMPORT                        R1 K11 [Color3.new]
       24 LOADN                            R2 0
       25 LOADN                            R3 0
       26 LOADN                            R4 255
       27 CALL                             R1 3 1
       28 SETTABLEKS                       R1 R0 K12 ["BackgroundColor3"]
       30 GETUPVAL                         R0 0
       31 LOADN                            R1 0
       32 SETTABLEKS                       R1 R0 K13 ["BorderSizePixel"]
       34 RETURN                           R0 0

PROTO_3:
        0 LOADN                            R0 7
        1 GETUPVAL                         R1 0
        2 JUMPIFNOT                        R1 ; [+15]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["AbsoluteSize"]
        6 GETTABLEKS                       R1 R2 K2 ["Y"]
        8 MULK                             R0 R1 K0 [0.00875]
        9 LOADN                            R3 3
       10 LOADN                            R4 7
       11 FASTCALL3                        MATH_CLAMP R0 R3 R4
       13 MOVE                             R2 R0
       14 GETIMPORT                        R1 K5 [math.clamp]
       16 CALL                             R1 3 1
       17 MOVE                             R0 R1
       18 GETIMPORT                        R1 K8 [UDim2.new]
       20 LOADN                            R2 0
       21 MOVE                             R3 R0
       22 LOADN                            R4 0
       23 MOVE                             R5 R0
       24 CALL                             R1 4 -1
       25 RETURN                           R1 -1

PROTO_4:
        0 LOADN                            R2 1
        1 GETUPVAL                         R3 0
        2 LENGTH                           R0 R3
        3 LOADN                            R1 1
        4 FORNPREP                         R0
        5 GETUPVAL                         R4 0
        6 GETTABLE                         R3 R4 R2
        7 LOADN                            R5 7
        8 GETUPVAL                         R6 1
        9 JUMPIFNOT                        R6 ; [+15]
       10 GETUPVAL                         R8 1
       11 GETTABLEKS                       R7 R8 K1 ["AbsoluteSize"]
       13 GETTABLEKS                       R6 R7 K2 ["Y"]
       15 MULK                             R5 R6 K0 [0.00875]
       16 LOADN                            R8 3
       17 LOADN                            R9 7
       18 FASTCALL3                        MATH_CLAMP R5 R8 R9
       20 MOVE                             R7 R5
       21 GETIMPORT                        R6 K5 [math.clamp]
       23 CALL                             R6 3 1
       24 MOVE                             R5 R6
       25 GETIMPORT                        R6 K8 [UDim2.new]
       27 LOADN                            R7 0
       28 MOVE                             R8 R5
       29 LOADN                            R9 0
       30 MOVE                             R10 R5
       31 CALL                             R6 4 1
       32 MOVE                             R4 R6
       33 SETTABLEKS                       R4 R3 K9 ["Size"]
       35 LOADK                            R6 K10 ["ImageLabel"]
       36 NAMECALL                         R4 R3 K11 ["FindFirstChildWhichIsA"]
       38 CALL                             R4 2 1
       39 GETIMPORT                        R5 K8 [UDim2.new]
       41 LOADN                            R6 0
       42 GETTABLEKS                       R9 R3 K1 ["AbsoluteSize"]
       44 GETTABLEKS                       R8 R9 K13 ["X"]
       46 ADDK                             R7 R8 K12 [8]
       47 LOADN                            R8 0
       48 GETTABLEKS                       R11 R3 K1 ["AbsoluteSize"]
       50 GETTABLEKS                       R10 R11 K2 ["Y"]
       52 ADDK                             R9 R10 K12 [8]
       53 CALL                             R5 4 1
       54 SETTABLEKS                       R5 R4 K9 ["Size"]
       56 FORNLOOP                         R0
       57 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 SETUPVAL                         R2 1
        2 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 JUMPIFNOTEQ                      R2 R3 ; [+3]
        4 GETUPVAL                         R3 2
        5 SETUPVAL                         R3 1
        6 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R0 8 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["E"]
        5 GETIMPORT                        R2 K3 [Vector2.new]
        7 LOADN                            R3 0
        8 LOADK                            R4 K4 [0.5]
        9 CALL                             R2 2 1
       10 SETTABLE                         R2 R0 R1
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R1 R2 K5 ["SE"]
       14 GETIMPORT                        R2 K3 [Vector2.new]
       16 LOADN                            R3 0
       17 LOADN                            R4 0
       18 CALL                             R2 2 1
       19 SETTABLE                         R2 R0 R1
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R1 R2 K6 ["S"]
       23 GETIMPORT                        R2 K3 [Vector2.new]
       25 LOADK                            R3 K4 [0.5]
       26 LOADN                            R4 0
       27 CALL                             R2 2 1
       28 SETTABLE                         R2 R0 R1
       29 GETUPVAL                         R2 0
       30 GETTABLEKS                       R1 R2 K7 ["SW"]
       32 GETIMPORT                        R2 K3 [Vector2.new]
       34 LOADN                            R3 1
       35 LOADN                            R4 0
       36 CALL                             R2 2 1
       37 SETTABLE                         R2 R0 R1
       38 GETUPVAL                         R2 0
       39 GETTABLEKS                       R1 R2 K8 ["W"]
       41 GETIMPORT                        R2 K3 [Vector2.new]
       43 LOADN                            R3 1
       44 LOADK                            R4 K4 [0.5]
       45 CALL                             R2 2 1
       46 SETTABLE                         R2 R0 R1
       47 GETUPVAL                         R2 0
       48 GETTABLEKS                       R1 R2 K9 ["NW"]
       50 GETIMPORT                        R2 K3 [Vector2.new]
       52 LOADN                            R3 1
       53 LOADN                            R4 1
       54 CALL                             R2 2 1
       55 SETTABLE                         R2 R0 R1
       56 GETUPVAL                         R2 0
       57 GETTABLEKS                       R1 R2 K10 ["N"]
       59 GETIMPORT                        R2 K3 [Vector2.new]
       61 LOADK                            R3 K4 [0.5]
       62 LOADN                            R4 1
       63 CALL                             R2 2 1
       64 SETTABLE                         R2 R0 R1
       65 GETUPVAL                         R2 0
       66 GETTABLEKS                       R1 R2 K11 ["NE"]
       68 GETIMPORT                        R2 K3 [Vector2.new]
       70 LOADN                            R3 0
       71 LOADN                            R4 1
       72 CALL                             R2 2 1
       73 SETTABLE                         R2 R0 R1
       74 NEWTABLE                         R1 8 0
       76 GETUPVAL                         R3 0
       77 GETTABLEKS                       R2 R3 K0 ["E"]
       79 GETIMPORT                        R3 K13 [UDim2.new]
       81 LOADN                            R4 1
       82 LOADN                            R5 254
       83 LOADK                            R6 K4 [0.5]
       84 LOADN                            R7 0
       85 CALL                             R3 4 1
       86 SETTABLE                         R3 R1 R2
       87 GETUPVAL                         R3 0
       88 GETTABLEKS                       R2 R3 K5 ["SE"]
       90 GETIMPORT                        R3 K13 [UDim2.new]
       92 LOADN                            R4 1
       93 LOADN                            R5 254
       94 LOADN                            R6 1
       95 LOADN                            R7 254
       96 CALL                             R3 4 1
       97 SETTABLE                         R3 R1 R2
       98 GETUPVAL                         R3 0
       99 GETTABLEKS                       R2 R3 K6 ["S"]
      101 GETIMPORT                        R3 K13 [UDim2.new]
      103 LOADK                            R4 K4 [0.5]
      104 LOADN                            R5 0
      105 LOADN                            R6 1
      106 LOADN                            R7 254
      107 CALL                             R3 4 1
      108 SETTABLE                         R3 R1 R2
      109 GETUPVAL                         R3 0
      110 GETTABLEKS                       R2 R3 K7 ["SW"]
      112 GETIMPORT                        R3 K13 [UDim2.new]
      114 LOADN                            R4 0
      115 LOADN                            R5 2
      116 LOADN                            R6 1
      117 LOADN                            R7 254
      118 CALL                             R3 4 1
      119 SETTABLE                         R3 R1 R2
      120 GETUPVAL                         R3 0
      121 GETTABLEKS                       R2 R3 K8 ["W"]
      123 GETIMPORT                        R3 K13 [UDim2.new]
      125 LOADN                            R4 0
      126 LOADN                            R5 2
      127 LOADK                            R6 K4 [0.5]
      128 LOADN                            R7 0
      129 CALL                             R3 4 1
      130 SETTABLE                         R3 R1 R2
      131 GETUPVAL                         R3 0
      132 GETTABLEKS                       R2 R3 K9 ["NW"]
      134 GETIMPORT                        R3 K13 [UDim2.new]
      136 LOADN                            R4 0
      137 LOADN                            R5 2
      138 LOADN                            R6 0
      139 LOADN                            R7 2
      140 CALL                             R3 4 1
      141 SETTABLE                         R3 R1 R2
      142 GETUPVAL                         R3 0
      143 GETTABLEKS                       R2 R3 K10 ["N"]
      145 GETIMPORT                        R3 K13 [UDim2.new]
      147 LOADK                            R4 K4 [0.5]
      148 LOADN                            R5 0
      149 LOADN                            R6 0
      150 LOADN                            R7 2
      151 CALL                             R3 4 1
      152 SETTABLE                         R3 R1 R2
      153 GETUPVAL                         R3 0
      154 GETTABLEKS                       R2 R3 K11 ["NE"]
      156 GETIMPORT                        R3 K13 [UDim2.new]
      158 LOADN                            R4 1
      159 LOADN                            R5 254
      160 LOADN                            R6 0
      161 LOADN                            R7 2
      162 CALL                             R3 4 1
      163 SETTABLE                         R3 R1 R2
      164 GETUPVAL                         R5 0
      165 GETTABLEKS                       R4 R5 K14 ["FIRST"]
      167 GETUPVAL                         R5 0
      168 GETTABLEKS                       R2 R5 K15 ["LAST"]
      170 LOADN                            R3 1
      171 FORNPREP                         R2
      172 GETIMPORT                        R5 K17 [Instance.new]
      174 LOADK                            R6 K18 ["Frame"]
      175 CALL                             R5 1 1
      176 LOADK                            R7 K19 ["ResizeHandle_"]
      177 GETUPVAL                         R8 0
      178 MOVE                             R10 R4
      179 NAMECALL                         R8 R8 K20 ["toShortName"]
      181 CALL                             R8 2 1
      182 CONCAT                           R6 R7 R8
      183 SETTABLEKS                       R6 R5 K21 ["Name"]
      185 GETTABLE                         R6 R0 R4
      186 SETTABLEKS                       R6 R5 K22 ["AnchorPoint"]
      188 LOADN                            R7 7
      189 GETUPVAL                         R8 1
      190 JUMPIFNOT                        R8 ; [+15]
      191 GETUPVAL                         R10 1
      192 GETTABLEKS                       R9 R10 K24 ["AbsoluteSize"]
      194 GETTABLEKS                       R8 R9 K25 ["Y"]
      196 MULK                             R7 R8 K23 [0.00875]
      197 LOADN                            R10 3
      198 LOADN                            R11 7
      199 FASTCALL3                        MATH_CLAMP R7 R10 R11
      201 MOVE                             R9 R7
      202 GETIMPORT                        R8 K28 [math.clamp]
      204 CALL                             R8 3 1
      205 MOVE                             R7 R8
      206 GETIMPORT                        R8 K13 [UDim2.new]
      208 LOADN                            R9 0
      209 MOVE                             R10 R7
      210 LOADN                            R11 0
      211 MOVE                             R12 R7
      212 CALL                             R8 4 1
      213 MOVE                             R6 R8
      214 SETTABLEKS                       R6 R5 K29 ["Size"]
      216 GETTABLE                         R6 R1 R4
      217 SETTABLEKS                       R6 R5 K30 ["Position"]
      219 GETUPVAL                         R6 2
      220 SETTABLEKS                       R6 R5 K31 ["BackgroundColor3"]
      222 GETUPVAL                         R6 3
      223 SETTABLEKS                       R6 R5 K32 ["BorderColor3"]
      225 LOADN                            R6 3
      226 SETTABLEKS                       R6 R5 K33 ["ZIndex"]
      228 GETIMPORT                        R6 K17 [Instance.new]
      230 LOADK                            R7 K34 ["ImageLabel"]
      231 CALL                             R6 1 1
      232 LOADK                            R7 K35 ["rbxasset://textures/StudioUIEditor/resizeHandleDropShadow.png"]
      233 SETTABLEKS                       R7 R6 K36 ["Image"]
      235 LOADK                            R8 K37 ["ResizeHandleDropShadow_"]
      236 GETUPVAL                         R9 0
      237 MOVE                             R11 R4
      238 NAMECALL                         R9 R9 K20 ["toShortName"]
      240 CALL                             R9 2 1
      241 CONCAT                           R7 R8 R9
      242 SETTABLEKS                       R7 R6 K21 ["Name"]
      244 GETIMPORT                        R7 K13 [UDim2.new]
      246 LOADN                            R8 0
      247 GETTABLEKS                       R11 R5 K24 ["AbsoluteSize"]
      249 GETTABLEKS                       R10 R11 K39 ["X"]
      251 ADDK                             R9 R10 K38 [8]
      252 LOADN                            R10 0
      253 GETTABLEKS                       R13 R5 K24 ["AbsoluteSize"]
      255 GETTABLEKS                       R12 R13 K25 ["Y"]
      257 ADDK                             R11 R12 K38 [8]
      258 CALL                             R7 4 1
      259 SETTABLEKS                       R7 R6 K29 ["Size"]
      261 GETIMPORT                        R7 K13 [UDim2.new]
      263 LOADN                            R8 0
      264 LOADN                            R9 252
      265 LOADN                            R10 0
      266 LOADN                            R11 253
      267 CALL                             R7 4 1
      268 SETTABLEKS                       R7 R6 K30 ["Position"]
      270 LOADN                            R7 1
      271 SETTABLEKS                       R7 R6 K40 ["BackgroundTransparency"]
      273 LOADN                            R7 0
      274 SETTABLEKS                       R7 R6 K41 ["BorderSizePixel"]
      276 GETIMPORT                        R7 K44 [Color3.fromRGB]
      278 LOADN                            R8 0
      279 LOADN                            R9 0
      280 LOADN                            R10 0
      281 CALL                             R7 3 1
      282 SETTABLEKS                       R7 R6 K45 ["ImageColor3"]
      284 LOADK                            R7 K46 [0.6]
      285 SETTABLEKS                       R7 R6 K47 ["ImageTransparency"]
      287 GETIMPORT                        R7 K51 [Enum.ScaleType.Slice]
      289 SETTABLEKS                       R7 R6 K49 ["ScaleType"]
      291 GETIMPORT                        R7 K53 [Rect.new]
      293 LOADN                            R8 4
      294 LOADN                            R9 4
      295 LOADN                            R10 12
      296 LOADN                            R11 12
      297 CALL                             R7 4 1
      298 SETTABLEKS                       R7 R6 K54 ["SliceCenter"]
      300 LOADN                            R7 2
      301 SETTABLEKS                       R7 R6 K33 ["ZIndex"]
      303 SETTABLEKS                       R5 R6 K55 ["Parent"]
      305 GETTABLEKS                       R7 R5 K56 ["MouseEnter"]
      307 NEWCLOSURE                       R9 P0
      308 CAPTURE                          VAL R4
      309 CAPTURE                          UPVAL U4
      310 NAMECALL                         R7 R7 K57 ["connect"]
      312 CALL                             R7 2 0
      313 GETTABLEKS                       R7 R5 K58 ["MouseLeave"]
      315 NEWCLOSURE                       R9 P1
      316 CAPTURE                          VAL R4
      317 CAPTURE                          UPVAL U4
      318 CAPTURE                          UPVAL U5
      319 NAMECALL                         R7 R7 K57 ["connect"]
      321 CALL                             R7 2 0
      322 GETUPVAL                         R7 6
      323 SETTABLEKS                       R7 R5 K55 ["Parent"]
      325 GETUPVAL                         R7 7
      326 SETTABLE                         R5 R7 R4
      327 FORNLOOP                         R2
      328 RETURN                           R0 0

PROTO_8:
        0 NEWTABLE                         R0 0 4
        2 GETIMPORT                        R1 K2 [Vector2.new]
        4 LOADN                            R2 0
        5 LOADK                            R3 K3 [0.5]
        6 CALL                             R1 2 1
        7 GETIMPORT                        R2 K2 [Vector2.new]
        9 LOADK                            R3 K3 [0.5]
       10 LOADN                            R4 0
       11 CALL                             R2 2 1
       12 GETIMPORT                        R3 K2 [Vector2.new]
       14 LOADN                            R4 1
       15 LOADK                            R5 K3 [0.5]
       16 CALL                             R3 2 1
       17 GETIMPORT                        R4 K2 [Vector2.new]
       19 LOADK                            R5 K3 [0.5]
       20 LOADN                            R6 1
       21 CALL                             R4 2 -1
       22 SETLIST                          R0 R1 -1 [1]
       24 NEWTABLE                         R1 0 4
       26 GETIMPORT                        R2 K5 [UDim2.new]
       28 LOADN                            R3 1
       29 LOADN                            R4 0
       30 LOADK                            R5 K3 [0.5]
       31 LOADN                            R6 0
       32 CALL                             R2 4 1
       33 GETIMPORT                        R3 K5 [UDim2.new]
       35 LOADK                            R4 K3 [0.5]
       36 LOADN                            R5 0
       37 LOADN                            R6 1
       38 LOADN                            R7 0
       39 CALL                             R3 4 1
       40 GETIMPORT                        R4 K5 [UDim2.new]
       42 LOADN                            R5 0
       43 LOADN                            R6 0
       44 LOADK                            R7 K3 [0.5]
       45 LOADN                            R8 0
       46 CALL                             R4 4 1
       47 GETIMPORT                        R5 K5 [UDim2.new]
       49 LOADK                            R6 K3 [0.5]
       50 LOADN                            R7 0
       51 LOADN                            R8 0
       52 LOADN                            R9 0
       53 CALL                             R5 4 -1
       54 SETLIST                          R1 R2 -1 [1]
       56 NEWTABLE                         R2 0 4
       58 GETIMPORT                        R3 K5 [UDim2.new]
       60 LOADN                            R4 0
       61 LOADN                            R5 1
       62 LOADN                            R6 1
       63 LOADN                            R7 2
       64 CALL                             R3 4 1
       65 GETIMPORT                        R4 K5 [UDim2.new]
       67 LOADN                            R5 1
       68 LOADN                            R6 2
       69 LOADN                            R7 0
       70 LOADN                            R8 1
       71 CALL                             R4 4 1
       72 GETIMPORT                        R5 K5 [UDim2.new]
       74 LOADN                            R6 0
       75 LOADN                            R7 1
       76 LOADN                            R8 1
       77 LOADN                            R9 2
       78 CALL                             R5 4 1
       79 GETIMPORT                        R6 K5 [UDim2.new]
       81 LOADN                            R7 1
       82 LOADN                            R8 2
       83 LOADN                            R9 0
       84 LOADN                            R10 1
       85 CALL                             R6 4 -1
       86 SETLIST                          R2 R3 -1 [1]
       88 LOADN                            R5 1
       89 LOADN                            R3 4
       90 LOADN                            R4 1
       91 FORNPREP                         R3
       92 GETIMPORT                        R6 K7 [Instance.new]
       94 LOADK                            R7 K8 ["Frame"]
       95 CALL                             R6 1 1
       96 GETTABLE                         R7 R0 R5
       97 SETTABLEKS                       R7 R6 K9 ["AnchorPoint"]
       99 GETUPVAL                         R7 0
      100 SETTABLEKS                       R7 R6 K10 ["BackgroundColor3"]
      102 LOADN                            R7 0
      103 SETTABLEKS                       R7 R6 K11 ["BorderSizePixel"]
      105 GETTABLE                         R7 R1 R5
      106 SETTABLEKS                       R7 R6 K12 ["Position"]
      108 GETTABLE                         R7 R2 R5
      109 SETTABLEKS                       R7 R6 K13 ["Size"]
      111 GETUPVAL                         R7 1
      112 SETTABLE                         R6 R7 R5
      113 GETUPVAL                         R8 1
      114 GETTABLE                         R7 R8 R5
      115 GETUPVAL                         R8 2
      116 SETTABLEKS                       R8 R7 K14 ["Parent"]
      118 FORNLOOP                         R3
      119 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 LENGTH                           R1 R2
        2 LOADN                            R2 0
        3 JUMPIFLT                         R2 R1 ; [+2]
        5 LOADB                            R0 0 +1
        6 LOADB                            R0 1
        7 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R1 R2 ; [+4]
        3 GETTABLEKS                       R2 R0 K0 ["TopLeft"]
        5 RETURN                           R2 1
        6 GETUPVAL                         R2 1
        7 JUMPIFNOTEQ                      R1 R2 ; [+11]
        9 GETIMPORT                        R2 K3 [Vector2.new]
       11 GETTABLEKS                       R4 R0 K4 ["Center"]
       13 GETTABLEKS                       R3 R4 K5 ["X"]
       15 GETTABLEKS                       R4 R0 K6 ["Top"]
       17 CALL                             R2 2 -1
       18 RETURN                           R2 -1
       19 GETUPVAL                         R2 2
       20 JUMPIFNOTEQ                      R1 R2 ; [+4]
       22 GETTABLEKS                       R2 R0 K7 ["TopRight"]
       24 RETURN                           R2 1
       25 GETUPVAL                         R2 3
       26 JUMPIFNOTEQ                      R1 R2 ; [+11]
       28 GETIMPORT                        R2 K3 [Vector2.new]
       30 GETTABLEKS                       R3 R0 K8 ["Left"]
       32 GETTABLEKS                       R5 R0 K4 ["Center"]
       34 GETTABLEKS                       R4 R5 K9 ["Y"]
       36 CALL                             R2 2 -1
       37 RETURN                           R2 -1
       38 GETUPVAL                         R2 4
       39 JUMPIFNOTEQ                      R1 R2 ; [+11]
       41 GETIMPORT                        R2 K3 [Vector2.new]
       43 GETTABLEKS                       R3 R0 K10 ["Right"]
       45 GETTABLEKS                       R5 R0 K4 ["Center"]
       47 GETTABLEKS                       R4 R5 K9 ["Y"]
       49 CALL                             R2 2 -1
       50 RETURN                           R2 -1
       51 GETUPVAL                         R2 5
       52 JUMPIFNOTEQ                      R1 R2 ; [+4]
       54 GETTABLEKS                       R2 R0 K11 ["BottomLeft"]
       56 RETURN                           R2 1
       57 GETUPVAL                         R2 6
       58 JUMPIFNOTEQ                      R1 R2 ; [+11]
       60 GETIMPORT                        R2 K3 [Vector2.new]
       62 GETTABLEKS                       R4 R0 K4 ["Center"]
       64 GETTABLEKS                       R3 R4 K5 ["X"]
       66 GETTABLEKS                       R4 R0 K12 ["Bottom"]
       68 CALL                             R2 2 -1
       69 RETURN                           R2 -1
       70 GETUPVAL                         R2 7
       71 JUMPIFNOTEQ                      R1 R2 ; [+4]
       73 GETTABLEKS                       R2 R0 K13 ["BottomRight"]
       75 RETURN                           R2 1
       76 GETTABLEKS                       R2 R0 K4 ["Center"]
       78 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R0 R1 ; [+5]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["ResizeXnYn"]
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 2
        8 JUMPIFNOTEQ                      R0 R1 ; [+5]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R1 R2 K1 ["ResizeYn"]
       13 RETURN                           R1 1
       14 GETUPVAL                         R1 3
       15 JUMPIFNOTEQ                      R0 R1 ; [+5]
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R1 R2 K2 ["ResizeXpYn"]
       20 RETURN                           R1 1
       21 GETUPVAL                         R1 4
       22 JUMPIFNOTEQ                      R0 R1 ; [+5]
       24 GETUPVAL                         R2 1
       25 GETTABLEKS                       R1 R2 K3 ["ResizeXn"]
       27 RETURN                           R1 1
       28 GETUPVAL                         R1 5
       29 JUMPIFNOTEQ                      R0 R1 ; [+5]
       31 GETUPVAL                         R2 1
       32 GETTABLEKS                       R1 R2 K4 ["ResizeXp"]
       34 RETURN                           R1 1
       35 GETUPVAL                         R1 6
       36 JUMPIFNOTEQ                      R0 R1 ; [+5]
       38 GETUPVAL                         R2 1
       39 GETTABLEKS                       R1 R2 K5 ["ResizeXnYp"]
       41 RETURN                           R1 1
       42 GETUPVAL                         R1 7
       43 JUMPIFNOTEQ                      R0 R1 ; [+5]
       45 GETUPVAL                         R2 1
       46 GETTABLEKS                       R1 R2 K6 ["ResizeYp"]
       48 RETURN                           R1 1
       49 GETUPVAL                         R1 8
       50 JUMPIFNOTEQ                      R0 R1 ; [+5]
       52 GETUPVAL                         R2 1
       53 GETTABLEKS                       R1 R2 K7 ["ResizeXpYp"]
       55 RETURN                           R1 1
       56 LOADNIL                          R1
       57 RETURN                           R1 1

PROTO_12:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 RETURN                           R0 0
        3 GETTABLEKS                       R1 R0 K0 ["Size"]
        5 GETTABLEKS                       R2 R0 K1 ["TopLeft"]
        7 GETUPVAL                         R3 0
        8 JUMPIFNOTEQKNIL                  R3 ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R3 0
       12 GETIMPORT                        R4 K4 [UDim2.new]
       14 LOADN                            R5 0
       15 GETTABLEKS                       R6 R2 K5 ["X"]
       17 LOADN                            R7 0
       18 GETTABLEKS                       R8 R2 K6 ["Y"]
       20 CALL                             R4 4 1
       21 SETTABLEKS                       R4 R3 K7 ["Position"]
       23 GETUPVAL                         R3 0
       24 GETIMPORT                        R4 K4 [UDim2.new]
       26 LOADN                            R5 0
       27 GETTABLEKS                       R6 R1 K5 ["X"]
       29 LOADN                            R7 0
       30 GETTABLEKS                       R8 R1 K6 ["Y"]
       32 CALL                             R4 4 1
       33 SETTABLEKS                       R4 R3 K0 ["Size"]
       35 GETUPVAL                         R4 1
       36 LENGTH                           R3 R4
       37 JUMPIFNOTEQKN                    R3 K8 [1] ; [+9]
       39 GETUPVAL                         R3 0
       40 GETUPVAL                         R6 1
       41 GETTABLEN                        R5 R6 1
       42 GETTABLEKS                       R4 R5 K9 ["AbsoluteRotation"]
       44 SETTABLEKS                       R4 R3 K10 ["Rotation"]
       46 JUMP                             ; [+4]
       47 GETUPVAL                         R3 0
       48 LOADN                            R4 0
       49 SETTABLEKS                       R4 R3 K10 ["Rotation"]
       51 GETUPVAL                         R3 2
       52 CALL                             R3 0 0
       53 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 LENGTH                           R1 R2
        2 LOADN                            R2 0
        3 JUMPIFLT                         R2 R1 ; [+2]
        5 LOADB                            R0 0 +1
        6 LOADB                            R0 1
        7 JUMPIFNOT                        R0 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 1
       10 LOADK                            R2 K0 ["m_handles"]
       11 NAMECALL                         R0 R0 K1 ["findOrCreateFolder"]
       13 CALL                             R0 2 1
       14 GETUPVAL                         R1 2
       15 JUMPIF                           R1 ; [+19]
       16 GETIMPORT                        R1 K4 [Instance.new]
       18 LOADK                            R2 K5 ["ScreenGui"]
       19 MOVE                             R3 R0
       20 CALL                             R1 2 1
       21 SETUPVAL                         R1 2
       22 GETUPVAL                         R1 2
       23 LOADB                            R2 0
       24 SETTABLEKS                       R2 R1 K6 ["Enabled"]
       26 GETUPVAL                         R1 2
       27 LOADB                            R2 0
       28 SETTABLEKS                       R2 R1 K7 ["ClipToDeviceSafeArea"]
       30 GETUPVAL                         R1 2
       31 GETIMPORT                        R2 K11 [Enum.SafeAreaCompatibility.None]
       33 SETTABLEKS                       R2 R1 K9 ["SafeAreaCompatibility"]
       35 GETIMPORT                        R1 K4 [Instance.new]
       37 LOADK                            R2 K12 ["Frame"]
       38 CALL                             R1 1 1
       39 SETUPVAL                         R1 3
       40 GETUPVAL                         R1 3
       41 LOADK                            R2 K13 ["UIEditorResizeHandleParent"]
       42 SETTABLEKS                       R2 R1 K14 ["Name"]
       44 GETUPVAL                         R1 3
       45 GETIMPORT                        R2 K16 [Vector2.new]
       47 LOADN                            R3 0
       48 LOADN                            R4 0
       49 CALL                             R2 2 1
       50 SETTABLEKS                       R2 R1 K17 ["AnchorPoint"]
       52 GETUPVAL                         R1 3
       53 LOADN                            R2 1
       54 SETTABLEKS                       R2 R1 K18 ["BackgroundTransparency"]
       56 GETUPVAL                         R1 3
       57 GETIMPORT                        R2 K20 [Color3.new]
       59 LOADN                            R3 0
       60 LOADN                            R4 0
       61 LOADN                            R5 255
       62 CALL                             R2 3 1
       63 SETTABLEKS                       R2 R1 K21 ["BackgroundColor3"]
       65 GETUPVAL                         R1 3
       66 LOADN                            R2 0
       67 SETTABLEKS                       R2 R1 K22 ["BorderSizePixel"]
       69 GETUPVAL                         R1 3
       70 GETUPVAL                         R2 2
       71 SETTABLEKS                       R2 R1 K23 ["Parent"]
       73 GETUPVAL                         R1 4
       74 CALL                             R1 0 0
       75 GETUPVAL                         R1 5
       76 CALL                             R1 0 0
       77 RETURN                           R0 0

PROTO_14:
        0 LOADN                            R2 1
        1 GETUPVAL                         R3 0
        2 LENGTH                           R0 R3
        3 LOADN                            R1 1
        4 FORNPREP                         R0
        5 GETUPVAL                         R4 0
        6 GETTABLE                         R3 R4 R2
        7 NAMECALL                         R3 R3 K0 ["Destroy"]
        9 CALL                             R3 1 0
       10 FORNLOOP                         R0
       11 LOADN                            R2 1
       12 GETUPVAL                         R3 1
       13 LENGTH                           R0 R3
       14 LOADN                            R1 1
       15 FORNPREP                         R0
       16 GETUPVAL                         R4 1
       17 GETTABLE                         R3 R4 R2
       18 NAMECALL                         R3 R3 K0 ["Destroy"]
       20 CALL                             R3 1 0
       21 FORNLOOP                         R0
       22 NEWTABLE                         R0 0 0
       24 SETUPVAL                         R0 0
       25 NEWTABLE                         R0 0 0
       27 SETUPVAL                         R0 1
       28 GETUPVAL                         R0 3
       29 SETUPVAL                         R0 2
       30 GETUPVAL                         R0 4
       31 JUMPIFNOT                        R0 ; [+6]
       32 GETUPVAL                         R0 4
       33 NAMECALL                         R0 R0 K0 ["Destroy"]
       35 CALL                             R0 1 0
       36 LOADNIL                          R0
       37 SETUPVAL                         R0 4
       38 GETUPVAL                         R0 5
       39 JUMPIFNOT                        R0 ; [+6]
       40 GETUPVAL                         R0 5
       41 NAMECALL                         R0 R0 K0 ["Destroy"]
       43 CALL                             R0 1 0
       44 LOADNIL                          R0
       45 SETUPVAL                         R0 5
       46 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 LENGTH                           R1 R2
        2 LOADN                            R2 0
        3 JUMPIFLT                         R2 R1 ; [+2]
        5 LOADB                            R0 0 +1
        6 LOADB                            R0 1
        7 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R1 1
        1 NAMECALL                         R1 R1 K0 ["getFilteredSelection"]
        3 CALL                             R1 1 1
        4 SETUPVAL                         R1 0
        5 GETUPVAL                         R1 1
        6 NAMECALL                         R1 R1 K1 ["hasFilteredSelection"]
        8 CALL                             R1 1 1
        9 JUMPIF                           R1 ; [+5]
       10 GETUPVAL                         R1 2
       11 NAMECALL                         R1 R1 K2 ["hide"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R1 2
       16 NAMECALL                         R1 R1 K3 ["updatePosition"]
       18 CALL                             R1 1 0
       19 GETUPVAL                         R1 2
       20 NAMECALL                         R1 R1 K4 ["show"]
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 LENGTH                           R1 R2
        2 JUMPIFNOTEQKN                    R1 K0 [0] ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R4 0
        8 NAMECALL                         R2 R2 K1 ["getExtentsFromGuis"]
       10 CALL                             R2 2 -1
       11 CALL                             R1 -1 0
       12 RETURN                           R0 0

PROTO_18:
        0 GETGLOBAL                        R1 K0 ["hasSelection"]
        2 CALL                             R1 0 1
        3 JUMPIF                           R1 ; [+2]
        4 LOADB                            R1 0
        5 RETURN                           R1 1
        6 GETUPVAL                         R2 0
        7 GETUPVAL                         R3 1
        8 JUMPIFNOTEQ                      R2 R3 ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 RETURN                           R1 1

PROTO_19:
        0 GETGLOBAL                        R2 K0 ["hasSelection"]
        2 CALL                             R2 0 1
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K1 ["FIRST"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R2 R5 K2 ["LAST"]
       11 LOADN                            R3 1
       12 FORNPREP                         R2
       13 JUMPIF                           R1 ; [+9]
       14 GETUPVAL                         R5 1
       15 JUMPIFNOTEQ                      R5 R4 ; [+7]
       17 GETUPVAL                         R6 2
       18 GETTABLE                         R5 R6 R4
       19 GETUPVAL                         R6 3
       20 SETTABLEKS                       R6 R5 K3 ["BackgroundColor3"]
       22 JUMP                             ; [+5]
       23 GETUPVAL                         R6 2
       24 GETTABLE                         R5 R6 R4
       25 GETUPVAL                         R6 4
       26 SETTABLEKS                       R6 R5 K3 ["BackgroundColor3"]
       28 FORNLOOP                         R2
       29 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["NOT_SET"]
        4 JUMPIFEQ                         R1 R2 ; [+26]
        6 GETUPVAL                         R2 2
        7 LENGTH                           R1 R2
        8 JUMPIFNOTEQKN                    R1 K1 [1] ; [+17]
       10 GETUPVAL                         R3 2
       11 GETTABLEN                        R2 R3 1
       12 GETTABLEKS                       R1 R2 K2 ["AbsoluteRotation"]
       14 GETUPVAL                         R2 3
       15 GETUPVAL                         R4 0
       16 MOVE                             R5 R1
       17 NAMECALL                         R2 R2 K3 ["calcMouseIconDirection"]
       19 CALL                             R2 3 1
       20 GETUPVAL                         R3 3
       21 MOVE                             R5 R2
       22 NAMECALL                         R3 R3 K4 ["setToResizeIcon"]
       24 CALL                             R3 2 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R1 3
       27 GETUPVAL                         R3 0
       28 NAMECALL                         R1 R1 K4 ["setToResizeIcon"]
       30 CALL                             R1 2 0
       31 RETURN                           R0 0

PROTO_22:
        0 LOADN                            R3 1
        1 GETUPVAL                         R4 0
        2 LENGTH                           R1 R4
        3 LOADN                            R2 1
        4 FORNPREP                         R1
        5 JUMPIFNOTEQ                      R3 R0 ; [+7]
        7 GETUPVAL                         R5 0
        8 GETTABLE                         R4 R5 R3
        9 LOADB                            R5 1
       10 SETTABLEKS                       R5 R4 K0 ["Visible"]
       12 JUMP                             ; [+5]
       13 GETUPVAL                         R5 0
       14 GETTABLE                         R4 R5 R3
       15 LOADB                            R5 0
       16 SETTABLEKS                       R5 R4 K0 ["Visible"]
       18 FORNLOOP                         R1
       19 RETURN                           R0 0

PROTO_23:
        0 GETGLOBAL                        R2 K0 ["hasSelection"]
        2 CALL                             R2 0 1
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 0
        6 JUMPIFNOT                        R2 ; [+1]
        7 RETURN                           R0 0
        8 LOADB                            R2 1
        9 SETUPVAL                         R2 0
       10 GETUPVAL                         R2 2
       11 SETUPVAL                         R2 1
       12 GETGLOBAL                        R2 K1 ["onlyShowHandle"]
       14 GETUPVAL                         R3 1
       15 CALL                             R2 1 0
       16 LOADN                            R4 1
       17 GETUPVAL                         R5 3
       18 LENGTH                           R2 R5
       19 LOADN                            R3 1
       20 FORNPREP                         R2
       21 GETUPVAL                         R6 4
       22 NEWTABLE                         R7 0 5
       24 GETUPVAL                         R9 3
       25 GETTABLE                         R8 R9 R4
       26 GETUPVAL                         R11 3
       27 GETTABLE                         R10 R11 R4
       28 GETTABLEKS                       R9 R10 K2 ["AbsolutePosition"]
       30 GETUPVAL                         R11 3
       31 GETTABLE                         R10 R11 R4
       32 LOADK                            R12 K3 ["Position"]
       33 NAMECALL                         R10 R10 K4 ["GetStyled"]
       35 CALL                             R10 2 1
       36 GETUPVAL                         R13 3
       37 GETTABLE                         R12 R13 R4
       38 GETTABLEKS                       R11 R12 K5 ["AbsoluteSize"]
       40 GETUPVAL                         R13 3
       41 GETTABLE                         R12 R13 R4
       42 LOADK                            R14 K6 ["Size"]
       43 NAMECALL                         R12 R12 K4 ["GetStyled"]
       45 CALL                             R12 2 -1
       46 SETLIST                          R7 R8 -1 [1]
       48 FASTCALL2                        TABLE_INSERT R6 R7 ; [+3]
       50 GETIMPORT                        R5 K9 [table.insert]
       52 CALL                             R5 2 0
       53 FORNLOOP                         R2
       54 GETUPVAL                         R2 6
       55 GETUPVAL                         R4 3
       56 NAMECALL                         R2 R2 K10 ["getExtentsFromGuis"]
       58 CALL                             R2 2 1
       59 SETUPVAL                         R2 5
       60 GETUPVAL                         R4 5
       61 GETTABLEKS                       R3 R4 K11 ["Width"]
       63 GETUPVAL                         R5 5
       64 GETTABLEKS                       R4 R5 K12 ["Height"]
       66 DIV                              R2 R3 R4
       67 SETUPVAL                         R2 7
       68 SETUPVAL                         R1 8
       69 GETUPVAL                         R2 9
       70 MOVE                             R4 R1
       71 NAMECALL                         R2 R2 K13 ["onResizeBegan"]
       73 CALL                             R2 2 0
       74 RETURN                           R0 0

PROTO_24:
        0 MOVE                             R4 R2
        1 JUMPIFNOT                        R4 ; [+1]
        2 NOT                              R4 R3
        3 MOVE                             R5 R3
        4 JUMPIFNOT                        R5 ; [+1]
        5 NOT                              R5 R2
        6 GETUPVAL                         R6 0
        7 GETUPVAL                         R7 1
        8 JUMPIFEQ                         R6 R7 ; [+5]
       10 GETUPVAL                         R6 0
       11 GETUPVAL                         R7 2
       12 JUMPIFNOTEQ                      R6 R7 ; [+16]
       14 GETTABLEKS                       R7 R0 K0 ["Width"]
       16 GETUPVAL                         R8 3
       17 DIV                              R6 R7 R8
       18 GETIMPORT                        R9 K3 [Vector2.new]
       20 LOADN                            R10 0
       21 GETTABLEKS                       R12 R0 K4 ["Height"]
       23 SUB                              R11 R6 R12
       24 CALL                             R9 2 -1
       25 NAMECALL                         R7 R0 K5 ["expandFromCenter"]
       27 CALL                             R7 -1 0
       28 RETURN                           R0 0
       29 GETUPVAL                         R6 0
       30 GETUPVAL                         R7 4
       31 JUMPIFEQ                         R6 R7 ; [+5]
       33 GETUPVAL                         R6 0
       34 GETUPVAL                         R7 5
       35 JUMPIFNOTEQ                      R6 R7 ; [+16]
       37 GETUPVAL                         R7 3
       38 GETTABLEKS                       R8 R0 K4 ["Height"]
       40 MUL                              R6 R7 R8
       41 GETIMPORT                        R9 K3 [Vector2.new]
       43 GETTABLEKS                       R11 R0 K0 ["Width"]
       45 SUB                              R10 R6 R11
       46 LOADN                            R11 0
       47 CALL                             R9 2 -1
       48 NAMECALL                         R7 R0 K5 ["expandFromCenter"]
       50 CALL                             R7 -1 0
       51 RETURN                           R0 0
       52 GETUPVAL                         R6 0
       53 GETUPVAL                         R7 6
       54 JUMPIFNOTEQ                      R6 R7 ; [+54]
       56 GETUPVAL                         R8 7
       57 GETTABLEKS                       R7 R8 K6 ["TopLeft"]
       59 SUB                              R6 R1 R7
       60 GETTABLEKS                       R8 R6 K7 ["X"]
       62 GETTABLEKS                       R9 R6 K8 ["Y"]
       64 DIV                              R7 R8 R9
       65 LOADB                            R8 1
       66 GETTABLEKS                       R9 R6 K8 ["Y"]
       68 LOADN                            R10 0
       69 JUMPIFLE                         R9 R10 ; [+6]
       71 GETUPVAL                         R9 3
       72 JUMPIFLT                         R9 R7 ; [+2]
       74 LOADB                            R8 0 +1
       75 LOADB                            R8 1
       76 JUMPIF                           R8 ; [+1]
       77 JUMPIFNOT                        R4 ; [+16]
       78 JUMPIF                           R5 ; [+15]
       79 GETTABLEKS                       R10 R0 K6 ["TopLeft"]
       81 GETIMPORT                        R11 K3 [Vector2.new]
       83 GETTABLEKS                       R12 R0 K0 ["Width"]
       85 GETTABLEKS                       R14 R0 K0 ["Width"]
       87 GETUPVAL                         R15 3
       88 DIV                              R13 R14 R15
       89 CALL                             R11 2 1
       90 ADD                              R9 R10 R11
       91 SETTABLEKS                       R9 R0 K9 ["BottomRight"]
       93 RETURN                           R0 0
       94 GETTABLEKS                       R10 R0 K6 ["TopLeft"]
       96 GETIMPORT                        R11 K3 [Vector2.new]
       98 GETUPVAL                         R13 3
       99 GETTABLEKS                       R14 R0 K4 ["Height"]
      101 MUL                              R12 R13 R14
      102 GETTABLEKS                       R13 R0 K4 ["Height"]
      104 CALL                             R11 2 1
      105 ADD                              R9 R10 R11
      106 SETTABLEKS                       R9 R0 K9 ["BottomRight"]
      108 RETURN                           R0 0
      109 GETUPVAL                         R6 0
      110 GETUPVAL                         R7 8
      111 JUMPIFNOTEQ                      R6 R7 ; [+60]
      113 GETIMPORT                        R6 K3 [Vector2.new]
      115 LOADN                            R7 1
      116 LOADN                            R8 255
      117 CALL                             R6 2 1
      118 GETUPVAL                         R10 7
      119 GETTABLEKS                       R9 R10 K10 ["BottomLeft"]
      121 SUB                              R8 R1 R9
      122 MUL                              R7 R8 R6
      123 GETTABLEKS                       R9 R7 K7 ["X"]
      125 GETTABLEKS                       R10 R7 K8 ["Y"]
      127 DIV                              R8 R9 R10
      128 LOADB                            R9 1
      129 GETTABLEKS                       R10 R7 K11 ["y"]
      131 LOADN                            R11 0
      132 JUMPIFLE                         R10 R11 ; [+6]
      134 GETUPVAL                         R10 3
      135 JUMPIFLT                         R10 R8 ; [+2]
      137 LOADB                            R9 0 +1
      138 LOADB                            R9 1
      139 JUMPIFNOT                        R9 ; [+16]
      140 GETTABLEKS                       R11 R0 K10 ["BottomLeft"]
      142 GETIMPORT                        R13 K3 [Vector2.new]
      144 GETTABLEKS                       R14 R0 K0 ["Width"]
      146 GETTABLEKS                       R16 R0 K0 ["Width"]
      148 GETUPVAL                         R17 3
      149 DIV                              R15 R16 R17
      150 CALL                             R13 2 1
      151 MUL                              R12 R13 R6
      152 ADD                              R10 R11 R12
      153 SETTABLEKS                       R10 R0 K12 ["TopRight"]
      155 RETURN                           R0 0
      156 GETTABLEKS                       R11 R0 K10 ["BottomLeft"]
      158 GETIMPORT                        R13 K3 [Vector2.new]
      160 GETUPVAL                         R15 3
      161 GETTABLEKS                       R16 R0 K4 ["Height"]
      163 MUL                              R14 R15 R16
      164 GETTABLEKS                       R15 R0 K4 ["Height"]
      166 CALL                             R13 2 1
      167 MUL                              R12 R13 R6
      168 ADD                              R10 R11 R12
      169 SETTABLEKS                       R10 R0 K12 ["TopRight"]
      171 RETURN                           R0 0
      172 GETUPVAL                         R6 0
      173 GETUPVAL                         R7 9
      174 JUMPIFNOTEQ                      R6 R7 ; [+60]
      176 GETIMPORT                        R6 K3 [Vector2.new]
      178 LOADN                            R7 255
      179 LOADN                            R8 1
      180 CALL                             R6 2 1
      181 GETUPVAL                         R10 7
      182 GETTABLEKS                       R9 R10 K12 ["TopRight"]
      184 SUB                              R8 R1 R9
      185 MUL                              R7 R8 R6
      186 GETTABLEKS                       R9 R7 K7 ["X"]
      188 GETTABLEKS                       R10 R7 K8 ["Y"]
      190 DIV                              R8 R9 R10
      191 LOADB                            R9 1
      192 GETTABLEKS                       R10 R7 K11 ["y"]
      194 LOADN                            R11 0
      195 JUMPIFLE                         R10 R11 ; [+6]
      197 GETUPVAL                         R10 3
      198 JUMPIFLT                         R10 R8 ; [+2]
      200 LOADB                            R9 0 +1
      201 LOADB                            R9 1
      202 JUMPIFNOT                        R9 ; [+16]
      203 GETTABLEKS                       R11 R0 K12 ["TopRight"]
      205 GETIMPORT                        R13 K3 [Vector2.new]
      207 GETTABLEKS                       R14 R0 K0 ["Width"]
      209 GETTABLEKS                       R16 R0 K0 ["Width"]
      211 GETUPVAL                         R17 3
      212 DIV                              R15 R16 R17
      213 CALL                             R13 2 1
      214 MUL                              R12 R13 R6
      215 ADD                              R10 R11 R12
      216 SETTABLEKS                       R10 R0 K10 ["BottomLeft"]
      218 RETURN                           R0 0
      219 GETTABLEKS                       R11 R0 K12 ["TopRight"]
      221 GETIMPORT                        R13 K3 [Vector2.new]
      223 GETUPVAL                         R15 3
      224 GETTABLEKS                       R16 R0 K4 ["Height"]
      226 MUL                              R14 R15 R16
      227 GETTABLEKS                       R15 R0 K4 ["Height"]
      229 CALL                             R13 2 1
      230 MUL                              R12 R13 R6
      231 ADD                              R10 R11 R12
      232 SETTABLEKS                       R10 R0 K10 ["BottomLeft"]
      234 RETURN                           R0 0
      235 GETUPVAL                         R6 0
      236 GETUPVAL                         R7 10
      237 JUMPIFNOTEQ                      R6 R7 ; [+61]
      239 GETIMPORT                        R6 K3 [Vector2.new]
      241 LOADN                            R7 255
      242 LOADN                            R8 255
      243 CALL                             R6 2 1
      244 GETUPVAL                         R10 7
      245 GETTABLEKS                       R9 R10 K9 ["BottomRight"]
      247 SUB                              R8 R1 R9
      248 MUL                              R7 R8 R6
      249 GETTABLEKS                       R9 R7 K7 ["X"]
      251 GETTABLEKS                       R10 R7 K8 ["Y"]
      253 DIV                              R8 R9 R10
      254 LOADB                            R9 1
      255 GETTABLEKS                       R10 R7 K11 ["y"]
      257 LOADN                            R11 0
      258 JUMPIFLE                         R10 R11 ; [+6]
      260 GETUPVAL                         R10 3
      261 JUMPIFLT                         R10 R8 ; [+2]
      263 LOADB                            R9 0 +1
      264 LOADB                            R9 1
      265 JUMPIF                           R9 ; [+1]
      266 JUMPIFNOT                        R4 ; [+17]
      267 JUMPIF                           R5 ; [+16]
      268 GETTABLEKS                       R11 R0 K9 ["BottomRight"]
      270 GETIMPORT                        R13 K3 [Vector2.new]
      272 GETTABLEKS                       R14 R0 K0 ["Width"]
      274 GETTABLEKS                       R16 R0 K0 ["Width"]
      276 GETUPVAL                         R17 3
      277 DIV                              R15 R16 R17
      278 CALL                             R13 2 1
      279 MUL                              R12 R13 R6
      280 ADD                              R10 R11 R12
      281 SETTABLEKS                       R10 R0 K6 ["TopLeft"]
      283 RETURN                           R0 0
      284 GETTABLEKS                       R11 R0 K9 ["BottomRight"]
      286 GETIMPORT                        R13 K3 [Vector2.new]
      288 GETUPVAL                         R15 3
      289 GETTABLEKS                       R16 R0 K4 ["Height"]
      291 MUL                              R14 R15 R16
      292 GETTABLEKS                       R15 R0 K4 ["Height"]
      294 CALL                             R13 2 1
      295 MUL                              R12 R13 R6
      296 ADD                              R10 R11 R12
      297 SETTABLEKS                       R10 R0 K6 ["TopLeft"]
      299 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R3 0
        1 GETIMPORT                        R5 K3 [Enum.KeyCode.LeftShift]
        3 NAMECALL                         R3 R3 K4 ["IsKeyDown"]
        5 CALL                             R3 2 1
        6 JUMPIF                           R3 ; [+6]
        7 GETUPVAL                         R3 0
        8 GETIMPORT                        R5 K6 [Enum.KeyCode.RightShift]
       10 NAMECALL                         R3 R3 K4 ["IsKeyDown"]
       12 CALL                             R3 2 1
       13 JUMPIFNOT                        R3 ; [+6]
       14 GETUPVAL                         R4 1
       15 MOVE                             R5 R0
       16 MOVE                             R6 R1
       17 LOADB                            R7 0
       18 LOADB                            R8 0
       19 CALL                             R4 4 0
       20 LOADNIL                          R4
       21 LOADNIL                          R5
       22 LOADNIL                          R6
       23 GETUPVAL                         R7 2
       24 MOVE                             R9 R0
       25 GETUPVAL                         R11 3
       26 JUMPIFNOTEQ                      R2 R11 ; [+5]
       28 GETUPVAL                         R11 4
       29 GETTABLEKS                       R10 R11 K7 ["ResizeXnYn"]
       31 JUMP                             ; [+50]
       32 GETUPVAL                         R11 5
       33 JUMPIFNOTEQ                      R2 R11 ; [+5]
       35 GETUPVAL                         R11 4
       36 GETTABLEKS                       R10 R11 K8 ["ResizeYn"]
       38 JUMP                             ; [+43]
       39 GETUPVAL                         R11 6
       40 JUMPIFNOTEQ                      R2 R11 ; [+5]
       42 GETUPVAL                         R11 4
       43 GETTABLEKS                       R10 R11 K9 ["ResizeXpYn"]
       45 JUMP                             ; [+36]
       46 GETUPVAL                         R11 7
       47 JUMPIFNOTEQ                      R2 R11 ; [+5]
       49 GETUPVAL                         R11 4
       50 GETTABLEKS                       R10 R11 K10 ["ResizeXn"]
       52 JUMP                             ; [+29]
       53 GETUPVAL                         R11 8
       54 JUMPIFNOTEQ                      R2 R11 ; [+5]
       56 GETUPVAL                         R11 4
       57 GETTABLEKS                       R10 R11 K11 ["ResizeXp"]
       59 JUMP                             ; [+22]
       60 GETUPVAL                         R11 9
       61 JUMPIFNOTEQ                      R2 R11 ; [+5]
       63 GETUPVAL                         R11 4
       64 GETTABLEKS                       R10 R11 K12 ["ResizeXnYp"]
       66 JUMP                             ; [+15]
       67 GETUPVAL                         R11 10
       68 JUMPIFNOTEQ                      R2 R11 ; [+5]
       70 GETUPVAL                         R11 4
       71 GETTABLEKS                       R10 R11 K13 ["ResizeYp"]
       73 JUMP                             ; [+8]
       74 GETUPVAL                         R11 11
       75 JUMPIFNOTEQ                      R2 R11 ; [+5]
       77 GETUPVAL                         R11 4
       78 GETTABLEKS                       R10 R11 K14 ["ResizeXpYp"]
       80 JUMP                             ; [+1]
       81 LOADNIL                          R10
       82 NAMECALL                         R7 R7 K15 ["snapExtents"]
       84 CALL                             R7 3 4
       85 MOVE                             R0 R7
       86 MOVE                             R4 R8
       87 MOVE                             R5 R9
       88 MOVE                             R6 R10
       89 LOADN                            R9 1
       90 LENGTH                           R7 R4
       91 LOADN                            R8 1
       92 FORNPREP                         R7
       93 GETUPVAL                         R10 12
       94 GETTABLE                         R12 R4 R9
       95 NAMECALL                         R10 R10 K16 ["showSnappingLine"]
       97 CALL                             R10 2 0
       98 FORNLOOP                         R7
       99 JUMPIFNOT                        R3 ; [+6]
      100 GETUPVAL                         R7 1
      101 MOVE                             R8 R0
      102 MOVE                             R9 R1
      103 MOVE                             R10 R5
      104 MOVE                             R11 R6
      105 CALL                             R7 4 0
      106 MOVE                             R7 R3
      107 JUMPIF                           R7 ; [+3]
      108 MOVE                             R7 R5
      109 JUMPIF                           R7 ; [+1]
      110 MOVE                             R7 R6
      111 MOVE                             R8 R0
      112 MOVE                             R9 R7
      113 RETURN                           R8 2

PROTO_26:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 JUMPIFEQ                         R0 R2 ; [+7]
        4 GETUPVAL                         R2 1
        5 JUMPIFEQ                         R0 R2 ; [+4]
        7 GETUPVAL                         R2 2
        8 JUMPIFNOTEQ                      R0 R2 ; [+8]
       10 GETIMPORT                        R2 K2 [Vector2.new]
       12 LOADK                            R3 K3 [-0.5]
       13 LOADK                            R4 K3 [-0.5]
       14 CALL                             R2 2 1
       15 MOVE                             R1 R2
       16 RETURN                           R1 1
       17 GETUPVAL                         R2 3
       18 JUMPIFEQ                         R0 R2 ; [+7]
       20 GETUPVAL                         R2 4
       21 JUMPIFEQ                         R0 R2 ; [+4]
       23 GETUPVAL                         R2 5
       24 JUMPIFNOTEQ                      R0 R2 ; [+8]
       26 GETIMPORT                        R2 K2 [Vector2.new]
       28 LOADK                            R3 K4 [0.5]
       29 LOADK                            R4 K4 [0.5]
       30 CALL                             R2 2 1
       31 MOVE                             R1 R2
       32 RETURN                           R1 1
       33 GETUPVAL                         R2 6
       34 JUMPIFNOTEQ                      R0 R2 ; [+8]
       36 GETIMPORT                        R2 K2 [Vector2.new]
       38 LOADK                            R3 K4 [0.5]
       39 LOADK                            R4 K3 [-0.5]
       40 CALL                             R2 2 1
       41 MOVE                             R1 R2
       42 RETURN                           R1 1
       43 GETIMPORT                        R2 K2 [Vector2.new]
       45 LOADK                            R3 K3 [-0.5]
       46 LOADK                            R4 K4 [0.5]
       47 CALL                             R2 2 1
       48 MOVE                             R1 R2
       49 RETURN                           R1 1

PROTO_27:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 JUMPIFEQ                         R2 R3 ; [+9]
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 2
        6 JUMPIFEQ                         R2 R3 ; [+5]
        8 GETUPVAL                         R2 0
        9 GETUPVAL                         R3 3
       10 JUMPIFNOTEQ                      R2 R3 ; [+23]
       12 GETIMPORT                        R4 K2 [Vector2.new]
       14 GETTABLEKS                       R5 R1 K3 ["X"]
       16 LOADN                            R6 0
       17 CALL                             R4 2 -1
       18 NAMECALL                         R2 R0 K4 ["translate"]
       20 CALL                             R2 -1 0
       21 GETTABLEKS                       R5 R0 K5 ["Size"]
       23 GETIMPORT                        R6 K2 [Vector2.new]
       25 GETTABLEKS                       R7 R1 K3 ["X"]
       27 LOADN                            R8 0
       28 CALL                             R6 2 1
       29 SUB                              R4 R5 R6
       30 NAMECALL                         R2 R0 K6 ["resize"]
       32 CALL                             R2 2 0
       33 JUMP                             ; [+24]
       34 GETUPVAL                         R2 0
       35 GETUPVAL                         R3 4
       36 JUMPIFEQ                         R2 R3 ; [+9]
       38 GETUPVAL                         R2 0
       39 GETUPVAL                         R3 5
       40 JUMPIFEQ                         R2 R3 ; [+5]
       42 GETUPVAL                         R2 0
       43 GETUPVAL                         R3 6
       44 JUMPIFNOTEQ                      R2 R3 ; [+13]
       46 GETTABLEKS                       R5 R0 K5 ["Size"]
       48 GETIMPORT                        R6 K2 [Vector2.new]
       50 GETTABLEKS                       R7 R1 K3 ["X"]
       52 LOADN                            R8 0
       53 CALL                             R6 2 1
       54 ADD                              R4 R5 R6
       55 NAMECALL                         R2 R0 K6 ["resize"]
       57 CALL                             R2 2 0
       58 GETUPVAL                         R2 0
       59 GETUPVAL                         R3 1
       60 JUMPIFEQ                         R2 R3 ; [+9]
       62 GETUPVAL                         R2 0
       63 GETUPVAL                         R3 7
       64 JUMPIFEQ                         R2 R3 ; [+5]
       66 GETUPVAL                         R2 0
       67 GETUPVAL                         R3 4
       68 JUMPIFNOTEQ                      R2 R3 ; [+23]
       70 GETIMPORT                        R4 K2 [Vector2.new]
       72 LOADN                            R5 0
       73 GETTABLEKS                       R6 R1 K7 ["Y"]
       75 CALL                             R4 2 -1
       76 NAMECALL                         R2 R0 K4 ["translate"]
       78 CALL                             R2 -1 0
       79 GETTABLEKS                       R5 R0 K5 ["Size"]
       81 GETIMPORT                        R6 K2 [Vector2.new]
       83 LOADN                            R7 0
       84 GETTABLEKS                       R8 R1 K7 ["Y"]
       86 CALL                             R6 2 1
       87 SUB                              R4 R5 R6
       88 NAMECALL                         R2 R0 K6 ["resize"]
       90 CALL                             R2 2 0
       91 RETURN                           R0 0
       92 GETUPVAL                         R2 0
       93 GETUPVAL                         R3 3
       94 JUMPIFEQ                         R2 R3 ; [+9]
       96 GETUPVAL                         R2 0
       97 GETUPVAL                         R3 8
       98 JUMPIFEQ                         R2 R3 ; [+5]
      100 GETUPVAL                         R2 0
      101 GETUPVAL                         R3 6
      102 JUMPIFNOTEQ                      R2 R3 ; [+13]
      104 GETTABLEKS                       R5 R0 K5 ["Size"]
      106 GETIMPORT                        R6 K2 [Vector2.new]
      108 LOADN                            R7 0
      109 GETTABLEKS                       R8 R1 K7 ["Y"]
      111 CALL                             R6 2 1
      112 ADD                              R4 R5 R6
      113 NAMECALL                         R2 R0 K6 ["resize"]
      115 CALL                             R2 2 0
      116 RETURN                           R0 0

PROTO_28:
        0 GETIMPORT                        R1 K2 [Vector2.zero]
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R3 1
        4 JUMPIFEQ                         R2 R3 ; [+9]
        6 GETUPVAL                         R2 0
        7 GETUPVAL                         R3 2
        8 JUMPIFEQ                         R2 R3 ; [+5]
       10 GETUPVAL                         R2 0
       11 GETUPVAL                         R3 3
       12 JUMPIFNOTEQ                      R2 R3 ; [+10]
       14 GETIMPORT                        R2 K4 [Vector2.new]
       16 GETTABLEKS                       R4 R0 K5 ["X"]
       18 MINUS                            R3 R4
       19 LOADN                            R4 0
       20 CALL                             R2 2 1
       21 ADD                              R1 R1 R2
       22 JUMP                             ; [+19]
       23 GETUPVAL                         R2 0
       24 GETUPVAL                         R3 4
       25 JUMPIFEQ                         R2 R3 ; [+9]
       27 GETUPVAL                         R2 0
       28 GETUPVAL                         R3 5
       29 JUMPIFEQ                         R2 R3 ; [+5]
       31 GETUPVAL                         R2 0
       32 GETUPVAL                         R3 6
       33 JUMPIFNOTEQ                      R2 R3 ; [+8]
       35 GETIMPORT                        R2 K4 [Vector2.new]
       37 GETTABLEKS                       R3 R0 K5 ["X"]
       39 LOADN                            R4 0
       40 CALL                             R2 2 1
       41 ADD                              R1 R1 R2
       42 GETUPVAL                         R2 0
       43 GETUPVAL                         R3 1
       44 JUMPIFEQ                         R2 R3 ; [+9]
       46 GETUPVAL                         R2 0
       47 GETUPVAL                         R3 7
       48 JUMPIFEQ                         R2 R3 ; [+5]
       50 GETUPVAL                         R2 0
       51 GETUPVAL                         R3 4
       52 JUMPIFNOTEQ                      R2 R3 ; [+10]
       54 GETIMPORT                        R2 K4 [Vector2.new]
       56 LOADN                            R3 0
       57 GETTABLEKS                       R5 R0 K6 ["Y"]
       59 MINUS                            R4 R5
       60 CALL                             R2 2 1
       61 ADD                              R1 R1 R2
       62 RETURN                           R1 1
       63 GETUPVAL                         R2 0
       64 GETUPVAL                         R3 3
       65 JUMPIFEQ                         R2 R3 ; [+9]
       67 GETUPVAL                         R2 0
       68 GETUPVAL                         R3 8
       69 JUMPIFEQ                         R2 R3 ; [+5]
       71 GETUPVAL                         R2 0
       72 GETUPVAL                         R3 6
       73 JUMPIFNOTEQ                      R2 R3 ; [+8]
       75 GETIMPORT                        R2 K4 [Vector2.new]
       77 LOADN                            R3 0
       78 GETTABLEKS                       R4 R0 K6 ["Y"]
       80 CALL                             R2 2 1
       81 ADD                              R1 R1 R2
       82 RETURN                           R1 1

PROTO_29:
        0 LOADN                            R3 1
        1 LOADN                            R4 1
        2 LOADN                            R5 0
        3 LOADN                            R6 0
        4 GETUPVAL                         R9 0
        5 GETTABLEKS                       R8 R9 K0 ["Size"]
        7 GETTABLEKS                       R7 R8 K1 ["X"]
        9 JUMPIFEQKN                       R7 K2 [0] ; [+11]
       11 GETTABLEKS                       R8 R1 K0 ["Size"]
       13 GETTABLEKS                       R7 R8 K1 ["X"]
       15 GETTABLEKS                       R9 R0 K0 ["Size"]
       17 GETTABLEKS                       R8 R9 K1 ["X"]
       19 DIV                              R3 R7 R8
       20 JUMP                             ; [+2]
       21 GETTABLEKS                       R5 R2 K1 ["X"]
       23 GETUPVAL                         R9 0
       24 GETTABLEKS                       R8 R9 K0 ["Size"]
       26 GETTABLEKS                       R7 R8 K3 ["Y"]
       28 JUMPIFEQKN                       R7 K2 [0] ; [+11]
       30 GETTABLEKS                       R8 R1 K0 ["Size"]
       32 GETTABLEKS                       R7 R8 K3 ["Y"]
       34 GETTABLEKS                       R9 R0 K0 ["Size"]
       36 GETTABLEKS                       R8 R9 K3 ["Y"]
       38 DIV                              R4 R7 R8
       39 JUMP                             ; [+2]
       40 GETTABLEKS                       R6 R2 K3 ["Y"]
       42 GETIMPORT                        R7 K6 [UDim2.new]
       44 MOVE                             R8 R3
       45 MOVE                             R9 R5
       46 MOVE                             R10 R4
       47 MOVE                             R11 R6
       48 CALL                             R7 4 -1
       49 RETURN                           R7 -1

PROTO_30:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R2 R2 K0 ["getFilteredSelection"]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 2
        8 GETUPVAL                         R5 3
        9 NAMECALL                         R3 R3 K1 ["cloneTable"]
       11 CALL                             R3 2 1
       12 GETUPVAL                         R4 4
       13 NAMECALL                         R4 R4 K2 ["hideSnappingLines"]
       15 CALL                             R4 1 0
       16 LOADN                            R4 0
       17 LENGTH                           R5 R2
       18 JUMPIFNOTEQKN                    R5 K3 [1] ; [+4]
       20 GETTABLEN                        R5 R2 1
       21 GETTABLEKS                       R4 R5 K4 ["AbsoluteRotation"]
       23 GETUPVAL                         R6 5
       24 SUB                              R5 R1 R6
       25 GETUPVAL                         R6 2
       26 MOVE                             R8 R5
       27 GETIMPORT                        R9 K7 [Vector2.zero]
       29 MINUS                            R10 R4
       30 NAMECALL                         R6 R6 K8 ["rotate"]
       32 CALL                             R6 4 1
       33 GETUPVAL                         R7 6
       34 MOVE                             R8 R3
       35 MOVE                             R9 R6
       36 CALL                             R7 2 0
       37 LOADB                            R7 0
       38 JUMPIFNOTEQKN                    R4 K9 [0] ; [+8]
       40 GETUPVAL                         R8 7
       41 MOVE                             R9 R3
       42 MOVE                             R10 R1
       43 GETUPVAL                         R11 8
       44 CALL                             R8 3 2
       45 MOVE                             R3 R8
       46 MOVE                             R7 R9
       47 GETUPVAL                         R8 9
       48 GETUPVAL                         R9 3
       49 MOVE                             R10 R3
       50 MOVE                             R11 R6
       51 CALL                             R8 3 1
       52 GETUPVAL                         R9 10
       53 GETUPVAL                         R10 8
       54 CALL                             R9 1 1
       55 GETUPVAL                         R12 3
       56 GETTABLEKS                       R11 R12 K10 ["Center"]
       58 GETUPVAL                         R12 2
       59 GETUPVAL                         R16 3
       60 GETTABLEKS                       R15 R16 K11 ["Size"]
       62 MUL                              R14 R9 R15
       63 GETIMPORT                        R15 K7 [Vector2.zero]
       65 MOVE                             R16 R4
       66 NAMECALL                         R12 R12 K8 ["rotate"]
       68 CALL                             R12 4 1
       69 ADD                              R10 R11 R12
       70 GETIMPORT                        R11 K7 [Vector2.zero]
       72 JUMPIFNOTEQKN                    R4 K9 [0] ; [+17]
       74 JUMPIFNOT                        R7 ; [+15]
       75 GETTABLEKS                       R13 R3 K10 ["Center"]
       77 GETTABLEKS                       R15 R3 K11 ["Size"]
       79 MUL                              R14 R9 R15
       80 ADD                              R12 R13 R14
       81 GETUPVAL                         R15 3
       82 GETTABLEKS                       R14 R15 K10 ["Center"]
       84 GETUPVAL                         R17 3
       85 GETTABLEKS                       R16 R17 K11 ["Size"]
       87 MUL                              R15 R9 R16
       88 ADD                              R13 R14 R15
       89 SUB                              R11 R12 R13
       90 MOVE                             R14 R11
       91 NAMECALL                         R12 R3 K12 ["translate"]
       93 CALL                             R12 2 0
       94 NEWTABLE                         R12 0 0
       96 NEWTABLE                         R13 0 0
       98 LOADN                            R16 1
       99 GETUPVAL                         R17 11
      100 LENGTH                           R14 R17
      101 LOADN                            R15 1
      102 FORNPREP                         R14
      103 GETUPVAL                         R18 11
      104 GETTABLE                         R17 R18 R16
      105 GETTABLEN                        R18 R17 1
      106 GETTABLEN                        R20 R17 2
      107 GETTABLEN                        R22 R17 4
      108 MULK                             R21 R22 K13 [0.5]
      109 ADD                              R19 R20 R21
      110 GETUPVAL                         R20 2
      111 SUB                              R22 R19 R10
      112 GETIMPORT                        R23 K7 [Vector2.zero]
      114 MINUS                            R24 R4
      115 NAMECALL                         R20 R20 K8 ["rotate"]
      117 CALL                             R20 4 1
      118 GETUPVAL                         R21 2
      119 GETTABLEN                        R24 R17 4
      120 DIVK                             R23 R24 K14 [2]
      121 GETIMPORT                        R24 K7 [Vector2.zero]
      123 GETTABLEKS                       R26 R18 K4 ["AbsoluteRotation"]
      125 SUB                              R25 R26 R4
      126 NAMECALL                         R21 R21 K8 ["rotate"]
      128 CALL                             R21 4 1
      129 ADD                              R22 R20 R21
      130 GETUPVAL                         R23 2
      131 GETIMPORT                        R25 K17 [UDim2.new]
      133 GETTABLEKS                       R27 R8 K18 ["X"]
      135 GETTABLEKS                       R26 R27 K19 ["Scale"]
      137 GETTABLEKS                       R29 R8 K18 ["X"]
      139 GETTABLEKS                       R28 R29 K20 ["Offset"]
      141 DIVK                             R27 R28 K14 [2]
      142 GETTABLEKS                       R29 R8 K21 ["Y"]
      144 GETTABLEKS                       R28 R29 K19 ["Scale"]
      146 GETTABLEKS                       R31 R8 K21 ["Y"]
      148 GETTABLEKS                       R30 R31 K20 ["Offset"]
      150 DIVK                             R29 R30 K14 [2]
      151 CALL                             R25 4 1
      152 MOVE                             R26 R20
      153 NAMECALL                         R23 R23 K22 ["multUDimWithVector"]
      155 CALL                             R23 3 1
      156 GETUPVAL                         R24 2
      157 MOVE                             R26 R8
      158 MOVE                             R27 R22
      159 NAMECALL                         R24 R24 K22 ["multUDimWithVector"]
      161 CALL                             R24 3 1
      162 LOADN                            R26 2
      163 GETUPVAL                         R27 2
      164 SUB                              R29 R24 R23
      165 GETIMPORT                        R30 K7 [Vector2.zero]
      167 GETTABLEKS                       R32 R18 K4 ["AbsoluteRotation"]
      169 SUB                              R31 R4 R32
      170 NAMECALL                         R27 R27 K8 ["rotate"]
      172 CALL                             R27 4 1
      173 MUL                              R25 R26 R27
      174 GETUPVAL                         R27 2
      175 MOVE                             R29 R23
      176 GETIMPORT                        R30 K7 [Vector2.zero]
      178 MOVE                             R31 R4
      179 NAMECALL                         R27 R27 K8 ["rotate"]
      181 CALL                             R27 4 1
      182 ADD                              R26 R10 R27
      183 MULK                             R29 R25 K13 [0.5]
      184 SUB                              R28 R26 R29
      185 ADD                              R27 R28 R11
      186 GETUPVAL                         R28 2
      187 GETTABLEN                        R30 R17 3
      188 NAMECALL                         R28 R28 K23 ["isOnlyScaleUDim2"]
      190 CALL                             R28 2 1
      191 JUMPIF                           R28 ; [+11]
      192 GETUPVAL                         R29 2
      193 GETTABLEN                        R31 R17 3
      194 NAMECALL                         R29 R29 K24 ["isOnlyOffsetUDim2"]
      196 CALL                             R29 2 1
      197 NOT                              R28 R29
      198 JUMPIFNOT                        R28 ; [+4]
      199 GETUPVAL                         R28 12
      200 NAMECALL                         R28 R28 K25 ["isScale"]
      202 CALL                             R28 1 1
      203 GETUPVAL                         R29 2
      204 GETTABLEN                        R31 R17 5
      205 NAMECALL                         R29 R29 K23 ["isOnlyScaleUDim2"]
      207 CALL                             R29 2 1
      208 JUMPIF                           R29 ; [+11]
      209 GETUPVAL                         R30 2
      210 GETTABLEN                        R32 R17 5
      211 NAMECALL                         R30 R30 K24 ["isOnlyOffsetUDim2"]
      213 CALL                             R30 2 1
      214 NOT                              R29 R30
      215 JUMPIFNOT                        R29 ; [+4]
      216 GETUPVAL                         R29 12
      217 NAMECALL                         R29 R29 K25 ["isScale"]
      219 CALL                             R29 1 1
      220 LOADK                            R32 K26 ["GuiBase2d"]
      221 NAMECALL                         R30 R18 K27 ["FindFirstAncestorWhichIsA"]
      223 CALL                             R30 2 1
      224 GETUPVAL                         R31 13
      225 JUMPIFNOT                        R31 ; [+1]
      226 JUMPIFNOT                        R30 ; [+17]
      227 GETUPVAL                         R31 14
      228 MOVE                             R33 R28
      229 MOVE                             R34 R29
      230 MOVE                             R35 R27
      231 MOVE                             R36 R25
      232 GETTABLEN                        R37 R17 3
      233 GETTABLEN                        R38 R17 5
      234 MOVE                             R39 R30
      235 LOADK                            R42 K28 ["AnchorPoint"]
      236 NAMECALL                         R40 R18 K29 ["GetStyled"]
      238 CALL                             R40 2 -1
      239 NAMECALL                         R31 R31 K30 ["convertAbsoluteToScaleOrOffset"]
      241 CALL                             R31 -1 2
      242 SETTABLE                         R31 R12 R18
      243 SETTABLE                         R32 R13 R18
      244 FORNLOOP                         R14
      245 LOADN                            R16 1
      246 GETUPVAL                         R17 11
      247 LENGTH                           R14 R17
      248 LOADN                            R15 1
      249 FORNPREP                         R14
      250 GETUPVAL                         R19 11
      251 GETTABLE                         R18 R19 R16
      252 GETTABLEN                        R17 R18 1
      253 GETTABLE                         R18 R12 R17
      254 SETTABLEKS                       R18 R17 K31 ["Position"]
      256 GETTABLE                         R18 R13 R17
      257 SETTABLEKS                       R18 R17 K11 ["Size"]
      259 FORNLOOP                         R14
      260 GETUPVAL                         R14 15
      261 GETUPVAL                         R15 16
      262 MOVE                             R17 R2
      263 NAMECALL                         R15 R15 K32 ["getExtentsFromGuis"]
      265 CALL                             R15 2 -1
      266 CALL                             R14 -1 0
      267 GETUPVAL                         R14 17
      268 MOVE                             R16 R1
      269 NAMECALL                         R14 R14 K33 ["onResizeChanged"]
      271 CALL                             R14 2 0
      272 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R2 R2 K0 ["hideSnappingLines"]
        6 CALL                             R2 1 0
        7 GETUPVAL                         R2 2
        8 JUMPIFEQ                         R2 R1 ; [+11]
       10 GETUPVAL                         R2 3
       11 LOADK                            R4 K1 ["Resize"]
       12 NAMECALL                         R2 R2 K2 ["reportEvent"]
       14 CALL                             R2 2 0
       15 GETUPVAL                         R2 4
       16 LOADK                            R4 K1 ["Resize"]
       17 NAMECALL                         R2 R2 K3 ["SetWaypoint"]
       19 CALL                             R2 2 0
       20 LOADB                            R2 0
       21 SETUPVAL                         R2 0
       22 GETUPVAL                         R2 1
       23 NAMECALL                         R2 R2 K4 ["hideXSnappingLine"]
       25 CALL                             R2 1 0
       26 GETUPVAL                         R2 1
       27 NAMECALL                         R2 R2 K5 ["hideYSnappingLine"]
       29 CALL                             R2 1 0
       30 NEWTABLE                         R2 0 0
       32 SETUPVAL                         R2 5
       33 LOADNIL                          R2
       34 SETUPVAL                         R2 2
       35 LOADNIL                          R2
       36 SETUPVAL                         R2 6
       37 LOADNIL                          R2
       38 SETUPVAL                         R2 7
       39 LOADN                            R4 1
       40 GETUPVAL                         R5 8
       41 LENGTH                           R2 R5
       42 LOADN                            R3 1
       43 FORNPREP                         R2
       44 GETUPVAL                         R6 8
       45 GETTABLE                         R5 R6 R4
       46 LOADB                            R6 1
       47 SETTABLEKS                       R6 R5 K6 ["Visible"]
       49 FORNLOOP                         R2
       50 GETUPVAL                         R2 9
       51 MOVE                             R4 R1
       52 NAMECALL                         R2 R2 K7 ["onResizeEnded"]
       54 CALL                             R2 2 0
       55 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R1 1
        4 SETUPVAL                         R1 0
        5 GETUPVAL                         R1 1
        6 JUMPIFNOT                        R1 ; [+4]
        7 GETUPVAL                         R1 1
        8 LOADB                            R2 0
        9 SETTABLEKS                       R2 R1 K0 ["Enabled"]
       11 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+4]
        2 GETUPVAL                         R2 1
        3 LENGTH                           R1 R2
        4 JUMPIFNOTEQKN                    R1 K0 [0] ; [+2]
        6 RETURN                           R0 0
        7 LOADB                            R1 0
        8 SETUPVAL                         R1 0
        9 GETUPVAL                         R1 2
       10 JUMPIFNOT                        R1 ; [+4]
       11 GETUPVAL                         R1 2
       12 LOADB                            R2 1
       13 SETTABLEKS                       R2 R1 K1 ["Enabled"]
       15 RETURN                           R0 0

PROTO_34:
        0 SETUPVAL                         R1 0
        1 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["hide"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 CALL                             R1 0 0
        6 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["AdornmentModule"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R4 K3 [script]
       14 GETTABLEKS                       R3 R4 K4 ["Parent"]
       16 GETTABLEKS                       R2 R3 K6 ["Analytics"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R5 K3 [script]
       23 GETTABLEKS                       R4 R5 K4 ["Parent"]
       25 GETTABLEKS                       R3 R4 K7 ["CoreGuiManager"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K1 [require]
       30 GETIMPORT                        R6 K3 [script]
       32 GETTABLEKS                       R5 R6 K4 ["Parent"]
       34 GETTABLEKS                       R4 R5 K8 ["Convert"]
       36 CALL                             R3 1 1
       37 GETIMPORT                        R4 K1 [require]
       39 GETIMPORT                        R8 K3 [script]
       41 GETTABLEKS                       R7 R8 K4 ["Parent"]
       43 GETTABLEKS                       R6 R7 K9 ["Enum"]
       45 GETTABLEKS                       R5 R6 K10 ["Direction"]
       47 CALL                             R4 1 1
       48 GETIMPORT                        R5 K1 [require]
       50 GETIMPORT                        R8 K3 [script]
       52 GETTABLEKS                       R7 R8 K4 ["Parent"]
       54 GETTABLEKS                       R6 R7 K11 ["Extents2D"]
       56 CALL                             R5 1 1
       57 GETIMPORT                        R6 K1 [require]
       59 GETIMPORT                        R9 K3 [script]
       61 GETTABLEKS                       R8 R9 K4 ["Parent"]
       63 GETTABLEKS                       R7 R8 K12 ["GlobalValues"]
       65 CALL                             R6 1 1
       66 GETIMPORT                        R7 K1 [require]
       68 GETIMPORT                        R10 K3 [script]
       70 GETTABLEKS                       R9 R10 K4 ["Parent"]
       72 GETTABLEKS                       R8 R9 K13 ["MouseIconManager"]
       74 CALL                             R7 1 1
       75 GETIMPORT                        R8 K1 [require]
       77 GETIMPORT                        R11 K3 [script]
       79 GETTABLEKS                       R10 R11 K4 ["Parent"]
       81 GETTABLEKS                       R9 R10 K14 ["SelectionManager"]
       83 CALL                             R8 1 1
       84 GETIMPORT                        R9 K1 [require]
       86 GETIMPORT                        R12 K3 [script]
       88 GETTABLEKS                       R11 R12 K4 ["Parent"]
       90 GETTABLEKS                       R10 R11 K15 ["SnappingPointManager"]
       92 CALL                             R9 1 1
       93 GETIMPORT                        R10 K1 [require]
       95 GETIMPORT                        R13 K3 [script]
       97 GETTABLEKS                       R12 R13 K4 ["Parent"]
       99 GETTABLEKS                       R11 R12 K16 ["Utility"]
      101 CALL                             R10 1 1
      102 GETIMPORT                        R11 K1 [require]
      104 GETIMPORT                        R15 K3 [script]
      106 GETTABLEKS                       R14 R15 K4 ["Parent"]
      108 GETTABLEKS                       R13 R14 K17 ["Flags"]
      110 GETTABLEKS                       R12 R13 K18 ["GetFFlagUIEditorFixCrashInConvert"]
      112 CALL                             R11 1 1
      113 GETIMPORT                        R12 K1 [require]
      115 GETIMPORT                        R16 K3 [script]
      117 GETTABLEKS                       R15 R16 K4 ["Parent"]
      119 GETTABLEKS                       R14 R15 K9 ["Enum"]
      121 GETTABLEKS                       R13 R14 K19 ["SnappingType"]
      123 CALL                             R12 1 1
      124 GETIMPORT                        R13 K21 [game]
      126 LOADK                            R15 K22 ["ChangeHistoryService"]
      127 NAMECALL                         R13 R13 K23 ["GetService"]
      129 CALL                             R13 2 1
      130 GETIMPORT                        R14 K21 [game]
      132 LOADK                            R16 K24 ["UserInputService"]
      133 NAMECALL                         R14 R14 K23 ["GetService"]
      135 CALL                             R14 2 1
      136 GETIMPORT                        R15 K27 [Color3.fromRGB]
      138 LOADN                            R16 255
      139 LOADN                            R17 255
      140 LOADN                            R18 255
      141 CALL                             R15 3 1
      142 GETIMPORT                        R16 K27 [Color3.fromRGB]
      144 LOADN                            R17 255
      145 LOADN                            R18 255
      146 LOADN                            R19 255
      147 CALL                             R16 3 1
      148 GETIMPORT                        R17 K27 [Color3.fromRGB]
      150 LOADN                            R18 136
      151 LOADN                            R19 136
      152 LOADN                            R20 136
      153 CALL                             R17 3 1
      154 GETIMPORT                        R18 K27 [Color3.fromRGB]
      156 LOADN                            R19 222
      157 LOADN                            R20 222
      158 LOADN                            R21 222
      159 CALL                             R18 3 1
      160 GETIMPORT                        R19 K30 [Vector2.new]
      162 LOADN                            R20 1
      163 LOADN                            R21 1
      164 CALL                             R19 2 1
      165 GETTABLEKS                       R20 R4 K31 ["NOT_SET"]
      167 GETTABLEKS                       R21 R4 K32 ["NW"]
      169 GETTABLEKS                       R22 R4 K33 ["N"]
      171 GETTABLEKS                       R23 R4 K34 ["NE"]
      173 GETTABLEKS                       R24 R4 K35 ["W"]
      175 GETTABLEKS                       R25 R4 K36 ["E"]
      177 GETTABLEKS                       R26 R4 K37 ["SW"]
      179 GETTABLEKS                       R27 R4 K38 ["S"]
      181 GETTABLEKS                       R28 R4 K39 ["SE"]
      183 LOADNIL                          R29
      184 LOADNIL                          R30
      185 LOADNIL                          R31
      186 LOADNIL                          R32
      187 NEWTABLE                         R33 0 0
      189 NEWTABLE                         R34 0 4
      191 NEWTABLE                         R35 0 0
      193 LOADNIL                          R36
      194 LOADNIL                          R37
      195 LOADNIL                          R38
      196 NEWTABLE                         R39 0 0
      198 LOADB                            R40 0
      199 LOADB                            R41 1
      200 MOVE                             R42 R20
      201 NEWCLOSURE                       R43 P0
      202 CAPTURE                          REF R42
      203 NEWCLOSURE                       R44 P1
      204 CAPTURE                          REF R42
      205 CAPTURE                          VAL R20
      206 NEWCLOSURE                       R45 P2
      207 CAPTURE                          REF R32
      208 NEWCLOSURE                       R46 P3
      209 CAPTURE                          REF R30
      210 NEWCLOSURE                       R47 P4
      211 CAPTURE                          REF R33
      212 CAPTURE                          REF R30
      213 NEWCLOSURE                       R48 P5
      214 CAPTURE                          VAL R4
      215 CAPTURE                          REF R30
      216 CAPTURE                          VAL R16
      217 CAPTURE                          VAL R17
      218 CAPTURE                          REF R42
      219 CAPTURE                          VAL R20
      220 CAPTURE                          REF R32
      221 CAPTURE                          REF R33
      222 NEWCLOSURE                       R49 P6
      223 CAPTURE                          VAL R18
      224 CAPTURE                          REF R34
      225 CAPTURE                          REF R32
      226 NEWCLOSURE                       R50 P7
      227 CAPTURE                          REF R33
      228 DUPCLOSURE                       R51 K40 [PROTO_10]
      229 CAPTURE                          VAL R21
      230 CAPTURE                          VAL R22
      231 CAPTURE                          VAL R23
      232 CAPTURE                          VAL R24
      233 CAPTURE                          VAL R25
      234 CAPTURE                          VAL R26
      235 CAPTURE                          VAL R27
      236 CAPTURE                          VAL R28
      237 DUPCLOSURE                       R52 K41 [PROTO_11]
      238 CAPTURE                          VAL R21
      239 CAPTURE                          VAL R12
      240 CAPTURE                          VAL R22
      241 CAPTURE                          VAL R23
      242 CAPTURE                          VAL R24
      243 CAPTURE                          VAL R25
      244 CAPTURE                          VAL R26
      245 CAPTURE                          VAL R27
      246 CAPTURE                          VAL R28
      247 NEWCLOSURE                       R53 P10
      248 CAPTURE                          REF R32
      249 CAPTURE                          REF R35
      250 CAPTURE                          VAL R47
      251 NEWCLOSURE                       R54 P11
      252 CAPTURE                          REF R33
      253 CAPTURE                          VAL R2
      254 CAPTURE                          REF R30
      255 CAPTURE                          REF R32
      256 CAPTURE                          VAL R48
      257 CAPTURE                          VAL R49
      258 NEWCLOSURE                       R55 P12
      259 CAPTURE                          REF R33
      260 CAPTURE                          REF R34
      261 CAPTURE                          REF R42
      262 CAPTURE                          VAL R20
      263 CAPTURE                          REF R32
      264 CAPTURE                          REF R30
      265 NEWCLOSURE                       R56 P13
      266 CAPTURE                          REF R35
      267 SETGLOBAL                        R56 K42 ["hasSelection"]
      269 NEWTABLE                         R56 16 0
      271 NEWCLOSURE                       R57 P14
      272 CAPTURE                          REF R35
      273 CAPTURE                          VAL R8
      274 CAPTURE                          VAL R56
      275 SETTABLEKS                       R57 R56 K43 ["onSelectionChanged"]
      277 NEWCLOSURE                       R57 P15
      278 CAPTURE                          REF R35
      279 CAPTURE                          VAL R53
      280 CAPTURE                          VAL R5
      281 SETTABLEKS                       R57 R56 K44 ["updatePosition"]
      283 NEWCLOSURE                       R57 P16
      284 CAPTURE                          REF R42
      285 CAPTURE                          VAL R20
      286 SETTABLEKS                       R57 R56 K45 ["isOverAHandle"]
      288 NEWCLOSURE                       R57 P17
      289 CAPTURE                          VAL R4
      290 CAPTURE                          REF R42
      291 CAPTURE                          REF R33
      292 CAPTURE                          VAL R15
      293 CAPTURE                          VAL R16
      294 SETTABLEKS                       R57 R56 K46 ["updateHandleHighlight"]
      296 NEWCLOSURE                       R57 P18
      297 CAPTURE                          REF R40
      298 SETTABLEKS                       R57 R56 K47 ["isDragInProgress"]
      300 NEWCLOSURE                       R57 P19
      301 CAPTURE                          REF R42
      302 CAPTURE                          VAL R4
      303 CAPTURE                          REF R35
      304 CAPTURE                          VAL R7
      305 SETTABLEKS                       R57 R56 K48 ["updateMouseIcon"]
      307 NEWCLOSURE                       R57 P20
      308 CAPTURE                          REF R33
      309 SETGLOBAL                        R57 K49 ["onlyShowHandle"]
      311 NEWCLOSURE                       R57 P21
      312 CAPTURE                          REF R40
      313 CAPTURE                          REF R31
      314 CAPTURE                          REF R42
      315 CAPTURE                          REF R35
      316 CAPTURE                          REF R39
      317 CAPTURE                          REF R38
      318 CAPTURE                          VAL R5
      319 CAPTURE                          REF R36
      320 CAPTURE                          REF R37
      321 CAPTURE                          REF R29
      322 SETTABLEKS                       R57 R56 K50 ["startDrag"]
      324 NEWCLOSURE                       R57 P22
      325 CAPTURE                          REF R31
      326 CAPTURE                          VAL R25
      327 CAPTURE                          VAL R24
      328 CAPTURE                          REF R36
      329 CAPTURE                          VAL R22
      330 CAPTURE                          VAL R27
      331 CAPTURE                          VAL R28
      332 CAPTURE                          REF R38
      333 CAPTURE                          VAL R23
      334 CAPTURE                          VAL R26
      335 CAPTURE                          VAL R21
      336 DUPCLOSURE                       R58 K51 [PROTO_25]
      337 CAPTURE                          VAL R14
      338 CAPTURE                          VAL R57
      339 CAPTURE                          VAL R9
      340 CAPTURE                          VAL R21
      341 CAPTURE                          VAL R12
      342 CAPTURE                          VAL R22
      343 CAPTURE                          VAL R23
      344 CAPTURE                          VAL R24
      345 CAPTURE                          VAL R25
      346 CAPTURE                          VAL R26
      347 CAPTURE                          VAL R27
      348 CAPTURE                          VAL R28
      349 CAPTURE                          VAL R0
      350 DUPCLOSURE                       R59 K52 [PROTO_26]
      351 CAPTURE                          VAL R28
      352 CAPTURE                          VAL R25
      353 CAPTURE                          VAL R27
      354 CAPTURE                          VAL R21
      355 CAPTURE                          VAL R22
      356 CAPTURE                          VAL R24
      357 CAPTURE                          VAL R26
      358 NEWCLOSURE                       R60 P25
      359 CAPTURE                          REF R31
      360 CAPTURE                          VAL R21
      361 CAPTURE                          VAL R24
      362 CAPTURE                          VAL R26
      363 CAPTURE                          VAL R23
      364 CAPTURE                          VAL R25
      365 CAPTURE                          VAL R28
      366 CAPTURE                          VAL R22
      367 CAPTURE                          VAL R27
      368 NEWCLOSURE                       R61 P26
      369 CAPTURE                          REF R31
      370 CAPTURE                          VAL R21
      371 CAPTURE                          VAL R24
      372 CAPTURE                          VAL R26
      373 CAPTURE                          VAL R23
      374 CAPTURE                          VAL R25
      375 CAPTURE                          VAL R28
      376 CAPTURE                          VAL R22
      377 CAPTURE                          VAL R27
      378 NEWCLOSURE                       R62 P27
      379 CAPTURE                          REF R38
      380 NEWCLOSURE                       R63 P28
      381 CAPTURE                          REF R40
      382 CAPTURE                          VAL R8
      383 CAPTURE                          VAL R10
      384 CAPTURE                          REF R38
      385 CAPTURE                          VAL R0
      386 CAPTURE                          REF R37
      387 CAPTURE                          VAL R60
      388 CAPTURE                          VAL R58
      389 CAPTURE                          REF R31
      390 CAPTURE                          VAL R62
      391 CAPTURE                          VAL R59
      392 CAPTURE                          REF R39
      393 CAPTURE                          VAL R6
      394 CAPTURE                          VAL R11
      395 CAPTURE                          VAL R3
      396 CAPTURE                          VAL R53
      397 CAPTURE                          VAL R5
      398 CAPTURE                          REF R29
      399 SETTABLEKS                       R63 R56 K53 ["updateDrag"]
      401 NEWCLOSURE                       R63 P29
      402 CAPTURE                          REF R40
      403 CAPTURE                          VAL R0
      404 CAPTURE                          REF R37
      405 CAPTURE                          VAL R1
      406 CAPTURE                          VAL R13
      407 CAPTURE                          REF R39
      408 CAPTURE                          REF R38
      409 CAPTURE                          REF R31
      410 CAPTURE                          REF R33
      411 CAPTURE                          REF R29
      412 SETTABLEKS                       R63 R56 K54 ["finishDrag"]
      414 NEWCLOSURE                       R63 P30
      415 CAPTURE                          REF R41
      416 CAPTURE                          REF R30
      417 SETTABLEKS                       R63 R56 K55 ["hide"]
      419 NEWCLOSURE                       R63 P31
      420 CAPTURE                          REF R41
      421 CAPTURE                          REF R35
      422 CAPTURE                          REF R30
      423 SETTABLEKS                       R63 R56 K56 ["show"]
      425 NEWCLOSURE                       R63 P32
      426 CAPTURE                          REF R29
      427 SETTABLEKS                       R63 R56 K57 ["setActionMediator"]
      429 DUPCLOSURE                       R63 K58 [PROTO_35]
      430 CAPTURE                          VAL R54
      431 SETTABLEKS                       R63 R56 K59 ["On"]
      433 DUPCLOSURE                       R63 K60 [PROTO_36]
      434 CAPTURE                          VAL R56
      435 CAPTURE                          VAL R55
      436 SETTABLEKS                       R63 R56 K61 ["Off"]
      438 DUPCLOSURE                       R63 K62 [PROTO_37]
      439 CAPTURE                          VAL R47
      440 SETTABLEKS                       R63 R56 K63 ["updateSize"]
      442 CLOSEUPVALS                      R29
      443 RETURN                           R56 1
