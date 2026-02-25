PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Mode"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["None"]
        6 JUMPIFEQ                         R0 R1 ; [+2]
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R0 R1 K2 ["Contents"]
       12 JUMPIFNOT                        R0 ; [+9]
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R0 R1 K2 ["Contents"]
       16 JUMPIFEQKS                       R0 K3 [""] ; [+5]
       18 GETUPVAL                         R0 0
       19 GETUPVAL                         R1 2
       20 SETTABLEKS                       R1 R0 K4 ["Hovered"]
       22 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Mode"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["None"]
        6 JUMPIFEQ                         R0 R1 ; [+2]
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 0
       10 LOADNIL                          R1
       11 SETTABLEKS                       R1 R0 K2 ["Hovered"]
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["Hovered"]
        4 GETUPVAL                         R3 2
        5 JUMPIFEQ                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 SETTABLEKS                       R1 R0 K1 ["Visible"]
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Mode"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["None"]
        6 JUMPIFEQ                         R0 R1 ; [+2]
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R0 R1 K2 ["Selected"]
       12 GETUPVAL                         R1 2
       13 JUMPIFEQ                         R0 R1 ; [+32]
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R0 R1 K3 ["Hovered"]
       18 GETUPVAL                         R1 2
       19 JUMPIFNOTEQ                      R0 R1 ; [+26]
       21 GETUPVAL                         R0 0
       22 GETUPVAL                         R1 2
       23 SETTABLEKS                       R1 R0 K2 ["Selected"]
       25 GETUPVAL                         R1 2
       26 GETTABLEKS                       R0 R1 K4 ["LoadingReplies"]
       28 JUMPIF                           R0 ; [+17]
       29 GETUPVAL                         R1 2
       30 NAMECALL                         R1 R1 K5 ["GetChildren"]
       32 CALL                             R1 1 1
       33 LENGTH                           R0 R1
       34 GETUPVAL                         R2 2
       35 GETTABLEKS                       R1 R2 K6 ["ReplyCount"]
       37 JUMPIFEQ                         R0 R1 ; [+8]
       39 GETUPVAL                         R0 0
       40 GETUPVAL                         R2 2
       41 LOADB                            R3 1
       42 LOADB                            R4 1
       43 NAMECALL                         R0 R0 K7 ["LoadAnnotationReplies"]
       45 CALL                             R0 4 0
       46 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["Selected"]
        4 GETUPVAL                         R3 2
        5 JUMPIFEQ                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 SETTABLEKS                       R1 R0 K1 ["Visible"]
       11 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Resolved"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["Parent"]
        7 JUMPIFNOT                        R0 ; [+6]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R0 R1 K1 ["Parent"]
       11 NAMECALL                         R0 R0 K2 ["Destroy"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 0
        4 RETURN                           R0 0

PROTO_7:
        0 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 NAMECALL                         R0 R0 K0 ["Disconnect"]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 3
       13 NAMECALL                         R0 R0 K0 ["Disconnect"]
       15 CALL                             R0 1 0
       16 GETUPVAL                         R0 4
       17 NAMECALL                         R0 R0 K0 ["Disconnect"]
       19 CALL                             R0 1 0
       20 GETUPVAL                         R0 5
       21 NAMECALL                         R0 R0 K0 ["Disconnect"]
       23 CALL                             R0 1 0
       24 GETUPVAL                         R0 6
       25 NAMECALL                         R0 R0 K0 ["Disconnect"]
       27 CALL                             R0 1 0
       28 RETURN                           R0 0

PROTO_9:
        0 LOADK                            R4 K0 ["Highlight"]
        1 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R1 K2 ["MouseEnter"]
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R0
       10 NAMECALL                         R3 R3 K3 ["Connect"]
       12 CALL                             R3 2 1
       13 GETTABLEKS                       R4 R1 K4 ["MouseLeave"]
       15 DUPCLOSURE                       R6 K5 [PROTO_1]
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U1
       18 NAMECALL                         R4 R4 K3 ["Connect"]
       20 CALL                             R4 2 1
       21 GETUPVAL                         R5 0
       22 LOADK                            R7 K6 ["Hovered"]
       23 NAMECALL                         R5 R5 K7 ["GetPropertyChangedSignal"]
       25 CALL                             R5 2 1
       26 NEWCLOSURE                       R7 P2
       27 CAPTURE                          VAL R2
       28 CAPTURE                          UPVAL U0
       29 CAPTURE                          VAL R0
       30 NAMECALL                         R5 R5 K3 ["Connect"]
       32 CALL                             R5 2 1
       33 GETTABLEKS                       R6 R1 K8 ["MouseButton1Click"]
       35 NEWCLOSURE                       R8 P3
       36 CAPTURE                          UPVAL U0
       37 CAPTURE                          UPVAL U1
       38 CAPTURE                          VAL R0
       39 NAMECALL                         R6 R6 K3 ["Connect"]
       41 CALL                             R6 2 1
       42 GETUPVAL                         R7 0
       43 LOADK                            R9 K9 ["Selected"]
       44 NAMECALL                         R7 R7 K7 ["GetPropertyChangedSignal"]
       46 CALL                             R7 2 1
       47 NEWCLOSURE                       R9 P4
       48 CAPTURE                          VAL R2
       49 CAPTURE                          UPVAL U0
       50 CAPTURE                          VAL R0
       51 NAMECALL                         R7 R7 K3 ["Connect"]
       53 CALL                             R7 2 1
       54 LOADK                            R10 K10 ["Resolved"]
       55 NAMECALL                         R8 R0 K7 ["GetPropertyChangedSignal"]
       57 CALL                             R8 2 1
       58 NEWCLOSURE                       R10 P5
       59 CAPTURE                          VAL R0
       60 CAPTURE                          VAL R1
       61 NAMECALL                         R8 R8 K3 ["Connect"]
       63 CALL                             R8 2 1
       64 LOADK                            R11 K11 ["ReplyCount"]
       65 NAMECALL                         R9 R0 K7 ["GetPropertyChangedSignal"]
       67 CALL                             R9 2 1
       68 NEWCLOSURE                       R11 P6
       69 CAPTURE                          UPVAL U2
       70 CAPTURE                          VAL R0
       71 CAPTURE                          VAL R1
       72 NAMECALL                         R9 R9 K3 ["Connect"]
       74 CALL                             R9 2 1
       75 GETTABLEKS                       R10 R0 K12 ["Destroying"]
       77 DUPCLOSURE                       R12 K13 [PROTO_7]
       78 NAMECALL                         R10 R10 K14 ["Once"]
       80 CALL                             R10 2 0
       81 GETTABLEKS                       R10 R1 K12 ["Destroying"]
       83 NEWCLOSURE                       R12 P8
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R9
       91 NAMECALL                         R10 R10 K3 ["Connect"]
       93 CALL                             R10 2 0
       94 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Success"]
        3 JUMPIFNOTEQ                      R2 R3 ; [+5]
        5 GETUPVAL                         R3 1
        6 NAMECALL                         R3 R3 K1 ["Destroy"]
        8 CALL                             R3 1 0
        9 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["Adornee"]
        2 JUMPIFNOT                        R2 ; [+2]
        3 GETTABLEKS                       R2 R0 K1 ["AdorneeOffset"]
        5 FASTCALL2K                       ASSERT R2 K2 ; [+4]
        7 LOADK                            R3 K2 ["Billboards are only created for top-level annotations."]
        8 GETIMPORT                        R1 K4 [assert]
       10 CALL                             R1 2 0
       11 GETIMPORT                        R2 K6 [game]
       13 GETTABLEKS                       R1 R2 K7 ["CoreGui"]
       15 LOADK                            R3 K8 ["PlaceAnnotations"]
       16 NAMECALL                         R1 R1 K9 ["FindFirstChild"]
       18 CALL                             R1 2 1
       19 JUMPIFNOT                        R1 ; [+8]
       20 NAMECALL                         R4 R0 K10 ["GetStringUniqueId"]
       22 CALL                             R4 1 1
       23 LOADB                            R5 1
       24 NAMECALL                         R2 R1 K9 ["FindFirstChild"]
       26 CALL                             R2 3 1
       27 JUMPIFNOT                        R2 ; [+3]
       28 LOADNIL                          R2
       29 LOADNIL                          R3
       30 RETURN                           R2 2
       31 GETTABLEKS                       R3 R0 K11 ["ReplyCount"]
       33 JUMPIFEQKN                       R3 K12 [0] ; [+2]
       35 LOADB                            R2 0 +1
       36 LOADB                            R2 1
       37 GETIMPORT                        R3 K15 [Instance.new]
       39 LOADK                            R4 K16 ["BillboardGui"]
       40 CALL                             R3 1 1
       41 NAMECALL                         R4 R0 K10 ["GetStringUniqueId"]
       43 CALL                             R4 1 1
       44 SETTABLEKS                       R4 R3 K17 ["Name"]
       46 GETTABLEKS                       R4 R0 K0 ["Adornee"]
       48 SETTABLEKS                       R4 R3 K0 ["Adornee"]
       50 GETTABLEKS                       R4 R0 K1 ["AdorneeOffset"]
       52 SETTABLEKS                       R4 R3 K18 ["StudsOffsetWorldSpace"]
       54 LOADB                            R4 1
       55 SETTABLEKS                       R4 R3 K19 ["AlwaysOnTop"]
       57 JUMPIFNOT                        R2 ; [+8]
       58 GETIMPORT                        R4 K21 [UDim2.new]
       60 LOADN                            R5 2
       61 GETUPVAL                         R6 0
       62 LOADN                            R7 2
       63 GETUPVAL                         R8 0
       64 CALL                             R4 4 1
       65 JUMP                             ; [+8]
       66 GETIMPORT                        R4 K21 [UDim2.new]
       68 LOADN                            R5 3
       69 GETUPVAL                         R7 0
       70 MULK                             R6 R7 K22 [1.5]
       71 LOADN                            R7 2
       72 GETUPVAL                         R8 0
       73 CALL                             R4 4 1
       74 SETTABLEKS                       R4 R3 K23 ["Size"]
       76 GETIMPORT                        R4 K25 [Vector2.new]
       78 LOADK                            R5 K26 [0.5]
       79 LOADK                            R6 K26 [0.5]
       80 CALL                             R4 2 1
       81 SETTABLEKS                       R4 R3 K27 ["SizeOffset"]
       83 LOADB                            R4 1
       84 SETTABLEKS                       R4 R3 K28 ["Active"]
       86 SETTABLEKS                       R1 R3 K29 ["Parent"]
       88 LOADK                            R6 K30 ["IsDraft"]
       89 NAMECALL                         R4 R0 K31 ["GetAttribute"]
       91 CALL                             R4 2 1
       92 JUMPIFNOT                        R4 ; [+20]
       93 LOADK                            R4 K32 ["Draft"]
       94 SETTABLEKS                       R4 R3 K17 ["Name"]
       96 LOADB                            R4 1
       97 SETTABLEKS                       R4 R3 K33 ["Enabled"]
       99 LOADK                            R6 K30 ["IsDraft"]
      100 LOADB                            R7 1
      101 NAMECALL                         R4 R3 K34 ["SetAttribute"]
      103 CALL                             R4 3 0
      104 GETTABLEKS                       R4 R0 K35 ["RequestCompleted"]
      106 NEWCLOSURE                       R6 P0
      107 CAPTURE                          UPVAL U1
      108 CAPTURE                          VAL R3
      109 NAMECALL                         R4 R4 K36 ["Once"]
      111 CALL                             R4 2 0
      112 JUMP                             ; [+5]
      113 GETUPVAL                         R5 2
      114 GETTABLEKS                       R4 R5 K37 ["AnnotationsVisible"]
      116 SETTABLEKS                       R4 R3 K33 ["Enabled"]
      118 GETTABLEKS                       R4 R0 K38 ["Destroying"]
      120 NEWCLOSURE                       R6 P1
      121 CAPTURE                          VAL R3
      122 NAMECALL                         R4 R4 K39 ["Connect"]
      124 CALL                             R4 2 0
      125 GETIMPORT                        R4 K15 [Instance.new]
      127 LOADK                            R5 K40 ["ImageButton"]
      128 MOVE                             R6 R3
      129 CALL                             R4 2 1
      130 LOADK                            R5 K41 ["Indicator"]
      131 SETTABLEKS                       R5 R4 K17 ["Name"]
      133 JUMPIFNOT                        R2 ; [+2]
      134 LOADK                            R5 K42 ["rbxasset://textures/PlaceAnnotations/AnnotationSingle.png"]
      135 JUMP                             ; [+1]
      136 LOADK                            R5 K43 ["rbxasset://textures/PlaceAnnotations/AnnotationMulti.png"]
      137 SETTABLEKS                       R5 R4 K44 ["Image"]
      139 LOADN                            R5 0
      140 SETTABLEKS                       R5 R4 K45 ["BorderSizePixel"]
      142 LOADN                            R5 1
      143 SETTABLEKS                       R5 R4 K46 ["BackgroundTransparency"]
      145 GETIMPORT                        R5 K48 [UDim2.fromScale]
      147 LOADN                            R6 1
      148 LOADN                            R7 1
      149 CALL                             R5 2 1
      150 SETTABLEKS                       R5 R4 K23 ["Size"]
      152 GETIMPORT                        R5 K25 [Vector2.new]
      154 LOADN                            R6 0
      155 LOADN                            R7 1
      156 CALL                             R5 2 1
      157 SETTABLEKS                       R5 R4 K49 ["AnchorPoint"]
      159 GETIMPORT                        R5 K48 [UDim2.fromScale]
      161 LOADN                            R6 0
      162 LOADN                            R7 1
      163 CALL                             R5 2 1
      164 SETTABLEKS                       R5 R4 K50 ["Position"]
      166 GETIMPORT                        R5 K15 [Instance.new]
      168 LOADK                            R6 K51 ["UISizeConstraint"]
      169 MOVE                             R7 R4
      170 CALL                             R5 2 1
      171 JUMPIFNOT                        R2 ; [+15]
      172 GETIMPORT                        R6 K25 [Vector2.new]
      174 GETUPVAL                         R7 3
      175 GETUPVAL                         R8 3
      176 CALL                             R6 2 1
      177 SETTABLEKS                       R6 R5 K52 ["MaxSize"]
      179 GETIMPORT                        R6 K25 [Vector2.new]
      181 GETUPVAL                         R7 0
      182 GETUPVAL                         R8 0
      183 CALL                             R6 2 1
      184 SETTABLEKS                       R6 R5 K53 ["MinSize"]
      186 JUMP                             ; [+16]
      187 GETIMPORT                        R6 K25 [Vector2.new]
      189 GETUPVAL                         R8 3
      190 MULK                             R7 R8 K22 [1.5]
      191 GETUPVAL                         R8 3
      192 CALL                             R6 2 1
      193 SETTABLEKS                       R6 R5 K52 ["MaxSize"]
      195 GETIMPORT                        R6 K25 [Vector2.new]
      197 GETUPVAL                         R8 0
      198 MULK                             R7 R8 K22 [1.5]
      199 GETUPVAL                         R8 0
      200 CALL                             R6 2 1
      201 SETTABLEKS                       R6 R5 K53 ["MinSize"]
      203 GETIMPORT                        R6 K15 [Instance.new]
      205 LOADK                            R7 K54 ["ImageLabel"]
      206 MOVE                             R8 R4
      207 CALL                             R6 2 1
      208 LOADK                            R7 K55 ["Highlight"]
      209 SETTABLEKS                       R7 R6 K17 ["Name"]
      211 JUMPIFNOT                        R2 ; [+2]
      212 LOADK                            R7 K56 ["rbxasset://textures/PlaceAnnotations/AnnotationSingleHighlight.png"]
      213 JUMP                             ; [+1]
      214 LOADK                            R7 K57 ["rbxasset://textures/PlaceAnnotations/AnnotationMultiHighlight.png"]
      215 SETTABLEKS                       R7 R6 K44 ["Image"]
      217 LOADN                            R7 0
      218 SETTABLEKS                       R7 R6 K45 ["BorderSizePixel"]
      220 LOADN                            R7 1
      221 SETTABLEKS                       R7 R6 K46 ["BackgroundTransparency"]
      223 GETIMPORT                        R7 K48 [UDim2.fromScale]
      225 LOADN                            R8 1
      226 LOADN                            R9 1
      227 CALL                             R7 2 1
      228 SETTABLEKS                       R7 R6 K23 ["Size"]
      230 GETIMPORT                        R7 K60 [Color3.fromHex]
      232 LOADK                            R8 K61 ["#2BB1FF"]
      233 CALL                             R7 1 1
      234 SETTABLEKS                       R7 R6 K62 ["ImageColor3"]
      236 LOADB                            R7 0
      237 SETTABLEKS                       R7 R6 K63 ["Visible"]
      239 GETUPVAL                         R7 4
      240 MOVE                             R8 R0
      241 CALL                             R7 1 1
      242 SETTABLEKS                       R4 R7 K29 ["Parent"]
      244 GETTABLEKS                       R8 R0 K11 ["ReplyCount"]
      246 LOADN                            R9 0
      247 JUMPIFNOTLT                      R9 R8 ; [+6]
      249 GETUPVAL                         R8 5
      250 MOVE                             R9 R0
      251 CALL                             R8 1 1
      252 SETTABLEKS                       R4 R8 K29 ["Parent"]
      254 GETUPVAL                         R8 6
      255 MOVE                             R9 R0
      256 MOVE                             R10 R4
      257 CALL                             R8 2 0
      258 MOVE                             R8 R4
      259 MOVE                             R9 R6
      260 RETURN                           R8 2

PROTO_13:
        0 GETTABLEKS                       R2 R0 K0 ["ReplyCount"]
        2 JUMPIFEQKN                       R2 K1 [0] ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 GETIMPORT                        R2 K4 [Instance.new]
        8 LOADK                            R3 K5 ["ImageLabel"]
        9 CALL                             R2 1 1
       10 LOADK                            R3 K6 ["Avatar"]
       11 SETTABLEKS                       R3 R2 K7 ["Name"]
       13 LOADK                            R4 K8 ["rbxthumb://type=AvatarHeadShot&id=%*&filters=circular&w=150&h=150"]
       14 GETTABLEKS                       R6 R0 K9 ["AuthorId"]
       16 NAMECALL                         R4 R4 K10 ["format"]
       18 CALL                             R4 2 1
       19 MOVE                             R3 R4
       20 SETTABLEKS                       R3 R2 K11 ["Image"]
       22 LOADN                            R3 0
       23 SETTABLEKS                       R3 R2 K12 ["BorderSizePixel"]
       25 LOADN                            R3 0
       26 SETTABLEKS                       R3 R2 K13 ["BackgroundTransparency"]
       28 GETIMPORT                        R3 K16 [Color3.fromHex]
       30 LOADK                            R4 K17 ["#989898"]
       31 CALL                             R3 1 1
       32 SETTABLEKS                       R3 R2 K18 ["BackgroundColor3"]
       34 JUMPIFNOT                        R1 ; [+6]
       35 GETIMPORT                        R3 K21 [UDim2.fromScale]
       37 LOADK                            R4 K22 [0.75]
       38 LOADK                            R5 K22 [0.75]
       39 CALL                             R3 2 1
       40 JUMP                             ; [+5]
       41 GETIMPORT                        R3 K21 [UDim2.fromScale]
       43 LOADK                            R4 K23 [0.5]
       44 LOADK                            R5 K22 [0.75]
       45 CALL                             R3 2 1
       46 SETTABLEKS                       R3 R2 K24 ["Size"]
       48 JUMPIFNOT                        R1 ; [+6]
       49 GETIMPORT                        R3 K21 [UDim2.fromScale]
       51 LOADK                            R4 K23 [0.5]
       52 LOADK                            R5 K23 [0.5]
       53 CALL                             R3 2 1
       54 JUMP                             ; [+5]
       55 GETIMPORT                        R3 K21 [UDim2.fromScale]
       57 LOADK                            R4 K25 [0.333333333333333]
       58 LOADK                            R5 K23 [0.5]
       59 CALL                             R3 2 1
       60 SETTABLEKS                       R3 R2 K26 ["Position"]
       62 GETIMPORT                        R3 K28 [Vector2.new]
       64 LOADK                            R4 K23 [0.5]
       65 LOADK                            R5 K23 [0.5]
       66 CALL                             R3 2 1
       67 SETTABLEKS                       R3 R2 K29 ["AnchorPoint"]
       69 GETIMPORT                        R3 K4 [Instance.new]
       71 LOADK                            R4 K30 ["UICorner"]
       72 MOVE                             R5 R2
       73 CALL                             R3 2 1
       74 GETIMPORT                        R4 K32 [UDim.new]
       76 LOADN                            R5 1
       77 LOADN                            R6 0
       78 CALL                             R4 2 1
       79 SETTABLEKS                       R4 R3 K33 ["CornerRadius"]
       81 RETURN                           R2 1

PROTO_14:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["TextLabel"]
        3 CALL                             R1 1 1
        4 LOADK                            R2 K4 ["ReplyCount"]
        5 SETTABLEKS                       R2 R1 K5 ["Name"]
        7 LOADK                            R2 K6 [""]
        8 SETTABLEKS                       R2 R1 K7 ["Text"]
       10 LOADN                            R2 0
       11 SETTABLEKS                       R2 R1 K8 ["BackgroundTransparency"]
       13 GETIMPORT                        R2 K11 [Color3.fromRGB]
       15 LOADN                            R3 255
       16 LOADN                            R4 255
       17 LOADN                            R5 255
       18 CALL                             R2 3 1
       19 SETTABLEKS                       R2 R1 K12 ["BackgroundColor3"]
       21 GETIMPORT                        R2 K15 [UDim2.fromScale]
       23 LOADK                            R3 K16 [0.53]
       24 LOADK                            R4 K17 [0.8]
       25 CALL                             R2 2 1
       26 SETTABLEKS                       R2 R1 K18 ["Size"]
       28 GETIMPORT                        R2 K15 [UDim2.fromScale]
       30 LOADK                            R3 K19 [0.7]
       31 LOADK                            R4 K20 [0.5]
       32 CALL                             R2 2 1
       33 SETTABLEKS                       R2 R1 K21 ["Position"]
       35 GETIMPORT                        R2 K23 [Vector2.new]
       37 LOADK                            R3 K20 [0.5]
       38 LOADK                            R4 K20 [0.5]
       39 CALL                             R2 2 1
       40 SETTABLEKS                       R2 R1 K24 ["AnchorPoint"]
       42 GETIMPORT                        R2 K28 [Enum.TextXAlignment.Center]
       44 SETTABLEKS                       R2 R1 K26 ["TextXAlignment"]
       46 GETIMPORT                        R2 K30 [Enum.TextYAlignment.Center]
       48 SETTABLEKS                       R2 R1 K29 ["TextYAlignment"]
       50 GETIMPORT                        R2 K2 [Instance.new]
       52 LOADK                            R3 K31 ["UICorner"]
       53 MOVE                             R4 R1
       54 CALL                             R2 2 1
       55 GETIMPORT                        R3 K33 [UDim.new]
       57 LOADN                            R4 1
       58 LOADN                            R5 0
       59 CALL                             R3 2 1
       60 SETTABLEKS                       R3 R2 K34 ["CornerRadius"]
       62 GETIMPORT                        R3 K2 [Instance.new]
       64 LOADK                            R4 K3 ["TextLabel"]
       65 MOVE                             R5 R1
       66 CALL                             R3 2 1
       67 LOADK                            R4 K35 ["ReplyCountInner"]
       68 SETTABLEKS                       R4 R3 K5 ["Name"]
       70 LOADK                            R4 K6 [""]
       71 SETTABLEKS                       R4 R3 K7 ["Text"]
       73 GETIMPORT                        R4 K37 [Color3.fromHex]
       75 LOADK                            R5 K38 ["#008BDB"]
       76 CALL                             R4 1 1
       77 SETTABLEKS                       R4 R3 K12 ["BackgroundColor3"]
       79 GETIMPORT                        R4 K15 [UDim2.fromScale]
       81 LOADK                            R5 K39 [0.85]
       82 LOADK                            R6 K39 [0.85]
       83 CALL                             R4 2 1
       84 SETTABLEKS                       R4 R3 K18 ["Size"]
       86 GETIMPORT                        R4 K23 [Vector2.new]
       88 LOADK                            R5 K20 [0.5]
       89 LOADK                            R6 K20 [0.5]
       90 CALL                             R4 2 1
       91 SETTABLEKS                       R4 R3 K24 ["AnchorPoint"]
       93 GETIMPORT                        R4 K15 [UDim2.fromScale]
       95 LOADK                            R5 K20 [0.5]
       96 LOADK                            R6 K20 [0.5]
       97 CALL                             R4 2 1
       98 SETTABLEKS                       R4 R3 K21 ["Position"]
      100 GETIMPORT                        R4 K2 [Instance.new]
      102 LOADK                            R5 K3 ["TextLabel"]
      103 MOVE                             R6 R3
      104 CALL                             R4 2 1
      105 LOADK                            R5 K40 ["ReplyCountText"]
      106 SETTABLEKS                       R5 R4 K5 ["Name"]
      108 LOADN                            R5 1
      109 SETTABLEKS                       R5 R4 K8 ["BackgroundTransparency"]
      111 LOADK                            R6 K41 ["+%*"]
      112 GETTABLEKS                       R9 R0 K4 ["ReplyCount"]
      114 FASTCALL1                        TOSTRING R9 ; [+2]
      115 GETIMPORT                        R8 K43 [tostring]
      117 CALL                             R8 1 1
      118 NAMECALL                         R6 R6 K44 ["format"]
      120 CALL                             R6 2 1
      121 MOVE                             R5 R6
      122 SETTABLEKS                       R5 R4 K7 ["Text"]
      124 GETIMPORT                        R5 K11 [Color3.fromRGB]
      126 LOADN                            R6 255
      127 LOADN                            R7 255
      128 LOADN                            R8 255
      129 CALL                             R5 3 1
      130 SETTABLEKS                       R5 R4 K45 ["TextColor3"]
      132 GETIMPORT                        R5 K48 [Enum.Font.SourceSansBold]
      134 SETTABLEKS                       R5 R4 K46 ["Font"]
      136 LOADB                            R5 1
      137 SETTABLEKS                       R5 R4 K49 ["TextScaled"]
      139 GETIMPORT                        R5 K23 [Vector2.new]
      141 LOADK                            R6 K20 [0.5]
      142 LOADK                            R7 K20 [0.5]
      143 CALL                             R5 2 1
      144 SETTABLEKS                       R5 R4 K24 ["AnchorPoint"]
      146 GETIMPORT                        R5 K15 [UDim2.fromScale]
      148 LOADK                            R6 K20 [0.5]
      149 LOADK                            R7 K20 [0.5]
      150 CALL                             R5 2 1
      151 SETTABLEKS                       R5 R4 K21 ["Position"]
      153 GETIMPORT                        R5 K15 [UDim2.fromScale]
      155 LOADK                            R6 K50 [0.6]
      156 LOADK                            R7 K50 [0.6]
      157 CALL                             R5 2 1
      158 SETTABLEKS                       R5 R4 K18 ["Size"]
      160 GETIMPORT                        R5 K2 [Instance.new]
      162 LOADK                            R6 K31 ["UICorner"]
      163 MOVE                             R7 R3
      164 CALL                             R5 2 1
      165 MOVE                             R2 R5
      166 GETIMPORT                        R5 K33 [UDim.new]
      168 LOADN                            R6 1
      169 LOADN                            R7 0
      170 CALL                             R5 2 1
      171 SETTABLEKS                       R5 R2 K34 ["CornerRadius"]
      173 RETURN                           R1 1

PROTO_15:
        0 LOADK                            R5 K0 ["ReplyCount"]
        1 LOADB                            R6 1
        2 NAMECALL                         R3 R1 K1 ["FindFirstChild"]
        4 CALL                             R3 3 1
        5 JUMPIFEQKNIL                     R3 ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 GETTABLEKS                       R3 R0 K0 ["ReplyCount"]
       11 JUMPIFNOTEQKN                    R3 K2 [0] ; [+68]
       13 JUMPIF                           R2 ; [+66]
       14 GETTABLEKS                       R3 R1 K3 ["Parent"]
       16 GETIMPORT                        R4 K6 [UDim2.new]
       18 LOADN                            R5 2
       19 GETUPVAL                         R6 0
       20 LOADN                            R7 2
       21 GETUPVAL                         R8 0
       22 CALL                             R4 4 1
       23 SETTABLEKS                       R4 R3 K7 ["Size"]
       25 LOADK                            R3 K8 ["rbxasset://textures/PlaceAnnotations/AnnotationSingle.png"]
       26 SETTABLEKS                       R3 R1 K9 ["Image"]
       28 LOADK                            R5 K10 ["UISizeConstraint"]
       29 NAMECALL                         R3 R1 K11 ["FindFirstChildWhichIsA"]
       31 CALL                             R3 2 1
       32 GETIMPORT                        R4 K13 [Vector2.new]
       34 GETUPVAL                         R5 1
       35 GETUPVAL                         R6 1
       36 CALL                             R4 2 1
       37 SETTABLEKS                       R4 R3 K14 ["MaxSize"]
       39 GETIMPORT                        R4 K13 [Vector2.new]
       41 GETUPVAL                         R5 0
       42 GETUPVAL                         R6 0
       43 CALL                             R4 2 1
       44 SETTABLEKS                       R4 R3 K15 ["MinSize"]
       46 LOADK                            R6 K16 ["Highlight"]
       47 NAMECALL                         R4 R1 K1 ["FindFirstChild"]
       49 CALL                             R4 2 1
       50 LOADK                            R5 K17 ["rbxasset://textures/PlaceAnnotations/AnnotationSingleHighlight.png"]
       51 SETTABLEKS                       R5 R4 K9 ["Image"]
       53 LOADK                            R7 K18 ["Avatar"]
       54 NAMECALL                         R5 R1 K1 ["FindFirstChild"]
       56 CALL                             R5 2 1
       57 GETIMPORT                        R6 K20 [UDim2.fromScale]
       59 LOADK                            R7 K21 [0.5]
       60 LOADK                            R8 K21 [0.5]
       61 CALL                             R6 2 1
       62 SETTABLEKS                       R6 R5 K22 ["Position"]
       64 GETIMPORT                        R6 K20 [UDim2.fromScale]
       66 LOADK                            R7 K23 [0.75]
       67 LOADK                            R8 K23 [0.75]
       68 CALL                             R6 2 1
       69 SETTABLEKS                       R6 R5 K7 ["Size"]
       71 LOADK                            R8 K0 ["ReplyCount"]
       72 LOADB                            R9 1
       73 NAMECALL                         R6 R1 K1 ["FindFirstChild"]
       75 CALL                             R6 3 1
       76 NAMECALL                         R6 R6 K24 ["Destroy"]
       78 CALL                             R6 1 0
       79 RETURN                           R0 0
       80 GETTABLEKS                       R3 R0 K0 ["ReplyCount"]
       82 LOADN                            R4 0
       83 JUMPIFNOTLT                      R4 R3 ; [+70]
       85 JUMPIFNOT                        R2 ; [+68]
       86 GETTABLEKS                       R3 R1 K3 ["Parent"]
       88 GETIMPORT                        R4 K6 [UDim2.new]
       90 LOADN                            R5 3
       91 GETUPVAL                         R7 0
       92 MULK                             R6 R7 K25 [1.5]
       93 LOADN                            R7 2
       94 GETUPVAL                         R8 0
       95 CALL                             R4 4 1
       96 SETTABLEKS                       R4 R3 K7 ["Size"]
       98 LOADK                            R3 K26 ["rbxasset://textures/PlaceAnnotations/AnnotationMulti.png"]
       99 SETTABLEKS                       R3 R1 K9 ["Image"]
      101 LOADK                            R5 K16 ["Highlight"]
      102 NAMECALL                         R3 R1 K1 ["FindFirstChild"]
      104 CALL                             R3 2 1
      105 LOADK                            R4 K27 ["rbxasset://textures/PlaceAnnotations/AnnotationMultiHighlight.png"]
      106 SETTABLEKS                       R4 R3 K9 ["Image"]
      108 LOADK                            R6 K10 ["UISizeConstraint"]
      109 NAMECALL                         R4 R1 K11 ["FindFirstChildWhichIsA"]
      111 CALL                             R4 2 1
      112 GETIMPORT                        R5 K13 [Vector2.new]
      114 LOADK                            R7 K25 [1.5]
      115 GETUPVAL                         R8 1
      116 MUL                              R6 R7 R8
      117 GETUPVAL                         R7 1
      118 CALL                             R5 2 1
      119 SETTABLEKS                       R5 R4 K14 ["MaxSize"]
      121 GETIMPORT                        R5 K13 [Vector2.new]
      123 LOADK                            R7 K25 [1.5]
      124 GETUPVAL                         R8 0
      125 MUL                              R6 R7 R8
      126 GETUPVAL                         R7 0
      127 CALL                             R5 2 1
      128 SETTABLEKS                       R5 R4 K15 ["MinSize"]
      130 LOADK                            R7 K18 ["Avatar"]
      131 NAMECALL                         R5 R1 K1 ["FindFirstChild"]
      133 CALL                             R5 2 1
      134 GETIMPORT                        R6 K20 [UDim2.fromScale]
      136 LOADK                            R7 K28 [0.333333333333333]
      137 LOADK                            R8 K21 [0.5]
      138 CALL                             R6 2 1
      139 SETTABLEKS                       R6 R5 K22 ["Position"]
      141 GETIMPORT                        R6 K20 [UDim2.fromScale]
      143 LOADK                            R7 K21 [0.5]
      144 LOADK                            R8 K23 [0.75]
      145 CALL                             R6 2 1
      146 SETTABLEKS                       R6 R5 K7 ["Size"]
      148 GETUPVAL                         R6 2
      149 MOVE                             R7 R0
      150 CALL                             R6 1 1
      151 SETTABLEKS                       R1 R6 K3 ["Parent"]
      153 RETURN                           R0 0
      154 GETTABLEKS                       R3 R0 K0 ["ReplyCount"]
      156 LOADN                            R4 0
      157 JUMPIFNOTLT                      R4 R3 ; [+19]
      159 LOADK                            R5 K29 ["ReplyCountText"]
      160 LOADB                            R6 1
      161 NAMECALL                         R3 R1 K1 ["FindFirstChild"]
      163 CALL                             R3 3 1
      164 LOADK                            R5 K30 ["+%*"]
      165 GETTABLEKS                       R8 R0 K0 ["ReplyCount"]
      167 FASTCALL1                        TOSTRING R8 ; [+2]
      168 GETIMPORT                        R7 K32 [tostring]
      170 CALL                             R7 1 1
      171 NAMECALL                         R5 R5 K33 ["format"]
      173 CALL                             R5 2 1
      174 MOVE                             R4 R5
      175 SETTABLEKS                       R4 R3 K34 ["Text"]
      177 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Bin"]
       18 GETTABLEKS                       R4 R5 K9 ["Common"]
       20 GETTABLEKS                       R3 R4 K10 ["defineLuaFlags"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K6 ["Src"]
       27 GETTABLEKS                       R5 R6 K11 ["Enums"]
       29 GETTABLEKS                       R4 R5 K12 ["AnnotationEditingMode"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K6 ["Src"]
       36 GETTABLEKS                       R6 R7 K11 ["Enums"]
       38 GETTABLEKS                       R5 R6 K13 ["AnnotationRequestStatus"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K15 [game]
       43 LOADK                            R7 K16 ["AnnotationsService"]
       44 NAMECALL                         R5 R5 K17 ["GetService"]
       46 CALL                             R5 2 1
       47 GETTABLEKS                       R6 R2 K18 ["fintAnnotationsPointerMaxSize"]
       49 GETTABLEKS                       R7 R2 K19 ["fintAnnotationsPointerMinSize"]
       51 LOADNIL                          R8
       52 LOADNIL                          R9
       53 LOADNIL                          R10
       54 NEWCLOSURE                       R11 P0
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R3
       57 CAPTURE                          REF R10
       58 NEWCLOSURE                       R12 P1
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R6
       63 CAPTURE                          REF R8
       64 CAPTURE                          REF R9
       65 CAPTURE                          VAL R11
       66 DUPCLOSURE                       R8 K20 [PROTO_13]
       67 DUPCLOSURE                       R9 K21 [PROTO_14]
       68 NEWCLOSURE                       R10 P4
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R6
       71 CAPTURE                          REF R9
       72 CLOSEUPVALS                      R8
       73 RETURN                           R12 1
