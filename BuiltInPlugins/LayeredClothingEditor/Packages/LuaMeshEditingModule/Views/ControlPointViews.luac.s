PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 1
        1 GETTABLEKS                       R0 R1 K0 ["AncestryChanged"]
        3 GETUPVAL                         R2 2
        4 NAMECALL                         R0 R0 K1 ["Connect"]
        6 CALL                             R0 2 1
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R0 R1 K2 ["DescendantRemoving"]
       11 GETUPVAL                         R2 2
       12 NAMECALL                         R0 R0 K1 ["Connect"]
       14 CALL                             R0 2 1
       15 SETUPVAL                         R0 3
       16 GETUPVAL                         R1 5
       17 GETTABLEKS                       R0 R1 K0 ["AncestryChanged"]
       19 GETUPVAL                         R2 2
       20 NAMECALL                         R0 R0 K1 ["Connect"]
       22 CALL                             R0 2 1
       23 SETUPVAL                         R0 4
       24 GETUPVAL                         R1 5
       25 GETTABLEKS                       R0 R1 K3 ["ChildRemoved"]
       27 GETUPVAL                         R2 2
       28 NAMECALL                         R0 R0 K1 ["Connect"]
       30 CALL                             R0 2 1
       31 SETUPVAL                         R0 6
       32 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Name"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["ControlPointsAdornmentsFolderName"]
        6 JUMPIFEQ                         R0 R1 ; [+7]
        8 GETUPVAL                         R0 0
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K1 ["ControlPointsAdornmentsFolderName"]
       12 SETTABLEKS                       R1 R0 K0 ["Name"]
       14 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Name"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["ControlPointsFolderName"]
        6 JUMPIFEQ                         R0 R1 ; [+7]
        8 GETUPVAL                         R0 0
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K1 ["ControlPointsFolderName"]
       12 SETTABLEKS                       R1 R0 K0 ["Name"]
       14 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLE                         R1 R2 R3
        3 GETTABLEKS                       R0 R1 K0 ["Name"]
        5 GETUPVAL                         R1 1
        6 JUMPIFEQ                         R0 R1 ; [+7]
        8 GETUPVAL                         R1 0
        9 GETUPVAL                         R2 1
       10 GETTABLE                         R0 R1 R2
       11 GETUPVAL                         R1 1
       12 SETTABLEKS                       R1 R0 K0 ["Name"]
       14 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLE                         R1 R2 R3
        3 GETTABLEKS                       R0 R1 K0 ["Name"]
        5 GETUPVAL                         R1 1
        6 JUMPIFEQ                         R0 R1 ; [+7]
        8 GETUPVAL                         R1 0
        9 GETUPVAL                         R2 1
       10 GETTABLE                         R0 R1 R2
       11 GETUPVAL                         R1 1
       12 SETTABLEKS                       R1 R0 K0 ["Name"]
       14 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R1 K0 ["ControlPointPositions"]
        2 GETTABLEKS                       R3 R1 K1 ["Adornees"]
        4 GETTABLEKS                       R4 R1 K2 ["Transparency"]
        6 GETTABLEKS                       R5 R1 K3 ["IsSelected"]
        8 GETTABLEKS                       R6 R1 K4 ["IsHovered"]
       10 GETTABLEKS                       R7 R1 K5 ["SelectedMesh"]
       12 GETTABLEKS                       R8 R1 K6 ["FolderChangedCallback"]
       14 SETUPVAL                         R8 0
       15 GETUPVAL                         R8 1
       16 JUMPIF                           R8 ; [+97]
       17 GETUPVAL                         R8 2
       18 JUMPIF                           R8 ; [+95]
       19 GETIMPORT                        R8 K9 [Instance.new]
       21 LOADK                            R9 K10 ["Folder"]
       22 CALL                             R8 1 1
       23 SETUPVAL                         R8 1
       24 GETUPVAL                         R8 1
       25 GETUPVAL                         R9 3
       26 SETTABLEKS                       R9 R8 K11 ["Parent"]
       28 GETUPVAL                         R8 1
       29 GETUPVAL                         R10 4
       30 GETTABLEKS                       R9 R10 K12 ["ControlPointsAdornmentsFolderName"]
       32 SETTABLEKS                       R9 R8 K13 ["Name"]
       34 GETUPVAL                         R8 1
       35 LOADB                            R9 0
       36 SETTABLEKS                       R9 R8 K14 ["Archivable"]
       38 GETUPVAL                         R8 1
       39 LOADK                            R10 K13 ["Name"]
       40 NAMECALL                         R8 R8 K15 ["GetPropertyChangedSignal"]
       42 CALL                             R8 2 1
       43 NEWCLOSURE                       R10 P0
       44 CAPTURE                          UPVAL U1
       45 CAPTURE                          UPVAL U4
       46 NAMECALL                         R8 R8 K16 ["Connect"]
       48 CALL                             R8 2 0
       49 GETIMPORT                        R8 K9 [Instance.new]
       51 LOADK                            R9 K10 ["Folder"]
       52 CALL                             R8 1 1
       53 SETUPVAL                         R8 2
       54 GETUPVAL                         R8 2
       55 LOADB                            R9 0
       56 SETTABLEKS                       R9 R8 K14 ["Archivable"]
       58 GETUPVAL                         R8 2
       59 GETIMPORT                        R10 K18 [game]
       61 GETTABLEKS                       R9 R10 K19 ["Workspace"]
       63 SETTABLEKS                       R9 R8 K11 ["Parent"]
       65 GETUPVAL                         R8 2
       66 GETUPVAL                         R10 4
       67 GETTABLEKS                       R9 R10 K20 ["ControlPointsFolderName"]
       69 SETTABLEKS                       R9 R8 K13 ["Name"]
       71 GETUPVAL                         R8 2
       72 LOADK                            R10 K13 ["Name"]
       73 NAMECALL                         R8 R8 K15 ["GetPropertyChangedSignal"]
       75 CALL                             R8 2 1
       76 NEWCLOSURE                       R10 P1
       77 CAPTURE                          UPVAL U2
       78 CAPTURE                          UPVAL U4
       79 NAMECALL                         R8 R8 K16 ["Connect"]
       81 CALL                             R8 2 0
       82 GETUPVAL                         R9 1
       83 GETTABLEKS                       R8 R9 K21 ["AncestryChanged"]
       85 GETUPVAL                         R10 6
       86 NAMECALL                         R8 R8 K16 ["Connect"]
       88 CALL                             R8 2 1
       89 SETUPVAL                         R8 5
       90 GETUPVAL                         R9 1
       91 GETTABLEKS                       R8 R9 K22 ["DescendantRemoving"]
       93 GETUPVAL                         R10 6
       94 NAMECALL                         R8 R8 K16 ["Connect"]
       96 CALL                             R8 2 1
       97 SETUPVAL                         R8 7
       98 GETUPVAL                         R9 2
       99 GETTABLEKS                       R8 R9 K21 ["AncestryChanged"]
      101 GETUPVAL                         R10 6
      102 NAMECALL                         R8 R8 K16 ["Connect"]
      104 CALL                             R8 2 1
      105 SETUPVAL                         R8 8
      106 GETUPVAL                         R9 2
      107 GETTABLEKS                       R8 R9 K23 ["ChildRemoved"]
      109 GETUPVAL                         R10 6
      110 NAMECALL                         R8 R8 K16 ["Connect"]
      112 CALL                             R8 2 1
      113 SETUPVAL                         R8 9
      114 GETIMPORT                        R8 K25 [pairs]
      116 MOVE                             R9 R2
      117 CALL                             R8 1 3
      118 FORGPREP_NEXT                    R8
      119 JUMPIFNOT                        R7 ; [+2]
      120 JUMPIFNOTEQ                      R11 R7 ; [+215]
      122 GETUPVAL                         R13 10
      123 MOVE                             R15 R11
      124 NAMECALL                         R13 R13 K26 ["getMeshOrigin"]
      126 CALL                             R13 2 1
      127 GETIMPORT                        R14 K25 [pairs]
      129 MOVE                             R15 R12
      130 CALL                             R14 1 3
      131 FORGPREP_NEXT                    R14
      132 MOVE                             R21 R11
      133 NAMECALL                         R19 R3 K27 ["getAdornee"]
      135 CALL                             R19 2 1
      136 LOADK                            R23 K28 ["Adornee part should exist for: "]
      137 MOVE                             R24 R11
      138 LOADK                            R25 K29 [" in game.Workspace."]
      139 GETUPVAL                         R27 4
      140 GETTABLEKS                       R26 R27 K20 ["ControlPointsFolderName"]
      142 CONCAT                           R22 R23 R26
      143 FASTCALL2                        ASSERT R19 R22 ; [+4]
      145 MOVE                             R21 R19
      146 GETIMPORT                        R20 K31 [assert]
      148 CALL                             R20 2 0
      149 GETUPVAL                         R21 11
      150 GETTABLE                         R20 R21 R11
      151 JUMPIF                           R20 ; [+32]
      152 GETUPVAL                         R20 11
      153 GETIMPORT                        R21 K9 [Instance.new]
      155 LOADK                            R22 K10 ["Folder"]
      156 CALL                             R21 1 1
      157 SETTABLE                         R21 R20 R11
      158 GETUPVAL                         R21 11
      159 GETTABLE                         R20 R21 R11
      160 SETTABLEKS                       R11 R20 K13 ["Name"]
      162 GETUPVAL                         R21 11
      163 GETTABLE                         R20 R21 R11
      164 LOADB                            R21 0
      165 SETTABLEKS                       R21 R20 K14 ["Archivable"]
      167 GETUPVAL                         R21 11
      168 GETTABLE                         R20 R21 R11
      169 GETUPVAL                         R21 2
      170 SETTABLEKS                       R21 R20 K11 ["Parent"]
      172 GETUPVAL                         R21 11
      173 GETTABLE                         R20 R21 R11
      174 LOADK                            R22 K13 ["Name"]
      175 NAMECALL                         R20 R20 K15 ["GetPropertyChangedSignal"]
      177 CALL                             R20 2 1
      178 NEWCLOSURE                       R22 P2
      179 CAPTURE                          UPVAL U11
      180 CAPTURE                          VAL R11
      181 NAMECALL                         R20 R20 K16 ["Connect"]
      183 CALL                             R20 2 0
      184 GETUPVAL                         R21 12
      185 GETTABLE                         R20 R21 R11
      186 JUMPIF                           R20 ; [+32]
      187 GETUPVAL                         R20 12
      188 GETIMPORT                        R21 K9 [Instance.new]
      190 LOADK                            R22 K10 ["Folder"]
      191 CALL                             R21 1 1
      192 SETTABLE                         R21 R20 R11
      193 GETUPVAL                         R21 12
      194 GETTABLE                         R20 R21 R11
      195 SETTABLEKS                       R11 R20 K13 ["Name"]
      197 GETUPVAL                         R21 12
      198 GETTABLE                         R20 R21 R11
      199 LOADB                            R21 0
      200 SETTABLEKS                       R21 R20 K14 ["Archivable"]
      202 GETUPVAL                         R21 12
      203 GETTABLE                         R20 R21 R11
      204 GETUPVAL                         R21 1
      205 SETTABLEKS                       R21 R20 K11 ["Parent"]
      207 GETUPVAL                         R21 12
      208 GETTABLE                         R20 R21 R11
      209 LOADK                            R22 K13 ["Name"]
      210 NAMECALL                         R20 R20 K15 ["GetPropertyChangedSignal"]
      212 CALL                             R20 2 1
      213 NEWCLOSURE                       R22 P3
      214 CAPTURE                          UPVAL U12
      215 CAPTURE                          VAL R11
      216 NAMECALL                         R20 R20 K16 ["Connect"]
      218 CALL                             R20 2 0
      219 GETUPVAL                         R21 13
      220 GETTABLE                         R20 R21 R11
      221 JUMPIF                           R20 ; [+4]
      222 GETUPVAL                         R20 13
      223 NEWTABLE                         R21 0 0
      225 SETTABLE                         R21 R20 R11
      226 GETUPVAL                         R22 13
      227 GETTABLE                         R21 R22 R11
      228 GETTABLE                         R20 R21 R17
      229 JUMPIF                           R20 ; [+7]
      230 GETUPVAL                         R21 13
      231 GETTABLE                         R20 R21 R11
      232 GETUPVAL                         R22 14
      233 GETTABLEKS                       R21 R22 K8 ["new"]
      235 CALL                             R21 0 1
      236 SETTABLE                         R21 R20 R17
      237 GETUPVAL                         R22 13
      238 GETTABLE                         R21 R22 R11
      239 GETTABLE                         R20 R21 R17
      240 DUPTABLE                         R22 K43 [{"Name", "Transparency", "Position", "PartParent", "Adornee", "AdornmentParent", "Selected", "Hovered", "Shape", "Size", "Weight", "MeshOrigin", "Color"}]
      241 SETTABLEKS                       R17 R22 K13 ["Name"]
      243 SETTABLEKS                       R4 R22 K2 ["Transparency"]
      245 GETTABLE                         R24 R2 R11
      246 GETTABLE                         R23 R24 R17
      247 SETTABLEKS                       R23 R22 K32 ["Position"]
      249 GETUPVAL                         R24 11
      250 GETTABLE                         R23 R24 R11
      251 SETTABLEKS                       R23 R22 K33 ["PartParent"]
      253 MOVE                             R25 R11
      254 NAMECALL                         R23 R3 K27 ["getAdornee"]
      256 CALL                             R23 2 1
      257 SETTABLEKS                       R23 R22 K34 ["Adornee"]
      259 GETUPVAL                         R24 12
      260 GETTABLE                         R23 R24 R11
      261 SETTABLEKS                       R23 R22 K35 ["AdornmentParent"]
      263 MOVE                             R24 R5
      264 MOVE                             R25 R11
      265 MOVE                             R26 R17
      266 CALL                             R24 2 1
      267 JUMPIFNOT                        R24 ; [+2]
      268 LOADB                            R23 1
      269 JUMP                             ; [+1]
      270 LOADB                            R23 0
      271 SETTABLEKS                       R23 R22 K36 ["Selected"]
      273 MOVE                             R23 R6
      274 MOVE                             R24 R11
      275 MOVE                             R25 R17
      276 CALL                             R23 2 1
      277 SETTABLEKS                       R23 R22 K37 ["Hovered"]
      279 LOADK                            R23 K44 ["Sphere"]
      280 SETTABLEKS                       R23 R22 K38 ["Shape"]
      282 GETUPVAL                         R25 4
      283 GETTABLEKS                       R24 R25 K45 ["ControlPoint"]
      285 GETTABLEKS                       R23 R24 K39 ["Size"]
      287 SETTABLEKS                       R23 R22 K39 ["Size"]
      289 MOVE                             R23 R5
      290 MOVE                             R24 R11
      291 MOVE                             R25 R17
      292 CALL                             R23 2 1
      293 SETTABLEKS                       R23 R22 K40 ["Weight"]
      295 SETTABLEKS                       R13 R22 K41 ["MeshOrigin"]
      297 GETUPVAL                         R24 15
      298 CALL                             R24 0 1
      299 JUMPIFNOT                        R24 ; [+28]
      300 GETTABLEKS                       R24 R1 K46 ["CenterHoveredPoint"]
      302 JUMPIFEQKNIL                     R24 ; [+25]
      304 GETTABLEKS                       R25 R1 K46 ["CenterHoveredPoint"]
      306 GETTABLEKS                       R24 R25 K11 ["Parent"]
      308 GETUPVAL                         R26 12
      309 GETTABLE                         R25 R26 R11
      310 JUMPIFNOTEQ                      R24 R25 ; [+17]
      312 GETTABLEKS                       R26 R1 K46 ["CenterHoveredPoint"]
      314 GETTABLEKS                       R25 R26 K13 ["Name"]
      316 FASTCALL1                        TONUMBER R25 ; [+2]
      317 GETIMPORT                        R24 K48 [tonumber]
      319 CALL                             R24 1 1
      320 JUMPIFNOTEQ                      R24 R17 ; [+7]
      322 GETUPVAL                         R25 4
      323 GETTABLEKS                       R24 R25 K45 ["ControlPoint"]
      325 GETTABLEKS                       R23 R24 K49 ["HoveredCenterColor"]
      327 JUMP                             ; [+1]
      328 LOADNIL                          R23
      329 SETTABLEKS                       R23 R22 K42 ["Color"]
      331 NAMECALL                         R20 R20 K50 ["render"]
      333 CALL                             R20 2 0
      334 FORGLOOP                         R14 1 ; [-203]
      336 FORGLOOP                         R8 2 ; [-218]
      338 GETUPVAL                         R8 16
      339 GETUPVAL                         R9 13
      340 MOVE                             R10 R2
      341 CALL                             R8 2 1
      342 LENGTH                           R9 R8
      343 LOADN                            R10 0
      344 JUMPIFNOTLT                      R10 R9 ; [+40]
      346 NAMECALL                         R9 R0 K51 ["disconnect"]
      348 CALL                             R9 1 0
      349 GETUPVAL                         R9 17
      350 GETUPVAL                         R10 13
      351 MOVE                             R11 R8
      352 CALL                             R9 2 0
      353 GETUPVAL                         R10 1
      354 GETTABLEKS                       R9 R10 K21 ["AncestryChanged"]
      356 GETUPVAL                         R11 6
      357 NAMECALL                         R9 R9 K16 ["Connect"]
      359 CALL                             R9 2 1
      360 SETUPVAL                         R9 5
      361 GETUPVAL                         R10 1
      362 GETTABLEKS                       R9 R10 K22 ["DescendantRemoving"]
      364 GETUPVAL                         R11 6
      365 NAMECALL                         R9 R9 K16 ["Connect"]
      367 CALL                             R9 2 1
      368 SETUPVAL                         R9 7
      369 GETUPVAL                         R10 2
      370 GETTABLEKS                       R9 R10 K21 ["AncestryChanged"]
      372 GETUPVAL                         R11 6
      373 NAMECALL                         R9 R9 K16 ["Connect"]
      375 CALL                             R9 2 1
      376 SETUPVAL                         R9 8
      377 GETUPVAL                         R10 2
      378 GETTABLEKS                       R9 R10 K23 ["ChildRemoved"]
      380 GETUPVAL                         R11 6
      381 NAMECALL                         R9 R9 K16 ["Connect"]
      383 CALL                             R9 2 1
      384 SETUPVAL                         R9 9
      385 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+6]
        2 GETUPVAL                         R1 0
        3 NAMECALL                         R1 R1 K0 ["Disconnect"]
        5 CALL                             R1 1 0
        6 LOADNIL                          R1
        7 SETUPVAL                         R1 0
        8 GETUPVAL                         R1 1
        9 JUMPIFNOT                        R1 ; [+6]
       10 GETUPVAL                         R1 1
       11 NAMECALL                         R1 R1 K0 ["Disconnect"]
       13 CALL                             R1 1 0
       14 LOADNIL                          R1
       15 SETUPVAL                         R1 1
       16 GETUPVAL                         R1 2
       17 JUMPIFNOT                        R1 ; [+6]
       18 GETUPVAL                         R1 2
       19 NAMECALL                         R1 R1 K0 ["Disconnect"]
       21 CALL                             R1 1 0
       22 LOADNIL                          R1
       23 SETUPVAL                         R1 2
       24 GETUPVAL                         R1 3
       25 JUMPIFNOT                        R1 ; [+6]
       26 GETUPVAL                         R1 3
       27 NAMECALL                         R1 R1 K0 ["Disconnect"]
       29 CALL                             R1 1 0
       30 LOADNIL                          R1
       31 SETUPVAL                         R1 3
       32 RETURN                           R0 0

