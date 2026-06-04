PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["mannequin"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["mannequin"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 JUMPIFEQKS                       R1 K1 ["ok"] ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K2 ["current"]
        9 JUMPIFNOTEQKNIL                  R1 ; [+2]
       11 RETURN                           R0 0
       12 GETUPVAL                         R2 2
       13 GETUPVAL                         R3 3
       14 GETTABLEKS                       R3 R3 K3 ["mannequin"]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K4 ["value"]
       19 MOVE                             R5 R0
       20 CALL                             R2 3 1
       21 MOVE                             R5 R2
       22 NAMECALL                         R3 R1 K5 ["updateVertexData"]
       24 CALL                             R3 2 0
       25 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 NAMECALL                         R1 R0 K1 ["undo"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 NAMECALL                         R1 R0 K1 ["redo"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+6]
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["mannequin"]
        8 JUMPIFNOTEQKNIL                  R0 ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 2
       12 GETTABLEKS                       R0 R0 K2 ["getInitialMeshesData"]
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R1 R1 K1 ["mannequin"]
       17 CALL                             R0 1 1
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K0 ["current"]
       21 MOVE                             R3 R0
       22 NAMECALL                         R1 R1 K3 ["setSerializedMeshData"]
       24 CALL                             R1 2 0
       25 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+6]
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["mannequin"]
        8 JUMPIFNOTEQKNIL                  R0 ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 2
       12 GETTABLEKS                       R0 R0 K2 ["getInitialMeshesData"]
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R1 R1 K1 ["mannequin"]
       17 CALL                             R0 1 1
       18 JUMPIFNOT                        R0 ; [+1]
       19 RETURN                           R0 0
       20 GETUPVAL                         R0 2
       21 GETTABLEKS                       R0 R0 K3 ["setInitialMeshesData"]
       23 GETUPVAL                         R1 1
       24 GETTABLEKS                       R1 R1 K1 ["mannequin"]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K0 ["current"]
       29 NAMECALL                         R2 R2 K4 ["getSerializedMeshDataDeepCopy"]
       31 CALL                             R2 1 -1
       32 CALL                             R0 -1 0
       33 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+16]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+14]
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K0 ["setUndoStack"]
        7 GETUPVAL                         R1 3
        8 GETTABLEKS                       R1 R1 K1 ["mannequin"]
       10 DUPTABLE                         R2 K4 [{"past", "future"}]
       11 GETUPVAL                         R3 0
       12 SETTABLEKS                       R3 R2 K2 ["past"]
       14 GETUPVAL                         R3 1
       15 SETTABLEKS                       R3 R2 K3 ["future"]
       17 CALL                             R0 2 0
       18 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+6]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["mannequin"]
        8 JUMPIFNOTEQKNIL                  R1 ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K2 ["getUndoStack"]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K1 ["mannequin"]
       17 CALL                             R1 1 1
       18 JUMPIFNOT                        R1 ; [+7]
       19 GETTABLEKS                       R4 R1 K3 ["past"]
       21 GETTABLEKS                       R5 R1 K4 ["future"]
       23 NAMECALL                         R2 R0 K5 ["restoreUndoRedoStack"]
       25 CALL                             R2 3 0
       26 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R2 K1 ["X"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K0 ["ViewportSize"]
       10 GETTABLEKS                       R0 R0 K1 ["X"]
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
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K1 ["CageEditingTool"]
        6 NAMECALL                         R2 R2 K0 ["use"]
        8 CALL                             R2 2 1
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K2 ["useContext"]
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K3 ["Context"]
       15 CALL                             R3 1 1
       16 GETUPVAL                         R4 4
       17 LOADK                            R5 K4 ["EditingTools_Falloff"]
       18 LOADN                            R6 50
       19 CALL                             R4 2 2
       20 GETUPVAL                         R6 4
       21 LOADK                            R7 K5 ["EditingTools_Radius"]
       22 LOADK                            R8 K6 [0.3]
       23 CALL                             R6 2 2
       24 GETUPVAL                         R8 5
       25 LOADK                            R9 K7 ["EditingTools_SymmetricalEnabled"]
       26 LOADB                            R10 1
       27 CALL                             R8 2 1
       28 DUPTABLE                         R9 K11 [{"setValue", "min", "max"}]
       29 SETTABLEKS                       R7 R9 K8 ["setValue"]
       31 GETUPVAL                         R10 6
       32 GETTABLEKS                       R10 R10 K12 ["CAGE_BRUSH_SETTINGS"]
       34 GETTABLEKS                       R10 R10 K13 ["Radius"]
       36 GETTABLEKS                       R10 R10 K14 ["minimum"]
       38 SETTABLEKS                       R10 R9 K9 ["min"]
       40 GETUPVAL                         R10 6
       41 GETTABLEKS                       R10 R10 K12 ["CAGE_BRUSH_SETTINGS"]
       43 GETTABLEKS                       R10 R10 K13 ["Radius"]
       45 GETTABLEKS                       R10 R10 K15 ["maximum"]
       47 SETTABLEKS                       R10 R9 K10 ["max"]
       49 DUPTABLE                         R10 K11 [{"setValue", "min", "max"}]
       50 SETTABLEKS                       R5 R10 K8 ["setValue"]
       52 GETUPVAL                         R11 6
       53 GETTABLEKS                       R11 R11 K12 ["CAGE_BRUSH_SETTINGS"]
       55 GETTABLEKS                       R11 R11 K16 ["Falloff"]
       57 GETTABLEKS                       R11 R11 K14 ["minimum"]
       59 SETTABLEKS                       R11 R10 K9 ["min"]
       61 GETUPVAL                         R11 6
       62 GETTABLEKS                       R11 R11 K12 ["CAGE_BRUSH_SETTINGS"]
       64 GETTABLEKS                       R11 R11 K16 ["Falloff"]
       66 GETTABLEKS                       R11 R11 K15 ["maximum"]
       68 SETTABLEKS                       R11 R10 K10 ["max"]
       70 GETUPVAL                         R11 7
       71 MOVE                             R12 R9
       72 MOVE                             R13 R10
       73 CALL                             R11 2 0
       74 GETUPVAL                         R11 2
       75 GETTABLEKS                       R11 R11 K17 ["useState"]
       77 NEWTABLE                         R12 0 0
       79 CALL                             R11 1 2
       80 GETUPVAL                         R13 8
       81 MOVE                             R14 R11
       82 CALL                             R13 1 0
       83 GETUPVAL                         R13 9
       84 NEWCLOSURE                       R14 P0
       85 CAPTURE                          UPVAL U10
       86 CAPTURE                          VAL R0
       87 NEWTABLE                         R15 0 1
       89 GETTABLEKS                       R16 R0 K18 ["mannequin"]
       91 SETLIST                          R15 R16 1 [1]
       93 CALL                             R13 2 1
       94 GETUPVAL                         R14 9
       95 NEWCLOSURE                       R15 P1
       96 CAPTURE                          UPVAL U11
       97 CAPTURE                          VAL R0
       98 NEWTABLE                         R16 0 1
      100 GETTABLEKS                       R17 R0 K18 ["mannequin"]
      102 SETLIST                          R16 R17 1 [1]
      104 CALL                             R14 2 1
      105 GETUPVAL                         R15 2
      106 GETTABLEKS                       R15 R15 K19 ["useRef"]
      108 LOADNIL                          R16
      109 CALL                             R15 1 1
      110 GETUPVAL                         R16 2
      111 GETTABLEKS                       R16 R16 K19 ["useRef"]
      113 LOADNIL                          R17
      114 CALL                             R16 1 1
      115 GETUPVAL                         R17 2
      116 GETTABLEKS                       R17 R17 K20 ["useCallback"]
      118 NEWCLOSURE                       R18 P2
      119 CAPTURE                          VAL R13
      120 CAPTURE                          VAL R15
      121 CAPTURE                          UPVAL U12
      122 CAPTURE                          VAL R0
      123 NEWTABLE                         R19 0 2
      125 GETTABLEKS                       R20 R0 K18 ["mannequin"]
      127 MOVE                             R21 R13
      128 SETLIST                          R19 R20 2 [1]
      130 CALL                             R17 2 1
      131 GETUPVAL                         R18 2
      132 GETTABLEKS                       R18 R18 K20 ["useCallback"]
      134 NEWCLOSURE                       R19 P3
      135 CAPTURE                          VAL R16
      136 NEWTABLE                         R20 0 0
      138 CALL                             R18 2 1
      139 GETUPVAL                         R19 2
      140 GETTABLEKS                       R19 R19 K20 ["useCallback"]
      142 NEWCLOSURE                       R20 P4
      143 CAPTURE                          VAL R16
      144 NEWTABLE                         R21 0 0
      146 CALL                             R19 2 1
      147 GETUPVAL                         R20 2
      148 GETTABLEKS                       R20 R20 K20 ["useCallback"]
      150 NEWCLOSURE                       R21 P5
      151 CAPTURE                          VAL R15
      152 CAPTURE                          VAL R0
      153 CAPTURE                          VAL R3
      154 NEWTABLE                         R22 0 2
      156 GETTABLEKS                       R23 R0 K18 ["mannequin"]
      158 GETTABLEKS                       R24 R15 K21 ["current"]
      160 SETLIST                          R22 R23 2 [1]
      162 CALL                             R20 2 1
      163 GETUPVAL                         R21 2
      164 GETTABLEKS                       R21 R21 K22 ["useEffect"]
      166 NEWCLOSURE                       R22 P6
      167 CAPTURE                          VAL R15
      168 CAPTURE                          VAL R0
      169 CAPTURE                          VAL R3
      170 NEWTABLE                         R23 0 2
      172 GETTABLEKS                       R24 R0 K18 ["mannequin"]
      174 GETTABLEKS                       R25 R15 K21 ["current"]
      176 SETLIST                          R23 R24 2 [1]
      178 CALL                             R21 2 0
      179 LOADNIL                          R21
      180 LOADNIL                          R22
      181 GETTABLEKS                       R23 R16 K21 ["current"]
      183 JUMPIFEQKNIL                     R23 ; [+8]
      185 GETTABLEKS                       R23 R16 K21 ["current"]
      187 NAMECALL                         R23 R23 K23 ["getUndoRedoStack"]
      189 CALL                             R23 1 2
      190 MOVE                             R21 R23
      191 MOVE                             R22 R24
      192 GETUPVAL                         R23 2
      193 GETTABLEKS                       R23 R23 K22 ["useEffect"]
      195 NEWCLOSURE                       R24 P7
      196 CAPTURE                          REF R21
      197 CAPTURE                          REF R22
      198 CAPTURE                          VAL R3
      199 CAPTURE                          VAL R0
      200 NEWTABLE                         R25 0 3
      202 GETTABLEKS                       R26 R0 K18 ["mannequin"]
      204 MOVE                             R27 R21
      205 MOVE                             R28 R22
      206 SETLIST                          R25 R26 3 [1]
      208 CALL                             R23 2 0
      209 GETUPVAL                         R23 2
      210 GETTABLEKS                       R23 R23 K22 ["useEffect"]
      212 NEWCLOSURE                       R24 P8
      213 CAPTURE                          VAL R16
      214 CAPTURE                          VAL R0
      215 CAPTURE                          VAL R3
      216 NEWTABLE                         R25 0 1
      218 GETTABLEKS                       R26 R0 K18 ["mannequin"]
      220 SETLIST                          R25 R26 1 [1]
      222 CALL                             R23 2 0
      223 GETUPVAL                         R23 13
      224 MOVE                             R24 R18
      225 MOVE                             R25 R19
      226 CALL                             R23 2 0
      227 GETUPVAL                         R23 14
      228 GETTABLEKS                       R23 R23 K24 ["CurrentCamera"]
      230 GETUPVAL                         R24 2
      231 GETTABLEKS                       R24 R24 K17 ["useState"]
      233 LOADNIL                          R25
      234 CALL                             R24 1 2
      235 GETUPVAL                         R26 2
      236 GETTABLEKS                       R26 R26 K17 ["useState"]
      238 LOADB                            R27 0
      239 CALL                             R26 1 2
      240 GETUPVAL                         R28 2
      241 GETTABLEKS                       R28 R28 K20 ["useCallback"]
      243 NEWCLOSURE                       R29 P9
      244 CAPTURE                          VAL R25
      245 NEWTABLE                         R30 0 0
      247 CALL                             R28 2 1
      248 GETUPVAL                         R29 2
      249 GETTABLEKS                       R29 R29 K20 ["useCallback"]
      251 NEWCLOSURE                       R30 P10
      252 CAPTURE                          VAL R23
      253 CAPTURE                          VAL R24
      254 CAPTURE                          VAL R27
      255 NEWTABLE                         R31 0 2
      257 MOVE                             R32 R23
      258 MOVE                             R33 R24
      259 SETLIST                          R31 R32 2 [1]
      261 CALL                             R29 2 1
      262 GETUPVAL                         R30 2
      263 GETTABLEKS                       R30 R30 K22 ["useEffect"]
      265 NEWCLOSURE                       R31 P11
      266 CAPTURE                          VAL R23
      267 CAPTURE                          VAL R29
      268 NEWTABLE                         R32 0 2
      270 MOVE                             R33 R23
      271 MOVE                             R34 R29
      272 SETLIST                          R32 R33 2 [1]
      274 CALL                             R30 2 0
      275 GETUPVAL                         R30 15
      276 GETTABLEKS                       R30 R30 K25 ["provide"]
      278 NEWTABLE                         R31 0 0
      280 NEWTABLE                         R32 2 0
      282 GETUPVAL                         R33 2
      283 GETTABLEKS                       R33 R33 K26 ["createElement"]
      285 GETUPVAL                         R34 16
      286 DUPTABLE                         R35 K35 [{"mannequin", "falloff", "radius", "segmentationMap", "symmetrical", "symmetryMap", "onChangeSelectedPositions", "brushToolRef", "outerCageContextRef"}]
      287 GETTABLEKS                       R36 R0 K18 ["mannequin"]
      289 SETTABLEKS                       R36 R35 K18 ["mannequin"]
      291 DIVK                             R36 R4 K36 [100]
      292 SETTABLEKS                       R36 R35 K27 ["falloff"]
      294 SETTABLEKS                       R6 R35 K28 ["radius"]
      296 SETTABLEKS                       R14 R35 K29 ["segmentationMap"]
      298 GETTABLEKS                       R36 R8 K37 ["enabled"]
      300 SETTABLEKS                       R36 R35 K30 ["symmetrical"]
      302 SETTABLEKS                       R13 R35 K31 ["symmetryMap"]
      304 SETTABLEKS                       R12 R35 K32 ["onChangeSelectedPositions"]
      306 SETTABLEKS                       R16 R35 K33 ["brushToolRef"]
      308 SETTABLEKS                       R15 R35 K34 ["outerCageContextRef"]
      310 CALL                             R33 2 1
      311 SETTABLEKS                       R33 R32 K1 ["CageEditingTool"]
      313 GETUPVAL                         R33 6
      314 GETTABLEKS                       R33 R33 K38 ["EDITING_TOOLS_GUI_NAMES"]
      316 GETTABLEKS                       R33 R33 K39 ["CageEditingToolToolbar"]
      318 GETUPVAL                         R34 2
      319 GETTABLEKS                       R34 R34 K26 ["createElement"]
      321 GETUPVAL                         R35 17
      322 GETTABLEKS                       R35 R35 K40 ["Toolbar"]
      324 DUPTABLE                         R36 K44 [{"InitialPosition", "HorizontalItems", "OnToolbarSizeChanged"}]
      325 JUMPIFNOT                        R26 ; [+2]
      326 LOADK                            R37 K45 ["Left"]
      327 JUMP                             ; [+1]
      328 LOADK                            R37 K46 ["Center"]
      329 SETTABLEKS                       R37 R36 K41 ["InitialPosition"]
      331 NEWTABLE                         R37 0 10
      333 DUPTABLE                         R38 K53 [{"Type", "Icon", "Tooltip", "TooltipDescription", "OnClick", "Selected"}]
      334 LOADK                            R39 K54 ["Button"]
      335 SETTABLEKS                       R39 R38 K47 ["Type"]
      337 GETTABLEKS                       R39 R2 K55 ["SymmetryImage"]
      339 SETTABLEKS                       R39 R38 K48 ["Icon"]
      341 LOADK                            R41 K1 ["CageEditingTool"]
      342 LOADK                            R42 K56 ["Symmetry"]
      343 NAMECALL                         R39 R1 K57 ["getText"]
      345 CALL                             R39 3 1
      346 SETTABLEKS                       R39 R38 K49 ["Tooltip"]
      348 LOADK                            R41 K1 ["CageEditingTool"]
      349 LOADK                            R42 K58 ["SymmetryDescription"]
      350 NAMECALL                         R39 R1 K57 ["getText"]
      352 CALL                             R39 3 1
      353 SETTABLEKS                       R39 R38 K50 ["TooltipDescription"]
      355 GETTABLEKS                       R39 R8 K59 ["toggle"]
      357 SETTABLEKS                       R39 R38 K51 ["OnClick"]
      359 GETTABLEKS                       R39 R8 K37 ["enabled"]
      361 SETTABLEKS                       R39 R38 K52 ["Selected"]
      363 DUPTABLE                         R39 K60 [{"Type"}]
      364 LOADK                            R40 K61 ["Separator"]
      365 SETTABLEKS                       R40 R39 K47 ["Type"]
      367 DUPTABLE                         R40 K62 [{"Type", "Icon", "Tooltip", "TooltipDescription", "OnClick"}]
      368 LOADK                            R41 K54 ["Button"]
      369 SETTABLEKS                       R41 R40 K47 ["Type"]
      371 GETTABLEKS                       R41 R2 K63 ["MirrorToRightImage"]
      373 SETTABLEKS                       R41 R40 K48 ["Icon"]
      375 LOADK                            R43 K1 ["CageEditingTool"]
      376 LOADK                            R44 K64 ["MirrorLeft"]
      377 NAMECALL                         R41 R1 K57 ["getText"]
      379 CALL                             R41 3 1
      380 SETTABLEKS                       R41 R40 K49 ["Tooltip"]
      382 LOADK                            R43 K1 ["CageEditingTool"]
      383 LOADK                            R44 K65 ["MirrorLeftDescription"]
      384 NAMECALL                         R41 R1 K57 ["getText"]
      386 CALL                             R41 3 1
      387 SETTABLEKS                       R41 R40 K50 ["TooltipDescription"]
      389 NEWCLOSURE                       R41 P12
      390 CAPTURE                          VAL R17
      391 SETTABLEKS                       R41 R40 K51 ["OnClick"]
      393 DUPTABLE                         R41 K62 [{"Type", "Icon", "Tooltip", "TooltipDescription", "OnClick"}]
      394 LOADK                            R42 K54 ["Button"]
      395 SETTABLEKS                       R42 R41 K47 ["Type"]
      397 GETTABLEKS                       R42 R2 K66 ["MirrorToLeftImage"]
      399 SETTABLEKS                       R42 R41 K48 ["Icon"]
      401 LOADK                            R44 K1 ["CageEditingTool"]
      402 LOADK                            R45 K67 ["MirrorRight"]
      403 NAMECALL                         R42 R1 K57 ["getText"]
      405 CALL                             R42 3 1
      406 SETTABLEKS                       R42 R41 K49 ["Tooltip"]
      408 LOADK                            R44 K1 ["CageEditingTool"]
      409 LOADK                            R45 K68 ["MirrorRightDescription"]
      410 NAMECALL                         R42 R1 K57 ["getText"]
      412 CALL                             R42 3 1
      413 SETTABLEKS                       R42 R41 K50 ["TooltipDescription"]
      415 NEWCLOSURE                       R42 P13
      416 CAPTURE                          VAL R17
      417 SETTABLEKS                       R42 R41 K51 ["OnClick"]
      419 DUPTABLE                         R42 K60 [{"Type"}]
      420 LOADK                            R43 K61 ["Separator"]
      421 SETTABLEKS                       R43 R42 K47 ["Type"]
      423 DUPTABLE                         R43 K73 [{"Type", "Value", "OnChange", "Icon", "Tooltip", "TooltipDescription", "Min", "Max"}]
      424 LOADK                            R44 K74 ["Slider"]
      425 SETTABLEKS                       R44 R43 K47 ["Type"]
      427 SETTABLEKS                       R6 R43 K69 ["Value"]
      429 SETTABLEKS                       R7 R43 K70 ["OnChange"]
      431 GETTABLEKS                       R44 R2 K75 ["RadiusImage"]
      433 SETTABLEKS                       R44 R43 K48 ["Icon"]
      435 LOADK                            R46 K1 ["CageEditingTool"]
      436 LOADK                            R47 K13 ["Radius"]
      437 NAMECALL                         R44 R1 K57 ["getText"]
      439 CALL                             R44 3 1
      440 SETTABLEKS                       R44 R43 K49 ["Tooltip"]
      442 LOADK                            R46 K1 ["CageEditingTool"]
      443 LOADK                            R47 K76 ["RadiusDescription"]
      444 NAMECALL                         R44 R1 K57 ["getText"]
      446 CALL                             R44 3 1
      447 SETTABLEKS                       R44 R43 K50 ["TooltipDescription"]
      449 GETUPVAL                         R44 6
      450 GETTABLEKS                       R44 R44 K12 ["CAGE_BRUSH_SETTINGS"]
      452 GETTABLEKS                       R44 R44 K13 ["Radius"]
      454 GETTABLEKS                       R44 R44 K14 ["minimum"]
      456 SETTABLEKS                       R44 R43 K71 ["Min"]
      458 GETUPVAL                         R44 6
      459 GETTABLEKS                       R44 R44 K12 ["CAGE_BRUSH_SETTINGS"]
      461 GETTABLEKS                       R44 R44 K13 ["Radius"]
      463 GETTABLEKS                       R44 R44 K15 ["maximum"]
      465 SETTABLEKS                       R44 R43 K72 ["Max"]
      467 DUPTABLE                         R44 K79 [{"Type", "Value", "OnChange", "Icon", "Tooltip", "TooltipDescription", "Min", "Max", "InputPrecision", "DisplayFormat"}]
      468 LOADK                            R45 K74 ["Slider"]
      469 SETTABLEKS                       R45 R44 K47 ["Type"]
      471 SETTABLEKS                       R4 R44 K69 ["Value"]
      473 SETTABLEKS                       R5 R44 K70 ["OnChange"]
      475 GETTABLEKS                       R45 R2 K80 ["FalloffImage"]
      477 SETTABLEKS                       R45 R44 K48 ["Icon"]
      479 LOADK                            R47 K1 ["CageEditingTool"]
      480 LOADK                            R48 K16 ["Falloff"]
      481 NAMECALL                         R45 R1 K57 ["getText"]
      483 CALL                             R45 3 1
      484 SETTABLEKS                       R45 R44 K49 ["Tooltip"]
      486 LOADK                            R47 K1 ["CageEditingTool"]
      487 LOADK                            R48 K81 ["FalloffDescription"]
      488 NAMECALL                         R45 R1 K57 ["getText"]
      490 CALL                             R45 3 1
      491 SETTABLEKS                       R45 R44 K50 ["TooltipDescription"]
      493 GETUPVAL                         R45 6
      494 GETTABLEKS                       R45 R45 K12 ["CAGE_BRUSH_SETTINGS"]
      496 GETTABLEKS                       R45 R45 K16 ["Falloff"]
      498 GETTABLEKS                       R45 R45 K14 ["minimum"]
      500 SETTABLEKS                       R45 R44 K71 ["Min"]
      502 GETUPVAL                         R45 6
      503 GETTABLEKS                       R45 R45 K12 ["CAGE_BRUSH_SETTINGS"]
      505 GETTABLEKS                       R45 R45 K16 ["Falloff"]
      507 GETTABLEKS                       R45 R45 K15 ["maximum"]
      509 SETTABLEKS                       R45 R44 K72 ["Max"]
      511 LOADN                            R45 0
      512 SETTABLEKS                       R45 R44 K77 ["InputPrecision"]
      514 LOADK                            R45 K82 ["%d%%"]
      515 SETTABLEKS                       R45 R44 K78 ["DisplayFormat"]
      517 DUPTABLE                         R45 K60 [{"Type"}]
      518 LOADK                            R46 K61 ["Separator"]
      519 SETTABLEKS                       R46 R45 K47 ["Type"]
      521 DUPTABLE                         R46 K62 [{"Type", "Icon", "Tooltip", "TooltipDescription", "OnClick"}]
      522 LOADK                            R47 K54 ["Button"]
      523 SETTABLEKS                       R47 R46 K47 ["Type"]
      525 GETTABLEKS                       R47 R2 K83 ["ResetChangesImage"]
      527 SETTABLEKS                       R47 R46 K48 ["Icon"]
      529 LOADK                            R49 K84 ["EditingTools"]
      530 LOADK                            R50 K85 ["ResetEdits"]
      531 NAMECALL                         R47 R1 K57 ["getText"]
      533 CALL                             R47 3 1
      534 SETTABLEKS                       R47 R46 K49 ["Tooltip"]
      536 LOADK                            R49 K84 ["EditingTools"]
      537 LOADK                            R50 K86 ["ResetEditsDescription"]
      538 NAMECALL                         R47 R1 K57 ["getText"]
      540 CALL                             R47 3 1
      541 SETTABLEKS                       R47 R46 K50 ["TooltipDescription"]
      543 SETTABLEKS                       R20 R46 K51 ["OnClick"]
      545 GETTABLEKS                       R48 R0 K87 ["additionalToolbarItems"]
      547 FASTCALL1                        TABLE_UNPACK R48 ; [+2]
      548 GETIMPORT                        R47 K89 [unpack]
      550 CALL                             R47 1 -1
      551 SETLIST                          R37 R38 -1 [1]
      553 SETTABLEKS                       R37 R36 K42 ["HorizontalItems"]
      555 SETTABLEKS                       R28 R36 K43 ["OnToolbarSizeChanged"]
      557 CALL                             R34 2 1
      558 SETTABLE                         R34 R32 R33
      559 CALL                             R30 2 -1
      560 CLOSEUPVALS                      R21
      561 RETURN                           R30 -1

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
       15 GETTABLEKS                       R3 R1 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["Util"]
       19 GETTABLEKS                       R3 R3 K12 ["Constants"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R1 K13 ["Packages"]
       26 GETTABLEKS                       R4 R4 K14 ["Framework"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R1 K13 ["Packages"]
       33 GETTABLEKS                       R5 R5 K15 ["LuaMeshEditingModule"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R1 K13 ["Packages"]
       40 GETTABLEKS                       R6 R6 K15 ["LuaMeshEditingModule"]
       42 GETTABLEKS                       R6 R6 K16 ["Types"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R7 R1 K10 ["Src"]
       49 GETTABLEKS                       R7 R7 K17 ["Components"]
       51 GETTABLEKS                       R7 R7 K18 ["EditingTools"]
       53 GETTABLEKS                       R7 R7 K19 ["CageEditingTool"]
       55 GETTABLEKS                       R7 R7 K20 ["LuaMeshEditingModuleWrapper"]
       57 CALL                             R6 1 1
       58 GETIMPORT                        R7 K9 [require]
       60 GETTABLEKS                       R8 R1 K13 ["Packages"]
       62 GETTABLEKS                       R8 R8 K21 ["React"]
       64 CALL                             R7 1 1
       65 GETIMPORT                        R8 K9 [require]
       67 GETTABLEKS                       R9 R1 K10 ["Src"]
       69 GETTABLEKS                       R9 R9 K22 ["Resources"]
       71 GETTABLEKS                       R9 R9 K23 ["Theme"]
       73 CALL                             R8 1 1
       74 GETIMPORT                        R9 K9 [require]
       76 GETTABLEKS                       R10 R1 K10 ["Src"]
       78 GETTABLEKS                       R10 R10 K16 ["Types"]
       80 CALL                             R9 1 1
       81 GETIMPORT                        R10 K9 [require]
       83 GETTABLEKS                       R11 R1 K13 ["Packages"]
       85 GETTABLEKS                       R11 R11 K24 ["ViewportToolingFramework"]
       87 CALL                             R10 1 1
       88 GETIMPORT                        R11 K9 [require]
       90 GETTABLEKS                       R12 R1 K10 ["Src"]
       92 GETTABLEKS                       R12 R12 K17 ["Components"]
       94 GETTABLEKS                       R12 R12 K18 ["EditingTools"]
       96 GETTABLEKS                       R12 R12 K25 ["createSegmentationMapAsync"]
       98 CALL                             R11 1 1
       99 GETIMPORT                        R12 K9 [require]
      101 GETTABLEKS                       R13 R1 K10 ["Src"]
      103 GETTABLEKS                       R13 R13 K17 ["Components"]
      105 GETTABLEKS                       R13 R13 K18 ["EditingTools"]
      107 GETTABLEKS                       R13 R13 K26 ["createSymmetryMapAsync"]
      109 CALL                             R12 1 1
      110 GETIMPORT                        R13 K9 [require]
      112 GETIMPORT                        R14 K5 [script]
      114 GETTABLEKS                       R14 R14 K27 ["mirrorCage"]
      116 CALL                             R13 1 1
      117 GETIMPORT                        R14 K9 [require]
      119 GETTABLEKS                       R15 R1 K10 ["Src"]
      121 GETTABLEKS                       R15 R15 K28 ["Hooks"]
      123 GETTABLEKS                       R15 R15 K29 ["useAsync"]
      125 CALL                             R14 1 1
      126 GETIMPORT                        R15 K9 [require]
      128 GETTABLEKS                       R16 R1 K10 ["Src"]
      130 GETTABLEKS                       R16 R16 K17 ["Components"]
      132 GETTABLEKS                       R16 R16 K18 ["EditingTools"]
      134 GETTABLEKS                       R16 R16 K30 ["useBindFocusOnPositions"]
      136 CALL                             R15 1 1
      137 GETIMPORT                        R16 K9 [require]
      139 GETIMPORT                        R17 K5 [script]
      141 GETTABLEKS                       R17 R17 K31 ["useKeyboardShortcuts"]
      143 CALL                             R16 1 1
      144 GETIMPORT                        R17 K9 [require]
      146 GETTABLEKS                       R18 R1 K10 ["Src"]
      148 GETTABLEKS                       R18 R18 K28 ["Hooks"]
      150 GETTABLEKS                       R18 R18 K32 ["usePluginSetting"]
      152 CALL                             R17 1 1
      153 GETIMPORT                        R18 K9 [require]
      155 GETTABLEKS                       R19 R1 K10 ["Src"]
      157 GETTABLEKS                       R19 R19 K28 ["Hooks"]
      159 GETTABLEKS                       R19 R19 K33 ["useTogglePluginSetting"]
      161 CALL                             R18 1 1
      162 GETIMPORT                        R19 K9 [require]
      164 GETTABLEKS                       R20 R1 K10 ["Src"]
      166 GETTABLEKS                       R20 R20 K28 ["Hooks"]
      168 GETTABLEKS                       R20 R20 K34 ["useUndoRedoActions"]
      170 CALL                             R19 1 1
      171 GETIMPORT                        R20 K9 [require]
      173 GETTABLEKS                       R21 R1 K10 ["Src"]
      175 GETTABLEKS                       R21 R21 K17 ["Components"]
      177 GETTABLEKS                       R21 R21 K18 ["EditingTools"]
      179 GETTABLEKS                       R21 R21 K19 ["CageEditingTool"]
      181 GETTABLEKS                       R21 R21 K35 ["CageEditingToolHistoryContext"]
      183 CALL                             R20 1 1
      184 GETTABLEKS                       R21 R4 K36 ["Tools"]
      186 GETTABLEKS                       R21 R21 K37 ["BrushTool"]
      188 GETTABLEKS                       R22 R4 K38 ["MeshEditingContexts"]
      190 GETTABLEKS                       R22 R22 K39 ["CageEditingContext"]
      192 GETTABLEKS                       R23 R3 K40 ["ContextServices"]
      194 GETTABLEKS                       R24 R23 K41 ["Localization"]
      196 GETTABLEKS                       R25 R23 K42 ["Stylizer"]
      198 DUPCLOSURE                       R26 K43 [PROTO_15]
      199 CAPTURE                          VAL R24
      200 CAPTURE                          VAL R25
      201 CAPTURE                          VAL R7
      202 CAPTURE                          VAL R20
      203 CAPTURE                          VAL R17
      204 CAPTURE                          VAL R18
      205 CAPTURE                          VAL R2
      206 CAPTURE                          VAL R16
      207 CAPTURE                          VAL R15
      208 CAPTURE                          VAL R14
      209 CAPTURE                          VAL R12
      210 CAPTURE                          VAL R11
      211 CAPTURE                          VAL R13
      212 CAPTURE                          VAL R19
      213 CAPTURE                          VAL R0
      214 CAPTURE                          VAL R23
      215 CAPTURE                          VAL R6
      216 CAPTURE                          VAL R10
      217 RETURN                           R26 1
