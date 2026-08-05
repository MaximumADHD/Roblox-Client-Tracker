PROTO_0:
        0 JUMPIFNOT                        R0 ; [+1]
        1 JUMPIF                           R1 ; [+2]
        2 LOADNIL                          R2
        3 RETURN                           R2 1
        4 GETIMPORT                        R2 K1 [pairs]
        6 MOVE                             R3 R0
        7 CALL                             R2 1 3
        8 FORGPREP_NEXT                    R2
        9 GETTABLEKS                       R7 R6 K2 ["id"]
       11 JUMPIFNOTEQ                      R7 R1 ; [+2]
       13 RETURN                           R6 1
       14 GETTABLEKS                       R7 R6 K3 ["items"]
       16 JUMPIFNOT                        R7 ; [+7]
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R8 R6 K3 ["items"]
       20 MOVE                             R9 R1
       21 CALL                             R7 2 1
       22 JUMPIFNOT                        R7 ; [+1]
       23 RETURN                           R7 1
       24 FORGLOOP                         R2 2 ; [-16]
       26 LOADNIL                          R2
       27 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 JUMPIF                           R0 ; [+1]
        3 RETURN                           R2 1
        4 GETIMPORT                        R3 K1 [pairs]
        6 MOVE                             R4 R0
        7 CALL                             R3 1 3
        8 FORGPREP_NEXT                    R3
        9 GETTABLEKS                       R8 R7 K2 ["id"]
       11 JUMPIFNOT                        R8 ; [+29]
       12 DUPTABLE                         R10 K6 [{"id", "text", "icon", "isDisabled"}]
       13 GETTABLEKS                       R11 R7 K2 ["id"]
       15 SETTABLEKS                       R11 R10 K2 ["id"]
       17 JUMPIFNOT                        R1 ; [+4]
       18 MOVE                             R11 R1
       19 MOVE                             R12 R7
       20 CALL                             R11 1 1
       21 JUMP                             ; [+2]
       22 GETTABLEKS                       R11 R7 K3 ["text"]
       24 SETTABLEKS                       R11 R10 K3 ["text"]
       26 GETTABLEKS                       R11 R7 K4 ["icon"]
       28 SETTABLEKS                       R11 R10 K4 ["icon"]
       30 GETTABLEKS                       R11 R7 K5 ["isDisabled"]
       32 SETTABLEKS                       R11 R10 K5 ["isDisabled"]
       34 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       36 MOVE                             R9 R2
       37 GETIMPORT                        R8 K9 [table.insert]
       39 CALL                             R8 2 0
       40 JUMP                             ; [+21]
       41 GETTABLEKS                       R8 R7 K10 ["items"]
       43 JUMPIFNOT                        R8 ; [+18]
       44 DUPTABLE                         R10 K12 [{"title", "items"}]
       45 GETTABLEKS                       R11 R7 K11 ["title"]
       47 SETTABLEKS                       R11 R10 K11 ["title"]
       49 GETUPVAL                         R11 0
       50 GETTABLEKS                       R12 R7 K10 ["items"]
       52 MOVE                             R13 R1
       53 CALL                             R11 2 1
       54 SETTABLEKS                       R11 R10 K10 ["items"]
       56 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       58 MOVE                             R9 R2
       59 GETIMPORT                        R8 K9 [table.insert]
       61 CALL                             R8 2 0
       62 FORGLOOP                         R3 2 ; [-54]
       64 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Value"]
        3 JUMPIF                           R0 ; [+2]
        4 LOADK                            R0 K1 [""]
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K2 ["Options"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["Value"]
       13 CALL                             R0 2 1
       14 JUMPIFNOT                        R0 ; [+15]
       15 GETUPVAL                         R1 2
       16 JUMPIF                           R1 ; [+10]
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K3 ["formatAsString"]
       20 JUMPIFNOT                        R1 ; [+6]
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R1 R1 K3 ["formatAsString"]
       24 MOVE                             R2 R0
       25 CALL                             R1 1 -1
       26 RETURN                           R1 -1
       27 GETTABLEKS                       R1 R0 K4 ["text"]
       29 RETURN                           R1 1
       30 GETUPVAL                         R1 2
       31 JUMPIF                           R1 ; [+24]
       32 GETUPVAL                         R1 0
       33 GETTABLEKS                       R1 R1 K3 ["formatAsString"]
       35 JUMPIFNOT                        R1 ; [+20]
       36 GETUPVAL                         R1 0
       37 GETTABLEKS                       R1 R1 K3 ["formatAsString"]
       39 DUPTABLE                         R2 K6 [{"id", "text"}]
       40 GETUPVAL                         R3 0
       41 GETTABLEKS                       R3 R3 K0 ["Value"]
       43 SETTABLEKS                       R3 R2 K5 ["id"]
       45 GETUPVAL                         R4 0
       46 GETTABLEKS                       R4 R4 K0 ["Value"]
       48 FASTCALL1                        TOSTRING R4 ; [+2]
       49 GETIMPORT                        R3 K8 [tostring]
       51 CALL                             R3 1 1
       52 SETTABLEKS                       R3 R2 K4 ["text"]
       54 CALL                             R1 1 -1
       55 RETURN                           R1 -1
       56 GETUPVAL                         R2 0
       57 GETTABLEKS                       R2 R2 K0 ["Value"]
       59 FASTCALL1                        TOSTRING R2 ; [+2]
       60 GETIMPORT                        R1 K8 [tostring]
       62 CALL                             R1 1 1
       63 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Options"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["Value"]
        7 CALL                             R0 2 1
        8 JUMPIFNOT                        R0 ; [+3]
        9 GETTABLEKS                       R1 R0 K2 ["icon"]
       11 RETURN                           R1 1
       12 LOADNIL                          R1
       13 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Options"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["Value"]
        7 CALL                             R0 2 1
        8 GETUPVAL                         R1 2
        9 JUMPIFNOT                        R0 ; [+3]
       10 GETTABLEKS                       R2 R0 K2 ["text"]
       12 JUMP                             ; [+8]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K1 ["Value"]
       16 ORK                              R3 R4 K3 [""]
       17 FASTCALL1                        TOSTRING R3 ; [+2]
       18 GETIMPORT                        R2 K5 [tostring]
       20 CALL                             R2 1 1
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onChanged"]
        3 LOADNIL                          R1
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K1 ["getValue"]
        7 CALL                             R2 1 -1
        8 CALL                             R0 -1 0
        9 GETUPVAL                         R0 2
       10 LOADB                            R1 0
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onChanged"]
        3 MOVE                             R2 R0
        4 LOADNIL                          R3
        5 CALL                             R1 2 0
        6 GETUPVAL                         R1 1
        7 CALL                             R1 0 0
        8 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Options"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["formatAsString"]
        7 CALL                             R0 2 1
        8 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K2 [UDim.new]
        3 LOADN                            R3 0
        4 GETTABLEKS                       R4 R0 K3 ["AbsoluteSize"]
        6 GETTABLEKS                       R4 R4 K4 ["X"]
        8 CALL                             R2 2 -1
        9 CALL                             R1 -1 0
       10 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useState"]
        3 LOADB                            R3 0
        4 CALL                             R2 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K1 ["useRef"]
        8 LOADNIL                          R5
        9 CALL                             R4 1 1
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K2 ["useBinding"]
       13 GETTABLEKS                       R6 R0 K3 ["width"]
       15 CALL                             R5 1 2
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R7 R7 K0 ["useState"]
       19 LOADB                            R8 0
       20 CALL                             R7 1 2
       21 GETUPVAL                         R9 0
       22 GETTABLEKS                       R9 R9 K4 ["useMemo"]
       24 NEWCLOSURE                       R10 P0
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          VAL R7
       28 NEWTABLE                         R11 0 4
       30 GETTABLEKS                       R12 R0 K5 ["Options"]
       32 GETTABLEKS                       R13 R0 K6 ["Value"]
       34 MOVE                             R14 R7
       35 GETTABLEKS                       R15 R0 K7 ["formatAsString"]
       37 SETLIST                          R11 R12 4 [1]
       39 CALL                             R9 2 1
       40 GETUPVAL                         R10 0
       41 GETTABLEKS                       R10 R10 K2 ["useBinding"]
       43 MOVE                             R11 R9
       44 CALL                             R10 1 2
       45 GETUPVAL                         R12 0
       46 GETTABLEKS                       R12 R12 K4 ["useMemo"]
       48 NEWCLOSURE                       R13 P1
       49 CAPTURE                          UPVAL U1
       50 CAPTURE                          VAL R0
       51 NEWTABLE                         R14 0 2
       53 GETTABLEKS                       R15 R0 K5 ["Options"]
       55 GETTABLEKS                       R16 R0 K6 ["Value"]
       57 SETLIST                          R14 R15 2 [1]
       59 CALL                             R12 2 1
       60 GETUPVAL                         R13 0
       61 GETTABLEKS                       R13 R13 K8 ["useEffect"]
       63 NEWCLOSURE                       R14 P2
       64 CAPTURE                          UPVAL U1
       65 CAPTURE                          VAL R0
       66 CAPTURE                          VAL R11
       67 NEWTABLE                         R15 0 2
       69 GETTABLEKS                       R16 R0 K5 ["Options"]
       71 GETTABLEKS                       R17 R0 K6 ["Value"]
       73 SETLIST                          R15 R16 2 [1]
       75 CALL                             R13 2 0
       76 GETUPVAL                         R13 0
       77 GETTABLEKS                       R13 R13 K9 ["useCallback"]
       79 NEWCLOSURE                       R14 P3
       80 CAPTURE                          VAL R3
       81 NEWTABLE                         R15 0 1
       83 MOVE                             R16 R3
       84 SETLIST                          R15 R16 1 [1]
       86 CALL                             R13 2 1
       87 GETUPVAL                         R14 0
       88 GETTABLEKS                       R14 R14 K9 ["useCallback"]
       90 NEWCLOSURE                       R15 P4
       91 CAPTURE                          VAL R13
       92 CAPTURE                          VAL R8
       93 NEWTABLE                         R16 0 2
       95 MOVE                             R17 R13
       96 MOVE                             R18 R8
       97 SETLIST                          R16 R17 2 [1]
       99 CALL                             R14 2 1
      100 GETUPVAL                         R15 0
      101 GETTABLEKS                       R15 R15 K9 ["useCallback"]
      103 NEWCLOSURE                       R16 P5
      104 CAPTURE                          VAL R0
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R8
      107 NEWTABLE                         R17 0 3
      109 GETTABLEKS                       R18 R0 K10 ["onChanged"]
      111 MOVE                             R19 R10
      112 MOVE                             R20 R8
      113 SETLIST                          R17 R18 3 [1]
      115 CALL                             R15 2 1
      116 GETUPVAL                         R16 0
      117 GETTABLEKS                       R16 R16 K9 ["useCallback"]
      119 NEWCLOSURE                       R17 P6
      120 CAPTURE                          VAL R0
      121 CAPTURE                          VAL R13
      122 NEWTABLE                         R18 0 2
      124 GETTABLEKS                       R19 R0 K10 ["onChanged"]
      126 MOVE                             R20 R13
      127 SETLIST                          R18 R19 2 [1]
      129 CALL                             R16 2 1
      130 GETUPVAL                         R17 0
      131 GETTABLEKS                       R17 R17 K4 ["useMemo"]
      133 NEWCLOSURE                       R18 P7
      134 CAPTURE                          UPVAL U2
      135 CAPTURE                          VAL R0
      136 NEWTABLE                         R19 0 2
      138 GETTABLEKS                       R20 R0 K5 ["Options"]
      140 GETTABLEKS                       R21 R0 K7 ["formatAsString"]
      142 SETLIST                          R19 R20 2 [1]
      144 CALL                             R17 2 1
      145 LENGTH                           R18 R17
      146 JUMPIFNOTEQKN                    R18 K11 [0] ; [+43]
      148 GETUPVAL                         R18 0
      149 GETTABLEKS                       R18 R18 K12 ["createElement"]
      151 GETUPVAL                         R19 3
      152 GETTABLEKS                       R19 R19 K13 ["TextInput"]
      154 DUPTABLE                         R20 K27 [{["tag"] = "shrink", ["label"] = "", ["size"], ["width"], ["text"], ["isDisabled"], ["leadingIcon"], ["onChanged"], ["onFocusGained"], ["onFocusLost"], ["placeholder"], ["LayoutOrder"], ["ref"]}]
      155 GETTABLEKS                       R21 R0 K18 ["size"]
      157 SETTABLEKS                       R21 R20 K18 ["size"]
      159 GETTABLEKS                       R21 R0 K3 ["width"]
      161 SETTABLEKS                       R21 R20 K3 ["width"]
      163 ORK                              R21 R9 K17 [""]
      164 SETTABLEKS                       R21 R20 K19 ["text"]
      166 GETTABLEKS                       R21 R0 K20 ["isDisabled"]
      168 SETTABLEKS                       R21 R20 K20 ["isDisabled"]
      170 SETTABLEKS                       R12 R20 K21 ["leadingIcon"]
      172 SETTABLEKS                       R11 R20 K10 ["onChanged"]
      174 SETTABLEKS                       R14 R20 K22 ["onFocusGained"]
      176 SETTABLEKS                       R15 R20 K23 ["onFocusLost"]
      178 GETTABLEKS                       R21 R0 K24 ["placeholder"]
      180 SETTABLEKS                       R21 R20 K24 ["placeholder"]
      182 GETTABLEKS                       R21 R0 K25 ["LayoutOrder"]
      184 SETTABLEKS                       R21 R20 K25 ["LayoutOrder"]
      186 SETTABLEKS                       R4 R20 K26 ["ref"]
      188 CALL                             R18 2 1
      189 RETURN                           R18 1
      190 GETUPVAL                         R18 0
      191 GETTABLEKS                       R18 R18 K12 ["createElement"]
      193 GETUPVAL                         R19 3
      194 GETTABLEKS                       R19 R19 K28 ["Popover"]
      196 GETTABLEKS                       R19 R19 K29 ["Root"]
      198 DUPTABLE                         R20 K31 [{"isOpen", "ref"}]
      199 SETTABLEKS                       R2 R20 K30 ["isOpen"]
      201 SETTABLEKS                       R1 R20 K26 ["ref"]
      203 DUPTABLE                         R21 K34 [{"TextInput", "Anchor", "Menu"}]
      204 GETUPVAL                         R22 0
      205 GETTABLEKS                       R22 R22 K12 ["createElement"]
      207 GETUPVAL                         R23 3
      208 GETTABLEKS                       R23 R23 K13 ["TextInput"]
      210 DUPTABLE                         R24 K37 [{["tag"] = "shrink", ["label"] = "", ["size"], ["width"], ["text"], ["isDisabled"], ["iconTrailing"], ["leadingIcon"], ["onChanged"], ["onFocusLost"], ["onFocusGained"], ["onAbsoluteSizeChanged"], ["placeholder"], ["LayoutOrder"], ["ref"]}]
      211 GETTABLEKS                       R25 R0 K18 ["size"]
      213 SETTABLEKS                       R25 R24 K18 ["size"]
      215 GETTABLEKS                       R25 R0 K3 ["width"]
      217 SETTABLEKS                       R25 R24 K3 ["width"]
      219 ORK                              R25 R9 K17 [""]
      220 SETTABLEKS                       R25 R24 K19 ["text"]
      222 GETTABLEKS                       R25 R0 K20 ["isDisabled"]
      224 SETTABLEKS                       R25 R24 K20 ["isDisabled"]
      226 DUPTABLE                         R25 K40 [{"name", "onActivated"}]
      227 JUMPIFNOT                        R2 ; [+8]
      228 GETUPVAL                         R26 3
      229 GETTABLEKS                       R26 R26 K41 ["Enums"]
      231 GETTABLEKS                       R26 R26 K42 ["IconName"]
      233 GETTABLEKS                       R26 R26 K43 ["ChevronSmallUp"]
      235 JUMP                             ; [+7]
      236 GETUPVAL                         R26 3
      237 GETTABLEKS                       R26 R26 K41 ["Enums"]
      239 GETTABLEKS                       R26 R26 K42 ["IconName"]
      241 GETTABLEKS                       R26 R26 K44 ["ChevronSmallDown"]
      243 SETTABLEKS                       R26 R25 K38 ["name"]
      245 NEWCLOSURE                       R26 P8
      246 CAPTURE                          VAL R3
      247 CAPTURE                          VAL R2
      248 SETTABLEKS                       R26 R25 K39 ["onActivated"]
      250 SETTABLEKS                       R25 R24 K35 ["iconTrailing"]
      252 SETTABLEKS                       R12 R24 K21 ["leadingIcon"]
      254 SETTABLEKS                       R11 R24 K10 ["onChanged"]
      256 SETTABLEKS                       R15 R24 K23 ["onFocusLost"]
      258 SETTABLEKS                       R14 R24 K22 ["onFocusGained"]
      260 NEWCLOSURE                       R25 P9
      261 CAPTURE                          VAL R6
      262 SETTABLEKS                       R25 R24 K36 ["onAbsoluteSizeChanged"]
      264 GETTABLEKS                       R25 R0 K24 ["placeholder"]
      266 SETTABLEKS                       R25 R24 K24 ["placeholder"]
      268 GETTABLEKS                       R25 R0 K25 ["LayoutOrder"]
      270 SETTABLEKS                       R25 R24 K25 ["LayoutOrder"]
      272 SETTABLEKS                       R4 R24 K26 ["ref"]
      274 CALL                             R22 2 1
      275 SETTABLEKS                       R22 R21 K13 ["TextInput"]
      277 GETUPVAL                         R22 0
      278 GETTABLEKS                       R22 R22 K12 ["createElement"]
      280 GETUPVAL                         R23 3
      281 GETTABLEKS                       R23 R23 K28 ["Popover"]
      283 GETTABLEKS                       R23 R23 K32 ["Anchor"]
      285 DUPTABLE                         R24 K46 [{"anchorRef"}]
      286 SETTABLEKS                       R4 R24 K45 ["anchorRef"]
      288 CALL                             R22 2 1
      289 SETTABLEKS                       R22 R21 K32 ["Anchor"]
      291 GETUPVAL                         R22 0
      292 GETTABLEKS                       R22 R22 K12 ["createElement"]
      294 GETUPVAL                         R23 3
      295 GETTABLEKS                       R23 R23 K28 ["Popover"]
      297 GETTABLEKS                       R23 R23 K47 ["Content"]
      299 DUPTABLE                         R24 K54 [{["hasArrow"] = False, ["align"], ["side"], ["onPressedOutside"], ["radius"]}]
      300 GETUPVAL                         R25 3
      301 GETTABLEKS                       R25 R25 K41 ["Enums"]
      303 GETTABLEKS                       R25 R25 K55 ["PopoverAlign"]
      305 GETTABLEKS                       R25 R25 K56 ["End"]
      307 SETTABLEKS                       R25 R24 K50 ["align"]
      309 GETUPVAL                         R25 4
      310 SETTABLEKS                       R25 R24 K51 ["side"]
      312 SETTABLEKS                       R13 R24 K52 ["onPressedOutside"]
      314 GETUPVAL                         R25 3
      315 GETTABLEKS                       R25 R25 K41 ["Enums"]
      317 GETTABLEKS                       R25 R25 K57 ["Radius"]
      319 GETTABLEKS                       R25 R25 K58 ["Medium"]
      321 SETTABLEKS                       R25 R24 K53 ["radius"]
      323 GETUPVAL                         R25 0
      324 GETTABLEKS                       R25 R25 K12 ["createElement"]
      326 GETUPVAL                         R26 3
      327 GETTABLEKS                       R26 R26 K59 ["UNSTABLE"]
      329 GETTABLEKS                       R26 R26 K60 ["BaseMenu"]
      331 GETTABLEKS                       R26 R26 K29 ["Root"]
      333 DUPTABLE                         R27 K65 [{["size"], ["couldGrow"] = True, ["width"], ["items"], ["onActivated"], ["radius"], ["testId"]}]
      334 GETTABLEKS                       R28 R0 K18 ["size"]
      336 SETTABLEKS                       R28 R27 K18 ["size"]
      338 SETTABLEKS                       R5 R27 K3 ["width"]
      340 SETTABLEKS                       R17 R27 K63 ["items"]
      342 SETTABLEKS                       R16 R27 K39 ["onActivated"]
      344 GETUPVAL                         R28 3
      345 GETTABLEKS                       R28 R28 K41 ["Enums"]
      347 GETTABLEKS                       R28 R28 K57 ["Radius"]
      349 GETTABLEKS                       R28 R28 K58 ["Medium"]
      351 SETTABLEKS                       R28 R27 K53 ["radius"]
      353 LOADK                            R29 K66 ["%*--menu"]
      354 GETTABLEKS                       R31 R0 K64 ["testId"]
      356 NAMECALL                         R29 R29 K67 ["format"]
      358 CALL                             R29 2 1
      359 MOVE                             R28 R29
      360 SETTABLEKS                       R28 R27 K64 ["testId"]
      362 CALL                             R25 2 -1
      363 CALL                             R22 -1 1
      364 SETTABLEKS                       R22 R21 K33 ["Menu"]
      366 CALL                             R18 3 1
      367 RETURN                           R18 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 DUPTABLE                         R3 K12 [{["position"], ["offset"] = 5}]
       22 GETTABLEKS                       R4 R1 K13 ["Enums"]
       24 GETTABLEKS                       R4 R4 K14 ["PopoverSide"]
       26 GETTABLEKS                       R4 R4 K15 ["Bottom"]
       28 SETTABLEKS                       R4 R3 K9 ["position"]
       30 DUPCLOSURE                       R4 K16 [PROTO_0]
       31 CAPTURE                          VAL R4
       32 DUPCLOSURE                       R5 K17 [PROTO_1]
       33 CAPTURE                          VAL R5
       34 DUPCLOSURE                       R6 K18 [PROTO_12]
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R3
       40 GETTABLEKS                       R7 R2 K19 ["memo"]
       42 GETTABLEKS                       R8 R2 K20 ["forwardRef"]
       44 MOVE                             R9 R6
       45 CALL                             R8 1 -1
       46 CALL                             R7 -1 -1
       47 RETURN                           R7 -1
