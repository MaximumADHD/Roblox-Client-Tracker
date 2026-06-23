PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 MOVE                             R4 R0
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 GETIMPORT                        R9 K2 [table.clone]
        8 MOVE                             R10 R8
        9 CALL                             R9 1 1
       10 GETTABLEKS                       R10 R9 K3 ["items"]
       12 JUMPIFNOT                        R10 ; [+14]
       13 JUMPIFNOTLE                      R2 R1 ; [+5]
       15 LOADNIL                          R10
       16 SETTABLEKS                       R10 R9 K3 ["items"]
       18 JUMP                             ; [+8]
       19 GETUPVAL                         R10 0
       20 GETTABLEKS                       R11 R9 K3 ["items"]
       22 ADDK                             R12 R1 K4 [1]
       23 MOVE                             R13 R2
       24 CALL                             R10 3 1
       25 SETTABLEKS                       R10 R9 K3 ["items"]
       27 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
       29 MOVE                             R11 R3
       30 MOVE                             R12 R9
       31 GETIMPORT                        R10 K6 [table.insert]
       33 CALL                             R10 2 0
       34 FORGLOOP                         R4 2 ; [-29]
       36 RETURN                           R3 1

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLEKS                       R8 R7 K0 ["items"]
        8 JUMPIFNOT                        R8 ; [+20]
        9 GETIMPORT                        R8 K3 [table.clone]
       11 MOVE                             R9 R7
       12 CALL                             R8 1 1
       13 GETUPVAL                         R9 0
       14 GETTABLEKS                       R10 R7 K0 ["items"]
       16 LOADN                            R11 1
       17 MOVE                             R12 R1
       18 CALL                             R9 3 1
       19 SETTABLEKS                       R9 R8 K0 ["items"]
       21 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       23 MOVE                             R10 R2
       24 MOVE                             R11 R8
       25 GETIMPORT                        R9 K5 [table.insert]
       27 CALL                             R9 2 0
       28 JUMP                             ; [+16]
       29 GETUPVAL                         R11 0
       30 NEWTABLE                         R12 0 1
       32 MOVE                             R13 R7
       33 SETLIST                          R12 R13 1 [1]
       35 LOADN                            R13 1
       36 MOVE                             R14 R1
       37 CALL                             R11 3 1
       38 GETTABLEN                        R10 R11 1
       39 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       41 MOVE                             R9 R2
       42 GETIMPORT                        R8 K5 [table.insert]
       44 CALL                             R8 2 0
       45 FORGLOOP                         R3 2 ; [-40]
       47 RETURN                           R2 1

