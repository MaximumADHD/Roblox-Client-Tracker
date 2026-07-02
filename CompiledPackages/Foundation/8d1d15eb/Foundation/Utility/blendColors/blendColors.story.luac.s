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
       39 SUBRK                            R12 K16 [1] R2
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
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R5 R5 K0 ["Color"]
        7 GETTABLEKS                       R5 R5 K1 ["Extended"]
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R6 R6 K2 ["backgroundColor"]
       12 GETTABLE                         R2 R5 R6
       13 LOADNIL                          R3
       14 LOADNIL                          R4
       15 FORGPREP                         R2
       16 GETUPVAL                         R10 0
       17 GETTABLEKS                       R10 R10 K0 ["Color"]
       19 GETTABLEKS                       R10 R10 K1 ["Extended"]
       21 GETUPVAL                         R11 1
       22 GETTABLEKS                       R11 R11 K3 ["overlayColor"]
       24 GETTABLE                         R7 R10 R11
       25 LOADNIL                          R8
       26 LOADNIL                          R9
       27 FORGPREP                         R7
       28 JUMPIFEQ                         R6 R11 ; [+219]
       30 GETUPVAL                         R12 0
       31 GETTABLEKS                       R12 R12 K4 ["Size"]
       33 GETTABLEKS                       R12 R12 K5 ["Size_1400"]
       35 GETUPVAL                         R13 0
       36 GETTABLEKS                       R13 R13 K4 ["Size"]
       38 GETTABLEKS                       R13 R13 K6 ["Size_2000"]
       40 GETIMPORT                        R14 K9 [Vector2.new]
       42 MOVE                             R15 R12
       43 MOVE                             R16 R13
       44 CALL                             R14 2 1
       45 GETUPVAL                         R15 2
       46 MOVE                             R16 R14
       47 GETTABLEKS                       R17 R6 K10 ["Color3"]
       49 GETUPVAL                         R18 1
       50 GETTABLEKS                       R18 R18 K11 ["backgroundTransparency"]
       52 CALL                             R15 3 1
       53 FASTCALL2                        TABLE_INSERT R1 R15 ; [+5]
       55 MOVE                             R17 R1
       56 MOVE                             R18 R15
       57 GETIMPORT                        R16 K14 [table.insert]
       59 CALL                             R16 2 0
       60 GETUPVAL                         R16 2
       61 MOVE                             R17 R14
       62 GETTABLEKS                       R18 R11 K10 ["Color3"]
       64 GETUPVAL                         R19 1
       65 GETTABLEKS                       R19 R19 K15 ["overlayTransparency"]
       67 CALL                             R16 3 1
       68 FASTCALL2                        TABLE_INSERT R1 R16 ; [+5]
       70 MOVE                             R18 R1
       71 MOVE                             R19 R16
       72 GETIMPORT                        R17 K14 [table.insert]
       74 CALL                             R17 2 0
       75 GETUPVAL                         R17 0
       76 GETTABLEKS                       R17 R17 K4 ["Size"]
       78 GETTABLEKS                       R17 R17 K16 ["Size_2800"]
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
      140 GETUPVAL                         R23 0
      141 GETTABLEKS                       R23 R23 K4 ["Size"]
      143 GETTABLEKS                       R23 R23 K33 ["Size_800"]
      145 CALL                             R21 2 1
      146 MOVE                             R24 R21
      147 MOVE                             R25 R16
      148 GETUPVAL                         R26 1
      149 GETTABLEKS                       R26 R26 K34 ["imageCombineType"]
      151 NAMECALL                         R22 R19 K32 ["DrawImage"]
      153 CALL                             R22 4 0
      154 GETIMPORT                        R24 K9 [Vector2.new]
      156 LOADN                            R25 0
      157 GETUPVAL                         R27 0
      158 GETTABLEKS                       R27 R27 K4 ["Size"]
      160 GETTABLEKS                       R27 R27 K33 ["Size_800"]
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
      207 SUBRK                            R28 K22 [1] R29
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
      224 GETUPVAL                         R32 1
      225 GETTABLEKS                       R32 R32 K11 ["backgroundTransparency"]
      227 SETTABLEKS                       R32 R31 K53 ["Transparency"]
      229 SETTABLEKS                       R31 R30 K48 ["backgroundStyle"]
      231 DUPTABLE                         R31 K54 [{"Color3", "Transparency"}]
      232 GETTABLEKS                       R32 R11 K10 ["Color3"]
      234 SETTABLEKS                       R32 R31 K10 ["Color3"]
      236 GETUPVAL                         R32 1
      237 GETTABLEKS                       R32 R32 K15 ["overlayTransparency"]
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
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["useState"]
        7 NEWTABLE                         R4 0 0
        9 CALL                             R3 1 2
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K2 ["useEffect"]
       13 NEWCLOSURE                       R6 P0
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R1
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          VAL R4
       19 NEWTABLE                         R7 0 5
       21 GETTABLEKS                       R8 R1 K3 ["imageCombineType"]
       23 GETTABLEKS                       R9 R1 K4 ["backgroundTransparency"]
       25 GETTABLEKS                       R10 R1 K5 ["overlayTransparency"]
       27 GETTABLEKS                       R11 R1 K6 ["backgroundColor"]
       29 GETTABLEKS                       R12 R1 K7 ["overlayColor"]
       31 SETLIST                          R7 R8 5 [1]
       33 CALL                             R5 2 0
       34 NEWTABLE                         R5 0 0
       36 MOVE                             R6 R3
       37 LOADNIL                          R7
       38 LOADNIL                          R8
       39 FORGPREP                         R6
       40 GETIMPORT                        R11 K10 [string.format]
       42 LOADK                            R12 K11 ["%.2f"]
       43 GETTABLEKS                       R13 R10 K12 ["resultTransparency"]
       45 CALL                             R11 2 1
       46 GETUPVAL                         R12 1
       47 GETTABLEKS                       R12 R12 K13 ["createElement"]
       49 GETUPVAL                         R13 4
       50 DUPTABLE                         R14 K16 [{["tag"] = "row auto-xy gap-large"}]
       51 DUPTABLE                         R15 K18 [{"Container"}]
       52 GETUPVAL                         R16 1
       53 GETTABLEKS                       R16 R16 K13 ["createElement"]
       55 GETUPVAL                         R17 4
       56 DUPTABLE                         R18 K20 [{["tag"] = "auto-xy size-0-0"}]
       57 DUPTABLE                         R19 K27 [{"Background", "Overlay", "EditableImage", "ResultEditableImage", "ResultBlended", "Details"}]
       58 GETTABLEKS                       R21 R1 K28 ["showEditableImage"]
       60 JUMPIF                           R21 ; [+27]
       61 GETUPVAL                         R20 1
       62 GETTABLEKS                       R20 R20 K13 ["createElement"]
       64 LOADK                            R21 K29 ["ImageLabel"]
       65 DUPTABLE                         R22 K36 [{["Size"], ["ImageContent"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
       66 GETIMPORT                        R23 K39 [UDim2.fromOffset]
       68 GETTABLEKS                       R24 R2 K30 ["Size"]
       70 GETTABLEKS                       R24 R24 K40 ["Size_1400"]
       72 GETTABLEKS                       R25 R2 K30 ["Size"]
       74 GETTABLEKS                       R25 R25 K41 ["Size_2000"]
       76 CALL                             R23 2 1
       77 SETTABLEKS                       R23 R22 K30 ["Size"]
       79 GETIMPORT                        R23 K44 [Content.fromObject]
       81 GETTABLEKS                       R24 R10 K45 ["backgroundImage"]
       83 CALL                             R23 1 1
       84 SETTABLEKS                       R23 R22 K31 ["ImageContent"]
       86 CALL                             R20 2 1
       87 JUMP                             ; [+1]
       88 LOADNIL                          R20
       89 SETTABLEKS                       R20 R19 K21 ["Background"]
       91 GETTABLEKS                       R21 R1 K28 ["showEditableImage"]
       93 JUMPIF                           R21 ; [+37]
       94 GETUPVAL                         R20 1
       95 GETTABLEKS                       R20 R20 K13 ["createElement"]
       97 LOADK                            R21 K29 ["ImageLabel"]
       98 DUPTABLE                         R22 K49 [{["Size"], ["ImageContent"], ["Position"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ZIndex"] = 2}]
       99 GETIMPORT                        R23 K39 [UDim2.fromOffset]
      101 GETTABLEKS                       R24 R2 K30 ["Size"]
      103 GETTABLEKS                       R24 R24 K40 ["Size_1400"]
      105 GETTABLEKS                       R25 R2 K30 ["Size"]
      107 GETTABLEKS                       R25 R25 K41 ["Size_2000"]
      109 CALL                             R23 2 1
      110 SETTABLEKS                       R23 R22 K30 ["Size"]
      112 GETIMPORT                        R23 K44 [Content.fromObject]
      114 GETTABLEKS                       R24 R10 K50 ["overlayImage"]
      116 CALL                             R23 1 1
      117 SETTABLEKS                       R23 R22 K31 ["ImageContent"]
      119 GETIMPORT                        R23 K39 [UDim2.fromOffset]
      121 LOADN                            R24 0
      122 GETTABLEKS                       R25 R2 K30 ["Size"]
      124 GETTABLEKS                       R25 R25 K51 ["Size_800"]
      126 CALL                             R23 2 1
      127 SETTABLEKS                       R23 R22 K46 ["Position"]
      129 CALL                             R20 2 1
      130 JUMP                             ; [+1]
      131 LOADNIL                          R20
      132 SETTABLEKS                       R20 R19 K22 ["Overlay"]
      134 GETTABLEKS                       R21 R1 K28 ["showEditableImage"]
      136 JUMPIFNOT                        R21 ; [+27]
      137 GETUPVAL                         R20 1
      138 GETTABLEKS                       R20 R20 K13 ["createElement"]
      140 LOADK                            R21 K29 ["ImageLabel"]
      141 DUPTABLE                         R22 K36 [{["Size"], ["ImageContent"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
      142 GETIMPORT                        R23 K39 [UDim2.fromOffset]
      144 GETTABLEKS                       R24 R2 K30 ["Size"]
      146 GETTABLEKS                       R24 R24 K40 ["Size_1400"]
      148 GETTABLEKS                       R25 R2 K30 ["Size"]
      150 GETTABLEKS                       R25 R25 K52 ["Size_2800"]
      152 CALL                             R23 2 1
      153 SETTABLEKS                       R23 R22 K30 ["Size"]
      155 GETIMPORT                        R23 K44 [Content.fromObject]
      157 GETTABLEKS                       R24 R10 K53 ["resultImage"]
      159 CALL                             R23 1 1
      160 SETTABLEKS                       R23 R22 K31 ["ImageContent"]
      162 CALL                             R20 2 1
      163 JUMP                             ; [+1]
      164 LOADNIL                          R20
      165 SETTABLEKS                       R20 R19 K23 ["EditableImage"]
      167 GETUPVAL                         R20 1
      168 GETTABLEKS                       R20 R20 K13 ["createElement"]
      170 GETUPVAL                         R21 4
      171 DUPTABLE                         R22 K56 [{["tag"] = "size-1400-1400", ["backgroundStyle"], ["Position"]}]
      172 DUPTABLE                         R23 K59 [{"Color3", "Transparency"}]
      173 GETTABLEKS                       R24 R10 K60 ["resultColor3"]
      175 SETTABLEKS                       R24 R23 K57 ["Color3"]
      177 GETTABLEKS                       R24 R10 K12 ["resultTransparency"]
      179 SETTABLEKS                       R24 R23 K58 ["Transparency"]
      181 SETTABLEKS                       R23 R22 K55 ["backgroundStyle"]
      183 GETIMPORT                        R23 K39 [UDim2.fromOffset]
      185 GETTABLEKS                       R24 R2 K30 ["Size"]
      187 GETTABLEKS                       R24 R24 K40 ["Size_1400"]
      189 LOADN                            R25 0
      190 CALL                             R23 2 1
      191 SETTABLEKS                       R23 R22 K46 ["Position"]
      193 CALL                             R20 2 1
      194 SETTABLEKS                       R20 R19 K24 ["ResultEditableImage"]
      196 GETUPVAL                         R20 1
      197 GETTABLEKS                       R20 R20 K13 ["createElement"]
      199 GETUPVAL                         R21 4
      200 DUPTABLE                         R22 K56 [{["tag"] = "size-1400-1400", ["backgroundStyle"], ["Position"]}]
      201 GETUPVAL                         R23 5
      202 GETTABLEKS                       R24 R10 K55 ["backgroundStyle"]
      204 GETTABLEKS                       R25 R10 K61 ["overlayStyle"]
      206 CALL                             R23 2 1
      207 SETTABLEKS                       R23 R22 K55 ["backgroundStyle"]
      209 GETIMPORT                        R23 K39 [UDim2.fromOffset]
      211 GETTABLEKS                       R24 R2 K30 ["Size"]
      213 GETTABLEKS                       R24 R24 K40 ["Size_1400"]
      215 GETTABLEKS                       R25 R2 K30 ["Size"]
      217 GETTABLEKS                       R25 R25 K40 ["Size_1400"]
      219 CALL                             R23 2 1
      220 SETTABLEKS                       R23 R22 K46 ["Position"]
      222 CALL                             R20 2 1
      223 SETTABLEKS                       R20 R19 K25 ["ResultBlended"]
      225 GETUPVAL                         R20 1
      226 GETTABLEKS                       R20 R20 K13 ["createElement"]
      228 GETUPVAL                         R21 6
      229 DUPTABLE                         R22 K64 [{["tag"] = "auto-y size-2800-0 wraps text-caption-small", ["Position"], ["Text"]}]
      230 GETIMPORT                        R23 K39 [UDim2.fromOffset]
      232 LOADN                            R24 0
      233 GETTABLEKS                       R26 R2 K30 ["Size"]
      235 GETTABLEKS                       R26 R26 K52 ["Size_2800"]
      237 GETTABLEKS                       R27 R2 K65 ["Gap"]
      239 GETTABLEKS                       R27 R27 K66 ["Large"]
      241 ADD                              R25 R26 R27
      242 CALL                             R23 2 1
      243 SETTABLEKS                       R23 R22 K46 ["Position"]
      245 LOADK                            R27 K67 ["Background: #%*, %*"]
      246 GETTABLEKS                       R30 R10 K55 ["backgroundStyle"]
      248 GETTABLEKS                       R30 R30 K57 ["Color3"]
      250 NAMECALL                         R30 R30 K68 ["ToHex"]
      252 CALL                             R30 1 -1
      253 FASTCALL                         TOSTRING ; [+2]
      254 GETIMPORT                        R29 K70 [tostring]
      256 CALL                             R29 -1 1
      257 GETTABLEKS                       R30 R1 K4 ["backgroundTransparency"]
      259 NAMECALL                         R27 R27 K9 ["format"]
      261 CALL                             R27 3 1
      262 MOVE                             R24 R27
      263 LOADK                            R27 K71 ["\nOverlay: #%*, %*"]
      264 GETTABLEKS                       R30 R10 K61 ["overlayStyle"]
      266 GETTABLEKS                       R30 R30 K57 ["Color3"]
      268 NAMECALL                         R30 R30 K68 ["ToHex"]
      270 CALL                             R30 1 -1
      271 FASTCALL                         TOSTRING ; [+2]
      272 GETIMPORT                        R29 K70 [tostring]
      274 CALL                             R29 -1 1
      275 GETTABLEKS                       R30 R1 K5 ["overlayTransparency"]
      277 NAMECALL                         R27 R27 K9 ["format"]
      279 CALL                             R27 3 1
      280 MOVE                             R25 R27
      281 LOADK                            R27 K72 ["\nResult: #%*, %*"]
      282 GETTABLEKS                       R30 R10 K60 ["resultColor3"]
      284 NAMECALL                         R30 R30 K68 ["ToHex"]
      286 CALL                             R30 1 -1
      287 FASTCALL                         TOSTRING ; [+2]
      288 GETIMPORT                        R29 K70 [tostring]
      290 CALL                             R29 -1 1
      291 MOVE                             R30 R11
      292 NAMECALL                         R27 R27 K9 ["format"]
      294 CALL                             R27 3 1
      295 MOVE                             R26 R27
      296 CONCAT                           R23 R24 R26
      297 SETTABLEKS                       R23 R22 K63 ["Text"]
      299 CALL                             R20 2 1
      300 SETTABLEKS                       R20 R19 K26 ["Details"]
      302 CALL                             R16 3 1
      303 SETTABLEKS                       R16 R15 K17 ["Container"]
      305 CALL                             R12 3 1
      306 SETTABLE                         R12 R5 R9
      307 FORGLOOP                         R6 2 ; [-268]
      309 GETUPVAL                         R6 1
      310 GETTABLEKS                       R6 R6 K13 ["createElement"]
      312 GETUPVAL                         R7 4
      313 DUPTABLE                         R8 K74 [{["tag"] = "row flex wrap size-full-0 auto-y gap-xlarge"}]
      314 MOVE                             R9 R5
      315 CALL                             R6 3 -1
      316 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K10 [game]
       21 LOADK                            R6 K11 ["AssetService"]
       22 NAMECALL                         R4 R4 K12 ["GetService"]
       24 CALL                             R4 2 1
       25 GETIMPORT                        R5 K6 [require]
       27 GETTABLEKS                       R6 R0 K13 ["Components"]
       29 GETTABLEKS                       R6 R6 K14 ["Text"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K6 [require]
       34 GETTABLEKS                       R7 R0 K13 ["Components"]
       36 GETTABLEKS                       R7 R7 K15 ["Types"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K6 [require]
       41 GETTABLEKS                       R8 R0 K13 ["Components"]
       43 GETTABLEKS                       R8 R8 K16 ["View"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K6 [require]
       48 GETTABLEKS                       R9 R0 K17 ["Enums"]
       50 GETTABLEKS                       R9 R9 K18 ["Device"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K6 [require]
       55 GETTABLEKS                       R10 R0 K17 ["Enums"]
       57 GETTABLEKS                       R10 R10 K19 ["Theme"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K6 [require]
       62 GETTABLEKS                       R11 R0 K20 ["Providers"]
       64 GETTABLEKS                       R11 R11 K21 ["Style"]
       66 GETTABLEKS                       R11 R11 K22 ["Tokens"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K6 [require]
       71 GETTABLEKS                       R12 R0 K20 ["Providers"]
       73 GETTABLEKS                       R12 R12 K21 ["Style"]
       75 GETTABLEKS                       R12 R12 K23 ["useTokens"]
       77 CALL                             R11 1 1
       78 GETIMPORT                        R12 K6 [require]
       80 GETIMPORT                        R13 K1 [script]
       82 GETTABLEKS                       R13 R13 K4 ["Parent"]
       84 CALL                             R12 1 1
       85 DUPCLOSURE                       R13 K24 [PROTO_0]
       86 CAPTURE                          VAL R4
       87 DUPCLOSURE                       R14 K25 [PROTO_3]
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R13
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R12
       94 CAPTURE                          VAL R5
       95 GETTABLEKS                       R15 R10 K26 ["getTokens"]
       97 GETTABLEKS                       R16 R8 K27 ["Console"]
       99 GETTABLEKS                       R17 R9 K28 ["Dark"]
      101 CALL                             R15 2 1
      102 DUPTABLE                         R16 K33 [{["summary"] = "Visualizes results of blendColors, allowing a comparison with blending approaches used by EditableImages", ["story"], ["controls"]}]
      103 SETTABLEKS                       R14 R16 K31 ["story"]
      105 DUPTABLE                         R17 K42 [{["backgroundTransparency"] = 0.5, ["overlayTransparency"] = 0.5, ["backgroundColor"], ["overlayColor"], ["imageCombineType"], ["showEditableImage"] = True}]
      106 GETTABLEKS                       R18 R2 K43 ["keys"]
      108 GETTABLEKS                       R19 R15 K44 ["Color"]
      110 GETTABLEKS                       R19 R19 K45 ["Extended"]
      112 CALL                             R18 1 1
      113 SETTABLEKS                       R18 R17 K37 ["backgroundColor"]
      115 GETTABLEKS                       R18 R2 K43 ["keys"]
      117 GETTABLEKS                       R19 R15 K44 ["Color"]
      119 GETTABLEKS                       R19 R19 K45 ["Extended"]
      121 CALL                             R18 1 1
      122 SETTABLEKS                       R18 R17 K38 ["overlayColor"]
      124 GETIMPORT                        R18 K48 [Enum.ImageCombineType]
      126 NAMECALL                         R18 R18 K49 ["GetEnumItems"]
      128 CALL                             R18 1 1
      129 SETTABLEKS                       R18 R17 K39 ["imageCombineType"]
      131 SETTABLEKS                       R17 R16 K32 ["controls"]
      133 RETURN                           R16 1
