PROTO_0:
        0 GETUPVAL                         R3 0
        1 DUPTABLE                         R5 K1 [{"Size"}]
        2 SETTABLEKS                       R0 R5 K0 ["Size"]
        4 NAMECALL                         R3 R3 K2 ["CreateEditableImage"]
        6 CALL                             R3 2 1
        7 GETIMPORT                        R6 K5 [Vector2.zero]
        9 GETTABLEKS                       R7 R3 K0 ["Size"]
       11 NAMECALL                         R4 R3 K6 ["ReadPixelsBuffer"]
       13 CALL                             R4 3 1
       14 GETTABLEKS                       R5 R0 K7 ["X"]
       16 GETTABLEKS                       R6 R0 K8 ["Y"]
       18 GETTABLEKS                       R9 R1 K10 ["R"]
       20 MULK                             R8 R9 K9 [255]
       21 FASTCALL1                        MATH_FLOOR R8 ; [+2]
       22 GETIMPORT                        R7 K13 [math.floor]
       24 CALL                             R7 1 1
       25 GETTABLEKS                       R10 R1 K14 ["G"]
       27 MULK                             R9 R10 K9 [255]
       28 FASTCALL1                        MATH_FLOOR R9 ; [+2]
       29 GETIMPORT                        R8 K13 [math.floor]
       31 CALL                             R8 1 1
       32 GETTABLEKS                       R11 R1 K15 ["B"]
       34 MULK                             R10 R11 K9 [255]
       35 FASTCALL1                        MATH_FLOOR R10 ; [+2]
       36 GETIMPORT                        R9 K13 [math.floor]
       38 CALL                             R9 1 1
       39 SUBRK                            R12 R16 K2 ["CreateEditableImage"]
       40 MULK                             R11 R12 K9 [255]
       41 FASTCALL1                        MATH_FLOOR R11 ; [+2]
       42 GETIMPORT                        R10 K13 [math.floor]
       44 CALL                             R10 1 1
       45 LOADN                            R13 0
       46 SUBK                             R11 R6 K16 [1]
       47 LOADN                            R12 1
       48 FORNPREP                         R11
       49 LOADN                            R16 0
       50 SUBK                             R14 R5 K16 [1]
       51 LOADN                            R15 1
       52 FORNPREP                         R14
       53 MUL                              R19 R13 R5
       54 ADD                              R18 R19 R16
       55 MULK                             R17 R18 K17 [4]
       56 FASTCALL3                        BUFFER_WRITEU8 R4 R17 R7
       58 MOVE                             R19 R4
       59 MOVE                             R20 R17
       60 MOVE                             R21 R7
       61 GETIMPORT                        R18 K20 [buffer.writeu8]
       63 CALL                             R18 3 0
       64 ADDK                             R20 R17 K16 [1]
       65 FASTCALL3                        BUFFER_WRITEU8 R4 R20 R8
       67 MOVE                             R19 R4
       68 MOVE                             R21 R8
       69 GETIMPORT                        R18 K20 [buffer.writeu8]
       71 CALL                             R18 3 0
       72 ADDK                             R20 R17 K21 [2]
       73 FASTCALL3                        BUFFER_WRITEU8 R4 R20 R9
       75 MOVE                             R19 R4
       76 MOVE                             R21 R9
       77 GETIMPORT                        R18 K20 [buffer.writeu8]
       79 CALL                             R18 3 0
       80 ADDK                             R20 R17 K22 [3]
       81 FASTCALL3                        BUFFER_WRITEU8 R4 R20 R10
       83 MOVE                             R19 R4
       84 MOVE                             R21 R10
       85 GETIMPORT                        R18 K20 [buffer.writeu8]
       87 CALL                             R18 3 0
       88 FORNLOOP                         R14
       89 FORNLOOP                         R11
       90 GETIMPORT                        R13 K5 [Vector2.zero]
       92 GETTABLEKS                       R14 R3 K0 ["Size"]
       94 MOVE                             R15 R4
       95 NAMECALL                         R11 R3 K23 ["WritePixelsBuffer"]
       97 CALL                             R11 4 0
       98 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Destroy"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 NEWTABLE                         R1 0 0
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R6 R7 K0 ["Color"]
        7 GETTABLEKS                       R5 R6 K1 ["Extended"]
        9 GETUPVAL                         R7 1
       10 GETTABLEKS                       R6 R7 K2 ["backgroundColor"]
       12 GETTABLE                         R2 R5 R6
       13 LOADNIL                          R3
       14 LOADNIL                          R4
       15 FORGPREP                         R2
       16 GETUPVAL                         R12 0
       17 GETTABLEKS                       R11 R12 K0 ["Color"]
       19 GETTABLEKS                       R10 R11 K1 ["Extended"]
       21 GETUPVAL                         R12 1
       22 GETTABLEKS                       R11 R12 K3 ["overlayColor"]
       24 GETTABLE                         R7 R10 R11
       25 LOADNIL                          R8
       26 LOADNIL                          R9
       27 FORGPREP                         R7
       28 JUMPIFEQ                         R6 R11 ; [+219]
       30 GETUPVAL                         R14 0
       31 GETTABLEKS                       R13 R14 K4 ["Size"]
       33 GETTABLEKS                       R12 R13 K5 ["Size_1400"]
       35 GETUPVAL                         R15 0
       36 GETTABLEKS                       R14 R15 K4 ["Size"]
       38 GETTABLEKS                       R13 R14 K6 ["Size_2000"]
       40 GETIMPORT                        R14 K9 [Vector2.new]
       42 MOVE                             R15 R12
       43 MOVE                             R16 R13
       44 CALL                             R14 2 1
       45 GETUPVAL                         R15 2
       46 MOVE                             R16 R14
       47 GETTABLEKS                       R17 R6 K10 ["Color3"]
       49 GETUPVAL                         R19 1
       50 GETTABLEKS                       R18 R19 K11 ["backgroundTransparency"]
       52 CALL                             R15 3 1
       53 FASTCALL2                        TABLE_INSERT R1 R15 ; [+5]
       55 MOVE                             R17 R1
       56 MOVE                             R18 R15
       57 GETIMPORT                        R16 K14 [table.insert]
       59 CALL                             R16 2 0
       60 GETUPVAL                         R16 2
       61 MOVE                             R17 R14
       62 GETTABLEKS                       R18 R11 K10 ["Color3"]
       64 GETUPVAL                         R20 1
       65 GETTABLEKS                       R19 R20 K15 ["overlayTransparency"]
       67 CALL                             R16 3 1
       68 FASTCALL2                        TABLE_INSERT R1 R16 ; [+5]
       70 MOVE                             R18 R1
       71 MOVE                             R19 R16
       72 GETIMPORT                        R17 K14 [table.insert]
       74 CALL                             R17 2 0
       75 GETUPVAL                         R19 0
       76 GETTABLEKS                       R18 R19 K4 ["Size"]
       78 GETTABLEKS                       R17 R18 K16 ["Size_2800"]
       80 GETIMPORT                        R18 K9 [Vector2.new]
       82 MOVE                             R19 R12
       83 MOVE                             R20 R17
       84 CALL                             R18 2 1
       85 GETUPVAL                         R19 3
       86 DUPTABLE                         R21 K17 [{"Size"}]
       87 SETTABLEKS                       R18 R21 K4 ["Size"]
       89 NAMECALL                         R19 R19 K18 ["CreateEditableImage"]
       91 CALL                             R19 2 1
       92 FASTCALL2                        TABLE_INSERT R1 R19 ; [+5]
       94 MOVE                             R21 R1
       95 MOVE                             R22 R19
       96 GETIMPORT                        R20 K14 [table.insert]
       98 CALL                             R20 2 0
       99 GETIMPORT                        R22 K20 [Vector2.zero]
      101 GETTABLEKS                       R23 R19 K4 ["Size"]
      103 NAMECALL                         R20 R19 K21 ["ReadPixelsBuffer"]
      105 CALL                             R20 3 1
      106 LOADN                            R23 0
      107 MUL                              R25 R12 R17
      108 MULK                             R24 R25 K23 [4]
      109 SUBK                             R21 R24 K22 [1]
      110 LOADN                            R22 1
      111 FORNPREP                         R21
      112 LOADN                            R27 0
      113 FASTCALL3                        BUFFER_WRITEU8 R20 R23 R27
      115 MOVE                             R25 R20
      116 MOVE                             R26 R23
      117 GETIMPORT                        R24 K26 [buffer.writeu8]
      119 CALL                             R24 3 0
      120 FORNLOOP                         R21
      121 GETIMPORT                        R23 K20 [Vector2.zero]
      123 GETTABLEKS                       R24 R19 K4 ["Size"]
      125 MOVE                             R25 R20
      126 NAMECALL                         R21 R19 K27 ["WritePixelsBuffer"]
      128 CALL                             R21 4 0
      129 GETIMPORT                        R23 K20 [Vector2.zero]
      131 MOVE                             R24 R15
      132 GETIMPORT                        R25 K31 [Enum.ImageCombineType.Overwrite]
      134 NAMECALL                         R21 R19 K32 ["DrawImage"]
      136 CALL                             R21 4 0
      137 GETIMPORT                        R21 K9 [Vector2.new]
      139 LOADN                            R22 0
      140 GETUPVAL                         R25 0
      141 GETTABLEKS                       R24 R25 K4 ["Size"]
      143 GETTABLEKS                       R23 R24 K33 ["Size_800"]
      145 CALL                             R21 2 1
      146 MOVE                             R24 R21
      147 MOVE                             R25 R16
      148 GETUPVAL                         R27 1
      149 GETTABLEKS                       R26 R27 K34 ["imageCombineType"]
      151 NAMECALL                         R22 R19 K32 ["DrawImage"]
      153 CALL                             R22 4 0
      154 GETIMPORT                        R24 K9 [Vector2.new]
      156 LOADN                            R25 0
      157 GETUPVAL                         R29 0
      158 GETTABLEKS                       R28 R29 K4 ["Size"]
      160 GETTABLEKS                       R27 R28 K33 ["Size_800"]
      162 ADDK                             R26 R27 K35 [10]
      163 CALL                             R24 2 1
      164 GETIMPORT                        R25 K9 [Vector2.new]
      166 LOADN                            R26 1
      167 LOADN                            R27 1
      168 CALL                             R25 2 -1
      169 NAMECALL                         R22 R19 K21 ["ReadPixelsBuffer"]
      171 CALL                             R22 -1 1
      172 FASTCALL2K                       BUFFER_READU8 R22 K36 ; [+5]
      174 MOVE                             R24 R22
      175 LOADK                            R25 K36 [0]
      176 GETIMPORT                        R23 K38 [buffer.readu8]
      178 CALL                             R23 2 1
      179 FASTCALL2K                       BUFFER_READU8 R22 K22 ; [+5]
      181 MOVE                             R25 R22
      182 LOADK                            R26 K22 [1]
      183 GETIMPORT                        R24 K38 [buffer.readu8]
      185 CALL                             R24 2 1
      186 FASTCALL2K                       BUFFER_READU8 R22 K39 ; [+5]
      188 MOVE                             R26 R22
      189 LOADK                            R27 K39 [2]
      190 GETIMPORT                        R25 K38 [buffer.readu8]
      192 CALL                             R25 2 1
      193 FASTCALL2K                       BUFFER_READU8 R22 K40 ; [+5]
      195 MOVE                             R27 R22
      196 LOADK                            R28 K40 [3]
      197 GETIMPORT                        R26 K38 [buffer.readu8]
      199 CALL                             R26 2 1
      200 GETIMPORT                        R27 K42 [Color3.fromRGB]
      202 MOVE                             R28 R23
      203 MOVE                             R29 R24
      204 MOVE                             R30 R25
      205 CALL                             R27 3 1
      206 DIVK                             R29 R26 K43 [255]
      207 SUBRK                            R28 R22 K29 ["ImageCombineType"]
      208 MOVE                             R30 R5
      209 LOADK                            R31 K44 ["-"]
      210 MOVE                             R32 R10
      211 CONCAT                           R29 R30 R32
      212 DUPTABLE                         R30 K52 [{"backgroundImage", "overlayImage", "resultImage", "backgroundStyle", "overlayStyle", "resultColor3", "resultTransparency"}]
      213 SETTABLEKS                       R15 R30 K45 ["backgroundImage"]
      215 SETTABLEKS                       R16 R30 K46 ["overlayImage"]
      217 SETTABLEKS                       R19 R30 K47 ["resultImage"]
      219 DUPTABLE                         R31 K54 [{"Color3", "Transparency"}]
      220 GETTABLEKS                       R32 R6 K10 ["Color3"]
      222 SETTABLEKS                       R32 R31 K10 ["Color3"]
      224 GETUPVAL                         R33 1
      225 GETTABLEKS                       R32 R33 K11 ["backgroundTransparency"]
      227 SETTABLEKS                       R32 R31 K53 ["Transparency"]
      229 SETTABLEKS                       R31 R30 K48 ["backgroundStyle"]
      231 DUPTABLE                         R31 K54 [{"Color3", "Transparency"}]
      232 GETTABLEKS                       R32 R11 K10 ["Color3"]
      234 SETTABLEKS                       R32 R31 K10 ["Color3"]
      236 GETUPVAL                         R33 1
      237 GETTABLEKS                       R32 R33 K15 ["overlayTransparency"]
      239 SETTABLEKS                       R32 R31 K53 ["Transparency"]
      241 SETTABLEKS                       R31 R30 K49 ["overlayStyle"]
      243 SETTABLEKS                       R27 R30 K50 ["resultColor3"]
      245 SETTABLEKS                       R28 R30 K51 ["resultTransparency"]
      247 SETTABLE                         R30 R0 R29
      248 FORGLOOP                         R7 2 ; [-221]
      250 FORGLOOP                         R2 2 ; [-235]
      252 GETUPVAL                         R2 4
      253 MOVE                             R3 R0
      254 CALL                             R2 1 0
      255 NEWCLOSURE                       R2 P0
      256 CAPTURE                          VAL R1
      257 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R3 R1 K1 ["useAlphaCompositing"]
        5 SETTABLEKS                       R3 R2 K2 ["FoundationUseAlphaCompositingForStateLayer"]
        7 GETUPVAL                         R2 1
        8 CALL                             R2 0 1
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R3 R4 K3 ["useState"]
       12 NEWTABLE                         R4 0 0
       14 CALL                             R3 1 2
       15 GETUPVAL                         R6 2
       16 GETTABLEKS                       R5 R6 K4 ["useEffect"]
       18 NEWCLOSURE                       R6 P0
       19 CAPTURE                          VAL R2
       20 CAPTURE                          VAL R1
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          VAL R4
       24 NEWTABLE                         R7 0 5
       26 GETTABLEKS                       R8 R1 K5 ["imageCombineType"]
       28 GETTABLEKS                       R9 R1 K6 ["backgroundTransparency"]
       30 GETTABLEKS                       R10 R1 K7 ["overlayTransparency"]
       32 GETTABLEKS                       R11 R1 K8 ["backgroundColor"]
       34 GETTABLEKS                       R12 R1 K9 ["overlayColor"]
       36 SETLIST                          R7 R8 5 [1]
       38 CALL                             R5 2 0
       39 NEWTABLE                         R5 0 0
       41 MOVE                             R6 R3
       42 LOADNIL                          R7
       43 LOADNIL                          R8
       44 FORGPREP                         R6
       45 GETIMPORT                        R11 K12 [string.format]
       47 LOADK                            R12 K13 ["%.2f"]
       48 GETTABLEKS                       R13 R10 K14 ["resultTransparency"]
       50 CALL                             R11 2 1
       51 GETUPVAL                         R13 2
       52 GETTABLEKS                       R12 R13 K15 ["createElement"]
       54 GETUPVAL                         R13 5
       55 DUPTABLE                         R14 K17 [{"tag"}]
       56 LOADK                            R15 K18 ["row auto-xy gap-large"]
       57 SETTABLEKS                       R15 R14 K16 ["tag"]
       59 DUPTABLE                         R15 K20 [{"Container"}]
       60 GETUPVAL                         R17 2
       61 GETTABLEKS                       R16 R17 K15 ["createElement"]
       63 GETUPVAL                         R17 5
       64 DUPTABLE                         R18 K17 [{"tag"}]
       65 LOADK                            R19 K21 ["auto-xy size-0-0"]
       66 SETTABLEKS                       R19 R18 K16 ["tag"]
       68 DUPTABLE                         R19 K28 [{"Background", "Overlay", "EditableImage", "ResultEditableImage", "ResultBlended", "Details"}]
       69 GETTABLEKS                       R21 R1 K29 ["showEditableImage"]
       71 JUMPIF                           R21 ; [+33]
       72 GETUPVAL                         R21 2
       73 GETTABLEKS                       R20 R21 K15 ["createElement"]
       75 LOADK                            R21 K30 ["ImageLabel"]
       76 DUPTABLE                         R22 K35 [{"Size", "ImageContent", "BackgroundTransparency", "BorderSizePixel"}]
       77 GETIMPORT                        R23 K38 [UDim2.fromOffset]
       79 GETTABLEKS                       R25 R2 K31 ["Size"]
       81 GETTABLEKS                       R24 R25 K39 ["Size_1400"]
       83 GETTABLEKS                       R26 R2 K31 ["Size"]
       85 GETTABLEKS                       R25 R26 K40 ["Size_2000"]
       87 CALL                             R23 2 1
       88 SETTABLEKS                       R23 R22 K31 ["Size"]
       90 GETIMPORT                        R23 K43 [Content.fromObject]
       92 GETTABLEKS                       R24 R10 K44 ["backgroundImage"]
       94 CALL                             R23 1 1
       95 SETTABLEKS                       R23 R22 K32 ["ImageContent"]
       97 LOADN                            R23 1
       98 SETTABLEKS                       R23 R22 K33 ["BackgroundTransparency"]
      100 LOADN                            R23 0
      101 SETTABLEKS                       R23 R22 K34 ["BorderSizePixel"]
      103 CALL                             R20 2 1
      104 JUMP                             ; [+1]
      105 LOADNIL                          R20
      106 SETTABLEKS                       R20 R19 K22 ["Background"]
      108 GETTABLEKS                       R21 R1 K29 ["showEditableImage"]
      110 JUMPIF                           R21 ; [+46]
      111 GETUPVAL                         R21 2
      112 GETTABLEKS                       R20 R21 K15 ["createElement"]
      114 LOADK                            R21 K30 ["ImageLabel"]
      115 DUPTABLE                         R22 K47 [{"Size", "ImageContent", "Position", "BackgroundTransparency", "BorderSizePixel", "ZIndex"}]
      116 GETIMPORT                        R23 K38 [UDim2.fromOffset]
      118 GETTABLEKS                       R25 R2 K31 ["Size"]
      120 GETTABLEKS                       R24 R25 K39 ["Size_1400"]
      122 GETTABLEKS                       R26 R2 K31 ["Size"]
      124 GETTABLEKS                       R25 R26 K40 ["Size_2000"]
      126 CALL                             R23 2 1
      127 SETTABLEKS                       R23 R22 K31 ["Size"]
      129 GETIMPORT                        R23 K43 [Content.fromObject]
      131 GETTABLEKS                       R24 R10 K48 ["overlayImage"]
      133 CALL                             R23 1 1
      134 SETTABLEKS                       R23 R22 K32 ["ImageContent"]
      136 GETIMPORT                        R23 K38 [UDim2.fromOffset]
      138 LOADN                            R24 0
      139 GETTABLEKS                       R26 R2 K31 ["Size"]
      141 GETTABLEKS                       R25 R26 K49 ["Size_800"]
      143 CALL                             R23 2 1
      144 SETTABLEKS                       R23 R22 K45 ["Position"]
      146 LOADN                            R23 1
      147 SETTABLEKS                       R23 R22 K33 ["BackgroundTransparency"]
      149 LOADN                            R23 0
      150 SETTABLEKS                       R23 R22 K34 ["BorderSizePixel"]
      152 LOADN                            R23 2
      153 SETTABLEKS                       R23 R22 K46 ["ZIndex"]
      155 CALL                             R20 2 1
      156 JUMP                             ; [+1]
      157 LOADNIL                          R20
      158 SETTABLEKS                       R20 R19 K23 ["Overlay"]
      160 GETTABLEKS                       R21 R1 K29 ["showEditableImage"]
      162 JUMPIFNOT                        R21 ; [+33]
      163 GETUPVAL                         R21 2
      164 GETTABLEKS                       R20 R21 K15 ["createElement"]
      166 LOADK                            R21 K30 ["ImageLabel"]
      167 DUPTABLE                         R22 K35 [{"Size", "ImageContent", "BackgroundTransparency", "BorderSizePixel"}]
      168 GETIMPORT                        R23 K38 [UDim2.fromOffset]
      170 GETTABLEKS                       R25 R2 K31 ["Size"]
      172 GETTABLEKS                       R24 R25 K39 ["Size_1400"]
      174 GETTABLEKS                       R26 R2 K31 ["Size"]
      176 GETTABLEKS                       R25 R26 K50 ["Size_2800"]
      178 CALL                             R23 2 1
      179 SETTABLEKS                       R23 R22 K31 ["Size"]
      181 GETIMPORT                        R23 K43 [Content.fromObject]
      183 GETTABLEKS                       R24 R10 K51 ["resultImage"]
      185 CALL                             R23 1 1
      186 SETTABLEKS                       R23 R22 K32 ["ImageContent"]
      188 LOADN                            R23 1
      189 SETTABLEKS                       R23 R22 K33 ["BackgroundTransparency"]
      191 LOADN                            R23 0
      192 SETTABLEKS                       R23 R22 K34 ["BorderSizePixel"]
      194 CALL                             R20 2 1
      195 JUMP                             ; [+1]
      196 LOADNIL                          R20
      197 SETTABLEKS                       R20 R19 K24 ["EditableImage"]
      199 GETUPVAL                         R21 2
      200 GETTABLEKS                       R20 R21 K15 ["createElement"]
      202 GETUPVAL                         R21 5
      203 DUPTABLE                         R22 K53 [{"tag", "backgroundStyle", "Position"}]
      204 LOADK                            R23 K54 ["size-1400-1400"]
      205 SETTABLEKS                       R23 R22 K16 ["tag"]
      207 DUPTABLE                         R23 K57 [{"Color3", "Transparency"}]
      208 GETTABLEKS                       R24 R10 K58 ["resultColor3"]
      210 SETTABLEKS                       R24 R23 K55 ["Color3"]
      212 GETTABLEKS                       R24 R10 K14 ["resultTransparency"]
      214 SETTABLEKS                       R24 R23 K56 ["Transparency"]
      216 SETTABLEKS                       R23 R22 K52 ["backgroundStyle"]
      218 GETIMPORT                        R23 K38 [UDim2.fromOffset]
      220 GETTABLEKS                       R25 R2 K31 ["Size"]
      222 GETTABLEKS                       R24 R25 K39 ["Size_1400"]
      224 LOADN                            R25 0
      225 CALL                             R23 2 1
      226 SETTABLEKS                       R23 R22 K45 ["Position"]
      228 CALL                             R20 2 1
      229 SETTABLEKS                       R20 R19 K25 ["ResultEditableImage"]
      231 GETUPVAL                         R21 2
      232 GETTABLEKS                       R20 R21 K15 ["createElement"]
      234 GETUPVAL                         R21 5
      235 DUPTABLE                         R22 K53 [{"tag", "backgroundStyle", "Position"}]
      236 LOADK                            R23 K54 ["size-1400-1400"]
      237 SETTABLEKS                       R23 R22 K16 ["tag"]
      239 GETUPVAL                         R23 6
      240 GETTABLEKS                       R24 R10 K52 ["backgroundStyle"]
      242 GETTABLEKS                       R25 R10 K59 ["overlayStyle"]
      244 CALL                             R23 2 1
      245 SETTABLEKS                       R23 R22 K52 ["backgroundStyle"]
      247 GETIMPORT                        R23 K38 [UDim2.fromOffset]
      249 GETTABLEKS                       R25 R2 K31 ["Size"]
      251 GETTABLEKS                       R24 R25 K39 ["Size_1400"]
      253 GETTABLEKS                       R26 R2 K31 ["Size"]
      255 GETTABLEKS                       R25 R26 K39 ["Size_1400"]
      257 CALL                             R23 2 1
      258 SETTABLEKS                       R23 R22 K45 ["Position"]
      260 CALL                             R20 2 1
      261 SETTABLEKS                       R20 R19 K26 ["ResultBlended"]
      263 GETUPVAL                         R21 2
      264 GETTABLEKS                       R20 R21 K15 ["createElement"]
      266 GETUPVAL                         R21 7
      267 DUPTABLE                         R22 K61 [{"tag", "Position", "Text"}]
      268 LOADK                            R23 K62 ["auto-y size-2800-0 wraps text-caption-small"]
      269 SETTABLEKS                       R23 R22 K16 ["tag"]
      271 GETIMPORT                        R23 K38 [UDim2.fromOffset]
      273 LOADN                            R24 0
      274 GETTABLEKS                       R27 R2 K31 ["Size"]
      276 GETTABLEKS                       R26 R27 K50 ["Size_2800"]
      278 GETTABLEKS                       R28 R2 K63 ["Gap"]
      280 GETTABLEKS                       R27 R28 K64 ["Large"]
      282 ADD                              R25 R26 R27
      283 CALL                             R23 2 1
      284 SETTABLEKS                       R23 R22 K45 ["Position"]
      286 LOADK                            R27 K65 ["Background: #%*, %*"]
      287 GETTABLEKS                       R31 R10 K52 ["backgroundStyle"]
      289 GETTABLEKS                       R30 R31 K55 ["Color3"]
      291 NAMECALL                         R30 R30 K66 ["ToHex"]
      293 CALL                             R30 1 -1
      294 FASTCALL                         TOSTRING ; [+2]
      295 GETIMPORT                        R29 K68 [tostring]
      297 CALL                             R29 -1 1
      298 GETTABLEKS                       R30 R1 K6 ["backgroundTransparency"]
      300 NAMECALL                         R27 R27 K11 ["format"]
      302 CALL                             R27 3 1
      303 MOVE                             R24 R27
      304 LOADK                            R27 K69 ["\nOverlay: #%*, %*"]
      305 GETTABLEKS                       R31 R10 K59 ["overlayStyle"]
      307 GETTABLEKS                       R30 R31 K55 ["Color3"]
      309 NAMECALL                         R30 R30 K66 ["ToHex"]
      311 CALL                             R30 1 -1
      312 FASTCALL                         TOSTRING ; [+2]
      313 GETIMPORT                        R29 K68 [tostring]
      315 CALL                             R29 -1 1
      316 GETTABLEKS                       R30 R1 K7 ["overlayTransparency"]
      318 NAMECALL                         R27 R27 K11 ["format"]
      320 CALL                             R27 3 1
      321 MOVE                             R25 R27
      322 LOADK                            R27 K70 ["\nResult: #%*, %*"]
      323 GETTABLEKS                       R30 R10 K58 ["resultColor3"]
      325 NAMECALL                         R30 R30 K66 ["ToHex"]
      327 CALL                             R30 1 -1
      328 FASTCALL                         TOSTRING ; [+2]
      329 GETIMPORT                        R29 K68 [tostring]
      331 CALL                             R29 -1 1
      332 MOVE                             R30 R11
      333 NAMECALL                         R27 R27 K11 ["format"]
      335 CALL                             R27 3 1
      336 MOVE                             R26 R27
      337 CONCAT                           R23 R24 R26
      338 SETTABLEKS                       R23 R22 K60 ["Text"]
      340 CALL                             R20 2 1
      341 SETTABLEKS                       R20 R19 K27 ["Details"]
      343 CALL                             R16 3 1
      344 SETTABLEKS                       R16 R15 K19 ["Container"]
      346 CALL                             R12 3 1
      347 SETTABLE                         R12 R5 R9
      348 FORGLOOP                         R6 2 ; [-304]
      350 GETUPVAL                         R7 2
      351 GETTABLEKS                       R6 R7 K15 ["createElement"]
      353 GETUPVAL                         R7 5
      354 DUPTABLE                         R8 K17 [{"tag"}]
      355 LOADK                            R9 K71 ["row flex wrap size-full-0 auto-y gap-xlarge"]
      356 SETTABLEKS                       R9 R8 K16 ["tag"]
      358 MOVE                             R9 R5
      359 CALL                             R6 3 -1
      360 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K10 [game]
       21 LOADK                            R6 K11 ["AssetService"]
       22 NAMECALL                         R4 R4 K12 ["GetService"]
       24 CALL                             R4 2 1
       25 GETIMPORT                        R5 K6 [require]
       27 GETTABLEKS                       R7 R0 K13 ["Components"]
       29 GETTABLEKS                       R6 R7 K14 ["View"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K6 [require]
       34 GETTABLEKS                       R8 R0 K13 ["Components"]
       36 GETTABLEKS                       R7 R8 K15 ["Text"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K6 [require]
       41 GETTABLEKS                       R9 R0 K13 ["Components"]
       43 GETTABLEKS                       R8 R9 K16 ["Types"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K6 [require]
       48 GETTABLEKS                       R11 R0 K17 ["Providers"]
       50 GETTABLEKS                       R10 R11 K18 ["Style"]
       52 GETTABLEKS                       R9 R10 K19 ["Tokens"]
       54 CALL                             R8 1 1
       55 GETIMPORT                        R9 K6 [require]
       57 GETTABLEKS                       R11 R0 K20 ["Enums"]
       59 GETTABLEKS                       R10 R11 K21 ["Device"]
       61 CALL                             R9 1 1
       62 GETIMPORT                        R10 K6 [require]
       64 GETTABLEKS                       R12 R0 K20 ["Enums"]
       66 GETTABLEKS                       R11 R12 K22 ["Theme"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K6 [require]
       71 GETTABLEKS                       R14 R0 K17 ["Providers"]
       73 GETTABLEKS                       R13 R14 K18 ["Style"]
       75 GETTABLEKS                       R12 R13 K23 ["useTokens"]
       77 CALL                             R11 1 1
       78 GETIMPORT                        R12 K6 [require]
       80 GETTABLEKS                       R14 R0 K24 ["Utility"]
       82 GETTABLEKS                       R13 R14 K25 ["Flags"]
       84 CALL                             R12 1 1
       85 GETIMPORT                        R13 K6 [require]
       87 GETIMPORT                        R16 K1 [script]
       89 GETTABLEKS                       R15 R16 K4 ["Parent"]
       91 GETTABLEKS                       R14 R15 K26 ["getBackgroundStyleWithStateLayer"]
       93 CALL                             R13 1 1
       94 DUPCLOSURE                       R14 K27 [PROTO_0]
       95 CAPTURE                          VAL R4
       96 DUPCLOSURE                       R15 K28 [PROTO_3]
       97 CAPTURE                          VAL R12
       98 CAPTURE                          VAL R11
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R14
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R13
      104 CAPTURE                          VAL R6
      105 GETTABLEKS                       R16 R8 K29 ["getTokens"]
      107 GETTABLEKS                       R17 R9 K30 ["Console"]
      109 GETTABLEKS                       R18 R10 K31 ["Dark"]
      111 CALL                             R16 2 1
      112 DUPTABLE                         R17 K35 [{"summary", "story", "controls"}]
      113 LOADK                            R18 K36 ["Visualizes results of getBackgroundStyleWithStateLayer, allowing a comparison with blending approaches used by EditableImages"]
      114 SETTABLEKS                       R18 R17 K32 ["summary"]
      116 SETTABLEKS                       R15 R17 K33 ["story"]
      118 DUPTABLE                         R18 K44 [{"useAlphaCompositing", "backgroundTransparency", "overlayTransparency", "backgroundColor", "overlayColor", "imageCombineType", "showEditableImage"}]
      119 GETTABLEKS                       R19 R12 K45 ["FoundationUseAlphaCompositingForStateLayer"]
      121 SETTABLEKS                       R19 R18 K37 ["useAlphaCompositing"]
      123 LOADK                            R19 K46 [0.5]
      124 SETTABLEKS                       R19 R18 K38 ["backgroundTransparency"]
      126 LOADK                            R19 K46 [0.5]
      127 SETTABLEKS                       R19 R18 K39 ["overlayTransparency"]
      129 GETTABLEKS                       R19 R3 K47 ["keys"]
      131 GETTABLEKS                       R21 R16 K48 ["Color"]
      133 GETTABLEKS                       R20 R21 K49 ["Extended"]
      135 CALL                             R19 1 1
      136 SETTABLEKS                       R19 R18 K40 ["backgroundColor"]
      138 GETTABLEKS                       R19 R3 K47 ["keys"]
      140 GETTABLEKS                       R21 R16 K48 ["Color"]
      142 GETTABLEKS                       R20 R21 K49 ["Extended"]
      144 CALL                             R19 1 1
      145 SETTABLEKS                       R19 R18 K41 ["overlayColor"]
      147 GETIMPORT                        R19 K52 [Enum.ImageCombineType]
      149 NAMECALL                         R19 R19 K53 ["GetEnumItems"]
      151 CALL                             R19 1 1
      152 SETTABLEKS                       R19 R18 K42 ["imageCombineType"]
      154 LOADB                            R19 1
      155 SETTABLEKS                       R19 R18 K43 ["showEditableImage"]
      157 SETTABLEKS                       R18 R17 K34 ["controls"]
      159 RETURN                           R17 1
