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
       90 NEWCLOSURE                       R20 P1
       91 CAPTURE                          VAL R14
       92 CAPTURE                          VAL R16
       93 NEWCLOSURE                       R21 P2
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R12
       96 CAPTURE                          VAL R14
       97 CAPTURE                          VAL R16
       98 NEWCLOSURE                       R22 P3
       99 CAPTURE                          VAL R15
      100 NEWTABLE                         R23 0 0
      102 GETTABLEKS                       R25 R8 K10 ["name"]
      104 JUMPIFNOTEQKS                    R15 K16 [""] ; [+3]
      106 LOADB                            R24 1
      107 JUMP                             ; [+17]
      108 GETIMPORT                        R26 K27 [string.find]
      110 GETIMPORT                        R27 K29 [string.lower]
      112 MOVE                             R28 R25
      113 CALL                             R27 1 1
      114 GETIMPORT                        R28 K29 [string.lower]
      116 MOVE                             R29 R15
      117 CALL                             R28 1 1
      118 LOADN                            R29 1
      119 LOADB                            R30 1
      120 CALL                             R26 4 1
      121 JUMPIFNOTEQKNIL                  R26 ; [+2]
      123 LOADB                            R24 0 +1
      124 LOADB                            R24 1
      125 JUMPIFNOT                        R24 ; [+51]
      126 DUPTABLE                         R26 K34 [{"id", "text", "leading", "trailing", "isChecked"}]
      127 LOADK                            R27 K35 ["%*:%*"]
      128 GETTABLEKS                       R29 R8 K8 ["creatorType"]
      130 GETTABLEKS                       R29 R29 K36 ["Name"]
      132 GETTABLEKS                       R30 R8 K9 ["id"]
      134 NAMECALL                         R27 R27 K37 ["format"]
      136 CALL                             R27 3 1
      137 SETTABLEKS                       R27 R26 K9 ["id"]
      139 GETTABLEKS                       R27 R8 K10 ["name"]
      141 SETTABLEKS                       R27 R26 K30 ["text"]
      143 DUPTABLE                         R27 K40 [{"type", "userId"}]
      144 GETUPVAL                         R28 8
      145 GETTABLEKS                       R28 R28 K41 ["Avatar"]
      147 SETTABLEKS                       R28 R27 K38 ["type"]
      149 GETTABLEKS                       R28 R8 K9 ["id"]
      151 SETTABLEKS                       R28 R27 K39 ["userId"]
      153 SETTABLEKS                       R27 R26 K31 ["leading"]
      155 JUMPIFNOT                        R19 ; [+9]
      156 DUPTABLE                         R27 K44 [{["type"] = "Badge", ["text"], ["variant"]}]
      157 SETTABLEKS                       R18 R27 K30 ["text"]
      159 GETUPVAL                         R28 9
      160 GETTABLEKS                       R28 R28 K45 ["Neutral"]
      162 SETTABLEKS                       R28 R27 K43 ["variant"]
      164 JUMP                             ; [+1]
      165 LOADNIL                          R27
      166 SETTABLEKS                       R27 R26 K32 ["trailing"]
      168 NOT                              R27 R19
      169 SETTABLEKS                       R27 R26 K33 ["isChecked"]
      171 FASTCALL2                        TABLE_INSERT R23 R26 ; [+4]
      173 MOVE                             R25 R23
      174 GETIMPORT                        R24 K48 [table.insert]
      176 CALL                             R24 2 0
      177 MOVE                             R24 R9
      178 LOADNIL                          R25
      179 LOADNIL                          R26
      180 FORGPREP                         R24
      181 GETTABLEKS                       R30 R28 K10 ["name"]
      183 JUMPIFNOTEQKS                    R15 K16 [""] ; [+3]
      185 LOADB                            R29 1
      186 JUMP                             ; [+17]
      187 GETIMPORT                        R31 K27 [string.find]
      189 GETIMPORT                        R32 K29 [string.lower]
      191 MOVE                             R33 R30
      192 CALL                             R32 1 1
      193 GETIMPORT                        R33 K29 [string.lower]
      195 MOVE                             R34 R15
      196 CALL                             R33 1 1
      197 LOADN                            R34 1
      198 LOADB                            R35 1
      199 CALL                             R31 4 1
      200 JUMPIFNOTEQKNIL                  R31 ; [+2]
      202 LOADB                            R29 0 +1
      203 LOADB                            R29 1
      204 JUMPIFNOT                        R29 ; [+48]
      205 DUPTABLE                         R31 K50 [{"id", "text", "icon", "isChecked"}]
      206 LOADK                            R32 K35 ["%*:%*"]
      207 GETTABLEKS                       R34 R28 K8 ["creatorType"]
      209 GETTABLEKS                       R34 R34 K36 ["Name"]
      211 GETTABLEKS                       R35 R28 K9 ["id"]
      213 NAMECALL                         R32 R32 K37 ["format"]
      215 CALL                             R32 3 1
      216 SETTABLEKS                       R32 R31 K9 ["id"]
      218 GETTABLEKS                       R32 R28 K10 ["name"]
      220 SETTABLEKS                       R32 R31 K30 ["text"]
      222 GETUPVAL                         R32 10
      223 GETUPVAL                         R34 11
      224 GETTABLEKS                       R35 R28 K8 ["creatorType"]
      226 GETTABLE                         R33 R34 R35
      227 GETTABLEKS                       R34 R28 K9 ["id"]
      229 GETUPVAL                         R35 12
      230 GETTABLEKS                       R35 R35 K51 ["Medium"]
      232 CALL                             R32 3 1
      233 SETTABLEKS                       R32 R31 K49 ["icon"]
      235 MOVE                             R32 R19
      236 JUMPIFNOT                        R32 ; [+8]
      237 GETTABLEKS                       R33 R17 K9 ["id"]
      239 GETTABLEKS                       R34 R28 K9 ["id"]
      241 JUMPIFEQ                         R33 R34 ; [+2]
      243 LOADB                            R32 0 +1
      244 LOADB                            R32 1
      245 SETTABLEKS                       R32 R31 K33 ["isChecked"]
      247 FASTCALL2                        TABLE_INSERT R23 R31 ; [+4]
      249 MOVE                             R30 R23
      250 GETIMPORT                        R29 K48 [table.insert]
      252 CALL                             R29 2 0
      253 FORGLOOP                         R24 2 ; [-73]
      255 LOADB                            R24 0
      256 MOVE                             R25 R23
      257 LOADNIL                          R26
      258 LOADNIL                          R27
      259 FORGPREP                         R25
      260 GETTABLEKS                       R30 R29 K33 ["isChecked"]
      262 JUMPIFNOT                        R30 ; [+2]
      263 LOADB                            R24 1
      264 JUMP                             ; [+2]
      265 FORGLOOP                         R25 2 ; [-6]
      267 NEWTABLE                         R25 0 0
      269 MOVE                             R26 R23
      270 LOADNIL                          R27
      271 LOADNIL                          R28
      272 FORGPREP                         R26
      273 GETTABLEKS                       R31 R30 K9 ["id"]
      275 GETUPVAL                         R32 4
      276 GETTABLEKS                       R32 R32 K52 ["createElement"]
      278 GETUPVAL                         R33 13
      279 GETTABLEKS                       R33 R33 K53 ["Item"]
      281 DUPTABLE                         R34 K60 [{["LayoutOrder"], ["id"], ["text"], ["icon"], ["leading"], ["trailing"], ["isChecked"], ["menuHasLeading"] = True, ["menuHasCheck"], ["testId"] = "--foundation-menu-item"}]
      282 SETTABLEKS                       R29 R34 K54 ["LayoutOrder"]
      284 GETTABLEKS                       R35 R30 K9 ["id"]
      286 SETTABLEKS                       R35 R34 K9 ["id"]
      288 GETTABLEKS                       R35 R30 K30 ["text"]
      290 SETTABLEKS                       R35 R34 K30 ["text"]
      292 GETTABLEKS                       R35 R30 K49 ["icon"]
      294 SETTABLEKS                       R35 R34 K49 ["icon"]
      296 GETTABLEKS                       R35 R30 K31 ["leading"]
      298 SETTABLEKS                       R35 R34 K31 ["leading"]
      300 GETTABLEKS                       R35 R30 K32 ["trailing"]
      302 SETTABLEKS                       R35 R34 K32 ["trailing"]
      304 GETTABLEKS                       R35 R30 K33 ["isChecked"]
      306 SETTABLEKS                       R35 R34 K33 ["isChecked"]
      308 SETTABLEKS                       R24 R34 K57 ["menuHasCheck"]
      310 CALL                             R32 2 1
      311 SETTABLE                         R32 R25 R31
      312 FORGLOOP                         R26 2 ; [-40]
      314 LENGTH                           R27 R23
      315 LOADN                            R28 0
      316 JUMPIFNOTLT                      R28 R27 ; [+3]
      318 MOVE                             R26 R25
      319 JUMP                             ; [+16]
      320 DUPTABLE                         R26 K62 [{"Empty"}]
      321 GETUPVAL                         R27 4
      322 GETTABLEKS                       R27 R27 K52 ["createElement"]
      324 GETUPVAL                         R28 14
      325 DUPTABLE                         R29 K67 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "size-full-0 auto-y text-body-medium text-wrap text-align-x-left content-default"}]
      326 LOADK                            R32 K20 ["Plugin"]
      327 LOADK                            R33 K68 ["NoSearchResultsToDisplay"]
      328 NAMECALL                         R30 R1 K22 ["getText"]
      330 CALL                             R30 3 1
      331 SETTABLEKS                       R30 R29 K64 ["Text"]
      333 CALL                             R27 2 1
      334 SETTABLEKS                       R27 R26 K61 ["Empty"]
      336 GETUPVAL                         R27 4
      337 GETTABLEKS                       R27 R27 K52 ["createElement"]
      339 GETUPVAL                         R28 15
      340 GETTABLEKS                       R28 R28 K69 ["Root"]
      342 DUPTABLE                         R29 K72 [{["isOpen"], ["testId"] = "--start-page-GroupSelector-Menu"}]
      343 SETTABLEKS                       R13 R29 K70 ["isOpen"]
      345 DUPTABLE                         R30 K75 [{"Anchor", "Content"}]
      346 GETUPVAL                         R31 4
      347 GETTABLEKS                       R31 R31 K52 ["createElement"]
      349 GETUPVAL                         R32 15
      350 GETTABLEKS                       R32 R32 K73 ["Anchor"]
      352 DUPTABLE                         R33 K76 [{"LayoutOrder"}]
      353 GETTABLEKS                       R34 R0 K54 ["LayoutOrder"]
      355 SETTABLEKS                       R34 R33 K54 ["LayoutOrder"]
      357 DUPTABLE                         R34 K78 [{"Trigger"}]
      358 GETUPVAL                         R35 4
      359 GETTABLEKS                       R35 R35 K52 ["createElement"]
      361 GETUPVAL                         R36 16
      362 DUPTABLE                         R37 K83 [{["Size"], ["onActivated"], ["onStateChanged"], ["tag"], ["testId"] = "--start-page-GroupSelector"}]
      363 GETTABLEKS                       R39 R0 K84 ["isCollapsed"]
      365 JUMPIFNOT                        R39 ; [+6]
      366 GETIMPORT                        R38 K87 [UDim2.fromOffset]
      368 LOADN                            R39 0
      369 LOADN                            R40 0
      370 CALL                             R38 2 1
      371 JUMP                             ; [+5]
      372 GETIMPORT                        R38 K87 [UDim2.fromOffset]
      374 GETUPVAL                         R39 17
      375 LOADN                            R40 0
      376 CALL                             R38 2 1
      377 SETTABLEKS                       R38 R37 K79 ["Size"]
      379 NEWCLOSURE                       R38 P4
      380 CAPTURE                          VAL R13
      381 CAPTURE                          VAL R14
      382 CAPTURE                          VAL R16
      383 SETTABLEKS                       R38 R37 K80 ["onActivated"]
      385 SETTABLEKS                       R4 R37 K81 ["onStateChanged"]
      387 NEWTABLE                         R38 4 0
      389 LOADB                            R39 1
      390 SETTABLEKS                       R39 R38 K88 ["row align-x-left align-y-center gap-medium padding-medium radius-medium"]
      392 GETTABLEKS                       R39 R0 K84 ["isCollapsed"]
      394 SETTABLEKS                       R39 R38 K89 ["auto-xy"]
      396 GETTABLEKS                       R40 R0 K84 ["isCollapsed"]
      398 NOT                              R39 R40
      399 SETTABLEKS                       R39 R38 K90 ["auto-y"]
      401 SETTABLEKS                       R38 R37 K65 ["tag"]
      403 DUPTABLE                         R38 K93 [{"Icon", "Name", "Chevron"}]
      404 GETUPVAL                         R39 4
      405 GETTABLEKS                       R39 R39 K52 ["createElement"]
      407 GETUPVAL                         R40 18
      408 DUPTABLE                         R41 K96 [{["creatorType"], ["id"], ["layoutOrder"] = 1, ["testId"] = "--start-page-GroupSelector-TriggerIcon"}]
      409 GETTABLEKS                       R42 R17 K8 ["creatorType"]
      411 SETTABLEKS                       R42 R41 K8 ["creatorType"]
      413 GETTABLEKS                       R42 R17 K9 ["id"]
      415 SETTABLEKS                       R42 R41 K9 ["id"]
      417 CALL                             R39 2 1
      418 SETTABLEKS                       R39 R38 K91 ["Icon"]
      420 GETTABLEKS                       R40 R0 K84 ["isCollapsed"]
      422 JUMPIFNOT                        R40 ; [+2]
      423 LOADNIL                          R39
      424 JUMP                             ; [+10]
      425 GETUPVAL                         R39 4
      426 GETTABLEKS                       R39 R39 K52 ["createElement"]
      428 GETUPVAL                         R40 14
      429 DUPTABLE                         R41 K99 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "grow shrink text-title-medium text-align-x-left text-truncate-end content-emphasis"}]
      430 GETTABLEKS                       R42 R17 K10 ["name"]
      432 SETTABLEKS                       R42 R41 K64 ["Text"]
      434 CALL                             R39 2 1
      435 SETTABLEKS                       R39 R38 K36 ["Name"]
      437 GETTABLEKS                       R40 R0 K84 ["isCollapsed"]
      439 JUMPIFNOT                        R40 ; [+2]
      440 LOADNIL                          R39
      441 JUMP                             ; [+34]
      442 GETUPVAL                         R39 4
      443 GETTABLEKS                       R39 R39 K52 ["createElement"]
      445 GETUPVAL                         R40 19
      446 DUPTABLE                         R41 K103 [{["LayoutOrder"] = 3, ["name"], ["size"], ["variant"], ["style"]}]
      447 JUMPIFNOT                        R13 ; [+4]
      448 GETUPVAL                         R42 20
      449 GETTABLEKS                       R42 R42 K104 ["ChevronSmallUp"]
      451 JUMP                             ; [+3]
      452 GETUPVAL                         R42 20
      453 GETTABLEKS                       R42 R42 K105 ["ChevronSmallDown"]
      455 SETTABLEKS                       R42 R41 K10 ["name"]
      457 GETUPVAL                         R42 21
      458 GETTABLEKS                       R42 R42 K106 ["Small"]
      460 SETTABLEKS                       R42 R41 K101 ["size"]
      462 GETUPVAL                         R42 22
      463 GETTABLEKS                       R42 R42 K107 ["Filled"]
      465 SETTABLEKS                       R42 R41 K43 ["variant"]
      467 GETTABLEKS                       R42 R2 K108 ["Color"]
      469 GETTABLEKS                       R42 R42 K74 ["Content"]
      471 GETTABLEKS                       R42 R42 K109 ["Emphasis"]
      473 SETTABLEKS                       R42 R41 K102 ["style"]
      475 CALL                             R39 2 1
      476 SETTABLEKS                       R39 R38 K92 ["Chevron"]
      478 CALL                             R35 3 1
      479 SETTABLEKS                       R35 R34 K77 ["Trigger"]
      481 CALL                             R31 3 1
      482 SETTABLEKS                       R31 R30 K73 ["Anchor"]
      484 GETUPVAL                         R31 4
      485 GETTABLEKS                       R31 R31 K52 ["createElement"]
      487 GETUPVAL                         R32 15
      488 GETTABLEKS                       R32 R32 K74 ["Content"]
      490 DUPTABLE                         R33 K117 [{["side"], ["align"], ["hasArrow"] = False, ["onPressedOutside"], ["backgroundStyle"], ["radius"]}]
      491 DUPTABLE                         R34 K120 [{"position", "offset"}]
      492 GETUPVAL                         R35 23
      493 GETTABLEKS                       R35 R35 K121 ["Bottom"]
      495 SETTABLEKS                       R35 R34 K118 ["position"]
      497 GETTABLEKS                       R36 R2 K122 ["Stroke"]
      499 GETTABLEKS                       R36 R36 K123 ["Standard"]
      501 GETTABLEKS                       R37 R2 K124 ["Padding"]
      503 GETTABLEKS                       R37 R37 K106 ["Small"]
      505 ADD                              R35 R36 R37
      506 SETTABLEKS                       R35 R34 K119 ["offset"]
      508 SETTABLEKS                       R34 R33 K110 ["side"]
      510 GETUPVAL                         R34 24
      511 GETTABLEKS                       R34 R34 K125 ["Start"]
      513 SETTABLEKS                       R34 R33 K111 ["align"]
      515 SETTABLEKS                       R20 R33 K114 ["onPressedOutside"]
      517 GETTABLEKS                       R34 R2 K108 ["Color"]
      519 GETTABLEKS                       R34 R34 K126 ["Surface"]
      521 GETTABLEKS                       R34 R34 K127 ["Surface_200"]
      523 SETTABLEKS                       R34 R33 K115 ["backgroundStyle"]
      525 GETUPVAL                         R34 25
      526 GETTABLEKS                       R34 R34 K51 ["Medium"]
      528 SETTABLEKS                       R34 R33 K116 ["radius"]
      530 DUPTABLE                         R34 K129 [{"Panel"}]
      531 GETUPVAL                         R35 4
      532 GETTABLEKS                       R35 R35 K52 ["createElement"]
      534 GETUPVAL                         R36 16
      535 DUPTABLE                         R37 K131 [{["Size"], ["backgroundStyle"], ["tag"] = "col auto-y radius-medium clip"}]
      536 GETIMPORT                        R38 K87 [UDim2.fromOffset]
      538 GETUPVAL                         R39 17
      539 LOADN                            R40 0
      540 CALL                             R38 2 1
      541 SETTABLEKS                       R38 R37 K79 ["Size"]
      543 GETTABLEKS                       R38 R2 K108 ["Color"]
      545 GETTABLEKS                       R38 R38 K126 ["Surface"]
      547 GETTABLEKS                       R38 R38 K127 ["Surface_200"]
      549 SETTABLEKS                       R38 R37 K115 ["backgroundStyle"]
      551 DUPTABLE                         R38 K134 [{"Search", "Menu"}]
      552 GETUPVAL                         R39 4
      553 GETTABLEKS                       R39 R39 K52 ["createElement"]
      555 GETUPVAL                         R40 16
      556 DUPTABLE                         R41 K137 [{["LayoutOrder"] = 1, ["tag"] = "size-full-0 auto-y padding-small", ["testId"] = "--start-page-GroupSelector-Search"}]
      557 DUPTABLE                         R42 K139 [{"Input"}]
      558 GETUPVAL                         R43 4
      559 GETTABLEKS                       R43 R43 K52 ["createElement"]
      561 GETUPVAL                         R44 26
      562 DUPTABLE                         R45 K144 [{"text", "width", "size", "shape", "placeholder", "onChanged"}]
      563 SETTABLEKS                       R15 R45 K30 ["text"]
      565 GETIMPORT                        R46 K147 [UDim.new]
      567 LOADN                            R47 1
      568 LOADN                            R48 0
      569 CALL                             R46 2 1
      570 SETTABLEKS                       R46 R45 K140 ["width"]
      572 GETUPVAL                         R46 27
      573 GETTABLEKS                       R46 R46 K106 ["Small"]
      575 SETTABLEKS                       R46 R45 K101 ["size"]
      577 GETUPVAL                         R46 28
      578 GETTABLEKS                       R46 R46 K148 ["Rounded"]
      580 SETTABLEKS                       R46 R45 K141 ["shape"]
      582 LOADK                            R48 K20 ["Plugin"]
      583 LOADK                            R49 K132 ["Search"]
      584 NAMECALL                         R46 R1 K22 ["getText"]
      586 CALL                             R46 3 1
      587 SETTABLEKS                       R46 R45 K142 ["placeholder"]
      589 SETTABLEKS                       R16 R45 K143 ["onChanged"]
      591 CALL                             R43 2 1
      592 SETTABLEKS                       R43 R42 K138 ["Input"]
      594 CALL                             R39 3 1
      595 SETTABLEKS                       R39 R38 K132 ["Search"]
      597 GETUPVAL                         R39 4
      598 GETTABLEKS                       R39 R39 K52 ["createElement"]
      600 GETUPVAL                         R40 13
      601 GETTABLEKS                       R40 R40 K69 ["Root"]
      603 DUPTABLE                         R41 K150 [{["LayoutOrder"] = 2, ["size"], ["width"], ["maxHeight"], ["onActivated"]}]
      604 GETUPVAL                         R42 27
      605 GETTABLEKS                       R42 R42 K51 ["Medium"]
      607 SETTABLEKS                       R42 R41 K101 ["size"]
      609 GETIMPORT                        R42 K147 [UDim.new]
      611 LOADN                            R43 0
      612 GETUPVAL                         R44 17
      613 CALL                             R42 2 1
      614 SETTABLEKS                       R42 R41 K140 ["width"]
      616 GETUPVAL                         R43 29
      617 GETTABLEKS                       R46 R2 K124 ["Padding"]
      619 GETTABLEKS                       R46 R46 K106 ["Small"]
      621 MULK                             R45 R46 K97 [2]
      622 GETTABLEKS                       R46 R2 K79 ["Size"]
      624 GETTABLEKS                       R46 R46 K151 ["Size_800"]
      626 ADD                              R44 R45 R46
      627 SUB                              R42 R43 R44
      628 SETTABLEKS                       R42 R41 K149 ["maxHeight"]
      630 NEWCLOSURE                       R42 P5
      631 CAPTURE                          VAL R8
      632 CAPTURE                          VAL R5
      633 CAPTURE                          VAL R12
      634 CAPTURE                          VAL R14
      635 CAPTURE                          VAL R16
      636 CAPTURE                          VAL R9
      637 SETTABLEKS                       R42 R41 K80 ["onActivated"]
      639 DUPTABLE                         R42 K153 [{"Items"}]
      640 GETUPVAL                         R43 4
      641 GETTABLEKS                       R43 R43 K52 ["createElement"]
      643 GETUPVAL                         R44 13
      644 GETTABLEKS                       R44 R44 K23 ["Group"]
      646 DUPTABLE                         R45 K154 [{["LayoutOrder"] = 1}]
      647 MOVE                             R46 R26
      648 CALL                             R43 3 1
      649 SETTABLEKS                       R43 R42 K152 ["Items"]
      651 CALL                             R39 3 1
      652 SETTABLEKS                       R39 R38 K133 ["Menu"]
      654 CALL                             R35 3 1
      655 SETTABLEKS                       R35 R34 K128 ["Panel"]
      657 CALL                             R31 3 1
      658 SETTABLEKS                       R31 R30 K74 ["Content"]
      660 CALL                             R27 3 -1
      661 RETURN                           R27 -1

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
      171 DUPCLOSURE                       R35 K51 [PROTO_0]
      172 NEWTABLE                         R36 2 0
      174 GETIMPORT                        R37 K55 [Enum.CreatorType.User]
      176 GETTABLEKS                       R38 R24 K56 ["AvatarHeadShot"]
      178 SETTABLE                         R38 R36 R37
      179 GETIMPORT                        R37 K58 [Enum.CreatorType.Group]
      181 GETTABLEKS                       R38 R24 K59 ["GroupIcon"]
      183 SETTABLE                         R38 R36 R37
      184 DUPCLOSURE                       R37 K60 [PROTO_1]
      185 CAPTURE                          VAL R1
      186 CAPTURE                          VAL R7
      187 CAPTURE                          VAL R13
      188 CAPTURE                          VAL R36
      189 CAPTURE                          VAL R25
      190 DUPCLOSURE                       R38 K61 [PROTO_9]
      191 CAPTURE                          VAL R3
      192 CAPTURE                          VAL R12
      193 CAPTURE                          VAL R27
      194 CAPTURE                          VAL R26
      195 CAPTURE                          VAL R1
      196 CAPTURE                          VAL R29
      197 CAPTURE                          VAL R30
      198 CAPTURE                          VAL R28
      199 CAPTURE                          VAL R18
      200 CAPTURE                          VAL R17
      201 CAPTURE                          VAL R13
      202 CAPTURE                          VAL R36
      203 CAPTURE                          VAL R25
      204 CAPTURE                          VAL R11
      205 CAPTURE                          VAL R6
      206 CAPTURE                          VAL R9
      207 CAPTURE                          VAL R5
      208 CAPTURE                          VAL R33
      209 CAPTURE                          VAL R37
      210 CAPTURE                          VAL R8
      211 CAPTURE                          VAL R14
      212 CAPTURE                          VAL R15
      213 CAPTURE                          VAL R16
      214 CAPTURE                          VAL R21
      215 CAPTURE                          VAL R20
      216 CAPTURE                          VAL R22
      217 CAPTURE                          VAL R10
      218 CAPTURE                          VAL R19
      219 CAPTURE                          VAL R23
      220 CAPTURE                          VAL R34
      221 RETURN                           R38 1
