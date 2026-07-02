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
       30 GETUPVAL                         R1 3
       31 CALL                             R1 0 1
       32 JUMPIFNOT                        R1 ; [+26]
       33 GETUPVAL                         R1 2
       34 JUMPIF                           R1 ; [+24]
       35 GETUPVAL                         R1 0
       36 GETTABLEKS                       R1 R1 K3 ["formatAsString"]
       38 JUMPIFNOT                        R1 ; [+20]
       39 GETUPVAL                         R1 0
       40 GETTABLEKS                       R1 R1 K3 ["formatAsString"]
       42 DUPTABLE                         R2 K6 [{"id", "text"}]
       43 GETUPVAL                         R3 0
       44 GETTABLEKS                       R3 R3 K0 ["Value"]
       46 SETTABLEKS                       R3 R2 K5 ["id"]
       48 GETUPVAL                         R4 0
       49 GETTABLEKS                       R4 R4 K0 ["Value"]
       51 FASTCALL1                        TOSTRING R4 ; [+2]
       52 GETIMPORT                        R3 K8 [tostring]
       54 CALL                             R3 1 1
       55 SETTABLEKS                       R3 R2 K4 ["text"]
       57 CALL                             R1 1 -1
       58 RETURN                           R1 -1
       59 GETUPVAL                         R2 0
       60 GETTABLEKS                       R2 R2 K0 ["Value"]
       62 FASTCALL1                        TOSTRING R2 ; [+2]
       63 GETIMPORT                        R1 K8 [tostring]
       65 CALL                             R1 1 1
       66 RETURN                           R1 1

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
       28 CAPTURE                          UPVAL U2
       29 NEWTABLE                         R11 0 4
       31 GETTABLEKS                       R12 R0 K5 ["Options"]
       33 GETTABLEKS                       R13 R0 K6 ["Value"]
       35 MOVE                             R14 R7
       36 GETTABLEKS                       R15 R0 K7 ["formatAsString"]
       38 SETLIST                          R11 R12 4 [1]
       40 CALL                             R9 2 1
       41 GETUPVAL                         R10 0
       42 GETTABLEKS                       R10 R10 K2 ["useBinding"]
       44 MOVE                             R11 R9
       45 CALL                             R10 1 2
       46 GETUPVAL                         R12 0
       47 GETTABLEKS                       R12 R12 K4 ["useMemo"]
       49 NEWCLOSURE                       R13 P1
       50 CAPTURE                          UPVAL U1
       51 CAPTURE                          VAL R0
       52 NEWTABLE                         R14 0 2
       54 GETTABLEKS                       R15 R0 K5 ["Options"]
       56 GETTABLEKS                       R16 R0 K6 ["Value"]
       58 SETLIST                          R14 R15 2 [1]
       60 CALL                             R12 2 1
       61 GETUPVAL                         R13 0
       62 GETTABLEKS                       R13 R13 K8 ["useEffect"]
       64 NEWCLOSURE                       R14 P2
       65 CAPTURE                          UPVAL U1
       66 CAPTURE                          VAL R0
       67 CAPTURE                          VAL R11
       68 NEWTABLE                         R15 0 2
       70 GETTABLEKS                       R16 R0 K5 ["Options"]
       72 GETTABLEKS                       R17 R0 K6 ["Value"]
       74 SETLIST                          R15 R16 2 [1]
       76 CALL                             R13 2 0
       77 GETUPVAL                         R13 0
       78 GETTABLEKS                       R13 R13 K9 ["useCallback"]
       80 NEWCLOSURE                       R14 P3
       81 CAPTURE                          VAL R3
       82 NEWTABLE                         R15 0 1
       84 MOVE                             R16 R3
       85 SETLIST                          R15 R16 1 [1]
       87 CALL                             R13 2 1
       88 GETUPVAL                         R14 0
       89 GETTABLEKS                       R14 R14 K9 ["useCallback"]
       91 NEWCLOSURE                       R15 P4
       92 CAPTURE                          VAL R13
       93 CAPTURE                          VAL R8
       94 NEWTABLE                         R16 0 2
       96 MOVE                             R17 R13
       97 MOVE                             R18 R8
       98 SETLIST                          R16 R17 2 [1]
      100 CALL                             R14 2 1
      101 GETUPVAL                         R15 0
      102 GETTABLEKS                       R15 R15 K9 ["useCallback"]
      104 NEWCLOSURE                       R16 P5
      105 CAPTURE                          VAL R0
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R8
      108 NEWTABLE                         R17 0 3
      110 GETTABLEKS                       R18 R0 K10 ["onChanged"]
      112 MOVE                             R19 R10
      113 MOVE                             R20 R8
      114 SETLIST                          R17 R18 3 [1]
      116 CALL                             R15 2 1
      117 GETUPVAL                         R16 0
      118 GETTABLEKS                       R16 R16 K9 ["useCallback"]
      120 NEWCLOSURE                       R17 P6
      121 CAPTURE                          VAL R0
      122 CAPTURE                          VAL R13
      123 NEWTABLE                         R18 0 2
      125 GETTABLEKS                       R19 R0 K10 ["onChanged"]
      127 MOVE                             R20 R13
      128 SETLIST                          R18 R19 2 [1]
      130 CALL                             R16 2 1
      131 GETUPVAL                         R17 0
      132 GETTABLEKS                       R17 R17 K4 ["useMemo"]
      134 NEWCLOSURE                       R18 P7
      135 CAPTURE                          UPVAL U3
      136 CAPTURE                          VAL R0
      137 NEWTABLE                         R19 0 2
      139 GETTABLEKS                       R20 R0 K5 ["Options"]
      141 GETTABLEKS                       R21 R0 K7 ["formatAsString"]
      143 SETLIST                          R19 R20 2 [1]
      145 CALL                             R17 2 1
      146 LENGTH                           R18 R17
      147 JUMPIFNOTEQKN                    R18 K11 [0] ; [+43]
      149 GETUPVAL                         R18 0
      150 GETTABLEKS                       R18 R18 K12 ["createElement"]
      152 GETUPVAL                         R19 4
      153 GETTABLEKS                       R19 R19 K13 ["TextInput"]
      155 DUPTABLE                         R20 K27 [{["tag"] = "shrink", ["label"] = "", ["size"], ["width"], ["text"], ["isDisabled"], ["leadingIcon"], ["onChanged"], ["onFocusGained"], ["onFocusLost"], ["placeholder"], ["LayoutOrder"], ["ref"]}]
      156 GETTABLEKS                       R21 R0 K18 ["size"]
      158 SETTABLEKS                       R21 R20 K18 ["size"]
      160 GETTABLEKS                       R21 R0 K3 ["width"]
      162 SETTABLEKS                       R21 R20 K3 ["width"]
      164 ORK                              R21 R9 K17 [""]
      165 SETTABLEKS                       R21 R20 K19 ["text"]
      167 GETTABLEKS                       R21 R0 K20 ["isDisabled"]
      169 SETTABLEKS                       R21 R20 K20 ["isDisabled"]
      171 SETTABLEKS                       R12 R20 K21 ["leadingIcon"]
      173 SETTABLEKS                       R11 R20 K10 ["onChanged"]
      175 SETTABLEKS                       R14 R20 K22 ["onFocusGained"]
      177 SETTABLEKS                       R15 R20 K23 ["onFocusLost"]
      179 GETTABLEKS                       R21 R0 K24 ["placeholder"]
      181 SETTABLEKS                       R21 R20 K24 ["placeholder"]
      183 GETTABLEKS                       R21 R0 K25 ["LayoutOrder"]
      185 SETTABLEKS                       R21 R20 K25 ["LayoutOrder"]
      187 SETTABLEKS                       R4 R20 K26 ["ref"]
      189 CALL                             R18 2 1
      190 RETURN                           R18 1
      191 GETUPVAL                         R18 0
      192 GETTABLEKS                       R18 R18 K12 ["createElement"]
      194 GETUPVAL                         R19 4
      195 GETTABLEKS                       R19 R19 K28 ["Popover"]
      197 GETTABLEKS                       R19 R19 K29 ["Root"]
      199 DUPTABLE                         R20 K31 [{"isOpen", "ref"}]
      200 SETTABLEKS                       R2 R20 K30 ["isOpen"]
      202 SETTABLEKS                       R1 R20 K26 ["ref"]
      204 DUPTABLE                         R21 K34 [{"TextInput", "Anchor", "Menu"}]
      205 GETUPVAL                         R22 0
      206 GETTABLEKS                       R22 R22 K12 ["createElement"]
      208 GETUPVAL                         R23 4
      209 GETTABLEKS                       R23 R23 K13 ["TextInput"]
      211 DUPTABLE                         R24 K37 [{["tag"] = "shrink", ["label"] = "", ["size"], ["width"], ["text"], ["isDisabled"], ["iconTrailing"], ["leadingIcon"], ["onChanged"], ["onFocusLost"], ["onFocusGained"], ["onAbsoluteSizeChanged"], ["placeholder"], ["LayoutOrder"], ["ref"]}]
      212 GETTABLEKS                       R25 R0 K18 ["size"]
      214 SETTABLEKS                       R25 R24 K18 ["size"]
      216 GETTABLEKS                       R25 R0 K3 ["width"]
      218 SETTABLEKS                       R25 R24 K3 ["width"]
      220 ORK                              R25 R9 K17 [""]
      221 SETTABLEKS                       R25 R24 K19 ["text"]
      223 GETTABLEKS                       R25 R0 K20 ["isDisabled"]
      225 SETTABLEKS                       R25 R24 K20 ["isDisabled"]
      227 DUPTABLE                         R25 K40 [{"name", "onActivated"}]
      228 JUMPIFNOT                        R2 ; [+8]
      229 GETUPVAL                         R26 4
      230 GETTABLEKS                       R26 R26 K41 ["Enums"]
      232 GETTABLEKS                       R26 R26 K42 ["IconName"]
      234 GETTABLEKS                       R26 R26 K43 ["ChevronSmallUp"]
      236 JUMP                             ; [+7]
      237 GETUPVAL                         R26 4
      238 GETTABLEKS                       R26 R26 K41 ["Enums"]
      240 GETTABLEKS                       R26 R26 K42 ["IconName"]
      242 GETTABLEKS                       R26 R26 K44 ["ChevronSmallDown"]
      244 SETTABLEKS                       R26 R25 K38 ["name"]
      246 NEWCLOSURE                       R26 P8
      247 CAPTURE                          VAL R3
      248 CAPTURE                          VAL R2
      249 SETTABLEKS                       R26 R25 K39 ["onActivated"]
      251 SETTABLEKS                       R25 R24 K35 ["iconTrailing"]
      253 SETTABLEKS                       R12 R24 K21 ["leadingIcon"]
      255 SETTABLEKS                       R11 R24 K10 ["onChanged"]
      257 SETTABLEKS                       R15 R24 K23 ["onFocusLost"]
      259 SETTABLEKS                       R14 R24 K22 ["onFocusGained"]
      261 NEWCLOSURE                       R25 P9
      262 CAPTURE                          VAL R6
      263 SETTABLEKS                       R25 R24 K36 ["onAbsoluteSizeChanged"]
      265 GETTABLEKS                       R25 R0 K24 ["placeholder"]
      267 SETTABLEKS                       R25 R24 K24 ["placeholder"]
      269 GETTABLEKS                       R25 R0 K25 ["LayoutOrder"]
      271 SETTABLEKS                       R25 R24 K25 ["LayoutOrder"]
      273 SETTABLEKS                       R4 R24 K26 ["ref"]
      275 CALL                             R22 2 1
      276 SETTABLEKS                       R22 R21 K13 ["TextInput"]
      278 GETUPVAL                         R22 0
      279 GETTABLEKS                       R22 R22 K12 ["createElement"]
      281 GETUPVAL                         R23 4
      282 GETTABLEKS                       R23 R23 K28 ["Popover"]
      284 GETTABLEKS                       R23 R23 K32 ["Anchor"]
      286 DUPTABLE                         R24 K46 [{"anchorRef"}]
      287 SETTABLEKS                       R4 R24 K45 ["anchorRef"]
      289 CALL                             R22 2 1
      290 SETTABLEKS                       R22 R21 K32 ["Anchor"]
      292 GETUPVAL                         R22 0
      293 GETTABLEKS                       R22 R22 K12 ["createElement"]
      295 GETUPVAL                         R23 4
      296 GETTABLEKS                       R23 R23 K28 ["Popover"]
      298 GETTABLEKS                       R23 R23 K47 ["Content"]
      300 DUPTABLE                         R24 K54 [{["hasArrow"] = False, ["align"], ["side"], ["onPressedOutside"], ["radius"]}]
      301 GETUPVAL                         R25 4
      302 GETTABLEKS                       R25 R25 K41 ["Enums"]
      304 GETTABLEKS                       R25 R25 K55 ["PopoverAlign"]
      306 GETTABLEKS                       R25 R25 K56 ["End"]
      308 SETTABLEKS                       R25 R24 K50 ["align"]
      310 GETUPVAL                         R25 5
      311 SETTABLEKS                       R25 R24 K51 ["side"]
      313 SETTABLEKS                       R13 R24 K52 ["onPressedOutside"]
      315 GETUPVAL                         R25 4
      316 GETTABLEKS                       R25 R25 K41 ["Enums"]
      318 GETTABLEKS                       R25 R25 K57 ["Radius"]
      320 GETTABLEKS                       R25 R25 K58 ["Medium"]
      322 SETTABLEKS                       R25 R24 K53 ["radius"]
      324 GETUPVAL                         R25 0
      325 GETTABLEKS                       R25 R25 K12 ["createElement"]
      327 GETUPVAL                         R26 4
      328 GETTABLEKS                       R26 R26 K59 ["UNSTABLE"]
      330 GETTABLEKS                       R26 R26 K60 ["BaseMenu"]
      332 GETTABLEKS                       R26 R26 K29 ["Root"]
      334 DUPTABLE                         R27 K65 [{["size"], ["couldGrow"] = True, ["width"], ["items"], ["onActivated"], ["radius"], ["testId"]}]
      335 GETTABLEKS                       R28 R0 K18 ["size"]
      337 SETTABLEKS                       R28 R27 K18 ["size"]
      339 SETTABLEKS                       R5 R27 K3 ["width"]
      341 SETTABLEKS                       R17 R27 K63 ["items"]
      343 SETTABLEKS                       R16 R27 K39 ["onActivated"]
      345 GETUPVAL                         R28 4
      346 GETTABLEKS                       R28 R28 K41 ["Enums"]
      348 GETTABLEKS                       R28 R28 K57 ["Radius"]
      350 GETTABLEKS                       R28 R28 K58 ["Medium"]
      352 SETTABLEKS                       R28 R27 K53 ["radius"]
      354 LOADK                            R29 K66 ["%*--menu"]
      355 GETTABLEKS                       R31 R0 K64 ["testId"]
      357 NAMECALL                         R29 R29 K67 ["format"]
      359 CALL                             R29 2 1
      360 MOVE                             R28 R29
      361 SETTABLEKS                       R28 R27 K64 ["testId"]
      363 CALL                             R25 2 -1
      364 CALL                             R22 -1 1
      365 SETTABLEKS                       R22 R21 K33 ["Menu"]
      367 CALL                             R18 3 1
      368 RETURN                           R18 1

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
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Flags"]
       25 GETTABLEKS                       R4 R4 K10 ["getFFlagAnimGraphUIPlaybackSpeedComboBox"]
       27 CALL                             R3 1 1
       28 DUPTABLE                         R4 K14 [{["position"], ["offset"] = 5}]
       29 GETTABLEKS                       R5 R1 K15 ["Enums"]
       31 GETTABLEKS                       R5 R5 K16 ["PopoverSide"]
       33 GETTABLEKS                       R5 R5 K17 ["Bottom"]
       35 SETTABLEKS                       R5 R4 K11 ["position"]
       37 DUPCLOSURE                       R5 K18 [PROTO_0]
       38 CAPTURE                          VAL R5
       39 DUPCLOSURE                       R6 K19 [PROTO_1]
       40 CAPTURE                          VAL R6
       41 DUPCLOSURE                       R7 K20 [PROTO_12]
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R4
       48 GETTABLEKS                       R8 R2 K21 ["memo"]
       50 GETTABLEKS                       R9 R2 K22 ["forwardRef"]
       52 MOVE                             R10 R7
       53 CALL                             R9 1 -1
       54 CALL                             R8 -1 -1
       55 RETURN                           R8 -1
