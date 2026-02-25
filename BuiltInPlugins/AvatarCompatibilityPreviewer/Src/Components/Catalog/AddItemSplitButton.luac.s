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
        1 GETTABLEKS                       R3 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R3 K1 ["Y"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K1 ["AddItemButton"]
        6 NAMECALL                         R2 R2 K0 ["use"]
        8 CALL                             R2 2 1
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R3 R4 K2 ["useContext"]
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R4 R5 K3 ["Context"]
       15 CALL                             R3 1 1
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R4 R5 K4 ["useState"]
       19 LOADNIL                          R5
       20 CALL                             R4 1 2
       21 GETUPVAL                         R7 2
       22 GETTABLEKS                       R6 R7 K5 ["useCallback"]
       24 NEWCLOSURE                       R7 P0
       25 CAPTURE                          VAL R5
       26 NEWTABLE                         R8 0 0
       28 CALL                             R6 2 1
       29 GETUPVAL                         R7 4
       30 MOVE                             R8 R5
       31 CALL                             R7 1 1
       32 GETUPVAL                         R9 5
       33 GETTABLEKS                       R8 R9 K6 ["new"]
       35 CALL                             R8 0 1
       36 NEWCLOSURE                       R9 P1
       37 CAPTURE                          VAL R4
       38 JUMPIFNOTEQKNIL                  R4 ; [+3]
       40 LOADNIL                          R10
       41 JUMP                             ; [+85]
       42 JUMPIFEQKNIL                     R4 ; [+30]
       44 GETTABLEKS                       R12 R4 K7 ["type"]
       46 JUMPIFNOTEQKS                    R12 K8 ["noPalette"] ; [+26]
       48 GETTABLEKS                       R13 R4 K9 ["instances"]
       50 LENGTH                           R12 R13
       51 JUMPIFNOTEQKN                    R12 K10 [1] ; [+21]
       53 GETTABLEKS                       R12 R4 K11 ["extraErrors"]
       55 JUMPIFEQKNIL                     R12 ; [+17]
       57 GETIMPORT                        R12 K13 [next]
       59 GETTABLEKS                       R13 R4 K11 ["extraErrors"]
       61 CALL                             R12 1 2
       62 LOADB                            R11 0
       63 JUMPIFNOTEQKS                    R13 K14 ["OnlyOneShoe"] ; [+10]
       65 GETTABLEKS                       R15 R4 K9 ["instances"]
       67 GETTABLEN                        R14 R15 1
       68 JUMPIFEQ                         R14 R12 ; [+2]
       70 LOADB                            R11 0 +1
       71 LOADB                            R11 1
       72 JUMP                             ; [+1]
       73 LOADB                            R11 0
       74 JUMPIFNOT                        R11 ; [+6]
       75 LOADK                            R12 K15 ["AddItems"]
       76 LOADK                            R13 K16 ["WarningHeaderOneShoe"]
       77 NAMECALL                         R10 R1 K17 ["getText"]
       79 CALL                             R10 3 1
       80 JUMP                             ; [+46]
       81 GETTABLEKS                       R11 R4 K7 ["type"]
       83 JUMPIFNOTEQKS                    R11 K8 ["noPalette"] ; [+12]
       85 GETTABLEKS                       R12 R4 K9 ["instances"]
       87 LENGTH                           R11 R12
       88 JUMPIFNOTEQKN                    R11 K10 [1] ; [+7]
       90 LOADK                            R12 K15 ["AddItems"]
       91 LOADK                            R13 K18 ["FailedAddNoPaletteHeaderSingle"]
       92 NAMECALL                         R10 R1 K17 ["getText"]
       94 CALL                             R10 3 1
       95 JUMP                             ; [+31]
       96 GETTABLEKS                       R11 R4 K7 ["type"]
       98 JUMPIFNOTEQKS                    R11 K8 ["noPalette"] ; [+27]
      100 GETTABLEKS                       R12 R4 K9 ["instances"]
      102 LENGTH                           R11 R12
      103 LOADN                            R12 1
      104 JUMPIFNOTLT                      R12 R11 ; [+21]
      106 LOADK                            R12 K15 ["AddItems"]
      107 LOADK                            R13 K19 ["FailedAddNoPaletteHeaderMultiple"]
      108 DUPTABLE                         R14 K21 [{"items"}]
      109 GETIMPORT                        R15 K24 [table.concat]
      111 GETUPVAL                         R17 6
      112 GETTABLEKS                       R16 R17 K25 ["collectArray"]
      114 GETTABLEKS                       R17 R4 K9 ["instances"]
      116 DUPCLOSURE                       R18 K26 [PROTO_5]
      117 CALL                             R16 2 1
      118 LOADK                            R17 K27 [", "]
      119 CALL                             R15 2 1
      120 SETTABLEKS                       R15 R14 K20 ["items"]
      122 NAMECALL                         R10 R1 K17 ["getText"]
      124 CALL                             R10 4 1
      125 JUMP                             ; [+1]
      126 LOADNIL                          R10
      127 JUMPIFNOT                        R4 ; [+30]
      128 GETTABLEKS                       R12 R4 K7 ["type"]
      130 JUMPIFNOTEQKS                    R12 K8 ["noPalette"] ; [+27]
      132 GETTABLEKS                       R12 R4 K11 ["extraErrors"]
      134 JUMPIFNOT                        R12 ; [+23]
      135 GETIMPORT                        R12 K13 [next]
      137 GETTABLEKS                       R13 R4 K11 ["extraErrors"]
      139 CALL                             R12 1 1
      140 JUMPIFEQKNIL                     R12 ; [+17]
      142 GETIMPORT                        R14 K24 [table.concat]
      144 GETUPVAL                         R16 6
      145 GETTABLEKS                       R15 R16 K25 ["collectArray"]
      147 GETTABLEKS                       R16 R4 K11 ["extraErrors"]
      149 NEWCLOSURE                       R17 P3
      150 CAPTURE                          VAL R1
      151 CALL                             R15 2 1
      152 LOADK                            R16 K28 [" "]
      153 CALL                             R14 2 1
      154 MOVE                             R12 R14
      155 LOADK                            R13 K28 [" "]
      156 CONCAT                           R11 R12 R13
      157 JUMP                             ; [+1]
      158 LOADK                            R11 K29 [""]
      159 GETUPVAL                         R13 2
      160 GETTABLEKS                       R12 R13 K4 ["useState"]
      162 LOADN                            R13 100
      163 CALL                             R12 1 2
      164 GETUPVAL                         R14 7
      165 NAMECALL                         R14 R14 K0 ["use"]
      167 CALL                             R14 1 1
      168 NAMECALL                         R14 R14 K30 ["get"]
      170 CALL                             R14 1 1
      171 GETUPVAL                         R15 8
      172 LOADB                            R16 0
      173 CALL                             R15 1 1
      174 GETUPVAL                         R17 2
      175 GETTABLEKS                       R16 R17 K5 ["useCallback"]
      177 NEWCLOSURE                       R17 P4
      178 CAPTURE                          VAL R3
      179 NEWTABLE                         R18 0 1
      181 MOVE                             R19 R3
      182 SETLIST                          R18 R19 1 [1]
      184 CALL                             R16 2 1
      185 GETUPVAL                         R18 2
      186 GETTABLEKS                       R17 R18 K4 ["useState"]
      188 NEWCLOSURE                       R18 P5
      189 CAPTURE                          UPVAL U9
      190 CAPTURE                          VAL R14
      191 CALL                             R17 1 2
      192 GETUPVAL                         R19 10
      193 GETTABLEKS                       R20 R14 K31 ["SelectionChanged"]
      195 NEWCLOSURE                       R21 P6
      196 CAPTURE                          VAL R18
      197 CAPTURE                          UPVAL U9
      198 CAPTURE                          VAL R14
      199 NEWTABLE                         R22 0 0
      201 CALL                             R19 3 0
      202 GETUPVAL                         R20 2
      203 GETTABLEKS                       R19 R20 K32 ["createElement"]
      205 GETUPVAL                         R20 11
      206 DUPTABLE                         R21 K35 [{"tag", "LayoutOrder"}]
      207 LOADK                            R22 K36 ["row size-full-1200 padding-y-xsmall padding-left-xsmall padding-right-small align-x-center align-y-center bg-surface-200 gap-none"]
      208 SETTABLEKS                       R22 R21 K33 ["tag"]
      210 GETTABLEKS                       R22 R0 K34 ["LayoutOrder"]
      212 SETTABLEKS                       R22 R21 K34 ["LayoutOrder"]
      214 DUPTABLE                         R22 K39 [{"SplitButtonContainer", "FailureDialog"}]
      215 GETUPVAL                         R24 2
      216 GETTABLEKS                       R23 R24 K32 ["createElement"]
      218 GETUPVAL                         R24 11
      219 DUPTABLE                         R25 K40 [{"tag"}]
      220 LOADK                            R26 K41 ["size-full-1000 row align-x-center align-y-center bg-action-standard gap-none radius-small"]
      221 SETTABLEKS                       R26 R25 K33 ["tag"]
      223 DUPTABLE                         R26 K44 [{"AddButton", "AddItemMenu"}]
      224 GETUPVAL                         R28 2
      225 GETTABLEKS                       R27 R28 K32 ["createElement"]
      227 GETUPVAL                         R28 12
      228 DUPTABLE                         R29 K50 [{"icon", "size", "variant", "onActivated", "width", "LayoutOrder"}]
      229 GETUPVAL                         R31 13
      230 GETTABLEKS                       R30 R31 K51 ["PlusLarge"]
      232 SETTABLEKS                       R30 R29 K45 ["icon"]
      234 GETUPVAL                         R31 14
      235 GETTABLEKS                       R30 R31 K52 ["Medium"]
      237 SETTABLEKS                       R30 R29 K46 ["size"]
      239 GETUPVAL                         R31 15
      240 GETTABLEKS                       R30 R31 K53 ["Utility"]
      242 SETTABLEKS                       R30 R29 K47 ["variant"]
      244 SETTABLEKS                       R7 R29 K48 ["onActivated"]
      246 GETIMPORT                        R30 K55 [UDim.new]
      248 LOADK                            R31 K56 [0.57]
      249 LOADN                            R32 0
      250 CALL                             R30 2 1
      251 SETTABLEKS                       R30 R29 K49 ["width"]
      253 LOADN                            R30 1
      254 SETTABLEKS                       R30 R29 K34 ["LayoutOrder"]
      256 CALL                             R27 2 1
      257 SETTABLEKS                       R27 R26 K42 ["AddButton"]
      259 GETUPVAL                         R28 2
      260 GETTABLEKS                       R27 R28 K32 ["createElement"]
      262 GETUPVAL                         R28 16
      263 DUPTABLE                         R29 K63 [{"isOpen", "onClose", "onAddSelectedInstances", "onAddFromAssetId", "validInstancesSelected", "LayoutOrder", "anchor"}]
      264 GETTABLEKS                       R30 R15 K64 ["enabled"]
      266 SETTABLEKS                       R30 R29 K57 ["isOpen"]
      268 GETTABLEKS                       R30 R15 K65 ["disable"]
      270 SETTABLEKS                       R30 R29 K58 ["onClose"]
      272 SETTABLEKS                       R7 R29 K59 ["onAddSelectedInstances"]
      274 SETTABLEKS                       R16 R29 K60 ["onAddFromAssetId"]
      276 SETTABLEKS                       R17 R29 K61 ["validInstancesSelected"]
      278 LOADN                            R30 2
      279 SETTABLEKS                       R30 R29 K34 ["LayoutOrder"]
      281 GETUPVAL                         R31 2
      282 GETTABLEKS                       R30 R31 K32 ["createElement"]
      284 GETUPVAL                         R31 17
      285 DUPTABLE                         R32 K66 [{"icon", "LayoutOrder", "size", "onActivated", "width"}]
      286 DUPTABLE                         R33 K68 [{"name", "variant"}]
      287 GETUPVAL                         R35 13
      288 GETTABLEKS                       R34 R35 K69 ["CaretSmallDown"]
      290 SETTABLEKS                       R34 R33 K67 ["name"]
      292 GETUPVAL                         R35 18
      293 GETTABLEKS                       R34 R35 K70 ["Filled"]
      295 SETTABLEKS                       R34 R33 K47 ["variant"]
      297 SETTABLEKS                       R33 R32 K45 ["icon"]
      299 LOADN                            R33 3
      300 SETTABLEKS                       R33 R32 K34 ["LayoutOrder"]
      302 GETUPVAL                         R34 14
      303 GETTABLEKS                       R33 R34 K52 ["Medium"]
      305 SETTABLEKS                       R33 R32 K46 ["size"]
      307 GETTABLEKS                       R33 R15 K71 ["toggle"]
      309 SETTABLEKS                       R33 R32 K48 ["onActivated"]
      311 GETIMPORT                        R33 K55 [UDim.new]
      313 LOADK                            R34 K72 [0.43]
      314 LOADN                            R35 0
      315 CALL                             R33 2 1
      316 SETTABLEKS                       R33 R32 K49 ["width"]
      318 CALL                             R30 2 1
      319 SETTABLEKS                       R30 R29 K62 ["anchor"]
      321 CALL                             R27 2 1
      322 SETTABLEKS                       R27 R26 K43 ["AddItemMenu"]
      324 CALL                             R23 3 1
      325 SETTABLEKS                       R23 R22 K37 ["SplitButtonContainer"]
      327 JUMPIFEQKNIL                     R4 ; [+245]
      329 GETUPVAL                         R24 2
      330 GETTABLEKS                       R23 R24 K32 ["createElement"]
      332 GETUPVAL                         R24 19
      333 DUPTABLE                         R25 K81 [{"Title", "Enabled", "MinContentSize", "Modal", "OnClose", "OnButtonPressed", "Buttons", "ButtonHorizontalAlignment"}]
      334 JUMPIFEQKNIL                     R4 ; [+30]
      336 GETTABLEKS                       R28 R4 K7 ["type"]
      338 JUMPIFNOTEQKS                    R28 K8 ["noPalette"] ; [+26]
      340 GETTABLEKS                       R29 R4 K9 ["instances"]
      342 LENGTH                           R28 R29
      343 JUMPIFNOTEQKN                    R28 K10 [1] ; [+21]
      345 GETTABLEKS                       R28 R4 K11 ["extraErrors"]
      347 JUMPIFEQKNIL                     R28 ; [+17]
      349 GETIMPORT                        R28 K13 [next]
      351 GETTABLEKS                       R29 R4 K11 ["extraErrors"]
      353 CALL                             R28 1 2
      354 LOADB                            R27 0
      355 JUMPIFNOTEQKS                    R29 K14 ["OnlyOneShoe"] ; [+10]
      357 GETTABLEKS                       R31 R4 K9 ["instances"]
      359 GETTABLEN                        R30 R31 1
      360 JUMPIFEQ                         R30 R28 ; [+2]
      362 LOADB                            R27 0 +1
      363 LOADB                            R27 1
      364 JUMP                             ; [+1]
      365 LOADB                            R27 0
      366 JUMPIFNOT                        R27 ; [+6]
      367 LOADK                            R28 K15 ["AddItems"]
      368 LOADK                            R29 K82 ["WarningTitle"]
      369 NAMECALL                         R26 R1 K17 ["getText"]
      371 CALL                             R26 3 1
      372 JUMP                             ; [+5]
      373 LOADK                            R28 K15 ["AddItems"]
      374 LOADK                            R29 K83 ["FailedTitle"]
      375 NAMECALL                         R26 R1 K17 ["getText"]
      377 CALL                             R26 3 1
      378 SETTABLEKS                       R26 R25 K73 ["Title"]
      380 LOADB                            R26 1
      381 SETTABLEKS                       R26 R25 K74 ["Enabled"]
      383 GETIMPORT                        R26 K85 [Vector2.new]
      385 LOADN                            R27 94
      386 MOVE                             R28 R12
      387 CALL                             R26 2 1
      388 SETTABLEKS                       R26 R25 K75 ["MinContentSize"]
      390 LOADB                            R26 1
      391 SETTABLEKS                       R26 R25 K76 ["Modal"]
      393 SETTABLEKS                       R6 R25 K77 ["OnClose"]
      395 SETTABLEKS                       R6 R25 K78 ["OnButtonPressed"]
      397 NEWTABLE                         R26 0 1
      399 DUPTABLE                         R27 K88 [{"Key", "Text"}]
      400 LOADK                            R28 K89 ["OK"]
      401 SETTABLEKS                       R28 R27 K86 ["Key"]
      403 LOADK                            R30 K15 ["AddItems"]
      404 LOADK                            R31 K89 ["OK"]
      405 NAMECALL                         R28 R1 K17 ["getText"]
      407 CALL                             R28 3 1
      408 SETTABLEKS                       R28 R27 K87 ["Text"]
      410 SETLIST                          R26 R27 1 [1]
      412 SETTABLEKS                       R26 R25 K79 ["Buttons"]
      414 GETIMPORT                        R26 K93 [Enum.HorizontalAlignment.Center]
      416 SETTABLEKS                       R26 R25 K80 ["ButtonHorizontalAlignment"]
      418 DUPTABLE                         R26 K95 [{"Contents"}]
      419 GETUPVAL                         R28 2
      420 GETTABLEKS                       R27 R28 K32 ["createElement"]
      422 GETUPVAL                         R28 20
      423 NEWTABLE                         R29 8 0
      425 GETIMPORT                        R30 K98 [Enum.AutomaticSize.Y]
      427 SETTABLEKS                       R30 R29 K96 ["AutomaticSize"]
      429 GETIMPORT                        R30 K101 [Enum.FillDirection.Vertical]
      431 SETTABLEKS                       R30 R29 K102 ["Layout"]
      433 GETIMPORT                        R30 K93 [Enum.HorizontalAlignment.Center]
      435 SETTABLEKS                       R30 R29 K91 ["HorizontalAlignment"]
      437 GETIMPORT                        R30 K105 [Enum.VerticalAlignment.Top]
      439 SETTABLEKS                       R30 R29 K103 ["VerticalAlignment"]
      441 GETTABLEKS                       R30 R2 K106 ["FailureDialogSpacing"]
      443 SETTABLEKS                       R30 R29 K107 ["Spacing"]
      445 GETUPVAL                         R32 2
      446 GETTABLEKS                       R31 R32 K108 ["Change"]
      448 GETTABLEKS                       R30 R31 K109 ["AbsoluteSize"]
      450 NEWCLOSURE                       R31 P7
      451 CAPTURE                          VAL R13
      452 SETTABLE                         R31 R29 R30
      453 DUPTABLE                         R30 K111 [{"Title", "Hint"}]
      454 MOVE                             R31 R10
      455 JUMPIFNOT                        R31 ; [+35]
      456 GETUPVAL                         R32 2
      457 GETTABLEKS                       R31 R32 K32 ["createElement"]
      459 GETUPVAL                         R32 21
      460 DUPTABLE                         R33 K116 [{"AutomaticSize", "Font", "LayoutOrder", "Size", "Text", "TextWrapped", "TextXAlignment"}]
      461 GETIMPORT                        R34 K98 [Enum.AutomaticSize.Y]
      463 SETTABLEKS                       R34 R33 K96 ["AutomaticSize"]
      465 GETIMPORT                        R34 K118 [Enum.Font.SourceSansBold]
      467 SETTABLEKS                       R34 R33 K112 ["Font"]
      469 NAMECALL                         R34 R8 K119 ["getNextOrder"]
      471 CALL                             R34 1 1
      472 SETTABLEKS                       R34 R33 K34 ["LayoutOrder"]
      474 GETIMPORT                        R34 K122 [UDim2.fromScale]
      476 LOADN                            R35 1
      477 LOADN                            R36 0
      478 CALL                             R34 2 1
      479 SETTABLEKS                       R34 R33 K113 ["Size"]
      481 SETTABLEKS                       R10 R33 K87 ["Text"]
      483 LOADB                            R34 1
      484 SETTABLEKS                       R34 R33 K114 ["TextWrapped"]
      486 GETIMPORT                        R34 K124 [Enum.TextXAlignment.Left]
      488 SETTABLEKS                       R34 R33 K115 ["TextXAlignment"]
      490 CALL                             R31 2 1
      491 SETTABLEKS                       R31 R30 K73 ["Title"]
      493 GETUPVAL                         R32 2
      494 GETTABLEKS                       R31 R32 K32 ["createElement"]
      496 GETUPVAL                         R32 21
      497 DUPTABLE                         R33 K125 [{"AutomaticSize", "LayoutOrder", "Size", "Text", "TextWrapped", "TextXAlignment"}]
      498 GETIMPORT                        R34 K98 [Enum.AutomaticSize.Y]
      500 SETTABLEKS                       R34 R33 K96 ["AutomaticSize"]
      502 NAMECALL                         R34 R8 K119 ["getNextOrder"]
      504 CALL                             R34 1 1
      505 SETTABLEKS                       R34 R33 K34 ["LayoutOrder"]
      507 GETIMPORT                        R34 K122 [UDim2.fromScale]
      509 LOADN                            R35 1
      510 LOADN                            R36 0
      511 CALL                             R34 2 1
      512 SETTABLEKS                       R34 R33 K113 ["Size"]
      514 JUMPIFEQKNIL                     R4 ; [+30]
      516 GETTABLEKS                       R36 R4 K7 ["type"]
      518 JUMPIFNOTEQKS                    R36 K8 ["noPalette"] ; [+26]
      520 GETTABLEKS                       R37 R4 K9 ["instances"]
      522 LENGTH                           R36 R37
      523 JUMPIFNOTEQKN                    R36 K10 [1] ; [+21]
      525 GETTABLEKS                       R36 R4 K11 ["extraErrors"]
      527 JUMPIFEQKNIL                     R36 ; [+17]
      529 GETIMPORT                        R36 K13 [next]
      531 GETTABLEKS                       R37 R4 K11 ["extraErrors"]
      533 CALL                             R36 1 2
      534 LOADB                            R35 0
      535 JUMPIFNOTEQKS                    R37 K14 ["OnlyOneShoe"] ; [+10]
      537 GETTABLEKS                       R39 R4 K9 ["instances"]
      539 GETTABLEN                        R38 R39 1
      540 JUMPIFEQ                         R38 R36 ; [+2]
      542 LOADB                            R35 0 +1
      543 LOADB                            R35 1
      544 JUMP                             ; [+1]
      545 LOADB                            R35 0
      546 JUMPIFNOT                        R35 ; [+2]
      547 MOVE                             R34 R11
      548 JUMP                             ; [+7]
      549 MOVE                             R35 R11
      550 LOADK                            R38 K15 ["AddItems"]
      551 LOADK                            R39 K126 ["FailedAddHint"]
      552 NAMECALL                         R36 R1 K17 ["getText"]
      554 CALL                             R36 3 1
      555 CONCAT                           R34 R35 R36
      556 SETTABLEKS                       R34 R33 K87 ["Text"]
      558 LOADB                            R34 1
      559 SETTABLEKS                       R34 R33 K114 ["TextWrapped"]
      561 GETIMPORT                        R34 K124 [Enum.TextXAlignment.Left]
      563 SETTABLEKS                       R34 R33 K115 ["TextXAlignment"]
      565 CALL                             R31 2 1
      566 SETTABLEKS                       R31 R30 K110 ["Hint"]
      568 CALL                             R27 3 1
      569 SETTABLEKS                       R27 R26 K94 ["Contents"]
      571 CALL                             R23 3 1
      572 JUMP                             ; [+1]
      573 LOADNIL                          R23
      574 SETTABLEKS                       R23 R22 K38 ["FailureDialog"]
      576 CALL                             R19 3 -1
      577 RETURN                           R19 -1

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
      111 GETTABLEKS                       R15 R16 K16 ["Resources"]
      113 GETTABLEKS                       R14 R15 K25 ["Theme"]
      115 CALL                             R13 1 1
      116 GETIMPORT                        R14 K5 [require]
      118 GETTABLEKS                       R16 R0 K13 ["Src"]
      120 GETTABLEKS                       R15 R16 K26 ["Types"]
      122 CALL                             R14 1 1
      123 GETTABLEKS                       R15 R2 K27 ["Button"]
      125 GETTABLEKS                       R16 R2 K28 ["IconButton"]
      127 GETTABLEKS                       R17 R2 K29 ["View"]
      129 GETTABLEKS                       R19 R2 K30 ["Enums"]
      131 GETTABLEKS                       R18 R19 K31 ["IconName"]
      133 GETTABLEKS                       R20 R2 K30 ["Enums"]
      135 GETTABLEKS                       R19 R20 K32 ["InputSize"]
      137 GETTABLEKS                       R21 R2 K30 ["Enums"]
      139 GETTABLEKS                       R20 R21 K33 ["ButtonVariant"]
      141 GETTABLEKS                       R22 R2 K30 ["Enums"]
      143 GETTABLEKS                       R21 R22 K34 ["IconVariant"]
      145 GETTABLEKS                       R22 R3 K35 ["UI"]
      147 GETTABLEKS                       R23 R22 K36 ["Pane"]
      149 GETTABLEKS                       R24 R22 K37 ["StyledDialog"]
      151 GETTABLEKS                       R25 R22 K38 ["TextLabel"]
      153 GETTABLEKS                       R27 R3 K39 ["ContextServices"]
      155 GETTABLEKS                       R26 R27 K40 ["Analytics"]
      157 GETTABLEKS                       R28 R3 K39 ["ContextServices"]
      159 GETTABLEKS                       R27 R28 K41 ["Localization"]
      161 GETTABLEKS                       R29 R3 K39 ["ContextServices"]
      163 GETTABLEKS                       R28 R29 K42 ["Stylizer"]
      165 GETTABLEKS                       R30 R3 K19 ["Util"]
      167 GETTABLEKS                       R29 R30 K43 ["LayoutOrderIterator"]
      169 DUPCLOSURE                       R30 K44 [PROTO_0]
      170 CAPTURE                          VAL R7
      171 DUPCLOSURE                       R31 K45 [PROTO_2]
      172 CAPTURE                          VAL R9
      173 CAPTURE                          VAL R26
      174 CAPTURE                          VAL R10
      175 CAPTURE                          VAL R4
      176 CAPTURE                          VAL R6
      177 CAPTURE                          VAL R8
      178 DUPCLOSURE                       R32 K46 [PROTO_11]
      179 CAPTURE                          VAL R27
      180 CAPTURE                          VAL R28
      181 CAPTURE                          VAL R4
      182 CAPTURE                          VAL R8
      183 CAPTURE                          VAL R31
      184 CAPTURE                          VAL R29
      185 CAPTURE                          VAL R1
      186 CAPTURE                          VAL R9
      187 CAPTURE                          VAL R12
      188 CAPTURE                          VAL R30
      189 CAPTURE                          VAL R11
      190 CAPTURE                          VAL R17
      191 CAPTURE                          VAL R15
      192 CAPTURE                          VAL R18
      193 CAPTURE                          VAL R19
      194 CAPTURE                          VAL R20
      195 CAPTURE                          VAL R5
      196 CAPTURE                          VAL R16
      197 CAPTURE                          VAL R21
      198 CAPTURE                          VAL R24
      199 CAPTURE                          VAL R23
      200 CAPTURE                          VAL R25
      201 RETURN                           R32 1
