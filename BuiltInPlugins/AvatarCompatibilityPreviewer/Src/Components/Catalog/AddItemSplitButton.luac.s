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
       17 JUMPIFNOTLT                      R3 R2 ; [+15]
       19 GETUPVAL                         R2 3
       20 DUPTABLE                         R3 K6 [{"type", "instances", "extraErrors"}]
       21 LOADK                            R4 K7 ["noPalette"]
       22 SETTABLEKS                       R4 R3 K3 ["type"]
       24 GETTABLEKS                       R4 R1 K2 ["invalidInstances"]
       26 SETTABLEKS                       R4 R3 K4 ["instances"]
       28 GETTABLEKS                       R4 R1 K5 ["extraErrors"]
       30 SETTABLEKS                       R4 R3 K5 ["extraErrors"]
       32 CALL                             R2 1 0
       33 GETUPVAL                         R2 4
       34 LOADK                            R4 K8 ["addUserItems"]
       35 LENGTH                           R5 R0
       36 LENGTH                           R7 R0
       37 GETTABLEKS                       R9 R1 K2 ["invalidInstances"]
       39 LENGTH                           R8 R9
       40 SUB                              R6 R7 R8
       41 NAMECALL                         R2 R2 K9 ["report"]
       43 CALL                             R2 4 0
       44 GETTABLEKS                       R2 R1 K10 ["activePalette"]
       46 JUMPIFEQKNIL                     R2 ; [+9]
       48 GETUPVAL                         R2 5
       49 GETTABLEKS                       R2 R2 K11 ["openPalette"]
       51 GETTABLEKS                       R3 R1 K10 ["activePalette"]
       53 GETTABLEKS                       R3 R3 K12 ["Key"]
       55 CALL                             R2 1 0
       56 RETURN                           R0 0

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
      180 JUMPIFNOT                        R6 ; [+30]
      181 GETTABLEKS                       R16 R6 K8 ["type"]
      183 JUMPIFNOTEQKS                    R16 K9 ["noPalette"] ; [+27]
      185 GETTABLEKS                       R16 R6 K12 ["extraErrors"]
      187 JUMPIFNOT                        R16 ; [+23]
      188 GETIMPORT                        R16 K14 [next]
      190 GETTABLEKS                       R17 R6 K12 ["extraErrors"]
      192 CALL                             R16 1 1
      193 JUMPIFEQKNIL                     R16 ; [+17]
      195 GETIMPORT                        R18 K25 [table.concat]
      197 GETUPVAL                         R19 11
      198 GETTABLEKS                       R19 R19 K26 ["collectArray"]
      200 GETTABLEKS                       R20 R6 K12 ["extraErrors"]
      202 NEWCLOSURE                       R21 P4
      203 CAPTURE                          VAL R1
      204 CALL                             R19 2 1
      205 LOADK                            R20 K29 [" "]
      206 CALL                             R18 2 1
      207 MOVE                             R16 R18
      208 LOADK                            R17 K29 [" "]
      209 CONCAT                           R15 R16 R17
      210 JUMP                             ; [+1]
      211 LOADK                            R15 K30 [""]
      212 GETUPVAL                         R16 3
      213 GETTABLEKS                       R16 R16 K4 ["useState"]
      215 LOADN                            R17 100
      216 CALL                             R16 1 2
      217 GETUPVAL                         R18 12
      218 NAMECALL                         R18 R18 K0 ["use"]
      220 CALL                             R18 1 1
      221 NAMECALL                         R18 R18 K31 ["get"]
      223 CALL                             R18 1 1
      224 GETUPVAL                         R19 5
      225 LOADB                            R20 0
      226 CALL                             R19 1 1
      227 GETUPVAL                         R20 3
      228 GETTABLEKS                       R20 R20 K4 ["useState"]
      230 NEWCLOSURE                       R21 P5
      231 CAPTURE                          UPVAL U13
      232 CAPTURE                          VAL R18
      233 CALL                             R20 1 2
      234 GETUPVAL                         R22 14
      235 GETTABLEKS                       R23 R18 K32 ["SelectionChanged"]
      237 NEWCLOSURE                       R24 P6
      238 CAPTURE                          VAL R21
      239 CAPTURE                          UPVAL U13
      240 CAPTURE                          VAL R18
      241 NEWTABLE                         R25 0 0
      243 CALL                             R22 3 0
      244 GETUPVAL                         R22 6
      245 CALL                             R22 0 1
      246 JUMPIFNOT                        R22 ; [+13]
      247 GETUPVAL                         R22 3
      248 GETTABLEKS                       R22 R22 K33 ["useEffect"]
      250 NEWCLOSURE                       R23 P7
      251 CAPTURE                          VAL R5
      252 CAPTURE                          VAL R19
      253 NEWTABLE                         R24 0 1
      255 GETTABLEKS                       R25 R19 K34 ["enabled"]
      257 SETLIST                          R24 R25 1 [1]
      259 CALL                             R22 2 0
      260 GETUPVAL                         R22 3
      261 GETTABLEKS                       R22 R22 K35 ["createElement"]
      263 GETUPVAL                         R23 15
      264 DUPTABLE                         R24 K38 [{"tag", "LayoutOrder"}]
      265 LOADK                            R25 K39 ["row size-full-1200 padding-y-xsmall padding-left-xsmall padding-right-small align-x-center align-y-center bg-surface-200 gap-none"]
      266 SETTABLEKS                       R25 R24 K36 ["tag"]
      268 GETTABLEKS                       R25 R0 K37 ["LayoutOrder"]
      270 SETTABLEKS                       R25 R24 K37 ["LayoutOrder"]
      272 DUPTABLE                         R25 K43 [{"SplitButtonContainer", "FailureDialog", "MarketplaceImportDialog"}]
      273 GETUPVAL                         R26 3
      274 GETTABLEKS                       R26 R26 K35 ["createElement"]
      276 GETUPVAL                         R27 15
      277 DUPTABLE                         R28 K44 [{"tag"}]
      278 LOADK                            R29 K45 ["size-full-1000 row align-x-center align-y-center gap-none radius-small"]
      279 SETTABLEKS                       R29 R28 K36 ["tag"]
      281 DUPTABLE                         R29 K48 [{"AddButton", "AddItemMenu"}]
      282 GETUPVAL                         R30 3
      283 GETTABLEKS                       R30 R30 K35 ["createElement"]
      285 GETUPVAL                         R31 16
      286 DUPTABLE                         R32 K54 [{"icon", "size", "variant", "onActivated", "width", "LayoutOrder"}]
      287 GETUPVAL                         R33 17
      288 GETTABLEKS                       R33 R33 K55 ["PlusLarge"]
      290 SETTABLEKS                       R33 R32 K49 ["icon"]
      292 GETUPVAL                         R33 18
      293 GETTABLEKS                       R33 R33 K56 ["Medium"]
      295 SETTABLEKS                       R33 R32 K50 ["size"]
      297 GETUPVAL                         R33 19
      298 GETTABLEKS                       R33 R33 K57 ["Utility"]
      300 SETTABLEKS                       R33 R32 K51 ["variant"]
      302 SETTABLEKS                       R11 R32 K52 ["onActivated"]
      304 GETIMPORT                        R33 K59 [UDim.new]
      306 LOADN                            R34 0
      307 LOADN                            R35 48
      308 CALL                             R33 2 1
      309 SETTABLEKS                       R33 R32 K53 ["width"]
      311 LOADN                            R33 1
      312 SETTABLEKS                       R33 R32 K37 ["LayoutOrder"]
      314 CALL                             R30 2 1
      315 SETTABLEKS                       R30 R29 K46 ["AddButton"]
      317 GETUPVAL                         R30 3
      318 GETTABLEKS                       R30 R30 K35 ["createElement"]
      320 GETUPVAL                         R31 20
      321 DUPTABLE                         R32 K67 [{"isOpen", "onClose", "onAddSelectedInstances", "onAddFromAssetId", "validInstancesSelected", "LayoutOrder", "anchorSize", "anchor"}]
      322 GETTABLEKS                       R33 R19 K34 ["enabled"]
      324 SETTABLEKS                       R33 R32 K60 ["isOpen"]
      326 GETTABLEKS                       R33 R19 K68 ["disable"]
      328 SETTABLEKS                       R33 R32 K61 ["onClose"]
      330 SETTABLEKS                       R11 R32 K62 ["onAddSelectedInstances"]
      332 SETTABLEKS                       R9 R32 K63 ["onAddFromAssetId"]
      334 SETTABLEKS                       R20 R32 K64 ["validInstancesSelected"]
      336 LOADN                            R33 2
      337 SETTABLEKS                       R33 R32 K37 ["LayoutOrder"]
      339 GETIMPORT                        R33 K71 [UDim2.fromScale]
      341 LOADK                            R34 K72 [0.43]
      342 LOADN                            R35 1
      343 CALL                             R33 2 1
      344 SETTABLEKS                       R33 R32 K65 ["anchorSize"]
      346 GETUPVAL                         R33 3
      347 GETTABLEKS                       R33 R33 K35 ["createElement"]
      349 GETUPVAL                         R34 15
      350 DUPTABLE                         R35 K74 [{"tag", "Size", "LayoutOrder", "onActivated", "width"}]
      351 LOADK                            R36 K75 ["row align-x-center align-y-center hover-bg-action-standard size-full-1000 radius-small cursor-pointer"]
      352 SETTABLEKS                       R36 R35 K36 ["tag"]
      354 GETIMPORT                        R36 K76 [UDim2.new]
      356 LOADN                            R37 1
      357 LOADN                            R38 0
      358 LOADN                            R39 1
      359 LOADN                            R40 0
      360 CALL                             R36 4 1
      361 SETTABLEKS                       R36 R35 K73 ["Size"]
      363 LOADN                            R36 3
      364 SETTABLEKS                       R36 R35 K37 ["LayoutOrder"]
      366 GETTABLEKS                       R36 R19 K77 ["toggle"]
      368 SETTABLEKS                       R36 R35 K52 ["onActivated"]
      370 GETIMPORT                        R36 K59 [UDim.new]
      372 LOADN                            R37 0
      373 LOADN                            R38 38
      374 CALL                             R36 2 1
      375 SETTABLEKS                       R36 R35 K53 ["width"]
      377 DUPTABLE                         R36 K79 [{"Icon"}]
      378 GETUPVAL                         R37 3
      379 GETTABLEKS                       R37 R37 K35 ["createElement"]
      381 GETUPVAL                         R38 21
      382 DUPTABLE                         R39 K80 [{"icon", "size", "onActivated"}]
      383 DUPTABLE                         R40 K82 [{"name", "variant"}]
      384 GETUPVAL                         R41 17
      385 GETTABLEKS                       R41 R41 K83 ["CaretSmallDown"]
      387 SETTABLEKS                       R41 R40 K81 ["name"]
      389 GETUPVAL                         R41 22
      390 GETTABLEKS                       R41 R41 K84 ["Filled"]
      392 SETTABLEKS                       R41 R40 K51 ["variant"]
      394 SETTABLEKS                       R40 R39 K49 ["icon"]
      396 GETUPVAL                         R40 18
      397 GETTABLEKS                       R40 R40 K56 ["Medium"]
      399 SETTABLEKS                       R40 R39 K50 ["size"]
      401 GETTABLEKS                       R40 R19 K77 ["toggle"]
      403 SETTABLEKS                       R40 R39 K52 ["onActivated"]
      405 CALL                             R37 2 1
      406 SETTABLEKS                       R37 R36 K78 ["Icon"]
      408 CALL                             R33 3 1
      409 SETTABLEKS                       R33 R32 K66 ["anchor"]
      411 CALL                             R30 2 1
      412 SETTABLEKS                       R30 R29 K47 ["AddItemMenu"]
      414 CALL                             R26 3 1
      415 SETTABLEKS                       R26 R25 K40 ["SplitButtonContainer"]
      417 JUMPIFEQKNIL                     R6 ; [+245]
      419 GETUPVAL                         R26 3
      420 GETTABLEKS                       R26 R26 K35 ["createElement"]
      422 GETUPVAL                         R27 23
      423 DUPTABLE                         R28 K93 [{"Title", "Enabled", "MinContentSize", "Modal", "OnClose", "OnButtonPressed", "Buttons", "ButtonHorizontalAlignment"}]
      424 JUMPIFEQKNIL                     R6 ; [+30]
      426 GETTABLEKS                       R31 R6 K8 ["type"]
      428 JUMPIFNOTEQKS                    R31 K9 ["noPalette"] ; [+26]
      430 GETTABLEKS                       R32 R6 K10 ["instances"]
      432 LENGTH                           R31 R32
      433 JUMPIFNOTEQKN                    R31 K11 [1] ; [+21]
      435 GETTABLEKS                       R31 R6 K12 ["extraErrors"]
      437 JUMPIFEQKNIL                     R31 ; [+17]
      439 GETIMPORT                        R31 K14 [next]
      441 GETTABLEKS                       R32 R6 K12 ["extraErrors"]
      443 CALL                             R31 1 2
      444 LOADB                            R30 0
      445 JUMPIFNOTEQKS                    R32 K15 ["OnlyOneShoe"] ; [+10]
      447 GETTABLEKS                       R34 R6 K10 ["instances"]
      449 GETTABLEN                        R33 R34 1
      450 JUMPIFEQ                         R33 R31 ; [+2]
      452 LOADB                            R30 0 +1
      453 LOADB                            R30 1
      454 JUMP                             ; [+1]
      455 LOADB                            R30 0
      456 JUMPIFNOT                        R30 ; [+6]
      457 LOADK                            R31 K16 ["AddItems"]
      458 LOADK                            R32 K94 ["WarningTitle"]
      459 NAMECALL                         R29 R1 K18 ["getText"]
      461 CALL                             R29 3 1
      462 JUMP                             ; [+5]
      463 LOADK                            R31 K16 ["AddItems"]
      464 LOADK                            R32 K95 ["FailedTitle"]
      465 NAMECALL                         R29 R1 K18 ["getText"]
      467 CALL                             R29 3 1
      468 SETTABLEKS                       R29 R28 K85 ["Title"]
      470 LOADB                            R29 1
      471 SETTABLEKS                       R29 R28 K86 ["Enabled"]
      473 GETIMPORT                        R29 K97 [Vector2.new]
      475 LOADN                            R30 94
      476 MOVE                             R31 R16
      477 CALL                             R29 2 1
      478 SETTABLEKS                       R29 R28 K87 ["MinContentSize"]
      480 LOADB                            R29 1
      481 SETTABLEKS                       R29 R28 K88 ["Modal"]
      483 SETTABLEKS                       R8 R28 K89 ["OnClose"]
      485 SETTABLEKS                       R8 R28 K90 ["OnButtonPressed"]
      487 NEWTABLE                         R29 0 1
      489 DUPTABLE                         R30 K100 [{"Key", "Text"}]
      490 LOADK                            R31 K101 ["OK"]
      491 SETTABLEKS                       R31 R30 K98 ["Key"]
      493 LOADK                            R33 K16 ["AddItems"]
      494 LOADK                            R34 K101 ["OK"]
      495 NAMECALL                         R31 R1 K18 ["getText"]
      497 CALL                             R31 3 1
      498 SETTABLEKS                       R31 R30 K99 ["Text"]
      500 SETLIST                          R29 R30 1 [1]
      502 SETTABLEKS                       R29 R28 K91 ["Buttons"]
      504 GETIMPORT                        R29 K105 [Enum.HorizontalAlignment.Center]
      506 SETTABLEKS                       R29 R28 K92 ["ButtonHorizontalAlignment"]
      508 DUPTABLE                         R29 K107 [{"Contents"}]
      509 GETUPVAL                         R30 3
      510 GETTABLEKS                       R30 R30 K35 ["createElement"]
      512 GETUPVAL                         R31 24
      513 NEWTABLE                         R32 8 0
      515 GETIMPORT                        R33 K110 [Enum.AutomaticSize.Y]
      517 SETTABLEKS                       R33 R32 K108 ["AutomaticSize"]
      519 GETIMPORT                        R33 K113 [Enum.FillDirection.Vertical]
      521 SETTABLEKS                       R33 R32 K114 ["Layout"]
      523 GETIMPORT                        R33 K105 [Enum.HorizontalAlignment.Center]
      525 SETTABLEKS                       R33 R32 K103 ["HorizontalAlignment"]
      527 GETIMPORT                        R33 K117 [Enum.VerticalAlignment.Top]
      529 SETTABLEKS                       R33 R32 K115 ["VerticalAlignment"]
      531 GETTABLEKS                       R33 R2 K118 ["FailureDialogSpacing"]
      533 SETTABLEKS                       R33 R32 K119 ["Spacing"]
      535 GETUPVAL                         R33 3
      536 GETTABLEKS                       R33 R33 K120 ["Change"]
      538 GETTABLEKS                       R33 R33 K121 ["AbsoluteSize"]
      540 NEWCLOSURE                       R34 P8
      541 CAPTURE                          VAL R17
      542 SETTABLE                         R34 R32 R33
      543 DUPTABLE                         R33 K123 [{"Title", "Hint"}]
      544 MOVE                             R34 R14
      545 JUMPIFNOT                        R34 ; [+35]
      546 GETUPVAL                         R34 3
      547 GETTABLEKS                       R34 R34 K35 ["createElement"]
      549 GETUPVAL                         R35 25
      550 DUPTABLE                         R36 K127 [{"AutomaticSize", "Font", "LayoutOrder", "Size", "Text", "TextWrapped", "TextXAlignment"}]
      551 GETIMPORT                        R37 K110 [Enum.AutomaticSize.Y]
      553 SETTABLEKS                       R37 R36 K108 ["AutomaticSize"]
      555 GETIMPORT                        R37 K129 [Enum.Font.SourceSansBold]
      557 SETTABLEKS                       R37 R36 K124 ["Font"]
      559 NAMECALL                         R37 R12 K130 ["getNextOrder"]
      561 CALL                             R37 1 1
      562 SETTABLEKS                       R37 R36 K37 ["LayoutOrder"]
      564 GETIMPORT                        R37 K71 [UDim2.fromScale]
      566 LOADN                            R38 1
      567 LOADN                            R39 0
      568 CALL                             R37 2 1
      569 SETTABLEKS                       R37 R36 K73 ["Size"]
      571 SETTABLEKS                       R14 R36 K99 ["Text"]
      573 LOADB                            R37 1
      574 SETTABLEKS                       R37 R36 K125 ["TextWrapped"]
      576 GETIMPORT                        R37 K132 [Enum.TextXAlignment.Left]
      578 SETTABLEKS                       R37 R36 K126 ["TextXAlignment"]
      580 CALL                             R34 2 1
      581 SETTABLEKS                       R34 R33 K85 ["Title"]
      583 GETUPVAL                         R34 3
      584 GETTABLEKS                       R34 R34 K35 ["createElement"]
      586 GETUPVAL                         R35 25
      587 DUPTABLE                         R36 K133 [{"AutomaticSize", "LayoutOrder", "Size", "Text", "TextWrapped", "TextXAlignment"}]
      588 GETIMPORT                        R37 K110 [Enum.AutomaticSize.Y]
      590 SETTABLEKS                       R37 R36 K108 ["AutomaticSize"]
      592 NAMECALL                         R37 R12 K130 ["getNextOrder"]
      594 CALL                             R37 1 1
      595 SETTABLEKS                       R37 R36 K37 ["LayoutOrder"]
      597 GETIMPORT                        R37 K71 [UDim2.fromScale]
      599 LOADN                            R38 1
      600 LOADN                            R39 0
      601 CALL                             R37 2 1
      602 SETTABLEKS                       R37 R36 K73 ["Size"]
      604 JUMPIFEQKNIL                     R6 ; [+30]
      606 GETTABLEKS                       R39 R6 K8 ["type"]
      608 JUMPIFNOTEQKS                    R39 K9 ["noPalette"] ; [+26]
      610 GETTABLEKS                       R40 R6 K10 ["instances"]
      612 LENGTH                           R39 R40
      613 JUMPIFNOTEQKN                    R39 K11 [1] ; [+21]
      615 GETTABLEKS                       R39 R6 K12 ["extraErrors"]
      617 JUMPIFEQKNIL                     R39 ; [+17]
      619 GETIMPORT                        R39 K14 [next]
      621 GETTABLEKS                       R40 R6 K12 ["extraErrors"]
      623 CALL                             R39 1 2
      624 LOADB                            R38 0
      625 JUMPIFNOTEQKS                    R40 K15 ["OnlyOneShoe"] ; [+10]
      627 GETTABLEKS                       R42 R6 K10 ["instances"]
      629 GETTABLEN                        R41 R42 1
      630 JUMPIFEQ                         R41 R39 ; [+2]
      632 LOADB                            R38 0 +1
      633 LOADB                            R38 1
      634 JUMP                             ; [+1]
      635 LOADB                            R38 0
      636 JUMPIFNOT                        R38 ; [+2]
      637 MOVE                             R37 R15
      638 JUMP                             ; [+7]
      639 MOVE                             R38 R15
      640 LOADK                            R41 K16 ["AddItems"]
      641 LOADK                            R42 K134 ["FailedAddHint"]
      642 NAMECALL                         R39 R1 K18 ["getText"]
      644 CALL                             R39 3 1
      645 CONCAT                           R37 R38 R39
      646 SETTABLEKS                       R37 R36 K99 ["Text"]
      648 LOADB                            R37 1
      649 SETTABLEKS                       R37 R36 K125 ["TextWrapped"]
      651 GETIMPORT                        R37 K132 [Enum.TextXAlignment.Left]
      653 SETTABLEKS                       R37 R36 K126 ["TextXAlignment"]
      655 CALL                             R34 2 1
      656 SETTABLEKS                       R34 R33 K122 ["Hint"]
      658 CALL                             R30 3 1
      659 SETTABLEKS                       R30 R29 K106 ["Contents"]
      661 CALL                             R26 3 1
      662 JUMP                             ; [+1]
      663 LOADNIL                          R26
      664 SETTABLEKS                       R26 R25 K41 ["FailureDialog"]
      666 GETUPVAL                         R27 2
      667 CALL                             R27 0 1
      668 JUMPIFNOT                        R27 ; [+16]
      669 GETTABLEKS                       R27 R4 K34 ["enabled"]
      671 JUMPIFNOT                        R27 ; [+13]
      672 GETUPVAL                         R26 3
      673 GETTABLEKS                       R26 R26 K35 ["createElement"]
      675 GETUPVAL                         R27 26
      676 DUPTABLE                         R28 K136 [{"onClose", "onAddItems"}]
      677 GETTABLEKS                       R29 R4 K68 ["disable"]
      679 SETTABLEKS                       R29 R28 K61 ["onClose"]
      681 SETTABLEKS                       R10 R28 K135 ["onAddItems"]
      683 CALL                             R26 2 1
      684 JUMP                             ; [+1]
      685 LOADNIL                          R26
      686 SETTABLEKS                       R26 R25 K42 ["MarketplaceImportDialog"]
      688 CALL                             R22 3 -1
      689 RETURN                           R22 -1

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
