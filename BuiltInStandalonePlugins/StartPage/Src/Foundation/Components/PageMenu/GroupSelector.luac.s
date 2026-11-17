PROTO_0:
        0 LOADK                            R1 K0 ["%*:%*"]
        1 GETTABLEKS                       R3 R0 K1 ["creatorType"]
        3 GETTABLEKS                       R3 R3 K2 ["Name"]
        5 GETTABLEKS                       R4 R0 K3 ["id"]
        7 NAMECALL                         R1 R1 K4 ["format"]
        9 CALL                             R1 3 1
       10 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{"LayoutOrder", "Image", "ScaleType", "tag", "testId"}]
        5 GETTABLEKS                       R4 R0 K7 ["layoutOrder"]
        7 SETTABLEKS                       R4 R3 K1 ["LayoutOrder"]
        9 GETUPVAL                         R4 2
       10 GETUPVAL                         R6 3
       11 GETTABLEKS                       R7 R0 K8 ["creatorType"]
       13 GETTABLE                         R5 R6 R7
       14 GETTABLEKS                       R6 R0 K9 ["id"]
       16 GETUPVAL                         R7 4
       17 GETTABLEKS                       R7 R7 K10 ["Medium"]
       19 CALL                             R4 3 1
       20 SETTABLEKS                       R4 R3 K2 ["Image"]
       22 GETIMPORT                        R4 K13 [Enum.ScaleType.Crop]
       24 SETTABLEKS                       R4 R3 K3 ["ScaleType"]
       26 NEWTABLE                         R4 4 0
       28 LOADB                            R5 1
       29 SETTABLEKS                       R5 R4 K14 ["size-600 clip"]
       31 GETTABLEKS                       R6 R0 K8 ["creatorType"]
       33 GETIMPORT                        R7 K17 [Enum.CreatorType.User]
       35 JUMPIFEQ                         R6 R7 ; [+2]
       37 LOADB                            R5 0 +1
       38 LOADB                            R5 1
       39 SETTABLEKS                       R5 R4 K18 ["radius-circle"]
       41 GETTABLEKS                       R6 R0 K8 ["creatorType"]
       43 GETIMPORT                        R7 K20 [Enum.CreatorType.Group]
       45 JUMPIFEQ                         R6 R7 ; [+2]
       47 LOADB                            R5 0 +1
       48 LOADB                            R5 1
       49 SETTABLEKS                       R5 R4 K21 ["radius-small"]
       51 SETTABLEKS                       R4 R3 K4 ["tag"]
       53 GETTABLEKS                       R4 R0 K5 ["testId"]
       55 SETTABLEKS                       R4 R3 K5 ["testId"]
       57 CALL                             R1 2 -1
       58 RETURN                           R1 -1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R8 R6 K0 ["Key"]
        8 FASTCALL1                        TONUMBER R8 ; [+2]
        9 GETIMPORT                        R7 K2 [tonumber]
       11 CALL                             R7 1 1
       12 JUMPIFEQKNIL                     R7 ; [+26]
       14 GETTABLEKS                       R9 R6 K3 ["DropdownLabel"]
       16 FASTCALL1                        TYPEOF R9 ; [+2]
       17 GETIMPORT                        R8 K5 [typeof]
       19 CALL                             R8 1 1
       20 JUMPIFNOTEQKS                    R8 K6 ["string"] ; [+18]
       22 DUPTABLE                         R10 K10 [{"creatorType", "id", "name"}]
       23 GETIMPORT                        R11 K14 [Enum.CreatorType.Group]
       25 SETTABLEKS                       R11 R10 K7 ["creatorType"]
       27 SETTABLEKS                       R7 R10 K8 ["id"]
       29 GETTABLEKS                       R11 R6 K3 ["DropdownLabel"]
       31 SETTABLEKS                       R11 R10 K9 ["name"]
       33 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       35 MOVE                             R9 R1
       36 GETIMPORT                        R8 K17 [table.insert]
       38 CALL                             R8 2 0
       39 FORGLOOP                         R2 2 ; [-34]
       41 GETUPVAL                         R2 0
       42 MOVE                             R3 R1
       43 CALL                             R2 1 0
       44 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADK                            R1 K0 [""]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+6]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["setSelectedCreator"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 JUMP                             ; [+3]
        8 GETUPVAL                         R1 1
        9 MOVE                             R2 R0
       10 CALL                             R1 1 0
       11 GETUPVAL                         R1 2
       12 LOADB                            R2 0
       13 CALL                             R1 1 0
       14 GETUPVAL                         R1 3
       15 LOADK                            R2 K1 [""]
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKS                    R1 K0 [""] ; [+3]
        3 LOADB                            R1 1
        4 RETURN                           R1 1
        5 GETIMPORT                        R2 K3 [string.find]
        7 GETIMPORT                        R3 K5 [string.lower]
        9 MOVE                             R4 R0
       10 CALL                             R3 1 1
       11 GETIMPORT                        R4 K5 [string.lower]
       13 GETUPVAL                         R5 0
       14 CALL                             R4 1 1
       15 LOADN                            R5 1
       16 LOADB                            R6 1
       17 CALL                             R2 4 1
       18 JUMPIFNOTEQKNIL                  R2 ; [+2]
       20 LOADB                            R1 0 +1
       21 LOADB                            R1 1
       22 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 LOADK                            R1 K0 [""]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 1
       10 LOADB                            R1 1
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["%*:%*"]
        2 GETTABLEKS                       R5 R2 K1 ["creatorType"]
        4 GETTABLEKS                       R5 R5 K2 ["Name"]
        6 GETTABLEKS                       R6 R2 K3 ["id"]
        8 NAMECALL                         R3 R3 K4 ["format"]
       10 CALL                             R3 3 1
       11 MOVE                             R1 R3
       12 JUMPIFNOTEQ                      R0 R1 ; [+20]
       14 GETUPVAL                         R1 0
       15 GETUPVAL                         R2 1
       16 JUMPIFNOT                        R2 ; [+6]
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K5 ["setSelectedCreator"]
       20 MOVE                             R3 R1
       21 CALL                             R2 1 0
       22 JUMP                             ; [+3]
       23 GETUPVAL                         R2 2
       24 MOVE                             R3 R1
       25 CALL                             R2 1 0
       26 GETUPVAL                         R2 3
       27 LOADB                            R3 0
       28 CALL                             R2 1 0
       29 GETUPVAL                         R2 4
       30 LOADK                            R3 K6 [""]
       31 CALL                             R2 1 0
       32 RETURN                           R0 0
       33 GETUPVAL                         R1 5
       34 LOADNIL                          R2
       35 LOADNIL                          R3
       36 FORGPREP                         R1
       37 LOADK                            R6 K0 ["%*:%*"]
       38 GETTABLEKS                       R8 R5 K1 ["creatorType"]
       40 GETTABLEKS                       R8 R8 K2 ["Name"]
       42 GETTABLEKS                       R9 R5 K3 ["id"]
       44 NAMECALL                         R6 R6 K4 ["format"]
       46 CALL                             R6 3 1
       47 JUMPIFNOTEQ                      R0 R6 ; [+19]
       49 GETUPVAL                         R6 1
       50 JUMPIFNOT                        R6 ; [+6]
       51 GETUPVAL                         R6 1
       52 GETTABLEKS                       R6 R6 K5 ["setSelectedCreator"]
       54 MOVE                             R7 R5
       55 CALL                             R6 1 0
       56 JUMP                             ; [+3]
       57 GETUPVAL                         R6 2
       58 MOVE                             R7 R5
       59 CALL                             R6 1 0
       60 GETUPVAL                         R6 3
       61 LOADB                            R7 0
       62 CALL                             R6 1 0
       63 GETUPVAL                         R6 4
       64 LOADK                            R7 K6 [""]
       65 CALL                             R6 1 0
       66 RETURN                           R0 0
       67 FORGLOOP                         R1 2 ; [-31]
       69 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 2
        7 CALL                             R3 0 1
        8 GETUPVAL                         R4 3
        9 LOADK                            R5 K1 ["PointingHand"]
       10 CALL                             R4 1 1
       11 GETUPVAL                         R5 4
       12 GETTABLEKS                       R5 R5 K2 ["useContext"]
       14 GETUPVAL                         R6 5
       15 CALL                             R5 1 1
       16 GETUPVAL                         R6 6
       17 GETTABLEKS                       R6 R6 K3 ["StudioService"]
       19 NAMECALL                         R6 R6 K4 ["GetUserId"]
       21 CALL                             R6 1 1
       22 FASTCALL1                        TYPEOF R6 ; [+3]
       23 MOVE                             R9 R6
       24 GETIMPORT                        R8 K6 [typeof]
       26 CALL                             R8 1 1
       27 JUMPIFNOTEQKS                    R8 K7 ["number"] ; [+3]
       29 MOVE                             R7 R6
       30 JUMP                             ; [+1]
       31 LOADN                            R7 0
       32 DUPTABLE                         R8 K11 [{"creatorType", "id", "name"}]
       33 GETIMPORT                        R9 K15 [Enum.CreatorType.User]
       35 SETTABLEKS                       R9 R8 K8 ["creatorType"]
       37 SETTABLEKS                       R7 R8 K9 ["id"]
       39 ORK                              R9 R3 K16 [""]
       40 SETTABLEKS                       R9 R8 K10 ["name"]
       42 GETUPVAL                         R9 4
       43 GETTABLEKS                       R9 R9 K17 ["useState"]
       45 NEWTABLE                         R10 0 0
       47 CALL                             R9 1 2
       48 GETUPVAL                         R11 4
       49 GETTABLEKS                       R11 R11 K17 ["useState"]
       51 MOVE                             R12 R8
       52 CALL                             R11 1 2
       53 GETUPVAL                         R13 4
       54 GETTABLEKS                       R13 R13 K17 ["useState"]
       56 LOADB                            R14 0
       57 CALL                             R13 1 2
       58 GETUPVAL                         R15 4
       59 GETTABLEKS                       R15 R15 K17 ["useState"]
       61 LOADK                            R16 K16 [""]
       62 CALL                             R15 1 2
       63 JUMPIFNOT                        R5 ; [+3]
       64 GETTABLEKS                       R17 R5 K18 ["selectedCreator"]
       66 JUMP                             ; [+1]
       67 MOVE                             R17 R11
       68 GETUPVAL                         R18 4
       69 GETTABLEKS                       R18 R18 K19 ["useEffect"]
       71 NEWCLOSURE                       R19 P0
       72 CAPTURE                          UPVAL U7
       73 CAPTURE                          VAL R10
       74 NEWTABLE                         R20 0 0
       76 CALL                             R18 2 0
       77 LOADK                            R20 K20 ["Plugin"]
       78 LOADK                            R21 K21 ["GroupSelector.You"]
       79 NAMECALL                         R18 R1 K22 ["getText"]
       81 CALL                             R18 3 1
       82 GETTABLEKS                       R20 R17 K8 ["creatorType"]
       84 GETIMPORT                        R21 K24 [Enum.CreatorType.Group]
       86 JUMPIFEQ                         R20 R21 ; [+2]
       88 LOADB                            R19 0 +1
       89 LOADB                            R19 1
       90 LENGTH                           R21 R9
       91 LOADN                            R22 0
       92 JUMPIFLT                         R22 R21 ; [+2]
       94 LOADB                            R20 0 +1
       95 LOADB                            R20 1
       96 LENGTH                           R23 R9
       97 ADDK                             R22 R23 K25 [1]
       98 GETUPVAL                         R23 8
       99 JUMPIFLT                         R23 R22 ; [+2]
      101 LOADB                            R21 0 +1
      102 LOADB                            R21 1
      103 NEWCLOSURE                       R22 P1
      104 CAPTURE                          VAL R14
      105 CAPTURE                          VAL R16
      106 NEWCLOSURE                       R23 P2
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R12
      109 CAPTURE                          VAL R14
      110 CAPTURE                          VAL R16
      111 NEWCLOSURE                       R24 P3
      112 CAPTURE                          VAL R15
      113 NEWTABLE                         R25 0 0
      115 GETTABLEKS                       R27 R8 K10 ["name"]
      117 JUMPIFNOTEQKS                    R15 K16 [""] ; [+3]
      119 LOADB                            R26 1
      120 JUMP                             ; [+17]
      121 GETIMPORT                        R28 K28 [string.find]
      123 GETIMPORT                        R29 K30 [string.lower]
      125 MOVE                             R30 R27
      126 CALL                             R29 1 1
      127 GETIMPORT                        R30 K30 [string.lower]
      129 MOVE                             R31 R15
      130 CALL                             R30 1 1
      131 LOADN                            R31 1
      132 LOADB                            R32 1
      133 CALL                             R28 4 1
      134 JUMPIFNOTEQKNIL                  R28 ; [+2]
      136 LOADB                            R26 0 +1
      137 LOADB                            R26 1
      138 JUMPIFNOT                        R26 ; [+51]
      139 DUPTABLE                         R28 K35 [{"id", "text", "leading", "trailing", "isChecked"}]
      140 LOADK                            R29 K36 ["%*:%*"]
      141 GETTABLEKS                       R31 R8 K8 ["creatorType"]
      143 GETTABLEKS                       R31 R31 K37 ["Name"]
      145 GETTABLEKS                       R32 R8 K9 ["id"]
      147 NAMECALL                         R29 R29 K38 ["format"]
      149 CALL                             R29 3 1
      150 SETTABLEKS                       R29 R28 K9 ["id"]
      152 GETTABLEKS                       R29 R8 K10 ["name"]
      154 SETTABLEKS                       R29 R28 K31 ["text"]
      156 DUPTABLE                         R29 K41 [{"type", "userId"}]
      157 GETUPVAL                         R30 9
      158 GETTABLEKS                       R30 R30 K42 ["Avatar"]
      160 SETTABLEKS                       R30 R29 K39 ["type"]
      162 GETTABLEKS                       R30 R8 K9 ["id"]
      164 SETTABLEKS                       R30 R29 K40 ["userId"]
      166 SETTABLEKS                       R29 R28 K32 ["leading"]
      168 JUMPIFNOT                        R19 ; [+9]
      169 DUPTABLE                         R29 K45 [{["type"] = "Badge", ["text"], ["variant"]}]
      170 SETTABLEKS                       R18 R29 K31 ["text"]
      172 GETUPVAL                         R30 10
      173 GETTABLEKS                       R30 R30 K46 ["Neutral"]
      175 SETTABLEKS                       R30 R29 K44 ["variant"]
      177 JUMP                             ; [+1]
      178 LOADNIL                          R29
      179 SETTABLEKS                       R29 R28 K33 ["trailing"]
      181 NOT                              R29 R19
      182 SETTABLEKS                       R29 R28 K34 ["isChecked"]
      184 FASTCALL2                        TABLE_INSERT R25 R28 ; [+4]
      186 MOVE                             R27 R25
      187 GETIMPORT                        R26 K49 [table.insert]
      189 CALL                             R26 2 0
      190 MOVE                             R26 R9
      191 LOADNIL                          R27
      192 LOADNIL                          R28
      193 FORGPREP                         R26
      194 GETTABLEKS                       R32 R30 K10 ["name"]
      196 JUMPIFNOTEQKS                    R15 K16 [""] ; [+3]
      198 LOADB                            R31 1
      199 JUMP                             ; [+17]
      200 GETIMPORT                        R33 K28 [string.find]
      202 GETIMPORT                        R34 K30 [string.lower]
      204 MOVE                             R35 R32
      205 CALL                             R34 1 1
      206 GETIMPORT                        R35 K30 [string.lower]
      208 MOVE                             R36 R15
      209 CALL                             R35 1 1
      210 LOADN                            R36 1
      211 LOADB                            R37 1
      212 CALL                             R33 4 1
      213 JUMPIFNOTEQKNIL                  R33 ; [+2]
      215 LOADB                            R31 0 +1
      216 LOADB                            R31 1
      217 JUMPIFNOT                        R31 ; [+48]
      218 DUPTABLE                         R33 K51 [{"id", "text", "icon", "isChecked"}]
      219 LOADK                            R34 K36 ["%*:%*"]
      220 GETTABLEKS                       R36 R30 K8 ["creatorType"]
      222 GETTABLEKS                       R36 R36 K37 ["Name"]
      224 GETTABLEKS                       R37 R30 K9 ["id"]
      226 NAMECALL                         R34 R34 K38 ["format"]
      228 CALL                             R34 3 1
      229 SETTABLEKS                       R34 R33 K9 ["id"]
      231 GETTABLEKS                       R34 R30 K10 ["name"]
      233 SETTABLEKS                       R34 R33 K31 ["text"]
      235 GETUPVAL                         R34 11
      236 GETUPVAL                         R36 12
      237 GETTABLEKS                       R37 R30 K8 ["creatorType"]
      239 GETTABLE                         R35 R36 R37
      240 GETTABLEKS                       R36 R30 K9 ["id"]
      242 GETUPVAL                         R37 13
      243 GETTABLEKS                       R37 R37 K52 ["Medium"]
      245 CALL                             R34 3 1
      246 SETTABLEKS                       R34 R33 K50 ["icon"]
      248 MOVE                             R34 R19
      249 JUMPIFNOT                        R34 ; [+8]
      250 GETTABLEKS                       R35 R17 K9 ["id"]
      252 GETTABLEKS                       R36 R30 K9 ["id"]
      254 JUMPIFEQ                         R35 R36 ; [+2]
      256 LOADB                            R34 0 +1
      257 LOADB                            R34 1
      258 SETTABLEKS                       R34 R33 K34 ["isChecked"]
      260 FASTCALL2                        TABLE_INSERT R25 R33 ; [+4]
      262 MOVE                             R32 R25
      263 GETIMPORT                        R31 K49 [table.insert]
      265 CALL                             R31 2 0
      266 FORGLOOP                         R26 2 ; [-73]
      268 LOADB                            R26 0
      269 MOVE                             R27 R25
      270 LOADNIL                          R28
      271 LOADNIL                          R29
      272 FORGPREP                         R27
      273 GETTABLEKS                       R32 R31 K34 ["isChecked"]
      275 JUMPIFNOT                        R32 ; [+2]
      276 LOADB                            R26 1
      277 JUMP                             ; [+2]
      278 FORGLOOP                         R27 2 ; [-6]
      280 NEWTABLE                         R27 0 0
      282 MOVE                             R28 R25
      283 LOADNIL                          R29
      284 LOADNIL                          R30
      285 FORGPREP                         R28
      286 GETTABLEKS                       R33 R32 K9 ["id"]
      288 GETUPVAL                         R34 4
      289 GETTABLEKS                       R34 R34 K53 ["createElement"]
      291 GETUPVAL                         R35 14
      292 GETTABLEKS                       R35 R35 K54 ["Item"]
      294 DUPTABLE                         R36 K61 [{["LayoutOrder"], ["id"], ["text"], ["icon"], ["leading"], ["trailing"], ["isChecked"], ["menuHasLeading"] = True, ["menuHasCheck"], ["testId"] = "--foundation-menu-item"}]
      295 SETTABLEKS                       R31 R36 K55 ["LayoutOrder"]
      297 GETTABLEKS                       R37 R32 K9 ["id"]
      299 SETTABLEKS                       R37 R36 K9 ["id"]
      301 GETTABLEKS                       R37 R32 K31 ["text"]
      303 SETTABLEKS                       R37 R36 K31 ["text"]
      305 GETTABLEKS                       R37 R32 K50 ["icon"]
      307 SETTABLEKS                       R37 R36 K50 ["icon"]
      309 GETTABLEKS                       R37 R32 K32 ["leading"]
      311 SETTABLEKS                       R37 R36 K32 ["leading"]
      313 GETTABLEKS                       R37 R32 K33 ["trailing"]
      315 SETTABLEKS                       R37 R36 K33 ["trailing"]
      317 GETTABLEKS                       R37 R32 K34 ["isChecked"]
      319 SETTABLEKS                       R37 R36 K34 ["isChecked"]
      321 SETTABLEKS                       R26 R36 K58 ["menuHasCheck"]
      323 CALL                             R34 2 1
      324 SETTABLE                         R34 R27 R33
      325 FORGLOOP                         R28 2 ; [-40]
      327 LENGTH                           R29 R25
      328 LOADN                            R30 0
      329 JUMPIFNOTLT                      R30 R29 ; [+3]
      331 MOVE                             R28 R27
      332 JUMP                             ; [+16]
      333 DUPTABLE                         R28 K63 [{"Empty"}]
      334 GETUPVAL                         R29 4
      335 GETTABLEKS                       R29 R29 K53 ["createElement"]
      337 GETUPVAL                         R30 15
      338 DUPTABLE                         R31 K67 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "size-full-0 auto-y text-body-medium text-wrap text-align-x-left content-default"}]
      339 LOADK                            R34 K20 ["Plugin"]
      340 LOADK                            R35 K68 ["NoSearchResultsToDisplay"]
      341 NAMECALL                         R32 R1 K22 ["getText"]
      343 CALL                             R32 3 1
      344 SETTABLEKS                       R32 R31 K64 ["Text"]
      346 CALL                             R29 2 1
      347 SETTABLEKS                       R29 R28 K62 ["Empty"]
      349 NEWCLOSURE                       R29 P4
      350 CAPTURE                          VAL R13
      351 CAPTURE                          VAL R14
      352 CAPTURE                          VAL R16
      353 GETUPVAL                         R30 4
      354 GETTABLEKS                       R30 R30 K53 ["createElement"]
      356 GETUPVAL                         R31 16
      357 GETTABLEKS                       R31 R31 K69 ["Root"]
      359 DUPTABLE                         R32 K72 [{["isOpen"], ["testId"] = "--start-page-GroupSelector-Menu"}]
      360 SETTABLEKS                       R13 R32 K70 ["isOpen"]
      362 DUPTABLE                         R33 K75 [{"Anchor", "Content"}]
      363 GETUPVAL                         R34 4
      364 GETTABLEKS                       R34 R34 K53 ["createElement"]
      366 GETUPVAL                         R35 16
      367 GETTABLEKS                       R35 R35 K73 ["Anchor"]
      369 DUPTABLE                         R36 K76 [{"LayoutOrder"}]
      370 GETTABLEKS                       R37 R0 K55 ["LayoutOrder"]
      372 SETTABLEKS                       R37 R36 K55 ["LayoutOrder"]
      374 DUPTABLE                         R37 K78 [{"Trigger"}]
      375 GETUPVAL                         R38 4
      376 GETTABLEKS                       R38 R38 K53 ["createElement"]
      378 GETUPVAL                         R39 17
      379 DUPTABLE                         R40 K83 [{["Size"], ["onActivated"], ["onStateChanged"], ["tag"], ["testId"] = "--start-page-GroupSelector"}]
      380 GETTABLEKS                       R42 R0 K84 ["isCollapsed"]
      382 JUMPIFNOT                        R42 ; [+6]
      383 GETIMPORT                        R41 K87 [UDim2.fromOffset]
      385 LOADN                            R42 0
      386 LOADN                            R43 0
      387 CALL                             R41 2 1
      388 JUMP                             ; [+5]
      389 GETIMPORT                        R41 K87 [UDim2.fromOffset]
      391 GETUPVAL                         R42 18
      392 LOADN                            R43 0
      393 CALL                             R41 2 1
      394 SETTABLEKS                       R41 R40 K79 ["Size"]
      396 JUMPIFNOT                        R20 ; [+2]
      397 MOVE                             R41 R29
      398 JUMP                             ; [+1]
      399 LOADNIL                          R41
      400 SETTABLEKS                       R41 R40 K80 ["onActivated"]
      402 JUMPIFNOT                        R20 ; [+2]
      403 MOVE                             R41 R4
      404 JUMP                             ; [+1]
      405 LOADNIL                          R41
      406 SETTABLEKS                       R41 R40 K81 ["onStateChanged"]
      408 NEWTABLE                         R41 4 0
      410 LOADB                            R42 1
      411 SETTABLEKS                       R42 R41 K88 ["row align-x-left align-y-center gap-medium padding-medium radius-medium"]
      413 GETTABLEKS                       R42 R0 K84 ["isCollapsed"]
      415 SETTABLEKS                       R42 R41 K89 ["auto-xy"]
      417 GETTABLEKS                       R43 R0 K84 ["isCollapsed"]
      419 NOT                              R42 R43
      420 SETTABLEKS                       R42 R41 K90 ["auto-y"]
      422 SETTABLEKS                       R41 R40 K65 ["tag"]
      424 DUPTABLE                         R41 K93 [{"Icon", "Name", "Chevron"}]
      425 GETUPVAL                         R42 4
      426 GETTABLEKS                       R42 R42 K53 ["createElement"]
      428 GETUPVAL                         R43 19
      429 DUPTABLE                         R44 K96 [{["creatorType"], ["id"], ["layoutOrder"] = 1, ["testId"] = "--start-page-GroupSelector-TriggerIcon"}]
      430 GETTABLEKS                       R45 R17 K8 ["creatorType"]
      432 SETTABLEKS                       R45 R44 K8 ["creatorType"]
      434 GETTABLEKS                       R45 R17 K9 ["id"]
      436 SETTABLEKS                       R45 R44 K9 ["id"]
      438 CALL                             R42 2 1
      439 SETTABLEKS                       R42 R41 K91 ["Icon"]
      441 GETTABLEKS                       R43 R0 K84 ["isCollapsed"]
      443 JUMPIFNOT                        R43 ; [+2]
      444 LOADNIL                          R42
      445 JUMP                             ; [+10]
      446 GETUPVAL                         R42 4
      447 GETTABLEKS                       R42 R42 K53 ["createElement"]
      449 GETUPVAL                         R43 15
      450 DUPTABLE                         R44 K99 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "grow shrink text-title-medium text-align-x-left text-truncate-end content-emphasis"}]
      451 GETTABLEKS                       R45 R17 K10 ["name"]
      453 SETTABLEKS                       R45 R44 K64 ["Text"]
      455 CALL                             R42 2 1
      456 SETTABLEKS                       R42 R41 K37 ["Name"]
      458 GETTABLEKS                       R43 R0 K84 ["isCollapsed"]
      460 JUMPIF                           R43 ; [+1]
      461 JUMPIF                           R20 ; [+2]
      462 LOADNIL                          R42
      463 JUMP                             ; [+34]
      464 GETUPVAL                         R42 4
      465 GETTABLEKS                       R42 R42 K53 ["createElement"]
      467 GETUPVAL                         R43 20
      468 DUPTABLE                         R44 K104 [{["LayoutOrder"] = 3, ["name"], ["size"], ["variant"], ["style"], ["testId"] = "--start-page-GroupSelector-Chevron"}]
      469 JUMPIFNOT                        R13 ; [+4]
      470 GETUPVAL                         R45 21
      471 GETTABLEKS                       R45 R45 K105 ["ChevronSmallUp"]
      473 JUMP                             ; [+3]
      474 GETUPVAL                         R45 21
      475 GETTABLEKS                       R45 R45 K106 ["ChevronSmallDown"]
      477 SETTABLEKS                       R45 R44 K10 ["name"]
      479 GETUPVAL                         R45 22
      480 GETTABLEKS                       R45 R45 K107 ["Small"]
      482 SETTABLEKS                       R45 R44 K101 ["size"]
      484 GETUPVAL                         R45 23
      485 GETTABLEKS                       R45 R45 K108 ["Filled"]
      487 SETTABLEKS                       R45 R44 K44 ["variant"]
      489 GETTABLEKS                       R45 R2 K109 ["Color"]
      491 GETTABLEKS                       R45 R45 K74 ["Content"]
      493 GETTABLEKS                       R45 R45 K110 ["Emphasis"]
      495 SETTABLEKS                       R45 R44 K102 ["style"]
      497 CALL                             R42 2 1
      498 SETTABLEKS                       R42 R41 K92 ["Chevron"]
      500 CALL                             R38 3 1
      501 SETTABLEKS                       R38 R37 K77 ["Trigger"]
      503 CALL                             R34 3 1
      504 SETTABLEKS                       R34 R33 K73 ["Anchor"]
      506 GETUPVAL                         R34 4
      507 GETTABLEKS                       R34 R34 K53 ["createElement"]
      509 GETUPVAL                         R35 16
      510 GETTABLEKS                       R35 R35 K74 ["Content"]
      512 DUPTABLE                         R36 K118 [{["side"], ["align"], ["hasArrow"] = False, ["onPressedOutside"], ["backgroundStyle"], ["radius"]}]
      513 DUPTABLE                         R37 K121 [{"position", "offset"}]
      514 GETUPVAL                         R38 24
      515 GETTABLEKS                       R38 R38 K122 ["Bottom"]
      517 SETTABLEKS                       R38 R37 K119 ["position"]
      519 GETTABLEKS                       R39 R2 K123 ["Stroke"]
      521 GETTABLEKS                       R39 R39 K124 ["Standard"]
      523 GETTABLEKS                       R40 R2 K125 ["Padding"]
      525 GETTABLEKS                       R40 R40 K107 ["Small"]
      527 ADD                              R38 R39 R40
      528 SETTABLEKS                       R38 R37 K120 ["offset"]
      530 SETTABLEKS                       R37 R36 K111 ["side"]
      532 GETUPVAL                         R37 25
      533 GETTABLEKS                       R37 R37 K126 ["Start"]
      535 SETTABLEKS                       R37 R36 K112 ["align"]
      537 SETTABLEKS                       R22 R36 K115 ["onPressedOutside"]
      539 GETTABLEKS                       R37 R2 K109 ["Color"]
      541 GETTABLEKS                       R37 R37 K127 ["Surface"]
      543 GETTABLEKS                       R37 R37 K128 ["Surface_200"]
      545 SETTABLEKS                       R37 R36 K116 ["backgroundStyle"]
      547 GETUPVAL                         R37 26
      548 GETTABLEKS                       R37 R37 K52 ["Medium"]
      550 SETTABLEKS                       R37 R36 K117 ["radius"]
      552 DUPTABLE                         R37 K130 [{"Panel"}]
      553 GETUPVAL                         R38 4
      554 GETTABLEKS                       R38 R38 K53 ["createElement"]
      556 GETUPVAL                         R39 17
      557 DUPTABLE                         R40 K132 [{["Size"], ["backgroundStyle"], ["tag"] = "col auto-y radius-medium clip"}]
      558 GETIMPORT                        R41 K87 [UDim2.fromOffset]
      560 GETUPVAL                         R42 18
      561 LOADN                            R43 0
      562 CALL                             R41 2 1
      563 SETTABLEKS                       R41 R40 K79 ["Size"]
      565 GETTABLEKS                       R41 R2 K109 ["Color"]
      567 GETTABLEKS                       R41 R41 K127 ["Surface"]
      569 GETTABLEKS                       R41 R41 K128 ["Surface_200"]
      571 SETTABLEKS                       R41 R40 K116 ["backgroundStyle"]
      573 DUPTABLE                         R41 K135 [{"Search", "Menu"}]
      574 JUMPIFNOT                        R21 ; [+44]
      575 GETUPVAL                         R42 4
      576 GETTABLEKS                       R42 R42 K53 ["createElement"]
      578 GETUPVAL                         R43 17
      579 DUPTABLE                         R44 K138 [{["LayoutOrder"] = 1, ["tag"] = "size-full-0 auto-y padding-small", ["testId"] = "--start-page-GroupSelector-Search"}]
      580 DUPTABLE                         R45 K140 [{"Input"}]
      581 GETUPVAL                         R46 4
      582 GETTABLEKS                       R46 R46 K53 ["createElement"]
      584 GETUPVAL                         R47 27
      585 DUPTABLE                         R48 K145 [{"text", "width", "size", "shape", "placeholder", "onChanged"}]
      586 SETTABLEKS                       R15 R48 K31 ["text"]
      588 GETIMPORT                        R49 K148 [UDim.new]
      590 LOADN                            R50 1
      591 LOADN                            R51 0
      592 CALL                             R49 2 1
      593 SETTABLEKS                       R49 R48 K141 ["width"]
      595 GETUPVAL                         R49 28
      596 GETTABLEKS                       R49 R49 K107 ["Small"]
      598 SETTABLEKS                       R49 R48 K101 ["size"]
      600 GETUPVAL                         R49 29
      601 GETTABLEKS                       R49 R49 K149 ["Rounded"]
      603 SETTABLEKS                       R49 R48 K142 ["shape"]
      605 LOADK                            R51 K20 ["Plugin"]
      606 LOADK                            R52 K133 ["Search"]
      607 NAMECALL                         R49 R1 K22 ["getText"]
      609 CALL                             R49 3 1
      610 SETTABLEKS                       R49 R48 K143 ["placeholder"]
      612 SETTABLEKS                       R16 R48 K144 ["onChanged"]
      614 CALL                             R46 2 1
      615 SETTABLEKS                       R46 R45 K139 ["Input"]
      617 CALL                             R42 3 1
      618 JUMP                             ; [+1]
      619 LOADNIL                          R42
      620 SETTABLEKS                       R42 R41 K133 ["Search"]
      622 GETUPVAL                         R42 4
      623 GETTABLEKS                       R42 R42 K53 ["createElement"]
      625 GETUPVAL                         R43 14
      626 GETTABLEKS                       R43 R43 K69 ["Root"]
      628 DUPTABLE                         R44 K151 [{["LayoutOrder"] = 2, ["size"], ["width"], ["maxHeight"], ["onActivated"]}]
      629 GETUPVAL                         R45 28
      630 GETTABLEKS                       R45 R45 K52 ["Medium"]
      632 SETTABLEKS                       R45 R44 K101 ["size"]
      634 GETIMPORT                        R45 K148 [UDim.new]
      636 LOADN                            R46 0
      637 GETUPVAL                         R47 18
      638 CALL                             R45 2 1
      639 SETTABLEKS                       R45 R44 K141 ["width"]
      641 GETUPVAL                         R45 30
      642 SETTABLEKS                       R45 R44 K150 ["maxHeight"]
      644 NEWCLOSURE                       R45 P5
      645 CAPTURE                          VAL R8
      646 CAPTURE                          VAL R5
      647 CAPTURE                          VAL R12
      648 CAPTURE                          VAL R14
      649 CAPTURE                          VAL R16
      650 CAPTURE                          VAL R9
      651 SETTABLEKS                       R45 R44 K80 ["onActivated"]
      653 DUPTABLE                         R45 K153 [{"Items"}]
      654 GETUPVAL                         R46 4
      655 GETTABLEKS                       R46 R46 K53 ["createElement"]
      657 GETUPVAL                         R47 14
      658 GETTABLEKS                       R47 R47 K23 ["Group"]
      660 DUPTABLE                         R48 K154 [{["LayoutOrder"] = 1}]
      661 MOVE                             R49 R28
      662 CALL                             R46 3 1
      663 SETTABLEKS                       R46 R45 K152 ["Items"]
      665 CALL                             R42 3 1
      666 SETTABLEKS                       R42 R41 K134 ["Menu"]
      668 CALL                             R38 3 1
      669 SETTABLEKS                       R38 R37 K129 ["Panel"]
      671 CALL                             R34 3 1
      672 SETTABLEKS                       R34 R33 K74 ["Content"]
      674 CALL                             R30 3 -1
      675 RETURN                           R30 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R3 R3 K10 ["Localization"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K11 ["Src"]
       29 GETTABLEKS                       R5 R5 K12 ["Util"]
       31 GETTABLEKS                       R5 R5 K13 ["Foundation"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R4 K14 ["View"]
       36 GETTABLEKS                       R6 R4 K15 ["Text"]
       38 GETTABLEKS                       R7 R4 K16 ["Image"]
       40 GETTABLEKS                       R8 R4 K17 ["Icon"]
       42 GETTABLEKS                       R9 R4 K18 ["Popover"]
       44 GETTABLEKS                       R10 R4 K19 ["SearchInput"]
       46 GETTABLEKS                       R11 R4 K20 ["UNSTABLE"]
       48 GETTABLEKS                       R11 R11 K21 ["BaseMenu"]
       50 GETTABLEKS                       R12 R4 K22 ["Hooks"]
       52 GETTABLEKS                       R12 R12 K23 ["useTokens"]
       54 GETTABLEKS                       R13 R4 K24 ["Utility"]
       56 GETTABLEKS                       R13 R13 K25 ["getRbxThumb"]
       58 GETTABLEKS                       R14 R4 K26 ["Enums"]
       60 GETTABLEKS                       R14 R14 K27 ["IconName"]
       62 GETTABLEKS                       R15 R4 K26 ["Enums"]
       64 GETTABLEKS                       R15 R15 K28 ["IconSize"]
       66 GETTABLEKS                       R16 R4 K26 ["Enums"]
       68 GETTABLEKS                       R16 R16 K29 ["IconVariant"]
       70 GETTABLEKS                       R17 R4 K26 ["Enums"]
       72 GETTABLEKS                       R17 R17 K30 ["BadgeVariant"]
       74 GETTABLEKS                       R18 R4 K26 ["Enums"]
       76 GETTABLEKS                       R18 R18 K31 ["AccessoryType"]
       78 GETTABLEKS                       R19 R4 K26 ["Enums"]
       80 GETTABLEKS                       R19 R19 K32 ["InputSize"]
       82 GETTABLEKS                       R20 R4 K26 ["Enums"]
       84 GETTABLEKS                       R20 R20 K33 ["PopoverAlign"]
       86 GETTABLEKS                       R21 R4 K26 ["Enums"]
       88 GETTABLEKS                       R21 R21 K34 ["PopoverSide"]
       90 GETTABLEKS                       R22 R4 K26 ["Enums"]
       92 GETTABLEKS                       R22 R22 K35 ["Radius"]
       94 GETTABLEKS                       R23 R4 K26 ["Enums"]
       96 GETTABLEKS                       R23 R23 K36 ["SearchInputShape"]
       98 GETTABLEKS                       R24 R4 K26 ["Enums"]
      100 GETTABLEKS                       R24 R24 K37 ["ThumbnailType"]
      102 GETTABLEKS                       R25 R4 K26 ["Enums"]
      104 GETTABLEKS                       R25 R25 K38 ["ThumbnailSize"]
      106 GETIMPORT                        R26 K5 [require]
      108 GETTABLEKS                       R27 R0 K11 ["Src"]
      110 GETTABLEKS                       R27 R27 K22 ["Hooks"]
      112 GETTABLEKS                       R27 R27 K39 ["useOnStateChangedCursor"]
      114 CALL                             R26 1 1
      115 GETIMPORT                        R27 K5 [require]
      117 GETTABLEKS                       R28 R0 K11 ["Src"]
      119 GETTABLEKS                       R28 R28 K22 ["Hooks"]
      121 GETTABLEKS                       R28 R28 K40 ["useUsername"]
      123 CALL                             R27 1 1
      124 GETIMPORT                        R28 K5 [require]
      126 GETTABLEKS                       R29 R0 K11 ["Src"]
      128 GETTABLEKS                       R29 R29 K41 ["Network"]
      130 GETTABLEKS                       R29 R29 K42 ["DiscoverGroups"]
      132 CALL                             R28 1 1
      133 GETIMPORT                        R29 K5 [require]
      135 GETTABLEKS                       R30 R0 K11 ["Src"]
      137 GETTABLEKS                       R30 R30 K43 ["Contexts"]
      139 GETTABLEKS                       R30 R30 K44 ["SelectedCreator"]
      141 CALL                             R29 1 1
      142 GETIMPORT                        R30 K5 [require]
      144 GETTABLEKS                       R31 R0 K11 ["Src"]
      146 GETTABLEKS                       R31 R31 K12 ["Util"]
      148 GETTABLEKS                       R31 R31 K45 ["Services"]
      150 CALL                             R30 1 1
      151 GETIMPORT                        R31 K5 [require]
      153 GETTABLEKS                       R32 R0 K11 ["Src"]
      155 GETTABLEKS                       R32 R32 K46 ["Types"]
      157 CALL                             R31 1 1
      158 GETIMPORT                        R32 K5 [require]
      160 GETIMPORT                        R33 K1 [script]
      162 GETTABLEKS                       R33 R33 K47 ["Parent"]
      164 GETTABLEKS                       R33 R33 K48 ["Constants"]
      166 CALL                             R32 1 1
      167 GETTABLEKS                       R33 R32 K49 ["MENU_CONTENT_WIDTH"]
      169 GETTABLEKS                       R34 R32 K50 ["MENU_MAX_HEIGHT"]
      171 GETTABLEKS                       R35 R32 K51 ["GROUP_SEARCH_THRESHOLD"]
      173 DUPCLOSURE                       R36 K52 [PROTO_0]
      174 NEWTABLE                         R37 2 0
      176 GETIMPORT                        R38 K56 [Enum.CreatorType.User]
      178 GETTABLEKS                       R39 R24 K57 ["AvatarHeadShot"]
      180 SETTABLE                         R39 R37 R38
      181 GETIMPORT                        R38 K59 [Enum.CreatorType.Group]
      183 GETTABLEKS                       R39 R24 K60 ["GroupIcon"]
      185 SETTABLE                         R39 R37 R38
      186 DUPCLOSURE                       R38 K61 [PROTO_1]
      187 CAPTURE                          VAL R1
      188 CAPTURE                          VAL R7
      189 CAPTURE                          VAL R13
      190 CAPTURE                          VAL R37
      191 CAPTURE                          VAL R25
      192 DUPCLOSURE                       R39 K62 [PROTO_9]
      193 CAPTURE                          VAL R3
      194 CAPTURE                          VAL R12
      195 CAPTURE                          VAL R27
      196 CAPTURE                          VAL R26
      197 CAPTURE                          VAL R1
      198 CAPTURE                          VAL R29
      199 CAPTURE                          VAL R30
      200 CAPTURE                          VAL R28
      201 CAPTURE                          VAL R35
      202 CAPTURE                          VAL R18
      203 CAPTURE                          VAL R17
      204 CAPTURE                          VAL R13
      205 CAPTURE                          VAL R37
      206 CAPTURE                          VAL R25
      207 CAPTURE                          VAL R11
      208 CAPTURE                          VAL R6
      209 CAPTURE                          VAL R9
      210 CAPTURE                          VAL R5
      211 CAPTURE                          VAL R33
      212 CAPTURE                          VAL R38
      213 CAPTURE                          VAL R8
      214 CAPTURE                          VAL R14
      215 CAPTURE                          VAL R15
      216 CAPTURE                          VAL R16
      217 CAPTURE                          VAL R21
      218 CAPTURE                          VAL R20
      219 CAPTURE                          VAL R22
      220 CAPTURE                          VAL R10
      221 CAPTURE                          VAL R19
      222 CAPTURE                          VAL R23
      223 CAPTURE                          VAL R34
      224 RETURN                           R39 1
