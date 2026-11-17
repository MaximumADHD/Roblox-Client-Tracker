PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+4]
        2 LENGTH                           R1 R0
        3 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        5 LOADB                            R1 0
        6 RETURN                           R1 1
        7 MOVE                             R1 R0
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 FORGPREP                         R1
       11 GETUPVAL                         R6 0
       12 LOADNIL                          R7
       13 LOADNIL                          R8
       14 FORGPREP                         R6
       15 MOVE                             R11 R10
       16 LOADNIL                          R12
       17 LOADNIL                          R13
       18 FORGPREP                         R11
       19 GETTABLEKS                       R16 R15 K1 ["CreateCustomInstanceFromSelection"]
       21 MOVE                             R17 R5
       22 CALL                             R16 1 1
       23 JUMPIFEQKNIL                     R16 ; [+10]
       25 FASTCALL1                        TYPEOF R16 ; [+3]
       26 MOVE                             R18 R16
       27 GETIMPORT                        R17 K3 [typeof]
       29 CALL                             R17 1 1
       30 JUMPIFEQKS                       R17 K4 ["string"] ; [+3]
       32 LOADB                            R17 1
       33 RETURN                           R17 1
       34 FORGLOOP                         R11 2 ; [-16]
       36 FORGLOOP                         R6 2 ; [-22]
       38 FORGLOOP                         R1 2 ; [-28]
       40 LOADB                            R1 0
       41 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Get"]
        3 CALL                             R0 1 1
        4 LENGTH                           R1 R0
        5 JUMPIFNOTEQKN                    R1 K1 [0] ; [+4]
        7 GETUPVAL                         R1 1
        8 CALL                             R1 0 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 2
       11 MOVE                             R2 R0
       12 CALL                             R1 1 1
       13 GETTABLEKS                       R3 R1 K2 ["invalidInstances"]
       15 LENGTH                           R2 R3
       16 LOADN                            R3 0
       17 JUMPIFNOTLT                      R3 R2 ; [+12]
       19 GETUPVAL                         R2 3
       20 DUPTABLE                         R3 K7 [{["type"] = "noPalette", ["instances"], ["extraErrors"]}]
       21 GETTABLEKS                       R4 R1 K2 ["invalidInstances"]
       23 SETTABLEKS                       R4 R3 K5 ["instances"]
       25 GETTABLEKS                       R4 R1 K6 ["extraErrors"]
       27 SETTABLEKS                       R4 R3 K6 ["extraErrors"]
       29 CALL                             R2 1 0
       30 GETUPVAL                         R2 4
       31 LOADK                            R4 K8 ["addUserItems"]
       32 LENGTH                           R5 R0
       33 LENGTH                           R7 R0
       34 GETTABLEKS                       R9 R1 K2 ["invalidInstances"]
       36 LENGTH                           R8 R9
       37 SUB                              R6 R7 R8
       38 NAMECALL                         R2 R2 K9 ["report"]
       40 CALL                             R2 4 0
       41 GETTABLEKS                       R2 R1 K10 ["activePalette"]
       43 JUMPIFEQKNIL                     R2 ; [+9]
       45 GETUPVAL                         R2 5
       46 GETTABLEKS                       R2 R2 K11 ["openPalette"]
       48 GETTABLEKS                       R3 R1 K10 ["activePalette"]
       50 GETTABLEKS                       R3 R3 K12 ["Key"]
       52 CALL                             R2 1 0
       53 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["use"]
        3 CALL                             R2 1 1
        4 NAMECALL                         R2 R2 K1 ["get"]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 1
        8 NAMECALL                         R3 R3 K0 ["use"]
       10 CALL                             R3 1 1
       11 GETUPVAL                         R4 2
       12 CALL                             R4 0 1
       13 GETUPVAL                         R5 3
       14 GETTABLEKS                       R5 R5 K2 ["useContext"]
       16 GETUPVAL                         R6 4
       17 GETTABLEKS                       R6 R6 K3 ["Context"]
       19 CALL                             R5 1 1
       20 GETUPVAL                         R6 3
       21 GETTABLEKS                       R6 R6 K4 ["useCallback"]
       23 NEWCLOSURE                       R7 P0
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R4
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R5
       30 NEWTABLE                         R8 0 6
       32 MOVE                             R9 R2
       33 MOVE                             R10 R3
       34 MOVE                             R11 R4
       35 MOVE                             R12 R5
       36 MOVE                             R13 R1
       37 MOVE                             R14 R0
       38 SETLIST                          R8 R9 6 [1]
       40 CALL                             R6 2 -1
       41 RETURN                           R6 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setMarketplaceImportOpen"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+35]
        3 GETUPVAL                         R0 0
        4 GETTABLEKS                       R0 R0 K0 ["type"]
        6 JUMPIFNOTEQKS                    R0 K1 ["noPalette"] ; [+30]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K2 ["instances"]
       11 LENGTH                           R0 R1
       12 JUMPIFNOTEQKN                    R0 K3 [1] ; [+24]
       14 GETUPVAL                         R0 0
       15 GETTABLEKS                       R0 R0 K4 ["extraErrors"]
       17 JUMPIFEQKNIL                     R0 ; [+19]
       19 GETIMPORT                        R0 K6 [next]
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R1 R1 K4 ["extraErrors"]
       24 CALL                             R0 1 2
       25 LOADB                            R2 0
       26 JUMPIFNOTEQKS                    R1 K7 ["OnlyOneShoe"] ; [+9]
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R4 R4 K2 ["instances"]
       31 GETTABLEN                        R3 R4 1
       32 JUMPIFEQ                         R3 R0 ; [+2]
       34 LOADB                            R2 0 +1
       35 LOADB                            R2 1
       36 RETURN                           R2 1
       37 LOADB                            R0 0
       38 RETURN                           R0 1

