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
        2 DUPTABLE                         R1 K4 [{"Checked", "Text", "Enabled", "OnItemClicked"}]
        3 GETUPVAL                         R3 0
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K5 ["Plane"]
        7 JUMPIFEQ                         R3 R4 ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 SETTABLEKS                       R2 R1 K0 ["Checked"]
       13 GETUPVAL                         R2 2
       14 LOADK                            R4 K6 ["Browser"]
       15 LOADK                            R5 K7 ["PlanePreview"]
       16 NAMECALL                         R2 R2 K8 ["getText"]
       18 CALL                             R2 3 1
       19 SETTABLEKS                       R2 R1 K1 ["Text"]
       21 LOADB                            R2 1
       22 SETTABLEKS                       R2 R1 K2 ["Enabled"]
       24 NEWCLOSURE                       R2 P0
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          UPVAL U4
       28 SETTABLEKS                       R2 R1 K3 ["OnItemClicked"]
       30 DUPTABLE                         R2 K4 [{"Checked", "Text", "Enabled", "OnItemClicked"}]
       31 GETUPVAL                         R4 0
       32 GETUPVAL                         R5 1
       33 GETTABLEKS                       R5 R5 K9 ["Sphere"]
       35 JUMPIFEQ                         R4 R5 ; [+2]
       37 LOADB                            R3 0 +1
       38 LOADB                            R3 1
       39 SETTABLEKS                       R3 R2 K0 ["Checked"]
       41 GETUPVAL                         R3 2
       42 LOADK                            R5 K6 ["Browser"]
       43 LOADK                            R6 K10 ["SpherePreview"]
       44 NAMECALL                         R3 R3 K8 ["getText"]
       46 CALL                             R3 3 1
       47 SETTABLEKS                       R3 R2 K1 ["Text"]
       49 LOADB                            R3 1
       50 SETTABLEKS                       R3 R2 K2 ["Enabled"]
       52 NEWCLOSURE                       R3 P1
       53 CAPTURE                          UPVAL U1
       54 CAPTURE                          UPVAL U3
       55 CAPTURE                          UPVAL U4
       56 SETTABLEKS                       R3 R2 K3 ["OnItemClicked"]
       58 SETLIST                          R0 R1 2 [1]
       60 GETIMPORT                        R1 K13 [task.spawn]
       62 NEWCLOSURE                       R2 P2
       63 CAPTURE                          UPVAL U5
       64 CAPTURE                          UPVAL U6
       65 CAPTURE                          VAL R0
       66 CALL                             R1 1 0
       67 RETURN                           R0 0

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
      248 DUPTABLE                         R38 K33 [{"LayoutOrder", "Size", "Style"}]
      249 GETTABLEKS                       R39 R0 K30 ["LayoutOrder"]
      251 SETTABLEKS                       R39 R38 K30 ["LayoutOrder"]
      253 GETTABLEKS                       R39 R0 K31 ["Size"]
      255 SETTABLEKS                       R39 R38 K31 ["Size"]
      257 LOADK                            R39 K34 ["Box"]
      258 SETTABLEKS                       R39 R38 K32 ["Style"]
      260 DUPTABLE                         R39 K37 [{"SinkInput", "ScrollingFrame"}]
      261 GETUPVAL                         R41 16
      262 JUMPIFNOT                        R41 ; [+23]
      263 GETUPVAL                         R40 0
      264 GETTABLEKS                       R40 R40 K29 ["createElement"]
      266 LOADK                            R41 K38 ["TextButton"]
      267 DUPTABLE                         R42 K42 [{"BackgroundTransparency", "Interactable", "Size", "Text"}]
      268 LOADN                            R43 1
      269 SETTABLEKS                       R43 R42 K39 ["BackgroundTransparency"]
      271 LOADB                            R43 0
      272 SETTABLEKS                       R43 R42 K40 ["Interactable"]
      274 GETIMPORT                        R43 K45 [UDim2.fromScale]
      276 LOADN                            R44 1
      277 LOADN                            R45 1
      278 CALL                             R43 2 1
      279 SETTABLEKS                       R43 R42 K31 ["Size"]
      281 LOADK                            R43 K46 [""]
      282 SETTABLEKS                       R43 R42 K41 ["Text"]
      284 CALL                             R40 2 1
      285 JUMP                             ; [+1]
      286 LOADNIL                          R40
      287 SETTABLEKS                       R40 R39 K35 ["SinkInput"]
      289 GETUPVAL                         R40 0
      290 GETTABLEKS                       R40 R40 K29 ["createElement"]
      292 GETUPVAL                         R41 17
      293 DUPTABLE                         R42 K48 [{"AutomaticCanvasSize"}]
      294 GETIMPORT                        R43 K52 [Enum.AutomaticSize.Y]
      296 SETTABLEKS                       R43 R42 K47 ["AutomaticCanvasSize"]
      298 DUPTABLE                         R43 K56 [{"CloseButton", "KeyboardListener", "Content"}]
      299 GETUPVAL                         R44 0
      300 GETTABLEKS                       R44 R44 K29 ["createElement"]
      302 GETUPVAL                         R45 18
      303 DUPTABLE                         R46 K61 [{"AnchorPoint", "Position", "Size", "Style", "OnClick", "ZIndex"}]
      304 GETIMPORT                        R47 K63 [Vector2.new]
      306 LOADN                            R48 1
      307 LOADN                            R49 0
      308 CALL                             R47 2 1
      309 SETTABLEKS                       R47 R46 K57 ["AnchorPoint"]
      311 GETIMPORT                        R47 K64 [UDim2.new]
      313 LOADN                            R48 1
      314 LOADN                            R49 254
      315 LOADN                            R50 0
      316 LOADN                            R51 2
      317 CALL                             R47 4 1
      318 SETTABLEKS                       R47 R46 K58 ["Position"]
      320 GETTABLEKS                       R47 R28 K65 ["CloseButtonSize"]
      322 SETTABLEKS                       R47 R46 K31 ["Size"]
      324 LOADK                            R47 K66 ["Close"]
      325 SETTABLEKS                       R47 R46 K32 ["Style"]
      327 NEWCLOSURE                       R47 P9
      328 CAPTURE                          VAL R3
      329 SETTABLEKS                       R47 R46 K59 ["OnClick"]
      331 LOADN                            R47 232
      332 SETTABLEKS                       R47 R46 K60 ["ZIndex"]
      334 CALL                             R44 2 1
      335 SETTABLEKS                       R44 R43 K53 ["CloseButton"]
      337 GETUPVAL                         R44 0
      338 GETTABLEKS                       R44 R44 K29 ["createElement"]
      340 GETUPVAL                         R45 19
      341 DUPTABLE                         R46 K68 [{"OnKeyPressed"}]
      342 NEWCLOSURE                       R47 P10
      343 CAPTURE                          VAL R3
      344 SETTABLEKS                       R47 R46 K67 ["OnKeyPressed"]
      346 CALL                             R44 2 1
      347 SETTABLEKS                       R44 R43 K54 ["KeyboardListener"]
      349 GETUPVAL                         R44 0
      350 GETTABLEKS                       R44 R44 K29 ["createElement"]
      352 GETUPVAL                         R45 15
      353 DUPTABLE                         R46 K70 [{"AutomaticSize", "Layout"}]
      354 GETIMPORT                        R47 K52 [Enum.AutomaticSize.Y]
      356 SETTABLEKS                       R47 R46 K50 ["AutomaticSize"]
      358 GETIMPORT                        R47 K73 [Enum.FillDirection.Vertical]
      360 SETTABLEKS                       R47 R46 K69 ["Layout"]
      362 DUPTABLE                         R47 K78 [{"PreviewPane", "SettingsPane", "UploadAndApplyButton", "ApplyButton"}]
      363 GETUPVAL                         R48 0
      364 GETTABLEKS                       R48 R48 K29 ["createElement"]
      366 GETUPVAL                         R49 15
      367 DUPTABLE                         R50 K80 [{"BackgroundColor", "LayoutOrder", "Size"}]
      368 GETTABLEKS                       R51 R28 K81 ["PreviewBackgroundColor"]
      370 SETTABLEKS                       R51 R50 K79 ["BackgroundColor"]
      372 NAMECALL                         R51 R35 K82 ["getNextOrder"]
      374 CALL                             R51 1 1
      375 SETTABLEKS                       R51 R50 K30 ["LayoutOrder"]
      377 GETIMPORT                        R51 K64 [UDim2.new]
      379 LOADN                            R52 1
      380 LOADN                            R53 0
      381 LOADN                            R54 0
      382 GETTABLEKS                       R55 R28 K83 ["PreviewHeight"]
      384 CALL                             R51 4 1
      385 SETTABLEKS                       R51 R50 K31 ["Size"]
      387 DUPTABLE                         R51 K85 [{"Preview"}]
      388 GETUPVAL                         R52 0
      389 GETTABLEKS                       R52 R52 K29 ["createElement"]
      391 GETUPVAL                         R53 20
      392 DUPTABLE                         R54 K91 [{"AnchorPoint", "BackgroundColor", "DisableHover", "DisableZoom", "Material", "MaterialPreviewGeometryType", "OnRightClick", "Position", "Size"}]
      393 GETIMPORT                        R55 K63 [Vector2.new]
      395 LOADK                            R56 K92 [0.5]
      396 LOADN                            R57 0
      397 CALL                             R55 2 1
      398 SETTABLEKS                       R55 R54 K57 ["AnchorPoint"]
      400 GETTABLEKS                       R55 R28 K81 ["PreviewBackgroundColor"]
      402 SETTABLEKS                       R55 R54 K79 ["BackgroundColor"]
      404 LOADB                            R55 1
      405 SETTABLEKS                       R55 R54 K86 ["DisableHover"]
      407 LOADB                            R55 1
      408 SETTABLEKS                       R55 R54 K87 ["DisableZoom"]
      410 SETTABLEKS                       R2 R54 K88 ["Material"]
      412 SETTABLEKS                       R32 R54 K89 ["MaterialPreviewGeometryType"]
      414 SETTABLEKS                       R34 R54 K90 ["OnRightClick"]
      416 GETIMPORT                        R55 K45 [UDim2.fromScale]
      418 LOADK                            R56 K92 [0.5]
      419 LOADN                            R57 0
      420 CALL                             R55 2 1
      421 SETTABLEKS                       R55 R54 K58 ["Position"]
      423 GETIMPORT                        R55 K94 [UDim2.fromOffset]
      425 GETTABLEKS                       R56 R28 K83 ["PreviewHeight"]
      427 GETTABLEKS                       R57 R28 K83 ["PreviewHeight"]
      429 CALL                             R55 2 1
      430 SETTABLEKS                       R55 R54 K31 ["Size"]
      432 CALL                             R52 2 1
      433 SETTABLEKS                       R52 R51 K84 ["Preview"]
      435 CALL                             R48 3 1
      436 SETTABLEKS                       R48 R47 K74 ["PreviewPane"]
      438 GETUPVAL                         R48 0
      439 GETTABLEKS                       R48 R48 K29 ["createElement"]
      441 GETUPVAL                         R49 15
      442 DUPTABLE                         R50 K95 [{"AutomaticSize", "LayoutOrder"}]
      443 GETIMPORT                        R51 K52 [Enum.AutomaticSize.Y]
      445 SETTABLEKS                       R51 R50 K50 ["AutomaticSize"]
      447 NAMECALL                         R51 R35 K82 ["getNextOrder"]
      449 CALL                             R51 1 1
      450 SETTABLEKS                       R51 R50 K30 ["LayoutOrder"]
      452 DUPTABLE                         R51 K97 [{"Settings"}]
      453 GETUPVAL                         R52 0
      454 GETTABLEKS                       R52 R52 K29 ["createElement"]
      456 GETUPVAL                         R53 15
      457 DUPTABLE                         R54 K100 [{"AnchorPoint", "AutomaticSize", "Layout", "LayoutOrder", "Padding", "Position", "Size", "Spacing"}]
      458 GETIMPORT                        R55 K63 [Vector2.new]
      460 LOADK                            R56 K92 [0.5]
      461 LOADN                            R57 0
      462 CALL                             R55 2 1
      463 SETTABLEKS                       R55 R54 K57 ["AnchorPoint"]
      465 GETIMPORT                        R55 K52 [Enum.AutomaticSize.Y]
      467 SETTABLEKS                       R55 R54 K50 ["AutomaticSize"]
      469 GETIMPORT                        R55 K73 [Enum.FillDirection.Vertical]
      471 SETTABLEKS                       R55 R54 K69 ["Layout"]
      473 NAMECALL                         R55 R35 K82 ["getNextOrder"]
      475 CALL                             R55 1 1
      476 SETTABLEKS                       R55 R54 K30 ["LayoutOrder"]
      478 GETTABLEKS                       R55 R28 K101 ["SettingsPadding"]
      480 SETTABLEKS                       R55 R54 K98 ["Padding"]
      482 GETIMPORT                        R55 K45 [UDim2.fromScale]
      484 LOADK                            R56 K92 [0.5]
      485 LOADN                            R57 0
      486 CALL                             R55 2 1
      487 SETTABLEKS                       R55 R54 K58 ["Position"]
      489 GETIMPORT                        R55 K94 [UDim2.fromOffset]
      491 LOADN                            R56 44
      492 LOADN                            R57 0
      493 CALL                             R55 2 1
      494 SETTABLEKS                       R55 R54 K31 ["Size"]
      496 GETTABLEKS                       R55 R28 K102 ["SettingSpacing"]
      498 SETTABLEKS                       R55 R54 K99 ["Spacing"]
      500 DUPTABLE                         R55 K106 [{"StudsPerTileSetting", "MaterialPatternSetting", "NameSetting", "BaseMaterial"}]
      501 GETUPVAL                         R56 0
      502 GETTABLEKS                       R56 R56 K29 ["createElement"]
      504 GETUPVAL                         R57 21
      505 DUPTABLE                         R58 K114 [{"LabelWidth", "LayoutOrder", "Min", "Max", "OnFormatValue", "OnValueChanged", "ShowValueLabel", "Size", "SnapIncrement", "Text", "Value"}]
      506 SETTABLEKS                       R29 R58 K23 ["LabelWidth"]
      508 NAMECALL                         R59 R35 K82 ["getNextOrder"]
      510 CALL                             R59 1 1
      511 SETTABLEKS                       R59 R58 K30 ["LayoutOrder"]
      513 GETUPVAL                         R59 22
      514 GETTABLEKS                       R59 R59 K115 ["STUDS_PER_TILE_MIN"]
      516 SETTABLEKS                       R59 R58 K107 ["Min"]
      518 GETUPVAL                         R59 22
      519 GETTABLEKS                       R59 R59 K116 ["STUDS_PER_TILE_MAX"]
      521 SETTABLEKS                       R59 R58 K108 ["Max"]
      523 GETUPVAL                         R59 23
      524 SETTABLEKS                       R59 R58 K109 ["OnFormatValue"]
      526 SETTABLEKS                       R17 R58 K110 ["OnValueChanged"]
      528 LOADB                            R59 0
      529 SETTABLEKS                       R59 R58 K111 ["ShowValueLabel"]
      531 GETTABLEKS                       R59 R28 K117 ["StudsPerTileSettingSize"]
      533 SETTABLEKS                       R59 R58 K31 ["Size"]
      535 GETUPVAL                         R59 22
      536 GETTABLEKS                       R59 R59 K118 ["STUDS_PER_TILE_SNAP_INCREMENT"]
      538 SETTABLEKS                       R59 R58 K112 ["SnapIncrement"]
      540 LOADK                            R61 K13 ["Editor"]
      541 LOADK                            R62 K119 ["StudsPerTile"]
      542 NAMECALL                         R59 R15 K15 ["getText"]
      544 CALL                             R59 3 1
      545 SETTABLEKS                       R59 R58 K41 ["Text"]
      547 GETTABLEKS                       R59 R2 K119 ["StudsPerTile"]
      549 SETTABLEKS                       R59 R58 K113 ["Value"]
      551 CALL                             R56 2 1
      552 SETTABLEKS                       R56 R55 K103 ["StudsPerTileSetting"]
      554 GETUPVAL                         R56 0
      555 GETTABLEKS                       R56 R56 K29 ["createElement"]
      557 GETUPVAL                         R57 24
      558 DUPTABLE                         R58 K122 [{"LayoutOrder", "LabelWidth", "OnValueChanged", "Text", "UseCheckbox", "CheckboxLabel", "Value"}]
      559 NAMECALL                         R59 R35 K82 ["getNextOrder"]
      561 CALL                             R59 1 1
      562 SETTABLEKS                       R59 R58 K30 ["LayoutOrder"]
      564 SETTABLEKS                       R29 R58 K23 ["LabelWidth"]
      566 SETTABLEKS                       R19 R58 K110 ["OnValueChanged"]
      568 LOADK                            R61 K13 ["Editor"]
      569 LOADK                            R62 K123 ["MaterialPattern"]
      570 NAMECALL                         R59 R15 K15 ["getText"]
      572 CALL                             R59 3 1
      573 SETTABLEKS                       R59 R58 K41 ["Text"]
      575 LOADB                            R59 1
      576 SETTABLEKS                       R59 R58 K120 ["UseCheckbox"]
      578 LOADK                            R61 K13 ["Editor"]
      579 LOADK                            R62 K124 ["MaterialPatternOrganic"]
      580 NAMECALL                         R59 R15 K15 ["getText"]
      582 CALL                             R59 3 1
      583 SETTABLEKS                       R59 R58 K121 ["CheckboxLabel"]
      585 GETTABLEKS                       R60 R2 K123 ["MaterialPattern"]
      587 GETIMPORT                        R61 K126 [Enum.MaterialPattern.Organic]
      589 JUMPIFEQ                         R60 R61 ; [+2]
      591 LOADB                            R59 0 +1
      592 LOADB                            R59 1
      593 SETTABLEKS                       R59 R58 K113 ["Value"]
      595 CALL                             R56 2 1
      596 SETTABLEKS                       R56 R55 K104 ["MaterialPatternSetting"]
      598 GETUPVAL                         R56 0
      599 GETTABLEKS                       R56 R56 K29 ["createElement"]
      601 GETUPVAL                         R57 25
      602 DUPTABLE                         R58 K128 [{"LayoutOrder", "LabelWidth", "MaxLength", "OnValueChanged", "Text", "Value"}]
      603 NAMECALL                         R59 R35 K82 ["getNextOrder"]
      605 CALL                             R59 1 1
      606 SETTABLEKS                       R59 R58 K30 ["LayoutOrder"]
      608 SETTABLEKS                       R29 R58 K23 ["LabelWidth"]
      610 GETUPVAL                         R59 22
      611 GETTABLEKS                       R59 R59 K129 ["INSTANCE_NAME_MAX_LENGTH"]
      613 SETTABLEKS                       R59 R58 K127 ["MaxLength"]
      615 SETTABLEKS                       R18 R58 K110 ["OnValueChanged"]
      617 LOADK                            R61 K13 ["Editor"]
      618 LOADK                            R62 K11 ["Name"]
      619 NAMECALL                         R59 R15 K15 ["getText"]
      621 CALL                             R59 3 1
      622 SETTABLEKS                       R59 R58 K41 ["Text"]
      624 GETTABLEKS                       R59 R2 K11 ["Name"]
      626 SETTABLEKS                       R59 R58 K113 ["Value"]
      628 CALL                             R56 2 1
      629 SETTABLEKS                       R56 R55 K105 ["NameSetting"]
      631 GETUPVAL                         R56 0
      632 GETTABLEKS                       R56 R56 K29 ["createElement"]
      634 GETUPVAL                         R57 26
      635 DUPTABLE                         R58 K133 [{"Items", "LayoutOrder", "LabelWidth", "OnValueChanged", "PlaceholderText", "Text", "ErrorText", "Value"}]
      636 GETUPVAL                         R59 27
      637 SETTABLEKS                       R59 R58 K130 ["Items"]
      639 NAMECALL                         R59 R35 K82 ["getNextOrder"]
      641 CALL                             R59 1 1
      642 SETTABLEKS                       R59 R58 K30 ["LayoutOrder"]
      644 SETTABLEKS                       R29 R58 K23 ["LabelWidth"]
      646 SETTABLEKS                       R20 R58 K110 ["OnValueChanged"]
      648 LOADK                            R61 K13 ["Editor"]
      649 LOADK                            R62 K134 ["BaseMaterialPlaceholderText"]
      650 NAMECALL                         R59 R15 K15 ["getText"]
      652 CALL                             R59 3 1
      653 SETTABLEKS                       R59 R58 K131 ["PlaceholderText"]
      655 LOADK                            R61 K13 ["Editor"]
      656 LOADK                            R62 K10 ["BaseMaterial"]
      657 NAMECALL                         R59 R15 K15 ["getText"]
      659 CALL                             R59 3 1
      660 SETTABLEKS                       R59 R58 K41 ["Text"]
      662 SETTABLEKS                       R16 R58 K132 ["ErrorText"]
      664 SETTABLEKS                       R14 R58 K113 ["Value"]
      666 CALL                             R56 2 1
      667 SETTABLEKS                       R56 R55 K10 ["BaseMaterial"]
      669 CALL                             R52 3 1
      670 SETTABLEKS                       R52 R51 K96 ["Settings"]
      672 CALL                             R48 3 1
      673 SETTABLEKS                       R48 R47 K75 ["SettingsPane"]
      675 JUMPIF                           R25 ; [+22]
      676 GETUPVAL                         R48 0
      677 GETTABLEKS                       R48 R48 K29 ["createElement"]
      679 GETUPVAL                         R49 28
      680 DUPTABLE                         R50 K137 [{"LayoutOrder", "Size", "Text", "isLoading", "onClick"}]
      681 NAMECALL                         R51 R35 K82 ["getNextOrder"]
      683 CALL                             R51 1 1
      684 SETTABLEKS                       R51 R50 K30 ["LayoutOrder"]
      686 GETTABLEKS                       R51 R28 K138 ["UploadAndApplyButtonSize"]
      688 SETTABLEKS                       R51 R50 K31 ["Size"]
      690 SETTABLEKS                       R27 R50 K41 ["Text"]
      692 SETTABLEKS                       R26 R50 K135 ["isLoading"]
      694 SETTABLEKS                       R23 R50 K136 ["onClick"]
      696 CALL                             R48 2 1
      697 JUMP                             ; [+1]
      698 LOADNIL                          R48
      699 SETTABLEKS                       R48 R47 K76 ["UploadAndApplyButton"]
      701 JUMPIFNOT                        R25 ; [+37]
      702 GETUPVAL                         R48 0
      703 GETTABLEKS                       R48 R48 K29 ["createElement"]
      705 GETUPVAL                         R49 29
      706 DUPTABLE                         R50 K140 [{"AutomaticSize", "BackgroundColor", "LayoutOrder", "LeftIcon", "OnClick", "Size", "Text"}]
      707 GETIMPORT                        R51 K142 [Enum.AutomaticSize.X]
      709 SETTABLEKS                       R51 R50 K50 ["AutomaticSize"]
      711 GETTABLEKS                       R51 R28 K143 ["ApplyButtonBackgroundColor"]
      713 SETTABLEKS                       R51 R50 K79 ["BackgroundColor"]
      715 NAMECALL                         R51 R35 K82 ["getNextOrder"]
      717 CALL                             R51 1 1
      718 SETTABLEKS                       R51 R50 K30 ["LayoutOrder"]
      720 GETTABLEKS                       R51 R28 K144 ["ApplyButtonIcon"]
      722 SETTABLEKS                       R51 R50 K139 ["LeftIcon"]
      724 SETTABLEKS                       R22 R50 K59 ["OnClick"]
      726 GETTABLEKS                       R51 R28 K145 ["ApplyButtonSize"]
      728 SETTABLEKS                       R51 R50 K31 ["Size"]
      730 LOADK                            R53 K13 ["Editor"]
      731 LOADK                            R54 K146 ["ApplyVariant"]
      732 NAMECALL                         R51 R15 K15 ["getText"]
      734 CALL                             R51 3 1
      735 SETTABLEKS                       R51 R50 K41 ["Text"]
      737 CALL                             R48 2 1
      738 JUMP                             ; [+1]
      739 LOADNIL                          R48
      740 SETTABLEKS                       R48 R47 K77 ["ApplyButton"]
      742 CALL                             R44 3 1
      743 SETTABLEKS                       R44 R43 K55 ["Content"]
      745 CALL                             R40 3 1
      746 SETTABLEKS                       R40 R39 K36 ["ScrollingFrame"]
      748 CALL                             R36 3 -1
      749 CLOSEUPVALS                      R32
      750 RETURN                           R36 -1

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