PROTO_8:
        0 NAMECALL                         R1 R0 K0 ["disconnect"]
        2 CALL                             R1 1 0
        3 GETIMPORT                        R1 K2 [pairs]
        5 GETUPVAL                         R2 0
        6 CALL                             R1 1 3
        7 FORGPREP_NEXT                    R1
        8 GETIMPORT                        R6 K2 [pairs]
       10 MOVE                             R7 R5
       11 CALL                             R6 1 3
       12 FORGPREP_NEXT                    R6
       13 NAMECALL                         R11 R10 K3 ["cleanup"]
       15 CALL                             R11 1 0
       16 FORGLOOP                         R6 2 ; [-4]
       18 FORGLOOP                         R1 2 ; [-11]
       20 GETIMPORT                        R1 K2 [pairs]
       22 GETUPVAL                         R2 1
       23 CALL                             R1 1 3
       24 FORGPREP_NEXT                    R1
       25 NAMECALL                         R6 R5 K4 ["Destroy"]
       27 CALL                             R6 1 0
       28 FORGLOOP                         R1 2 ; [-4]
       30 NEWTABLE                         R1 0 0
       32 SETUPVAL                         R1 1
       33 GETIMPORT                        R1 K2 [pairs]
       35 GETUPVAL                         R2 2
       36 CALL                             R1 1 3
       37 FORGPREP_NEXT                    R1
       38 NAMECALL                         R6 R5 K4 ["Destroy"]
       40 CALL                             R6 1 0
       41 FORGLOOP                         R1 2 ; [-4]
       43 NEWTABLE                         R1 0 0
       45 SETUPVAL                         R1 2
       46 GETUPVAL                         R1 3
       47 JUMPIFNOT                        R1 ; [+6]
       48 GETUPVAL                         R1 3
       49 NAMECALL                         R1 R1 K4 ["Destroy"]
       51 CALL                             R1 1 0
       52 LOADNIL                          R1
       53 SETUPVAL                         R1 3
       54 GETUPVAL                         R1 4
       55 JUMPIFNOT                        R1 ; [+6]
       56 GETUPVAL                         R1 4
       57 NAMECALL                         R1 R1 K4 ["Destroy"]
       59 CALL                             R1 1 0
       60 LOADNIL                          R1
       61 SETUPVAL                         R1 4
       62 NEWTABLE                         R1 0 0
       64 SETUPVAL                         R1 0
       65 RETURN                           R0 0

