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
        5 JUMPIFNOTEQKN                    R1 K1 [0] ; [+7]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K2 ["setMarketplaceImportOpen"]
       10 LOADB                            R2 1
       11 CALL                             R1 1 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R1 2
       14 MOVE                             R2 R0
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R3 R1 K3 ["invalidInstances"]
       18 LENGTH                           R2 R3
       19 LOADN                            R3 0
       20 JUMPIFNOTLT                      R3 R2 ; [+15]
       22 GETUPVAL                         R2 3
       23 DUPTABLE                         R3 K7 [{"type", "instances", "extraErrors"}]
       24 LOADK                            R4 K8 ["noPalette"]
       25 SETTABLEKS                       R4 R3 K4 ["type"]
       27 GETTABLEKS                       R4 R1 K3 ["invalidInstances"]
       29 SETTABLEKS                       R4 R3 K5 ["instances"]
       31 GETTABLEKS                       R4 R1 K6 ["extraErrors"]
       33 SETTABLEKS                       R4 R3 K6 ["extraErrors"]
       35 CALL                             R2 1 0
       36 GETUPVAL                         R2 4
       37 LOADK                            R4 K9 ["addUserItems"]
       38 LENGTH                           R5 R0
       39 LENGTH                           R7 R0
       40 GETTABLEKS                       R9 R1 K3 ["invalidInstances"]
       42 LENGTH                           R8 R9
       43 SUB                              R6 R7 R8
       44 NAMECALL                         R2 R2 K10 ["report"]
       46 CALL                             R2 4 0
       47 GETTABLEKS                       R2 R1 K11 ["activePalette"]
       49 JUMPIFEQKNIL                     R2 ; [+9]
       51 GETUPVAL                         R3 5
       52 GETTABLEKS                       R2 R3 K12 ["openPalette"]
       54 GETTABLEKS                       R4 R1 K11 ["activePalette"]
       56 GETTABLEKS                       R3 R4 K13 ["Key"]
       58 CALL                             R2 1 0
       59 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 NAMECALL                         R2 R2 K0 ["use"]
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 2
       12 CALL                             R3 0 1
       13 GETUPVAL                         R5 3
       14 GETTABLEKS                       R4 R5 K2 ["useContext"]
       16 GETUPVAL                         R6 4
       17 GETTABLEKS                       R5 R6 K3 ["Context"]
       19 CALL                             R4 1 1
       20 GETUPVAL                         R6 3
       21 GETTABLEKS                       R5 R6 K2 ["useContext"]
       23 GETUPVAL                         R7 5
       24 GETTABLEKS                       R6 R7 K3 ["Context"]
       26 CALL                             R5 1 1
       27 GETUPVAL                         R7 3
       28 GETTABLEKS                       R6 R7 K4 ["useCallback"]
       30 NEWCLOSURE                       R7 P0
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R5
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R0
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R4
       37 NEWTABLE                         R8 0 6
       39 MOVE                             R9 R1
       40 MOVE                             R10 R2
       41 MOVE                             R11 R3
       42 MOVE                             R12 R4
       43 MOVE                             R13 R5
       44 MOVE                             R14 R0
       45 SETLIST                          R8 R9 6 [1]
       47 CALL                             R6 2 -1
       48 RETURN                           R6 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+35]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R0 R1 K0 ["type"]
        6 JUMPIFNOTEQKS                    R0 K1 ["noPalette"] ; [+30]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K2 ["instances"]
       11 LENGTH                           R0 R1
       12 JUMPIFNOTEQKN                    R0 K3 [1] ; [+24]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R0 R1 K4 ["extraErrors"]
       17 JUMPIFEQKNIL                     R0 ; [+19]
       19 GETIMPORT                        R0 K6 [next]
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R1 R2 K4 ["extraErrors"]
       24 CALL                             R0 1 2
       25 LOADB                            R2 0
       26 JUMPIFNOTEQKS                    R1 K7 ["OnlyOneShoe"] ; [+9]
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R4 R5 K2 ["instances"]
       31 GETTABLEN                        R3 R4 1
       32 JUMPIFEQ                         R3 R0 ; [+2]
       34 LOADB                            R2 0 +1
       35 LOADB                            R2 1
       36 RETURN                           R2 1
       37 LOADB                            R0 0
       38 RETURN                           R0 1

