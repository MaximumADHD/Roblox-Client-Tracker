PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["mannequin"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["mannequin"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["state"]
        3 JUMPIFEQKS                       R1 K1 ["ok"] ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R1 R2 K2 ["current"]
        9 JUMPIFNOTEQKNIL                  R1 ; [+2]
       11 RETURN                           R0 0
       12 GETUPVAL                         R2 2
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R3 R4 K3 ["mannequin"]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R4 R5 K4 ["value"]
       19 MOVE                             R5 R0
       20 CALL                             R2 3 1
       21 MOVE                             R5 R2
       22 NAMECALL                         R3 R1 K5 ["updateVertexData"]
       24 CALL                             R3 2 0
       25 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 NAMECALL                         R1 R0 K1 ["undo"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 NAMECALL                         R1 R0 K1 ["redo"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+6]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R0 R1 K1 ["mannequin"]
        8 JUMPIFNOTEQKNIL                  R0 ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R0 R1 K2 ["getInitialMeshesData"]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R1 R2 K1 ["mannequin"]
       17 CALL                             R0 1 1
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R1 R2 K0 ["current"]
       21 MOVE                             R3 R0
       22 NAMECALL                         R1 R1 K3 ["setSerializedMeshData"]
       24 CALL                             R1 2 0
       25 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+6]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R0 R1 K1 ["mannequin"]
        8 JUMPIFNOTEQKNIL                  R0 ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R0 R1 K2 ["getInitialMeshesData"]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R1 R2 K1 ["mannequin"]
       17 CALL                             R0 1 1
       18 JUMPIFNOT                        R0 ; [+1]
       19 RETURN                           R0 0
       20 GETUPVAL                         R1 2
       21 GETTABLEKS                       R0 R1 K3 ["setInitialMeshesData"]
       23 GETUPVAL                         R2 1
       24 GETTABLEKS                       R1 R2 K1 ["mannequin"]
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R2 R3 K0 ["current"]
       29 NAMECALL                         R2 R2 K4 ["getSerializedMeshDataDeepCopy"]
       31 CALL                             R2 1 -1
       32 CALL                             R0 -1 0
       33 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+16]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+14]
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R0 R1 K0 ["setUndoStack"]
        7 GETUPVAL                         R2 3
        8 GETTABLEKS                       R1 R2 K1 ["mannequin"]
       10 DUPTABLE                         R2 K4 [{"past", "future"}]
       11 GETUPVAL                         R3 0
       12 SETTABLEKS                       R3 R2 K2 ["past"]
       14 GETUPVAL                         R3 1
       15 SETTABLEKS                       R3 R2 K3 ["future"]
       17 CALL                             R0 2 0
       18 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+6]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K1 ["mannequin"]
        8 JUMPIFNOTEQKNIL                  R1 ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R1 R2 K2 ["getUndoStack"]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R2 R3 K1 ["mannequin"]
       17 CALL                             R1 1 1
       18 JUMPIFNOT                        R1 ; [+7]
       19 GETTABLEKS                       R4 R1 K3 ["past"]
       21 GETTABLEKS                       R5 R1 K4 ["future"]
       23 NAMECALL                         R2 R0 K5 ["restoreUndoRedoStack"]
       25 CALL                             R2 3 0
       26 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R3 K1 ["X"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K0 ["ViewportSize"]
       10 GETTABLEKS                       R0 R1 K1 ["X"]
       12 GETUPVAL                         R1 2
       13 GETUPVAL                         R4 1
       14 ADDK                             R3 R4 K2 [36]
       15 JUMPIFLT                         R0 R3 ; [+2]
       17 LOADB                            R2 0 +1
       18 LOADB                            R2 1
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 GETUPVAL                         R0 0
        7 LOADK                            R2 K0 ["ViewportSize"]
        8 NAMECALL                         R0 R0 K1 ["GetPropertyChangedSignal"]
       10 CALL                             R0 2 1
       11 GETUPVAL                         R2 1
       12 NAMECALL                         R0 R0 K2 ["Connect"]
       14 CALL                             R0 2 1
       15 NEWCLOSURE                       R1 P0
       16 CAPTURE                          VAL R0
       17 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["right"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["left"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAvatarPreviewerEnableCageTool is not enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 1
        9 NAMECALL                         R1 R1 K3 ["use"]
       11 CALL                             R1 1 1
       12 GETUPVAL                         R2 2
       13 LOADK                            R4 K4 ["CageEditingTool"]
       14 NAMECALL                         R2 R2 K3 ["use"]
       16 CALL                             R2 2 1
       17 GETUPVAL                         R4 3
       18 GETTABLEKS                       R3 R4 K5 ["useContext"]
       20 GETUPVAL                         R5 4
       21 GETTABLEKS                       R4 R5 K6 ["Context"]
       23 CALL                             R3 1 1
       24 GETUPVAL                         R4 5
       25 LOADK                            R5 K7 ["EditingTools_Falloff"]
       26 LOADN                            R6 50
       27 CALL                             R4 2 2
       28 GETUPVAL                         R6 5
       29 LOADK                            R7 K8 ["EditingTools_Radius"]
       30 LOADK                            R8 K9 [0.3]
       31 CALL                             R6 2 2
       32 GETUPVAL                         R8 6
       33 LOADK                            R9 K10 ["EditingTools_SymmetricalEnabled"]
       34 LOADB                            R10 1
       35 CALL                             R8 2 1
       36 DUPTABLE                         R9 K14 [{"setValue", "min", "max"}]
       37 SETTABLEKS                       R7 R9 K11 ["setValue"]
       39 GETUPVAL                         R13 7
       40 GETTABLEKS                       R12 R13 K15 ["CAGE_BRUSH_SETTINGS"]
       42 GETTABLEKS                       R11 R12 K16 ["Radius"]
       44 GETTABLEKS                       R10 R11 K17 ["minimum"]
       46 SETTABLEKS                       R10 R9 K12 ["min"]
       48 GETUPVAL                         R13 7
       49 GETTABLEKS                       R12 R13 K15 ["CAGE_BRUSH_SETTINGS"]
       51 GETTABLEKS                       R11 R12 K16 ["Radius"]
       53 GETTABLEKS                       R10 R11 K18 ["maximum"]
       55 SETTABLEKS                       R10 R9 K13 ["max"]
       57 DUPTABLE                         R10 K14 [{"setValue", "min", "max"}]
       58 SETTABLEKS                       R5 R10 K11 ["setValue"]
       60 GETUPVAL                         R14 7
       61 GETTABLEKS                       R13 R14 K15 ["CAGE_BRUSH_SETTINGS"]
       63 GETTABLEKS                       R12 R13 K19 ["Falloff"]
       65 GETTABLEKS                       R11 R12 K17 ["minimum"]
       67 SETTABLEKS                       R11 R10 K12 ["min"]
       69 GETUPVAL                         R14 7
       70 GETTABLEKS                       R13 R14 K15 ["CAGE_BRUSH_SETTINGS"]
       72 GETTABLEKS                       R12 R13 K19 ["Falloff"]
       74 GETTABLEKS                       R11 R12 K18 ["maximum"]
       76 SETTABLEKS                       R11 R10 K13 ["max"]
       78 GETUPVAL                         R11 8
       79 MOVE                             R12 R9
       80 MOVE                             R13 R10
       81 CALL                             R11 2 0
       82 GETUPVAL                         R12 3
       83 GETTABLEKS                       R11 R12 K20 ["useState"]
       85 NEWTABLE                         R12 0 0
       87 CALL                             R11 1 2
       88 GETUPVAL                         R13 9
       89 MOVE                             R14 R11
       90 CALL                             R13 1 0
       91 GETUPVAL                         R13 10
       92 NEWCLOSURE                       R14 P0
       93 CAPTURE                          UPVAL U11
       94 CAPTURE                          VAL R0
       95 NEWTABLE                         R15 0 1
       97 GETTABLEKS                       R16 R0 K21 ["mannequin"]
       99 SETLIST                          R15 R16 1 [1]
      101 CALL                             R13 2 1
      102 GETUPVAL                         R14 10
      103 NEWCLOSURE                       R15 P1
      104 CAPTURE                          UPVAL U12
      105 CAPTURE                          VAL R0
      106 NEWTABLE                         R16 0 1
      108 GETTABLEKS                       R17 R0 K21 ["mannequin"]
      110 SETLIST                          R16 R17 1 [1]
      112 CALL                             R14 2 1
      113 GETUPVAL                         R16 3
      114 GETTABLEKS                       R15 R16 K22 ["useRef"]
      116 LOADNIL                          R16
      117 CALL                             R15 1 1
      118 GETUPVAL                         R17 3
      119 GETTABLEKS                       R16 R17 K22 ["useRef"]
      121 LOADNIL                          R17
      122 CALL                             R16 1 1
      123 GETUPVAL                         R18 3
      124 GETTABLEKS                       R17 R18 K23 ["useCallback"]
      126 NEWCLOSURE                       R18 P2
      127 CAPTURE                          VAL R13
      128 CAPTURE                          VAL R15
      129 CAPTURE                          UPVAL U13
      130 CAPTURE                          VAL R0
      131 NEWTABLE                         R19 0 2
      133 GETTABLEKS                       R20 R0 K21 ["mannequin"]
      135 MOVE                             R21 R13
      136 SETLIST                          R19 R20 2 [1]
      138 CALL                             R17 2 1
      139 GETUPVAL                         R19 3
      140 GETTABLEKS                       R18 R19 K23 ["useCallback"]
      142 NEWCLOSURE                       R19 P3
      143 CAPTURE                          VAL R16
      144 NEWTABLE                         R20 0 0
      146 CALL                             R18 2 1
      147 GETUPVAL                         R20 3
      148 GETTABLEKS                       R19 R20 K23 ["useCallback"]
      150 NEWCLOSURE                       R20 P4
      151 CAPTURE                          VAL R16
      152 NEWTABLE                         R21 0 0
      154 CALL                             R19 2 1
      155 GETUPVAL                         R21 3
      156 GETTABLEKS                       R20 R21 K23 ["useCallback"]
      158 NEWCLOSURE                       R21 P5
      159 CAPTURE                          VAL R15
      160 CAPTURE                          VAL R0
      161 CAPTURE                          VAL R3
      162 NEWTABLE                         R22 0 2
      164 GETTABLEKS                       R23 R0 K21 ["mannequin"]
      166 GETTABLEKS                       R24 R15 K24 ["current"]
      168 SETLIST                          R22 R23 2 [1]
      170 CALL                             R20 2 1
      171 GETUPVAL                         R22 3
      172 GETTABLEKS                       R21 R22 K25 ["useEffect"]
      174 NEWCLOSURE                       R22 P6
      175 CAPTURE                          VAL R15
      176 CAPTURE                          VAL R0
      177 CAPTURE                          VAL R3
      178 NEWTABLE                         R23 0 2
      180 GETTABLEKS                       R24 R0 K21 ["mannequin"]
      182 GETTABLEKS                       R25 R15 K24 ["current"]
      184 SETLIST                          R23 R24 2 [1]
      186 CALL                             R21 2 0
      187 LOADNIL                          R21
      188 LOADNIL                          R22
      189 GETTABLEKS                       R23 R16 K24 ["current"]
      191 JUMPIFEQKNIL                     R23 ; [+8]
      193 GETTABLEKS                       R23 R16 K24 ["current"]
      195 NAMECALL                         R23 R23 K26 ["getUndoRedoStack"]
      197 CALL                             R23 1 2
      198 MOVE                             R21 R23
      199 MOVE                             R22 R24
      200 GETUPVAL                         R24 3
      201 GETTABLEKS                       R23 R24 K25 ["useEffect"]
      203 NEWCLOSURE                       R24 P7
      204 CAPTURE                          REF R21
      205 CAPTURE                          REF R22
      206 CAPTURE                          VAL R3
      207 CAPTURE                          VAL R0
      208 NEWTABLE                         R25 0 3
      210 GETTABLEKS                       R26 R0 K21 ["mannequin"]
      212 MOVE                             R27 R21
      213 MOVE                             R28 R22
      214 SETLIST                          R25 R26 3 [1]
      216 CALL                             R23 2 0
      217 GETUPVAL                         R24 3
      218 GETTABLEKS                       R23 R24 K25 ["useEffect"]
      220 NEWCLOSURE                       R24 P8
      221 CAPTURE                          VAL R16
      222 CAPTURE                          VAL R0
      223 CAPTURE                          VAL R3
      224 NEWTABLE                         R25 0 1
      226 GETTABLEKS                       R26 R0 K21 ["mannequin"]
      228 SETLIST                          R25 R26 1 [1]
      230 CALL                             R23 2 0
      231 GETUPVAL                         R23 14
      232 MOVE                             R24 R18
      233 MOVE                             R25 R19
      234 CALL                             R23 2 0
      235 GETUPVAL                         R24 15
      236 GETTABLEKS                       R23 R24 K27 ["CurrentCamera"]
      238 GETUPVAL                         R25 3
      239 GETTABLEKS                       R24 R25 K20 ["useState"]
      241 LOADNIL                          R25
      242 CALL                             R24 1 2
      243 GETUPVAL                         R27 3
      244 GETTABLEKS                       R26 R27 K20 ["useState"]
      246 LOADB                            R27 0
      247 CALL                             R26 1 2
      248 GETUPVAL                         R29 3
      249 GETTABLEKS                       R28 R29 K23 ["useCallback"]
      251 NEWCLOSURE                       R29 P9
      252 CAPTURE                          VAL R25
      253 NEWTABLE                         R30 0 0
      255 CALL                             R28 2 1
      256 GETUPVAL                         R30 3
      257 GETTABLEKS                       R29 R30 K23 ["useCallback"]
      259 NEWCLOSURE                       R30 P10
      260 CAPTURE                          VAL R23
      261 CAPTURE                          VAL R24
      262 CAPTURE                          VAL R27
      263 NEWTABLE                         R31 0 2
      265 MOVE                             R32 R23
      266 MOVE                             R33 R24
      267 SETLIST                          R31 R32 2 [1]
      269 CALL                             R29 2 1
      270 GETUPVAL                         R31 3
      271 GETTABLEKS                       R30 R31 K25 ["useEffect"]
      273 NEWCLOSURE                       R31 P11
      274 CAPTURE                          VAL R23
      275 CAPTURE                          VAL R29
      276 NEWTABLE                         R32 0 2
      278 MOVE                             R33 R23
      279 MOVE                             R34 R29
      280 SETLIST                          R32 R33 2 [1]
      282 CALL                             R30 2 0
      283 GETUPVAL                         R31 16
      284 GETTABLEKS                       R30 R31 K28 ["provide"]
      286 NEWTABLE                         R31 0 0
      288 NEWTABLE                         R32 2 0
      290 GETUPVAL                         R34 3
      291 GETTABLEKS                       R33 R34 K29 ["createElement"]
      293 GETUPVAL                         R34 17
      294 DUPTABLE                         R35 K38 [{"mannequin", "falloff", "radius", "segmentationMap", "symmetrical", "symmetryMap", "onChangeSelectedPositions", "brushToolRef", "outerCageContextRef"}]
      295 GETTABLEKS                       R36 R0 K21 ["mannequin"]
      297 SETTABLEKS                       R36 R35 K21 ["mannequin"]
      299 DIVK                             R36 R4 K39 [100]
      300 SETTABLEKS                       R36 R35 K30 ["falloff"]
      302 SETTABLEKS                       R6 R35 K31 ["radius"]
      304 SETTABLEKS                       R14 R35 K32 ["segmentationMap"]
      306 GETTABLEKS                       R36 R8 K40 ["enabled"]
      308 SETTABLEKS                       R36 R35 K33 ["symmetrical"]
      310 SETTABLEKS                       R13 R35 K34 ["symmetryMap"]
      312 SETTABLEKS                       R12 R35 K35 ["onChangeSelectedPositions"]
      314 SETTABLEKS                       R16 R35 K36 ["brushToolRef"]
      316 SETTABLEKS                       R15 R35 K37 ["outerCageContextRef"]
      318 CALL                             R33 2 1
      319 SETTABLEKS                       R33 R32 K4 ["CageEditingTool"]
      321 GETUPVAL                         R35 7
      322 GETTABLEKS                       R34 R35 K41 ["EDITING_TOOLS_GUI_NAMES"]
      324 GETTABLEKS                       R33 R34 K42 ["CageEditingToolToolbar"]
      326 GETUPVAL                         R35 3
      327 GETTABLEKS                       R34 R35 K29 ["createElement"]
      329 GETUPVAL                         R36 18
      330 GETTABLEKS                       R35 R36 K43 ["Toolbar"]
      332 DUPTABLE                         R36 K47 [{"InitialPosition", "HorizontalItems", "OnToolbarSizeChanged"}]
      333 JUMPIFNOT                        R26 ; [+2]
      334 LOADK                            R37 K48 ["Left"]
      335 JUMP                             ; [+1]
      336 LOADK                            R37 K49 ["Center"]
      337 SETTABLEKS                       R37 R36 K44 ["InitialPosition"]
      339 NEWTABLE                         R37 0 10
      341 DUPTABLE                         R38 K56 [{"Type", "Icon", "Tooltip", "TooltipDescription", "OnClick", "Selected"}]
      342 LOADK                            R39 K57 ["Button"]
      343 SETTABLEKS                       R39 R38 K50 ["Type"]
      345 GETTABLEKS                       R39 R2 K58 ["SymmetryImage"]
      347 SETTABLEKS                       R39 R38 K51 ["Icon"]
      349 LOADK                            R41 K4 ["CageEditingTool"]
      350 LOADK                            R42 K59 ["Symmetry"]
      351 NAMECALL                         R39 R1 K60 ["getText"]
      353 CALL                             R39 3 1
      354 SETTABLEKS                       R39 R38 K52 ["Tooltip"]
      356 LOADK                            R41 K4 ["CageEditingTool"]
      357 LOADK                            R42 K61 ["SymmetryDescription"]
      358 NAMECALL                         R39 R1 K60 ["getText"]
      360 CALL                             R39 3 1
      361 SETTABLEKS                       R39 R38 K53 ["TooltipDescription"]
      363 GETTABLEKS                       R39 R8 K62 ["toggle"]
      365 SETTABLEKS                       R39 R38 K54 ["OnClick"]
      367 GETTABLEKS                       R39 R8 K40 ["enabled"]
      369 SETTABLEKS                       R39 R38 K55 ["Selected"]
      371 DUPTABLE                         R39 K63 [{"Type"}]
      372 LOADK                            R40 K64 ["Separator"]
      373 SETTABLEKS                       R40 R39 K50 ["Type"]
      375 DUPTABLE                         R40 K65 [{"Type", "Icon", "Tooltip", "TooltipDescription", "OnClick"}]
      376 LOADK                            R41 K57 ["Button"]
      377 SETTABLEKS                       R41 R40 K50 ["Type"]
      379 GETTABLEKS                       R41 R2 K66 ["MirrorToRightImage"]
      381 SETTABLEKS                       R41 R40 K51 ["Icon"]
      383 LOADK                            R43 K4 ["CageEditingTool"]
      384 LOADK                            R44 K67 ["MirrorLeft"]
      385 NAMECALL                         R41 R1 K60 ["getText"]
      387 CALL                             R41 3 1
      388 SETTABLEKS                       R41 R40 K52 ["Tooltip"]
      390 LOADK                            R43 K4 ["CageEditingTool"]
      391 LOADK                            R44 K68 ["MirrorLeftDescription"]
      392 NAMECALL                         R41 R1 K60 ["getText"]
      394 CALL                             R41 3 1
      395 SETTABLEKS                       R41 R40 K53 ["TooltipDescription"]
      397 NEWCLOSURE                       R41 P12
      398 CAPTURE                          VAL R17
      399 SETTABLEKS                       R41 R40 K54 ["OnClick"]
      401 DUPTABLE                         R41 K65 [{"Type", "Icon", "Tooltip", "TooltipDescription", "OnClick"}]
      402 LOADK                            R42 K57 ["Button"]
      403 SETTABLEKS                       R42 R41 K50 ["Type"]
      405 GETTABLEKS                       R42 R2 K69 ["MirrorToLeftImage"]
      407 SETTABLEKS                       R42 R41 K51 ["Icon"]
      409 LOADK                            R44 K4 ["CageEditingTool"]
      410 LOADK                            R45 K70 ["MirrorRight"]
      411 NAMECALL                         R42 R1 K60 ["getText"]
      413 CALL                             R42 3 1
      414 SETTABLEKS                       R42 R41 K52 ["Tooltip"]
      416 LOADK                            R44 K4 ["CageEditingTool"]
      417 LOADK                            R45 K71 ["MirrorRightDescription"]
      418 NAMECALL                         R42 R1 K60 ["getText"]
      420 CALL                             R42 3 1
      421 SETTABLEKS                       R42 R41 K53 ["TooltipDescription"]
      423 NEWCLOSURE                       R42 P13
      424 CAPTURE                          VAL R17
      425 SETTABLEKS                       R42 R41 K54 ["OnClick"]
      427 DUPTABLE                         R42 K63 [{"Type"}]
      428 LOADK                            R43 K64 ["Separator"]
      429 SETTABLEKS                       R43 R42 K50 ["Type"]
      431 DUPTABLE                         R43 K76 [{"Type", "Value", "OnChange", "Icon", "Tooltip", "TooltipDescription", "Min", "Max"}]
      432 LOADK                            R44 K77 ["Slider"]
      433 SETTABLEKS                       R44 R43 K50 ["Type"]
      435 SETTABLEKS                       R6 R43 K72 ["Value"]
      437 SETTABLEKS                       R7 R43 K73 ["OnChange"]
      439 GETTABLEKS                       R44 R2 K78 ["RadiusImage"]
      441 SETTABLEKS                       R44 R43 K51 ["Icon"]
      443 LOADK                            R46 K4 ["CageEditingTool"]
      444 LOADK                            R47 K16 ["Radius"]
      445 NAMECALL                         R44 R1 K60 ["getText"]
      447 CALL                             R44 3 1
      448 SETTABLEKS                       R44 R43 K52 ["Tooltip"]
      450 LOADK                            R46 K4 ["CageEditingTool"]
      451 LOADK                            R47 K79 ["RadiusDescription"]
      452 NAMECALL                         R44 R1 K60 ["getText"]
      454 CALL                             R44 3 1
      455 SETTABLEKS                       R44 R43 K53 ["TooltipDescription"]
      457 GETUPVAL                         R47 7
      458 GETTABLEKS                       R46 R47 K15 ["CAGE_BRUSH_SETTINGS"]
      460 GETTABLEKS                       R45 R46 K16 ["Radius"]
      462 GETTABLEKS                       R44 R45 K17 ["minimum"]
      464 SETTABLEKS                       R44 R43 K74 ["Min"]
      466 GETUPVAL                         R47 7
      467 GETTABLEKS                       R46 R47 K15 ["CAGE_BRUSH_SETTINGS"]
      469 GETTABLEKS                       R45 R46 K16 ["Radius"]
      471 GETTABLEKS                       R44 R45 K18 ["maximum"]
      473 SETTABLEKS                       R44 R43 K75 ["Max"]
      475 DUPTABLE                         R44 K82 [{"Type", "Value", "OnChange", "Icon", "Tooltip", "TooltipDescription", "Min", "Max", "InputPrecision", "DisplayFormat"}]
      476 LOADK                            R45 K77 ["Slider"]
      477 SETTABLEKS                       R45 R44 K50 ["Type"]
      479 SETTABLEKS                       R4 R44 K72 ["Value"]
      481 SETTABLEKS                       R5 R44 K73 ["OnChange"]
      483 GETTABLEKS                       R45 R2 K83 ["FalloffImage"]
      485 SETTABLEKS                       R45 R44 K51 ["Icon"]
      487 LOADK                            R47 K4 ["CageEditingTool"]
      488 LOADK                            R48 K19 ["Falloff"]
      489 NAMECALL                         R45 R1 K60 ["getText"]
      491 CALL                             R45 3 1
      492 SETTABLEKS                       R45 R44 K52 ["Tooltip"]
      494 LOADK                            R47 K4 ["CageEditingTool"]
      495 LOADK                            R48 K84 ["FalloffDescription"]
      496 NAMECALL                         R45 R1 K60 ["getText"]
      498 CALL                             R45 3 1
      499 SETTABLEKS                       R45 R44 K53 ["TooltipDescription"]
      501 GETUPVAL                         R48 7
      502 GETTABLEKS                       R47 R48 K15 ["CAGE_BRUSH_SETTINGS"]
      504 GETTABLEKS                       R46 R47 K19 ["Falloff"]
      506 GETTABLEKS                       R45 R46 K17 ["minimum"]
      508 SETTABLEKS                       R45 R44 K74 ["Min"]
      510 GETUPVAL                         R48 7
      511 GETTABLEKS                       R47 R48 K15 ["CAGE_BRUSH_SETTINGS"]
      513 GETTABLEKS                       R46 R47 K19 ["Falloff"]
      515 GETTABLEKS                       R45 R46 K18 ["maximum"]
      517 SETTABLEKS                       R45 R44 K75 ["Max"]
      519 LOADN                            R45 0
      520 SETTABLEKS                       R45 R44 K80 ["InputPrecision"]
      522 LOADK                            R45 K85 ["%d%%"]
      523 SETTABLEKS                       R45 R44 K81 ["DisplayFormat"]
      525 DUPTABLE                         R45 K63 [{"Type"}]
      526 LOADK                            R46 K64 ["Separator"]
      527 SETTABLEKS                       R46 R45 K50 ["Type"]
      529 DUPTABLE                         R46 K65 [{"Type", "Icon", "Tooltip", "TooltipDescription", "OnClick"}]
      530 LOADK                            R47 K57 ["Button"]
      531 SETTABLEKS                       R47 R46 K50 ["Type"]
      533 GETTABLEKS                       R47 R2 K86 ["ResetChangesImage"]
      535 SETTABLEKS                       R47 R46 K51 ["Icon"]
      537 LOADK                            R49 K87 ["EditingTools"]
      538 LOADK                            R50 K88 ["ResetEdits"]
      539 NAMECALL                         R47 R1 K60 ["getText"]
      541 CALL                             R47 3 1
      542 SETTABLEKS                       R47 R46 K52 ["Tooltip"]
      544 LOADK                            R49 K87 ["EditingTools"]
      545 LOADK                            R50 K89 ["ResetEditsDescription"]
      546 NAMECALL                         R47 R1 K60 ["getText"]
      548 CALL                             R47 3 1
      549 SETTABLEKS                       R47 R46 K53 ["TooltipDescription"]
      551 SETTABLEKS                       R20 R46 K54 ["OnClick"]
      553 GETTABLEKS                       R48 R0 K90 ["additionalToolbarItems"]
      555 FASTCALL1                        TABLE_UNPACK R48 ; [+2]
      556 GETIMPORT                        R47 K92 [unpack]
      558 CALL                             R47 1 -1
      559 SETLIST                          R37 R38 -1 [1]
      561 SETTABLEKS                       R37 R36 K45 ["HorizontalItems"]
      563 SETTABLEKS                       R28 R36 K46 ["OnToolbarSizeChanged"]
      565 CALL                             R34 2 1
      566 SETTABLE                         R34 R32 R33
      567 CALL                             R30 2 -1
      568 CLOSEUPVALS                      R21
      569 RETURN                           R30 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AvatarCompatibilityPreviewer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R5 R1 K10 ["Src"]
       17 GETTABLEKS                       R4 R5 K11 ["Util"]
       19 GETTABLEKS                       R3 R4 K12 ["Constants"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R5 R1 K13 ["Packages"]
       26 GETTABLEKS                       R4 R5 K14 ["Framework"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R6 R1 K13 ["Packages"]
       33 GETTABLEKS                       R5 R6 K15 ["LuaMeshEditingModule"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R8 R1 K13 ["Packages"]
       40 GETTABLEKS                       R7 R8 K15 ["LuaMeshEditingModule"]
       42 GETTABLEKS                       R6 R7 K16 ["Types"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R11 R1 K10 ["Src"]
       49 GETTABLEKS                       R10 R11 K17 ["Components"]
       51 GETTABLEKS                       R9 R10 K18 ["EditingTools"]
       53 GETTABLEKS                       R8 R9 K19 ["CageEditingTool"]
       55 GETTABLEKS                       R7 R8 K20 ["LuaMeshEditingModuleWrapper"]
       57 CALL                             R6 1 1
       58 GETIMPORT                        R7 K9 [require]
       60 GETTABLEKS                       R9 R1 K13 ["Packages"]
       62 GETTABLEKS                       R8 R9 K21 ["React"]
       64 CALL                             R7 1 1
       65 GETIMPORT                        R8 K9 [require]
       67 GETTABLEKS                       R11 R1 K10 ["Src"]
       69 GETTABLEKS                       R10 R11 K22 ["Resources"]
       71 GETTABLEKS                       R9 R10 K23 ["Theme"]
       73 CALL                             R8 1 1
       74 GETIMPORT                        R9 K9 [require]
       76 GETTABLEKS                       R11 R1 K10 ["Src"]
       78 GETTABLEKS                       R10 R11 K16 ["Types"]
       80 CALL                             R9 1 1
       81 GETIMPORT                        R10 K9 [require]
       83 GETTABLEKS                       R12 R1 K13 ["Packages"]
       85 GETTABLEKS                       R11 R12 K24 ["ViewportToolingFramework"]
       87 CALL                             R10 1 1
       88 GETIMPORT                        R11 K9 [require]
       90 GETTABLEKS                       R15 R1 K10 ["Src"]
       92 GETTABLEKS                       R14 R15 K17 ["Components"]
       94 GETTABLEKS                       R13 R14 K18 ["EditingTools"]
       96 GETTABLEKS                       R12 R13 K25 ["createSegmentationMapAsync"]
       98 CALL                             R11 1 1
       99 GETIMPORT                        R12 K9 [require]
      101 GETTABLEKS                       R16 R1 K10 ["Src"]
      103 GETTABLEKS                       R15 R16 K17 ["Components"]
      105 GETTABLEKS                       R14 R15 K18 ["EditingTools"]
      107 GETTABLEKS                       R13 R14 K26 ["createSymmetryMapAsync"]
      109 CALL                             R12 1 1
      110 GETIMPORT                        R13 K9 [require]
      112 GETTABLEKS                       R16 R1 K10 ["Src"]
      114 GETTABLEKS                       R15 R16 K27 ["Flags"]
      116 GETTABLEKS                       R14 R15 K28 ["getFFlagAvatarPreviewerEnableCageTool"]
      118 CALL                             R13 1 1
      119 GETIMPORT                        R14 K9 [require]
      121 GETIMPORT                        R16 K5 [script]
      123 GETTABLEKS                       R15 R16 K29 ["mirrorCage"]
      125 CALL                             R14 1 1
      126 GETIMPORT                        R15 K9 [require]
      128 GETTABLEKS                       R18 R1 K10 ["Src"]
      130 GETTABLEKS                       R17 R18 K30 ["Hooks"]
      132 GETTABLEKS                       R16 R17 K31 ["useAsync"]
      134 CALL                             R15 1 1
      135 GETIMPORT                        R16 K9 [require]
      137 GETTABLEKS                       R20 R1 K10 ["Src"]
      139 GETTABLEKS                       R19 R20 K17 ["Components"]
      141 GETTABLEKS                       R18 R19 K18 ["EditingTools"]
      143 GETTABLEKS                       R17 R18 K32 ["useBindFocusOnPositions"]
      145 CALL                             R16 1 1
      146 GETIMPORT                        R17 K9 [require]
      148 GETIMPORT                        R19 K5 [script]
      150 GETTABLEKS                       R18 R19 K33 ["useKeyboardShortcuts"]
      152 CALL                             R17 1 1
      153 GETIMPORT                        R18 K9 [require]
      155 GETTABLEKS                       R21 R1 K10 ["Src"]
      157 GETTABLEKS                       R20 R21 K30 ["Hooks"]
      159 GETTABLEKS                       R19 R20 K34 ["usePluginSetting"]
      161 CALL                             R18 1 1
      162 GETIMPORT                        R19 K9 [require]
      164 GETTABLEKS                       R22 R1 K10 ["Src"]
      166 GETTABLEKS                       R21 R22 K30 ["Hooks"]
      168 GETTABLEKS                       R20 R21 K35 ["useTogglePluginSetting"]
      170 CALL                             R19 1 1
      171 GETIMPORT                        R20 K9 [require]
      173 GETTABLEKS                       R23 R1 K10 ["Src"]
      175 GETTABLEKS                       R22 R23 K30 ["Hooks"]
      177 GETTABLEKS                       R21 R22 K36 ["useUndoRedoActions"]
      179 CALL                             R20 1 1
      180 GETIMPORT                        R21 K9 [require]
      182 GETTABLEKS                       R26 R1 K10 ["Src"]
      184 GETTABLEKS                       R25 R26 K17 ["Components"]
      186 GETTABLEKS                       R24 R25 K18 ["EditingTools"]
      188 GETTABLEKS                       R23 R24 K19 ["CageEditingTool"]
      190 GETTABLEKS                       R22 R23 K37 ["CageEditingToolHistoryContext"]
      192 CALL                             R21 1 1
      193 GETTABLEKS                       R23 R4 K38 ["Tools"]
      195 GETTABLEKS                       R22 R23 K39 ["BrushTool"]
      197 GETTABLEKS                       R24 R4 K40 ["MeshEditingContexts"]
      199 GETTABLEKS                       R23 R24 K41 ["CageEditingContext"]
      201 GETTABLEKS                       R24 R3 K42 ["ContextServices"]
      203 GETTABLEKS                       R25 R24 K43 ["Localization"]
      205 GETTABLEKS                       R26 R24 K44 ["Stylizer"]
      207 DUPCLOSURE                       R27 K45 [PROTO_15]
      208 CAPTURE                          VAL R13
      209 CAPTURE                          VAL R25
      210 CAPTURE                          VAL R26
      211 CAPTURE                          VAL R7
      212 CAPTURE                          VAL R21
      213 CAPTURE                          VAL R18
      214 CAPTURE                          VAL R19
      215 CAPTURE                          VAL R2
      216 CAPTURE                          VAL R17
      217 CAPTURE                          VAL R16
      218 CAPTURE                          VAL R15
      219 CAPTURE                          VAL R12
      220 CAPTURE                          VAL R11
      221 CAPTURE                          VAL R14
      222 CAPTURE                          VAL R20
      223 CAPTURE                          VAL R0
      224 CAPTURE                          VAL R24
      225 CAPTURE                          VAL R6
      226 CAPTURE                          VAL R10
      227 RETURN                           R27 1
