PROTO_0:
        0 GETUPVAL                         R3 0
        1 DUPTABLE                         R5 K3 [{"showingAlertTitleKey", "showingAlertMessageKey", "showingAlertMessageReplacements"}]
        2 SETTABLEKS                       R0 R5 K0 ["showingAlertTitleKey"]
        4 SETTABLEKS                       R1 R5 K1 ["showingAlertMessageKey"]
        6 SETTABLEKS                       R2 R5 K2 ["showingAlertMessageReplacements"]
        8 NAMECALL                         R3 R3 K4 ["setState"]
       10 CALL                             R3 2 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K3 [{"showingAlertTitleKey", "showingAlertMessageKey", "showingAlertMessageReplacements"}]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K4 ["None"]
        5 SETTABLEKS                       R3 R2 K0 ["showingAlertTitleKey"]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K4 ["None"]
       10 SETTABLEKS                       R3 R2 K1 ["showingAlertMessageKey"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K4 ["None"]
       15 SETTABLEKS                       R3 R2 K2 ["showingAlertMessageReplacements"]
       17 NAMECALL                         R0 R0 K5 ["setState"]
       19 CALL                             R0 2 0
       20 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [ipairs]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["imageUnderEditConnections"]
        5 CALL                             R0 1 3
        6 FORGPREP_INEXT                   R0
        7 JUMPIFNOT                        R4 ; [+3]
        8 NAMECALL                         R5 R4 K3 ["Disconnect"]
       10 CALL                             R5 1 0
       11 FORGLOOP                         R0 2 [inext] ; [-5]
       13 GETUPVAL                         R0 0
       14 NEWTABLE                         R1 0 0
       16 SETTABLEKS                       R1 R0 K2 ["imageUnderEditConnections"]
       18 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 GETUPVAL                         R6 0
        4 GETTABLE                         R5 R0 R6
        5 LOADN                            R6 0
        6 GETTABLEKS                       R7 R1 K0 ["X"]
        8 FASTCALL                         MATH_CLAMP ; [+2]
        9 GETIMPORT                        R4 K3 [math.clamp]
       11 CALL                             R4 3 1
       12 SETTABLE                         R4 R2 R3
       13 GETUPVAL                         R3 1
       14 GETUPVAL                         R6 1
       15 GETTABLE                         R5 R0 R6
       16 LOADN                            R6 0
       17 LOADN                            R8 0
       18 GETTABLEKS                       R10 R1 K0 ["X"]
       20 GETUPVAL                         R12 0
       21 GETTABLE                         R11 R2 R12
       22 SUB                              R9 R10 R11
       23 FASTCALL2                        MATH_MAX R8 R9 ; [+3]
       25 GETIMPORT                        R7 K5 [math.max]
       27 CALL                             R7 2 1
       28 FASTCALL                         MATH_CLAMP ; [+2]
       29 GETIMPORT                        R4 K3 [math.clamp]
       31 CALL                             R4 3 1
       32 SETTABLE                         R4 R2 R3
       33 GETUPVAL                         R3 2
       34 GETUPVAL                         R6 2
       35 GETTABLE                         R5 R0 R6
       36 LOADN                            R6 0
       37 GETTABLEKS                       R7 R1 K6 ["Y"]
       39 FASTCALL                         MATH_CLAMP ; [+2]
       40 GETIMPORT                        R4 K3 [math.clamp]
       42 CALL                             R4 3 1
       43 SETTABLE                         R4 R2 R3
       44 GETUPVAL                         R3 3
       45 GETUPVAL                         R6 3
       46 GETTABLE                         R5 R0 R6
       47 LOADN                            R6 0
       48 LOADN                            R8 0
       49 GETTABLEKS                       R10 R1 K6 ["Y"]
       51 GETUPVAL                         R12 2
       52 GETTABLE                         R11 R2 R12
       53 SUB                              R9 R10 R11
       54 FASTCALL2                        MATH_MAX R8 R9 ; [+3]
       56 GETIMPORT                        R7 K5 [math.max]
       58 CALL                             R7 2 1
       59 FASTCALL                         MATH_CLAMP ; [+2]
       60 GETIMPORT                        R4 K3 [math.clamp]
       62 CALL                             R4 3 1
       63 SETTABLE                         R4 R2 R3
       64 RETURN                           R2 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["ImageRectSize"]
        2 GETTABLEKS                       R1 R1 K1 ["X"]
        4 LOADN                            R2 0
        5 JUMPIFNOTLT                      R2 R1 ; [+11]
        7 GETTABLEKS                       R1 R0 K0 ["ImageRectSize"]
        9 GETTABLEKS                       R1 R1 K2 ["Y"]
       11 LOADN                            R2 0
       12 JUMPIFNOTLT                      R2 R1 ; [+4]
       14 GETTABLEKS                       R1 R0 K0 ["ImageRectSize"]
       16 RETURN                           R1 1
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K3 ["uncroppedImageSize"]
       20 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["instanceUnderEdit"]
        3 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getImageUnderEdit"]
        3 CALL                             R0 0 1
        4 JUMPIFEQKNIL                     R0 ; [+28]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["getSliceRectFromSliceCenter"]
        9 GETTABLEKS                       R2 R0 K2 ["SliceCenter"]
       11 CALL                             R1 1 1
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K3 ["props"]
       15 GETTABLEKS                       R2 R2 K4 ["SliceRectChanged"]
       17 MOVE                             R3 R1
       18 CALL                             R2 1 0
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K5 ["getImageDimensionsForInstance"]
       22 MOVE                             R3 R0
       23 CALL                             R2 1 1
       24 GETUPVAL                         R3 0
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R4 R4 K6 ["getOffsetsFromSliceRect"]
       28 MOVE                             R5 R1
       29 MOVE                             R6 R2
       30 CALL                             R4 2 1
       31 SETTABLEKS                       R4 R3 K7 ["lastSliceOffsets"]
       33 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getImageUnderEdit"]
        3 CALL                             R1 0 1
        4 MOVE                             R2 R1
        5 JUMPIFNOT                        R2 ; [+1]
        6 GETTABLE                         R2 R1 R0
        7 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["InstancePropertyChanged"]
        5 LOADK                            R1 K2 ["ImageRectOffset"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K3 ["getInstanceProperty"]
        9 LOADK                            R3 K2 ["ImageRectOffset"]
       10 CALL                             R2 1 -1
       11 CALL                             R0 -1 0
       12 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R2 K2 [Rect.new]
        2 GETTABLEKS                       R4 R0 K3 ["Min"]
        4 GETTABLEKS                       R4 R4 K4 ["X"]
        6 LOADN                            R5 0
        7 GETTABLEKS                       R6 R1 K4 ["X"]
        9 FASTCALL                         MATH_CLAMP ; [+2]
       10 GETIMPORT                        R3 K7 [math.clamp]
       12 CALL                             R3 3 1
       13 GETTABLEKS                       R5 R0 K3 ["Min"]
       15 GETTABLEKS                       R5 R5 K8 ["Y"]
       17 LOADN                            R6 0
       18 GETTABLEKS                       R7 R1 K8 ["Y"]
       20 FASTCALL                         MATH_CLAMP ; [+2]
       21 GETIMPORT                        R4 K7 [math.clamp]
       23 CALL                             R4 3 1
       24 GETTABLEKS                       R6 R0 K9 ["Max"]
       26 GETTABLEKS                       R6 R6 K4 ["X"]
       28 LOADN                            R7 0
       29 GETTABLEKS                       R8 R1 K4 ["X"]
       31 FASTCALL                         MATH_CLAMP ; [+2]
       32 GETIMPORT                        R5 K7 [math.clamp]
       34 CALL                             R5 3 1
       35 GETTABLEKS                       R7 R0 K9 ["Max"]
       37 GETTABLEKS                       R7 R7 K8 ["Y"]
       39 LOADN                            R8 0
       40 GETTABLEKS                       R9 R1 K8 ["Y"]
       42 FASTCALL                         MATH_CLAMP ; [+2]
       43 GETIMPORT                        R6 K7 [math.clamp]
       45 CALL                             R6 3 1
       46 CALL                             R2 4 -1
       47 RETURN                           R2 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getImageUnderEdit"]
        3 CALL                             R0 0 1
        4 JUMPIF                           R0 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R1 R0 K1 ["ImageRectSize"]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K2 ["props"]
       11 GETTABLEKS                       R2 R2 K3 ["InstancePropertyChanged"]
       13 LOADK                            R3 K1 ["ImageRectSize"]
       14 MOVE                             R4 R1
       15 CALL                             R2 2 0
       16 GETTABLEKS                       R2 R1 K4 ["X"]
       18 LOADN                            R3 0
       19 JUMPIFNOTLT                      R3 R2 ; [+15]
       21 GETTABLEKS                       R2 R1 K5 ["Y"]
       23 LOADN                            R3 0
       24 JUMPIFNOTLT                      R3 R2 ; [+10]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K6 ["clampSliceCenterToDimensions"]
       29 GETTABLEKS                       R3 R0 K7 ["SliceCenter"]
       31 MOVE                             R4 R1
       32 CALL                             R2 2 1
       33 SETTABLEKS                       R2 R0 K7 ["SliceCenter"]
       35 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["InstancePropertyChanged"]
        5 LOADK                            R1 K2 ["ImageColor3"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K3 ["getInstanceProperty"]
        9 LOADK                            R3 K2 ["ImageColor3"]
       10 CALL                             R2 1 -1
       11 CALL                             R0 -1 0
       12 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["InstancePropertyChanged"]
        5 LOADK                            R1 K2 ["ResampleMode"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K3 ["getInstanceProperty"]
        9 LOADK                            R3 K2 ["ResampleMode"]
       10 CALL                             R2 1 -1
       11 CALL                             R0 -1 0
       12 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["clearCurrentImageUnderEdit"]
        3 CALL                             R2 0 0
        4 GETIMPORT                        R2 K3 [Vector2.new]
        6 LOADN                            R3 0
        7 LOADN                            R4 0
        8 CALL                             R2 2 1
        9 NEWTABLE                         R3 0 4
       11 LOADN                            R4 0
       12 LOADN                            R5 0
       13 LOADN                            R6 0
       14 LOADN                            R7 0
       15 SETLIST                          R3 R4 4 [1]
       17 NEWTABLE                         R4 0 4
       19 LOADN                            R5 0
       20 LOADN                            R6 0
       21 LOADN                            R7 0
       22 LOADN                            R8 0
       23 SETLIST                          R4 R5 4 [1]
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R5 R5 K4 ["props"]
       28 GETTABLEKS                       R5 R5 K5 ["Localization"]
       30 LOADK                            R7 K6 ["Plugin"]
       31 LOADK                            R8 K7 ["Name"]
       32 NAMECALL                         R5 R5 K8 ["getText"]
       34 CALL                             R5 3 1
       35 DUPTABLE                         R6 K13 [{"title", "pixelDimensions", "sliceRect", "revertSliceRect"}]
       36 SETTABLEKS                       R5 R6 K9 ["title"]
       38 SETTABLEKS                       R2 R6 K10 ["pixelDimensions"]
       40 SETTABLEKS                       R3 R6 K11 ["sliceRect"]
       42 SETTABLEKS                       R4 R6 K12 ["revertSliceRect"]
       44 JUMPIFEQKNIL                     R0 ; [+196]
       46 FASTCALL1                        ASSERT R1 ; [+3]
       47 MOVE                             R8 R1
       48 GETIMPORT                        R7 K15 [assert]
       50 CALL                             R7 1 0
       51 LOADB                            R8 1
       52 GETTABLEKS                       R9 R1 K16 ["X"]
       54 LOADN                            R10 0
       55 JUMPIFLT                         R10 R9 ; [+8]
       57 GETTABLEKS                       R9 R1 K17 ["Y"]
       59 LOADN                            R10 0
       60 JUMPIFLT                         R10 R9 ; [+2]
       62 LOADB                            R8 0 +1
       63 LOADB                            R8 1
       64 FASTCALL1                        ASSERT R8 ; [+2]
       65 GETIMPORT                        R7 K15 [assert]
       67 CALL                             R7 1 0
       68 GETUPVAL                         R7 0
       69 SETTABLEKS                       R1 R7 K18 ["uncroppedImageSize"]
       71 MOVE                             R2 R1
       72 GETUPVAL                         R7 0
       73 GETTABLEKS                       R7 R7 K19 ["getImageDimensionsForInstance"]
       75 MOVE                             R8 R0
       76 CALL                             R7 1 1
       77 GETTABLEKS                       R8 R0 K20 ["SliceCenter"]
       79 GETIMPORT                        R9 K22 [Rect.new]
       81 LOADN                            R10 0
       82 LOADN                            R11 0
       83 LOADN                            R12 0
       84 LOADN                            R13 0
       85 CALL                             R9 4 1
       86 JUMPIFNOTEQ                      R8 R9 ; [+12]
       88 GETIMPORT                        R8 K22 [Rect.new]
       90 LOADN                            R9 0
       91 LOADN                            R10 0
       92 GETTABLEKS                       R11 R7 K16 ["X"]
       94 GETTABLEKS                       R12 R7 K17 ["Y"]
       96 CALL                             R8 4 1
       97 SETTABLEKS                       R8 R0 K20 ["SliceCenter"]
       99 GETUPVAL                         R9 0
      100 GETTABLEKS                       R9 R9 K23 ["imageUnderEditConnections"]
      102 LOADK                            R12 K20 ["SliceCenter"]
      103 NAMECALL                         R10 R0 K24 ["GetPropertyChangedSignal"]
      105 CALL                             R10 2 1
      106 GETUPVAL                         R12 0
      107 GETTABLEKS                       R12 R12 K25 ["onSliceCenterChanged"]
      109 NAMECALL                         R10 R10 K26 ["Connect"]
      111 CALL                             R10 2 -1
      112 FASTCALL                         TABLE_INSERT ; [+2]
      113 GETIMPORT                        R8 K29 [table.insert]
      115 CALL                             R8 -1 0
      116 GETUPVAL                         R9 0
      117 GETTABLEKS                       R9 R9 K23 ["imageUnderEditConnections"]
      119 LOADK                            R12 K30 ["ImageRectOffset"]
      120 NAMECALL                         R10 R0 K24 ["GetPropertyChangedSignal"]
      122 CALL                             R10 2 1
      123 GETUPVAL                         R12 0
      124 GETTABLEKS                       R12 R12 K31 ["onImageRectOffsetChanged"]
      126 NAMECALL                         R10 R10 K26 ["Connect"]
      128 CALL                             R10 2 -1
      129 FASTCALL                         TABLE_INSERT ; [+2]
      130 GETIMPORT                        R8 K29 [table.insert]
      132 CALL                             R8 -1 0
      133 GETUPVAL                         R9 0
      134 GETTABLEKS                       R9 R9 K23 ["imageUnderEditConnections"]
      136 LOADK                            R12 K32 ["ImageRectSize"]
      137 NAMECALL                         R10 R0 K24 ["GetPropertyChangedSignal"]
      139 CALL                             R10 2 1
      140 GETUPVAL                         R12 0
      141 GETTABLEKS                       R12 R12 K33 ["onImageRectSizeChanged"]
      143 NAMECALL                         R10 R10 K26 ["Connect"]
      145 CALL                             R10 2 -1
      146 FASTCALL                         TABLE_INSERT ; [+2]
      147 GETIMPORT                        R8 K29 [table.insert]
      149 CALL                             R8 -1 0
      150 GETUPVAL                         R9 0
      151 GETTABLEKS                       R9 R9 K23 ["imageUnderEditConnections"]
      153 LOADK                            R12 K34 ["ImageColor3"]
      154 NAMECALL                         R10 R0 K24 ["GetPropertyChangedSignal"]
      156 CALL                             R10 2 1
      157 GETUPVAL                         R12 0
      158 GETTABLEKS                       R12 R12 K35 ["onImageColor3Changed"]
      160 NAMECALL                         R10 R10 K26 ["Connect"]
      162 CALL                             R10 2 -1
      163 FASTCALL                         TABLE_INSERT ; [+2]
      164 GETIMPORT                        R8 K29 [table.insert]
      166 CALL                             R8 -1 0
      167 GETUPVAL                         R9 0
      168 GETTABLEKS                       R9 R9 K23 ["imageUnderEditConnections"]
      170 LOADK                            R12 K36 ["ResampleMode"]
      171 NAMECALL                         R10 R0 K24 ["GetPropertyChangedSignal"]
      173 CALL                             R10 2 1
      174 GETUPVAL                         R12 0
      175 GETTABLEKS                       R12 R12 K37 ["onResampleModeChanged"]
      177 NAMECALL                         R10 R10 K26 ["Connect"]
      179 CALL                             R10 2 -1
      180 FASTCALL                         TABLE_INSERT ; [+2]
      181 GETIMPORT                        R8 K29 [table.insert]
      183 CALL                             R8 -1 0
      184 GETUPVAL                         R8 1
      185 GETTABLEKS                       R8 R8 K38 ["getSliceRectFromSliceCenter"]
      187 GETTABLEKS                       R9 R0 K20 ["SliceCenter"]
      189 CALL                             R8 1 1
      190 MOVE                             R3 R8
      191 GETUPVAL                         R8 1
      192 GETTABLEKS                       R8 R8 K39 ["copySliceRect"]
      194 MOVE                             R9 R3
      195 CALL                             R8 1 1
      196 MOVE                             R4 R8
      197 MOVE                             R8 R5
      198 LOADK                            R9 K40 [": "]
      199 GETTABLEKS                       R11 R0 K7 ["Name"]
      201 FASTCALL1                        TOSTRING R11 ; [+2]
      202 GETIMPORT                        R10 K42 [tostring]
      204 CALL                             R10 1 1
      205 CONCAT                           R5 R8 R10
      206 GETUPVAL                         R8 0
      207 GETUPVAL                         R9 1
      208 GETTABLEKS                       R9 R9 K43 ["getOffsetsFromSliceRect"]
      210 MOVE                             R10 R3
      211 MOVE                             R11 R7
      212 CALL                             R9 2 1
      213 SETTABLEKS                       R9 R8 K44 ["lastSliceOffsets"]
      215 DUPTABLE                         R8 K49 [{"title", "pixelDimensions", "sliceRect", "revertSliceRect", "imageRectOffset", "imageRectSize", "imageColor3", "resampleMode"}]
      216 SETTABLEKS                       R5 R8 K9 ["title"]
      218 SETTABLEKS                       R2 R8 K10 ["pixelDimensions"]
      220 SETTABLEKS                       R3 R8 K11 ["sliceRect"]
      222 SETTABLEKS                       R4 R8 K12 ["revertSliceRect"]
      224 GETTABLEKS                       R9 R0 K30 ["ImageRectOffset"]
      226 SETTABLEKS                       R9 R8 K45 ["imageRectOffset"]
      228 GETTABLEKS                       R9 R0 K32 ["ImageRectSize"]
      230 SETTABLEKS                       R9 R8 K46 ["imageRectSize"]
      232 GETTABLEKS                       R9 R0 K34 ["ImageColor3"]
      234 SETTABLEKS                       R9 R8 K47 ["imageColor3"]
      236 GETTABLEKS                       R9 R0 K36 ["ResampleMode"]
      238 SETTABLEKS                       R9 R8 K48 ["resampleMode"]
      240 MOVE                             R6 R8
      241 GETUPVAL                         R7 0
      242 SETTABLEKS                       R0 R7 K50 ["instanceUnderEdit"]
      244 GETUPVAL                         R7 0
      245 GETTABLEKS                       R7 R7 K4 ["props"]
      247 GETTABLEKS                       R7 R7 K51 ["InstanceUnderEditChanged"]
      249 MOVE                             R8 R0
      250 MOVE                             R9 R6
      251 CALL                             R7 2 0
      252 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R1 R0 K0 ["loadingToken"]
        3 ADDK                             R1 R1 K1 [1]
        4 SETTABLEKS                       R1 R0 K0 ["loadingToken"]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["loadingToken"]
        9 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+12]
        2 GETUPVAL                         R2 0
        3 LOADK                            R4 K0 ["ImageLabel"]
        4 NAMECALL                         R2 R2 K1 ["IsA"]
        6 CALL                             R2 2 1
        7 JUMPIF                           R2 ; [+11]
        8 GETUPVAL                         R2 0
        9 LOADK                            R4 K2 ["ImageButton"]
       10 NAMECALL                         R2 R2 K1 ["IsA"]
       12 CALL                             R2 2 1
       13 JUMPIF                           R2 ; [+5]
       14 MOVE                             R2 R1
       15 LOADB                            R3 0
       16 GETUPVAL                         R4 1
       17 CALL                             R2 2 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R2 2
       20 GETTABLEKS                       R2 R2 K3 ["connectImageChangedConnection"]
       22 GETUPVAL                         R3 0
       23 CALL                             R2 1 0
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R3 R2 K4 ["IsLoaded"]
       27 JUMPIFNOT                        R3 ; [+5]
       28 MOVE                             R3 R0
       29 MOVE                             R4 R2
       30 GETUPVAL                         R5 1
       31 CALL                             R3 2 0
       32 RETURN                           R0 0
       33 GETUPVAL                         R3 3
       34 JUMPIFNOT                        R3 ; [+42]
       35 GETUPVAL                         R3 2
       36 GETTABLEKS                       R3 R3 K5 ["props"]
       38 GETTABLEKS                       R3 R3 K6 ["RequestToLoadImage"]
       40 GETTABLEKS                       R4 R2 K7 ["Image"]
       42 CALL                             R3 1 0
       43 GETUPVAL                         R3 2
       44 GETTABLEKS                       R3 R3 K5 ["props"]
       46 GETTABLEKS                       R3 R3 K8 ["LoadingChanged"]
       48 LOADB                            R4 1
       49 CALL                             R3 1 0
       50 GETUPVAL                         R3 4
       51 GETTABLEKS                       R3 R3 K9 ["RenderStepped"]
       53 NAMECALL                         R3 R3 K10 ["Wait"]
       55 CALL                             R3 1 0
       56 GETUPVAL                         R3 4
       57 GETTABLEKS                       R3 R3 K9 ["RenderStepped"]
       59 NAMECALL                         R3 R3 K10 ["Wait"]
       61 CALL                             R3 1 0
       62 GETUPVAL                         R3 4
       63 GETTABLEKS                       R3 R3 K9 ["RenderStepped"]
       65 NAMECALL                         R3 R3 K10 ["Wait"]
       67 CALL                             R3 1 0
       68 GETUPVAL                         R3 2
       69 GETTABLEKS                       R3 R3 K11 ["_isMounted"]
       71 JUMPIF                           R3 ; [+5]
       72 MOVE                             R3 R1
       73 LOADB                            R4 0
       74 GETUPVAL                         R5 1
       75 CALL                             R3 2 0
       76 RETURN                           R0 0
       77 GETUPVAL                         R3 2
       78 GETTABLEKS                       R3 R3 K5 ["props"]
       80 GETTABLEKS                       R3 R3 K8 ["LoadingChanged"]
       82 LOADB                            R4 1
       83 CALL                             R3 1 0
       84 GETIMPORT                        R3 K13 [tick]
       86 CALL                             R3 0 1
       87 GETIMPORT                        R5 K13 [tick]
       89 CALL                             R5 0 1
       90 SUB                              R4 R5 R3
       91 LOADN                            R5 5
       92 JUMPIFNOTLT                      R4 R5 ; [+64]
       94 LOADB                            R4 0
       95 GETUPVAL                         R5 2
       96 GETTABLEKS                       R5 R5 K11 ["_isMounted"]
       98 JUMPIF                           R5 ; [+5]
       99 MOVE                             R5 R1
      100 LOADB                            R6 0
      101 GETUPVAL                         R7 1
      102 CALL                             R5 2 0
      103 RETURN                           R0 0
      104 GETUPVAL                         R5 2
      105 GETTABLEKS                       R5 R5 K5 ["props"]
      107 GETTABLEKS                       R5 R5 K14 ["LoadingImageRef"]
      109 NAMECALL                         R5 R5 K15 ["getValue"]
      111 CALL                             R5 1 1
      112 MOVE                             R6 R5
      113 JUMPIFNOT                        R6 ; [+21]
      114 GETTABLEKS                       R6 R5 K4 ["IsLoaded"]
      116 JUMPIFNOT                        R6 ; [+18]
      117 LOADB                            R6 0
      118 GETTABLEKS                       R7 R5 K16 ["ContentImageSize"]
      120 GETIMPORT                        R8 K19 [Vector2.new]
      122 LOADN                            R9 0
      123 LOADN                            R10 0
      124 CALL                             R8 2 1
      125 JUMPIFEQ                         R7 R8 ; [+9]
      127 GETTABLEKS                       R7 R5 K7 ["Image"]
      129 GETTABLEKS                       R8 R2 K7 ["Image"]
      131 JUMPIFEQ                         R7 R8 ; [+2]
      133 LOADB                            R6 0 +1
      134 LOADB                            R6 1
      135 MOVE                             R4 R6
      136 JUMPIFNOT                        R4 ; [+15]
      137 GETUPVAL                         R6 1
      138 GETUPVAL                         R7 2
      139 GETTABLEKS                       R7 R7 K20 ["loadingToken"]
      141 JUMPIFNOTEQ                      R6 R7 ; [+5]
      143 MOVE                             R6 R0
      144 GETUPVAL                         R7 0
      145 CALL                             R6 1 0
      146 RETURN                           R0 0
      147 MOVE                             R6 R1
      148 LOADB                            R7 0
      149 GETUPVAL                         R8 1
      150 CALL                             R6 2 0
      151 RETURN                           R0 0
      152 GETIMPORT                        R6 K23 [task.wait]
      154 LOADK                            R7 K24 [0.2]
      155 CALL                             R6 1 0
      156 JUMPBACK                         ; [-70]
      157 MOVE                             R4 R1
      158 LOADB                            R5 1
      159 GETUPVAL                         R6 1
      160 CALL                             R4 2 0
      161 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["openInstanceInEditor"]
        3 LOADNIL                          R3
        4 CALL                             R2 1 0
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["newLoadingToken"]
        8 CALL                             R2 0 1
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K2 ["new"]
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R2
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U2
       18 CALL                             R3 1 -1
       19 RETURN                           R3 -1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_isMounted"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 JUMPIFNOT                        R1 ; [+17]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["props"]
       10 GETTABLEKS                       R1 R1 K2 ["LoadingImageRef"]
       12 NAMECALL                         R1 R1 K3 ["getValue"]
       14 CALL                             R1 1 1
       15 MOVE                             R3 R1
       16 JUMPIFNOT                        R3 ; [+2]
       17 GETTABLEKS                       R3 R1 K4 ["IsLoaded"]
       19 FASTCALL1                        ASSERT R3 ; [+2]
       20 GETIMPORT                        R2 K6 [assert]
       22 CALL                             R2 1 0
       23 JUMP                             ; [+6]
       24 GETTABLEKS                       R2 R0 K4 ["IsLoaded"]
       26 FASTCALL1                        ASSERT R2 ; [+2]
       27 GETIMPORT                        R1 K6 [assert]
       29 CALL                             R1 1 0
       30 GETUPVAL                         R1 2
       31 JUMPIFNOT                        R1 ; [+41]
       32 GETUPVAL                         R1 0
       33 GETTABLEKS                       R1 R1 K7 ["lastSliceOffsets"]
       35 JUMPIFEQKNIL                     R1 ; [+28]
       37 GETUPVAL                         R1 0
       38 GETTABLEKS                       R1 R1 K8 ["getImageDimensionsForInstance"]
       40 MOVE                             R2 R0
       41 CALL                             R1 1 1
       42 GETUPVAL                         R2 0
       43 GETTABLEKS                       R2 R2 K9 ["getOffsetsForResizedImage"]
       45 GETUPVAL                         R3 0
       46 GETTABLEKS                       R3 R3 K7 ["lastSliceOffsets"]
       48 MOVE                             R4 R1
       49 CALL                             R2 2 1
       50 GETUPVAL                         R3 3
       51 GETTABLEKS                       R3 R3 K10 ["getSliceRectFromOffsets"]
       53 MOVE                             R4 R2
       54 MOVE                             R5 R1
       55 CALL                             R3 2 1
       56 GETUPVAL                         R4 3
       57 GETTABLEKS                       R4 R4 K11 ["getSliceCenterFromSliceRect"]
       59 MOVE                             R5 R3
       60 CALL                             R4 1 1
       61 SETTABLEKS                       R4 R0 K12 ["SliceCenter"]
       63 JUMP                             ; [+9]
       64 GETIMPORT                        R1 K15 [Rect.new]
       66 LOADN                            R2 0
       67 LOADN                            R3 0
       68 LOADN                            R4 0
       69 LOADN                            R5 0
       70 CALL                             R1 4 1
       71 SETTABLEKS                       R1 R0 K12 ["SliceCenter"]
       73 LOADNIL                          R1
       74 GETUPVAL                         R2 1
       75 JUMPIFNOT                        R2 ; [+11]
       76 GETUPVAL                         R2 0
       77 GETTABLEKS                       R2 R2 K1 ["props"]
       79 GETTABLEKS                       R2 R2 K2 ["LoadingImageRef"]
       81 NAMECALL                         R2 R2 K3 ["getValue"]
       83 CALL                             R2 1 1
       84 GETTABLEKS                       R1 R2 K16 ["ContentImageSize"]
       86 JUMP                             ; [+2]
       87 GETTABLEKS                       R1 R0 K16 ["ContentImageSize"]
       89 GETUPVAL                         R2 0
       90 GETTABLEKS                       R2 R2 K17 ["openInstanceInEditor"]
       92 MOVE                             R3 R0
       93 MOVE                             R4 R1
       94 CALL                             R2 2 0
       95 GETUPVAL                         R2 0
       96 GETTABLEKS                       R2 R2 K1 ["props"]
       98 GETTABLEKS                       R2 R2 K18 ["LoadingChanged"]
      100 LOADB                            R3 0
      101 CALL                             R2 1 0
      102 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["loadingToken"]
        3 JUMPIFEQ                         R1 R2 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["_isMounted"]
        9 JUMPIF                           R2 ; [+1]
       10 RETURN                           R0 0
       11 JUMPIFNOT                        R0 ; [+13]
       12 GETIMPORT                        R2 K3 [print]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K4 ["props"]
       17 GETTABLEKS                       R3 R3 K5 ["Localization"]
       19 LOADK                            R5 K6 ["Plugin"]
       20 LOADK                            R6 K7 ["ImageLoadErrorMessage"]
       21 NAMECALL                         R3 R3 K8 ["getText"]
       23 CALL                             R3 3 -1
       24 CALL                             R2 -1 0
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R2 R2 K4 ["props"]
       28 GETTABLEKS                       R2 R2 K9 ["LoadingChanged"]
       30 LOADB                            R3 0
       31 CALL                             R2 1 0
       32 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["disconnectImageChangedConnection"]
        3 CALL                             R2 0 0
        4 MOVE                             R2 R0
        5 JUMPIFNOT                        R2 ; [+13]
        6 LOADK                            R5 K1 ["ImageLabel"]
        7 NAMECALL                         R3 R0 K2 ["IsA"]
        9 CALL                             R3 2 1
       10 JUMPIF                           R3 ; [+5]
       11 LOADK                            R4 K3 ["ImageButton"]
       12 NAMECALL                         R2 R0 K2 ["IsA"]
       14 CALL                             R2 2 1
       15 JUMPIFNOT                        R2 ; [+3]
       16 GETTABLEKS                       R3 R0 K4 ["IsLoaded"]
       18 NOT                              R2 R3
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K5 ["createPromiseForImageLoaded"]
       22 MOVE                             R4 R0
       23 MOVE                             R5 R2
       24 CALL                             R3 2 1
       25 NEWCLOSURE                       R4 P0
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R1
       29 CAPTURE                          UPVAL U1
       30 NEWCLOSURE                       R5 P1
       31 CAPTURE                          UPVAL U0
       32 MOVE                             R8 R4
       33 MOVE                             R9 R5
       34 NAMECALL                         R6 R3 K6 ["andThen"]
       36 CALL                             R6 3 0
       37 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["RenderStepped"]
        3 NAMECALL                         R0 R0 K1 ["Wait"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["RenderStepped"]
        9 NAMECALL                         R0 R0 K1 ["Wait"]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 1
       13 GETTABLEKS                       R0 R0 K2 ["_isMounted"]
       15 JUMPIF                           R0 ; [+1]
       16 RETURN                           R0 0
       17 GETUPVAL                         R0 1
       18 GETTABLEKS                       R0 R0 K3 ["instanceWatchedForImageChange"]
       20 JUMPIFEQKNIL                     R0 ; [+7]
       22 GETUPVAL                         R1 1
       23 GETTABLEKS                       R1 R1 K4 ["createAndRunPromiseForImageLoaded"]
       25 MOVE                             R2 R0
       26 LOADB                            R3 1
       27 CALL                             R1 2 0
       28 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Get"]
        3 CALL                             R0 1 1
        4 LENGTH                           R1 R0
        5 LOADN                            R2 1
        6 JUMPIFNOTLT                      R2 R1 ; [+2]
        8 RETURN                           R0 0
        9 LENGTH                           R1 R0
       10 JUMPIFNOTEQKN                    R1 K1 [0] ; [+11]
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K2 ["disconnectImageChangedConnection"]
       15 CALL                             R1 0 0
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R1 R1 K3 ["openInstanceInEditor"]
       19 LOADNIL                          R2
       20 CALL                             R1 1 0
       21 RETURN                           R0 0
       22 GETTABLEN                        R1 R0 1
       23 FASTCALL1                        ASSERT R1 ; [+3]
       24 MOVE                             R3 R1
       25 GETIMPORT                        R2 K5 [assert]
       27 CALL                             R2 1 0
       28 GETUPVAL                         R2 1
       29 GETTABLEKS                       R2 R2 K6 ["instanceUnderEdit"]
       31 JUMPIFNOTEQ                      R1 R2 ; [+2]
       33 RETURN                           R0 0
       34 GETUPVAL                         R2 1
       35 GETTABLEKS                       R2 R2 K7 ["createAndRunPromiseForImageLoaded"]
       37 MOVE                             R3 R1
       38 LOADB                            R4 0
       39 CALL                             R2 2 0
       40 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["imageChangedConnection"]
        3 JUMPIF                           R1 ; [+16]
        4 GETUPVAL                         R1 0
        5 SETTABLEKS                       R0 R1 K1 ["instanceWatchedForImageChange"]
        7 GETUPVAL                         R1 0
        8 LOADK                            R4 K2 ["Image"]
        9 NAMECALL                         R2 R0 K3 ["GetPropertyChangedSignal"]
       11 CALL                             R2 2 1
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K4 ["onImageChanged"]
       15 NAMECALL                         R2 R2 K5 ["Connect"]
       17 CALL                             R2 2 1
       18 SETTABLEKS                       R2 R1 K0 ["imageChangedConnection"]
       20 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["imageChangedConnection"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["imageChangedConnection"]
        7 NAMECALL                         R0 R0 K1 ["Disconnect"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K0 ["imageChangedConnection"]
       14 GETUPVAL                         R0 0
       15 LOADNIL                          R1
       16 SETTABLEKS                       R1 R0 K2 ["instanceWatchedForImageChange"]
       18 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["selectionChangedConnection"]
        3 JUMPIF                           R0 ; [+12]
        4 GETUPVAL                         R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["SelectionChanged"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K2 ["onSelectionChanged"]
       11 NAMECALL                         R1 R1 K3 ["Connect"]
       13 CALL                             R1 2 1
       14 SETTABLEKS                       R1 R0 K0 ["selectionChangedConnection"]
       16 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["selectionChangedConnection"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["selectionChangedConnection"]
        7 NAMECALL                         R0 R0 K1 ["Disconnect"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K0 ["selectionChangedConnection"]
       14 RETURN                           R0 0

PROTO_26:
        0 LOADK                            R3 K0 ["ImageLabel"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+12]
        5 LOADK                            R3 K2 ["ImageButton"]
        6 NAMECALL                         R1 R0 K1 ["IsA"]
        8 CALL                             R1 2 1
        9 JUMPIF                           R1 ; [+7]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K3 ["showAlertDialog"]
       13 LOADK                            R2 K4 ["ErrorMessageTitle"]
       14 LOADK                            R3 K5 ["InvalidInstanceErrorMessage"]
       15 CALL                             R1 2 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K6 ["createAndRunPromiseForImageLoaded"]
       20 MOVE                             R2 R0
       21 LOADB                            R3 0
       22 CALL                             R1 2 0
       23 RETURN                           R0 0

PROTO_27:
        0 DUPTABLE                         R2 K3 [{[1] = , ["showingAlertMessageKey"] = }]
        1 SETTABLEKS                       R2 R0 K4 ["state"]
        3 LOADNIL                          R2
        4 SETTABLEKS                       R2 R0 K5 ["instanceUnderEdit"]
        6 LOADNIL                          R2
        7 SETTABLEKS                       R2 R0 K6 ["instanceWatchedForImageChange"]
        9 LOADNIL                          R2
       10 SETTABLEKS                       R2 R0 K7 ["lastSliceOffsets"]
       12 GETIMPORT                        R2 K10 [Vector2.new]
       14 CALL                             R2 0 1
       15 SETTABLEKS                       R2 R0 K11 ["uncroppedImageSize"]
       17 NEWCLOSURE                       R2 P0
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R2 R0 K12 ["showAlertDialog"]
       21 NEWCLOSURE                       R2 P1
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U0
       24 SETTABLEKS                       R2 R0 K13 ["closeAlertDialog"]
       26 NEWTABLE                         R2 0 0
       28 SETTABLEKS                       R2 R0 K14 ["imageUnderEditConnections"]
       30 NEWCLOSURE                       R2 P2
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R2 R0 K15 ["clearCurrentImageUnderEdit"]
       34 DUPCLOSURE                       R2 K16 [PROTO_3]
       35 CAPTURE                          UPVAL U1
       36 CAPTURE                          UPVAL U2
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          UPVAL U4
       39 SETTABLEKS                       R2 R0 K17 ["getOffsetsForResizedImage"]
       41 NEWCLOSURE                       R2 P4
       42 CAPTURE                          VAL R0
       43 SETTABLEKS                       R2 R0 K18 ["getImageDimensionsForInstance"]
       45 NEWCLOSURE                       R2 P5
       46 CAPTURE                          VAL R0
       47 SETTABLEKS                       R2 R0 K19 ["getImageUnderEdit"]
       49 NEWCLOSURE                       R2 P6
       50 CAPTURE                          VAL R0
       51 CAPTURE                          UPVAL U5
       52 SETTABLEKS                       R2 R0 K20 ["onSliceCenterChanged"]
       54 NEWCLOSURE                       R2 P7
       55 CAPTURE                          VAL R0
       56 SETTABLEKS                       R2 R0 K21 ["getInstanceProperty"]
       58 NEWCLOSURE                       R2 P8
       59 CAPTURE                          VAL R0
       60 SETTABLEKS                       R2 R0 K22 ["onImageRectOffsetChanged"]
       62 DUPCLOSURE                       R2 K23 [PROTO_9]
       63 SETTABLEKS                       R2 R0 K24 ["clampSliceCenterToDimensions"]
       65 NEWCLOSURE                       R2 P10
       66 CAPTURE                          VAL R0
       67 SETTABLEKS                       R2 R0 K25 ["onImageRectSizeChanged"]
       69 NEWCLOSURE                       R2 P11
       70 CAPTURE                          VAL R0
       71 SETTABLEKS                       R2 R0 K26 ["onImageColor3Changed"]
       73 NEWCLOSURE                       R2 P12
       74 CAPTURE                          VAL R0
       75 SETTABLEKS                       R2 R0 K27 ["onResampleModeChanged"]
       77 NEWCLOSURE                       R2 P13
       78 CAPTURE                          VAL R0
       79 CAPTURE                          UPVAL U5
       80 SETTABLEKS                       R2 R0 K28 ["openInstanceInEditor"]
       82 LOADN                            R2 0
       83 SETTABLEKS                       R2 R0 K29 ["loadingToken"]
       85 NEWCLOSURE                       R2 P14
       86 CAPTURE                          VAL R0
       87 SETTABLEKS                       R2 R0 K30 ["newLoadingToken"]
       89 GETUPVAL                         R2 0
       90 GETTABLEKS                       R2 R2 K31 ["createRef"]
       92 CALL                             R2 0 1
       93 SETTABLEKS                       R2 R0 K32 ["loadingImageRef"]
       95 NEWCLOSURE                       R2 P15
       96 CAPTURE                          VAL R0
       97 CAPTURE                          UPVAL U6
       98 CAPTURE                          UPVAL U7
       99 SETTABLEKS                       R2 R0 K33 ["createPromiseForImageLoaded"]
      101 NEWCLOSURE                       R2 P16
      102 CAPTURE                          VAL R0
      103 CAPTURE                          UPVAL U5
      104 SETTABLEKS                       R2 R0 K34 ["createAndRunPromiseForImageLoaded"]
      106 NEWCLOSURE                       R2 P17
      107 CAPTURE                          UPVAL U7
      108 CAPTURE                          VAL R0
      109 SETTABLEKS                       R2 R0 K35 ["onImageChanged"]
      111 NEWCLOSURE                       R2 P18
      112 CAPTURE                          UPVAL U8
      113 CAPTURE                          VAL R0
      114 SETTABLEKS                       R2 R0 K36 ["onSelectionChanged"]
      116 NEWCLOSURE                       R2 P19
      117 CAPTURE                          VAL R0
      118 SETTABLEKS                       R2 R0 K37 ["connectImageChangedConnection"]
      120 NEWCLOSURE                       R2 P20
      121 CAPTURE                          VAL R0
      122 SETTABLEKS                       R2 R0 K38 ["disconnectImageChangedConnection"]
      124 NEWCLOSURE                       R2 P21
      125 CAPTURE                          VAL R0
      126 CAPTURE                          UPVAL U8
      127 SETTABLEKS                       R2 R0 K39 ["startListeningToSelection"]
      129 NEWCLOSURE                       R2 P22
      130 CAPTURE                          VAL R0
      131 SETTABLEKS                       R2 R0 K40 ["stopListeningToSelection"]
      133 NEWCLOSURE                       R2 P23
      134 CAPTURE                          VAL R0
      135 SETTABLEKS                       R2 R0 K41 ["onSliceCenterEditButtonClicked"]
      137 GETTABLEKS                       R2 R1 K42 ["WidgetEnabled"]
      139 JUMPIFNOT                        R2 ; [+3]
      140 GETTABLEKS                       R2 R0 K39 ["startListeningToSelection"]
      142 CALL                             R2 0 0
      143 GETUPVAL                         R2 9
      144 GETTABLEKS                       R2 R2 K43 ["Open9SliceEditor"]
      146 GETTABLEKS                       R4 R0 K41 ["onSliceCenterEditButtonClicked"]
      148 NAMECALL                         R2 R2 K44 ["Connect"]
      150 CALL                             R2 2 1
      151 SETTABLEKS                       R2 R0 K45 ["onOpen9SliceEditorConnection"]
      153 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_isMounted"]
        3 JUMPIFNOT                        R0 ; [+9]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["onSliceCenterEditButtonClicked"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K2 ["props"]
       10 GETTABLEKS                       R1 R1 K3 ["InitialEditorInstanceRequest"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_29:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["_isMounted"]
        3 GETTABLEKS                       R1 R0 K1 ["props"]
        5 GETTABLEKS                       R1 R1 K2 ["InitialEditorInstanceRequest"]
        7 JUMPIFNOT                        R1 ; [+5]
        8 GETIMPORT                        R1 K5 [task.defer]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          VAL R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_30:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R3 K1 ["WidgetEnabled"]
        4 JUMPIFNOT                        R3 ; [+7]
        5 GETTABLEKS                       R3 R1 K1 ["WidgetEnabled"]
        7 JUMPIF                           R3 ; [+4]
        8 GETTABLEKS                       R3 R0 K2 ["startListeningToSelection"]
       10 CALL                             R3 0 0
       11 RETURN                           R0 0
       12 GETTABLEKS                       R3 R0 K0 ["props"]
       14 GETTABLEKS                       R3 R3 K1 ["WidgetEnabled"]
       16 JUMPIF                           R3 ; [+12]
       17 GETTABLEKS                       R3 R1 K1 ["WidgetEnabled"]
       19 JUMPIFNOT                        R3 ; [+9]
       20 GETTABLEKS                       R3 R0 K3 ["stopListeningToSelection"]
       22 CALL                             R3 0 0
       23 GETTABLEKS                       R3 R0 K4 ["clearCurrentImageUnderEdit"]
       25 CALL                             R3 0 0
       26 GETTABLEKS                       R3 R0 K5 ["disconnectImageChangedConnection"]
       28 CALL                             R3 0 0
       29 RETURN                           R0 0

PROTO_31:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["_isMounted"]
        3 GETTABLEKS                       R1 R0 K1 ["stopListeningToSelection"]
        5 CALL                             R1 0 0
        6 GETTABLEKS                       R1 R0 K2 ["clearCurrentImageUnderEdit"]
        8 CALL                             R1 0 0
        9 GETTABLEKS                       R1 R0 K3 ["disconnectImageChangedConnection"]
       11 CALL                             R1 0 0
       12 GETTABLEKS                       R1 R0 K4 ["onOpen9SliceEditorConnection"]
       14 JUMPIFNOT                        R1 ; [+8]
       15 GETTABLEKS                       R1 R0 K4 ["onOpen9SliceEditorConnection"]
       17 NAMECALL                         R1 R1 K5 ["Disconnect"]
       19 CALL                             R1 1 0
       20 LOADNIL                          R1
       21 SETTABLEKS                       R1 R0 K4 ["onOpen9SliceEditorConnection"]
       23 RETURN                           R0 0

PROTO_32:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R1 K1 ["showingAlertTitleKey"]
        4 JUMPIFNOT                        R2 ; [+23]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["createElement"]
        8 GETUPVAL                         R3 1
        9 DUPTABLE                         R4 K9 [{["Enabled"] = True, ["TitleKey"], ["MessageKey"], ["MessageKeyFormatTable"], ["OnClose"]}]
       10 GETTABLEKS                       R5 R1 K1 ["showingAlertTitleKey"]
       12 SETTABLEKS                       R5 R4 K5 ["TitleKey"]
       14 GETTABLEKS                       R5 R1 K10 ["showingAlertMessageKey"]
       16 SETTABLEKS                       R5 R4 K6 ["MessageKey"]
       18 GETTABLEKS                       R5 R1 K11 ["showingAlertMessageReplacements"]
       20 SETTABLEKS                       R5 R4 K7 ["MessageKeyFormatTable"]
       22 GETTABLEKS                       R5 R0 K12 ["closeAlertDialog"]
       24 SETTABLEKS                       R5 R4 K8 ["OnClose"]
       26 CALL                             R2 2 -1
       27 RETURN                           R2 -1
       28 LOADNIL                          R2
       29 RETURN                           R2 1

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
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Util"]
       29 GETTABLEKS                       R4 R4 K10 ["SliceRectUtil"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K11 ["Types"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K4 [require]
       41 GETTABLEKS                       R6 R0 K8 ["Src"]
       43 GETTABLEKS                       R6 R6 K9 ["Util"]
       45 GETTABLEKS                       R6 R6 K12 ["Orientation"]
       47 CALL                             R5 1 1
       48 GETTABLEKS                       R6 R2 K13 ["ContextServices"]
       50 GETTABLEKS                       R7 R6 K14 ["withContext"]
       52 GETTABLEKS                       R8 R6 K15 ["Analytics"]
       54 GETTABLEKS                       R9 R6 K16 ["Localization"]
       56 GETTABLEKS                       R10 R2 K9 ["Util"]
       58 GETTABLEKS                       R10 R10 K17 ["Promise"]
       60 GETIMPORT                        R11 K4 [require]
       62 GETTABLEKS                       R12 R0 K8 ["Src"]
       64 GETTABLEKS                       R12 R12 K18 ["Components"]
       66 GETTABLEKS                       R12 R12 K19 ["AlertDialog"]
       68 CALL                             R11 1 1
       69 GETIMPORT                        R12 K21 [game]
       71 LOADK                            R14 K22 ["GuiService"]
       72 NAMECALL                         R12 R12 K23 ["GetService"]
       74 CALL                             R12 2 1
       75 GETIMPORT                        R13 K21 [game]
       77 LOADK                            R15 K24 ["Selection"]
       78 NAMECALL                         R13 R13 K23 ["GetService"]
       80 CALL                             R13 2 1
       81 GETIMPORT                        R14 K21 [game]
       83 LOADK                            R16 K25 ["RunService"]
       84 NAMECALL                         R14 R14 K23 ["GetService"]
       86 CALL                             R14 2 1
       87 GETTABLEKS                       R15 R1 K26 ["PureComponent"]
       89 LOADK                            R17 K27 ["InstanceUnderEditManager"]
       90 NAMECALL                         R15 R15 K28 ["extend"]
       92 CALL                             R15 2 1
       93 GETTABLEKS                       R16 R5 K29 ["Left"]
       95 GETTABLEKS                       R16 R16 K30 ["rawValue"]
       97 CALL                             R16 0 1
       98 GETTABLEKS                       R17 R5 K31 ["Right"]
      100 GETTABLEKS                       R17 R17 K30 ["rawValue"]
      102 CALL                             R17 0 1
      103 GETTABLEKS                       R18 R5 K32 ["Top"]
      105 GETTABLEKS                       R18 R18 K30 ["rawValue"]
      107 CALL                             R18 0 1
      108 GETTABLEKS                       R19 R5 K33 ["Bottom"]
      110 GETTABLEKS                       R19 R19 K30 ["rawValue"]
      112 CALL                             R19 0 1
      113 DUPCLOSURE                       R20 K34 [PROTO_27]
      114 CAPTURE                          VAL R1
      115 CAPTURE                          VAL R16
      116 CAPTURE                          VAL R17
      117 CAPTURE                          VAL R18
      118 CAPTURE                          VAL R19
      119 CAPTURE                          VAL R3
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R14
      122 CAPTURE                          VAL R13
      123 CAPTURE                          VAL R12
      124 SETTABLEKS                       R20 R15 K35 ["init"]
      126 DUPCLOSURE                       R20 K36 [PROTO_29]
      127 SETTABLEKS                       R20 R15 K37 ["didMount"]
      129 DUPCLOSURE                       R20 K38 [PROTO_30]
      130 SETTABLEKS                       R20 R15 K39 ["didUpdate"]
      132 DUPCLOSURE                       R20 K40 [PROTO_31]
      133 SETTABLEKS                       R20 R15 K41 ["willUnmount"]
      135 DUPCLOSURE                       R20 K42 [PROTO_32]
      136 CAPTURE                          VAL R1
      137 CAPTURE                          VAL R11
      138 SETTABLEKS                       R20 R15 K43 ["render"]
      140 MOVE                             R20 R7
      141 DUPTABLE                         R21 K45 [{"Analytics", "Localization", "Stylizer"}]
      142 SETTABLEKS                       R8 R21 K15 ["Analytics"]
      144 SETTABLEKS                       R9 R21 K16 ["Localization"]
      146 GETTABLEKS                       R22 R6 K44 ["Stylizer"]
      148 SETTABLEKS                       R22 R21 K44 ["Stylizer"]
      150 CALL                             R20 1 1
      151 MOVE                             R21 R15
      152 CALL                             R20 1 1
      153 MOVE                             R15 R20
      154 RETURN                           R15 1