PROTO_5:
        0 GETTABLEKS                       R2 R1 K0 ["Name"]
        2 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["AddItems"]
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K1 ["getText"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setMarketplaceImportOpen"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setFoundationMenuOpen"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["enabled"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R3 K1 ["Y"]
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
       11 JUMPIFNOT                        R4 ; [+8]
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R3 R4 K2 ["useContext"]
       15 GETUPVAL                         R5 4
       16 GETTABLEKS                       R4 R5 K3 ["Context"]
       18 CALL                             R3 1 1
       19 JUMP                             ; [+1]
       20 LOADNIL                          R3
       21 GETUPVAL                         R5 3
       22 GETTABLEKS                       R4 R5 K2 ["useContext"]
       24 GETUPVAL                         R6 5
       25 GETTABLEKS                       R5 R6 K3 ["Context"]
       27 CALL                             R4 1 1
       28 GETUPVAL                         R6 3
       29 GETTABLEKS                       R5 R6 K4 ["useState"]
       31 LOADNIL                          R6
       32 CALL                             R5 1 2
       33 GETUPVAL                         R8 3
       34 GETTABLEKS                       R7 R8 K5 ["useCallback"]
       36 NEWCLOSURE                       R8 P0
       37 CAPTURE                          VAL R6
       38 NEWTABLE                         R9 0 0
       40 CALL                             R7 2 1
       41 GETUPVAL                         R8 6
       42 MOVE                             R9 R6
       43 CALL                             R8 1 1
       44 GETUPVAL                         R10 7
       45 GETTABLEKS                       R9 R10 K6 ["new"]
       47 CALL                             R9 0 1
       48 NEWCLOSURE                       R10 P1
       49 CAPTURE                          VAL R5
       50 JUMPIFNOTEQKNIL                  R5 ; [+3]
       52 LOADNIL                          R11
       53 JUMP                             ; [+85]
       54 JUMPIFEQKNIL                     R5 ; [+30]
       56 GETTABLEKS                       R13 R5 K7 ["type"]
       58 JUMPIFNOTEQKS                    R13 K8 ["noPalette"] ; [+26]
       60 GETTABLEKS                       R14 R5 K9 ["instances"]
       62 LENGTH                           R13 R14
       63 JUMPIFNOTEQKN                    R13 K10 [1] ; [+21]
       65 GETTABLEKS                       R13 R5 K11 ["extraErrors"]
       67 JUMPIFEQKNIL                     R13 ; [+17]
       69 GETIMPORT                        R13 K13 [next]
       71 GETTABLEKS                       R14 R5 K11 ["extraErrors"]
       73 CALL                             R13 1 2
       74 LOADB                            R12 0
       75 JUMPIFNOTEQKS                    R14 K14 ["OnlyOneShoe"] ; [+10]
       77 GETTABLEKS                       R16 R5 K9 ["instances"]
       79 GETTABLEN                        R15 R16 1
       80 JUMPIFEQ                         R15 R13 ; [+2]
       82 LOADB                            R12 0 +1
       83 LOADB                            R12 1
       84 JUMP                             ; [+1]
       85 LOADB                            R12 0
       86 JUMPIFNOT                        R12 ; [+6]
       87 LOADK                            R13 K15 ["AddItems"]
       88 LOADK                            R14 K16 ["WarningHeaderOneShoe"]
       89 NAMECALL                         R11 R1 K17 ["getText"]
       91 CALL                             R11 3 1
       92 JUMP                             ; [+46]
       93 GETTABLEKS                       R12 R5 K7 ["type"]
       95 JUMPIFNOTEQKS                    R12 K8 ["noPalette"] ; [+12]
       97 GETTABLEKS                       R13 R5 K9 ["instances"]
       99 LENGTH                           R12 R13
      100 JUMPIFNOTEQKN                    R12 K10 [1] ; [+7]
      102 LOADK                            R13 K15 ["AddItems"]
      103 LOADK                            R14 K18 ["FailedAddNoPaletteHeaderSingle"]
      104 NAMECALL                         R11 R1 K17 ["getText"]
      106 CALL                             R11 3 1
      107 JUMP                             ; [+31]
      108 GETTABLEKS                       R12 R5 K7 ["type"]
      110 JUMPIFNOTEQKS                    R12 K8 ["noPalette"] ; [+27]
      112 GETTABLEKS                       R13 R5 K9 ["instances"]
      114 LENGTH                           R12 R13
      115 LOADN                            R13 1
      116 JUMPIFNOTLT                      R13 R12 ; [+21]
      118 LOADK                            R13 K15 ["AddItems"]
      119 LOADK                            R14 K19 ["FailedAddNoPaletteHeaderMultiple"]
      120 DUPTABLE                         R15 K21 [{"items"}]
      121 GETIMPORT                        R16 K24 [table.concat]
      123 GETUPVAL                         R18 8
      124 GETTABLEKS                       R17 R18 K25 ["collectArray"]
      126 GETTABLEKS                       R18 R5 K9 ["instances"]
      128 DUPCLOSURE                       R19 K26 [PROTO_5]
      129 CALL                             R17 2 1
      130 LOADK                            R18 K27 [", "]
      131 CALL                             R16 2 1
      132 SETTABLEKS                       R16 R15 K20 ["items"]
      134 NAMECALL                         R11 R1 K17 ["getText"]
      136 CALL                             R11 4 1
      137 JUMP                             ; [+1]
      138 LOADNIL                          R11
      139 JUMPIFNOT                        R5 ; [+30]
      140 GETTABLEKS                       R13 R5 K7 ["type"]
      142 JUMPIFNOTEQKS                    R13 K8 ["noPalette"] ; [+27]
      144 GETTABLEKS                       R13 R5 K11 ["extraErrors"]
      146 JUMPIFNOT                        R13 ; [+23]
      147 GETIMPORT                        R13 K13 [next]
      149 GETTABLEKS                       R14 R5 K11 ["extraErrors"]
      151 CALL                             R13 1 1
      152 JUMPIFEQKNIL                     R13 ; [+17]
      154 GETIMPORT                        R15 K24 [table.concat]
      156 GETUPVAL                         R17 8
      157 GETTABLEKS                       R16 R17 K25 ["collectArray"]
      159 GETTABLEKS                       R17 R5 K11 ["extraErrors"]
      161 NEWCLOSURE                       R18 P3
      162 CAPTURE                          VAL R1
      163 CALL                             R16 2 1
      164 LOADK                            R17 K28 [" "]
      165 CALL                             R15 2 1
      166 MOVE                             R13 R15
      167 LOADK                            R14 K28 [" "]
      168 CONCAT                           R12 R13 R14
      169 JUMP                             ; [+1]
      170 LOADK                            R12 K29 [""]
      171 GETUPVAL                         R14 3
      172 GETTABLEKS                       R13 R14 K4 ["useState"]
      174 LOADN                            R14 100
      175 CALL                             R13 1 2
      176 GETUPVAL                         R15 9
      177 NAMECALL                         R15 R15 K0 ["use"]
      179 CALL                             R15 1 1
      180 NAMECALL                         R15 R15 K30 ["get"]
      182 CALL                             R15 1 1
      183 GETUPVAL                         R16 10
      184 LOADB                            R17 0
      185 CALL                             R16 1 1
      186 GETUPVAL                         R18 3
      187 GETTABLEKS                       R17 R18 K5 ["useCallback"]
      189 NEWCLOSURE                       R18 P4
      190 CAPTURE                          VAL R4
      191 NEWTABLE                         R19 0 1
      193 MOVE                             R20 R4
      194 SETLIST                          R19 R20 1 [1]
      196 CALL                             R17 2 1
      197 GETUPVAL                         R19 3
      198 GETTABLEKS                       R18 R19 K4 ["useState"]
      200 NEWCLOSURE                       R19 P5
      201 CAPTURE                          UPVAL U11
      202 CAPTURE                          VAL R15
      203 CALL                             R18 1 2
      204 GETUPVAL                         R20 12
      205 GETTABLEKS                       R21 R15 K31 ["SelectionChanged"]
      207 NEWCLOSURE                       R22 P6
      208 CAPTURE                          VAL R19
      209 CAPTURE                          UPVAL U11
      210 CAPTURE                          VAL R15
      211 NEWTABLE                         R23 0 0
      213 CALL                             R20 3 0
      214 GETUPVAL                         R20 2
      215 CALL                             R20 0 1
      216 JUMPIFNOT                        R20 ; [+13]
      217 GETUPVAL                         R21 3
      218 GETTABLEKS                       R20 R21 K32 ["useEffect"]
      220 NEWCLOSURE                       R21 P7
      221 CAPTURE                          VAL R3
      222 CAPTURE                          VAL R16
      223 NEWTABLE                         R22 0 1
      225 GETTABLEKS                       R23 R16 K33 ["enabled"]
      227 SETLIST                          R22 R23 1 [1]
      229 CALL                             R20 2 0
      230 GETUPVAL                         R21 3
      231 GETTABLEKS                       R20 R21 K34 ["createElement"]
      233 GETUPVAL                         R21 13
      234 DUPTABLE                         R22 K37 [{"tag", "LayoutOrder"}]
      235 LOADK                            R23 K38 ["row size-full-1200 padding-y-xsmall padding-left-xsmall padding-right-small align-x-center align-y-center bg-surface-200 gap-none"]
      236 SETTABLEKS                       R23 R22 K35 ["tag"]
      238 GETTABLEKS                       R23 R0 K36 ["LayoutOrder"]
      240 SETTABLEKS                       R23 R22 K36 ["LayoutOrder"]
      242 DUPTABLE                         R23 K41 [{"SplitButtonContainer", "FailureDialog"}]
      243 GETUPVAL                         R25 3
      244 GETTABLEKS                       R24 R25 K34 ["createElement"]
      246 GETUPVAL                         R25 13
      247 DUPTABLE                         R26 K42 [{"tag"}]
      248 LOADK                            R27 K43 ["size-full-1000 row align-x-center align-y-center gap-none radius-small"]
      249 SETTABLEKS                       R27 R26 K35 ["tag"]
      251 DUPTABLE                         R27 K46 [{"AddButton", "AddItemMenu"}]
      252 GETUPVAL                         R29 3
      253 GETTABLEKS                       R28 R29 K34 ["createElement"]
      255 GETUPVAL                         R29 14
      256 DUPTABLE                         R30 K52 [{"icon", "size", "variant", "onActivated", "width", "LayoutOrder"}]
      257 GETUPVAL                         R32 15
      258 GETTABLEKS                       R31 R32 K53 ["PlusLarge"]
      260 SETTABLEKS                       R31 R30 K47 ["icon"]
      262 GETUPVAL                         R32 16
      263 GETTABLEKS                       R31 R32 K54 ["Medium"]
      265 SETTABLEKS                       R31 R30 K48 ["size"]
      267 GETUPVAL                         R32 17
      268 GETTABLEKS                       R31 R32 K55 ["Utility"]
      270 SETTABLEKS                       R31 R30 K49 ["variant"]
      272 SETTABLEKS                       R8 R30 K50 ["onActivated"]
      274 GETIMPORT                        R31 K57 [UDim.new]
      276 LOADN                            R32 0
      277 LOADN                            R33 48
      278 CALL                             R31 2 1
      279 SETTABLEKS                       R31 R30 K51 ["width"]
      281 LOADN                            R31 1
      282 SETTABLEKS                       R31 R30 K36 ["LayoutOrder"]
      284 CALL                             R28 2 1
      285 SETTABLEKS                       R28 R27 K44 ["AddButton"]
      287 GETUPVAL                         R29 3
      288 GETTABLEKS                       R28 R29 K34 ["createElement"]
      290 GETUPVAL                         R29 18
      291 DUPTABLE                         R30 K65 [{"isOpen", "onClose", "onAddSelectedInstances", "onAddFromAssetId", "validInstancesSelected", "LayoutOrder", "anchorSize", "anchor"}]
      292 GETTABLEKS                       R31 R16 K33 ["enabled"]
      294 SETTABLEKS                       R31 R30 K58 ["isOpen"]
      296 GETTABLEKS                       R31 R16 K66 ["disable"]
      298 SETTABLEKS                       R31 R30 K59 ["onClose"]
      300 SETTABLEKS                       R8 R30 K60 ["onAddSelectedInstances"]
      302 SETTABLEKS                       R17 R30 K61 ["onAddFromAssetId"]
      304 SETTABLEKS                       R18 R30 K62 ["validInstancesSelected"]
      306 LOADN                            R31 2
      307 SETTABLEKS                       R31 R30 K36 ["LayoutOrder"]
      309 GETIMPORT                        R31 K69 [UDim2.fromScale]
      311 LOADK                            R32 K70 [0.43]
      312 LOADN                            R33 1
      313 CALL                             R31 2 1
      314 SETTABLEKS                       R31 R30 K63 ["anchorSize"]
      316 GETUPVAL                         R32 3
      317 GETTABLEKS                       R31 R32 K34 ["createElement"]
      319 GETUPVAL                         R32 13
      320 DUPTABLE                         R33 K72 [{"tag", "Size", "LayoutOrder", "onActivated", "width"}]
      321 LOADK                            R34 K73 ["row align-x-center align-y-center hover-bg-action-standard size-full-1000 radius-small cursor-pointer"]
      322 SETTABLEKS                       R34 R33 K35 ["tag"]
      324 GETIMPORT                        R34 K74 [UDim2.new]
      326 LOADN                            R35 1
      327 LOADN                            R36 0
      328 LOADN                            R37 1
      329 LOADN                            R38 0
      330 CALL                             R34 4 1
      331 SETTABLEKS                       R34 R33 K71 ["Size"]
      333 LOADN                            R34 3
      334 SETTABLEKS                       R34 R33 K36 ["LayoutOrder"]
      336 GETTABLEKS                       R34 R16 K75 ["toggle"]
      338 SETTABLEKS                       R34 R33 K50 ["onActivated"]
      340 GETIMPORT                        R34 K57 [UDim.new]
      342 LOADN                            R35 0
      343 LOADN                            R36 38
      344 CALL                             R34 2 1
      345 SETTABLEKS                       R34 R33 K51 ["width"]
      347 DUPTABLE                         R34 K77 [{"Icon"}]
      348 GETUPVAL                         R36 3
      349 GETTABLEKS                       R35 R36 K34 ["createElement"]
      351 GETUPVAL                         R36 19
      352 DUPTABLE                         R37 K78 [{"icon", "size", "onActivated"}]
      353 DUPTABLE                         R38 K80 [{"name", "variant"}]
      354 GETUPVAL                         R40 15
      355 GETTABLEKS                       R39 R40 K81 ["CaretSmallDown"]
      357 SETTABLEKS                       R39 R38 K79 ["name"]
      359 GETUPVAL                         R40 20
      360 GETTABLEKS                       R39 R40 K82 ["Filled"]
      362 SETTABLEKS                       R39 R38 K49 ["variant"]
      364 SETTABLEKS                       R38 R37 K47 ["icon"]
      366 GETUPVAL                         R39 16
      367 GETTABLEKS                       R38 R39 K54 ["Medium"]
      369 SETTABLEKS                       R38 R37 K48 ["size"]
      371 GETTABLEKS                       R38 R16 K75 ["toggle"]
      373 SETTABLEKS                       R38 R37 K50 ["onActivated"]
      375 CALL                             R35 2 1
      376 SETTABLEKS                       R35 R34 K76 ["Icon"]
      378 CALL                             R31 3 1
      379 SETTABLEKS                       R31 R30 K64 ["anchor"]
      381 CALL                             R28 2 1
      382 SETTABLEKS                       R28 R27 K45 ["AddItemMenu"]
      384 CALL                             R24 3 1
      385 SETTABLEKS                       R24 R23 K39 ["SplitButtonContainer"]
      387 JUMPIFEQKNIL                     R5 ; [+245]
      389 GETUPVAL                         R25 3
      390 GETTABLEKS                       R24 R25 K34 ["createElement"]
      392 GETUPVAL                         R25 21
      393 DUPTABLE                         R26 K91 [{"Title", "Enabled", "MinContentSize", "Modal", "OnClose", "OnButtonPressed", "Buttons", "ButtonHorizontalAlignment"}]
      394 JUMPIFEQKNIL                     R5 ; [+30]
      396 GETTABLEKS                       R29 R5 K7 ["type"]
      398 JUMPIFNOTEQKS                    R29 K8 ["noPalette"] ; [+26]
      400 GETTABLEKS                       R30 R5 K9 ["instances"]
      402 LENGTH                           R29 R30
      403 JUMPIFNOTEQKN                    R29 K10 [1] ; [+21]
      405 GETTABLEKS                       R29 R5 K11 ["extraErrors"]
      407 JUMPIFEQKNIL                     R29 ; [+17]
      409 GETIMPORT                        R29 K13 [next]
      411 GETTABLEKS                       R30 R5 K11 ["extraErrors"]
      413 CALL                             R29 1 2
      414 LOADB                            R28 0
      415 JUMPIFNOTEQKS                    R30 K14 ["OnlyOneShoe"] ; [+10]
      417 GETTABLEKS                       R32 R5 K9 ["instances"]
      419 GETTABLEN                        R31 R32 1
      420 JUMPIFEQ                         R31 R29 ; [+2]
      422 LOADB                            R28 0 +1
      423 LOADB                            R28 1
      424 JUMP                             ; [+1]
      425 LOADB                            R28 0
      426 JUMPIFNOT                        R28 ; [+6]
      427 LOADK                            R29 K15 ["AddItems"]
      428 LOADK                            R30 K92 ["WarningTitle"]
      429 NAMECALL                         R27 R1 K17 ["getText"]
      431 CALL                             R27 3 1
      432 JUMP                             ; [+5]
      433 LOADK                            R29 K15 ["AddItems"]
      434 LOADK                            R30 K93 ["FailedTitle"]
      435 NAMECALL                         R27 R1 K17 ["getText"]
      437 CALL                             R27 3 1
      438 SETTABLEKS                       R27 R26 K83 ["Title"]
      440 LOADB                            R27 1
      441 SETTABLEKS                       R27 R26 K84 ["Enabled"]
      443 GETIMPORT                        R27 K95 [Vector2.new]
      445 LOADN                            R28 94
      446 MOVE                             R29 R13
      447 CALL                             R27 2 1
      448 SETTABLEKS                       R27 R26 K85 ["MinContentSize"]
      450 LOADB                            R27 1
      451 SETTABLEKS                       R27 R26 K86 ["Modal"]
      453 SETTABLEKS                       R7 R26 K87 ["OnClose"]
      455 SETTABLEKS                       R7 R26 K88 ["OnButtonPressed"]
      457 NEWTABLE                         R27 0 1
      459 DUPTABLE                         R28 K98 [{"Key", "Text"}]
      460 LOADK                            R29 K99 ["OK"]
      461 SETTABLEKS                       R29 R28 K96 ["Key"]
      463 LOADK                            R31 K15 ["AddItems"]
      464 LOADK                            R32 K99 ["OK"]
      465 NAMECALL                         R29 R1 K17 ["getText"]
      467 CALL                             R29 3 1
      468 SETTABLEKS                       R29 R28 K97 ["Text"]
      470 SETLIST                          R27 R28 1 [1]
      472 SETTABLEKS                       R27 R26 K89 ["Buttons"]
      474 GETIMPORT                        R27 K103 [Enum.HorizontalAlignment.Center]
      476 SETTABLEKS                       R27 R26 K90 ["ButtonHorizontalAlignment"]
      478 DUPTABLE                         R27 K105 [{"Contents"}]
      479 GETUPVAL                         R29 3
      480 GETTABLEKS                       R28 R29 K34 ["createElement"]
      482 GETUPVAL                         R29 22
      483 NEWTABLE                         R30 8 0
      485 GETIMPORT                        R31 K108 [Enum.AutomaticSize.Y]
      487 SETTABLEKS                       R31 R30 K106 ["AutomaticSize"]
      489 GETIMPORT                        R31 K111 [Enum.FillDirection.Vertical]
      491 SETTABLEKS                       R31 R30 K112 ["Layout"]
      493 GETIMPORT                        R31 K103 [Enum.HorizontalAlignment.Center]
      495 SETTABLEKS                       R31 R30 K101 ["HorizontalAlignment"]
      497 GETIMPORT                        R31 K115 [Enum.VerticalAlignment.Top]
      499 SETTABLEKS                       R31 R30 K113 ["VerticalAlignment"]
      501 GETTABLEKS                       R31 R2 K116 ["FailureDialogSpacing"]
      503 SETTABLEKS                       R31 R30 K117 ["Spacing"]
      505 GETUPVAL                         R33 3
      506 GETTABLEKS                       R32 R33 K118 ["Change"]
      508 GETTABLEKS                       R31 R32 K119 ["AbsoluteSize"]
      510 NEWCLOSURE                       R32 P8
      511 CAPTURE                          VAL R14
      512 SETTABLE                         R32 R30 R31
      513 DUPTABLE                         R31 K121 [{"Title", "Hint"}]
      514 MOVE                             R32 R11
      515 JUMPIFNOT                        R32 ; [+35]
      516 GETUPVAL                         R33 3
      517 GETTABLEKS                       R32 R33 K34 ["createElement"]
      519 GETUPVAL                         R33 23
      520 DUPTABLE                         R34 K125 [{"AutomaticSize", "Font", "LayoutOrder", "Size", "Text", "TextWrapped", "TextXAlignment"}]
      521 GETIMPORT                        R35 K108 [Enum.AutomaticSize.Y]
      523 SETTABLEKS                       R35 R34 K106 ["AutomaticSize"]
      525 GETIMPORT                        R35 K127 [Enum.Font.SourceSansBold]
      527 SETTABLEKS                       R35 R34 K122 ["Font"]
      529 NAMECALL                         R35 R9 K128 ["getNextOrder"]
      531 CALL                             R35 1 1
      532 SETTABLEKS                       R35 R34 K36 ["LayoutOrder"]
      534 GETIMPORT                        R35 K69 [UDim2.fromScale]
      536 LOADN                            R36 1
      537 LOADN                            R37 0
      538 CALL                             R35 2 1
      539 SETTABLEKS                       R35 R34 K71 ["Size"]
      541 SETTABLEKS                       R11 R34 K97 ["Text"]
      543 LOADB                            R35 1
      544 SETTABLEKS                       R35 R34 K123 ["TextWrapped"]
      546 GETIMPORT                        R35 K130 [Enum.TextXAlignment.Left]
      548 SETTABLEKS                       R35 R34 K124 ["TextXAlignment"]
      550 CALL                             R32 2 1
      551 SETTABLEKS                       R32 R31 K83 ["Title"]
      553 GETUPVAL                         R33 3
      554 GETTABLEKS                       R32 R33 K34 ["createElement"]
      556 GETUPVAL                         R33 23
      557 DUPTABLE                         R34 K131 [{"AutomaticSize", "LayoutOrder", "Size", "Text", "TextWrapped", "TextXAlignment"}]
      558 GETIMPORT                        R35 K108 [Enum.AutomaticSize.Y]
      560 SETTABLEKS                       R35 R34 K106 ["AutomaticSize"]
      562 NAMECALL                         R35 R9 K128 ["getNextOrder"]
      564 CALL                             R35 1 1
      565 SETTABLEKS                       R35 R34 K36 ["LayoutOrder"]
      567 GETIMPORT                        R35 K69 [UDim2.fromScale]
      569 LOADN                            R36 1
      570 LOADN                            R37 0
      571 CALL                             R35 2 1
      572 SETTABLEKS                       R35 R34 K71 ["Size"]
      574 JUMPIFEQKNIL                     R5 ; [+30]
      576 GETTABLEKS                       R37 R5 K7 ["type"]
      578 JUMPIFNOTEQKS                    R37 K8 ["noPalette"] ; [+26]
      580 GETTABLEKS                       R38 R5 K9 ["instances"]
      582 LENGTH                           R37 R38
      583 JUMPIFNOTEQKN                    R37 K10 [1] ; [+21]
      585 GETTABLEKS                       R37 R5 K11 ["extraErrors"]
      587 JUMPIFEQKNIL                     R37 ; [+17]
      589 GETIMPORT                        R37 K13 [next]
      591 GETTABLEKS                       R38 R5 K11 ["extraErrors"]
      593 CALL                             R37 1 2
      594 LOADB                            R36 0
      595 JUMPIFNOTEQKS                    R38 K14 ["OnlyOneShoe"] ; [+10]
      597 GETTABLEKS                       R40 R5 K9 ["instances"]
      599 GETTABLEN                        R39 R40 1
      600 JUMPIFEQ                         R39 R37 ; [+2]
      602 LOADB                            R36 0 +1
      603 LOADB                            R36 1
      604 JUMP                             ; [+1]
      605 LOADB                            R36 0
      606 JUMPIFNOT                        R36 ; [+2]
      607 MOVE                             R35 R12
      608 JUMP                             ; [+7]
      609 MOVE                             R36 R12
      610 LOADK                            R39 K15 ["AddItems"]
      611 LOADK                            R40 K132 ["FailedAddHint"]
      612 NAMECALL                         R37 R1 K17 ["getText"]
      614 CALL                             R37 3 1
      615 CONCAT                           R35 R36 R37
      616 SETTABLEKS                       R35 R34 K97 ["Text"]
      618 LOADB                            R35 1
      619 SETTABLEKS                       R35 R34 K123 ["TextWrapped"]
      621 GETIMPORT                        R35 K130 [Enum.TextXAlignment.Left]
      623 SETTABLEKS                       R35 R34 K124 ["TextXAlignment"]
      625 CALL                             R32 2 1
      626 SETTABLEKS                       R32 R31 K120 ["Hint"]
      628 CALL                             R28 3 1
      629 SETTABLEKS                       R28 R27 K104 ["Contents"]
      631 CALL                             R24 3 1
      632 JUMP                             ; [+1]
      633 LOADNIL                          R24
      634 SETTABLEKS                       R24 R23 K40 ["FailureDialog"]
      636 CALL                             R20 3 -1
      637 RETURN                           R20 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETIMPORT                        R8 K1 [script]
       39 GETTABLEKS                       R7 R8 K11 ["Parent"]
       41 GETTABLEKS                       R6 R7 K12 ["AddItemMenu"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R9 R0 K13 ["Src"]
       48 GETTABLEKS                       R8 R9 K14 ["Components"]
       50 GETTABLEKS                       R7 R8 K15 ["AvatarScreenContext"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R10 R0 K13 ["Src"]
       57 GETTABLEKS                       R9 R10 K16 ["Resources"]
       59 GETTABLEKS                       R8 R9 K17 ["CatalogItems"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R11 R0 K13 ["Src"]
       66 GETTABLEKS                       R10 R11 K14 ["Components"]
       68 GETTABLEKS                       R9 R10 K18 ["MarketplaceImportContext"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R12 R0 K13 ["Src"]
       75 GETTABLEKS                       R11 R12 K19 ["Util"]
       77 GETTABLEKS                       R10 R11 K20 ["SelectionWrapper"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R13 R0 K13 ["Src"]
       84 GETTABLEKS                       R12 R13 K21 ["Hooks"]
       86 GETTABLEKS                       R11 R12 K22 ["useAddInstancesToUserCatalogAndEquip"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K5 [require]
       91 GETTABLEKS                       R14 R0 K13 ["Src"]
       93 GETTABLEKS                       R13 R14 K21 ["Hooks"]
       95 GETTABLEKS                       R12 R13 K23 ["useEventConnection"]
       97 CALL                             R11 1 1
       98 GETIMPORT                        R12 K5 [require]
      100 GETTABLEKS                       R15 R0 K13 ["Src"]
      102 GETTABLEKS                       R14 R15 K21 ["Hooks"]
      104 GETTABLEKS                       R13 R14 K24 ["useToggleState"]
      106 CALL                             R12 1 1
      107 GETIMPORT                        R13 K5 [require]
      109 GETTABLEKS                       R16 R0 K13 ["Src"]
      111 GETTABLEKS                       R15 R16 K25 ["Flags"]
      113 GETTABLEKS                       R14 R15 K26 ["getFFlagAvatarPreviewerCatalogButtonUpdatedUi"]
      115 CALL                             R13 1 1
      116 GETIMPORT                        R14 K5 [require]
      118 GETTABLEKS                       R17 R0 K13 ["Src"]
      120 GETTABLEKS                       R16 R17 K16 ["Resources"]
      122 GETTABLEKS                       R15 R16 K27 ["Theme"]
      124 CALL                             R14 1 1
      125 GETIMPORT                        R15 K5 [require]
      127 GETTABLEKS                       R17 R0 K13 ["Src"]
      129 GETTABLEKS                       R16 R17 K28 ["Types"]
      131 CALL                             R15 1 1
      132 GETTABLEKS                       R16 R2 K29 ["Button"]
      134 GETTABLEKS                       R17 R2 K30 ["IconButton"]
      136 GETTABLEKS                       R18 R2 K31 ["View"]
      138 GETTABLEKS                       R20 R2 K32 ["Enums"]
      140 GETTABLEKS                       R19 R20 K33 ["IconName"]
      142 GETTABLEKS                       R21 R2 K32 ["Enums"]
      144 GETTABLEKS                       R20 R21 K34 ["InputSize"]
      146 GETTABLEKS                       R22 R2 K32 ["Enums"]
      148 GETTABLEKS                       R21 R22 K35 ["ButtonVariant"]
      150 GETTABLEKS                       R23 R2 K32 ["Enums"]
      152 GETTABLEKS                       R22 R23 K36 ["IconVariant"]
      154 GETTABLEKS                       R23 R3 K37 ["UI"]
      156 GETTABLEKS                       R24 R23 K38 ["Pane"]
      158 GETTABLEKS                       R25 R23 K39 ["StyledDialog"]
      160 GETTABLEKS                       R26 R23 K40 ["TextLabel"]
      162 GETTABLEKS                       R28 R3 K41 ["ContextServices"]
      164 GETTABLEKS                       R27 R28 K42 ["Analytics"]
      166 GETTABLEKS                       R29 R3 K41 ["ContextServices"]
      168 GETTABLEKS                       R28 R29 K43 ["Localization"]
      170 GETTABLEKS                       R30 R3 K41 ["ContextServices"]
      172 GETTABLEKS                       R29 R30 K44 ["Stylizer"]
      174 GETTABLEKS                       R31 R3 K19 ["Util"]
      176 GETTABLEKS                       R30 R31 K45 ["LayoutOrderIterator"]
      178 DUPCLOSURE                       R31 K46 [PROTO_0]
      179 CAPTURE                          VAL R7
      180 DUPCLOSURE                       R32 K47 [PROTO_2]
      181 CAPTURE                          VAL R9
      182 CAPTURE                          VAL R27
      183 CAPTURE                          VAL R10
      184 CAPTURE                          VAL R4
      185 CAPTURE                          VAL R6
      186 CAPTURE                          VAL R8
      187 DUPCLOSURE                       R33 K48 [PROTO_12]
      188 CAPTURE                          VAL R28
      189 CAPTURE                          VAL R29
      190 CAPTURE                          VAL R13
      191 CAPTURE                          VAL R4
      192 CAPTURE                          VAL R6
      193 CAPTURE                          VAL R8
      194 CAPTURE                          VAL R32
      195 CAPTURE                          VAL R30
      196 CAPTURE                          VAL R1
      197 CAPTURE                          VAL R9
      198 CAPTURE                          VAL R12
      199 CAPTURE                          VAL R31
      200 CAPTURE                          VAL R11
      201 CAPTURE                          VAL R18
      202 CAPTURE                          VAL R16
      203 CAPTURE                          VAL R19
      204 CAPTURE                          VAL R20
      205 CAPTURE                          VAL R21
      206 CAPTURE                          VAL R5
      207 CAPTURE                          VAL R17
      208 CAPTURE                          VAL R22
      209 CAPTURE                          VAL R25
      210 CAPTURE                          VAL R24
      211 CAPTURE                          VAL R26
      212 RETURN                           R33 1