PROTO_2:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Menu item activated by child: edit-cut"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Menu item activated by child: edit-copy"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Menu item activated by child: edit-paste"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R1 0 4
        2 DUPTABLE                         R2 K3 [{"id", "icon", "text"}]
        3 LOADK                            R3 K4 ["obby-v3"]
        4 SETTABLEKS                       R3 R2 K0 ["id"]
        6 LOADK                            R3 K5 ["check-large"]
        7 SETTABLEKS                       R3 R2 K1 ["icon"]
        9 LOADK                            R3 K6 ["v3.0 (Live)"]
       10 SETTABLEKS                       R3 R2 K2 ["text"]
       12 DUPTABLE                         R3 K7 [{"id", "text"}]
       13 LOADK                            R4 K8 ["obby-v2"]
       14 SETTABLEKS                       R4 R3 K0 ["id"]
       16 LOADK                            R4 K9 ["v2.5 (Draft)"]
       17 SETTABLEKS                       R4 R3 K2 ["text"]
       19 DUPTABLE                         R4 K7 [{"id", "text"}]
       20 LOADK                            R5 K10 ["obby-v1"]
       21 SETTABLEKS                       R5 R4 K0 ["id"]
       23 LOADK                            R5 K11 ["v1.0 (Archived)"]
       24 SETTABLEKS                       R5 R4 K2 ["text"]
       26 DUPTABLE                         R5 K3 [{"id", "icon", "text"}]
       27 LOADK                            R6 K12 ["obby-restore"]
       28 SETTABLEKS                       R6 R5 K0 ["id"]
       30 LOADK                            R6 K13 ["arrow-rotate-right"]
       31 SETTABLEKS                       R6 R5 K1 ["icon"]
       33 LOADK                            R6 K14 ["Restore Backup"]
       34 SETTABLEKS                       R6 R5 K2 ["text"]
       36 SETLIST                          R1 R2 4 [1]
       38 NEWTABLE                         R2 0 4
       40 DUPTABLE                         R3 K16 [{"id", "icon", "text", "items"}]
       41 LOADK                            R4 K17 ["place-obby"]
       42 SETTABLEKS                       R4 R3 K0 ["id"]
       44 LOADK                            R4 K18 ["globe-simplified"]
       45 SETTABLEKS                       R4 R3 K1 ["icon"]
       47 LOADK                            R4 K19 ["Obby World"]
       48 SETTABLEKS                       R4 R3 K2 ["text"]
       50 SETTABLEKS                       R1 R3 K15 ["items"]
       52 DUPTABLE                         R4 K3 [{"id", "icon", "text"}]
       53 LOADK                            R5 K20 ["place-racing"]
       54 SETTABLEKS                       R5 R4 K0 ["id"]
       56 LOADK                            R5 K18 ["globe-simplified"]
       57 SETTABLEKS                       R5 R4 K1 ["icon"]
       59 LOADK                            R5 K21 ["Racing Game"]
       60 SETTABLEKS                       R5 R4 K2 ["text"]
       62 DUPTABLE                         R5 K3 [{"id", "icon", "text"}]
       63 LOADK                            R6 K22 ["place-rpg"]
       64 SETTABLEKS                       R6 R5 K0 ["id"]
       66 LOADK                            R6 K18 ["globe-simplified"]
       67 SETTABLEKS                       R6 R5 K1 ["icon"]
       69 LOADK                            R6 K23 ["RPG Quest"]
       70 SETTABLEKS                       R6 R5 K2 ["text"]
       72 DUPTABLE                         R6 K3 [{"id", "icon", "text"}]
       73 LOADK                            R7 K24 ["place-tycoon"]
       74 SETTABLEKS                       R7 R6 K0 ["id"]
       76 LOADK                            R7 K18 ["globe-simplified"]
       77 SETTABLEKS                       R7 R6 K1 ["icon"]
       79 LOADK                            R7 K25 ["Tycoon Builder"]
       80 SETTABLEKS                       R7 R6 K2 ["text"]
       82 SETLIST                          R2 R3 4 [1]
       84 NEWTABLE                         R3 0 4
       86 DUPTABLE                         R4 K16 [{"id", "icon", "text", "items"}]
       87 LOADK                            R5 K26 ["recent-places"]
       88 SETTABLEKS                       R5 R4 K0 ["id"]
       90 LOADK                            R5 K27 ["folder"]
       91 SETTABLEKS                       R5 R4 K1 ["icon"]
       93 LOADK                            R5 K28 ["My Places"]
       94 SETTABLEKS                       R5 R4 K2 ["text"]
       96 SETTABLEKS                       R2 R4 K15 ["items"]
       98 DUPTABLE                         R5 K3 [{"id", "icon", "text"}]
       99 LOADK                            R6 K29 ["recent-team"]
      100 SETTABLEKS                       R6 R5 K0 ["id"]
      102 LOADK                            R6 K27 ["folder"]
      103 SETTABLEKS                       R6 R5 K1 ["icon"]
      105 LOADK                            R6 K30 ["Team Projects"]
      106 SETTABLEKS                       R6 R5 K2 ["text"]
      108 DUPTABLE                         R6 K7 [{"id", "text"}]
      109 LOADK                            R7 K31 ["recent-templates"]
      110 SETTABLEKS                       R7 R6 K0 ["id"]
      112 LOADK                            R7 K32 ["Templates"]
      113 SETTABLEKS                       R7 R6 K2 ["text"]
      115 DUPTABLE                         R7 K34 [{"id", "icon", "text", "isDisabled"}]
      116 LOADK                            R8 K35 ["recent-clear"]
      117 SETTABLEKS                       R8 R7 K0 ["id"]
      119 LOADK                            R8 K36 ["trash-can"]
      120 SETTABLEKS                       R8 R7 K1 ["icon"]
      122 LOADK                            R8 K37 ["Clear History"]
      123 SETTABLEKS                       R8 R7 K2 ["text"]
      125 LOADB                            R8 1
      126 SETTABLEKS                       R8 R7 K33 ["isDisabled"]
      128 SETLIST                          R3 R4 4 [1]
      130 NEWTABLE                         R4 0 4
      132 DUPTABLE                         R5 K7 [{"id", "text"}]
      133 LOADK                            R6 K38 ["export-rbxl"]
      134 SETTABLEKS                       R6 R5 K0 ["id"]
      136 LOADK                            R6 K39 ["Place File (.rbxl)"]
      137 SETTABLEKS                       R6 R5 K2 ["text"]
      139 DUPTABLE                         R6 K7 [{"id", "text"}]
      140 LOADK                            R7 K40 ["export-rbxm"]
      141 SETTABLEKS                       R7 R6 K0 ["id"]
      143 LOADK                            R7 K41 ["Model File (.rbxm)"]
      144 SETTABLEKS                       R7 R6 K2 ["text"]
      146 DUPTABLE                         R7 K3 [{"id", "icon", "text"}]
      147 LOADK                            R8 K42 ["export-png"]
      148 SETTABLEKS                       R8 R7 K0 ["id"]
      150 LOADK                            R8 K43 ["photo-camera"]
      151 SETTABLEKS                       R8 R7 K1 ["icon"]
      153 LOADK                            R8 K44 ["Screenshot (.png)"]
      154 SETTABLEKS                       R8 R7 K2 ["text"]
      156 DUPTABLE                         R8 K3 [{"id", "icon", "text"}]
      157 LOADK                            R9 K45 ["export-json"]
      158 SETTABLEKS                       R9 R8 K0 ["id"]
      160 LOADK                            R9 K46 ["code"]
      161 SETTABLEKS                       R9 R8 K1 ["icon"]
      163 LOADK                            R9 K47 ["Selection as JSON"]
      164 SETTABLEKS                       R9 R8 K2 ["text"]
      166 SETLIST                          R4 R5 4 [1]
      168 NEWTABLE                         R5 0 7
      170 DUPTABLE                         R6 K3 [{"id", "icon", "text"}]
      171 LOADK                            R7 K48 ["file-new"]
      172 SETTABLEKS                       R7 R6 K0 ["id"]
      174 LOADK                            R7 K49 ["plus-small"]
      175 SETTABLEKS                       R7 R6 K1 ["icon"]
      177 LOADK                            R7 K50 ["New Place"]
      178 SETTABLEKS                       R7 R6 K2 ["text"]
      180 DUPTABLE                         R7 K16 [{"id", "icon", "text", "items"}]
      181 LOADK                            R8 K51 ["file-open-recent"]
      182 SETTABLEKS                       R8 R7 K0 ["id"]
      184 LOADK                            R8 K52 ["clock"]
      185 SETTABLEKS                       R8 R7 K1 ["icon"]
      187 LOADK                            R8 K53 ["Open Recent"]
      188 SETTABLEKS                       R8 R7 K2 ["text"]
      190 SETTABLEKS                       R3 R7 K15 ["items"]
      192 DUPTABLE                         R8 K3 [{"id", "icon", "text"}]
      193 LOADK                            R9 K54 ["file-save"]
      194 SETTABLEKS                       R9 R8 K0 ["id"]
      196 LOADK                            R9 K55 ["floppy-disk"]
      197 SETTABLEKS                       R9 R8 K1 ["icon"]
      199 LOADK                            R9 K56 ["Save"]
      200 SETTABLEKS                       R9 R8 K2 ["text"]
      202 DUPTABLE                         R9 K57 [{"id", "text", "isDisabled"}]
      203 LOADK                            R10 K58 ["file-save-as"]
      204 SETTABLEKS                       R10 R9 K0 ["id"]
      206 LOADK                            R10 K59 ["Save As..."]
      207 SETTABLEKS                       R10 R9 K2 ["text"]
      209 LOADB                            R10 1
      210 SETTABLEKS                       R10 R9 K33 ["isDisabled"]
      212 DUPTABLE                         R10 K16 [{"id", "icon", "text", "items"}]
      213 LOADK                            R11 K60 ["file-export"]
      214 SETTABLEKS                       R11 R10 K0 ["id"]
      216 LOADK                            R11 K61 ["arrow-large-right"]
      217 SETTABLEKS                       R11 R10 K1 ["icon"]
      219 LOADK                            R11 K62 ["Export"]
      220 SETTABLEKS                       R11 R10 K2 ["text"]
      222 SETTABLEKS                       R4 R10 K15 ["items"]
      224 DUPTABLE                         R11 K3 [{"id", "icon", "text"}]
      225 LOADK                            R12 K63 ["file-publish"]
      226 SETTABLEKS                       R12 R11 K0 ["id"]
      228 LOADK                            R12 K18 ["globe-simplified"]
      229 SETTABLEKS                       R12 R11 K1 ["icon"]
      231 LOADK                            R12 K64 ["Publish to Roblox"]
      232 SETTABLEKS                       R12 R11 K2 ["text"]
      234 DUPTABLE                         R12 K3 [{"id", "icon", "text"}]
      235 LOADK                            R13 K65 ["file-close"]
      236 SETTABLEKS                       R13 R12 K0 ["id"]
      238 LOADK                            R13 K66 ["x-large"]
      239 SETTABLEKS                       R13 R12 K1 ["icon"]
      241 LOADK                            R13 K67 ["Close Place"]
      242 SETTABLEKS                       R13 R12 K2 ["text"]
      244 SETLIST                          R5 R6 7 [1]
      246 NEWTABLE                         R6 0 6
      248 DUPTABLE                         R7 K3 [{"id", "icon", "text"}]
      249 LOADK                            R8 K68 ["align-left"]
      250 SETTABLEKS                       R8 R7 K0 ["id"]
      252 LOADK                            R8 K69 ["arrow-large-left"]
      253 SETTABLEKS                       R8 R7 K1 ["icon"]
      255 LOADK                            R8 K70 ["Align Left"]
      256 SETTABLEKS                       R8 R7 K2 ["text"]
      258 DUPTABLE                         R8 K7 [{"id", "text"}]
      259 LOADK                            R9 K71 ["align-center"]
      260 SETTABLEKS                       R9 R8 K0 ["id"]
      262 LOADK                            R9 K72 ["Align Center"]
      263 SETTABLEKS                       R9 R8 K2 ["text"]
      265 DUPTABLE                         R9 K3 [{"id", "icon", "text"}]
      266 LOADK                            R10 K73 ["align-right"]
      267 SETTABLEKS                       R10 R9 K0 ["id"]
      269 LOADK                            R10 K61 ["arrow-large-right"]
      270 SETTABLEKS                       R10 R9 K1 ["icon"]
      272 LOADK                            R10 K74 ["Align Right"]
      273 SETTABLEKS                       R10 R9 K2 ["text"]
      275 DUPTABLE                         R10 K3 [{"id", "icon", "text"}]
      276 LOADK                            R11 K75 ["align-top"]
      277 SETTABLEKS                       R11 R10 K0 ["id"]
      279 LOADK                            R11 K76 ["arrow-large-up"]
      280 SETTABLEKS                       R11 R10 K1 ["icon"]
      282 LOADK                            R11 K77 ["Align Top"]
      283 SETTABLEKS                       R11 R10 K2 ["text"]
      285 DUPTABLE                         R11 K7 [{"id", "text"}]
      286 LOADK                            R12 K78 ["align-middle"]
      287 SETTABLEKS                       R12 R11 K0 ["id"]
      289 LOADK                            R12 K79 ["Align Middle"]
      290 SETTABLEKS                       R12 R11 K2 ["text"]
      292 DUPTABLE                         R12 K3 [{"id", "icon", "text"}]
      293 LOADK                            R13 K80 ["align-bottom"]
      294 SETTABLEKS                       R13 R12 K0 ["id"]
      296 LOADK                            R13 K81 ["arrow-large-down"]
      297 SETTABLEKS                       R13 R12 K1 ["icon"]
      299 LOADK                            R13 K82 ["Align Bottom"]
      300 SETTABLEKS                       R13 R12 K2 ["text"]
      302 SETLIST                          R6 R7 6 [1]
      304 NEWTABLE                         R7 0 6
      306 DUPTABLE                         R8 K16 [{"id", "icon", "text", "items"}]
      307 LOADK                            R9 K83 ["transform-align"]
      308 SETTABLEKS                       R9 R8 K0 ["id"]
      310 LOADK                            R9 K84 ["two-arrows-left-right"]
      311 SETTABLEKS                       R9 R8 K1 ["icon"]
      313 LOADK                            R9 K85 ["Align"]
      314 SETTABLEKS                       R9 R8 K2 ["text"]
      316 SETTABLEKS                       R6 R8 K15 ["items"]
      318 DUPTABLE                         R9 K3 [{"id", "icon", "text"}]
      319 LOADK                            R10 K86 ["transform-rotate-cw"]
      320 SETTABLEKS                       R10 R9 K0 ["id"]
      322 LOADK                            R10 K87 ["arrow-spin-clockwise"]
      323 SETTABLEKS                       R10 R9 K1 ["icon"]
      325 LOADK                            R10 K88 ["Rotate 90° CW"]
      326 SETTABLEKS                       R10 R9 K2 ["text"]
      328 DUPTABLE                         R10 K7 [{"id", "text"}]
      329 LOADK                            R11 K89 ["transform-rotate-ccw"]
      330 SETTABLEKS                       R11 R10 K0 ["id"]
      332 LOADK                            R11 K90 ["Rotate 90° CCW"]
      333 SETTABLEKS                       R11 R10 K2 ["text"]
      335 DUPTABLE                         R11 K3 [{"id", "icon", "text"}]
      336 LOADK                            R12 K91 ["transform-flip-h"]
      337 SETTABLEKS                       R12 R11 K0 ["id"]
      339 LOADK                            R12 K84 ["two-arrows-left-right"]
      340 SETTABLEKS                       R12 R11 K1 ["icon"]
      342 LOADK                            R12 K92 ["Flip Horizontal"]
      343 SETTABLEKS                       R12 R11 K2 ["text"]
      345 DUPTABLE                         R12 K7 [{"id", "text"}]
      346 LOADK                            R13 K93 ["transform-flip-v"]
      347 SETTABLEKS                       R13 R12 K0 ["id"]
      349 LOADK                            R13 K94 ["Flip Vertical"]
      350 SETTABLEKS                       R13 R12 K2 ["text"]
      352 DUPTABLE                         R13 K57 [{"id", "text", "isDisabled"}]
      353 LOADK                            R14 K95 ["transform-reset"]
      354 SETTABLEKS                       R14 R13 K0 ["id"]
      356 LOADK                            R14 K96 ["Reset Transform"]
      357 SETTABLEKS                       R14 R13 K2 ["text"]
      359 LOADB                            R14 1
      360 SETTABLEKS                       R14 R13 K33 ["isDisabled"]
      362 SETLIST                          R7 R8 6 [1]
      364 NEWTABLE                         R8 0 7
      366 DUPTABLE                         R9 K3 [{"id", "icon", "text"}]
      367 LOADK                            R10 K97 ["edit-undo"]
      368 SETTABLEKS                       R10 R9 K0 ["id"]
      370 LOADK                            R10 K69 ["arrow-large-left"]
      371 SETTABLEKS                       R10 R9 K1 ["icon"]
      373 LOADK                            R10 K98 ["Undo"]
      374 SETTABLEKS                       R10 R9 K2 ["text"]
      376 DUPTABLE                         R10 K3 [{"id", "icon", "text"}]
      377 LOADK                            R11 K99 ["edit-redo"]
      378 SETTABLEKS                       R11 R10 K0 ["id"]
      380 LOADK                            R11 K61 ["arrow-large-right"]
      381 SETTABLEKS                       R11 R10 K1 ["icon"]
      383 LOADK                            R11 K100 ["Redo"]
      384 SETTABLEKS                       R11 R10 K2 ["text"]
      386 DUPTABLE                         R11 K102 [{"id", "text", "onActivated"}]
      387 LOADK                            R12 K103 ["edit-cut"]
      388 SETTABLEKS                       R12 R11 K0 ["id"]
      390 LOADK                            R12 K104 ["Cut"]
      391 SETTABLEKS                       R12 R11 K2 ["text"]
      393 NEWCLOSURE                       R12 P0
      394 CAPTURE                          VAL R0
      395 SETTABLEKS                       R12 R11 K101 ["onActivated"]
      397 DUPTABLE                         R12 K102 [{"id", "text", "onActivated"}]
      398 LOADK                            R13 K105 ["edit-copy"]
      399 SETTABLEKS                       R13 R12 K0 ["id"]
      401 LOADK                            R13 K106 ["Copy"]
      402 SETTABLEKS                       R13 R12 K2 ["text"]
      404 NEWCLOSURE                       R13 P1
      405 CAPTURE                          VAL R0
      406 SETTABLEKS                       R13 R12 K101 ["onActivated"]
      408 DUPTABLE                         R13 K102 [{"id", "text", "onActivated"}]
      409 LOADK                            R14 K107 ["edit-paste"]
      410 SETTABLEKS                       R14 R13 K0 ["id"]
      412 LOADK                            R14 K108 ["Paste"]
      413 SETTABLEKS                       R14 R13 K2 ["text"]
      415 NEWCLOSURE                       R14 P2
      416 CAPTURE                          VAL R0
      417 SETTABLEKS                       R14 R13 K101 ["onActivated"]
      419 DUPTABLE                         R14 K57 [{"id", "text", "isDisabled"}]
      420 LOADK                            R15 K109 ["edit-duplicate"]
      421 SETTABLEKS                       R15 R14 K0 ["id"]
      423 LOADK                            R15 K110 ["Duplicate"]
      424 SETTABLEKS                       R15 R14 K2 ["text"]
      426 LOADB                            R15 1
      427 SETTABLEKS                       R15 R14 K33 ["isDisabled"]
      429 DUPTABLE                         R15 K16 [{"id", "icon", "text", "items"}]
      430 LOADK                            R16 K111 ["edit-transform"]
      431 SETTABLEKS                       R16 R15 K0 ["id"]
      433 LOADK                            R16 K87 ["arrow-spin-clockwise"]
      434 SETTABLEKS                       R16 R15 K1 ["icon"]
      436 LOADK                            R16 K112 ["Transform"]
      437 SETTABLEKS                       R16 R15 K2 ["text"]
      439 SETTABLEKS                       R7 R15 K15 ["items"]
      441 SETLIST                          R8 R9 7 [1]
      443 NEWTABLE                         R9 0 6
      445 DUPTABLE                         R10 K3 [{"id", "icon", "text"}]
      446 LOADK                            R11 K113 ["view-explorer"]
      447 SETTABLEKS                       R11 R10 K0 ["id"]
      449 LOADK                            R11 K27 ["folder"]
      450 SETTABLEKS                       R11 R10 K1 ["icon"]
      452 LOADK                            R11 K114 ["Explorer"]
      453 SETTABLEKS                       R11 R10 K2 ["text"]
      455 DUPTABLE                         R11 K3 [{"id", "icon", "text"}]
      456 LOADK                            R12 K115 ["view-properties"]
      457 SETTABLEKS                       R12 R11 K0 ["id"]
      459 LOADK                            R12 K116 ["rectangle-list"]
      460 SETTABLEKS                       R12 R11 K1 ["icon"]
      462 LOADK                            R12 K117 ["Properties"]
      463 SETTABLEKS                       R12 R11 K2 ["text"]
      465 DUPTABLE                         R12 K7 [{"id", "text"}]
      466 LOADK                            R13 K118 ["view-output"]
      467 SETTABLEKS                       R13 R12 K0 ["id"]
      469 LOADK                            R13 K119 ["Output"]
      470 SETTABLEKS                       R13 R12 K2 ["text"]
      472 DUPTABLE                         R13 K7 [{"id", "text"}]
      473 LOADK                            R14 K120 ["view-cmd-bar"]
      474 SETTABLEKS                       R14 R13 K0 ["id"]
      476 LOADK                            R14 K121 ["Command Bar"]
      477 SETTABLEKS                       R14 R13 K2 ["text"]
      479 DUPTABLE                         R14 K7 [{"id", "text"}]
      480 LOADK                            R15 K122 ["view-toolbox"]
      481 SETTABLEKS                       R15 R14 K0 ["id"]
      483 LOADK                            R15 K123 ["Toolbox"]
      484 SETTABLEKS                       R15 R14 K2 ["text"]
      486 DUPTABLE                         R15 K7 [{"id", "text"}]
      487 LOADK                            R16 K124 ["view-terrain"]
      488 SETTABLEKS                       R16 R15 K0 ["id"]
      490 LOADK                            R16 K125 ["Terrain Editor"]
      491 SETTABLEKS                       R16 R15 K2 ["text"]
      493 SETLIST                          R9 R10 6 [1]
      495 NEWTABLE                         R10 0 4
      497 DUPTABLE                         R11 K3 [{"id", "icon", "text"}]
      498 LOADK                            R12 K126 ["style-fire"]
      499 SETTABLEKS                       R12 R11 K0 ["id"]
      501 LOADK                            R12 K127 ["flame"]
      502 SETTABLEKS                       R12 R11 K1 ["icon"]
      504 LOADK                            R12 K128 ["Fire"]
      505 SETTABLEKS                       R12 R11 K2 ["text"]
      507 DUPTABLE                         R12 K3 [{"id", "icon", "text"}]
      508 LOADK                            R13 K129 ["style-smoke"]
      509 SETTABLEKS                       R13 R12 K0 ["id"]
      511 LOADK                            R13 K130 ["cloud"]
      512 SETTABLEKS                       R13 R12 K1 ["icon"]
      514 LOADK                            R13 K131 ["Smoke"]
      515 SETTABLEKS                       R13 R12 K2 ["text"]
      517 DUPTABLE                         R13 K3 [{"id", "icon", "text"}]
      518 LOADK                            R14 K132 ["style-sparks"]
      519 SETTABLEKS                       R14 R13 K0 ["id"]
      521 LOADK                            R14 K133 ["star"]
      522 SETTABLEKS                       R14 R13 K1 ["icon"]
      524 LOADK                            R14 K134 ["Sparks"]
      525 SETTABLEKS                       R14 R13 K2 ["text"]
      527 DUPTABLE                         R14 K3 [{"id", "icon", "text"}]
      528 LOADK                            R15 K135 ["style-custom"]
      529 SETTABLEKS                       R15 R14 K0 ["id"]
      531 LOADK                            R15 K136 ["gear"]
      532 SETTABLEKS                       R15 R14 K1 ["icon"]
      534 LOADK                            R15 K137 ["Custom..."]
      535 SETTABLEKS                       R15 R14 K2 ["text"]
      537 SETLIST                          R10 R11 4 [1]
      539 NEWTABLE                         R11 0 4
      541 DUPTABLE                         R12 K16 [{"id", "icon", "text", "items"}]
      542 LOADK                            R13 K138 ["insert-particles"]
      543 SETTABLEKS                       R13 R12 K0 ["id"]
      545 LOADK                            R13 K133 ["star"]
      546 SETTABLEKS                       R13 R12 K1 ["icon"]
      548 LOADK                            R13 K139 ["Particles"]
      549 SETTABLEKS                       R13 R12 K2 ["text"]
      551 SETTABLEKS                       R10 R12 K15 ["items"]
      553 DUPTABLE                         R13 K7 [{"id", "text"}]
      554 LOADK                            R14 K140 ["effect-explosion"]
      555 SETTABLEKS                       R14 R13 K0 ["id"]
      557 LOADK                            R14 K141 ["Explosion"]
      558 SETTABLEKS                       R14 R13 K2 ["text"]
      560 DUPTABLE                         R14 K3 [{"id", "icon", "text"}]
      561 LOADK                            R15 K142 ["effect-highlight"]
      562 SETTABLEKS                       R15 R14 K0 ["id"]
      564 LOADK                            R15 K143 ["eye"]
      565 SETTABLEKS                       R15 R14 K1 ["icon"]
      567 LOADK                            R15 K144 ["Highlight"]
      568 SETTABLEKS                       R15 R14 K2 ["text"]
      570 DUPTABLE                         R15 K7 [{"id", "text"}]
      571 LOADK                            R16 K145 ["effect-bloom"]
      572 SETTABLEKS                       R16 R15 K0 ["id"]
      574 LOADK                            R16 K146 ["Bloom"]
      575 SETTABLEKS                       R16 R15 K2 ["text"]
      577 SETLIST                          R11 R12 4 [1]
      579 NEWTABLE                         R12 0 6
      581 DUPTABLE                         R13 K16 [{"id", "icon", "text", "items"}]
      582 LOADK                            R14 K147 ["insert-effects"]
      583 SETTABLEKS                       R14 R13 K0 ["id"]
      585 LOADK                            R14 K133 ["star"]
      586 SETTABLEKS                       R14 R13 K1 ["icon"]
      588 LOADK                            R14 K148 ["Effects"]
      589 SETTABLEKS                       R14 R13 K2 ["text"]
      591 SETTABLEKS                       R11 R13 K15 ["items"]
      593 DUPTABLE                         R14 K3 [{"id", "icon", "text"}]
      594 LOADK                            R15 K149 ["insert-part"]
      595 SETTABLEKS                       R15 R14 K0 ["id"]
      597 LOADK                            R15 K150 ["cube-vertexes"]
      598 SETTABLEKS                       R15 R14 K1 ["icon"]
      600 LOADK                            R15 K151 ["Part"]
      601 SETTABLEKS                       R15 R14 K2 ["text"]
      603 DUPTABLE                         R15 K7 [{"id", "text"}]
      604 LOADK                            R16 K152 ["insert-mesh"]
      605 SETTABLEKS                       R16 R15 K0 ["id"]
      607 LOADK                            R16 K153 ["Mesh Part"]
      608 SETTABLEKS                       R16 R15 K2 ["text"]
      610 DUPTABLE                         R16 K7 [{"id", "text"}]
      611 LOADK                            R17 K154 ["insert-model"]
      612 SETTABLEKS                       R17 R16 K0 ["id"]
      614 LOADK                            R17 K155 ["Model"]
      615 SETTABLEKS                       R17 R16 K2 ["text"]
      617 DUPTABLE                         R17 K3 [{"id", "icon", "text"}]
      618 LOADK                            R18 K156 ["insert-light"]
      619 SETTABLEKS                       R18 R17 K0 ["id"]
      621 LOADK                            R18 K157 ["lightning-bolt"]
      622 SETTABLEKS                       R18 R17 K1 ["icon"]
      624 LOADK                            R18 K158 ["Light"]
      625 SETTABLEKS                       R18 R17 K2 ["text"]
      627 DUPTABLE                         R18 K34 [{"id", "icon", "text", "isDisabled"}]
      628 LOADK                            R19 K159 ["insert-sound"]
      629 SETTABLEKS                       R19 R18 K0 ["id"]
      631 LOADK                            R19 K160 ["speaker"]
      632 SETTABLEKS                       R19 R18 K1 ["icon"]
      634 LOADK                            R19 K161 ["Sound"]
      635 SETTABLEKS                       R19 R18 K2 ["text"]
      637 LOADB                            R19 1
      638 SETTABLEKS                       R19 R18 K33 ["isDisabled"]
      640 SETLIST                          R12 R13 6 [1]
      642 NEWTABLE                         R13 0 5
      644 DUPTABLE                         R14 K16 [{"id", "icon", "text", "items"}]
      645 LOADK                            R15 K162 ["insert-object"]
      646 SETTABLEKS                       R15 R14 K0 ["id"]
      648 LOADK                            R15 K150 ["cube-vertexes"]
      649 SETTABLEKS                       R15 R14 K1 ["icon"]
      651 LOADK                            R15 K163 ["Object"]
      652 SETTABLEKS                       R15 R14 K2 ["text"]
      654 SETTABLEKS                       R12 R14 K15 ["items"]
      656 DUPTABLE                         R15 K3 [{"id", "icon", "text"}]
      657 LOADK                            R16 K164 ["insert-script"]
      658 SETTABLEKS                       R16 R15 K0 ["id"]
      660 LOADK                            R16 K46 ["code"]
      661 SETTABLEKS                       R16 R15 K1 ["icon"]
      663 LOADK                            R16 K165 ["Script"]
      664 SETTABLEKS                       R16 R15 K2 ["text"]
      666 DUPTABLE                         R16 K7 [{"id", "text"}]
      667 LOADK                            R17 K166 ["insert-local-script"]
      668 SETTABLEKS                       R17 R16 K0 ["id"]
      670 LOADK                            R17 K167 ["Local Script"]
      671 SETTABLEKS                       R17 R16 K2 ["text"]
      673 DUPTABLE                         R17 K7 [{"id", "text"}]
      674 LOADK                            R18 K168 ["insert-module"]
      675 SETTABLEKS                       R18 R17 K0 ["id"]
      677 LOADK                            R18 K169 ["Module Script"]
      678 SETTABLEKS                       R18 R17 K2 ["text"]
      680 DUPTABLE                         R18 K3 [{"id", "icon", "text"}]
      681 LOADK                            R19 K170 ["insert-folder"]
      682 SETTABLEKS                       R19 R18 K0 ["id"]
      684 LOADK                            R19 K27 ["folder"]
      685 SETTABLEKS                       R19 R18 K1 ["icon"]
      687 LOADK                            R19 K171 ["Folder"]
      688 SETTABLEKS                       R19 R18 K2 ["text"]
      690 SETLIST                          R13 R14 5 [1]
      692 NEWTABLE                         R14 0 3
      694 DUPTABLE                         R15 K173 [{"title", "items"}]
      695 LOADK                            R16 K174 ["Document"]
      696 SETTABLEKS                       R16 R15 K172 ["title"]
      698 NEWTABLE                         R16 0 2
      700 DUPTABLE                         R17 K16 [{"id", "icon", "text", "items"}]
      701 LOADK                            R18 K175 ["file"]
      702 SETTABLEKS                       R18 R17 K0 ["id"]
      704 LOADK                            R18 K176 ["page"]
      705 SETTABLEKS                       R18 R17 K1 ["icon"]
      707 LOADK                            R18 K177 ["File"]
      708 SETTABLEKS                       R18 R17 K2 ["text"]
      710 SETTABLEKS                       R5 R17 K15 ["items"]
      712 DUPTABLE                         R18 K16 [{"id", "icon", "text", "items"}]
      713 LOADK                            R19 K178 ["edit"]
      714 SETTABLEKS                       R19 R18 K0 ["id"]
      716 LOADK                            R19 K179 ["pencil-square"]
      717 SETTABLEKS                       R19 R18 K1 ["icon"]
      719 LOADK                            R19 K180 ["Edit"]
      720 SETTABLEKS                       R19 R18 K2 ["text"]
      722 SETTABLEKS                       R8 R18 K15 ["items"]
      724 SETLIST                          R16 R17 2 [1]
      726 SETTABLEKS                       R16 R15 K15 ["items"]
      728 DUPTABLE                         R16 K173 [{"title", "items"}]
      729 LOADK                            R17 K181 ["Workspace"]
      730 SETTABLEKS                       R17 R16 K172 ["title"]
      732 NEWTABLE                         R17 0 2
      734 DUPTABLE                         R18 K16 [{"id", "icon", "text", "items"}]
      735 LOADK                            R19 K182 ["view"]
      736 SETTABLEKS                       R19 R18 K0 ["id"]
      738 LOADK                            R19 K143 ["eye"]
      739 SETTABLEKS                       R19 R18 K1 ["icon"]
      741 LOADK                            R19 K183 ["View"]
      742 SETTABLEKS                       R19 R18 K2 ["text"]
      744 SETTABLEKS                       R9 R18 K15 ["items"]
      746 DUPTABLE                         R19 K16 [{"id", "icon", "text", "items"}]
      747 LOADK                            R20 K184 ["insert"]
      748 SETTABLEKS                       R20 R19 K0 ["id"]
      750 LOADK                            R20 K185 ["plus-large"]
      751 SETTABLEKS                       R20 R19 K1 ["icon"]
      753 LOADK                            R20 K186 ["Insert"]
      754 SETTABLEKS                       R20 R19 K2 ["text"]
      756 SETTABLEKS                       R13 R19 K15 ["items"]
      758 SETLIST                          R17 R18 2 [1]
      760 SETTABLEKS                       R17 R16 K15 ["items"]
      762 DUPTABLE                         R17 K173 [{"title", "items"}]
      763 LOADK                            R18 K187 ["Quick Actions"]
      764 SETTABLEKS                       R18 R17 K172 ["title"]
      766 NEWTABLE                         R18 0 2
      768 DUPTABLE                         R19 K3 [{"id", "icon", "text"}]
      769 LOADK                            R20 K188 ["select-all"]
      770 SETTABLEKS                       R20 R19 K0 ["id"]
      772 LOADK                            R20 K5 ["check-large"]
      773 SETTABLEKS                       R20 R19 K1 ["icon"]
      775 LOADK                            R20 K189 ["Select All"]
      776 SETTABLEKS                       R20 R19 K2 ["text"]
      778 DUPTABLE                         R20 K3 [{"id", "icon", "text"}]
      779 LOADK                            R21 K190 ["preferences"]
      780 SETTABLEKS                       R21 R20 K0 ["id"]
      782 LOADK                            R21 K136 ["gear"]
      783 SETTABLEKS                       R21 R20 K1 ["icon"]
      785 LOADK                            R21 K191 ["Preferences"]
      786 SETTABLEKS                       R21 R20 K2 ["text"]
      788 SETLIST                          R18 R19 2 [1]
      790 SETTABLEKS                       R18 R17 K15 ["items"]
      792 SETLIST                          R14 R15 3 [1]
      794 RETURN                           R14 1

