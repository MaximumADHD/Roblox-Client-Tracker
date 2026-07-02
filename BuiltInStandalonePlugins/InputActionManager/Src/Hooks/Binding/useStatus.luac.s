PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 JUMPIF                           R1 ; [+23]
        4 GETUPVAL                         R1 1
        5 JUMPIFNOT                        R1 ; [+17]
        6 GETUPVAL                         R1 2
        7 JUMPIFEQKS                       R1 K0 ["primaryModifier"] ; [+15]
        9 GETUPVAL                         R1 2
       10 JUMPIFEQKS                       R1 K1 ["secondaryModifier"] ; [+12]
       12 MOVE                             R2 R0
       13 GETUPVAL                         R3 3
       14 GETUPVAL                         R4 4
       15 LOADK                            R5 K2 ["NO_KEYCODE"]
       16 LOADNIL                          R6
       17 GETUPVAL                         R7 2
       18 CALL                             R3 4 -1
       19 FASTCALL                         TABLE_INSERT ; [+2]
       20 GETIMPORT                        R1 K5 [table.insert]
       22 CALL                             R1 -1 0
       23 GETUPVAL                         R1 5
       24 MOVE                             R2 R0
       25 CALL                             R1 1 0
       26 RETURN                           R0 0
       27 GETUPVAL                         R1 2
       28 JUMPIFEQKS                       R1 K0 ["primaryModifier"] ; [+4]
       30 GETUPVAL                         R1 2
       31 JUMPIFNOTEQKS                    R1 K1 ["secondaryModifier"] ; [+28]
       33 GETUPVAL                         R1 0
       34 GETTABLEKS                       R1 R1 K0 ["primaryModifier"]
       36 GETUPVAL                         R2 0
       37 GETTABLEKS                       R2 R2 K1 ["secondaryModifier"]
       39 JUMPIFNOTEQ                      R1 R2 ; [+54]
       41 GETUPVAL                         R1 0
       42 GETTABLEKS                       R1 R1 K0 ["primaryModifier"]
       44 GETIMPORT                        R2 K9 [Enum.KeyCode.Unknown]
       46 JUMPIFEQ                         R1 R2 ; [+47]
       48 MOVE                             R2 R0
       49 GETUPVAL                         R3 3
       50 GETUPVAL                         R4 4
       51 LOADK                            R5 K10 ["MODIFIER_KEYCODE"]
       52 LOADNIL                          R6
       53 GETUPVAL                         R7 2
       54 CALL                             R3 4 -1
       55 FASTCALL                         TABLE_INSERT ; [+2]
       56 GETIMPORT                        R1 K5 [table.insert]
       58 CALL                             R1 -1 0
       59 JUMP                             ; [+34]
       60 GETUPVAL                         R1 0
       61 GETTABLEKS                       R1 R1 K0 ["primaryModifier"]
       63 GETUPVAL                         R3 0
       64 GETUPVAL                         R4 2
       65 GETTABLE                         R2 R3 R4
       66 JUMPIFEQ                         R1 R2 ; [+9]
       68 GETUPVAL                         R1 0
       69 GETTABLEKS                       R1 R1 K1 ["secondaryModifier"]
       71 GETUPVAL                         R3 0
       72 GETUPVAL                         R4 2
       73 GETTABLE                         R2 R3 R4
       74 JUMPIFNOTEQ                      R1 R2 ; [+19]
       76 GETUPVAL                         R2 0
       77 GETUPVAL                         R3 2
       78 GETTABLE                         R1 R2 R3
       79 GETIMPORT                        R2 K9 [Enum.KeyCode.Unknown]
       81 JUMPIFEQ                         R1 R2 ; [+12]
       83 MOVE                             R2 R0
       84 GETUPVAL                         R3 3
       85 GETUPVAL                         R4 4
       86 LOADK                            R5 K10 ["MODIFIER_KEYCODE"]
       87 LOADNIL                          R6
       88 GETUPVAL                         R7 2
       89 CALL                             R3 4 -1
       90 FASTCALL                         TABLE_INSERT ; [+2]
       91 GETIMPORT                        R1 K5 [table.insert]
       93 CALL                             R1 -1 0
       94 GETUPVAL                         R1 6
       95 CALL                             R1 0 1
       96 JUMPIFNOT                        R1 ; [+42]
       97 GETIMPORT                        R1 K12 [table.find]
       99 GETUPVAL                         R2 7
      100 GETUPVAL                         R3 2
      101 CALL                             R1 2 1
      102 JUMPIFEQKNIL                     R1 ; [+36]
      104 GETUPVAL                         R2 0
      105 GETUPVAL                         R3 2
      106 GETTABLE                         R1 R2 R3
      107 GETIMPORT                        R2 K9 [Enum.KeyCode.Unknown]
      109 JUMPIFEQ                         R1 R2 ; [+29]
      111 GETUPVAL                         R1 7
      112 LOADNIL                          R2
      113 LOADNIL                          R3
      114 FORGPREP                         R1
      115 GETUPVAL                         R6 2
      116 JUMPIFEQ                         R5 R6 ; [+20]
      118 GETUPVAL                         R7 0
      119 GETTABLE                         R6 R7 R5
      120 GETUPVAL                         R8 0
      121 GETUPVAL                         R9 2
      122 GETTABLE                         R7 R8 R9
      123 JUMPIFNOTEQ                      R6 R7 ; [+13]
      125 MOVE                             R7 R0
      126 GETUPVAL                         R8 3
      127 GETUPVAL                         R9 4
      128 LOADK                            R10 K13 ["COMPOSITE_KEYCODE"]
      129 LOADNIL                          R11
      130 GETUPVAL                         R12 2
      131 CALL                             R8 4 -1
      132 FASTCALL                         TABLE_INSERT ; [+2]
      133 GETIMPORT                        R6 K5 [table.insert]
      135 CALL                             R6 -1 0
      136 JUMP                             ; [+2]
      137 FORGLOOP                         R1 2 ; [-23]
      139 GETUPVAL                         R2 0
      140 GETUPVAL                         R3 2
      141 GETTABLE                         R1 R2 R3
      142 GETUPVAL                         R2 8
      143 JUMPIFNOTEQKS                    R2 K14 ["Touch"] ; [+25]
      145 GETUPVAL                         R2 1
      146 JUMPIFNOT                        R2 ; [+46]
      147 GETUPVAL                         R2 9
      148 GETIMPORT                        R3 K17 [Enum.InputActionType.Bool]
      150 JUMPIFNOTEQ                      R2 R3 ; [+42]
      152 GETUPVAL                         R2 0
      153 GETTABLEKS                       R2 R2 K18 ["uiButton"]
      155 JUMPIFNOTEQKNIL                  R2 ; [+37]
      157 MOVE                             R3 R0
      158 GETUPVAL                         R4 3
      159 GETUPVAL                         R5 4
      160 LOADK                            R6 K2 ["NO_KEYCODE"]
      161 LOADNIL                          R7
      162 GETUPVAL                         R8 2
      163 CALL                             R4 4 -1
      164 FASTCALL                         TABLE_INSERT ; [+2]
      165 GETIMPORT                        R2 K5 [table.insert]
      167 CALL                             R2 -1 0
      168 JUMP                             ; [+24]
      169 GETUPVAL                         R2 1
      170 JUMPIFNOT                        R2 ; [+22]
      171 JUMPIFNOT                        R1 ; [+4]
      172 GETIMPORT                        R2 K9 [Enum.KeyCode.Unknown]
      174 JUMPIFNOTEQ                      R1 R2 ; [+18]
      176 GETUPVAL                         R2 2
      177 JUMPIFEQKS                       R2 K0 ["primaryModifier"] ; [+15]
      179 GETUPVAL                         R2 2
      180 JUMPIFEQKS                       R2 K1 ["secondaryModifier"] ; [+12]
      182 MOVE                             R3 R0
      183 GETUPVAL                         R4 3
      184 GETUPVAL                         R5 4
      185 LOADK                            R6 K2 ["NO_KEYCODE"]
      186 LOADNIL                          R7
      187 GETUPVAL                         R8 2
      188 CALL                             R4 4 -1
      189 FASTCALL                         TABLE_INSERT ; [+2]
      190 GETIMPORT                        R2 K5 [table.insert]
      192 CALL                             R2 -1 0
      193 GETUPVAL                         R2 6
      194 CALL                             R2 0 1
      195 JUMPIFNOT                        R2 ; [+110]
      196 GETUPVAL                         R2 10
      197 GETUPVAL                         R3 0
      198 GETUPVAL                         R4 2
      199 GETUPVAL                         R5 8
      200 CALL                             R2 3 1
      201 JUMPIFNOT                        R2 ; [+189]
      202 GETUPVAL                         R3 11
      203 GETTABLEKS                       R3 R3 K19 ["getBindingUsage"]
      205 GETUPVAL                         R4 12
      206 MOVE                             R5 R2
      207 CALL                             R3 2 1
      208 NEWTABLE                         R4 0 0
      210 NEWTABLE                         R5 0 0
      212 MOVE                             R6 R3
      213 LOADNIL                          R7
      214 LOADNIL                          R8
      215 FORGPREP                         R6
      216 GETUPVAL                         R11 0
      217 GETTABLEKS                       R11 R11 K20 ["uuid"]
      219 JUMPIFEQ                         R10 R11 ; [+30]
      221 GETUPVAL                         R11 13
      222 GETTABLEKS                       R11 R11 K21 ["getBinding"]
      224 MOVE                             R12 R10
      225 CALL                             R11 1 1
      226 JUMPIFNOT                        R11 ; [+23]
      227 GETUPVAL                         R12 13
      228 GETTABLEKS                       R12 R12 K22 ["getAction"]
      230 GETTABLEKS                       R13 R11 K23 ["parentUuid"]
      232 CALL                             R12 1 1
      233 JUMPIFNOT                        R12 ; [+16]
      234 GETTABLEKS                       R14 R12 K24 ["name"]
      236 GETTABLE                         R13 R5 R14
      237 JUMPIF                           R13 ; [+12]
      238 GETTABLEKS                       R13 R12 K24 ["name"]
      240 LOADB                            R14 1
      241 SETTABLE                         R14 R5 R13
      242 GETTABLEKS                       R15 R12 K24 ["name"]
      244 FASTCALL2                        TABLE_INSERT R4 R15 ; [+4]
      246 MOVE                             R14 R4
      247 GETIMPORT                        R13 K5 [table.insert]
      249 CALL                             R13 2 0
      250 FORGLOOP                         R6 2 ; [-35]
      252 LENGTH                           R6 R4
      253 LOADN                            R7 0
      254 JUMPIFNOTLT                      R7 R6 ; [+136]
      256 GETUPVAL                         R6 14
      257 GETUPVAL                         R7 0
      258 MOVE                             R8 R2
      259 CALL                             R6 2 2
      260 JUMPIFNOTEQKS                    R6 K25 ["DUPLICATE_KEYCODE"] ; [+22]
      262 MOVE                             R9 R0
      263 GETUPVAL                         R10 3
      264 GETUPVAL                         R11 4
      265 MOVE                             R12 R6
      266 DUPTABLE                         R13 K28 [{"keycode", "actions"}]
      267 SETTABLEKS                       R7 R13 K26 ["keycode"]
      269 GETIMPORT                        R14 K30 [table.concat]
      271 MOVE                             R15 R4
      272 LOADK                            R16 K31 [", "]
      273 CALL                             R14 2 1
      274 SETTABLEKS                       R14 R13 K27 ["actions"]
      276 GETUPVAL                         R14 2
      277 CALL                             R10 4 -1
      278 FASTCALL                         TABLE_INSERT ; [+2]
      279 GETIMPORT                        R8 K5 [table.insert]
      281 CALL                             R8 -1 0
      282 JUMP                             ; [+108]
      283 JUMPIFNOTEQKS                    R6 K32 ["DUPLICATE_UI_BUTTON"] ; [+107]
      285 MOVE                             R9 R0
      286 GETUPVAL                         R10 3
      287 GETUPVAL                         R11 4
      288 MOVE                             R12 R6
      289 DUPTABLE                         R13 K33 [{"uiButton", "actions"}]
      290 SETTABLEKS                       R7 R13 K18 ["uiButton"]
      292 GETIMPORT                        R14 K30 [table.concat]
      294 MOVE                             R15 R4
      295 LOADK                            R16 K31 [", "]
      296 CALL                             R14 2 1
      297 SETTABLEKS                       R14 R13 K27 ["actions"]
      299 GETUPVAL                         R14 2
      300 CALL                             R10 4 -1
      301 FASTCALL                         TABLE_INSERT ; [+2]
      302 GETIMPORT                        R8 K5 [table.insert]
      304 CALL                             R8 -1 0
      305 JUMP                             ; [+85]
      306 JUMPIFNOT                        R1 ; [+4]
      307 GETIMPORT                        R2 K9 [Enum.KeyCode.Unknown]
      309 JUMPIFNOTEQ                      R1 R2 ; [+5]
      311 GETUPVAL                         R2 5
      312 MOVE                             R3 R0
      313 CALL                             R2 1 0
      314 RETURN                           R0 0
      315 GETUPVAL                         R2 11
      316 GETTABLEKS                       R2 R2 K19 ["getBindingUsage"]
      318 GETUPVAL                         R3 12
      319 MOVE                             R4 R1
      320 CALL                             R2 2 1
      321 NEWTABLE                         R3 0 0
      323 NEWTABLE                         R4 0 0
      325 MOVE                             R5 R2
      326 LOADNIL                          R6
      327 LOADNIL                          R7
      328 FORGPREP                         R5
      329 GETUPVAL                         R10 0
      330 GETTABLEKS                       R10 R10 K20 ["uuid"]
      332 JUMPIFEQ                         R9 R10 ; [+30]
      334 GETUPVAL                         R10 13
      335 GETTABLEKS                       R10 R10 K21 ["getBinding"]
      337 MOVE                             R11 R9
      338 CALL                             R10 1 1
      339 JUMPIFNOT                        R10 ; [+23]
      340 GETUPVAL                         R11 13
      341 GETTABLEKS                       R11 R11 K22 ["getAction"]
      343 GETTABLEKS                       R12 R10 K23 ["parentUuid"]
      345 CALL                             R11 1 1
      346 JUMPIFNOT                        R11 ; [+16]
      347 GETTABLEKS                       R13 R11 K24 ["name"]
      349 GETTABLE                         R12 R4 R13
      350 JUMPIF                           R12 ; [+12]
      351 GETTABLEKS                       R12 R11 K24 ["name"]
      353 LOADB                            R13 1
      354 SETTABLE                         R13 R4 R12
      355 GETTABLEKS                       R14 R11 K24 ["name"]
      357 FASTCALL2                        TABLE_INSERT R3 R14 ; [+4]
      359 MOVE                             R13 R3
      360 GETIMPORT                        R12 K5 [table.insert]
      362 CALL                             R12 2 0
      363 FORGLOOP                         R5 2 ; [-35]
      365 LENGTH                           R5 R3
      366 LOADN                            R6 0
      367 JUMPIFNOTLT                      R6 R5 ; [+23]
      369 MOVE                             R6 R0
      370 GETUPVAL                         R7 3
      371 GETUPVAL                         R8 4
      372 LOADK                            R9 K25 ["DUPLICATE_KEYCODE"]
      373 DUPTABLE                         R10 K28 [{"keycode", "actions"}]
      374 GETTABLEKS                       R11 R1 K34 ["Name"]
      376 SETTABLEKS                       R11 R10 K26 ["keycode"]
      378 GETIMPORT                        R11 K30 [table.concat]
      380 MOVE                             R12 R3
      381 LOADK                            R13 K31 [", "]
      382 CALL                             R11 2 1
      383 SETTABLEKS                       R11 R10 K27 ["actions"]
      385 GETUPVAL                         R11 2
      386 CALL                             R7 4 -1
      387 FASTCALL                         TABLE_INSERT ; [+2]
      388 GETIMPORT                        R5 K5 [table.insert]
      390 CALL                             R5 -1 0
      391 GETUPVAL                         R2 5
      392 MOVE                             R3 R0
      393 CALL                             R2 1 0
      394 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["removeBindingUsage"]
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R2 3
        7 GETUPVAL                         R3 4
        8 GETTABLEKS                       R3 R3 K1 ["uuid"]
       10 CALL                             R0 3 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 LOADNIL                          R0
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+11]
        6 GETUPVAL                         R1 2
        7 JUMPIF                           R1 ; [+2]
        8 CLOSEUPVALS                      R0
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 3
       11 GETUPVAL                         R2 2
       12 GETUPVAL                         R3 4
       13 GETUPVAL                         R4 5
       14 CALL                             R1 3 1
       15 MOVE                             R0 R1
       16 JUMP                             ; [+11]
       17 GETUPVAL                         R1 2
       18 JUMPIFNOT                        R1 ; [+4]
       19 GETUPVAL                         R1 2
       20 GETTABLEKS                       R1 R1 K0 ["uiButton"]
       22 JUMPIFNOT                        R1 ; [+2]
       23 CLOSEUPVALS                      R0
       24 RETURN                           R0 0
       25 GETUPVAL                         R1 2
       26 GETUPVAL                         R2 4
       27 GETTABLE                         R0 R1 R2
       28 GETUPVAL                         R2 2
       29 FASTCALL2K                       ASSERT R2 K1 ; [+4]
       31 LOADK                            R3 K1 ["Binding is required"]
       32 GETIMPORT                        R1 K3 [assert]
       34 CALL                             R1 2 0
       35 JUMPIF                           R0 ; [+2]
       36 CLOSEUPVALS                      R0
       37 RETURN                           R0 0
       38 GETUPVAL                         R1 6
       39 GETTABLEKS                       R1 R1 K4 ["addBindingUsage"]
       41 GETUPVAL                         R2 7
       42 MOVE                             R3 R0
       43 GETUPVAL                         R4 2
       44 GETTABLEKS                       R4 R4 K5 ["uuid"]
       46 CALL                             R1 3 0
       47 GETUPVAL                         R1 6
       48 GETTABLEKS                       R1 R1 K6 ["onBindingUsageChanged"]
       50 GETUPVAL                         R2 7
       51 MOVE                             R3 R0
       52 NEWCLOSURE                       R4 P0
       53 CAPTURE                          UPVAL U0
       54 CALL                             R1 3 1
       55 NEWCLOSURE                       R2 P1
       56 CAPTURE                          VAL R1
       57 CAPTURE                          UPVAL U6
       58 CAPTURE                          UPVAL U7
       59 CAPTURE                          REF R0
       60 CAPTURE                          UPVAL U2
       61 CLOSEUPVALS                      R0
       62 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R7 R7 K0 ["useContext"]
        3 GETUPVAL                         R8 1
        4 GETTABLEKS                       R8 R8 K1 ["Context"]
        6 CALL                             R7 1 1
        7 GETUPVAL                         R8 0
        8 GETTABLEKS                       R8 R8 K0 ["useContext"]
       10 GETUPVAL                         R9 2
       11 GETTABLEKS                       R9 R9 K1 ["Context"]
       13 CALL                             R8 1 1
       14 GETUPVAL                         R9 0
       15 GETTABLEKS                       R9 R9 K0 ["useContext"]
       17 GETUPVAL                         R10 3
       18 GETTABLEKS                       R10 R10 K1 ["Context"]
       20 CALL                             R9 1 1
       21 GETUPVAL                         R10 0
       22 GETTABLEKS                       R10 R10 K2 ["useState"]
       24 NEWTABLE                         R11 0 0
       26 CALL                             R10 1 2
       27 JUMPIFEQKNIL                     R5 ; [+5]
       29 LOADB                            R12 0
       30 LOADN                            R13 1
       31 JUMPIFNOTLE                      R5 R13 ; [+6]
       33 GETUPVAL                         R13 4
       34 CALL                             R13 0 1
       35 NOT                              R12 R13
       36 JUMPIF                           R12 ; [+1]
       37 NOT                              R12 R6
       38 GETUPVAL                         R13 0
       39 GETTABLEKS                       R13 R13 K3 ["useCallback"]
       41 NEWCLOSURE                       R14 P0
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R12
       44 CAPTURE                          VAL R2
       45 CAPTURE                          UPVAL U5
       46 CAPTURE                          VAL R7
       47 CAPTURE                          VAL R11
       48 CAPTURE                          UPVAL U4
       49 CAPTURE                          UPVAL U6
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R4
       52 CAPTURE                          UPVAL U7
       53 CAPTURE                          VAL R8
       54 CAPTURE                          VAL R0
       55 CAPTURE                          VAL R9
       56 CAPTURE                          UPVAL U8
       57 NEWTABLE                         R15 0 8
       59 MOVE                             R16 R0
       60 MOVE                             R17 R1
       61 MOVE                             R18 R2
       62 MOVE                             R19 R3
       63 MOVE                             R20 R12
       64 MOVE                             R21 R8
       65 MOVE                             R22 R9
       66 MOVE                             R23 R6
       67 SETLIST                          R15 R16 8 [1]
       69 CALL                             R13 2 1
       70 GETUPVAL                         R14 0
       71 GETTABLEKS                       R14 R14 K4 ["useEffect"]
       73 NEWCLOSURE                       R15 P1
       74 CAPTURE                          VAL R13
       75 CAPTURE                          UPVAL U4
       76 CAPTURE                          VAL R1
       77 CAPTURE                          UPVAL U7
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R0
       82 NEWTABLE                         R16 0 7
       84 MOVE                             R17 R0
       85 MOVE                             R18 R1
       86 MOVE                             R19 R2
       87 MOVE                             R20 R3
       88 MOVE                             R21 R8
       89 MOVE                             R22 R9
       90 MOVE                             R23 R13
       91 SETLIST                          R16 R17 7 [1]
       93 CALL                             R14 2 0
       94 GETUPVAL                         R14 9
       95 MOVE                             R15 R10
       96 CALL                             R14 1 -1
       97 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["StudioFoundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Contexts"]
       23 GETTABLEKS                       R3 R3 K10 ["Localization"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K11 ["Src"]
       29 GETTABLEKS                       R5 R5 K9 ["Contexts"]
       31 GETTABLEKS                       R5 R5 K12 ["InputConfiguration"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R6 R0 K11 ["Src"]
       38 GETTABLEKS                       R6 R6 K9 ["Contexts"]
       40 GETTABLEKS                       R6 R6 K13 ["Status"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K5 [require]
       45 GETTABLEKS                       R7 R0 K11 ["Src"]
       47 GETTABLEKS                       R7 R7 K14 ["Util"]
       49 GETTABLEKS                       R7 R7 K15 ["Binding"]
       51 GETTABLEKS                       R7 R7 K16 ["createStatusEntry"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K5 [require]
       56 GETTABLEKS                       R8 R0 K11 ["Src"]
       58 GETTABLEKS                       R8 R8 K14 ["Util"]
       60 GETTABLEKS                       R8 R8 K17 ["Constants"]
       62 GETTABLEKS                       R8 R8 K18 ["CompositeProperties"]
       64 CALL                             R7 1 1
       65 GETIMPORT                        R8 K5 [require]
       67 GETTABLEKS                       R9 R0 K11 ["Src"]
       69 GETTABLEKS                       R9 R9 K14 ["Util"]
       71 GETTABLEKS                       R9 R9 K13 ["Status"]
       73 GETTABLEKS                       R9 R9 K19 ["getPrimaryStatus"]
       75 CALL                             R8 1 1
       76 GETIMPORT                        R9 K5 [require]
       78 GETTABLEKS                       R10 R0 K11 ["Src"]
       80 GETTABLEKS                       R10 R10 K14 ["Util"]
       82 GETTABLEKS                       R10 R10 K13 ["Status"]
       84 GETTABLEKS                       R10 R10 K20 ["getBindingIdentifier"]
       86 CALL                             R9 1 1
       87 GETIMPORT                        R10 K5 [require]
       89 GETTABLEKS                       R11 R0 K11 ["Src"]
       91 GETTABLEKS                       R11 R11 K14 ["Util"]
       93 GETTABLEKS                       R11 R11 K13 ["Status"]
       95 GETTABLEKS                       R11 R11 K21 ["getBindingIdentifierDisplayName"]
       97 CALL                             R10 1 1
       98 GETIMPORT                        R11 K5 [require]
      100 GETTABLEKS                       R12 R0 K11 ["Src"]
      102 GETTABLEKS                       R12 R12 K22 ["Types"]
      104 CALL                             R11 1 1
      105 GETIMPORT                        R12 K5 [require]
      107 GETTABLEKS                       R13 R0 K11 ["Src"]
      109 GETTABLEKS                       R13 R13 K23 ["Flags"]
      111 GETTABLEKS                       R13 R13 K24 ["getFFlagIAMIncorrectStatuses"]
      113 CALL                             R12 1 1
      114 DUPCLOSURE                       R13 K25 [PROTO_4]
      115 CAPTURE                          VAL R1
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R5
      118 CAPTURE                          VAL R4
      119 CAPTURE                          VAL R12
      120 CAPTURE                          VAL R6
      121 CAPTURE                          VAL R7
      122 CAPTURE                          VAL R9
      123 CAPTURE                          VAL R10
      124 CAPTURE                          VAL R8
      125 RETURN                           R13 1
