PROTO_0:
        0 LOADK                            R1 K0 ["%.1f"]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_1:
        0 ADDK                             R1 R0 K0 [1]
        1 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_1]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Changed"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 NAMECALL                         R0 R0 K1 ["Connect"]
        7 CALL                             R0 2 1
        8 NEWCLOSURE                       R1 P1
        9 CAPTURE                          VAL R0
       10 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["StudsPerTile"]
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["Name"]
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["MaterialPattern"]
        3 GETIMPORT                        R1 K3 [Enum.MaterialPattern.Regular]
        5 JUMPIFNOTEQ                      R0 R1 ; [+7]
        7 GETUPVAL                         R0 0
        8 GETIMPORT                        R1 K5 [Enum.MaterialPattern.Organic]
       10 SETTABLEKS                       R1 R0 K0 ["MaterialPattern"]
       12 RETURN                           R0 0
       13 GETUPVAL                         R0 0
       14 GETIMPORT                        R1 K3 [Enum.MaterialPattern.Regular]
       16 SETTABLEKS                       R1 R0 K0 ["MaterialPattern"]
       18 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R3 K2 [Enum.Material]
        3 GETTABLE                         R2 R3 R0
        4 SETTABLEKS                       R2 R1 K3 ["BaseMaterial"]
        6 GETUPVAL                         R1 1
        7 GETUPVAL                         R2 0
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 2
       10 LOADB                            R2 0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 JUMPIF                           R0 ; [+4]
        4 GETUPVAL                         R0 2
        5 LOADB                            R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 3
        9 GETUPVAL                         R1 1
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 4
       12 CALL                             R0 0 0
       13 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [0]
        2 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+12]
        2 GETUPVAL                         R1 0
        3 LENGTH                           R0 R1
        4 LOADN                            R1 0
        5 JUMPIFNOTLT                      R1 R0 ; [+8]
        7 GETUPVAL                         R0 1
        8 LOADK                            R2 K0 ["Editor"]
        9 LOADK                            R3 K1 ["SaveAndApplyVariant"]
       10 NAMECALL                         R0 R0 K2 ["getText"]
       12 CALL                             R0 3 -1
       13 RETURN                           R0 -1
       14 GETUPVAL                         R0 1
       15 LOADK                            R2 K0 ["Editor"]
       16 LOADK                            R3 K3 ["Upload"]
       17 NAMECALL                         R0 R0 K2 ["getText"]
       19 CALL                             R0 3 -1
       20 RETURN                           R0 -1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Plane"]
        3 GETTABLEKS                       R0 R0 K1 ["rawValue"]
        5 CALL                             R0 0 1
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K2 ["setSetting"]
        9 GETUPVAL                         R2 2
       10 MOVE                             R3 R0
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Sphere"]
        3 GETTABLEKS                       R0 R0 K1 ["rawValue"]
        5 CALL                             R0 0 1
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K2 ["setSetting"]
        9 GETUPVAL                         R2 2
       10 MOVE                             R3 R0
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 0
        4 RETURN                           R0 0

