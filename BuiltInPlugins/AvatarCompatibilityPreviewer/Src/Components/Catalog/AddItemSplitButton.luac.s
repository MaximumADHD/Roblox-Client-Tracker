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
        0 LOADNIL                          R1
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETUPVAL                         R7 0
        6 GETTABLEKS                       R7 R7 K0 ["addNewItemAndEquip"]
        8 MOVE                             R8 R6
        9 GETTABLEKS                       R9 R6 K1 ["palette"]
       11 CALL                             R7 2 0
       12 GETTABLEKS                       R7 R6 K1 ["palette"]
       14 GETTABLEKS                       R1 R7 K2 ["Key"]
       16 FORGLOOP                         R2 2 ; [-12]
       18 JUMPIFNOT                        R1 ; [+5]
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K3 ["openPalette"]
       22 MOVE                             R3 R1
       23 CALL                             R2 1 0
       24 GETUPVAL                         R2 2
       25 LOADK                            R4 K4 ["marketplaceItemsAddedToPlugin"]
       26 NAMECALL                         R2 R2 K5 ["report"]
       28 CALL                             R2 2 0
       29 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
        0 GETTABLEKS                       R2 R1 K0 ["Name"]
        2 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["AddItems"]
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K1 ["getText"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["Get"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 1
        6 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 NAMECALL                         R2 R2 K0 ["Get"]
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setFoundationMenuOpen"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["enabled"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R2 K1 ["Y"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_13:
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
       44 GETUPVAL                         R7 2
       45 CALL                             R7 0 1
       46 JUMPIFNOT                        R7 ; [+6]
       47 GETUPVAL                         R6 3
       48 GETTABLEKS                       R6 R6 K2 ["useContext"]
       50 GETUPVAL                         R7 8
       51 CALL                             R6 1 1
       52 JUMP                             ; [+1]
       53 LOADNIL                          R6
       54 GETUPVAL                         R7 9
       55 NAMECALL                         R7 R7 K0 ["use"]
       57 CALL                             R7 1 1
       58 GETUPVAL                         R8 3
       59 GETTABLEKS                       R8 R8 K4 ["useState"]
       61 LOADNIL                          R9
       62 CALL                             R8 1 2
       63 GETUPVAL                         R10 3
       64 GETTABLEKS                       R10 R10 K5 ["useCallback"]
       66 NEWCLOSURE                       R11 P0
       67 CAPTURE                          VAL R9
       68 NEWTABLE                         R12 0 0
       70 CALL                             R10 2 1
       71 GETUPVAL                         R12 2
       72 CALL                             R12 0 1
       73 JUMPIFNOT                        R12 ; [+3]
       74 GETTABLEKS                       R11 R4 K6 ["enable"]
       76 JUMP                             ; [+11]
       77 GETUPVAL                         R11 3
       78 GETTABLEKS                       R11 R11 K5 ["useCallback"]
       80 NEWCLOSURE                       R12 P1
       81 CAPTURE                          VAL R3
       82 NEWTABLE                         R13 0 1
       84 MOVE                             R14 R3
       85 SETLIST                          R13 R14 1 [1]
       87 CALL                             R11 2 1
       88 GETUPVAL                         R13 2
       89 CALL                             R13 0 1
       90 JUMPIFNOT                        R13 ; [+16]
       91 GETUPVAL                         R12 3
       92 GETTABLEKS                       R12 R12 K5 ["useCallback"]
       94 NEWCLOSURE                       R13 P2
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R7
       98 NEWTABLE                         R14 0 3
      100 MOVE                             R15 R6
      101 MOVE                             R16 R5
      102 MOVE                             R17 R7
      103 SETLIST                          R14 R15 3 [1]
      105 CALL                             R12 2 1
      106 JUMP                             ; [+1]
      107 LOADNIL                          R12
      108 GETUPVAL                         R13 10
      109 MOVE                             R14 R9
      110 MOVE                             R15 R11
      111 CALL                             R13 2 1
      112 GETUPVAL                         R14 11
      113 GETTABLEKS                       R14 R14 K7 ["new"]
      115 CALL                             R14 0 1
      116 NEWCLOSURE                       R15 P3
      117 CAPTURE                          VAL R8
      118 JUMPIFNOTEQKNIL                  R8 ; [+3]
      120 LOADNIL                          R16
      121 JUMP                             ; [+85]
      122 JUMPIFEQKNIL                     R8 ; [+30]
      124 GETTABLEKS                       R18 R8 K8 ["type"]
      126 JUMPIFNOTEQKS                    R18 K9 ["noPalette"] ; [+26]
      128 GETTABLEKS                       R19 R8 K10 ["instances"]
      130 LENGTH                           R18 R19
      131 JUMPIFNOTEQKN                    R18 K11 [1] ; [+21]
      133 GETTABLEKS                       R18 R8 K12 ["extraErrors"]
      135 JUMPIFEQKNIL                     R18 ; [+17]
      137 GETIMPORT                        R18 K14 [next]
      139 GETTABLEKS                       R19 R8 K12 ["extraErrors"]
      141 CALL                             R18 1 2
      142 LOADB                            R17 0
      143 JUMPIFNOTEQKS                    R19 K15 ["OnlyOneShoe"] ; [+10]
      145 GETTABLEKS                       R21 R8 K10 ["instances"]
      147 GETTABLEN                        R20 R21 1
      148 JUMPIFEQ                         R20 R18 ; [+2]
      150 LOADB                            R17 0 +1
      151 LOADB                            R17 1
      152 JUMP                             ; [+1]
      153 LOADB                            R17 0
      154 JUMPIFNOT                        R17 ; [+6]
      155 LOADK                            R18 K16 ["AddItems"]
      156 LOADK                            R19 K17 ["WarningHeaderOneShoe"]
      157 NAMECALL                         R16 R1 K18 ["getText"]
      159 CALL                             R16 3 1
      160 JUMP                             ; [+46]
      161 GETTABLEKS                       R17 R8 K8 ["type"]
      163 JUMPIFNOTEQKS                    R17 K9 ["noPalette"] ; [+12]
      165 GETTABLEKS                       R18 R8 K10 ["instances"]
      167 LENGTH                           R17 R18
      168 JUMPIFNOTEQKN                    R17 K11 [1] ; [+7]
      170 LOADK                            R18 K16 ["AddItems"]
      171 LOADK                            R19 K19 ["FailedAddNoPaletteHeaderSingle"]
      172 NAMECALL                         R16 R1 K18 ["getText"]
      174 CALL                             R16 3 1
      175 JUMP                             ; [+31]
      176 GETTABLEKS                       R17 R8 K8 ["type"]
      178 JUMPIFNOTEQKS                    R17 K9 ["noPalette"] ; [+27]
      180 GETTABLEKS                       R18 R8 K10 ["instances"]
      182 LENGTH                           R17 R18
      183 LOADN                            R18 1
      184 JUMPIFNOTLT                      R18 R17 ; [+21]
      186 LOADK                            R18 K16 ["AddItems"]
      187 LOADK                            R19 K20 ["FailedAddNoPaletteHeaderMultiple"]
      188 DUPTABLE                         R20 K22 [{"items"}]
      189 GETIMPORT                        R21 K25 [table.concat]
      191 GETUPVAL                         R22 12
      192 GETTABLEKS                       R22 R22 K26 ["collectArray"]
      194 GETTABLEKS                       R23 R8 K10 ["instances"]
      196 DUPCLOSURE                       R24 K27 [PROTO_7]
      197 CALL                             R22 2 1
      198 LOADK                            R23 K28 [", "]
      199 CALL                             R21 2 1
      200 SETTABLEKS                       R21 R20 K21 ["items"]
      202 NAMECALL                         R16 R1 K18 ["getText"]
      204 CALL                             R16 4 1
      205 JUMP                             ; [+1]
      206 LOADNIL                          R16
      207 JUMPIFNOT                        R8 ; [+30]
      208 GETTABLEKS                       R18 R8 K8 ["type"]
      210 JUMPIFNOTEQKS                    R18 K9 ["noPalette"] ; [+27]
      212 GETTABLEKS                       R18 R8 K12 ["extraErrors"]
      214 JUMPIFNOT                        R18 ; [+23]
      215 GETIMPORT                        R18 K14 [next]
      217 GETTABLEKS                       R19 R8 K12 ["extraErrors"]
      219 CALL                             R18 1 1
      220 JUMPIFEQKNIL                     R18 ; [+17]
      222 GETIMPORT                        R20 K25 [table.concat]
      224 GETUPVAL                         R21 12
      225 GETTABLEKS                       R21 R21 K26 ["collectArray"]
      227 GETTABLEKS                       R22 R8 K12 ["extraErrors"]
      229 NEWCLOSURE                       R23 P5
      230 CAPTURE                          VAL R1
      231 CALL                             R21 2 1
      232 LOADK                            R22 K29 [" "]
      233 CALL                             R20 2 1
      234 MOVE                             R18 R20
      235 LOADK                            R19 K29 [" "]
      236 CONCAT                           R17 R18 R19
      237 JUMP                             ; [+1]
      238 LOADK                            R17 K30 [""]
      239 GETUPVAL                         R18 3
      240 GETTABLEKS                       R18 R18 K4 ["useState"]
      242 LOADN                            R19 100
      243 CALL                             R18 1 2
      244 GETUPVAL                         R20 13
      245 NAMECALL                         R20 R20 K0 ["use"]
      247 CALL                             R20 1 1
      248 NAMECALL                         R20 R20 K31 ["get"]
      250 CALL                             R20 1 1
      251 GETUPVAL                         R21 5
      252 LOADB                            R22 0
      253 CALL                             R21 1 1
      254 GETUPVAL                         R22 3
      255 GETTABLEKS                       R22 R22 K4 ["useState"]
      257 NEWCLOSURE                       R23 P6
      258 CAPTURE                          UPVAL U14
      259 CAPTURE                          VAL R20
      260 CALL                             R22 1 2
      261 GETUPVAL                         R24 15
      262 GETTABLEKS                       R25 R20 K32 ["SelectionChanged"]
      264 NEWCLOSURE                       R26 P7
      265 CAPTURE                          VAL R23
      266 CAPTURE                          UPVAL U14
      267 CAPTURE                          VAL R20
      268 NEWTABLE                         R27 0 0
      270 CALL                             R24 3 0
      271 GETUPVAL                         R24 6
      272 CALL                             R24 0 1
      273 JUMPIFNOT                        R24 ; [+13]
      274 GETUPVAL                         R24 3
      275 GETTABLEKS                       R24 R24 K33 ["useEffect"]
      277 NEWCLOSURE                       R25 P8
      278 CAPTURE                          VAL R5
      279 CAPTURE                          VAL R21
      280 NEWTABLE                         R26 0 1
      282 GETTABLEKS                       R27 R21 K34 ["enabled"]
      284 SETLIST                          R26 R27 1 [1]
      286 CALL                             R24 2 0
      287 GETUPVAL                         R24 3
      288 GETTABLEKS                       R24 R24 K35 ["createElement"]
      290 GETUPVAL                         R25 16
      291 DUPTABLE                         R26 K38 [{"tag", "LayoutOrder"}]
      292 LOADK                            R27 K39 ["row size-full-1200 padding-y-xsmall padding-left-xsmall padding-right-small align-x-center align-y-center bg-surface-200 gap-none"]
      293 SETTABLEKS                       R27 R26 K36 ["tag"]
      295 GETTABLEKS                       R27 R0 K37 ["LayoutOrder"]
      297 SETTABLEKS                       R27 R26 K37 ["LayoutOrder"]
      299 DUPTABLE                         R27 K43 [{"SplitButtonContainer", "FailureDialog", "MarketplaceImportDialog"}]
      300 GETUPVAL                         R28 3
      301 GETTABLEKS                       R28 R28 K35 ["createElement"]
      303 GETUPVAL                         R29 16
      304 DUPTABLE                         R30 K44 [{"tag"}]
      305 LOADK                            R31 K45 ["size-full-1000 row align-x-center align-y-center gap-none radius-small"]
      306 SETTABLEKS                       R31 R30 K36 ["tag"]
      308 DUPTABLE                         R31 K48 [{"AddButton", "AddItemMenu"}]
      309 GETUPVAL                         R32 3
      310 GETTABLEKS                       R32 R32 K35 ["createElement"]
      312 GETUPVAL                         R33 17
      313 DUPTABLE                         R34 K54 [{"icon", "size", "variant", "onActivated", "width", "LayoutOrder"}]
      314 GETUPVAL                         R35 18
      315 GETTABLEKS                       R35 R35 K55 ["PlusLarge"]
      317 SETTABLEKS                       R35 R34 K49 ["icon"]
      319 GETUPVAL                         R35 19
      320 GETTABLEKS                       R35 R35 K56 ["Medium"]
      322 SETTABLEKS                       R35 R34 K50 ["size"]
      324 GETUPVAL                         R35 20
      325 GETTABLEKS                       R35 R35 K57 ["Utility"]
      327 SETTABLEKS                       R35 R34 K51 ["variant"]
      329 SETTABLEKS                       R13 R34 K52 ["onActivated"]
      331 GETIMPORT                        R35 K59 [UDim.new]
      333 LOADN                            R36 0
      334 LOADN                            R37 48
      335 CALL                             R35 2 1
      336 SETTABLEKS                       R35 R34 K53 ["width"]
      338 LOADN                            R35 1
      339 SETTABLEKS                       R35 R34 K37 ["LayoutOrder"]
      341 CALL                             R32 2 1
      342 SETTABLEKS                       R32 R31 K46 ["AddButton"]
      344 GETUPVAL                         R32 3
      345 GETTABLEKS                       R32 R32 K35 ["createElement"]
      347 GETUPVAL                         R33 21
      348 DUPTABLE                         R34 K67 [{"isOpen", "onClose", "onAddSelectedInstances", "onAddFromAssetId", "validInstancesSelected", "LayoutOrder", "anchorSize", "anchor"}]
      349 GETTABLEKS                       R35 R21 K34 ["enabled"]
      351 SETTABLEKS                       R35 R34 K60 ["isOpen"]
      353 GETTABLEKS                       R35 R21 K68 ["disable"]
      355 SETTABLEKS                       R35 R34 K61 ["onClose"]
      357 SETTABLEKS                       R13 R34 K62 ["onAddSelectedInstances"]
      359 SETTABLEKS                       R11 R34 K63 ["onAddFromAssetId"]
      361 SETTABLEKS                       R22 R34 K64 ["validInstancesSelected"]
      363 LOADN                            R35 2
      364 SETTABLEKS                       R35 R34 K37 ["LayoutOrder"]
      366 GETIMPORT                        R35 K71 [UDim2.fromScale]
      368 LOADK                            R36 K72 [0.43]
      369 LOADN                            R37 1
      370 CALL                             R35 2 1
      371 SETTABLEKS                       R35 R34 K65 ["anchorSize"]
      373 GETUPVAL                         R35 3
      374 GETTABLEKS                       R35 R35 K35 ["createElement"]
      376 GETUPVAL                         R36 16
      377 DUPTABLE                         R37 K74 [{"tag", "Size", "LayoutOrder", "onActivated", "width"}]
      378 LOADK                            R38 K75 ["row align-x-center align-y-center hover-bg-action-standard size-full-1000 radius-small cursor-pointer"]
      379 SETTABLEKS                       R38 R37 K36 ["tag"]
      381 GETIMPORT                        R38 K76 [UDim2.new]
      383 LOADN                            R39 1
      384 LOADN                            R40 0
      385 LOADN                            R41 1
      386 LOADN                            R42 0
      387 CALL                             R38 4 1
      388 SETTABLEKS                       R38 R37 K73 ["Size"]
      390 LOADN                            R38 3
      391 SETTABLEKS                       R38 R37 K37 ["LayoutOrder"]
      393 GETTABLEKS                       R38 R21 K77 ["toggle"]
      395 SETTABLEKS                       R38 R37 K52 ["onActivated"]
      397 GETIMPORT                        R38 K59 [UDim.new]
      399 LOADN                            R39 0
      400 LOADN                            R40 38
      401 CALL                             R38 2 1
      402 SETTABLEKS                       R38 R37 K53 ["width"]
      404 DUPTABLE                         R38 K79 [{"Icon"}]
      405 GETUPVAL                         R39 3
      406 GETTABLEKS                       R39 R39 K35 ["createElement"]
      408 GETUPVAL                         R40 22
      409 DUPTABLE                         R41 K80 [{"icon", "size", "onActivated"}]
      410 DUPTABLE                         R42 K82 [{"name", "variant"}]
      411 GETUPVAL                         R43 18
      412 GETTABLEKS                       R43 R43 K83 ["CaretSmallDown"]
      414 SETTABLEKS                       R43 R42 K81 ["name"]
      416 GETUPVAL                         R43 23
      417 GETTABLEKS                       R43 R43 K84 ["Filled"]
      419 SETTABLEKS                       R43 R42 K51 ["variant"]
      421 SETTABLEKS                       R42 R41 K49 ["icon"]
      423 GETUPVAL                         R42 19
      424 GETTABLEKS                       R42 R42 K56 ["Medium"]
      426 SETTABLEKS                       R42 R41 K50 ["size"]
      428 GETTABLEKS                       R42 R21 K77 ["toggle"]
      430 SETTABLEKS                       R42 R41 K52 ["onActivated"]
      432 CALL                             R39 2 1
      433 SETTABLEKS                       R39 R38 K78 ["Icon"]
      435 CALL                             R35 3 1
      436 SETTABLEKS                       R35 R34 K66 ["anchor"]
      438 CALL                             R32 2 1
      439 SETTABLEKS                       R32 R31 K47 ["AddItemMenu"]
      441 CALL                             R28 3 1
      442 SETTABLEKS                       R28 R27 K40 ["SplitButtonContainer"]
      444 JUMPIFEQKNIL                     R8 ; [+245]
      446 GETUPVAL                         R28 3
      447 GETTABLEKS                       R28 R28 K35 ["createElement"]
      449 GETUPVAL                         R29 24
      450 DUPTABLE                         R30 K93 [{"Title", "Enabled", "MinContentSize", "Modal", "OnClose", "OnButtonPressed", "Buttons", "ButtonHorizontalAlignment"}]
      451 JUMPIFEQKNIL                     R8 ; [+30]
      453 GETTABLEKS                       R33 R8 K8 ["type"]
      455 JUMPIFNOTEQKS                    R33 K9 ["noPalette"] ; [+26]
      457 GETTABLEKS                       R34 R8 K10 ["instances"]
      459 LENGTH                           R33 R34
      460 JUMPIFNOTEQKN                    R33 K11 [1] ; [+21]
      462 GETTABLEKS                       R33 R8 K12 ["extraErrors"]
      464 JUMPIFEQKNIL                     R33 ; [+17]
      466 GETIMPORT                        R33 K14 [next]
      468 GETTABLEKS                       R34 R8 K12 ["extraErrors"]
      470 CALL                             R33 1 2
      471 LOADB                            R32 0
      472 JUMPIFNOTEQKS                    R34 K15 ["OnlyOneShoe"] ; [+10]
      474 GETTABLEKS                       R36 R8 K10 ["instances"]
      476 GETTABLEN                        R35 R36 1
      477 JUMPIFEQ                         R35 R33 ; [+2]
      479 LOADB                            R32 0 +1
      480 LOADB                            R32 1
      481 JUMP                             ; [+1]
      482 LOADB                            R32 0
      483 JUMPIFNOT                        R32 ; [+6]
      484 LOADK                            R33 K16 ["AddItems"]
      485 LOADK                            R34 K94 ["WarningTitle"]
      486 NAMECALL                         R31 R1 K18 ["getText"]
      488 CALL                             R31 3 1
      489 JUMP                             ; [+5]
      490 LOADK                            R33 K16 ["AddItems"]
      491 LOADK                            R34 K95 ["FailedTitle"]
      492 NAMECALL                         R31 R1 K18 ["getText"]
      494 CALL                             R31 3 1
      495 SETTABLEKS                       R31 R30 K85 ["Title"]
      497 LOADB                            R31 1
      498 SETTABLEKS                       R31 R30 K86 ["Enabled"]
      500 GETIMPORT                        R31 K97 [Vector2.new]
      502 LOADN                            R32 94
      503 MOVE                             R33 R18
      504 CALL                             R31 2 1
      505 SETTABLEKS                       R31 R30 K87 ["MinContentSize"]
      507 LOADB                            R31 1
      508 SETTABLEKS                       R31 R30 K88 ["Modal"]
      510 SETTABLEKS                       R10 R30 K89 ["OnClose"]
      512 SETTABLEKS                       R10 R30 K90 ["OnButtonPressed"]
      514 NEWTABLE                         R31 0 1
      516 DUPTABLE                         R32 K100 [{"Key", "Text"}]
      517 LOADK                            R33 K101 ["OK"]
      518 SETTABLEKS                       R33 R32 K98 ["Key"]
      520 LOADK                            R35 K16 ["AddItems"]
      521 LOADK                            R36 K101 ["OK"]
      522 NAMECALL                         R33 R1 K18 ["getText"]
      524 CALL                             R33 3 1
      525 SETTABLEKS                       R33 R32 K99 ["Text"]
      527 SETLIST                          R31 R32 1 [1]
      529 SETTABLEKS                       R31 R30 K91 ["Buttons"]
      531 GETIMPORT                        R31 K105 [Enum.HorizontalAlignment.Center]
      533 SETTABLEKS                       R31 R30 K92 ["ButtonHorizontalAlignment"]
      535 DUPTABLE                         R31 K107 [{"Contents"}]
      536 GETUPVAL                         R32 3
      537 GETTABLEKS                       R32 R32 K35 ["createElement"]
      539 GETUPVAL                         R33 25
      540 NEWTABLE                         R34 8 0
      542 GETIMPORT                        R35 K110 [Enum.AutomaticSize.Y]
      544 SETTABLEKS                       R35 R34 K108 ["AutomaticSize"]
      546 GETIMPORT                        R35 K113 [Enum.FillDirection.Vertical]
      548 SETTABLEKS                       R35 R34 K114 ["Layout"]
      550 GETIMPORT                        R35 K105 [Enum.HorizontalAlignment.Center]
      552 SETTABLEKS                       R35 R34 K103 ["HorizontalAlignment"]
      554 GETIMPORT                        R35 K117 [Enum.VerticalAlignment.Top]
      556 SETTABLEKS                       R35 R34 K115 ["VerticalAlignment"]
      558 GETTABLEKS                       R35 R2 K118 ["FailureDialogSpacing"]
      560 SETTABLEKS                       R35 R34 K119 ["Spacing"]
      562 GETUPVAL                         R35 3
      563 GETTABLEKS                       R35 R35 K120 ["Change"]
      565 GETTABLEKS                       R35 R35 K121 ["AbsoluteSize"]
      567 NEWCLOSURE                       R36 P9
      568 CAPTURE                          VAL R19
      569 SETTABLE                         R36 R34 R35
      570 DUPTABLE                         R35 K123 [{"Title", "Hint"}]
      571 MOVE                             R36 R16
      572 JUMPIFNOT                        R36 ; [+35]
      573 GETUPVAL                         R36 3
      574 GETTABLEKS                       R36 R36 K35 ["createElement"]
      576 GETUPVAL                         R37 26
      577 DUPTABLE                         R38 K127 [{"AutomaticSize", "Font", "LayoutOrder", "Size", "Text", "TextWrapped", "TextXAlignment"}]
      578 GETIMPORT                        R39 K110 [Enum.AutomaticSize.Y]
      580 SETTABLEKS                       R39 R38 K108 ["AutomaticSize"]
      582 GETIMPORT                        R39 K129 [Enum.Font.SourceSansBold]
      584 SETTABLEKS                       R39 R38 K124 ["Font"]
      586 NAMECALL                         R39 R14 K130 ["getNextOrder"]
      588 CALL                             R39 1 1
      589 SETTABLEKS                       R39 R38 K37 ["LayoutOrder"]
      591 GETIMPORT                        R39 K71 [UDim2.fromScale]
      593 LOADN                            R40 1
      594 LOADN                            R41 0
      595 CALL                             R39 2 1
      596 SETTABLEKS                       R39 R38 K73 ["Size"]
      598 SETTABLEKS                       R16 R38 K99 ["Text"]
      600 LOADB                            R39 1
      601 SETTABLEKS                       R39 R38 K125 ["TextWrapped"]
      603 GETIMPORT                        R39 K132 [Enum.TextXAlignment.Left]
      605 SETTABLEKS                       R39 R38 K126 ["TextXAlignment"]
      607 CALL                             R36 2 1
      608 SETTABLEKS                       R36 R35 K85 ["Title"]
      610 GETUPVAL                         R36 3
      611 GETTABLEKS                       R36 R36 K35 ["createElement"]
      613 GETUPVAL                         R37 26
      614 DUPTABLE                         R38 K133 [{"AutomaticSize", "LayoutOrder", "Size", "Text", "TextWrapped", "TextXAlignment"}]
      615 GETIMPORT                        R39 K110 [Enum.AutomaticSize.Y]
      617 SETTABLEKS                       R39 R38 K108 ["AutomaticSize"]
      619 NAMECALL                         R39 R14 K130 ["getNextOrder"]
      621 CALL                             R39 1 1
      622 SETTABLEKS                       R39 R38 K37 ["LayoutOrder"]
      624 GETIMPORT                        R39 K71 [UDim2.fromScale]
      626 LOADN                            R40 1
      627 LOADN                            R41 0
      628 CALL                             R39 2 1
      629 SETTABLEKS                       R39 R38 K73 ["Size"]
      631 JUMPIFEQKNIL                     R8 ; [+30]
      633 GETTABLEKS                       R41 R8 K8 ["type"]
      635 JUMPIFNOTEQKS                    R41 K9 ["noPalette"] ; [+26]
      637 GETTABLEKS                       R42 R8 K10 ["instances"]
      639 LENGTH                           R41 R42
      640 JUMPIFNOTEQKN                    R41 K11 [1] ; [+21]
      642 GETTABLEKS                       R41 R8 K12 ["extraErrors"]
      644 JUMPIFEQKNIL                     R41 ; [+17]
      646 GETIMPORT                        R41 K14 [next]
      648 GETTABLEKS                       R42 R8 K12 ["extraErrors"]
      650 CALL                             R41 1 2
      651 LOADB                            R40 0
      652 JUMPIFNOTEQKS                    R42 K15 ["OnlyOneShoe"] ; [+10]
      654 GETTABLEKS                       R44 R8 K10 ["instances"]
      656 GETTABLEN                        R43 R44 1
      657 JUMPIFEQ                         R43 R41 ; [+2]
      659 LOADB                            R40 0 +1
      660 LOADB                            R40 1
      661 JUMP                             ; [+1]
      662 LOADB                            R40 0
      663 JUMPIFNOT                        R40 ; [+2]
      664 MOVE                             R39 R17
      665 JUMP                             ; [+7]
      666 MOVE                             R40 R17
      667 LOADK                            R43 K16 ["AddItems"]
      668 LOADK                            R44 K134 ["FailedAddHint"]
      669 NAMECALL                         R41 R1 K18 ["getText"]
      671 CALL                             R41 3 1
      672 CONCAT                           R39 R40 R41
      673 SETTABLEKS                       R39 R38 K99 ["Text"]
      675 LOADB                            R39 1
      676 SETTABLEKS                       R39 R38 K125 ["TextWrapped"]
      678 GETIMPORT                        R39 K132 [Enum.TextXAlignment.Left]
      680 SETTABLEKS                       R39 R38 K126 ["TextXAlignment"]
      682 CALL                             R36 2 1
      683 SETTABLEKS                       R36 R35 K122 ["Hint"]
      685 CALL                             R32 3 1
      686 SETTABLEKS                       R32 R31 K106 ["Contents"]
      688 CALL                             R28 3 1
      689 JUMP                             ; [+1]
      690 LOADNIL                          R28
      691 SETTABLEKS                       R28 R27 K41 ["FailureDialog"]
      693 GETUPVAL                         R29 2
      694 CALL                             R29 0 1
      695 JUMPIFNOT                        R29 ; [+16]
      696 GETTABLEKS                       R29 R4 K34 ["enabled"]
      698 JUMPIFNOT                        R29 ; [+13]
      699 GETUPVAL                         R28 3
      700 GETTABLEKS                       R28 R28 K35 ["createElement"]
      702 GETUPVAL                         R29 27
      703 DUPTABLE                         R30 K136 [{"onClose", "onAddItems"}]
      704 GETTABLEKS                       R31 R4 K68 ["disable"]
      706 SETTABLEKS                       R31 R30 K61 ["onClose"]
      708 SETTABLEKS                       R12 R30 K135 ["onAddItems"]
      710 CALL                             R28 2 1
      711 JUMP                             ; [+1]
      712 LOADNIL                          R28
      713 SETTABLEKS                       R28 R27 K42 ["MarketplaceImportDialog"]
      715 CALL                             R24 3 -1
      716 RETURN                           R24 -1

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
       77 GETTABLEKS                       R10 R10 K19 ["MarketplaceCatalogContext"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R11 R0 K13 ["Src"]
       84 GETTABLEKS                       R11 R11 K14 ["Components"]
       86 GETTABLEKS                       R11 R11 K20 ["MarketplaceImportDialog"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K5 [require]
       91 GETTABLEKS                       R12 R0 K13 ["Src"]
       93 GETTABLEKS                       R12 R12 K21 ["Util"]
       95 GETTABLEKS                       R12 R12 K22 ["SelectionWrapper"]
       97 CALL                             R11 1 1
       98 GETIMPORT                        R12 K5 [require]
      100 GETTABLEKS                       R13 R0 K13 ["Src"]
      102 GETTABLEKS                       R13 R13 K23 ["Hooks"]
      104 GETTABLEKS                       R13 R13 K24 ["useAddInstancesToUserCatalogAndEquip"]
      106 CALL                             R12 1 1
      107 GETIMPORT                        R13 K5 [require]
      109 GETTABLEKS                       R14 R0 K13 ["Src"]
      111 GETTABLEKS                       R14 R14 K23 ["Hooks"]
      113 GETTABLEKS                       R14 R14 K25 ["useEventConnection"]
      115 CALL                             R13 1 1
      116 GETIMPORT                        R14 K5 [require]
      118 GETTABLEKS                       R15 R0 K13 ["Src"]
      120 GETTABLEKS                       R15 R15 K23 ["Hooks"]
      122 GETTABLEKS                       R15 R15 K26 ["useToggleState"]
      124 CALL                             R14 1 1
      125 GETIMPORT                        R15 K5 [require]
      127 GETTABLEKS                       R16 R0 K13 ["Src"]
      129 GETTABLEKS                       R16 R16 K27 ["Flags"]
      131 GETTABLEKS                       R16 R16 K28 ["getFFlagAvatarPreviewerOpenLastEquippedPalette"]
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
      201 GETTABLEKS                       R33 R3 K21 ["Util"]
      203 GETTABLEKS                       R33 R33 K48 ["LayoutOrderIterator"]
      205 DUPCLOSURE                       R34 K49 [PROTO_0]
      206 CAPTURE                          VAL R7
      207 DUPCLOSURE                       R35 K50 [PROTO_2]
      208 CAPTURE                          VAL R11
      209 CAPTURE                          VAL R30
      210 CAPTURE                          VAL R12
      211 CAPTURE                          VAL R4
      212 CAPTURE                          VAL R6
      213 DUPCLOSURE                       R36 K51 [PROTO_13]
      214 CAPTURE                          VAL R31
      215 CAPTURE                          VAL R32
      216 CAPTURE                          VAL R15
      217 CAPTURE                          VAL R4
      218 CAPTURE                          VAL R8
      219 CAPTURE                          VAL R14
      220 CAPTURE                          VAL R16
      221 CAPTURE                          VAL R6
      222 CAPTURE                          VAL R9
      223 CAPTURE                          VAL R30
      224 CAPTURE                          VAL R35
      225 CAPTURE                          VAL R33
      226 CAPTURE                          VAL R1
      227 CAPTURE                          VAL R11
      228 CAPTURE                          VAL R34
      229 CAPTURE                          VAL R13
      230 CAPTURE                          VAL R21
      231 CAPTURE                          VAL R19
      232 CAPTURE                          VAL R22
      233 CAPTURE                          VAL R23
      234 CAPTURE                          VAL R24
      235 CAPTURE                          VAL R5
      236 CAPTURE                          VAL R20
      237 CAPTURE                          VAL R25
      238 CAPTURE                          VAL R28
      239 CAPTURE                          VAL R27
      240 CAPTURE                          VAL R29
      241 CAPTURE                          VAL R10
      242 RETURN                           R36 1