PROTO_6:
        0 GETTABLEKS                       R2 R1 K0 ["Name"]
        2 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["AddItems"]
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K1 ["getText"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["Get"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 1
        6 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 NAMECALL                         R2 R2 K0 ["Get"]
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setFoundationMenuOpen"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["enabled"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R2 K1 ["Y"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K1 ["AddItemButton"]
        6 NAMECALL                         R2 R2 K0 ["use"]
        8 CALL                             R2 2 1
        9 GETUPVAL                         R4 2
       10 CALL                             R4 0 1
       11 JUMPIF                           R4 ; [+8]
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K2 ["useContext"]
       15 GETUPVAL                         R4 4
       16 GETTABLEKS                       R4 R4 K3 ["Context"]
       18 CALL                             R3 1 1
       19 JUMP                             ; [+1]
       20 LOADNIL                          R3
       21 GETUPVAL                         R5 2
       22 CALL                             R5 0 1
       23 JUMPIFNOT                        R5 ; [+4]
       24 GETUPVAL                         R4 5
       25 LOADB                            R5 0
       26 CALL                             R4 1 1
       27 JUMP                             ; [+1]
       28 LOADNIL                          R4
       29 GETUPVAL                         R6 6
       30 CALL                             R6 0 1
       31 JUMPIF                           R6 ; [+3]
       32 GETUPVAL                         R6 2
       33 CALL                             R6 0 1
       34 JUMPIFNOT                        R6 ; [+8]
       35 GETUPVAL                         R5 3
       36 GETTABLEKS                       R5 R5 K2 ["useContext"]
       38 GETUPVAL                         R6 7
       39 GETTABLEKS                       R6 R6 K3 ["Context"]
       41 CALL                             R5 1 1
       42 JUMP                             ; [+1]
       43 LOADNIL                          R5
       44 GETUPVAL                         R6 3
       45 GETTABLEKS                       R6 R6 K4 ["useState"]
       47 LOADNIL                          R7
       48 CALL                             R6 1 2
       49 GETUPVAL                         R8 3
       50 GETTABLEKS                       R8 R8 K5 ["useCallback"]
       52 NEWCLOSURE                       R9 P0
       53 CAPTURE                          VAL R7
       54 NEWTABLE                         R10 0 0
       56 CALL                             R8 2 1
       57 GETUPVAL                         R10 2
       58 CALL                             R10 0 1
       59 JUMPIFNOT                        R10 ; [+3]
       60 GETTABLEKS                       R9 R4 K6 ["enable"]
       62 JUMP                             ; [+11]
       63 GETUPVAL                         R9 3
       64 GETTABLEKS                       R9 R9 K5 ["useCallback"]
       66 NEWCLOSURE                       R10 P1
       67 CAPTURE                          VAL R3
       68 NEWTABLE                         R11 0 1
       70 MOVE                             R12 R3
       71 SETLIST                          R11 R12 1 [1]
       73 CALL                             R9 2 1
       74 GETUPVAL                         R11 2
       75 CALL                             R11 0 1
       76 JUMPIFNOT                        R11 ; [+3]
       77 GETUPVAL                         R10 8
       78 CALL                             R10 0 1
       79 JUMP                             ; [+1]
       80 LOADNIL                          R10
       81 GETUPVAL                         R11 9
       82 MOVE                             R12 R7
       83 MOVE                             R13 R9
       84 CALL                             R11 2 1
       85 GETUPVAL                         R12 10
       86 GETTABLEKS                       R12 R12 K7 ["new"]
       88 CALL                             R12 0 1
       89 NEWCLOSURE                       R13 P2
       90 CAPTURE                          VAL R6
       91 JUMPIFNOTEQKNIL                  R6 ; [+3]
       93 LOADNIL                          R14
       94 JUMP                             ; [+85]
       95 JUMPIFEQKNIL                     R6 ; [+30]
       97 GETTABLEKS                       R16 R6 K8 ["type"]
       99 JUMPIFNOTEQKS                    R16 K9 ["noPalette"] ; [+26]
      101 GETTABLEKS                       R17 R6 K10 ["instances"]
      103 LENGTH                           R16 R17
      104 JUMPIFNOTEQKN                    R16 K11 [1] ; [+21]
      106 GETTABLEKS                       R16 R6 K12 ["extraErrors"]
      108 JUMPIFEQKNIL                     R16 ; [+17]
      110 GETIMPORT                        R16 K14 [next]
      112 GETTABLEKS                       R17 R6 K12 ["extraErrors"]
      114 CALL                             R16 1 2
      115 LOADB                            R15 0
      116 JUMPIFNOTEQKS                    R17 K15 ["OnlyOneShoe"] ; [+10]
      118 GETTABLEKS                       R19 R6 K10 ["instances"]
      120 GETTABLEN                        R18 R19 1
      121 JUMPIFEQ                         R18 R16 ; [+2]
      123 LOADB                            R15 0 +1
      124 LOADB                            R15 1
      125 JUMP                             ; [+1]
      126 LOADB                            R15 0
      127 JUMPIFNOT                        R15 ; [+6]
      128 LOADK                            R16 K16 ["AddItems"]
      129 LOADK                            R17 K17 ["WarningHeaderOneShoe"]
      130 NAMECALL                         R14 R1 K18 ["getText"]
      132 CALL                             R14 3 1
      133 JUMP                             ; [+46]
      134 GETTABLEKS                       R15 R6 K8 ["type"]
      136 JUMPIFNOTEQKS                    R15 K9 ["noPalette"] ; [+12]
      138 GETTABLEKS                       R16 R6 K10 ["instances"]
      140 LENGTH                           R15 R16
      141 JUMPIFNOTEQKN                    R15 K11 [1] ; [+7]
      143 LOADK                            R16 K16 ["AddItems"]
      144 LOADK                            R17 K19 ["FailedAddNoPaletteHeaderSingle"]
      145 NAMECALL                         R14 R1 K18 ["getText"]
      147 CALL                             R14 3 1
      148 JUMP                             ; [+31]
      149 GETTABLEKS                       R15 R6 K8 ["type"]
      151 JUMPIFNOTEQKS                    R15 K9 ["noPalette"] ; [+27]
      153 GETTABLEKS                       R16 R6 K10 ["instances"]
      155 LENGTH                           R15 R16
      156 LOADN                            R16 1
      157 JUMPIFNOTLT                      R16 R15 ; [+21]
      159 LOADK                            R16 K16 ["AddItems"]
      160 LOADK                            R17 K20 ["FailedAddNoPaletteHeaderMultiple"]
      161 DUPTABLE                         R18 K22 [{"items"}]
      162 GETIMPORT                        R19 K25 [table.concat]
      164 GETUPVAL                         R20 11
      165 GETTABLEKS                       R20 R20 K26 ["collectArray"]
      167 GETTABLEKS                       R21 R6 K10 ["instances"]
      169 DUPCLOSURE                       R22 K27 [PROTO_6]
      170 CALL                             R20 2 1
      171 LOADK                            R21 K28 [", "]
      172 CALL                             R19 2 1
      173 SETTABLEKS                       R19 R18 K21 ["items"]
      175 NAMECALL                         R14 R1 K18 ["getText"]
      177 CALL                             R14 4 1
      178 JUMP                             ; [+1]
      179 LOADNIL                          R14
      180 JUMPIFNOT                        R6 ; [+29]
      181 GETTABLEKS                       R16 R6 K8 ["type"]
      183 JUMPIFNOTEQKS                    R16 K9 ["noPalette"] ; [+26]
      185 GETTABLEKS                       R16 R6 K12 ["extraErrors"]
      187 JUMPIFNOT                        R16 ; [+22]
      188 GETIMPORT                        R16 K14 [next]
      190 GETTABLEKS                       R17 R6 K12 ["extraErrors"]
      192 CALL                             R16 1 1
      193 JUMPIFEQKNIL                     R16 ; [+16]
      195 GETIMPORT                        R16 K25 [table.concat]
      197 GETUPVAL                         R17 11
      198 GETTABLEKS                       R17 R17 K26 ["collectArray"]
      200 GETTABLEKS                       R18 R6 K12 ["extraErrors"]
      202 NEWCLOSURE                       R19 P4
      203 CAPTURE                          VAL R1
      204 CALL                             R17 2 1
      205 LOADK                            R18 K29 [" "]
      206 CALL                             R16 2 1
      207 LOADK                            R17 K29 [" "]
      208 CONCAT                           R15 R16 R17
      209 JUMP                             ; [+1]
      210 LOADK                            R15 K30 [""]
      211 GETUPVAL                         R16 3
      212 GETTABLEKS                       R16 R16 K4 ["useState"]
      214 LOADN                            R17 100
      215 CALL                             R16 1 2
      216 GETUPVAL                         R18 12
      217 NAMECALL                         R18 R18 K0 ["use"]
      219 CALL                             R18 1 1
      220 NAMECALL                         R18 R18 K31 ["get"]
      222 CALL                             R18 1 1
      223 GETUPVAL                         R19 5
      224 LOADB                            R20 0
      225 CALL                             R19 1 1
      226 GETUPVAL                         R20 3
      227 GETTABLEKS                       R20 R20 K4 ["useState"]
      229 NEWCLOSURE                       R21 P5
      230 CAPTURE                          UPVAL U13
      231 CAPTURE                          VAL R18
      232 CALL                             R20 1 2
      233 GETUPVAL                         R22 14
      234 GETTABLEKS                       R23 R18 K32 ["SelectionChanged"]
      236 NEWCLOSURE                       R24 P6
      237 CAPTURE                          VAL R21
      238 CAPTURE                          UPVAL U13
      239 CAPTURE                          VAL R18
      240 NEWTABLE                         R25 0 0
      242 CALL                             R22 3 0
      243 GETUPVAL                         R22 6
      244 CALL                             R22 0 1
      245 JUMPIFNOT                        R22 ; [+13]
      246 GETUPVAL                         R22 3
      247 GETTABLEKS                       R22 R22 K33 ["useEffect"]
      249 NEWCLOSURE                       R23 P7
      250 CAPTURE                          VAL R5
      251 CAPTURE                          VAL R19
      252 NEWTABLE                         R24 0 1
      254 GETTABLEKS                       R25 R19 K34 ["enabled"]
      256 SETLIST                          R24 R25 1 [1]
      258 CALL                             R22 2 0
      259 GETUPVAL                         R22 3
      260 GETTABLEKS                       R22 R22 K35 ["createElement"]
      262 GETUPVAL                         R23 15
      263 DUPTABLE                         R24 K39 [{["tag"] = "row align-x-center align-y-center gap-none size-full-1200 padding-y-xsmall padding-left-xsmall padding-right-small bg-surface-200", ["LayoutOrder"]}]
      264 GETTABLEKS                       R25 R0 K38 ["LayoutOrder"]
      266 SETTABLEKS                       R25 R24 K38 ["LayoutOrder"]
      268 DUPTABLE                         R25 K43 [{"SplitButtonContainer", "FailureDialog", "MarketplaceImportDialog"}]
      269 GETUPVAL                         R26 3
      270 GETTABLEKS                       R26 R26 K35 ["createElement"]
      272 GETUPVAL                         R27 15
      273 DUPTABLE                         R28 K45 [{["tag"] = "row align-x-center align-y-center gap-none size-full-1000 radius-small"}]
      274 DUPTABLE                         R29 K48 [{"AddButton", "AddItemMenu"}]
      275 GETUPVAL                         R30 3
      276 GETTABLEKS                       R30 R30 K35 ["createElement"]
      278 GETUPVAL                         R31 16
      279 DUPTABLE                         R32 K54 [{["icon"], ["size"], ["variant"], ["onActivated"], ["width"], ["LayoutOrder"] = 1}]
      280 GETUPVAL                         R33 17
      281 GETTABLEKS                       R33 R33 K55 ["PlusLarge"]
      283 SETTABLEKS                       R33 R32 K49 ["icon"]
      285 GETUPVAL                         R33 18
      286 GETTABLEKS                       R33 R33 K56 ["Medium"]
      288 SETTABLEKS                       R33 R32 K50 ["size"]
      290 GETUPVAL                         R33 19
      291 GETTABLEKS                       R33 R33 K57 ["Utility"]
      293 SETTABLEKS                       R33 R32 K51 ["variant"]
      295 SETTABLEKS                       R11 R32 K52 ["onActivated"]
      297 GETIMPORT                        R33 K59 [UDim.new]
      299 LOADN                            R34 0
      300 LOADN                            R35 48
      301 CALL                             R33 2 1
      302 SETTABLEKS                       R33 R32 K53 ["width"]
      304 CALL                             R30 2 1
      305 SETTABLEKS                       R30 R29 K46 ["AddButton"]
      307 GETUPVAL                         R30 3
      308 GETTABLEKS                       R30 R30 K35 ["createElement"]
      310 GETUPVAL                         R31 20
      311 DUPTABLE                         R32 K68 [{["isOpen"], ["onClose"], ["onAddSelectedInstances"], ["onAddFromAssetId"], ["validInstancesSelected"], ["LayoutOrder"] = 2, ["anchorSize"], ["anchor"]}]
      312 GETTABLEKS                       R33 R19 K34 ["enabled"]
      314 SETTABLEKS                       R33 R32 K60 ["isOpen"]
      316 GETTABLEKS                       R33 R19 K69 ["disable"]
      318 SETTABLEKS                       R33 R32 K61 ["onClose"]
      320 SETTABLEKS                       R11 R32 K62 ["onAddSelectedInstances"]
      322 SETTABLEKS                       R9 R32 K63 ["onAddFromAssetId"]
      324 SETTABLEKS                       R20 R32 K64 ["validInstancesSelected"]
      326 GETIMPORT                        R33 K72 [UDim2.fromScale]
      328 LOADK                            R34 K73 [0.43]
      329 LOADN                            R35 1
      330 CALL                             R33 2 1
      331 SETTABLEKS                       R33 R32 K66 ["anchorSize"]
      333 GETUPVAL                         R33 3
      334 GETTABLEKS                       R33 R33 K35 ["createElement"]
      336 GETUPVAL                         R34 15
      337 DUPTABLE                         R35 K77 [{["tag"] = "row align-x-center align-y-center size-full-1000 radius-small", ["Size"], ["LayoutOrder"] = 3, ["onActivated"], ["width"]}]
      338 GETIMPORT                        R36 K78 [UDim2.new]
      340 LOADN                            R37 1
      341 LOADN                            R38 0
      342 LOADN                            R39 1
      343 LOADN                            R40 0
      344 CALL                             R36 4 1
      345 SETTABLEKS                       R36 R35 K75 ["Size"]
      347 GETTABLEKS                       R36 R19 K79 ["toggle"]
      349 SETTABLEKS                       R36 R35 K52 ["onActivated"]
      351 GETIMPORT                        R36 K59 [UDim.new]
      353 LOADN                            R37 0
      354 LOADN                            R38 38
      355 CALL                             R36 2 1
      356 SETTABLEKS                       R36 R35 K53 ["width"]
      358 DUPTABLE                         R36 K81 [{"Icon"}]
      359 GETUPVAL                         R37 3
      360 GETTABLEKS                       R37 R37 K35 ["createElement"]
      362 GETUPVAL                         R38 21
      363 DUPTABLE                         R39 K82 [{"icon", "size", "onActivated"}]
      364 DUPTABLE                         R40 K84 [{"name", "variant"}]
      365 GETUPVAL                         R41 17
      366 GETTABLEKS                       R41 R41 K85 ["CaretSmallDown"]
      368 SETTABLEKS                       R41 R40 K83 ["name"]
      370 GETUPVAL                         R41 22
      371 GETTABLEKS                       R41 R41 K86 ["Filled"]
      373 SETTABLEKS                       R41 R40 K51 ["variant"]
      375 SETTABLEKS                       R40 R39 K49 ["icon"]
      377 GETUPVAL                         R40 18
      378 GETTABLEKS                       R40 R40 K56 ["Medium"]
      380 SETTABLEKS                       R40 R39 K50 ["size"]
      382 GETTABLEKS                       R40 R19 K79 ["toggle"]
      384 SETTABLEKS                       R40 R39 K52 ["onActivated"]
      386 CALL                             R37 2 1
      387 SETTABLEKS                       R37 R36 K80 ["Icon"]
      389 CALL                             R33 3 1
      390 SETTABLEKS                       R33 R32 K67 ["anchor"]
      392 CALL                             R30 2 1
      393 SETTABLEKS                       R30 R29 K47 ["AddItemMenu"]
      395 CALL                             R26 3 1
      396 SETTABLEKS                       R26 R25 K40 ["SplitButtonContainer"]
      398 JUMPIFEQKNIL                     R6 ; [+230]
      400 GETUPVAL                         R26 3
      401 GETTABLEKS                       R26 R26 K35 ["createElement"]
      403 GETUPVAL                         R27 23
      404 DUPTABLE                         R28 K96 [{["Title"], ["Enabled"] = True, ["MinContentSize"], ["Modal"] = True, ["OnClose"], ["OnButtonPressed"], ["Buttons"], ["ButtonHorizontalAlignment"]}]
      405 JUMPIFEQKNIL                     R6 ; [+30]
      407 GETTABLEKS                       R31 R6 K8 ["type"]
      409 JUMPIFNOTEQKS                    R31 K9 ["noPalette"] ; [+26]
      411 GETTABLEKS                       R32 R6 K10 ["instances"]
      413 LENGTH                           R31 R32
      414 JUMPIFNOTEQKN                    R31 K11 [1] ; [+21]
      416 GETTABLEKS                       R31 R6 K12 ["extraErrors"]
      418 JUMPIFEQKNIL                     R31 ; [+17]
      420 GETIMPORT                        R31 K14 [next]
      422 GETTABLEKS                       R32 R6 K12 ["extraErrors"]
      424 CALL                             R31 1 2
      425 LOADB                            R30 0
      426 JUMPIFNOTEQKS                    R32 K15 ["OnlyOneShoe"] ; [+10]
      428 GETTABLEKS                       R34 R6 K10 ["instances"]
      430 GETTABLEN                        R33 R34 1
      431 JUMPIFEQ                         R33 R31 ; [+2]
      433 LOADB                            R30 0 +1
      434 LOADB                            R30 1
      435 JUMP                             ; [+1]
      436 LOADB                            R30 0
      437 JUMPIFNOT                        R30 ; [+6]
      438 LOADK                            R31 K16 ["AddItems"]
      439 LOADK                            R32 K97 ["WarningTitle"]
      440 NAMECALL                         R29 R1 K18 ["getText"]
      442 CALL                             R29 3 1
      443 JUMP                             ; [+5]
      444 LOADK                            R31 K16 ["AddItems"]
      445 LOADK                            R32 K98 ["FailedTitle"]
      446 NAMECALL                         R29 R1 K18 ["getText"]
      448 CALL                             R29 3 1
      449 SETTABLEKS                       R29 R28 K87 ["Title"]
      451 GETIMPORT                        R29 K100 [Vector2.new]
      453 LOADN                            R30 350
      454 MOVE                             R31 R16
      455 CALL                             R29 2 1
      456 SETTABLEKS                       R29 R28 K90 ["MinContentSize"]
      458 SETTABLEKS                       R8 R28 K92 ["OnClose"]
      460 SETTABLEKS                       R8 R28 K93 ["OnButtonPressed"]
      462 NEWTABLE                         R29 0 1
      464 DUPTABLE                         R30 K104 [{["Key"] = "OK", ["Text"]}]
      465 LOADK                            R33 K16 ["AddItems"]
      466 LOADK                            R34 K102 ["OK"]
      467 NAMECALL                         R31 R1 K18 ["getText"]
      469 CALL                             R31 3 1
      470 SETTABLEKS                       R31 R30 K103 ["Text"]
      472 SETLIST                          R29 R30 1 [1]
      474 SETTABLEKS                       R29 R28 K94 ["Buttons"]
      476 GETIMPORT                        R29 K108 [Enum.HorizontalAlignment.Center]
      478 SETTABLEKS                       R29 R28 K95 ["ButtonHorizontalAlignment"]
      480 DUPTABLE                         R29 K110 [{"Contents"}]
      481 GETUPVAL                         R30 3
      482 GETTABLEKS                       R30 R30 K35 ["createElement"]
      484 GETUPVAL                         R31 24
      485 NEWTABLE                         R32 8 0
      487 GETIMPORT                        R33 K113 [Enum.AutomaticSize.Y]
      489 SETTABLEKS                       R33 R32 K111 ["AutomaticSize"]
      491 GETIMPORT                        R33 K116 [Enum.FillDirection.Vertical]
      493 SETTABLEKS                       R33 R32 K117 ["Layout"]
      495 GETIMPORT                        R33 K108 [Enum.HorizontalAlignment.Center]
      497 SETTABLEKS                       R33 R32 K106 ["HorizontalAlignment"]
      499 GETIMPORT                        R33 K120 [Enum.VerticalAlignment.Top]
      501 SETTABLEKS                       R33 R32 K118 ["VerticalAlignment"]
      503 GETTABLEKS                       R33 R2 K121 ["FailureDialogSpacing"]
      505 SETTABLEKS                       R33 R32 K122 ["Spacing"]
      507 GETUPVAL                         R33 3
      508 GETTABLEKS                       R33 R33 K123 ["Change"]
      510 GETTABLEKS                       R33 R33 K124 ["AbsoluteSize"]
      512 NEWCLOSURE                       R34 P8
      513 CAPTURE                          VAL R17
      514 SETTABLE                         R34 R32 R33
      515 DUPTABLE                         R33 K126 [{"Title", "Hint"}]
      516 MOVE                             R34 R14
      517 JUMPIFNOT                        R34 ; [+32]
      518 GETUPVAL                         R34 3
      519 GETTABLEKS                       R34 R34 K35 ["createElement"]
      521 GETUPVAL                         R35 25
      522 DUPTABLE                         R36 K130 [{["AutomaticSize"], ["Font"], ["LayoutOrder"], ["Size"], ["Text"], ["TextWrapped"] = True, ["TextXAlignment"]}]
      523 GETIMPORT                        R37 K113 [Enum.AutomaticSize.Y]
      525 SETTABLEKS                       R37 R36 K111 ["AutomaticSize"]
      527 GETIMPORT                        R37 K132 [Enum.Font.SourceSansBold]
      529 SETTABLEKS                       R37 R36 K127 ["Font"]
      531 NAMECALL                         R37 R12 K133 ["getNextOrder"]
      533 CALL                             R37 1 1
      534 SETTABLEKS                       R37 R36 K38 ["LayoutOrder"]
      536 GETIMPORT                        R37 K72 [UDim2.fromScale]
      538 LOADN                            R38 1
      539 LOADN                            R39 0
      540 CALL                             R37 2 1
      541 SETTABLEKS                       R37 R36 K75 ["Size"]
      543 SETTABLEKS                       R14 R36 K103 ["Text"]
      545 GETIMPORT                        R37 K135 [Enum.TextXAlignment.Left]
      547 SETTABLEKS                       R37 R36 K129 ["TextXAlignment"]
      549 CALL                             R34 2 1
      550 SETTABLEKS                       R34 R33 K87 ["Title"]
      552 GETUPVAL                         R34 3
      553 GETTABLEKS                       R34 R34 K35 ["createElement"]
      555 GETUPVAL                         R35 25
      556 DUPTABLE                         R36 K136 [{["AutomaticSize"], ["LayoutOrder"], ["Size"], ["Text"], ["TextWrapped"] = True, ["TextXAlignment"]}]
      557 GETIMPORT                        R37 K113 [Enum.AutomaticSize.Y]
      559 SETTABLEKS                       R37 R36 K111 ["AutomaticSize"]
      561 NAMECALL                         R37 R12 K133 ["getNextOrder"]
      563 CALL                             R37 1 1
      564 SETTABLEKS                       R37 R36 K38 ["LayoutOrder"]
      566 GETIMPORT                        R37 K72 [UDim2.fromScale]
      568 LOADN                            R38 1
      569 LOADN                            R39 0
      570 CALL                             R37 2 1
      571 SETTABLEKS                       R37 R36 K75 ["Size"]
      573 JUMPIFEQKNIL                     R6 ; [+30]
      575 GETTABLEKS                       R39 R6 K8 ["type"]
      577 JUMPIFNOTEQKS                    R39 K9 ["noPalette"] ; [+26]
      579 GETTABLEKS                       R40 R6 K10 ["instances"]
      581 LENGTH                           R39 R40
      582 JUMPIFNOTEQKN                    R39 K11 [1] ; [+21]
      584 GETTABLEKS                       R39 R6 K12 ["extraErrors"]
      586 JUMPIFEQKNIL                     R39 ; [+17]
      588 GETIMPORT                        R39 K14 [next]
      590 GETTABLEKS                       R40 R6 K12 ["extraErrors"]
      592 CALL                             R39 1 2
      593 LOADB                            R38 0
      594 JUMPIFNOTEQKS                    R40 K15 ["OnlyOneShoe"] ; [+10]
      596 GETTABLEKS                       R42 R6 K10 ["instances"]
      598 GETTABLEN                        R41 R42 1
      599 JUMPIFEQ                         R41 R39 ; [+2]
      601 LOADB                            R38 0 +1
      602 LOADB                            R38 1
      603 JUMP                             ; [+1]
      604 LOADB                            R38 0
      605 JUMPIFNOT                        R38 ; [+2]
      606 MOVE                             R37 R15
      607 JUMP                             ; [+7]
      608 MOVE                             R38 R15
      609 LOADK                            R41 K16 ["AddItems"]
      610 LOADK                            R42 K137 ["FailedAddHint"]
      611 NAMECALL                         R39 R1 K18 ["getText"]
      613 CALL                             R39 3 1
      614 CONCAT                           R37 R38 R39
      615 SETTABLEKS                       R37 R36 K103 ["Text"]
      617 GETIMPORT                        R37 K135 [Enum.TextXAlignment.Left]
      619 SETTABLEKS                       R37 R36 K129 ["TextXAlignment"]
      621 CALL                             R34 2 1
      622 SETTABLEKS                       R34 R33 K125 ["Hint"]
      624 CALL                             R30 3 1
      625 SETTABLEKS                       R30 R29 K109 ["Contents"]
      627 CALL                             R26 3 1
      628 JUMP                             ; [+1]
      629 LOADNIL                          R26
      630 SETTABLEKS                       R26 R25 K41 ["FailureDialog"]
      632 GETUPVAL                         R27 2
      633 CALL                             R27 0 1
      634 JUMPIFNOT                        R27 ; [+16]
      635 GETTABLEKS                       R27 R4 K34 ["enabled"]
      637 JUMPIFNOT                        R27 ; [+13]
      638 GETUPVAL                         R26 3
      639 GETTABLEKS                       R26 R26 K35 ["createElement"]
      641 GETUPVAL                         R27 26
      642 DUPTABLE                         R28 K139 [{"onClose", "onAddItems"}]
      643 GETTABLEKS                       R29 R4 K69 ["disable"]
      645 SETTABLEKS                       R29 R28 K61 ["onClose"]
      647 SETTABLEKS                       R10 R28 K138 ["onAddItems"]
      649 CALL                             R26 2 1
      650 JUMP                             ; [+1]
      651 LOADNIL                          R26
      652 SETTABLEKS                       R26 R25 K42 ["MarketplaceImportDialog"]
      654 CALL                             R22 3 -1
      655 RETURN                           R22 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETIMPORT                        R6 K1 [script]
       39 GETTABLEKS                       R6 R6 K11 ["Parent"]
       41 GETTABLEKS                       R6 R6 K12 ["AddItemMenu"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K13 ["Src"]
       48 GETTABLEKS                       R7 R7 K14 ["Components"]
       50 GETTABLEKS                       R7 R7 K15 ["AvatarScreenContext"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K13 ["Src"]
       57 GETTABLEKS                       R8 R8 K16 ["Resources"]
       59 GETTABLEKS                       R8 R8 K17 ["CatalogItems"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K13 ["Src"]
       66 GETTABLEKS                       R9 R9 K14 ["Components"]
       68 GETTABLEKS                       R9 R9 K18 ["DEPRECATED_MarketplaceImportContext"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K13 ["Src"]
       75 GETTABLEKS                       R10 R10 K14 ["Components"]
       77 GETTABLEKS                       R10 R10 K19 ["MarketplaceImportDialog"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R11 R0 K13 ["Src"]
       84 GETTABLEKS                       R11 R11 K20 ["Util"]
       86 GETTABLEKS                       R11 R11 K21 ["SelectionWrapper"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K5 [require]
       91 GETTABLEKS                       R12 R0 K13 ["Src"]
       93 GETTABLEKS                       R12 R12 K22 ["Hooks"]
       95 GETTABLEKS                       R12 R12 K23 ["useAddInstancesToUserCatalogAndEquip"]
       97 CALL                             R11 1 1
       98 GETIMPORT                        R12 K5 [require]
      100 GETTABLEKS                       R13 R0 K13 ["Src"]
      102 GETTABLEKS                       R13 R13 K22 ["Hooks"]
      104 GETTABLEKS                       R13 R13 K24 ["useAddMarketplaceItemsAndEquip"]
      106 CALL                             R12 1 1
      107 GETIMPORT                        R13 K5 [require]
      109 GETTABLEKS                       R14 R0 K13 ["Src"]
      111 GETTABLEKS                       R14 R14 K22 ["Hooks"]
      113 GETTABLEKS                       R14 R14 K25 ["useEventConnection"]
      115 CALL                             R13 1 1
      116 GETIMPORT                        R14 K5 [require]
      118 GETTABLEKS                       R15 R0 K13 ["Src"]
      120 GETTABLEKS                       R15 R15 K22 ["Hooks"]
      122 GETTABLEKS                       R15 R15 K26 ["useToggleState"]
      124 CALL                             R14 1 1
      125 GETIMPORT                        R15 K5 [require]
      127 GETTABLEKS                       R16 R0 K13 ["Src"]
      129 GETTABLEKS                       R16 R16 K27 ["Flags"]
      131 GETTABLEKS                       R16 R16 K28 ["getFFlagAvatarPreviewerStartFromAssetId"]
      133 CALL                             R15 1 1
      134 GETIMPORT                        R16 K5 [require]
      136 GETTABLEKS                       R17 R0 K13 ["Src"]
      138 GETTABLEKS                       R17 R17 K27 ["Flags"]
      140 GETTABLEKS                       R17 R17 K29 ["getFFlagAvatarPreviewerCatalogButtonUpdatedUi"]
      142 CALL                             R16 1 1
      143 GETIMPORT                        R17 K5 [require]
      145 GETTABLEKS                       R18 R0 K13 ["Src"]
      147 GETTABLEKS                       R18 R18 K16 ["Resources"]
      149 GETTABLEKS                       R18 R18 K30 ["Theme"]
      151 CALL                             R17 1 1
      152 GETIMPORT                        R18 K5 [require]
      154 GETTABLEKS                       R19 R0 K13 ["Src"]
      156 GETTABLEKS                       R19 R19 K31 ["Types"]
      158 CALL                             R18 1 1
      159 GETTABLEKS                       R19 R2 K32 ["Button"]
      161 GETTABLEKS                       R20 R2 K33 ["IconButton"]
      163 GETTABLEKS                       R21 R2 K34 ["View"]
      165 GETTABLEKS                       R22 R2 K35 ["Enums"]
      167 GETTABLEKS                       R22 R22 K36 ["IconName"]
      169 GETTABLEKS                       R23 R2 K35 ["Enums"]
      171 GETTABLEKS                       R23 R23 K37 ["InputSize"]
      173 GETTABLEKS                       R24 R2 K35 ["Enums"]
      175 GETTABLEKS                       R24 R24 K38 ["ButtonVariant"]
      177 GETTABLEKS                       R25 R2 K35 ["Enums"]
      179 GETTABLEKS                       R25 R25 K39 ["IconVariant"]
      181 GETTABLEKS                       R26 R3 K40 ["UI"]
      183 GETTABLEKS                       R27 R26 K41 ["Pane"]
      185 GETTABLEKS                       R28 R26 K42 ["StyledDialog"]
      187 GETTABLEKS                       R29 R26 K43 ["TextLabel"]
      189 GETTABLEKS                       R30 R3 K44 ["ContextServices"]
      191 GETTABLEKS                       R30 R30 K45 ["Analytics"]
      193 GETTABLEKS                       R31 R3 K44 ["ContextServices"]
      195 GETTABLEKS                       R31 R31 K46 ["Localization"]
      197 GETTABLEKS                       R32 R3 K44 ["ContextServices"]
      199 GETTABLEKS                       R32 R32 K47 ["Stylizer"]
      201 GETTABLEKS                       R33 R3 K20 ["Util"]
      203 GETTABLEKS                       R33 R33 K48 ["LayoutOrderIterator"]
      205 DUPCLOSURE                       R34 K49 [PROTO_0]
      206 CAPTURE                          VAL R7
      207 DUPCLOSURE                       R35 K50 [PROTO_2]
      208 CAPTURE                          VAL R10
      209 CAPTURE                          VAL R30
      210 CAPTURE                          VAL R11
      211 CAPTURE                          VAL R4
      212 CAPTURE                          VAL R6
      213 DUPCLOSURE                       R36 K51 [PROTO_12]
      214 CAPTURE                          VAL R31
      215 CAPTURE                          VAL R32
      216 CAPTURE                          VAL R15
      217 CAPTURE                          VAL R4
      218 CAPTURE                          VAL R8
      219 CAPTURE                          VAL R14
      220 CAPTURE                          VAL R16
      221 CAPTURE                          VAL R6
      222 CAPTURE                          VAL R12
      223 CAPTURE                          VAL R35
      224 CAPTURE                          VAL R33
      225 CAPTURE                          VAL R1
      226 CAPTURE                          VAL R10
      227 CAPTURE                          VAL R34
      228 CAPTURE                          VAL R13
      229 CAPTURE                          VAL R21
      230 CAPTURE                          VAL R19
      231 CAPTURE                          VAL R22
      232 CAPTURE                          VAL R23
      233 CAPTURE                          VAL R24
      234 CAPTURE                          VAL R5
      235 CAPTURE                          VAL R20
      236 CAPTURE                          VAL R25
      237 CAPTURE                          VAL R28
      238 CAPTURE                          VAL R27
      239 CAPTURE                          VAL R29
      240 CAPTURE                          VAL R9
      241 RETURN                           R36 1