PROTO_15:
        0 NEWTABLE                         R0 0 2
        2 DUPTABLE                         R1 K5 [{[1], ["Text"], ["Enabled"] = True, ["OnItemClicked"]}]
        3 GETUPVAL                         R3 0
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K6 ["Plane"]
        7 JUMPIFEQ                         R3 R4 ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 SETTABLEKS                       R2 R1 K0 ["Checked"]
       13 GETUPVAL                         R2 2
       14 LOADK                            R4 K7 ["Browser"]
       15 LOADK                            R5 K8 ["PlanePreview"]
       16 NAMECALL                         R2 R2 K9 ["getText"]
       18 CALL                             R2 3 1
       19 SETTABLEKS                       R2 R1 K1 ["Text"]
       21 NEWCLOSURE                       R2 P0
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U4
       25 SETTABLEKS                       R2 R1 K4 ["OnItemClicked"]
       27 DUPTABLE                         R2 K5 [{[1], ["Text"], ["Enabled"] = True, ["OnItemClicked"]}]
       28 GETUPVAL                         R4 0
       29 GETUPVAL                         R5 1
       30 GETTABLEKS                       R5 R5 K10 ["Sphere"]
       32 JUMPIFEQ                         R4 R5 ; [+2]
       34 LOADB                            R3 0 +1
       35 LOADB                            R3 1
       36 SETTABLEKS                       R3 R2 K0 ["Checked"]
       38 GETUPVAL                         R3 2
       39 LOADK                            R5 K7 ["Browser"]
       40 LOADK                            R6 K11 ["SpherePreview"]
       41 NAMECALL                         R3 R3 K9 ["getText"]
       43 CALL                             R3 3 1
       44 SETTABLEKS                       R3 R2 K1 ["Text"]
       46 NEWCLOSURE                       R3 P1
       47 CAPTURE                          UPVAL U1
       48 CAPTURE                          UPVAL U3
       49 CAPTURE                          UPVAL U4
       50 SETTABLEKS                       R3 R2 K4 ["OnItemClicked"]
       52 SETLIST                          R0 R1 2 [1]
       54 GETIMPORT                        R1 K14 [task.spawn]
       56 NEWCLOSURE                       R2 P2
       57 CAPTURE                          UPVAL U5
       58 CAPTURE                          UPVAL U6
       59 CAPTURE                          VAL R0
       60 CALL                             R1 1 0
       61 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_17:
        0 GETIMPORT                        R3 K3 [Enum.KeyCode.Escape]
        2 GETTABLE                         R2 R1 R3
        3 JUMPIFNOT                        R2 ; [+3]
        4 GETUPVAL                         R2 0
        5 LOADNIL                          R3
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R2 R1 K1 ["selectedMaterial"]
        7 JUMPIF                           R2 ; [+2]
        8 LOADNIL                          R3
        9 RETURN                           R3 1
       10 JUMPIFNOTEQKNIL                  R2 ; [+2]
       12 LOADB                            R4 0 +1
       13 LOADB                            R4 1
       14 GETUPVAL                         R5 2
       15 FASTCALL2                        ASSERT R4 R5 ; [+3]
       17 GETIMPORT                        R3 K3 [assert]
       19 CALL                             R3 2 0
       20 GETTABLEKS                       R3 R1 K4 ["setSelectedMaterial"]
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K5 ["useState"]
       25 LOADN                            R5 0
       26 CALL                             R4 1 2
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R6 R6 K5 ["useState"]
       30 LOADB                            R7 0
       31 CALL                             R6 1 2
       32 GETUPVAL                         R8 0
       33 GETTABLEKS                       R8 R8 K0 ["useContext"]
       35 GETUPVAL                         R9 3
       36 CALL                             R8 1 1
       37 GETTABLEKS                       R9 R8 K6 ["hasBaseMaterial"]
       39 GETTABLEKS                       R10 R8 K7 ["markHasBaseMaterial"]
       41 GETTABLEKS                       R11 R8 K8 ["getMaterialStatus"]
       43 MOVE                             R12 R2
       44 CALL                             R11 1 1
       45 GETUPVAL                         R12 0
       46 GETTABLEKS                       R12 R12 K0 ["useContext"]
       48 GETUPVAL                         R13 4
       49 CALL                             R12 1 1
       50 GETTABLEKS                       R13 R12 K9 ["uploadMaterialVariant"]
       52 MOVE                             R15 R9
       53 MOVE                             R16 R2
       54 CALL                             R15 1 1
       55 JUMPIFNOT                        R15 ; [+5]
       56 GETTABLEKS                       R14 R2 K10 ["BaseMaterial"]
       58 GETTABLEKS                       R14 R14 K11 ["Name"]
       60 JUMP                             ; [+1]
       61 LOADNIL                          R14
       62 GETUPVAL                         R15 5
       63 NAMECALL                         R15 R15 K12 ["use"]
       65 CALL                             R15 1 1
       66 LOADNIL                          R16
       67 JUMPIFNOT                        R6 ; [+6]
       68 LOADK                            R19 K13 ["Editor"]
       69 LOADK                            R20 K14 ["BaseMaterialNotSetError"]
       70 NAMECALL                         R17 R15 K15 ["getText"]
       72 CALL                             R17 3 1
       73 MOVE                             R16 R17
       74 GETUPVAL                         R17 0
       75 GETTABLEKS                       R17 R17 K16 ["useEffect"]
       77 NEWCLOSURE                       R18 P0
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R5
       80 NEWTABLE                         R19 0 1
       82 MOVE                             R20 R2
       83 SETLIST                          R19 R20 1 [1]
       85 CALL                             R17 2 0
       86 GETUPVAL                         R17 0
       87 GETTABLEKS                       R17 R17 K17 ["useCallback"]
       89 NEWCLOSURE                       R18 P1
       90 CAPTURE                          VAL R2
       91 NEWTABLE                         R19 0 1
       93 MOVE                             R20 R2
       94 SETLIST                          R19 R20 1 [1]
       96 CALL                             R17 2 1
       97 GETUPVAL                         R18 0
       98 GETTABLEKS                       R18 R18 K17 ["useCallback"]
      100 NEWCLOSURE                       R19 P2
      101 CAPTURE                          VAL R2
      102 NEWTABLE                         R20 0 1
      104 MOVE                             R21 R2
      105 SETLIST                          R20 R21 1 [1]
      107 CALL                             R18 2 1
      108 GETUPVAL                         R19 0
      109 GETTABLEKS                       R19 R19 K17 ["useCallback"]
      111 NEWCLOSURE                       R20 P3
      112 CAPTURE                          VAL R2
      113 NEWTABLE                         R21 0 1
      115 MOVE                             R22 R2
      116 SETLIST                          R21 R22 1 [1]
      118 CALL                             R19 2 1
      119 GETUPVAL                         R20 0
      120 GETTABLEKS                       R20 R20 K17 ["useCallback"]
      122 NEWCLOSURE                       R21 P4
      123 CAPTURE                          VAL R2
      124 CAPTURE                          VAL R10
      125 CAPTURE                          VAL R7
      126 NEWTABLE                         R22 0 2
      128 MOVE                             R23 R2
      129 MOVE                             R24 R10
      130 SETLIST                          R22 R23 2 [1]
      132 CALL                             R20 2 1
      133 GETUPVAL                         R21 6
      134 CALL                             R21 0 1
      135 GETTABLEKS                       R22 R1 K18 ["applySelectedMaterial"]
      137 GETUPVAL                         R23 0
      138 GETTABLEKS                       R23 R23 K17 ["useCallback"]
      140 NEWCLOSURE                       R24 P5
      141 CAPTURE                          VAL R9
      142 CAPTURE                          VAL R2
      143 CAPTURE                          VAL R7
      144 CAPTURE                          VAL R13
      145 CAPTURE                          VAL R22
      146 NEWTABLE                         R25 0 4
      148 MOVE                             R26 R2
      149 MOVE                             R27 R9
      150 MOVE                             R28 R13
      151 MOVE                             R29 R22
      152 SETLIST                          R25 R26 4 [1]
      154 CALL                             R23 2 1
      155 GETUPVAL                         R24 0
      156 GETTABLEKS                       R24 R24 K17 ["useCallback"]
      158 NEWCLOSURE                       R25 P6
      159 CAPTURE                          VAL R2
      160 NEWTABLE                         R26 0 1
      162 MOVE                             R27 R2
      163 SETLIST                          R26 R27 1 [1]
      165 CALL                             R24 2 1
      166 JUMPIFEQKS                       R11 K19 ["Uploaded"] ; [+2]
      168 LOADB                            R25 0 +1
      169 LOADB                            R25 1
      170 JUMPIFEQKS                       R11 K20 ["Uploading"] ; [+2]
      172 LOADB                            R26 0 +1
      173 LOADB                            R26 1
      174 JUMPIF                           R25 ; [+3]
      175 GETUPVAL                         R27 7
      176 SETTABLEKS                       R27 R2 K21 ["Parent"]
      178 GETUPVAL                         R27 0
      179 GETTABLEKS                       R27 R27 K22 ["useMemo"]
      181 NEWCLOSURE                       R28 P7
      182 CAPTURE                          VAL R21
      183 CAPTURE                          VAL R15
      184 NEWTABLE                         R29 0 1
      186 MOVE                             R30 R21
      187 SETLIST                          R29 R30 1 [1]
      189 CALL                             R27 2 1
      190 GETUPVAL                         R28 8
      191 LOADK                            R30 K13 ["Editor"]
      192 NAMECALL                         R28 R28 K12 ["use"]
      194 CALL                             R28 2 1
      195 GETTABLEKS                       R29 R28 K23 ["LabelWidth"]
      197 GETUPVAL                         R30 0
      198 GETTABLEKS                       R30 R30 K0 ["useContext"]
      200 GETUPVAL                         R31 9
      201 CALL                             R30 1 1
      202 GETTABLEKS                       R31 R30 K24 ["getSetting"]
      204 GETUPVAL                         R32 10
      205 CALL                             R31 1 1
      206 LOADNIL                          R32
      207 JUMPIFNOT                        R31 ; [+6]
      208 GETUPVAL                         R33 11
      209 GETTABLEKS                       R33 R33 K25 ["fromRawValue"]
      211 MOVE                             R34 R31
      212 CALL                             R33 1 1
      213 MOVE                             R32 R33
      214 GETUPVAL                         R33 12
      215 GETTABLEKS                       R33 R33 K26 ["Plugin"]
      217 GETTABLEKS                       R33 R33 K12 ["use"]
      219 CALL                             R33 0 1
      220 NAMECALL                         R33 R33 K27 ["get"]
      222 CALL                             R33 1 1
      223 GETUPVAL                         R34 0
      224 GETTABLEKS                       R34 R34 K17 ["useCallback"]
      226 NEWCLOSURE                       R35 P8
      227 CAPTURE                          REF R32
      228 CAPTURE                          UPVAL U11
      229 CAPTURE                          VAL R15
      230 CAPTURE                          VAL R30
      231 CAPTURE                          UPVAL U10
      232 CAPTURE                          UPVAL U13
      233 CAPTURE                          VAL R33
      234 NEWTABLE                         R36 0 1
      236 MOVE                             R37 R32
      237 SETLIST                          R36 R37 1 [1]
      239 CALL                             R34 2 1
      240 GETUPVAL                         R35 14
      241 GETTABLEKS                       R35 R35 K28 ["new"]
      243 CALL                             R35 0 1
      244 GETUPVAL                         R36 0
      245 GETTABLEKS                       R36 R36 K29 ["createElement"]
      247 GETUPVAL                         R37 15
      248 DUPTABLE                         R38 K34 [{["LayoutOrder"], ["Size"], ["Style"] = "Box"}]
      249 GETTABLEKS                       R39 R0 K30 ["LayoutOrder"]
      251 SETTABLEKS                       R39 R38 K30 ["LayoutOrder"]
      253 GETTABLEKS                       R39 R0 K31 ["Size"]
      255 SETTABLEKS                       R39 R38 K31 ["Size"]
      257 DUPTABLE                         R39 K37 [{"SinkInput", "ScrollingFrame"}]
      258 GETUPVAL                         R41 16
      259 JUMPIFNOT                        R41 ; [+14]
      260 GETUPVAL                         R40 0
      261 GETTABLEKS                       R40 R40 K29 ["createElement"]
      263 LOADK                            R41 K38 ["TextButton"]
      264 DUPTABLE                         R42 K45 [{["BackgroundTransparency"] = 1, ["Interactable"] = False, ["Size"], ["Text"] = ""}]
      265 GETIMPORT                        R43 K48 [UDim2.fromScale]
      267 LOADN                            R44 1
      268 LOADN                            R45 1
      269 CALL                             R43 2 1
      270 SETTABLEKS                       R43 R42 K31 ["Size"]
      272 CALL                             R40 2 1
      273 JUMP                             ; [+1]
      274 LOADNIL                          R40
      275 SETTABLEKS                       R40 R39 K35 ["SinkInput"]
      277 GETUPVAL                         R40 0
      278 GETTABLEKS                       R40 R40 K29 ["createElement"]
      280 GETUPVAL                         R41 17
      281 DUPTABLE                         R42 K50 [{"AutomaticCanvasSize"}]
      282 GETIMPORT                        R43 K54 [Enum.AutomaticSize.Y]
      284 SETTABLEKS                       R43 R42 K49 ["AutomaticCanvasSize"]
      286 DUPTABLE                         R43 K58 [{"CloseButton", "KeyboardListener", "Content"}]
      287 GETUPVAL                         R44 0
      288 GETTABLEKS                       R44 R44 K29 ["createElement"]
      290 GETUPVAL                         R45 18
      291 DUPTABLE                         R46 K65 [{["AnchorPoint"], ["Position"], ["Size"], ["Style"] = "Close", ["OnClick"], ["ZIndex"] = 1000}]
      292 GETIMPORT                        R47 K67 [Vector2.new]
      294 LOADN                            R48 1
      295 LOADN                            R49 0
      296 CALL                             R47 2 1
      297 SETTABLEKS                       R47 R46 K59 ["AnchorPoint"]
      299 GETIMPORT                        R47 K68 [UDim2.new]
      301 LOADN                            R48 1
      302 LOADN                            R49 -2
      303 LOADN                            R50 0
      304 LOADN                            R51 2
      305 CALL                             R47 4 1
      306 SETTABLEKS                       R47 R46 K60 ["Position"]
      308 GETTABLEKS                       R47 R28 K69 ["CloseButtonSize"]
      310 SETTABLEKS                       R47 R46 K31 ["Size"]
      312 NEWCLOSURE                       R47 P9
      313 CAPTURE                          VAL R3
      314 SETTABLEKS                       R47 R46 K62 ["OnClick"]
      316 CALL                             R44 2 1
      317 SETTABLEKS                       R44 R43 K55 ["CloseButton"]
      319 GETUPVAL                         R44 0
      320 GETTABLEKS                       R44 R44 K29 ["createElement"]
      322 GETUPVAL                         R45 19
      323 DUPTABLE                         R46 K71 [{"OnKeyPressed"}]
      324 NEWCLOSURE                       R47 P10
      325 CAPTURE                          VAL R3
      326 SETTABLEKS                       R47 R46 K70 ["OnKeyPressed"]
      328 CALL                             R44 2 1
      329 SETTABLEKS                       R44 R43 K56 ["KeyboardListener"]
      331 GETUPVAL                         R44 0
      332 GETTABLEKS                       R44 R44 K29 ["createElement"]
      334 GETUPVAL                         R45 15
      335 DUPTABLE                         R46 K73 [{"AutomaticSize", "Layout"}]
      336 GETIMPORT                        R47 K54 [Enum.AutomaticSize.Y]
      338 SETTABLEKS                       R47 R46 K52 ["AutomaticSize"]
      340 GETIMPORT                        R47 K76 [Enum.FillDirection.Vertical]
      342 SETTABLEKS                       R47 R46 K72 ["Layout"]
      344 DUPTABLE                         R47 K81 [{"PreviewPane", "SettingsPane", "UploadAndApplyButton", "ApplyButton"}]
      345 GETUPVAL                         R48 0
      346 GETTABLEKS                       R48 R48 K29 ["createElement"]
      348 GETUPVAL                         R49 15
      349 DUPTABLE                         R50 K83 [{"BackgroundColor", "LayoutOrder", "Size"}]
      350 GETTABLEKS                       R51 R28 K84 ["PreviewBackgroundColor"]
      352 SETTABLEKS                       R51 R50 K82 ["BackgroundColor"]
      354 NAMECALL                         R51 R35 K85 ["getNextOrder"]
      356 CALL                             R51 1 1
      357 SETTABLEKS                       R51 R50 K30 ["LayoutOrder"]
      359 GETIMPORT                        R51 K68 [UDim2.new]
      361 LOADN                            R52 1
      362 LOADN                            R53 0
      363 LOADN                            R54 0
      364 GETTABLEKS                       R55 R28 K86 ["PreviewHeight"]
      366 CALL                             R51 4 1
      367 SETTABLEKS                       R51 R50 K31 ["Size"]
      369 DUPTABLE                         R51 K88 [{"Preview"}]
      370 GETUPVAL                         R52 0
      371 GETTABLEKS                       R52 R52 K29 ["createElement"]
      373 GETUPVAL                         R53 20
      374 DUPTABLE                         R54 K95 [{["AnchorPoint"], ["BackgroundColor"], ["DisableHover"] = True, ["DisableZoom"] = True, ["Material"], ["MaterialPreviewGeometryType"], ["OnRightClick"], ["Position"], ["Size"]}]
      375 GETIMPORT                        R55 K67 [Vector2.new]
      377 LOADK                            R56 K96 [0.5]
      378 LOADN                            R57 0
      379 CALL                             R55 2 1
      380 SETTABLEKS                       R55 R54 K59 ["AnchorPoint"]
      382 GETTABLEKS                       R55 R28 K84 ["PreviewBackgroundColor"]
      384 SETTABLEKS                       R55 R54 K82 ["BackgroundColor"]
      386 SETTABLEKS                       R2 R54 K92 ["Material"]
      388 SETTABLEKS                       R32 R54 K93 ["MaterialPreviewGeometryType"]
      390 SETTABLEKS                       R34 R54 K94 ["OnRightClick"]
      392 GETIMPORT                        R55 K48 [UDim2.fromScale]
      394 LOADK                            R56 K96 [0.5]
      395 LOADN                            R57 0
      396 CALL                             R55 2 1
      397 SETTABLEKS                       R55 R54 K60 ["Position"]
      399 GETIMPORT                        R55 K98 [UDim2.fromOffset]
      401 GETTABLEKS                       R56 R28 K86 ["PreviewHeight"]
      403 GETTABLEKS                       R57 R28 K86 ["PreviewHeight"]
      405 CALL                             R55 2 1
      406 SETTABLEKS                       R55 R54 K31 ["Size"]
      408 CALL                             R52 2 1
      409 SETTABLEKS                       R52 R51 K87 ["Preview"]
      411 CALL                             R48 3 1
      412 SETTABLEKS                       R48 R47 K77 ["PreviewPane"]
      414 GETUPVAL                         R48 0
      415 GETTABLEKS                       R48 R48 K29 ["createElement"]
      417 GETUPVAL                         R49 15
      418 DUPTABLE                         R50 K99 [{"AutomaticSize", "LayoutOrder"}]
      419 GETIMPORT                        R51 K54 [Enum.AutomaticSize.Y]
      421 SETTABLEKS                       R51 R50 K52 ["AutomaticSize"]
      423 NAMECALL                         R51 R35 K85 ["getNextOrder"]
      425 CALL                             R51 1 1
      426 SETTABLEKS                       R51 R50 K30 ["LayoutOrder"]
      428 DUPTABLE                         R51 K101 [{"Settings"}]
      429 GETUPVAL                         R52 0
      430 GETTABLEKS                       R52 R52 K29 ["createElement"]
      432 GETUPVAL                         R53 15
      433 DUPTABLE                         R54 K104 [{"AnchorPoint", "AutomaticSize", "Layout", "LayoutOrder", "Padding", "Position", "Size", "Spacing"}]
      434 GETIMPORT                        R55 K67 [Vector2.new]
      436 LOADK                            R56 K96 [0.5]
      437 LOADN                            R57 0
      438 CALL                             R55 2 1
      439 SETTABLEKS                       R55 R54 K59 ["AnchorPoint"]
      441 GETIMPORT                        R55 K54 [Enum.AutomaticSize.Y]
      443 SETTABLEKS                       R55 R54 K52 ["AutomaticSize"]
      445 GETIMPORT                        R55 K76 [Enum.FillDirection.Vertical]
      447 SETTABLEKS                       R55 R54 K72 ["Layout"]
      449 NAMECALL                         R55 R35 K85 ["getNextOrder"]
      451 CALL                             R55 1 1
      452 SETTABLEKS                       R55 R54 K30 ["LayoutOrder"]
      454 GETTABLEKS                       R55 R28 K105 ["SettingsPadding"]
      456 SETTABLEKS                       R55 R54 K102 ["Padding"]
      458 GETIMPORT                        R55 K48 [UDim2.fromScale]
      460 LOADK                            R56 K96 [0.5]
      461 LOADN                            R57 0
      462 CALL                             R55 2 1
      463 SETTABLEKS                       R55 R54 K60 ["Position"]
      465 GETIMPORT                        R55 K98 [UDim2.fromOffset]
      467 LOADN                            R56 300
      468 LOADN                            R57 0
      469 CALL                             R55 2 1
      470 SETTABLEKS                       R55 R54 K31 ["Size"]
      472 GETTABLEKS                       R55 R28 K106 ["SettingSpacing"]
      474 SETTABLEKS                       R55 R54 K103 ["Spacing"]
      476 DUPTABLE                         R55 K110 [{"StudsPerTileSetting", "MaterialPatternSetting", "NameSetting", "BaseMaterial"}]
      477 GETUPVAL                         R56 0
      478 GETTABLEKS                       R56 R56 K29 ["createElement"]
      480 GETUPVAL                         R57 21
      481 DUPTABLE                         R58 K118 [{["LabelWidth"], ["LayoutOrder"], ["Min"], ["Max"], ["OnFormatValue"], ["OnValueChanged"], ["ShowValueLabel"] = False, ["Size"], ["SnapIncrement"], ["Text"], ["Value"]}]
      482 SETTABLEKS                       R29 R58 K23 ["LabelWidth"]
      484 NAMECALL                         R59 R35 K85 ["getNextOrder"]
      486 CALL                             R59 1 1
      487 SETTABLEKS                       R59 R58 K30 ["LayoutOrder"]
      489 GETUPVAL                         R59 22
      490 GETTABLEKS                       R59 R59 K119 ["STUDS_PER_TILE_MIN"]
      492 SETTABLEKS                       R59 R58 K111 ["Min"]
      494 GETUPVAL                         R59 22
      495 GETTABLEKS                       R59 R59 K120 ["STUDS_PER_TILE_MAX"]
      497 SETTABLEKS                       R59 R58 K112 ["Max"]
      499 GETUPVAL                         R59 23
      500 SETTABLEKS                       R59 R58 K113 ["OnFormatValue"]
      502 SETTABLEKS                       R17 R58 K114 ["OnValueChanged"]
      504 GETTABLEKS                       R59 R28 K121 ["StudsPerTileSettingSize"]
      506 SETTABLEKS                       R59 R58 K31 ["Size"]
      508 GETUPVAL                         R59 22
      509 GETTABLEKS                       R59 R59 K122 ["STUDS_PER_TILE_SNAP_INCREMENT"]
      511 SETTABLEKS                       R59 R58 K116 ["SnapIncrement"]
      513 LOADK                            R61 K13 ["Editor"]
      514 LOADK                            R62 K123 ["StudsPerTile"]
      515 NAMECALL                         R59 R15 K15 ["getText"]
      517 CALL                             R59 3 1
      518 SETTABLEKS                       R59 R58 K43 ["Text"]
      520 GETTABLEKS                       R59 R2 K123 ["StudsPerTile"]
      522 SETTABLEKS                       R59 R58 K117 ["Value"]
      524 CALL                             R56 2 1
      525 SETTABLEKS                       R56 R55 K107 ["StudsPerTileSetting"]
      527 GETUPVAL                         R56 0
      528 GETTABLEKS                       R56 R56 K29 ["createElement"]
      530 GETUPVAL                         R57 24
      531 DUPTABLE                         R58 K126 [{["LayoutOrder"], ["LabelWidth"], ["OnValueChanged"], ["Text"], ["UseCheckbox"] = True, ["CheckboxLabel"], ["Value"]}]
      532 NAMECALL                         R59 R35 K85 ["getNextOrder"]
      534 CALL                             R59 1 1
      535 SETTABLEKS                       R59 R58 K30 ["LayoutOrder"]
      537 SETTABLEKS                       R29 R58 K23 ["LabelWidth"]
      539 SETTABLEKS                       R19 R58 K114 ["OnValueChanged"]
      541 LOADK                            R61 K13 ["Editor"]
      542 LOADK                            R62 K127 ["MaterialPattern"]
      543 NAMECALL                         R59 R15 K15 ["getText"]
      545 CALL                             R59 3 1
      546 SETTABLEKS                       R59 R58 K43 ["Text"]
      548 LOADK                            R61 K13 ["Editor"]
      549 LOADK                            R62 K128 ["MaterialPatternOrganic"]
      550 NAMECALL                         R59 R15 K15 ["getText"]
      552 CALL                             R59 3 1
      553 SETTABLEKS                       R59 R58 K125 ["CheckboxLabel"]
      555 GETTABLEKS                       R60 R2 K127 ["MaterialPattern"]
      557 GETIMPORT                        R61 K130 [Enum.MaterialPattern.Organic]
      559 JUMPIFEQ                         R60 R61 ; [+2]
      561 LOADB                            R59 0 +1
      562 LOADB                            R59 1
      563 SETTABLEKS                       R59 R58 K117 ["Value"]
      565 CALL                             R56 2 1
      566 SETTABLEKS                       R56 R55 K108 ["MaterialPatternSetting"]
      568 GETUPVAL                         R56 0
      569 GETTABLEKS                       R56 R56 K29 ["createElement"]
      571 GETUPVAL                         R57 25
      572 DUPTABLE                         R58 K132 [{"LayoutOrder", "LabelWidth", "MaxLength", "OnValueChanged", "Text", "Value"}]
      573 NAMECALL                         R59 R35 K85 ["getNextOrder"]
      575 CALL                             R59 1 1
      576 SETTABLEKS                       R59 R58 K30 ["LayoutOrder"]
      578 SETTABLEKS                       R29 R58 K23 ["LabelWidth"]
      580 GETUPVAL                         R59 22
      581 GETTABLEKS                       R59 R59 K133 ["INSTANCE_NAME_MAX_LENGTH"]
      583 SETTABLEKS                       R59 R58 K131 ["MaxLength"]
      585 SETTABLEKS                       R18 R58 K114 ["OnValueChanged"]
      587 LOADK                            R61 K13 ["Editor"]
      588 LOADK                            R62 K11 ["Name"]
      589 NAMECALL                         R59 R15 K15 ["getText"]
      591 CALL                             R59 3 1
      592 SETTABLEKS                       R59 R58 K43 ["Text"]
      594 GETTABLEKS                       R59 R2 K11 ["Name"]
      596 SETTABLEKS                       R59 R58 K117 ["Value"]
      598 CALL                             R56 2 1
      599 SETTABLEKS                       R56 R55 K109 ["NameSetting"]
      601 GETUPVAL                         R56 0
      602 GETTABLEKS                       R56 R56 K29 ["createElement"]
      604 GETUPVAL                         R57 26
      605 DUPTABLE                         R58 K137 [{"Items", "LayoutOrder", "LabelWidth", "OnValueChanged", "PlaceholderText", "Text", "ErrorText", "Value"}]
      606 GETUPVAL                         R59 27
      607 SETTABLEKS                       R59 R58 K134 ["Items"]
      609 NAMECALL                         R59 R35 K85 ["getNextOrder"]
      611 CALL                             R59 1 1
      612 SETTABLEKS                       R59 R58 K30 ["LayoutOrder"]
      614 SETTABLEKS                       R29 R58 K23 ["LabelWidth"]
      616 SETTABLEKS                       R20 R58 K114 ["OnValueChanged"]
      618 LOADK                            R61 K13 ["Editor"]
      619 LOADK                            R62 K138 ["BaseMaterialPlaceholderText"]
      620 NAMECALL                         R59 R15 K15 ["getText"]
      622 CALL                             R59 3 1
      623 SETTABLEKS                       R59 R58 K135 ["PlaceholderText"]
      625 LOADK                            R61 K13 ["Editor"]
      626 LOADK                            R62 K10 ["BaseMaterial"]
      627 NAMECALL                         R59 R15 K15 ["getText"]
      629 CALL                             R59 3 1
      630 SETTABLEKS                       R59 R58 K43 ["Text"]
      632 SETTABLEKS                       R16 R58 K136 ["ErrorText"]
      634 SETTABLEKS                       R14 R58 K117 ["Value"]
      636 CALL                             R56 2 1
      637 SETTABLEKS                       R56 R55 K10 ["BaseMaterial"]
      639 CALL                             R52 3 1
      640 SETTABLEKS                       R52 R51 K100 ["Settings"]
      642 CALL                             R48 3 1
      643 SETTABLEKS                       R48 R47 K78 ["SettingsPane"]
      645 JUMPIF                           R25 ; [+22]
      646 GETUPVAL                         R48 0
      647 GETTABLEKS                       R48 R48 K29 ["createElement"]
      649 GETUPVAL                         R49 28
      650 DUPTABLE                         R50 K141 [{"LayoutOrder", "Size", "Text", "isLoading", "onClick"}]
      651 NAMECALL                         R51 R35 K85 ["getNextOrder"]
      653 CALL                             R51 1 1
      654 SETTABLEKS                       R51 R50 K30 ["LayoutOrder"]
      656 GETTABLEKS                       R51 R28 K142 ["UploadAndApplyButtonSize"]
      658 SETTABLEKS                       R51 R50 K31 ["Size"]
      660 SETTABLEKS                       R27 R50 K43 ["Text"]
      662 SETTABLEKS                       R26 R50 K139 ["isLoading"]
      664 SETTABLEKS                       R23 R50 K140 ["onClick"]
      666 CALL                             R48 2 1
      667 JUMP                             ; [+1]
      668 LOADNIL                          R48
      669 SETTABLEKS                       R48 R47 K79 ["UploadAndApplyButton"]
      671 JUMPIFNOT                        R25 ; [+37]
      672 GETUPVAL                         R48 0
      673 GETTABLEKS                       R48 R48 K29 ["createElement"]
      675 GETUPVAL                         R49 29
      676 DUPTABLE                         R50 K144 [{"AutomaticSize", "BackgroundColor", "LayoutOrder", "LeftIcon", "OnClick", "Size", "Text"}]
      677 GETIMPORT                        R51 K146 [Enum.AutomaticSize.X]
      679 SETTABLEKS                       R51 R50 K52 ["AutomaticSize"]
      681 GETTABLEKS                       R51 R28 K147 ["ApplyButtonBackgroundColor"]
      683 SETTABLEKS                       R51 R50 K82 ["BackgroundColor"]
      685 NAMECALL                         R51 R35 K85 ["getNextOrder"]
      687 CALL                             R51 1 1
      688 SETTABLEKS                       R51 R50 K30 ["LayoutOrder"]
      690 GETTABLEKS                       R51 R28 K148 ["ApplyButtonIcon"]
      692 SETTABLEKS                       R51 R50 K143 ["LeftIcon"]
      694 SETTABLEKS                       R22 R50 K62 ["OnClick"]
      696 GETTABLEKS                       R51 R28 K149 ["ApplyButtonSize"]
      698 SETTABLEKS                       R51 R50 K31 ["Size"]
      700 LOADK                            R53 K13 ["Editor"]
      701 LOADK                            R54 K150 ["ApplyVariant"]
      702 NAMECALL                         R51 R15 K15 ["getText"]
      704 CALL                             R51 3 1
      705 SETTABLEKS                       R51 R50 K43 ["Text"]
      707 CALL                             R48 2 1
      708 JUMP                             ; [+1]
      709 LOADNIL                          R48
      710 SETTABLEKS                       R48 R47 K80 ["ApplyButton"]
      712 CALL                             R44 3 1
      713 SETTABLEKS                       R44 R43 K57 ["Content"]
      715 CALL                             R40 3 1
      716 SETTABLEKS                       R40 R39 K36 ["ScrollingFrame"]
      718 CALL                             R36 3 -1
      719 CLOSEUPVALS                      R32
      720 RETURN                           R36 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["MaterialService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Framework"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["MaterialFramework"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K10 ["Packages"]
       31 GETTABLEKS                       R5 R5 K13 ["React"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R0 K10 ["Packages"]
       38 GETTABLEKS                       R6 R6 K14 ["ReactUtils"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R5 K15 ["LUAU_ANALYZE_ERROR"]
       43 GETTABLEKS                       R7 R2 K16 ["ContextServices"]
       45 GETTABLEKS                       R8 R7 K17 ["Localization"]
       47 GETTABLEKS                       R9 R7 K18 ["Stylizer"]
       49 GETTABLEKS                       R10 R2 K19 ["UI"]
       51 GETTABLEKS                       R11 R10 K20 ["Button"]
       53 GETTABLEKS                       R12 R10 K21 ["IconButton"]
       55 GETTABLEKS                       R13 R10 K22 ["KeyboardListener"]
       57 GETTABLEKS                       R14 R10 K23 ["Pane"]
       59 GETTABLEKS                       R15 R10 K24 ["ScrollingFrame"]
       61 GETTABLEKS                       R16 R10 K25 ["showContextMenu"]
       63 GETTABLEKS                       R17 R2 K26 ["Util"]
       65 GETTABLEKS                       R17 R17 K27 ["LayoutOrderIterator"]
       67 GETTABLEKS                       R18 R3 K28 ["Components"]
       69 GETTABLEKS                       R18 R18 K29 ["MaterialPreview"]
       71 GETTABLEKS                       R19 R3 K30 ["Enums"]
       73 GETTABLEKS                       R19 R19 K31 ["MaterialPreviewGeometryType"]
       75 GETTABLEKS                       R20 R0 K32 ["Src"]
       77 GETTABLEKS                       R20 R20 K28 ["Components"]
       79 GETIMPORT                        R21 K9 [require]
       81 GETTABLEKS                       R22 R20 K33 ["LoadingButton"]
       83 CALL                             R21 1 1
       84 GETIMPORT                        R22 K9 [require]
       86 GETTABLEKS                       R23 R20 K34 ["Settings"]
       88 GETTABLEKS                       R23 R23 K35 ["SelectInputSetting"]
       90 CALL                             R22 1 1
       91 GETIMPORT                        R23 K9 [require]
       93 GETTABLEKS                       R24 R20 K34 ["Settings"]
       95 GETTABLEKS                       R24 R24 K36 ["SliderSetting"]
       97 CALL                             R23 1 1
       98 GETIMPORT                        R24 K9 [require]
      100 GETTABLEKS                       R25 R20 K34 ["Settings"]
      102 GETTABLEKS                       R25 R25 K37 ["TextSetting"]
      104 CALL                             R24 1 1
      105 GETIMPORT                        R25 K9 [require]
      107 GETTABLEKS                       R26 R20 K34 ["Settings"]
      109 GETTABLEKS                       R26 R26 K38 ["ToggleButtonSetting"]
      111 CALL                             R25 1 1
      112 GETIMPORT                        R26 K5 [game]
      114 LOADK                            R28 K39 ["MaterialGeneratorEditorSinkInput"]
      115 LOADB                            R29 0
      116 NAMECALL                         R26 R26 K40 ["DefineFastFlag"]
      118 CALL                             R26 3 1
      119 GETIMPORT                        R27 K9 [require]
      121 GETTABLEKS                       R28 R0 K32 ["Src"]
      123 GETTABLEKS                       R28 R28 K41 ["Hooks"]
      125 GETTABLEKS                       R28 R28 K42 ["useSelectedParts"]
      127 CALL                             R27 1 1
      128 GETIMPORT                        R28 K9 [require]
      130 GETTABLEKS                       R29 R0 K32 ["Src"]
      132 GETTABLEKS                       R29 R29 K43 ["Resources"]
      134 GETTABLEKS                       R29 R29 K44 ["Theme"]
      136 CALL                             R28 1 1
      137 GETTABLEKS                       R29 R0 K32 ["Src"]
      139 GETTABLEKS                       R29 R29 K26 ["Util"]
      141 GETIMPORT                        R30 K9 [require]
      143 GETTABLEKS                       R31 R29 K45 ["Constants"]
      145 CALL                             R30 1 1
      146 GETIMPORT                        R31 K9 [require]
      148 GETTABLEKS                       R32 R29 K46 ["GeneratedMaterialsContext"]
      150 CALL                             R31 1 1
      151 GETIMPORT                        R32 K9 [require]
      153 GETTABLEKS                       R33 R29 K47 ["GenerationContext"]
      155 CALL                             R32 1 1
      156 GETIMPORT                        R33 K9 [require]
      158 GETTABLEKS                       R34 R29 K48 ["PluginSettingsContext"]
      160 CALL                             R33 1 1
      161 GETIMPORT                        R34 K9 [require]
      163 GETTABLEKS                       R35 R29 K49 ["PreviewContext"]
      165 CALL                             R34 1 1
      166 GETIMPORT                        R35 K9 [require]
      168 GETTABLEKS                       R36 R29 K50 ["SupportedMaterials"]
      170 CALL                             R35 1 1
      171 GETTABLEKS                       R36 R30 K51 ["SETTING_GEOMETRY_TYPE"]
      173 DUPCLOSURE                       R37 K52 [PROTO_0]
      174 GETTABLEKS                       R38 R35 K53 ["getNames"]
      176 CALL                             R38 0 1
      177 DUPCLOSURE                       R39 K54 [PROTO_18]
      178 CAPTURE                          VAL R4
      179 CAPTURE                          VAL R34
      180 CAPTURE                          VAL R6
      181 CAPTURE                          VAL R31
      182 CAPTURE                          VAL R32
      183 CAPTURE                          VAL R8
      184 CAPTURE                          VAL R27
      185 CAPTURE                          VAL R1
      186 CAPTURE                          VAL R9
      187 CAPTURE                          VAL R33
      188 CAPTURE                          VAL R36
      189 CAPTURE                          VAL R19
      190 CAPTURE                          VAL R7
      191 CAPTURE                          VAL R16
      192 CAPTURE                          VAL R17
      193 CAPTURE                          VAL R14
      194 CAPTURE                          VAL R26
      195 CAPTURE                          VAL R15
      196 CAPTURE                          VAL R11
      197 CAPTURE                          VAL R13
      198 CAPTURE                          VAL R18
      199 CAPTURE                          VAL R23
      200 CAPTURE                          VAL R30
      201 CAPTURE                          VAL R37
      202 CAPTURE                          VAL R25
      203 CAPTURE                          VAL R24
      204 CAPTURE                          VAL R22
      205 CAPTURE                          VAL R38
      206 CAPTURE                          VAL R21
      207 CAPTURE                          VAL R12
      208 RETURN                           R39 1