PROTO_6:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Always open menu item activated:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Button clicked but menu stays open"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"Size", "tag"}]
        5 GETIMPORT                        R4 K6 [UDim2.new]
        7 LOADN                            R5 1
        8 LOADN                            R6 0
        9 LOADN                            R7 0
       10 LOADN                            R8 44
       11 CALL                             R4 4 1
       12 SETTABLEKS                       R4 R3 K1 ["Size"]
       14 LOADK                            R4 K7 ["row align-x-center align-y-center"]
       15 SETTABLEKS                       R4 R3 K2 ["tag"]
       17 DUPTABLE                         R4 K9 [{"Menu"}]
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K0 ["createElement"]
       21 GETUPVAL                         R6 2
       22 DUPTABLE                         R7 K16 [{"isOpen", "items", "size", "side", "align", "onActivated"}]
       23 LOADB                            R8 1
       24 SETTABLEKS                       R8 R7 K10 ["isOpen"]
       26 GETUPVAL                         R8 3
       27 SETTABLEKS                       R8 R7 K11 ["items"]
       29 GETTABLEKS                       R8 R0 K17 ["controls"]
       31 GETTABLEKS                       R8 R8 K12 ["size"]
       33 SETTABLEKS                       R8 R7 K12 ["size"]
       35 GETTABLEKS                       R8 R0 K17 ["controls"]
       37 GETTABLEKS                       R8 R8 K13 ["side"]
       39 SETTABLEKS                       R8 R7 K13 ["side"]
       41 GETTABLEKS                       R8 R0 K17 ["controls"]
       43 GETTABLEKS                       R8 R8 K14 ["align"]
       45 SETTABLEKS                       R8 R7 K14 ["align"]
       47 DUPCLOSURE                       R8 K18 [PROTO_6]
       48 SETTABLEKS                       R8 R7 K15 ["onActivated"]
       50 DUPTABLE                         R8 K20 [{"Button"}]
       51 GETUPVAL                         R9 0
       52 GETTABLEKS                       R9 R9 K0 ["createElement"]
       54 GETUPVAL                         R10 4
       55 DUPTABLE                         R11 K22 [{"text", "size", "onActivated"}]
       56 LOADK                            R12 K23 ["Always Open Menu"]
       57 SETTABLEKS                       R12 R11 K21 ["text"]
       59 GETUPVAL                         R12 5
       60 GETTABLEKS                       R12 R12 K24 ["Medium"]
       62 SETTABLEKS                       R12 R11 K12 ["size"]
       64 DUPCLOSURE                       R12 K25 [PROTO_7]
       65 SETTABLEKS                       R12 R11 K15 ["onActivated"]
       67 CALL                             R9 2 1
       68 SETTABLEKS                       R9 R8 K19 ["Button"]
       70 CALL                             R5 3 1
       71 SETTABLEKS                       R5 R4 K8 ["Menu"]
       73 CALL                             R1 3 -1
       74 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Menu item activated:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 0
        6 LOADB                            R2 0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["createElement"]
        8 GETUPVAL                         R4 1
        9 DUPTABLE                         R5 K4 [{"Size", "tag"}]
       10 GETIMPORT                        R6 K7 [UDim2.new]
       12 LOADN                            R7 1
       13 LOADN                            R8 0
       14 LOADN                            R9 0
       15 LOADN                            R10 100
       16 CALL                             R6 4 1
       17 SETTABLEKS                       R6 R5 K2 ["Size"]
       19 LOADK                            R6 K8 ["row align-x-center align-y-center"]
       20 SETTABLEKS                       R6 R5 K3 ["tag"]
       22 DUPTABLE                         R6 K10 [{"Menu"}]
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R7 R7 K1 ["createElement"]
       26 GETUPVAL                         R8 2
       27 DUPTABLE                         R9 K18 [{"isOpen", "items", "size", "side", "align", "onPressedOutside", "onActivated"}]
       28 SETTABLEKS                       R1 R9 K11 ["isOpen"]
       30 GETUPVAL                         R10 3
       31 SETTABLEKS                       R10 R9 K12 ["items"]
       33 GETTABLEKS                       R10 R0 K19 ["controls"]
       35 GETTABLEKS                       R10 R10 K13 ["size"]
       37 SETTABLEKS                       R10 R9 K13 ["size"]
       39 GETTABLEKS                       R10 R0 K19 ["controls"]
       41 GETTABLEKS                       R10 R10 K14 ["side"]
       43 SETTABLEKS                       R10 R9 K14 ["side"]
       45 GETTABLEKS                       R10 R0 K19 ["controls"]
       47 GETTABLEKS                       R10 R10 K15 ["align"]
       49 SETTABLEKS                       R10 R9 K15 ["align"]
       51 NEWCLOSURE                       R10 P0
       52 CAPTURE                          VAL R2
       53 SETTABLEKS                       R10 R9 K16 ["onPressedOutside"]
       55 NEWCLOSURE                       R10 P1
       56 CAPTURE                          VAL R2
       57 SETTABLEKS                       R10 R9 K17 ["onActivated"]
       59 DUPTABLE                         R10 K21 [{"Button"}]
       60 GETUPVAL                         R11 0
       61 GETTABLEKS                       R11 R11 K1 ["createElement"]
       63 GETUPVAL                         R12 4
       64 DUPTABLE                         R13 K23 [{"text", "size", "onActivated"}]
       65 LOADK                            R14 K24 ["Open Menu"]
       66 SETTABLEKS                       R14 R13 K22 ["text"]
       68 GETUPVAL                         R14 5
       69 GETTABLEKS                       R14 R14 K25 ["Medium"]
       71 SETTABLEKS                       R14 R13 K13 ["size"]
       73 NEWCLOSURE                       R14 P2
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R1
       76 SETTABLEKS                       R14 R13 K17 ["onActivated"]
       78 CALL                             R11 2 1
       79 SETTABLEKS                       R11 R10 K20 ["Button"]
       81 CALL                             R7 3 1
       82 SETTABLEKS                       R7 R6 K9 ["Menu"]
       84 CALL                             R3 3 -1
       85 RETURN                           R3 -1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_14:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Menu item activated:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 0
        6 LOADB                            R2 0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["createElement"]
        8 GETUPVAL                         R4 1
        9 DUPTABLE                         R5 K4 [{"Size", "tag"}]
       10 GETIMPORT                        R6 K7 [UDim2.new]
       12 LOADN                            R7 1
       13 LOADN                            R8 0
       14 LOADN                            R9 0
       15 LOADN                            R10 144
       16 CALL                             R6 4 1
       17 SETTABLEKS                       R6 R5 K2 ["Size"]
       19 LOADK                            R6 K8 ["row align-x-center align-y-center"]
       20 SETTABLEKS                       R6 R5 K3 ["tag"]
       22 DUPTABLE                         R6 K10 [{"Menu"}]
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R7 R7 K1 ["createElement"]
       26 GETUPVAL                         R8 2
       27 DUPTABLE                         R9 K19 [{"isOpen", "items", "size", "side", "align", "maxHeight", "onPressedOutside", "onActivated"}]
       28 SETTABLEKS                       R1 R9 K11 ["isOpen"]
       30 GETUPVAL                         R10 3
       31 SETTABLEKS                       R10 R9 K12 ["items"]
       33 GETTABLEKS                       R10 R0 K20 ["controls"]
       35 GETTABLEKS                       R10 R10 K13 ["size"]
       37 SETTABLEKS                       R10 R9 K13 ["size"]
       39 GETTABLEKS                       R10 R0 K20 ["controls"]
       41 GETTABLEKS                       R10 R10 K14 ["side"]
       43 SETTABLEKS                       R10 R9 K14 ["side"]
       45 GETTABLEKS                       R10 R0 K20 ["controls"]
       47 GETTABLEKS                       R10 R10 K15 ["align"]
       49 SETTABLEKS                       R10 R9 K15 ["align"]
       51 LOADN                            R10 180
       52 SETTABLEKS                       R10 R9 K16 ["maxHeight"]
       54 NEWCLOSURE                       R10 P0
       55 CAPTURE                          VAL R2
       56 SETTABLEKS                       R10 R9 K17 ["onPressedOutside"]
       58 NEWCLOSURE                       R10 P1
       59 CAPTURE                          VAL R2
       60 SETTABLEKS                       R10 R9 K18 ["onActivated"]
       62 DUPTABLE                         R10 K22 [{"Button"}]
       63 GETUPVAL                         R11 0
       64 GETTABLEKS                       R11 R11 K1 ["createElement"]
       66 GETUPVAL                         R12 4
       67 DUPTABLE                         R13 K24 [{"text", "size", "onActivated"}]
       68 LOADK                            R14 K25 ["Open Scrollable Menu"]
       69 SETTABLEKS                       R14 R13 K23 ["text"]
       71 GETUPVAL                         R14 5
       72 GETTABLEKS                       R14 R14 K26 ["Medium"]
       74 SETTABLEKS                       R14 R13 K13 ["size"]
       76 NEWCLOSURE                       R14 P2
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R1
       79 SETTABLEKS                       R14 R13 K18 ["onActivated"]
       81 CALL                             R11 2 1
       82 SETTABLEKS                       R11 R10 K21 ["Button"]
       84 CALL                             R7 3 1
       85 SETTABLEKS                       R7 R6 K9 ["Menu"]
       87 CALL                             R3 3 -1
       88 RETURN                           R3 -1