PROTO_9:
        0 JUMPIF                           R2 ; [+5]
        1 GETIMPORT                        R3 K1 [error]
        3 LOADK                            R4 K2 ["Could not get selectables for mesh, selectables argument was nil."]
        4 CALL                             R3 1 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R4 0
        7 GETTABLE                         R3 R4 R1
        8 JUMPIF                           R3 ; [+7]
        9 GETIMPORT                        R4 K1 [error]
       11 LOADK                            R6 K3 ["No views were found for mesh: "]
       12 MOVE                             R7 R1
       13 CONCAT                           R5 R6 R7
       14 CALL                             R4 1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R4 1
       17 MOVE                             R6 R1
       18 NAMECALL                         R4 R4 K4 ["getMeshOrigin"]
       20 CALL                             R4 2 1
       21 GETIMPORT                        R5 K6 [pairs]
       23 MOVE                             R6 R3
       24 CALL                             R5 1 3
       25 FORGPREP_NEXT                    R5
       26 DUPTABLE                         R12 K9 [{"Center", "Selectable"}]
       27 GETTABLEKS                       R16 R9 K10 ["adornment"]
       29 GETTABLEKS                       R15 R16 K11 ["CFrame"]
       31 GETTABLEKS                       R14 R15 K12 ["p"]
       33 MUL                              R13 R4 R14
       34 SETTABLEKS                       R13 R12 K7 ["Center"]
       36 GETUPVAL                         R14 2
       37 GETTABLEKS                       R13 R14 K13 ["new"]
       39 MOVE                             R14 R1
       40 MOVE                             R15 R8
       41 CALL                             R13 2 1
       42 SETTABLEKS                       R13 R12 K8 ["Selectable"]
       44 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
       46 MOVE                             R11 R2
       47 GETIMPORT                        R10 K16 [table.insert]
       49 CALL                             R10 2 0
       50 FORGLOOP                         R5 2 ; [-25]
       52 RETURN                           R0 0