PROTO_17:
        0 DUPTABLE                         R1 K3 [{"id", "text", "isChecked"}]
        1 GETTABLEKS                       R2 R0 K0 ["id"]
        3 SETTABLEKS                       R2 R1 K0 ["id"]
        5 GETTABLEKS                       R2 R0 K1 ["text"]
        7 SETTABLEKS                       R2 R1 K1 ["text"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R4 R0 K0 ["id"]
       12 JUMPIFEQ                         R3 R4 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 SETTABLEKS                       R2 R1 K2 ["isChecked"]
       18 RETURN                           R1 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["map"]
        3 GETUPVAL                         R1 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["useState"]
        8 GETUPVAL                         R5 1
        9 GETTABLEN                        R4 R5 1
       10 GETTABLEKS                       R4 R4 K1 ["id"]
       12 CALL                             R3 1 2
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K2 ["useMemo"]
       16 NEWCLOSURE                       R6 P0
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          VAL R3
       20 NEWTABLE                         R7 0 1
       22 MOVE                             R8 R3
       23 SETLIST                          R7 R8 1 [1]
       25 CALL                             R5 2 1
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K3 ["createElement"]
       29 GETUPVAL                         R7 3
       30 DUPTABLE                         R8 K6 [{"Size", "tag"}]
       31 GETIMPORT                        R9 K9 [UDim2.new]
       33 LOADN                            R10 1
       34 LOADN                            R11 0
       35 LOADN                            R12 0
       36 LOADN                            R13 44
       37 CALL                             R9 4 1
       38 SETTABLEKS                       R9 R8 K4 ["Size"]
       40 LOADK                            R9 K10 ["row align-x-center align-y-center"]
       41 SETTABLEKS                       R9 R8 K5 ["tag"]
       43 DUPTABLE                         R9 K12 [{"Menu"}]
       44 GETUPVAL                         R10 0
       45 GETTABLEKS                       R10 R10 K3 ["createElement"]
       47 GETUPVAL                         R11 4
       48 DUPTABLE                         R12 K20 [{"isOpen", "items", "size", "side", "align", "onPressedOutside", "onActivated"}]
       49 SETTABLEKS                       R1 R12 K13 ["isOpen"]
       51 SETTABLEKS                       R5 R12 K14 ["items"]
       53 GETTABLEKS                       R13 R0 K21 ["controls"]
       55 GETTABLEKS                       R13 R13 K15 ["size"]
       57 SETTABLEKS                       R13 R12 K15 ["size"]
       59 GETTABLEKS                       R13 R0 K21 ["controls"]
       61 GETTABLEKS                       R13 R13 K16 ["side"]
       63 SETTABLEKS                       R13 R12 K16 ["side"]
       65 GETTABLEKS                       R13 R0 K21 ["controls"]
       67 GETTABLEKS                       R13 R13 K17 ["align"]
       69 SETTABLEKS                       R13 R12 K17 ["align"]
       71 NEWCLOSURE                       R13 P1
       72 CAPTURE                          VAL R2
       73 SETTABLEKS                       R13 R12 K18 ["onPressedOutside"]
       75 NEWCLOSURE                       R13 P2
       76 CAPTURE                          VAL R4
       77 SETTABLEKS                       R13 R12 K19 ["onActivated"]
       79 DUPTABLE                         R13 K23 [{"Button"}]
       80 GETUPVAL                         R14 0
       81 GETTABLEKS                       R14 R14 K3 ["createElement"]
       83 GETUPVAL                         R15 5
       84 DUPTABLE                         R16 K25 [{"text", "size", "onActivated"}]
       85 LOADK                            R17 K26 ["Selection Menu"]
       86 SETTABLEKS                       R17 R16 K24 ["text"]
       88 GETUPVAL                         R17 6
       89 GETTABLEKS                       R17 R17 K27 ["Medium"]
       91 SETTABLEKS                       R17 R16 K15 ["size"]
       93 NEWCLOSURE                       R17 P3
       94 CAPTURE                          VAL R2
       95 CAPTURE                          VAL R1
       96 SETTABLEKS                       R17 R16 K19 ["onActivated"]
       98 CALL                             R14 2 1
       99 SETTABLEKS                       R14 R13 K22 ["Button"]
      101 CALL                             R10 3 1
      102 SETTABLEKS                       R10 R9 K11 ["Menu"]
      104 CALL                             R6 3 -1
      105 RETURN                           R6 -1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_24:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Button menu item activated:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 0
        6 LOADB                            R2 0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_27:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Card menu item activated:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 0
        6 LOADB                            R2 0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["useState"]
        8 LOADB                            R4 0
        9 CALL                             R3 1 2
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K1 ["createElement"]
       13 GETUPVAL                         R6 1
       14 DUPTABLE                         R7 K4 [{"Size", "tag"}]
       15 GETIMPORT                        R8 K7 [UDim2.new]
       17 LOADN                            R9 1
       18 LOADN                            R10 0
       19 LOADN                            R11 0
       20 LOADN                            R12 44
       21 CALL                             R8 4 1
       22 SETTABLEKS                       R8 R7 K2 ["Size"]
       24 LOADK                            R8 K8 ["row align-x-center align-y-center gap-large"]
       25 SETTABLEKS                       R8 R7 K3 ["tag"]
       27 DUPTABLE                         R8 K11 [{"ButtonMenu", "CardMenu"}]
       28 GETUPVAL                         R9 0
       29 GETTABLEKS                       R9 R9 K1 ["createElement"]
       31 GETUPVAL                         R10 2
       32 DUPTABLE                         R11 K19 [{"isOpen", "items", "size", "side", "align", "onPressedOutside", "onActivated"}]
       33 SETTABLEKS                       R1 R11 K12 ["isOpen"]
       35 GETUPVAL                         R12 3
       36 SETTABLEKS                       R12 R11 K13 ["items"]
       38 GETTABLEKS                       R12 R0 K20 ["controls"]
       40 GETTABLEKS                       R12 R12 K14 ["size"]
       42 SETTABLEKS                       R12 R11 K14 ["size"]
       44 GETTABLEKS                       R12 R0 K20 ["controls"]
       46 GETTABLEKS                       R12 R12 K15 ["side"]
       48 SETTABLEKS                       R12 R11 K15 ["side"]
       50 GETTABLEKS                       R12 R0 K20 ["controls"]
       52 GETTABLEKS                       R12 R12 K16 ["align"]
       54 SETTABLEKS                       R12 R11 K16 ["align"]
       56 NEWCLOSURE                       R12 P0
       57 CAPTURE                          VAL R2
       58 SETTABLEKS                       R12 R11 K17 ["onPressedOutside"]
       60 NEWCLOSURE                       R12 P1
       61 CAPTURE                          VAL R2
       62 SETTABLEKS                       R12 R11 K18 ["onActivated"]
       64 DUPTABLE                         R12 K22 [{"IconButton"}]
       65 GETUPVAL                         R13 0
       66 GETTABLEKS                       R13 R13 K1 ["createElement"]
       68 GETUPVAL                         R14 4
       69 DUPTABLE                         R15 K24 [{"icon", "size", "onActivated"}]
       70 LOADK                            R16 K25 ["icons/common/more"]
       71 SETTABLEKS                       R16 R15 K23 ["icon"]
       73 GETUPVAL                         R16 5
       74 GETTABLEKS                       R16 R16 K26 ["Medium"]
       76 SETTABLEKS                       R16 R15 K14 ["size"]
       78 NEWCLOSURE                       R16 P2
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R1
       81 SETTABLEKS                       R16 R15 K18 ["onActivated"]
       83 CALL                             R13 2 1
       84 SETTABLEKS                       R13 R12 K21 ["IconButton"]
       86 CALL                             R9 3 1
       87 SETTABLEKS                       R9 R8 K9 ["ButtonMenu"]
       89 GETUPVAL                         R9 0
       90 GETTABLEKS                       R9 R9 K1 ["createElement"]
       92 GETUPVAL                         R10 2
       93 DUPTABLE                         R11 K19 [{"isOpen", "items", "size", "side", "align", "onPressedOutside", "onActivated"}]
       94 SETTABLEKS                       R3 R11 K12 ["isOpen"]
       96 GETUPVAL                         R12 3
       97 SETTABLEKS                       R12 R11 K13 ["items"]
       99 GETTABLEKS                       R12 R0 K20 ["controls"]
      101 GETTABLEKS                       R12 R12 K14 ["size"]
      103 SETTABLEKS                       R12 R11 K14 ["size"]
      105 GETTABLEKS                       R12 R0 K20 ["controls"]
      107 GETTABLEKS                       R12 R12 K15 ["side"]
      109 SETTABLEKS                       R12 R11 K15 ["side"]
      111 GETTABLEKS                       R12 R0 K20 ["controls"]
      113 GETTABLEKS                       R12 R12 K16 ["align"]
      115 SETTABLEKS                       R12 R11 K16 ["align"]
      117 NEWCLOSURE                       R12 P3
      118 CAPTURE                          VAL R4
      119 SETTABLEKS                       R12 R11 K17 ["onPressedOutside"]
      121 NEWCLOSURE                       R12 P4
      122 CAPTURE                          VAL R4
      123 SETTABLEKS                       R12 R11 K18 ["onActivated"]
      125 DUPTABLE                         R12 K28 [{"Card"}]
      126 GETUPVAL                         R13 0
      127 GETTABLEKS                       R13 R13 K1 ["createElement"]
      129 GETUPVAL                         R14 1
      130 DUPTABLE                         R15 K29 [{"tag", "onActivated"}]
      131 LOADK                            R16 K30 ["col gap-medium auto-xy padding-large stroke-neutral radius-medium bg-surface-100"]
      132 SETTABLEKS                       R16 R15 K3 ["tag"]
      134 NEWCLOSURE                       R16 P5
      135 CAPTURE                          VAL R4
      136 CAPTURE                          VAL R3
      137 SETTABLEKS                       R16 R15 K18 ["onActivated"]
      139 DUPTABLE                         R16 K33 [{"Title", "Subtitle"}]
      140 GETUPVAL                         R17 0
      141 GETTABLEKS                       R17 R17 K1 ["createElement"]
      143 GETUPVAL                         R18 6
      144 DUPTABLE                         R19 K35 [{"Text", "tag"}]
      145 LOADK                            R20 K36 ["Card with Menu"]
      146 SETTABLEKS                       R20 R19 K34 ["Text"]
      148 LOADK                            R20 K37 ["auto-xy text-heading-medium"]
      149 SETTABLEKS                       R20 R19 K3 ["tag"]
      151 CALL                             R17 2 1
      152 SETTABLEKS                       R17 R16 K31 ["Title"]
      154 GETUPVAL                         R17 0
      155 GETTABLEKS                       R17 R17 K1 ["createElement"]
      157 GETUPVAL                         R18 6
      158 DUPTABLE                         R19 K35 [{"Text", "tag"}]
      159 LOADK                            R20 K38 ["Click me to open menu"]
      160 SETTABLEKS                       R20 R19 K34 ["Text"]
      162 LOADK                            R20 K39 ["auto-xy text-body-small"]
      163 SETTABLEKS                       R20 R19 K3 ["tag"]
      165 CALL                             R17 2 1
      166 SETTABLEKS                       R17 R16 K32 ["Subtitle"]
      168 CALL                             R13 3 1
      169 SETTABLEKS                       R13 R12 K27 ["Card"]
      171 CALL                             R9 3 1
      172 SETTABLEKS                       R9 R8 K10 ["CardMenu"]
      174 CALL                             R5 3 -1
      175 RETURN                           R5 -1

PROTO_30:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_32:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Always open menu item activated:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["useState"]
        8 LOADB                            R3 0
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K2 ["createElement"]
       13 GETUPVAL                         R5 1
       14 DUPTABLE                         R6 K5 [{"Size", "tag"}]
       15 GETIMPORT                        R7 K8 [UDim2.new]
       17 LOADN                            R8 1
       18 LOADN                            R9 0
       19 LOADN                            R10 0
       20 LOADN                            R11 44
       21 CALL                             R7 4 1
       22 SETTABLEKS                       R7 R6 K3 ["Size"]
       24 LOADK                            R7 K9 ["row align-x-center align-y-center"]
       25 SETTABLEKS                       R7 R6 K4 ["tag"]
       27 DUPTABLE                         R7 K12 [{"Anchor", "Menu"}]
       28 GETUPVAL                         R8 0
       29 GETTABLEKS                       R8 R8 K2 ["createElement"]
       31 GETUPVAL                         R9 2
       32 DUPTABLE                         R10 K17 [{"text", "size", "ref", "onActivated"}]
       33 LOADK                            R11 K18 ["Anchor outside of the menu component"]
       34 SETTABLEKS                       R11 R10 K13 ["text"]
       36 GETUPVAL                         R11 3
       37 GETTABLEKS                       R11 R11 K19 ["Medium"]
       39 SETTABLEKS                       R11 R10 K14 ["size"]
       41 SETTABLEKS                       R1 R10 K15 ["ref"]
       43 NEWCLOSURE                       R11 P0
       44 CAPTURE                          VAL R3
       45 SETTABLEKS                       R11 R10 K16 ["onActivated"]
       47 CALL                             R8 2 1
       48 SETTABLEKS                       R8 R7 K10 ["Anchor"]
       50 GETUPVAL                         R8 0
       51 GETTABLEKS                       R8 R8 K2 ["createElement"]
       53 GETUPVAL                         R9 4
       54 DUPTABLE                         R10 K26 [{"isOpen", "items", "size", "side", "align", "onPressedOutside", "onActivated", "anchorRef"}]
       55 SETTABLEKS                       R2 R10 K20 ["isOpen"]
       57 GETUPVAL                         R11 5
       58 SETTABLEKS                       R11 R10 K21 ["items"]
       60 GETTABLEKS                       R11 R0 K27 ["controls"]
       62 GETTABLEKS                       R11 R11 K14 ["size"]
       64 SETTABLEKS                       R11 R10 K14 ["size"]
       66 GETTABLEKS                       R11 R0 K27 ["controls"]
       68 GETTABLEKS                       R11 R11 K22 ["side"]
       70 SETTABLEKS                       R11 R10 K22 ["side"]
       72 GETTABLEKS                       R11 R0 K27 ["controls"]
       74 GETTABLEKS                       R11 R11 K23 ["align"]
       76 SETTABLEKS                       R11 R10 K23 ["align"]
       78 NEWCLOSURE                       R11 P1
       79 CAPTURE                          VAL R3
       80 SETTABLEKS                       R11 R10 K24 ["onPressedOutside"]
       82 DUPCLOSURE                       R11 K28 [PROTO_32]
       83 SETTABLEKS                       R11 R10 K16 ["onActivated"]
       85 SETTABLEKS                       R1 R10 K25 ["anchorRef"]
       87 CALL                             R8 2 1
       88 SETTABLEKS                       R8 R7 K11 ["Menu"]
       90 CALL                             R4 3 -1
       91 RETURN                           R4 -1

PROTO_34:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_35:
        0 JUMPIFNOTEQKS                    R0 K0 ["option-a"] ; [+5]
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 0
        5 JUMP                             ; [+5]
        6 JUMPIFNOTEQKS                    R0 K1 ["option-b"] ; [+4]
        8 GETUPVAL                         R1 0
        9 GETUPVAL                         R2 2
       10 CALL                             R1 1 0
       11 GETUPVAL                         R1 3
       12 LOADB                            R2 1
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["useRef"]
        8 LOADNIL                          R3
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K1 ["useState"]
       13 LOADB                            R4 0
       14 CALL                             R3 1 2
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K1 ["useState"]
       18 LOADNIL                          R6
       19 CALL                             R5 1 2
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R7 R7 K1 ["useState"]
       23 LOADB                            R8 0
       24 CALL                             R7 1 2
       25 NEWTABLE                         R9 0 2
       27 DUPTABLE                         R10 K5 [{"id", "text", "ref"}]
       28 LOADK                            R11 K6 ["option-a"]
       29 SETTABLEKS                       R11 R10 K2 ["id"]
       31 LOADK                            R11 K7 ["Option A"]
       32 SETTABLEKS                       R11 R10 K3 ["text"]
       34 SETTABLEKS                       R1 R10 K4 ["ref"]
       36 DUPTABLE                         R11 K5 [{"id", "text", "ref"}]
       37 LOADK                            R12 K8 ["option-b"]
       38 SETTABLEKS                       R12 R11 K2 ["id"]
       40 LOADK                            R12 K9 ["Option B"]
       41 SETTABLEKS                       R12 R11 K3 ["text"]
       43 SETTABLEKS                       R2 R11 K4 ["ref"]
       45 SETLIST                          R9 R10 2 [1]
       47 GETUPVAL                         R10 0
       48 GETTABLEKS                       R10 R10 K10 ["createElement"]
       50 GETUPVAL                         R11 1
       51 DUPTABLE                         R12 K13 [{"Size", "tag"}]
       52 GETIMPORT                        R13 K16 [UDim2.new]
       54 LOADN                            R14 1
       55 LOADN                            R15 0
       56 LOADN                            R16 0
       57 LOADN                            R17 44
       58 CALL                             R13 4 1
       59 SETTABLEKS                       R13 R12 K11 ["Size"]
       61 LOADK                            R13 K17 ["row align-x-center align-y-center"]
       62 SETTABLEKS                       R13 R12 K12 ["tag"]
       64 DUPTABLE                         R13 K20 [{"Menu", "Coachmark"}]
       65 GETUPVAL                         R14 0
       66 GETTABLEKS                       R14 R14 K10 ["createElement"]
       68 GETUPVAL                         R15 2
       69 DUPTABLE                         R16 K28 [{"isOpen", "items", "size", "side", "align", "onPressedOutside", "onActivated"}]
       70 SETTABLEKS                       R3 R16 K21 ["isOpen"]
       72 SETTABLEKS                       R9 R16 K22 ["items"]
       74 GETTABLEKS                       R17 R0 K29 ["controls"]
       76 GETTABLEKS                       R17 R17 K23 ["size"]
       78 SETTABLEKS                       R17 R16 K23 ["size"]
       80 GETTABLEKS                       R17 R0 K29 ["controls"]
       82 GETTABLEKS                       R17 R17 K24 ["side"]
       84 SETTABLEKS                       R17 R16 K24 ["side"]
       86 GETTABLEKS                       R17 R0 K29 ["controls"]
       88 GETTABLEKS                       R17 R17 K25 ["align"]
       90 SETTABLEKS                       R17 R16 K25 ["align"]
       92 NEWCLOSURE                       R17 P0
       93 CAPTURE                          VAL R4
       94 SETTABLEKS                       R17 R16 K26 ["onPressedOutside"]
       96 NEWCLOSURE                       R17 P1
       97 CAPTURE                          VAL R6
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R8
      101 SETTABLEKS                       R17 R16 K27 ["onActivated"]
      103 DUPTABLE                         R17 K31 [{"Button"}]
      104 GETUPVAL                         R18 0
      105 GETTABLEKS                       R18 R18 K10 ["createElement"]
      107 GETUPVAL                         R19 3
      108 DUPTABLE                         R20 K32 [{"text", "size", "onActivated"}]
      109 LOADK                            R21 K33 ["Open Menu"]
      110 SETTABLEKS                       R21 R20 K3 ["text"]
      112 GETUPVAL                         R21 4
      113 GETTABLEKS                       R21 R21 K34 ["Medium"]
      115 SETTABLEKS                       R21 R20 K23 ["size"]
      117 NEWCLOSURE                       R21 P2
      118 CAPTURE                          VAL R4
      119 CAPTURE                          VAL R3
      120 SETTABLEKS                       R21 R20 K27 ["onActivated"]
      122 CALL                             R18 2 1
      123 SETTABLEKS                       R18 R17 K30 ["Button"]
      125 CALL                             R14 3 1
      126 SETTABLEKS                       R14 R13 K18 ["Menu"]
      128 GETUPVAL                         R14 0
      129 GETTABLEKS                       R14 R14 K10 ["createElement"]
      131 GETUPVAL                         R15 5
      132 DUPTABLE                         R16 K38 [{"title", "text", "isOpen", "anchorRef", "onClose"}]
      133 LOADK                            R17 K39 ["Anchored to this item"]
      134 SETTABLEKS                       R17 R16 K35 ["title"]
      136 LOADK                            R17 K40 ["The coachmark is anchored to the menu item you clicked."]
      137 SETTABLEKS                       R17 R16 K3 ["text"]
      139 SETTABLEKS                       R7 R16 K21 ["isOpen"]
      141 SETTABLEKS                       R5 R16 K36 ["anchorRef"]
      143 NEWCLOSURE                       R17 P3
      144 CAPTURE                          VAL R8
      145 SETTABLEKS                       R17 R16 K37 ["onClose"]
      147 CALL                             R14 2 1
      148 SETTABLEKS                       R14 R13 K19 ["Coachmark"]
      150 CALL                             R10 3 -1
      151 RETURN                           R10 -1

PROTO_39:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [UDim.new]
        3 LOADN                            R2 0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K3 ["AbsoluteSize"]
        7 GETTABLEKS                       R3 R3 K4 ["X"]
        9 CALL                             R1 2 -1
       10 CALL                             R0 -1 0
       11 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R0
        8 GETUPVAL                         R2 1
        9 GETIMPORT                        R3 K3 [UDim.new]
       11 LOADN                            R4 0
       12 GETTABLEKS                       R5 R0 K4 ["AbsoluteSize"]
       14 GETTABLEKS                       R5 R5 K5 ["X"]
       16 CALL                             R3 2 -1
       17 CALL                             R2 -1 0
       18 LOADK                            R4 K4 ["AbsoluteSize"]
       19 NAMECALL                         R2 R0 K6 ["GetPropertyChangedSignal"]
       21 CALL                             R2 2 1
       22 MOVE                             R4 R1
       23 NAMECALL                         R2 R2 K7 ["Connect"]
       25 CALL                             R2 2 1
       26 NEWCLOSURE                       R3 P1
       27 CAPTURE                          VAL R2
       28 RETURN                           R3 1

PROTO_42:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_44:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Menu item activated:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 0
        6 LOADB                            R2 0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["useState"]
        8 LOADB                            R3 0
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K1 ["useState"]
       13 LOADNIL                          R5
       14 CALL                             R4 1 2
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K2 ["useLayoutEffect"]
       18 NEWCLOSURE                       R7 P0
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R5
       21 NEWTABLE                         R8 0 0
       23 CALL                             R6 2 0
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R6 R6 K3 ["createElement"]
       27 GETUPVAL                         R7 1
       28 DUPTABLE                         R8 K5 [{"Size"}]
       29 GETIMPORT                        R9 K8 [UDim2.new]
       31 LOADN                            R10 1
       32 LOADN                            R11 0
       33 LOADN                            R12 0
       34 LOADN                            R13 44
       35 CALL                             R9 4 1
       36 SETTABLEKS                       R9 R8 K4 ["Size"]
       38 DUPTABLE                         R9 K11 [{"Anchor", "Menu"}]
       39 GETUPVAL                         R10 0
       40 GETTABLEKS                       R10 R10 K3 ["createElement"]
       42 GETUPVAL                         R11 2
       43 DUPTABLE                         R12 K17 [{"text", "size", "width", "ref", "onActivated"}]
       44 LOADK                            R13 K18 ["External anchor"]
       45 SETTABLEKS                       R13 R12 K12 ["text"]
       47 GETUPVAL                         R13 3
       48 GETTABLEKS                       R13 R13 K19 ["Medium"]
       50 SETTABLEKS                       R13 R12 K13 ["size"]
       52 GETIMPORT                        R13 K21 [UDim.new]
       54 LOADN                            R14 0
       55 LOADN                            R15 220
       56 CALL                             R13 2 1
       57 SETTABLEKS                       R13 R12 K14 ["width"]
       59 SETTABLEKS                       R1 R12 K15 ["ref"]
       61 NEWCLOSURE                       R13 P1
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R2
       64 SETTABLEKS                       R13 R12 K16 ["onActivated"]
       66 CALL                             R10 2 1
       67 SETTABLEKS                       R10 R9 K9 ["Anchor"]
       69 GETUPVAL                         R10 0
       70 GETTABLEKS                       R10 R10 K3 ["createElement"]
       72 GETUPVAL                         R11 4
       73 DUPTABLE                         R12 K28 [{"isOpen", "items", "size", "side", "align", "width", "onPressedOutside", "onActivated", "anchorRef"}]
       74 SETTABLEKS                       R2 R12 K22 ["isOpen"]
       76 GETUPVAL                         R13 5
       77 SETTABLEKS                       R13 R12 K23 ["items"]
       79 GETTABLEKS                       R13 R0 K29 ["controls"]
       81 GETTABLEKS                       R13 R13 K13 ["size"]
       83 SETTABLEKS                       R13 R12 K13 ["size"]
       85 GETTABLEKS                       R13 R0 K29 ["controls"]
       87 GETTABLEKS                       R13 R13 K24 ["side"]
       89 SETTABLEKS                       R13 R12 K24 ["side"]
       91 GETTABLEKS                       R13 R0 K29 ["controls"]
       93 GETTABLEKS                       R13 R13 K25 ["align"]
       95 SETTABLEKS                       R13 R12 K25 ["align"]
       97 SETTABLEKS                       R4 R12 K14 ["width"]
       99 NEWCLOSURE                       R13 P2
      100 CAPTURE                          VAL R3
      101 SETTABLEKS                       R13 R12 K26 ["onPressedOutside"]
      103 NEWCLOSURE                       R13 P3
      104 CAPTURE                          VAL R3
      105 SETTABLEKS                       R13 R12 K16 ["onActivated"]
      107 SETTABLEKS                       R1 R12 K27 ["anchorRef"]
      109 CALL                             R10 2 1
      110 SETTABLEKS                       R10 R9 K10 ["Menu"]
      112 CALL                             R6 3 -1
      113 RETURN                           R6 -1

PROTO_46:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["useState"]
        8 LOADK                            R4 K1 ["a1"]
        9 CALL                             R3 1 2
       10 NEWTABLE                         R5 0 3
       12 DUPTABLE                         R6 K4 [{"title", "items"}]
       13 LOADK                            R7 K5 ["First title"]
       14 SETTABLEKS                       R7 R6 K2 ["title"]
       16 NEWTABLE                         R7 0 2
       18 DUPTABLE                         R8 K10 [{"id", "icon", "text", "isChecked"}]
       19 LOADK                            R9 K1 ["a1"]
       20 SETTABLEKS                       R9 R8 K6 ["id"]
       22 LOADK                            R9 K11 ["icons/common/robux"]
       23 SETTABLEKS                       R9 R8 K7 ["icon"]
       25 LOADK                            R9 K12 ["Alpha 1"]
       26 SETTABLEKS                       R9 R8 K8 ["text"]
       28 JUMPIFEQKS                       R3 K1 ["a1"] ; [+2]
       30 LOADB                            R9 0 +1
       31 LOADB                            R9 1
       32 SETTABLEKS                       R9 R8 K9 ["isChecked"]
       34 DUPTABLE                         R9 K13 [{"id", "text", "isChecked"}]
       35 LOADK                            R10 K14 ["a2"]
       36 SETTABLEKS                       R10 R9 K6 ["id"]
       38 LOADK                            R10 K15 ["Alpha 2"]
       39 SETTABLEKS                       R10 R9 K8 ["text"]
       41 JUMPIFEQKS                       R3 K14 ["a2"] ; [+2]
       43 LOADB                            R10 0 +1
       44 LOADB                            R10 1
       45 SETTABLEKS                       R10 R9 K9 ["isChecked"]
       47 SETLIST                          R7 R8 2 [1]
       49 SETTABLEKS                       R7 R6 K3 ["items"]
       51 DUPTABLE                         R7 K16 [{"items"}]
       52 NEWTABLE                         R8 0 2
       54 DUPTABLE                         R9 K13 [{"id", "text", "isChecked"}]
       55 LOADK                            R10 K17 ["b1"]
       56 SETTABLEKS                       R10 R9 K6 ["id"]
       58 LOADK                            R10 K18 ["Beta 1"]
       59 SETTABLEKS                       R10 R9 K8 ["text"]
       61 JUMPIFEQKS                       R3 K17 ["b1"] ; [+2]
       63 LOADB                            R10 0 +1
       64 LOADB                            R10 1
       65 SETTABLEKS                       R10 R9 K9 ["isChecked"]
       67 DUPTABLE                         R10 K20 [{"id", "isDisabled", "text", "isChecked"}]
       68 LOADK                            R11 K21 ["b2"]
       69 SETTABLEKS                       R11 R10 K6 ["id"]
       71 LOADB                            R11 1
       72 SETTABLEKS                       R11 R10 K19 ["isDisabled"]
       74 LOADK                            R11 K22 ["Beta 2 (disabled)"]
       75 SETTABLEKS                       R11 R10 K8 ["text"]
       77 JUMPIFEQKS                       R3 K21 ["b2"] ; [+2]
       79 LOADB                            R11 0 +1
       80 LOADB                            R11 1
       81 SETTABLEKS                       R11 R10 K9 ["isChecked"]
       83 SETLIST                          R8 R9 2 [1]
       85 SETTABLEKS                       R8 R7 K3 ["items"]
       87 DUPTABLE                         R8 K16 [{"items"}]
       88 NEWTABLE                         R9 0 1
       90 DUPTABLE                         R10 K13 [{"id", "text", "isChecked"}]
       91 LOADK                            R11 K23 ["c1"]
       92 SETTABLEKS                       R11 R10 K6 ["id"]
       94 LOADK                            R11 K24 ["Untitled group item"]
       95 SETTABLEKS                       R11 R10 K8 ["text"]
       97 JUMPIFEQKS                       R3 K23 ["c1"] ; [+2]
       99 LOADB                            R11 0 +1
      100 LOADB                            R11 1
      101 SETTABLEKS                       R11 R10 K9 ["isChecked"]
      103 SETLIST                          R9 R10 1 [1]
      105 SETTABLEKS                       R9 R8 K3 ["items"]
      107 SETLIST                          R5 R6 3 [1]
      109 GETUPVAL                         R6 0
      110 GETTABLEKS                       R6 R6 K25 ["createElement"]
      112 GETUPVAL                         R7 1
      113 DUPTABLE                         R8 K28 [{"Size", "tag"}]
      114 GETIMPORT                        R9 K31 [UDim2.new]
      116 LOADN                            R10 1
      117 LOADN                            R11 0
      118 LOADN                            R12 0
      119 LOADN                            R13 100
      120 CALL                             R9 4 1
      121 SETTABLEKS                       R9 R8 K26 ["Size"]
      123 LOADK                            R9 K32 ["row align-x-center align-y-center"]
      124 SETTABLEKS                       R9 R8 K27 ["tag"]
      126 DUPTABLE                         R9 K34 [{"Menu"}]
      127 GETUPVAL                         R10 0
      128 GETTABLEKS                       R10 R10 K25 ["createElement"]
      130 GETUPVAL                         R11 2
      131 DUPTABLE                         R12 K41 [{"isOpen", "items", "size", "side", "align", "onPressedOutside", "onActivated"}]
      132 SETTABLEKS                       R1 R12 K35 ["isOpen"]
      134 SETTABLEKS                       R5 R12 K3 ["items"]
      136 GETTABLEKS                       R13 R0 K42 ["controls"]
      138 GETTABLEKS                       R13 R13 K36 ["size"]
      140 SETTABLEKS                       R13 R12 K36 ["size"]
      142 GETTABLEKS                       R13 R0 K42 ["controls"]
      144 GETTABLEKS                       R13 R13 K37 ["side"]
      146 SETTABLEKS                       R13 R12 K37 ["side"]
      148 GETTABLEKS                       R13 R0 K42 ["controls"]
      150 GETTABLEKS                       R13 R13 K38 ["align"]
      152 SETTABLEKS                       R13 R12 K38 ["align"]
      154 NEWCLOSURE                       R13 P0
      155 CAPTURE                          VAL R2
      156 SETTABLEKS                       R13 R12 K39 ["onPressedOutside"]
      158 NEWCLOSURE                       R13 P1
      159 CAPTURE                          VAL R2
      160 CAPTURE                          VAL R4
      161 SETTABLEKS                       R13 R12 K40 ["onActivated"]
      163 DUPTABLE                         R13 K44 [{"Button"}]
      164 GETUPVAL                         R14 0
      165 GETTABLEKS                       R14 R14 K25 ["createElement"]
      167 GETUPVAL                         R15 3
      168 DUPTABLE                         R16 K45 [{"text", "size", "onActivated"}]
      169 LOADK                            R17 K46 ["Open Menu"]
      170 SETTABLEKS                       R17 R16 K8 ["text"]
      172 GETUPVAL                         R17 4
      173 GETTABLEKS                       R17 R17 K47 ["Medium"]
      175 SETTABLEKS                       R17 R16 K36 ["size"]
      177 NEWCLOSURE                       R17 P2
      178 CAPTURE                          VAL R2
      179 CAPTURE                          VAL R1
      180 SETTABLEKS                       R17 R16 K40 ["onActivated"]
      182 CALL                             R14 2 1
      183 SETTABLEKS                       R14 R13 K43 ["Button"]
      185 CALL                             R10 3 1
      186 SETTABLEKS                       R10 R9 K33 ["Menu"]
      188 CALL                             R6 3 -1
      189 RETURN                           R6 -1

PROTO_50:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 3
        5 CALL                             R0 2 1
        6 RETURN                           R0 1

PROTO_51:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_52:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Menu item activated by parent:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 0
        6 LOADB                            R2 0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_53:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_54:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETTABLEKS                       R3 R0 K1 ["controls"]
        7 GETTABLEKS                       R3 R3 K2 ["maxDepth"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K3 ["useMemo"]
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R2
       16 CAPTURE                          VAL R3
       17 NEWTABLE                         R6 0 1
       19 MOVE                             R7 R3
       20 SETLIST                          R6 R7 1 [1]
       22 CALL                             R4 2 1
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R5 R5 K4 ["createElement"]
       26 GETUPVAL                         R6 3
       27 DUPTABLE                         R7 K7 [{"Size", "tag"}]
       28 GETIMPORT                        R8 K10 [UDim2.new]
       30 LOADN                            R9 1
       31 LOADN                            R10 0
       32 LOADN                            R11 0
       33 LOADN                            R12 88
       34 CALL                             R8 4 1
       35 SETTABLEKS                       R8 R7 K5 ["Size"]
       37 LOADK                            R8 K11 ["row align-x-center align-y-center"]
       38 SETTABLEKS                       R8 R7 K6 ["tag"]
       40 DUPTABLE                         R8 K13 [{"Menu"}]
       41 GETUPVAL                         R9 0
       42 GETTABLEKS                       R9 R9 K4 ["createElement"]
       44 GETUPVAL                         R10 4
       45 DUPTABLE                         R11 K21 [{"isOpen", "items", "size", "side", "align", "onPressedOutside", "onActivated"}]
       46 SETTABLEKS                       R1 R11 K14 ["isOpen"]
       48 SETTABLEKS                       R4 R11 K15 ["items"]
       50 GETTABLEKS                       R12 R0 K1 ["controls"]
       52 GETTABLEKS                       R12 R12 K16 ["size"]
       54 SETTABLEKS                       R12 R11 K16 ["size"]
       56 GETTABLEKS                       R12 R0 K1 ["controls"]
       58 GETTABLEKS                       R12 R12 K17 ["side"]
       60 SETTABLEKS                       R12 R11 K17 ["side"]
       62 GETTABLEKS                       R12 R0 K1 ["controls"]
       64 GETTABLEKS                       R12 R12 K18 ["align"]
       66 SETTABLEKS                       R12 R11 K18 ["align"]
       68 NEWCLOSURE                       R12 P1
       69 CAPTURE                          VAL R2
       70 SETTABLEKS                       R12 R11 K19 ["onPressedOutside"]
       72 NEWCLOSURE                       R12 P2
       73 CAPTURE                          VAL R2
       74 SETTABLEKS                       R12 R11 K20 ["onActivated"]
       76 DUPTABLE                         R12 K23 [{"Button"}]
       77 GETUPVAL                         R13 0
       78 GETTABLEKS                       R13 R13 K4 ["createElement"]
       80 GETUPVAL                         R14 5
       81 DUPTABLE                         R15 K25 [{"text", "size", "onActivated"}]
       82 LOADK                            R16 K26 ["Open Menu"]
       83 SETTABLEKS                       R16 R15 K24 ["text"]
       85 GETUPVAL                         R16 6
       86 GETTABLEKS                       R16 R16 K27 ["Medium"]
       88 SETTABLEKS                       R16 R15 K16 ["size"]
       90 NEWCLOSURE                       R16 P3
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R1
       93 SETTABLEKS                       R16 R15 K20 ["onActivated"]
       95 CALL                             R13 2 1
       96 SETTABLEKS                       R13 R12 K22 ["Button"]
       98 CALL                             R9 3 1
       99 SETTABLEKS                       R9 R8 K12 ["Menu"]
      101 CALL                             R5 3 -1
      102 RETURN                           R5 -1

PROTO_55:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Per-item onActivated:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_56:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Per-item onActivated:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_57:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Per-item onActivated:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_58:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Per-item onActivated:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_59:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Per-item onActivated:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_60:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_61:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_62:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 NEWTABLE                         R3 0 2
        7 DUPTABLE                         R4 K5 [{"id", "icon", "text", "items"}]
        8 LOADK                            R5 K6 ["file"]
        9 SETTABLEKS                       R5 R4 K1 ["id"]
       11 LOADK                            R5 K7 ["page"]
       12 SETTABLEKS                       R5 R4 K2 ["icon"]
       14 LOADK                            R5 K8 ["File"]
       15 SETTABLEKS                       R5 R4 K3 ["text"]
       17 NEWTABLE                         R5 0 2
       19 DUPTABLE                         R6 K10 [{"id", "icon", "text", "onActivated"}]
       20 LOADK                            R7 K11 ["file-new"]
       21 SETTABLEKS                       R7 R6 K1 ["id"]
       23 LOADK                            R7 K12 ["plus-small"]
       24 SETTABLEKS                       R7 R6 K2 ["icon"]
       26 LOADK                            R7 K13 ["New Place"]
       27 SETTABLEKS                       R7 R6 K3 ["text"]
       29 DUPCLOSURE                       R7 K14 [PROTO_55]
       30 SETTABLEKS                       R7 R6 K9 ["onActivated"]
       32 DUPTABLE                         R7 K5 [{"id", "icon", "text", "items"}]
       33 LOADK                            R8 K15 ["file-open-recent"]
       34 SETTABLEKS                       R8 R7 K1 ["id"]
       36 LOADK                            R8 K16 ["clock"]
       37 SETTABLEKS                       R8 R7 K2 ["icon"]
       39 LOADK                            R8 K17 ["Open Recent"]
       40 SETTABLEKS                       R8 R7 K3 ["text"]
       42 NEWTABLE                         R8 0 2
       44 DUPTABLE                         R9 K18 [{"id", "text", "onActivated"}]
       45 LOADK                            R10 K19 ["recent-project-a"]
       46 SETTABLEKS                       R10 R9 K1 ["id"]
       48 LOADK                            R10 K20 ["Project A"]
       49 SETTABLEKS                       R10 R9 K3 ["text"]
       51 DUPCLOSURE                       R10 K21 [PROTO_56]
       52 SETTABLEKS                       R10 R9 K9 ["onActivated"]
       54 DUPTABLE                         R10 K18 [{"id", "text", "onActivated"}]
       55 LOADK                            R11 K22 ["recent-project-b"]
       56 SETTABLEKS                       R11 R10 K1 ["id"]
       58 LOADK                            R11 K23 ["Project B"]
       59 SETTABLEKS                       R11 R10 K3 ["text"]
       61 DUPCLOSURE                       R11 K24 [PROTO_57]
       62 SETTABLEKS                       R11 R10 K9 ["onActivated"]
       64 SETLIST                          R8 R9 2 [1]
       66 SETTABLEKS                       R8 R7 K4 ["items"]
       68 SETLIST                          R5 R6 2 [1]
       70 SETTABLEKS                       R5 R4 K4 ["items"]
       72 DUPTABLE                         R5 K5 [{"id", "icon", "text", "items"}]
       73 LOADK                            R6 K25 ["edit"]
       74 SETTABLEKS                       R6 R5 K1 ["id"]
       76 LOADK                            R6 K26 ["pencil-square"]
       77 SETTABLEKS                       R6 R5 K2 ["icon"]
       79 LOADK                            R6 K27 ["Edit"]
       80 SETTABLEKS                       R6 R5 K3 ["text"]
       82 NEWTABLE                         R6 0 2
       84 DUPTABLE                         R7 K18 [{"id", "text", "onActivated"}]
       85 LOADK                            R8 K28 ["edit-cut"]
       86 SETTABLEKS                       R8 R7 K1 ["id"]
       88 LOADK                            R8 K29 ["Cut"]
       89 SETTABLEKS                       R8 R7 K3 ["text"]
       91 DUPCLOSURE                       R8 K30 [PROTO_58]
       92 SETTABLEKS                       R8 R7 K9 ["onActivated"]
       94 DUPTABLE                         R8 K18 [{"id", "text", "onActivated"}]
       95 LOADK                            R9 K31 ["edit-copy"]
       96 SETTABLEKS                       R9 R8 K1 ["id"]
       98 LOADK                            R9 K32 ["Copy"]
       99 SETTABLEKS                       R9 R8 K3 ["text"]
      101 DUPCLOSURE                       R9 K33 [PROTO_59]
      102 SETTABLEKS                       R9 R8 K9 ["onActivated"]
      104 SETLIST                          R6 R7 2 [1]
      106 SETTABLEKS                       R6 R5 K4 ["items"]
      108 SETLIST                          R3 R4 2 [1]
      110 GETUPVAL                         R4 0
      111 GETTABLEKS                       R4 R4 K34 ["createElement"]
      113 GETUPVAL                         R5 1
      114 DUPTABLE                         R6 K37 [{"Size", "tag"}]
      115 GETIMPORT                        R7 K40 [UDim2.new]
      117 LOADN                            R8 1
      118 LOADN                            R9 0
      119 LOADN                            R10 0
      120 LOADN                            R11 88
      121 CALL                             R7 4 1
      122 SETTABLEKS                       R7 R6 K35 ["Size"]
      124 LOADK                            R7 K41 ["row align-x-center align-y-center"]
      125 SETTABLEKS                       R7 R6 K36 ["tag"]
      127 DUPTABLE                         R7 K43 [{"Menu"}]
      128 GETUPVAL                         R8 0
      129 GETTABLEKS                       R8 R8 K34 ["createElement"]
      131 GETUPVAL                         R9 2
      132 DUPTABLE                         R10 K49 [{"isOpen", "items", "size", "side", "align", "onPressedOutside"}]
      133 SETTABLEKS                       R1 R10 K44 ["isOpen"]
      135 SETTABLEKS                       R3 R10 K4 ["items"]
      137 GETTABLEKS                       R11 R0 K50 ["controls"]
      139 GETTABLEKS                       R11 R11 K45 ["size"]
      141 SETTABLEKS                       R11 R10 K45 ["size"]
      143 GETTABLEKS                       R11 R0 K50 ["controls"]
      145 GETTABLEKS                       R11 R11 K46 ["side"]
      147 SETTABLEKS                       R11 R10 K46 ["side"]
      149 GETTABLEKS                       R11 R0 K50 ["controls"]
      151 GETTABLEKS                       R11 R11 K47 ["align"]
      153 SETTABLEKS                       R11 R10 K47 ["align"]
      155 NEWCLOSURE                       R11 P5
      156 CAPTURE                          VAL R2
      157 SETTABLEKS                       R11 R10 K48 ["onPressedOutside"]
      159 DUPTABLE                         R11 K52 [{"Button"}]
      160 GETUPVAL                         R12 0
      161 GETTABLEKS                       R12 R12 K34 ["createElement"]
      163 GETUPVAL                         R13 3
      164 DUPTABLE                         R14 K53 [{"text", "size", "onActivated"}]
      165 LOADK                            R15 K54 ["Open Menu"]
      166 SETTABLEKS                       R15 R14 K3 ["text"]
      168 GETUPVAL                         R15 4
      169 GETTABLEKS                       R15 R15 K55 ["Medium"]
      171 SETTABLEKS                       R15 R14 K45 ["size"]
      173 NEWCLOSURE                       R15 P6
      174 CAPTURE                          VAL R2
      175 CAPTURE                          VAL R1
      176 SETTABLEKS                       R15 R14 K9 ["onActivated"]
      178 CALL                             R12 2 1
      179 SETTABLEKS                       R12 R11 K51 ["Button"]
      181 CALL                             R8 3 1
      182 SETTABLEKS                       R8 R7 K42 ["Menu"]
      184 CALL                             R4 3 -1
      185 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Button"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R6 K11 ["Coachmark"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Components"]
       37 GETTABLEKS                       R7 R7 K12 ["IconButton"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K13 ["Enums"]
       44 GETTABLEKS                       R8 R8 K14 ["IconSize"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K13 ["Enums"]
       51 GETTABLEKS                       R9 R9 K15 ["InputSize"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K9 ["Components"]
       58 GETTABLEKS                       R10 R10 K16 ["Menu"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K13 ["Enums"]
       65 GETTABLEKS                       R11 R11 K17 ["PopoverAlign"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R12 R0 K13 ["Enums"]
       72 GETTABLEKS                       R12 R12 K18 ["PopoverSide"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K6 [require]
       77 GETTABLEKS                       R13 R0 K9 ["Components"]
       79 GETTABLEKS                       R13 R13 K19 ["Text"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K6 [require]
       84 GETTABLEKS                       R14 R0 K9 ["Components"]
       86 GETTABLEKS                       R14 R14 K20 ["View"]
       88 CALL                             R13 1 1
       89 NEWTABLE                         R14 0 4
       91 DUPTABLE                         R15 K24 [{"id", "icon", "text"}]
       92 LOADK                            R16 K25 ["new"]
       93 SETTABLEKS                       R16 R15 K21 ["id"]
       95 LOADK                            R16 K26 ["icons/actions/edit/add"]
       96 SETTABLEKS                       R16 R15 K22 ["icon"]
       98 LOADK                            R16 K27 ["New"]
       99 SETTABLEKS                       R16 R15 K23 ["text"]
      101 DUPTABLE                         R16 K24 [{"id", "icon", "text"}]
      102 LOADK                            R17 K28 ["edit"]
      103 SETTABLEKS                       R17 R16 K21 ["id"]
      105 LOADK                            R17 K29 ["icons/actions/edit/edit"]
      106 SETTABLEKS                       R17 R16 K22 ["icon"]
      108 LOADK                            R17 K30 ["Edit"]
      109 SETTABLEKS                       R17 R16 K23 ["text"]
      111 DUPTABLE                         R17 K24 [{"id", "icon", "text"}]
      112 LOADK                            R18 K31 ["copy"]
      113 SETTABLEKS                       R18 R17 K21 ["id"]
      115 LOADK                            R18 K32 ["icons/actions/edit/copy"]
      116 SETTABLEKS                       R18 R17 K22 ["icon"]
      118 LOADK                            R18 K33 ["Copy"]
      119 SETTABLEKS                       R18 R17 K23 ["text"]
      121 DUPTABLE                         R18 K35 [{"id", "icon", "text", "isDisabled"}]
      122 LOADK                            R19 K36 ["delete"]
      123 SETTABLEKS                       R19 R18 K21 ["id"]
      125 LOADK                            R19 K37 ["icons/actions/edit/delete"]
      126 SETTABLEKS                       R19 R18 K22 ["icon"]
      128 LOADK                            R19 K38 ["Delete"]
      129 SETTABLEKS                       R19 R18 K23 ["text"]
      131 LOADB                            R19 1
      132 SETTABLEKS                       R19 R18 K34 ["isDisabled"]
      134 SETLIST                          R14 R15 4 [1]
      136 NEWTABLE                         R15 0 12
      138 DUPTABLE                         R16 K24 [{"id", "icon", "text"}]
      139 LOADK                            R17 K25 ["new"]
      140 SETTABLEKS                       R17 R16 K21 ["id"]
      142 LOADK                            R17 K26 ["icons/actions/edit/add"]
      143 SETTABLEKS                       R17 R16 K22 ["icon"]
      145 LOADK                            R17 K27 ["New"]
      146 SETTABLEKS                       R17 R16 K23 ["text"]
      148 DUPTABLE                         R17 K24 [{"id", "icon", "text"}]
      149 LOADK                            R18 K39 ["open"]
      150 SETTABLEKS                       R18 R17 K21 ["id"]
      152 LOADK                            R18 K29 ["icons/actions/edit/edit"]
      153 SETTABLEKS                       R18 R17 K22 ["icon"]
      155 LOADK                            R18 K40 ["Open"]
      156 SETTABLEKS                       R18 R17 K23 ["text"]
      158 DUPTABLE                         R18 K24 [{"id", "icon", "text"}]
      159 LOADK                            R19 K41 ["save"]
      160 SETTABLEKS                       R19 R18 K21 ["id"]
      162 LOADK                            R19 K29 ["icons/actions/edit/edit"]
      163 SETTABLEKS                       R19 R18 K22 ["icon"]
      165 LOADK                            R19 K42 ["Save"]
      166 SETTABLEKS                       R19 R18 K23 ["text"]
      168 DUPTABLE                         R19 K24 [{"id", "icon", "text"}]
      169 LOADK                            R20 K43 ["save-as"]
      170 SETTABLEKS                       R20 R19 K21 ["id"]
      172 LOADK                            R20 K29 ["icons/actions/edit/edit"]
      173 SETTABLEKS                       R20 R19 K22 ["icon"]
      175 LOADK                            R20 K44 ["Save As..."]
      176 SETTABLEKS                       R20 R19 K23 ["text"]
      178 DUPTABLE                         R20 K24 [{"id", "icon", "text"}]
      179 LOADK                            R21 K45 ["rename"]
      180 SETTABLEKS                       R21 R20 K21 ["id"]
      182 LOADK                            R21 K29 ["icons/actions/edit/edit"]
      183 SETTABLEKS                       R21 R20 K22 ["icon"]
      185 LOADK                            R21 K46 ["Rename"]
      186 SETTABLEKS                       R21 R20 K23 ["text"]
      188 DUPTABLE                         R21 K24 [{"id", "icon", "text"}]
      189 LOADK                            R22 K47 ["duplicate"]
      190 SETTABLEKS                       R22 R21 K21 ["id"]
      192 LOADK                            R22 K32 ["icons/actions/edit/copy"]
      193 SETTABLEKS                       R22 R21 K22 ["icon"]
      195 LOADK                            R22 K48 ["Duplicate"]
      196 SETTABLEKS                       R22 R21 K23 ["text"]
      198 DUPTABLE                         R22 K24 [{"id", "icon", "text"}]
      199 LOADK                            R23 K31 ["copy"]
      200 SETTABLEKS                       R23 R22 K21 ["id"]
      202 LOADK                            R23 K32 ["icons/actions/edit/copy"]
      203 SETTABLEKS                       R23 R22 K22 ["icon"]
      205 LOADK                            R23 K33 ["Copy"]
      206 SETTABLEKS                       R23 R22 K23 ["text"]
      208 DUPTABLE                         R23 K24 [{"id", "icon", "text"}]
      209 LOADK                            R24 K49 ["cut"]
      210 SETTABLEKS                       R24 R23 K21 ["id"]
      212 LOADK                            R24 K32 ["icons/actions/edit/copy"]
      213 SETTABLEKS                       R24 R23 K22 ["icon"]
      215 LOADK                            R24 K50 ["Cut"]
      216 SETTABLEKS                       R24 R23 K23 ["text"]
      218 DUPTABLE                         R24 K24 [{"id", "icon", "text"}]
      219 LOADK                            R25 K51 ["paste"]
      220 SETTABLEKS                       R25 R24 K21 ["id"]
      222 LOADK                            R25 K32 ["icons/actions/edit/copy"]
      223 SETTABLEKS                       R25 R24 K22 ["icon"]
      225 LOADK                            R25 K52 ["Paste"]
      226 SETTABLEKS                       R25 R24 K23 ["text"]
      228 DUPTABLE                         R25 K24 [{"id", "icon", "text"}]
      229 LOADK                            R26 K53 ["export"]
      230 SETTABLEKS                       R26 R25 K21 ["id"]
      232 LOADK                            R26 K29 ["icons/actions/edit/edit"]
      233 SETTABLEKS                       R26 R25 K22 ["icon"]
      235 LOADK                            R26 K54 ["Export"]
      236 SETTABLEKS                       R26 R25 K23 ["text"]
      238 DUPTABLE                         R26 K24 [{"id", "icon", "text"}]
      239 LOADK                            R27 K55 ["import"]
      240 SETTABLEKS                       R27 R26 K21 ["id"]
      242 LOADK                            R27 K29 ["icons/actions/edit/edit"]
      243 SETTABLEKS                       R27 R26 K22 ["icon"]
      245 LOADK                            R27 K56 ["Import"]
      246 SETTABLEKS                       R27 R26 K23 ["text"]
      248 DUPTABLE                         R27 K24 [{"id", "icon", "text"}]
      249 LOADK                            R28 K36 ["delete"]
      250 SETTABLEKS                       R28 R27 K21 ["id"]
      252 LOADK                            R28 K37 ["icons/actions/edit/delete"]
      253 SETTABLEKS                       R28 R27 K22 ["icon"]
      255 LOADK                            R28 K38 ["Delete"]
      256 SETTABLEKS                       R28 R27 K23 ["text"]
      258 SETLIST                          R15 R16 12 [1]
      260 NEWTABLE                         R16 0 3
      262 DUPTABLE                         R17 K57 [{"id", "text"}]
      263 LOADK                            R18 K58 ["r15"]
      264 SETTABLEKS                       R18 R17 K21 ["id"]
      266 LOADK                            R18 K59 ["R15 Only"]
      267 SETTABLEKS                       R18 R17 K23 ["text"]
      269 DUPTABLE                         R18 K57 [{"id", "text"}]
      270 LOADK                            R19 K60 ["r6"]
      271 SETTABLEKS                       R19 R18 K21 ["id"]
      273 LOADK                            R19 K61 ["R6 Only"]
      274 SETTABLEKS                       R19 R18 K23 ["text"]
      276 DUPTABLE                         R19 K57 [{"id", "text"}]
      277 LOADK                            R20 K62 ["choice"]
      278 SETTABLEKS                       R20 R19 K21 ["id"]
      280 LOADK                            R20 K63 ["Player Choice"]
      281 SETTABLEKS                       R20 R19 K23 ["text"]
      283 SETLIST                          R16 R17 3 [1]
      285 DUPCLOSURE                       R17 K64 [PROTO_0]
      286 CAPTURE                          VAL R17
      287 DUPCLOSURE                       R18 K65 [PROTO_1]
      288 CAPTURE                          VAL R17
      289 DUPCLOSURE                       R19 K66 [PROTO_5]
      290 DUPTABLE                         R20 K70 [{"summary", "stories", "controls"}]
      291 LOADK                            R21 K71 ["Menu - A popover-based menu component that combines Popover with InternalMenu"]
      292 SETTABLEKS                       R21 R20 K67 ["summary"]
      294 NEWTABLE                         R21 0 11
      296 DUPTABLE                         R22 K74 [{"name", "story"}]
      297 LOADK                            R23 K75 ["Always Open"]
      298 SETTABLEKS                       R23 R22 K72 ["name"]
      300 DUPCLOSURE                       R23 K76 [PROTO_8]
      301 CAPTURE                          VAL R3
      302 CAPTURE                          VAL R13
      303 CAPTURE                          VAL R9
      304 CAPTURE                          VAL R14
      305 CAPTURE                          VAL R4
      306 CAPTURE                          VAL R8
      307 SETTABLEKS                       R23 R22 K73 ["story"]
      309 DUPTABLE                         R23 K74 [{"name", "story"}]
      310 LOADK                            R24 K77 ["Basic Menu"]
      311 SETTABLEKS                       R24 R23 K72 ["name"]
      313 DUPCLOSURE                       R24 K78 [PROTO_12]
      314 CAPTURE                          VAL R3
      315 CAPTURE                          VAL R13
      316 CAPTURE                          VAL R9
      317 CAPTURE                          VAL R14
      318 CAPTURE                          VAL R4
      319 CAPTURE                          VAL R8
      320 SETTABLEKS                       R24 R23 K73 ["story"]
      322 DUPTABLE                         R24 K74 [{"name", "story"}]
      323 LOADK                            R25 K79 ["Scrollable (maxHeight)"]
      324 SETTABLEKS                       R25 R24 K72 ["name"]
      326 DUPCLOSURE                       R25 K80 [PROTO_16]
      327 CAPTURE                          VAL R3
      328 CAPTURE                          VAL R13
      329 CAPTURE                          VAL R9
      330 CAPTURE                          VAL R15
      331 CAPTURE                          VAL R4
      332 CAPTURE                          VAL R8
      333 SETTABLEKS                       R25 R24 K73 ["story"]
      335 DUPTABLE                         R25 K74 [{"name", "story"}]
      336 LOADK                            R26 K81 ["Selection Menu"]
      337 SETTABLEKS                       R26 R25 K72 ["name"]
      339 DUPCLOSURE                       R26 K82 [PROTO_22]
      340 CAPTURE                          VAL R3
      341 CAPTURE                          VAL R16
      342 CAPTURE                          VAL R2
      343 CAPTURE                          VAL R13
      344 CAPTURE                          VAL R9
      345 CAPTURE                          VAL R4
      346 CAPTURE                          VAL R8
      347 SETTABLEKS                       R26 R25 K73 ["story"]
      349 DUPTABLE                         R26 K74 [{"name", "story"}]
      350 LOADK                            R27 K83 ["Different Anchors"]
      351 SETTABLEKS                       R27 R26 K72 ["name"]
      353 DUPCLOSURE                       R27 K84 [PROTO_29]
      354 CAPTURE                          VAL R3
      355 CAPTURE                          VAL R13
      356 CAPTURE                          VAL R9
      357 CAPTURE                          VAL R14
      358 CAPTURE                          VAL R6
      359 CAPTURE                          VAL R7
      360 CAPTURE                          VAL R12
      361 SETTABLEKS                       R27 R26 K73 ["story"]
      363 DUPTABLE                         R27 K74 [{"name", "story"}]
      364 LOADK                            R28 K85 ["Reference anchor"]
      365 SETTABLEKS                       R28 R27 K72 ["name"]
      367 DUPCLOSURE                       R28 K86 [PROTO_33]
      368 CAPTURE                          VAL R3
      369 CAPTURE                          VAL R13
      370 CAPTURE                          VAL R4
      371 CAPTURE                          VAL R8
      372 CAPTURE                          VAL R9
      373 CAPTURE                          VAL R14
      374 SETTABLEKS                       R28 R27 K73 ["story"]
      376 DUPTABLE                         R28 K74 [{"name", "story"}]
      377 LOADK                            R29 K87 ["Coachmark on menu item"]
      378 SETTABLEKS                       R29 R28 K72 ["name"]
      380 DUPCLOSURE                       R29 K88 [PROTO_38]
      381 CAPTURE                          VAL R3
      382 CAPTURE                          VAL R13
      383 CAPTURE                          VAL R9
      384 CAPTURE                          VAL R4
      385 CAPTURE                          VAL R8
      386 CAPTURE                          VAL R5
      387 SETTABLEKS                       R29 R28 K73 ["story"]
      389 DUPTABLE                         R29 K74 [{"name", "story"}]
      390 LOADK                            R30 K89 ["Match anchorRef width"]
      391 SETTABLEKS                       R30 R29 K72 ["name"]
      393 DUPCLOSURE                       R30 K90 [PROTO_45]
      394 CAPTURE                          VAL R3
      395 CAPTURE                          VAL R13
      396 CAPTURE                          VAL R4
      397 CAPTURE                          VAL R8
      398 CAPTURE                          VAL R9
      399 CAPTURE                          VAL R14
      400 SETTABLEKS                       R30 R29 K73 ["story"]
      402 DUPTABLE                         R30 K74 [{"name", "story"}]
      403 LOADK                            R31 K91 ["Grouped"]
      404 SETTABLEKS                       R31 R30 K72 ["name"]
      406 DUPCLOSURE                       R31 K92 [PROTO_49]
      407 CAPTURE                          VAL R3
      408 CAPTURE                          VAL R13
      409 CAPTURE                          VAL R9
      410 CAPTURE                          VAL R4
      411 CAPTURE                          VAL R8
      412 SETTABLEKS                       R31 R30 K73 ["story"]
      414 DUPTABLE                         R31 K74 [{"name", "story"}]
      415 LOADK                            R32 K93 ["Nested Submenus"]
      416 SETTABLEKS                       R32 R31 K72 ["name"]
      418 DUPCLOSURE                       R32 K94 [PROTO_54]
      419 CAPTURE                          VAL R3
      420 CAPTURE                          VAL R18
      421 CAPTURE                          VAL R19
      422 CAPTURE                          VAL R13
      423 CAPTURE                          VAL R9
      424 CAPTURE                          VAL R4
      425 CAPTURE                          VAL R8
      426 SETTABLEKS                       R32 R31 K73 ["story"]
      428 DUPTABLE                         R32 K74 [{"name", "story"}]
      429 LOADK                            R33 K95 ["Nested Submenus (per-item onActivated)"]
      430 SETTABLEKS                       R33 R32 K72 ["name"]
      432 DUPCLOSURE                       R33 K96 [PROTO_62]
      433 CAPTURE                          VAL R3
      434 CAPTURE                          VAL R13
      435 CAPTURE                          VAL R9
      436 CAPTURE                          VAL R4
      437 CAPTURE                          VAL R8
      438 SETTABLEKS                       R33 R32 K73 ["story"]
      440 SETLIST                          R21 R22 11 [1]
      442 SETTABLEKS                       R21 R20 K68 ["stories"]
      444 DUPTABLE                         R21 K101 [{"size", "side", "align", "maxDepth"}]
      445 GETTABLEKS                       R22 R2 K102 ["values"]
      447 MOVE                             R23 R8
      448 CALL                             R22 1 1
      449 SETTABLEKS                       R22 R21 K97 ["size"]
      451 NEWTABLE                         R22 0 4
      453 GETTABLEKS                       R23 R11 K103 ["Bottom"]
      455 GETTABLEKS                       R24 R11 K104 ["Top"]
      457 GETTABLEKS                       R25 R11 K105 ["Left"]
      459 GETTABLEKS                       R26 R11 K106 ["Right"]
      461 SETLIST                          R22 R23 4 [1]
      463 SETTABLEKS                       R22 R21 K98 ["side"]
      465 GETTABLEKS                       R22 R2 K102 ["values"]
      467 MOVE                             R23 R10
      468 CALL                             R22 1 1
      469 SETTABLEKS                       R22 R21 K99 ["align"]
      471 NEWTABLE                         R22 0 3
      473 LOADN                            R23 3
      474 LOADN                            R24 4
      475 LOADN                            R25 5
      476 SETLIST                          R22 R23 3 [1]
      478 SETTABLEKS                       R22 R21 K100 ["maxDepth"]
      480 SETTABLEKS                       R21 R20 K69 ["controls"]
      482 RETURN                           R20 1