PROTO_10:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 GETUPVAL                         R3 0
        5 CALL                             R2 1 3
        6 FORGPREP_NEXT                    R2
        7 MOVE                             R9 R5
        8 MOVE                             R10 R1
        9 NAMECALL                         R7 R0 K2 ["getSelectablesForMesh"]
       11 CALL                             R7 3 0
       12 FORGLOOP                         R2 1 ; [-6]
       14 RETURN                           R1 1

PROTO_11:
        0 NEWTABLE                         R2 8 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 NEWTABLE                         R2 0 0
       10 NEWTABLE                         R3 0 0
       12 LOADNIL                          R4
       13 NEWTABLE                         R5 0 0
       15 LOADNIL                          R6
       16 LOADNIL                          R7
       17 LOADNIL                          R8
       18 LOADNIL                          R9
       19 LOADNIL                          R10
       20 LOADNIL                          R11
       21 NEWCLOSURE                       R12 P0
       22 CAPTURE                          REF R7
       23 NEWCLOSURE                       R13 P1
       24 CAPTURE                          REF R8
       25 CAPTURE                          REF R4
       26 CAPTURE                          VAL R12
       27 CAPTURE                          REF R9
       28 CAPTURE                          REF R10
       29 CAPTURE                          REF R6
       30 CAPTURE                          REF R11
       31 NEWCLOSURE                       R14 P2
       32 CAPTURE                          REF R7
       33 CAPTURE                          REF R4
       34 CAPTURE                          REF R6
       35 CAPTURE                          UPVAL U1
       36 CAPTURE                          UPVAL U2
       37 CAPTURE                          REF R8
       38 CAPTURE                          VAL R12
       39 CAPTURE                          REF R9
       40 CAPTURE                          REF R10
       41 CAPTURE                          REF R11
       42 CAPTURE                          VAL R0
       43 CAPTURE                          REF R5
       44 CAPTURE                          REF R3
       45 CAPTURE                          REF R2
       46 CAPTURE                          UPVAL U3
       47 CAPTURE                          UPVAL U4
       48 CAPTURE                          UPVAL U5
       49 CAPTURE                          UPVAL U6
       50 SETTABLEKS                       R14 R1 K2 ["render"]
       52 NEWCLOSURE                       R14 P3
       53 CAPTURE                          REF R8
       54 CAPTURE                          REF R9
       55 CAPTURE                          REF R10
       56 CAPTURE                          REF R11
       57 SETTABLEKS                       R14 R1 K3 ["disconnect"]
       59 NEWCLOSURE                       R14 P4
       60 CAPTURE                          REF R2
       61 CAPTURE                          REF R5
       62 CAPTURE                          REF R3
       63 CAPTURE                          REF R4
       64 CAPTURE                          REF R6
       65 SETTABLEKS                       R14 R1 K4 ["cleanup"]
       67 NEWCLOSURE                       R14 P5
       68 CAPTURE                          REF R2
       69 CAPTURE                          VAL R0
       70 CAPTURE                          UPVAL U7
       71 SETTABLEKS                       R14 R1 K5 ["getSelectablesForMesh"]
       73 NEWCLOSURE                       R14 P6
       74 CAPTURE                          REF R2
       75 SETTABLEKS                       R14 R1 K6 ["getSelectables"]
       77 CLOSEUPVALS                      R2
       78 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["CoreGui"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R4 K6 [script]
       15 GETTABLEKS                       R3 R4 K7 ["Parent"]
       17 GETTABLEKS                       R2 R3 K7 ["Parent"]
       19 GETTABLEKS                       R3 R2 K8 ["Views"]
       21 GETTABLEKS                       R4 R2 K9 ["Util"]
       23 GETIMPORT                        R5 K11 [require]
       25 GETTABLEKS                       R7 R2 K12 ["Flags"]
       27 GETTABLEKS                       R6 R7 K13 ["getFFlagAvatarPreviewerCageEditingTools"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K11 [require]
       32 GETTABLEKS                       R7 R3 K14 ["ControlPointView"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K11 [require]
       37 GETTABLEKS                       R8 R3 K15 ["types"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K11 [require]
       42 GETTABLEKS                       R9 R4 K16 ["Constants"]
       44 CALL                             R8 1 1
       45 GETIMPORT                        R9 K11 [require]
       47 GETTABLEKS                       R10 R4 K17 ["getUnusedViewsToRemove"]
       49 CALL                             R9 1 1
       50 GETIMPORT                        R10 K11 [require]
       52 GETTABLEKS                       R11 R4 K18 ["cleanupUnusedViews"]
       54 CALL                             R10 1 1
       55 GETIMPORT                        R11 K11 [require]
       57 GETTABLEKS                       R12 R4 K19 ["Selectable"]
       59 CALL                             R11 1 1
       60 NEWTABLE                         R12 2 0
       62 SETTABLEKS                       R12 R12 K20 ["__index"]
       64 DUPCLOSURE                       R13 K21 [PROTO_11]
       65 CAPTURE                          VAL R12
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R10
       72 CAPTURE                          VAL R11
       73 SETTABLEKS                       R13 R12 K22 ["new"]
       75 RETURN                           R12 1
