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
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQKS                    R2 K0 ["None"] ; [+3]
        3 LOADNIL                          R2
        4 RETURN                           R2 1
        5 GETUPVAL                         R2 0
        6 JUMPIFNOTEQKS                    R2 K1 ["Avatar"] ; [+9]
        8 DUPTABLE                         R2 K4 [{"type", "userId"}]
        9 LOADK                            R3 K1 ["Avatar"]
       10 SETTABLEKS                       R3 R2 K2 ["type"]
       12 LOADK                            R3 K5 [24813339]
       13 SETTABLEKS                       R3 R2 K3 ["userId"]
       15 RETURN                           R2 1
       16 GETUPVAL                         R2 0
       17 JUMPIFNOTEQKS                    R2 K6 ["Mixed"] ; [+17]
       19 SUBK                             R3 R0 K8 [1]
       20 MODK                             R2 R3 K7 [3]
       21 JUMPIFNOTEQKN                    R2 K8 [1] ; [+9]
       23 DUPTABLE                         R3 K4 [{"type", "userId"}]
       24 LOADK                            R4 K1 ["Avatar"]
       25 SETTABLEKS                       R4 R3 K2 ["type"]
       27 LOADK                            R4 K5 [24813339]
       28 SETTABLEKS                       R4 R3 K3 ["userId"]
       30 RETURN                           R3 1
       31 JUMPIFNOTEQKN                    R2 K9 [2] ; [+3]
       33 LOADNIL                          R3
       34 RETURN                           R3 1
       35 GETUPVAL                         R3 1
       36 SUBK                             R7 R0 K8 [1]
       37 ADD                              R6 R7 R1
       38 GETUPVAL                         R8 1
       39 LENGTH                           R7 R8
       40 MOD                              R5 R6 R7
       41 ADDK                             R4 R5 K8 [1]
       42 GETTABLE                         R2 R3 R4
       43 RETURN                           R2 1

PROTO_7:
        0 JUMPIF                           R1 ; [+3]
        1 GETUPVAL                         R2 0
        2 JUMPIFNOTEQKS                    R2 K0 ["None"] ; [+3]
        4 LOADNIL                          R2
        5 RETURN                           R2 1
        6 GETUPVAL                         R2 0
        7 JUMPIFNOTEQKS                    R2 K1 ["Hint"] ; [+15]
        9 DUPTABLE                         R2 K4 [{"type", "text"}]
       10 LOADK                            R3 K1 ["Hint"]
       11 SETTABLEKS                       R3 R2 K2 ["type"]
       13 GETUPVAL                         R4 1
       14 SUBK                             R7 R0 K5 [1]
       15 GETUPVAL                         R9 1
       16 LENGTH                           R8 R9
       17 MOD                              R6 R7 R8
       18 ADDK                             R5 R6 K5 [1]
       19 GETTABLE                         R3 R4 R5
       20 SETTABLEKS                       R3 R2 K3 ["text"]
       22 RETURN                           R2 1
       23 GETUPVAL                         R2 0
       24 JUMPIFNOTEQKS                    R2 K6 ["Badge"] ; [+21]
       26 GETUPVAL                         R3 2
       27 SUBK                             R6 R0 K5 [1]
       28 GETUPVAL                         R8 2
       29 LENGTH                           R7 R8
       30 MOD                              R5 R6 R7
       31 ADDK                             R4 R5 K5 [1]
       32 GETTABLE                         R2 R3 R4
       33 DUPTABLE                         R3 K8 [{"type", "text", "variant"}]
       34 LOADK                            R4 K6 ["Badge"]
       35 SETTABLEKS                       R4 R3 K2 ["type"]
       37 GETTABLEKS                       R4 R2 K3 ["text"]
       39 SETTABLEKS                       R4 R3 K3 ["text"]
       41 GETTABLEKS                       R4 R2 K7 ["variant"]
       43 SETTABLEKS                       R4 R3 K7 ["variant"]
       45 RETURN                           R3 1
       46 MODK                             R2 R0 K9 [2]
       47 JUMPIFNOTEQKN                    R2 K5 [1] ; [+15]
       49 DUPTABLE                         R2 K4 [{"type", "text"}]
       50 LOADK                            R3 K1 ["Hint"]
       51 SETTABLEKS                       R3 R2 K2 ["type"]
       53 GETUPVAL                         R4 1
       54 SUBK                             R7 R0 K5 [1]
       55 GETUPVAL                         R9 1
       56 LENGTH                           R8 R9
       57 MOD                              R6 R7 R8
       58 ADDK                             R5 R6 K5 [1]
       59 GETTABLE                         R3 R4 R5
       60 SETTABLEKS                       R3 R2 K3 ["text"]
       62 RETURN                           R2 1
       63 GETUPVAL                         R3 2
       64 SUBK                             R6 R0 K5 [1]
       65 GETUPVAL                         R8 2
       66 LENGTH                           R7 R8
       67 MOD                              R5 R6 R7
       68 ADDK                             R4 R5 K5 [1]
       69 GETTABLE                         R2 R3 R4
       70 DUPTABLE                         R3 K8 [{"type", "text", "variant"}]
       71 LOADK                            R4 K6 ["Badge"]
       72 SETTABLEKS                       R4 R3 K2 ["type"]
       74 GETTABLEKS                       R4 R2 K3 ["text"]
       76 SETTABLEKS                       R4 R3 K3 ["text"]
       78 GETTABLEKS                       R4 R2 K7 ["variant"]
       80 SETTABLEKS                       R4 R3 K7 ["variant"]
       82 RETURN                           R3 1

PROTO_8:
        0 LOADK                            R6 K0 ["%*-%*"]
        1 MOVE                             R8 R0
        2 MOVE                             R9 R2
        3 NAMECALL                         R6 R6 K1 ["format"]
        5 CALL                             R6 3 1
        6 MOVE                             R5 R6
        7 JUMPIFNOT                        R4 ; [+5]
        8 GETUPVAL                         R7 0
        9 JUMPIFEQKS                       R7 K2 [""] ; [+3]
       11 GETUPVAL                         R6 0
       12 JUMP                             ; [+1]
       13 MOVE                             R6 R1
       14 GETUPVAL                         R7 1
       15 SETTABLE                         R6 R7 R5
       16 DUPTABLE                         R7 K8 [{"id", "text", "leading", "trailing", "isChecked"}]
       17 SETTABLEKS                       R5 R7 K3 ["id"]
       19 SETTABLEKS                       R6 R7 K4 ["text"]
       21 GETUPVAL                         R8 2
       22 MOVE                             R9 R2
       23 GETUPVAL                         R10 3
       24 CALL                             R8 2 1
       25 SETTABLEKS                       R8 R7 K5 ["leading"]
       27 GETUPVAL                         R8 4
       28 MOVE                             R9 R2
       29 MOVE                             R10 R3
       30 CALL                             R8 2 1
       31 SETTABLEKS                       R8 R7 K6 ["trailing"]
       33 JUMPIFNOT                        R3 ; [+2]
       34 LOADNIL                          R8
       35 JUMP                             ; [+5]
       36 GETUPVAL                         R9 5
       37 JUMPIFEQ                         R9 R5 ; [+2]
       39 LOADB                            R8 0 +1
       40 LOADB                            R8 1
       41 SETTABLEKS                       R8 R7 K7 ["isChecked"]
       43 JUMPIFNOT                        R3 ; [+13]
       44 GETUPVAL                         R8 6
       45 GETUPVAL                         R10 3
       46 SUBK                             R9 R10 K9 [1]
       47 LOADK                            R11 K10 ["%*-sub"]
       48 MOVE                             R13 R5
       49 NAMECALL                         R11 R11 K1 ["format"]
       51 CALL                             R11 2 1
       52 MOVE                             R10 R11
       53 LOADB                            R11 0
       54 CALL                             R8 3 1
       55 SETTABLEKS                       R8 R7 K11 ["items"]
       57 RETURN                           R7 1

PROTO_9:
        0 LOADN                            R4 1
        1 JUMPIFLT                         R4 R0 ; [+2]
        3 LOADB                            R3 0 +1
        4 LOADB                            R3 1
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 DUPTABLE                         R5 K2 [{"title", "items"}]
       14 LOADK                            R6 K3 ["Group A"]
       15 SETTABLEKS                       R6 R5 K0 ["title"]
       17 NEWTABLE                         R6 0 3
       19 MOVE                             R7 R4
       20 LOADK                            R9 K4 ["%*-a"]
       21 MOVE                             R11 R1
       22 NAMECALL                         R9 R9 K5 ["format"]
       24 CALL                             R9 2 1
       25 MOVE                             R8 R9
       26 LOADK                            R9 K6 ["Action one"]
       27 LOADN                            R10 1
       28 LOADB                            R11 0
       29 MOVE                             R12 R2
       30 CALL                             R7 5 1
       31 LOADK                            R10 K4 ["%*-a"]
       32 MOVE                             R12 R1
       33 NAMECALL                         R10 R10 K5 ["format"]
       35 CALL                             R10 2 1
       36 MOVE                             R9 R10
       37 LOADK                            R11 K7 ["%*-%*"]
       38 MOVE                             R13 R9
       39 LOADN                            R14 2
       40 NAMECALL                         R11 R11 K5 ["format"]
       42 CALL                             R11 3 1
       43 MOVE                             R10 R11
       44 GETUPVAL                         R11 1
       45 LOADK                            R12 K8 ["Action two"]
       46 SETTABLE                         R12 R11 R10
       47 DUPTABLE                         R11 K14 [{"id", "text", "leading", "trailing", "isChecked"}]
       48 SETTABLEKS                       R10 R11 K9 ["id"]
       50 LOADK                            R12 K8 ["Action two"]
       51 SETTABLEKS                       R12 R11 K10 ["text"]
       53 GETUPVAL                         R12 2
       54 LOADN                            R13 2
       55 MOVE                             R14 R0
       56 CALL                             R12 2 1
       57 SETTABLEKS                       R12 R11 K11 ["leading"]
       59 GETUPVAL                         R12 3
       60 LOADN                            R13 2
       61 LOADB                            R14 0
       62 CALL                             R12 2 1
       63 SETTABLEKS                       R12 R11 K12 ["trailing"]
       65 GETUPVAL                         R13 4
       66 JUMPIFEQ                         R13 R10 ; [+2]
       68 LOADB                            R12 0 +1
       69 LOADB                            R12 1
       70 SETTABLEKS                       R12 R11 K13 ["isChecked"]
       72 MOVE                             R8 R11
       73 MOVE                             R9 R4
       74 LOADK                            R11 K4 ["%*-a"]
       75 MOVE                             R13 R1
       76 NAMECALL                         R11 R11 K5 ["format"]
       78 CALL                             R11 2 1
       79 MOVE                             R10 R11
       80 JUMPIFNOT                        R3 ; [+2]
       81 LOADK                            R11 K15 ["More actions"]
       82 JUMP                             ; [+1]
       83 LOADK                            R11 K16 ["Action three"]
       84 LOADN                            R12 3
       85 MOVE                             R13 R3
       86 LOADB                            R14 0
       87 CALL                             R9 5 1
       88 SETLIST                          R6 R7 3 [1]
       90 SETTABLEKS                       R6 R5 K1 ["items"]
       92 DUPTABLE                         R6 K2 [{"title", "items"}]
       93 LOADK                            R7 K17 ["Group B"]
       94 SETTABLEKS                       R7 R6 K0 ["title"]
       96 NEWTABLE                         R7 0 3
       98 LOADK                            R10 K18 ["%*-b"]
       99 MOVE                             R12 R1
      100 NAMECALL                         R10 R10 K5 ["format"]
      102 CALL                             R10 2 1
      103 MOVE                             R9 R10
      104 LOADK                            R11 K7 ["%*-%*"]
      105 MOVE                             R13 R9
      106 LOADN                            R14 4
      107 NAMECALL                         R11 R11 K5 ["format"]
      109 CALL                             R11 3 1
      110 MOVE                             R10 R11
      111 GETUPVAL                         R11 1
      112 LOADK                            R12 K19 ["Other one"]
      113 SETTABLE                         R12 R11 R10
      114 DUPTABLE                         R11 K14 [{"id", "text", "leading", "trailing", "isChecked"}]
      115 SETTABLEKS                       R10 R11 K9 ["id"]
      117 LOADK                            R12 K19 ["Other one"]
      118 SETTABLEKS                       R12 R11 K10 ["text"]
      120 GETUPVAL                         R13 6
      121 JUMPIFNOTEQKS                    R13 K20 ["None"] ; [+3]
      123 LOADNIL                          R12
      124 JUMP                             ; [+21]
      125 GETUPVAL                         R13 6
      126 JUMPIFNOTEQKS                    R13 K21 ["Avatar"] ; [+9]
      128 DUPTABLE                         R12 K24 [{"type", "userId"}]
      129 LOADK                            R13 K21 ["Avatar"]
      130 SETTABLEKS                       R13 R12 K22 ["type"]
      132 LOADK                            R13 K25 [24813339]
      133 SETTABLEKS                       R13 R12 K23 ["userId"]
      135 JUMP                             ; [+10]
      136 GETUPVAL                         R13 6
      137 JUMPIFNOTEQKS                    R13 K26 ["Mixed"] ; [+1]
      139 GETUPVAL                         R13 7
      140 ADDK                             R16 R0 K28 [3]
      141 GETUPVAL                         R18 7
      142 LENGTH                           R17 R18
      143 MOD                              R15 R16 R17
      144 ADDK                             R14 R15 K27 [1]
      145 GETTABLE                         R12 R13 R14
      146 SETTABLEKS                       R12 R11 K11 ["leading"]
      148 GETUPVAL                         R12 3
      149 LOADN                            R13 4
      150 LOADB                            R14 0
      151 CALL                             R12 2 1
      152 SETTABLEKS                       R12 R11 K12 ["trailing"]
      154 GETUPVAL                         R13 4
      155 JUMPIFEQ                         R13 R10 ; [+2]
      157 LOADB                            R12 0 +1
      158 LOADB                            R12 1
      159 SETTABLEKS                       R12 R11 K13 ["isChecked"]
      161 MOVE                             R8 R11
      162 LOADK                            R11 K18 ["%*-b"]
      163 MOVE                             R13 R1
      164 NAMECALL                         R11 R11 K5 ["format"]
      166 CALL                             R11 2 1
      167 MOVE                             R10 R11
      168 LOADK                            R12 K7 ["%*-%*"]
      169 MOVE                             R14 R10
      170 LOADN                            R15 5
      171 NAMECALL                         R12 R12 K5 ["format"]
      173 CALL                             R12 3 1
      174 MOVE                             R11 R12
      175 GETUPVAL                         R12 1
      176 LOADK                            R13 K29 ["Other two"]
      177 SETTABLE                         R13 R12 R11
      178 DUPTABLE                         R12 K14 [{"id", "text", "leading", "trailing", "isChecked"}]
      179 SETTABLEKS                       R11 R12 K9 ["id"]
      181 LOADK                            R13 K29 ["Other two"]
      182 SETTABLEKS                       R13 R12 K10 ["text"]
      184 GETUPVAL                         R13 2
      185 LOADN                            R14 5
      186 MOVE                             R15 R0
      187 CALL                             R13 2 1
      188 SETTABLEKS                       R13 R12 K11 ["leading"]
      190 GETUPVAL                         R13 3
      191 LOADN                            R14 5
      192 LOADB                            R15 0
      193 CALL                             R13 2 1
      194 SETTABLEKS                       R13 R12 K12 ["trailing"]
      196 GETUPVAL                         R14 4
      197 JUMPIFEQ                         R14 R11 ; [+2]
      199 LOADB                            R13 0 +1
      200 LOADB                            R13 1
      201 SETTABLEKS                       R13 R12 K13 ["isChecked"]
      203 MOVE                             R9 R12
      204 MOVE                             R10 R4
      205 LOADK                            R12 K18 ["%*-b"]
      206 MOVE                             R14 R1
      207 NAMECALL                         R12 R12 K5 ["format"]
      209 CALL                             R12 2 1
      210 MOVE                             R11 R12
      211 JUMPIFNOT                        R3 ; [+2]
      212 LOADK                            R12 K30 ["More options"]
      213 JUMP                             ; [+1]
      214 LOADK                            R12 K31 ["Other three"]
      215 LOADN                            R13 6
      216 MOVE                             R14 R3
      217 LOADB                            R15 0
      218 CALL                             R10 5 1
      219 SETLIST                          R7 R8 3 [1]
      221 SETTABLEKS                       R7 R6 K1 ["items"]
      223 NEWTABLE                         R7 0 2
      225 MOVE                             R8 R5
      226 MOVE                             R9 R6
      227 SETLIST                          R7 R8 2 [1]
      229 RETURN                           R7 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_11:
        0 FASTCALL1                        TOSTRING R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tostring]
        4 CALL                             R1 1 1
        5 GETIMPORT                        R2 K3 [print]
        7 LOADK                            R4 K4 ["Menu: \"%*\" activated"]
        8 GETUPVAL                         R8 0
        9 GETTABLE                         R7 R8 R1
       10 OR                               R6 R7 R1
       11 NAMECALL                         R4 R4 K5 ["format"]
       13 CALL                             R4 2 1
       14 MOVE                             R3 R4
       15 CALL                             R2 1 0
       16 GETUPVAL                         R2 1
       17 MOVE                             R3 R1
       18 CALL                             R2 1 0
       19 GETUPVAL                         R2 2
       20 LOADB                            R3 0
       21 CALL                             R2 1 0
       22 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["useState"]
        8 LOADNIL                          R4
        9 CALL                             R3 1 2
       10 GETTABLEKS                       R5 R0 K1 ["controls"]
       12 GETTABLEKS                       R5 R5 K2 ["maxDepth"]
       14 GETTABLEKS                       R7 R0 K1 ["controls"]
       16 GETTABLEKS                       R7 R7 K4 ["leading"]
       18 ORK                              R6 R7 K3 ["Icon"]
       19 GETTABLEKS                       R8 R0 K1 ["controls"]
       21 GETTABLEKS                       R8 R8 K6 ["trailing"]
       23 ORK                              R7 R8 K5 ["None"]
       24 GETTABLEKS                       R8 R0 K1 ["controls"]
       26 GETTABLEKS                       R8 R8 K7 ["firstItemText"]
       28 NEWTABLE                         R9 0 6
       30 GETUPVAL                         R10 1
       31 GETTABLEKS                       R10 R10 K3 ["Icon"]
       33 GETTABLEKS                       R10 R10 K8 ["Pencil"]
       35 GETUPVAL                         R11 1
       36 GETTABLEKS                       R11 R11 K3 ["Icon"]
       38 GETTABLEKS                       R11 R11 K9 ["ClipboardPencil"]
       40 GETUPVAL                         R12 1
       41 GETTABLEKS                       R12 R12 K3 ["Icon"]
       43 GETTABLEKS                       R12 R12 K10 ["TextBBold"]
       45 LOADK                            R13 K11 ["icons/actions/share"]
       46 LOADK                            R14 K12 ["icons/actions/edit/copy"]
       47 GETUPVAL                         R15 1
       48 GETTABLEKS                       R15 R15 K3 ["Icon"]
       50 GETTABLEKS                       R15 R15 K13 ["TrashCan"]
       52 SETLIST                          R9 R10 6 [1]
       54 NEWCLOSURE                       R10 P0
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R9
       57 NEWTABLE                         R11 0 6
       59 LOADK                            R12 K14 ["⌘B"]
       60 LOADK                            R13 K15 ["⌘I"]
       61 LOADK                            R14 K16 ["⌘C"]
       62 LOADK                            R15 K17 ["⌘V"]
       63 LOADK                            R16 K18 ["⌘S"]
       64 LOADK                            R17 K19 ["⌘Z"]
       65 SETLIST                          R11 R12 6 [1]
       67 NEWTABLE                         R12 0 4
       69 DUPTABLE                         R13 K22 [{"text", "variant"}]
       70 LOADK                            R14 K23 ["New"]
       71 SETTABLEKS                       R14 R13 K20 ["text"]
       73 GETUPVAL                         R14 2
       74 GETTABLEKS                       R14 R14 K24 ["Success"]
       76 SETTABLEKS                       R14 R13 K21 ["variant"]
       78 DUPTABLE                         R14 K22 [{"text", "variant"}]
       79 LOADK                            R15 K25 ["Beta"]
       80 SETTABLEKS                       R15 R14 K20 ["text"]
       82 GETUPVAL                         R15 2
       83 GETTABLEKS                       R15 R15 K26 ["Warning"]
       85 SETTABLEKS                       R15 R14 K21 ["variant"]
       87 DUPTABLE                         R15 K22 [{"text", "variant"}]
       88 LOADK                            R16 K27 ["Pro"]
       89 SETTABLEKS                       R16 R15 K20 ["text"]
       91 GETUPVAL                         R16 2
       92 GETTABLEKS                       R16 R16 K28 ["Contrast"]
       94 SETTABLEKS                       R16 R15 K21 ["variant"]
       96 DUPTABLE                         R16 K22 [{"text", "variant"}]
       97 LOADK                            R17 K29 ["Soon"]
       98 SETTABLEKS                       R17 R16 K20 ["text"]
      100 GETUPVAL                         R17 2
      101 GETTABLEKS                       R17 R17 K30 ["Neutral"]
      103 SETTABLEKS                       R17 R16 K21 ["variant"]
      105 SETLIST                          R12 R13 4 [1]
      107 NEWCLOSURE                       R13 P1
      108 CAPTURE                          VAL R7
      109 CAPTURE                          VAL R11
      110 CAPTURE                          VAL R12
      111 NEWTABLE                         R14 0 0
      113 NEWCLOSURE                       R15 P2
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R14
      116 CAPTURE                          VAL R10
      117 CAPTURE                          VAL R13
      118 CAPTURE                          VAL R3
      119 CAPTURE                          VAL R15
      120 CAPTURE                          VAL R6
      121 CAPTURE                          VAL R9
      122 MOVE                             R16 R15
      123 MOVE                             R17 R5
      124 LOADK                            R18 K31 ["p"]
      125 LOADB                            R19 1
      126 CALL                             R16 3 1
      127 GETUPVAL                         R17 0
      128 GETTABLEKS                       R17 R17 K32 ["createElement"]
      130 GETUPVAL                         R18 3
      131 DUPTABLE                         R19 K35 [{"Size", "tag"}]
      132 GETIMPORT                        R20 K38 [UDim2.new]
      134 LOADN                            R21 1
      135 LOADN                            R22 0
      136 LOADN                            R23 0
      137 LOADN                            R24 224
      138 CALL                             R20 4 1
      139 SETTABLEKS                       R20 R19 K33 ["Size"]
      141 LOADK                            R20 K39 ["row align-x-center align-y-center"]
      142 SETTABLEKS                       R20 R19 K34 ["tag"]
      144 DUPTABLE                         R20 K41 [{"Menu"}]
      145 GETUPVAL                         R21 0
      146 GETTABLEKS                       R21 R21 K32 ["createElement"]
      148 GETUPVAL                         R22 4
      149 DUPTABLE                         R23 K49 [{"isOpen", "items", "size", "side", "align", "onPressedOutside", "onActivated"}]
      150 SETTABLEKS                       R1 R23 K42 ["isOpen"]
      152 SETTABLEKS                       R16 R23 K43 ["items"]
      154 GETTABLEKS                       R24 R0 K1 ["controls"]
      156 GETTABLEKS                       R24 R24 K44 ["size"]
      158 SETTABLEKS                       R24 R23 K44 ["size"]
      160 GETTABLEKS                       R24 R0 K1 ["controls"]
      162 GETTABLEKS                       R24 R24 K45 ["side"]
      164 SETTABLEKS                       R24 R23 K45 ["side"]
      166 GETTABLEKS                       R24 R0 K1 ["controls"]
      168 GETTABLEKS                       R24 R24 K46 ["align"]
      170 SETTABLEKS                       R24 R23 K46 ["align"]
      172 NEWCLOSURE                       R24 P3
      173 CAPTURE                          VAL R2
      174 SETTABLEKS                       R24 R23 K47 ["onPressedOutside"]
      176 NEWCLOSURE                       R24 P4
      177 CAPTURE                          VAL R14
      178 CAPTURE                          VAL R4
      179 CAPTURE                          VAL R2
      180 SETTABLEKS                       R24 R23 K48 ["onActivated"]
      182 DUPTABLE                         R24 K51 [{"Button"}]
      183 GETUPVAL                         R25 0
      184 GETTABLEKS                       R25 R25 K32 ["createElement"]
      186 GETUPVAL                         R26 5
      187 DUPTABLE                         R27 K52 [{"text", "size", "onActivated"}]
      188 LOADK                            R28 K53 ["Open Playground"]
      189 SETTABLEKS                       R28 R27 K20 ["text"]
      191 GETUPVAL                         R28 6
      192 GETTABLEKS                       R28 R28 K54 ["Medium"]
      194 SETTABLEKS                       R28 R27 K44 ["size"]
      196 NEWCLOSURE                       R28 P5
      197 CAPTURE                          VAL R2
      198 CAPTURE                          VAL R1
      199 SETTABLEKS                       R28 R27 K48 ["onActivated"]
      201 CALL                             R25 2 1
      202 SETTABLEKS                       R25 R24 K50 ["Button"]
      204 CALL                             R21 3 1
      205 SETTABLEKS                       R21 R20 K40 ["Menu"]
      207 CALL                             R17 3 -1
      208 RETURN                           R17 -1

PROTO_14:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Always open menu item activated:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_15:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Button clicked but menu stays open"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_16:
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
       47 DUPCLOSURE                       R8 K18 [PROTO_14]
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
       64 DUPCLOSURE                       R12 K25 [PROTO_15]
       65 SETTABLEKS                       R12 R11 K15 ["onActivated"]
       67 CALL                             R9 2 1
       68 SETTABLEKS                       R9 R8 K19 ["Button"]
       70 CALL                             R5 3 1
       71 SETTABLEKS                       R5 R4 K8 ["Menu"]
       73 CALL                             R1 3 -1
       74 RETURN                           R1 -1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_18:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Menu item activated:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 0
        6 LOADB                            R2 0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_20:
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

PROTO_21:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_22:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Menu item activated:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 0
        6 LOADB                            R2 0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_24:
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

PROTO_25:
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

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["map"]
        3 GETUPVAL                         R1 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_27:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_30:
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

PROTO_31:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_32:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Button menu item activated:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 0
        6 LOADB                            R2 0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_35:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Card menu item activated:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 0
        6 LOADB                            R2 0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_37:
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

PROTO_38:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_40:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Always open menu item activated:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_41:
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
       82 DUPCLOSURE                       R11 K28 [PROTO_40]
       83 SETTABLEKS                       R11 R10 K16 ["onActivated"]
       85 SETTABLEKS                       R1 R10 K25 ["anchorRef"]
       87 CALL                             R8 2 1
       88 SETTABLEKS                       R8 R7 K11 ["Menu"]
       90 CALL                             R4 3 -1
       91 RETURN                           R4 -1

PROTO_42:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_43:
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

PROTO_44:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_46:
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

PROTO_47:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [UDim.new]
        3 LOADN                            R2 0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K3 ["AbsoluteSize"]
        7 GETTABLEKS                       R3 R3 K4 ["X"]
        9 CALL                             R1 2 -1
       10 CALL                             R0 -1 0
       11 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_49:
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

PROTO_50:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_52:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Menu item activated:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 0
        6 LOADB                            R2 0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_53:
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

PROTO_54:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_55:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_56:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_57:
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

PROTO_58:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 3
        5 CALL                             R0 2 1
        6 RETURN                           R0 1

PROTO_59:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_60:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Menu item activated by parent:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 0
        6 LOADB                            R2 0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

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

PROTO_63:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Per-item onActivated:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_64:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Per-item onActivated:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_65:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Per-item onActivated:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_66:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Per-item onActivated:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_67:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Per-item onActivated:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_68:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_69:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_70:
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
       29 DUPCLOSURE                       R7 K14 [PROTO_63]
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
       51 DUPCLOSURE                       R10 K21 [PROTO_64]
       52 SETTABLEKS                       R10 R9 K9 ["onActivated"]
       54 DUPTABLE                         R10 K18 [{"id", "text", "onActivated"}]
       55 LOADK                            R11 K22 ["recent-project-b"]
       56 SETTABLEKS                       R11 R10 K1 ["id"]
       58 LOADK                            R11 K23 ["Project B"]
       59 SETTABLEKS                       R11 R10 K3 ["text"]
       61 DUPCLOSURE                       R11 K24 [PROTO_65]
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
       91 DUPCLOSURE                       R8 K30 [PROTO_66]
       92 SETTABLEKS                       R8 R7 K9 ["onActivated"]
       94 DUPTABLE                         R8 K18 [{"id", "text", "onActivated"}]
       95 LOADK                            R9 K31 ["edit-copy"]
       96 SETTABLEKS                       R9 R8 K1 ["id"]
       98 LOADK                            R9 K32 ["Copy"]
       99 SETTABLEKS                       R9 R8 K3 ["text"]
      101 DUPCLOSURE                       R9 K33 [PROTO_67]
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
       11 GETTABLEKS                       R3 R1 K7 ["BuilderIcons"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Enums"]
       28 GETTABLEKS                       R6 R6 K11 ["BadgeVariant"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K12 ["Components"]
       35 GETTABLEKS                       R7 R7 K13 ["Button"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R0 K12 ["Components"]
       42 GETTABLEKS                       R8 R8 K14 ["Coachmark"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K6 [require]
       47 GETTABLEKS                       R9 R0 K15 ["Utility"]
       49 GETTABLEKS                       R9 R9 K16 ["Flags"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K6 [require]
       54 GETTABLEKS                       R10 R0 K12 ["Components"]
       56 GETTABLEKS                       R10 R10 K17 ["IconButton"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K6 [require]
       61 GETTABLEKS                       R11 R0 K10 ["Enums"]
       63 GETTABLEKS                       R11 R11 K18 ["IconSize"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K6 [require]
       68 GETTABLEKS                       R12 R0 K10 ["Enums"]
       70 GETTABLEKS                       R12 R12 K19 ["InputSize"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K6 [require]
       75 GETTABLEKS                       R13 R0 K12 ["Components"]
       77 GETTABLEKS                       R13 R13 K20 ["Menu"]
       79 CALL                             R12 1 1
       80 GETIMPORT                        R13 K6 [require]
       82 GETTABLEKS                       R14 R0 K10 ["Enums"]
       84 GETTABLEKS                       R14 R14 K21 ["PopoverAlign"]
       86 CALL                             R13 1 1
       87 GETIMPORT                        R14 K6 [require]
       89 GETTABLEKS                       R15 R0 K10 ["Enums"]
       91 GETTABLEKS                       R15 R15 K22 ["PopoverSide"]
       93 CALL                             R14 1 1
       94 GETIMPORT                        R15 K6 [require]
       96 GETTABLEKS                       R16 R0 K12 ["Components"]
       98 GETTABLEKS                       R16 R16 K23 ["Text"]
      100 CALL                             R15 1 1
      101 GETIMPORT                        R16 K6 [require]
      103 GETTABLEKS                       R17 R0 K12 ["Components"]
      105 GETTABLEKS                       R17 R17 K24 ["View"]
      107 CALL                             R16 1 1
      108 NEWTABLE                         R17 0 4
      110 DUPTABLE                         R18 K28 [{"id", "icon", "text"}]
      111 LOADK                            R19 K29 ["new"]
      112 SETTABLEKS                       R19 R18 K25 ["id"]
      114 LOADK                            R19 K30 ["icons/actions/edit/add"]
      115 SETTABLEKS                       R19 R18 K26 ["icon"]
      117 LOADK                            R19 K31 ["New"]
      118 SETTABLEKS                       R19 R18 K27 ["text"]
      120 DUPTABLE                         R19 K28 [{"id", "icon", "text"}]
      121 LOADK                            R20 K32 ["edit"]
      122 SETTABLEKS                       R20 R19 K25 ["id"]
      124 LOADK                            R20 K33 ["icons/actions/edit/edit"]
      125 SETTABLEKS                       R20 R19 K26 ["icon"]
      127 LOADK                            R20 K34 ["Edit"]
      128 SETTABLEKS                       R20 R19 K27 ["text"]
      130 DUPTABLE                         R20 K28 [{"id", "icon", "text"}]
      131 LOADK                            R21 K35 ["copy"]
      132 SETTABLEKS                       R21 R20 K25 ["id"]
      134 LOADK                            R21 K36 ["icons/actions/edit/copy"]
      135 SETTABLEKS                       R21 R20 K26 ["icon"]
      137 LOADK                            R21 K37 ["Copy"]
      138 SETTABLEKS                       R21 R20 K27 ["text"]
      140 DUPTABLE                         R21 K39 [{"id", "icon", "text", "isDisabled"}]
      141 LOADK                            R22 K40 ["delete"]
      142 SETTABLEKS                       R22 R21 K25 ["id"]
      144 LOADK                            R22 K41 ["icons/actions/edit/delete"]
      145 SETTABLEKS                       R22 R21 K26 ["icon"]
      147 LOADK                            R22 K42 ["Delete"]
      148 SETTABLEKS                       R22 R21 K27 ["text"]
      150 LOADB                            R22 1
      151 SETTABLEKS                       R22 R21 K38 ["isDisabled"]
      153 SETLIST                          R17 R18 4 [1]
      155 NEWTABLE                         R18 0 12
      157 DUPTABLE                         R19 K28 [{"id", "icon", "text"}]
      158 LOADK                            R20 K29 ["new"]
      159 SETTABLEKS                       R20 R19 K25 ["id"]
      161 LOADK                            R20 K30 ["icons/actions/edit/add"]
      162 SETTABLEKS                       R20 R19 K26 ["icon"]
      164 LOADK                            R20 K31 ["New"]
      165 SETTABLEKS                       R20 R19 K27 ["text"]
      167 DUPTABLE                         R20 K28 [{"id", "icon", "text"}]
      168 LOADK                            R21 K43 ["open"]
      169 SETTABLEKS                       R21 R20 K25 ["id"]
      171 LOADK                            R21 K33 ["icons/actions/edit/edit"]
      172 SETTABLEKS                       R21 R20 K26 ["icon"]
      174 LOADK                            R21 K44 ["Open"]
      175 SETTABLEKS                       R21 R20 K27 ["text"]
      177 DUPTABLE                         R21 K28 [{"id", "icon", "text"}]
      178 LOADK                            R22 K45 ["save"]
      179 SETTABLEKS                       R22 R21 K25 ["id"]
      181 LOADK                            R22 K33 ["icons/actions/edit/edit"]
      182 SETTABLEKS                       R22 R21 K26 ["icon"]
      184 LOADK                            R22 K46 ["Save"]
      185 SETTABLEKS                       R22 R21 K27 ["text"]
      187 DUPTABLE                         R22 K28 [{"id", "icon", "text"}]
      188 LOADK                            R23 K47 ["save-as"]
      189 SETTABLEKS                       R23 R22 K25 ["id"]
      191 LOADK                            R23 K33 ["icons/actions/edit/edit"]
      192 SETTABLEKS                       R23 R22 K26 ["icon"]
      194 LOADK                            R23 K48 ["Save As..."]
      195 SETTABLEKS                       R23 R22 K27 ["text"]
      197 DUPTABLE                         R23 K28 [{"id", "icon", "text"}]
      198 LOADK                            R24 K49 ["rename"]
      199 SETTABLEKS                       R24 R23 K25 ["id"]
      201 LOADK                            R24 K33 ["icons/actions/edit/edit"]
      202 SETTABLEKS                       R24 R23 K26 ["icon"]
      204 LOADK                            R24 K50 ["Rename"]
      205 SETTABLEKS                       R24 R23 K27 ["text"]
      207 DUPTABLE                         R24 K28 [{"id", "icon", "text"}]
      208 LOADK                            R25 K51 ["duplicate"]
      209 SETTABLEKS                       R25 R24 K25 ["id"]
      211 LOADK                            R25 K36 ["icons/actions/edit/copy"]
      212 SETTABLEKS                       R25 R24 K26 ["icon"]
      214 LOADK                            R25 K52 ["Duplicate"]
      215 SETTABLEKS                       R25 R24 K27 ["text"]
      217 DUPTABLE                         R25 K28 [{"id", "icon", "text"}]
      218 LOADK                            R26 K35 ["copy"]
      219 SETTABLEKS                       R26 R25 K25 ["id"]
      221 LOADK                            R26 K36 ["icons/actions/edit/copy"]
      222 SETTABLEKS                       R26 R25 K26 ["icon"]
      224 LOADK                            R26 K37 ["Copy"]
      225 SETTABLEKS                       R26 R25 K27 ["text"]
      227 DUPTABLE                         R26 K28 [{"id", "icon", "text"}]
      228 LOADK                            R27 K53 ["cut"]
      229 SETTABLEKS                       R27 R26 K25 ["id"]
      231 LOADK                            R27 K36 ["icons/actions/edit/copy"]
      232 SETTABLEKS                       R27 R26 K26 ["icon"]
      234 LOADK                            R27 K54 ["Cut"]
      235 SETTABLEKS                       R27 R26 K27 ["text"]
      237 DUPTABLE                         R27 K28 [{"id", "icon", "text"}]
      238 LOADK                            R28 K55 ["paste"]
      239 SETTABLEKS                       R28 R27 K25 ["id"]
      241 LOADK                            R28 K36 ["icons/actions/edit/copy"]
      242 SETTABLEKS                       R28 R27 K26 ["icon"]
      244 LOADK                            R28 K56 ["Paste"]
      245 SETTABLEKS                       R28 R27 K27 ["text"]
      247 DUPTABLE                         R28 K28 [{"id", "icon", "text"}]
      248 LOADK                            R29 K57 ["export"]
      249 SETTABLEKS                       R29 R28 K25 ["id"]
      251 LOADK                            R29 K33 ["icons/actions/edit/edit"]
      252 SETTABLEKS                       R29 R28 K26 ["icon"]
      254 LOADK                            R29 K58 ["Export"]
      255 SETTABLEKS                       R29 R28 K27 ["text"]
      257 DUPTABLE                         R29 K28 [{"id", "icon", "text"}]
      258 LOADK                            R30 K59 ["import"]
      259 SETTABLEKS                       R30 R29 K25 ["id"]
      261 LOADK                            R30 K33 ["icons/actions/edit/edit"]
      262 SETTABLEKS                       R30 R29 K26 ["icon"]
      264 LOADK                            R30 K60 ["Import"]
      265 SETTABLEKS                       R30 R29 K27 ["text"]
      267 DUPTABLE                         R30 K28 [{"id", "icon", "text"}]
      268 LOADK                            R31 K40 ["delete"]
      269 SETTABLEKS                       R31 R30 K25 ["id"]
      271 LOADK                            R31 K41 ["icons/actions/edit/delete"]
      272 SETTABLEKS                       R31 R30 K26 ["icon"]
      274 LOADK                            R31 K42 ["Delete"]
      275 SETTABLEKS                       R31 R30 K27 ["text"]
      277 SETLIST                          R18 R19 12 [1]
      279 NEWTABLE                         R19 0 3
      281 DUPTABLE                         R20 K61 [{"id", "text"}]
      282 LOADK                            R21 K62 ["r15"]
      283 SETTABLEKS                       R21 R20 K25 ["id"]
      285 LOADK                            R21 K63 ["R15 Only"]
      286 SETTABLEKS                       R21 R20 K27 ["text"]
      288 DUPTABLE                         R21 K61 [{"id", "text"}]
      289 LOADK                            R22 K64 ["r6"]
      290 SETTABLEKS                       R22 R21 K25 ["id"]
      292 LOADK                            R22 K65 ["R6 Only"]
      293 SETTABLEKS                       R22 R21 K27 ["text"]
      295 DUPTABLE                         R22 K61 [{"id", "text"}]
      296 LOADK                            R23 K66 ["choice"]
      297 SETTABLEKS                       R23 R22 K25 ["id"]
      299 LOADK                            R23 K67 ["Player Choice"]
      300 SETTABLEKS                       R23 R22 K27 ["text"]
      302 SETLIST                          R19 R20 3 [1]
      304 DUPCLOSURE                       R20 K68 [PROTO_0]
      305 CAPTURE                          VAL R20
      306 DUPCLOSURE                       R21 K69 [PROTO_1]
      307 CAPTURE                          VAL R20
      308 DUPCLOSURE                       R22 K70 [PROTO_5]
      309 DUPTABLE                         R23 K74 [{"summary", "stories", "controls"}]
      310 LOADK                            R24 K75 ["Menu - A popover-based menu component that combines Popover with InternalMenu"]
      311 SETTABLEKS                       R24 R23 K71 ["summary"]
      313 NEWTABLE                         R24 0 12
      315 DUPTABLE                         R25 K78 [{"name", "story"}]
      316 LOADK                            R26 K79 ["Playground"]
      317 SETTABLEKS                       R26 R25 K76 ["name"]
      319 DUPCLOSURE                       R26 K80 [PROTO_13]
      320 CAPTURE                          VAL R4
      321 CAPTURE                          VAL R2
      322 CAPTURE                          VAL R5
      323 CAPTURE                          VAL R16
      324 CAPTURE                          VAL R12
      325 CAPTURE                          VAL R6
      326 CAPTURE                          VAL R11
      327 SETTABLEKS                       R26 R25 K77 ["story"]
      329 DUPTABLE                         R26 K78 [{"name", "story"}]
      330 LOADK                            R27 K81 ["Always Open"]
      331 SETTABLEKS                       R27 R26 K76 ["name"]
      333 DUPCLOSURE                       R27 K82 [PROTO_16]
      334 CAPTURE                          VAL R4
      335 CAPTURE                          VAL R16
      336 CAPTURE                          VAL R12
      337 CAPTURE                          VAL R17
      338 CAPTURE                          VAL R6
      339 CAPTURE                          VAL R11
      340 SETTABLEKS                       R27 R26 K77 ["story"]
      342 DUPTABLE                         R27 K78 [{"name", "story"}]
      343 LOADK                            R28 K83 ["Basic Menu"]
      344 SETTABLEKS                       R28 R27 K76 ["name"]
      346 DUPCLOSURE                       R28 K84 [PROTO_20]
      347 CAPTURE                          VAL R4
      348 CAPTURE                          VAL R16
      349 CAPTURE                          VAL R12
      350 CAPTURE                          VAL R17
      351 CAPTURE                          VAL R6
      352 CAPTURE                          VAL R11
      353 SETTABLEKS                       R28 R27 K77 ["story"]
      355 DUPTABLE                         R28 K78 [{"name", "story"}]
      356 LOADK                            R29 K85 ["Scrollable (maxHeight)"]
      357 SETTABLEKS                       R29 R28 K76 ["name"]
      359 DUPCLOSURE                       R29 K86 [PROTO_24]
      360 CAPTURE                          VAL R4
      361 CAPTURE                          VAL R16
      362 CAPTURE                          VAL R12
      363 CAPTURE                          VAL R18
      364 CAPTURE                          VAL R6
      365 CAPTURE                          VAL R11
      366 SETTABLEKS                       R29 R28 K77 ["story"]
      368 DUPTABLE                         R29 K78 [{"name", "story"}]
      369 LOADK                            R30 K87 ["Selection Menu"]
      370 SETTABLEKS                       R30 R29 K76 ["name"]
      372 DUPCLOSURE                       R30 K88 [PROTO_30]
      373 CAPTURE                          VAL R4
      374 CAPTURE                          VAL R19
      375 CAPTURE                          VAL R3
      376 CAPTURE                          VAL R16
      377 CAPTURE                          VAL R12
      378 CAPTURE                          VAL R6
      379 CAPTURE                          VAL R11
      380 SETTABLEKS                       R30 R29 K77 ["story"]
      382 DUPTABLE                         R30 K78 [{"name", "story"}]
      383 LOADK                            R31 K89 ["Different Anchors"]
      384 SETTABLEKS                       R31 R30 K76 ["name"]
      386 DUPCLOSURE                       R31 K90 [PROTO_37]
      387 CAPTURE                          VAL R4
      388 CAPTURE                          VAL R16
      389 CAPTURE                          VAL R12
      390 CAPTURE                          VAL R17
      391 CAPTURE                          VAL R9
      392 CAPTURE                          VAL R10
      393 CAPTURE                          VAL R15
      394 SETTABLEKS                       R31 R30 K77 ["story"]
      396 DUPTABLE                         R31 K78 [{"name", "story"}]
      397 LOADK                            R32 K91 ["Reference anchor"]
      398 SETTABLEKS                       R32 R31 K76 ["name"]
      400 DUPCLOSURE                       R32 K92 [PROTO_41]
      401 CAPTURE                          VAL R4
      402 CAPTURE                          VAL R16
      403 CAPTURE                          VAL R6
      404 CAPTURE                          VAL R11
      405 CAPTURE                          VAL R12
      406 CAPTURE                          VAL R17
      407 SETTABLEKS                       R32 R31 K77 ["story"]
      409 DUPTABLE                         R32 K78 [{"name", "story"}]
      410 LOADK                            R33 K93 ["Coachmark on menu item"]
      411 SETTABLEKS                       R33 R32 K76 ["name"]
      413 DUPCLOSURE                       R33 K94 [PROTO_46]
      414 CAPTURE                          VAL R4
      415 CAPTURE                          VAL R16
      416 CAPTURE                          VAL R12
      417 CAPTURE                          VAL R6
      418 CAPTURE                          VAL R11
      419 CAPTURE                          VAL R7
      420 SETTABLEKS                       R33 R32 K77 ["story"]
      422 DUPTABLE                         R33 K78 [{"name", "story"}]
      423 LOADK                            R34 K95 ["Match anchorRef width"]
      424 SETTABLEKS                       R34 R33 K76 ["name"]
      426 DUPCLOSURE                       R34 K96 [PROTO_53]
      427 CAPTURE                          VAL R4
      428 CAPTURE                          VAL R16
      429 CAPTURE                          VAL R6
      430 CAPTURE                          VAL R11
      431 CAPTURE                          VAL R12
      432 CAPTURE                          VAL R17
      433 SETTABLEKS                       R34 R33 K77 ["story"]
      435 DUPTABLE                         R34 K78 [{"name", "story"}]
      436 LOADK                            R35 K97 ["Grouped"]
      437 SETTABLEKS                       R35 R34 K76 ["name"]
      439 DUPCLOSURE                       R35 K98 [PROTO_57]
      440 CAPTURE                          VAL R4
      441 CAPTURE                          VAL R16
      442 CAPTURE                          VAL R12
      443 CAPTURE                          VAL R6
      444 CAPTURE                          VAL R11
      445 SETTABLEKS                       R35 R34 K77 ["story"]
      447 DUPTABLE                         R35 K78 [{"name", "story"}]
      448 LOADK                            R36 K99 ["Nested Submenus"]
      449 SETTABLEKS                       R36 R35 K76 ["name"]
      451 DUPCLOSURE                       R36 K100 [PROTO_62]
      452 CAPTURE                          VAL R4
      453 CAPTURE                          VAL R21
      454 CAPTURE                          VAL R22
      455 CAPTURE                          VAL R16
      456 CAPTURE                          VAL R12
      457 CAPTURE                          VAL R6
      458 CAPTURE                          VAL R11
      459 SETTABLEKS                       R36 R35 K77 ["story"]
      461 DUPTABLE                         R36 K78 [{"name", "story"}]
      462 LOADK                            R37 K101 ["Nested Submenus (per-item onActivated)"]
      463 SETTABLEKS                       R37 R36 K76 ["name"]
      465 DUPCLOSURE                       R37 K102 [PROTO_70]
      466 CAPTURE                          VAL R4
      467 CAPTURE                          VAL R16
      468 CAPTURE                          VAL R12
      469 CAPTURE                          VAL R6
      470 CAPTURE                          VAL R11
      471 SETTABLEKS                       R37 R36 K77 ["story"]
      473 SETLIST                          R24 R25 12 [1]
      475 SETTABLEKS                       R24 R23 K72 ["stories"]
      477 DUPTABLE                         R24 K110 [{"size", "side", "align", "maxDepth", "firstItemText", "leading", "trailing"}]
      478 GETTABLEKS                       R25 R3 K111 ["values"]
      480 MOVE                             R26 R11
      481 CALL                             R25 1 1
      482 SETTABLEKS                       R25 R24 K103 ["size"]
      484 NEWTABLE                         R25 0 4
      486 GETTABLEKS                       R26 R14 K112 ["Bottom"]
      488 GETTABLEKS                       R27 R14 K113 ["Top"]
      490 GETTABLEKS                       R28 R14 K114 ["Left"]
      492 GETTABLEKS                       R29 R14 K115 ["Right"]
      494 SETLIST                          R25 R26 4 [1]
      496 SETTABLEKS                       R25 R24 K104 ["side"]
      498 GETTABLEKS                       R25 R3 K111 ["values"]
      500 MOVE                             R26 R13
      501 CALL                             R25 1 1
      502 SETTABLEKS                       R25 R24 K105 ["align"]
      504 NEWTABLE                         R25 0 5
      506 LOADN                            R26 3
      507 LOADN                            R27 4
      508 LOADN                            R28 5
      509 LOADN                            R29 2
      510 LOADN                            R30 1
      511 SETLIST                          R25 R26 5 [1]
      513 SETTABLEKS                       R25 R24 K106 ["maxDepth"]
      515 LOADK                            R25 K116 ["Action one"]
      516 SETTABLEKS                       R25 R24 K107 ["firstItemText"]
      518 GETTABLEKS                       R26 R8 K117 ["FoundationBaseMenuBeta"]
      520 JUMPIFNOT                        R26 ; [+9]
      521 NEWTABLE                         R25 0 4
      523 LOADK                            R26 K118 ["Icon"]
      524 LOADK                            R27 K119 ["Avatar"]
      525 LOADK                            R28 K120 ["Mixed"]
      526 LOADK                            R29 K121 ["None"]
      527 SETLIST                          R25 R26 4 [1]
      529 JUMP                             ; [+1]
      530 LOADNIL                          R25
      531 SETTABLEKS                       R25 R24 K108 ["leading"]
      533 GETTABLEKS                       R26 R8 K117 ["FoundationBaseMenuBeta"]
      535 JUMPIFNOT                        R26 ; [+9]
      536 NEWTABLE                         R25 0 4
      538 LOADK                            R26 K122 ["Hint"]
      539 LOADK                            R27 K123 ["Badge"]
      540 LOADK                            R28 K120 ["Mixed"]
      541 LOADK                            R29 K121 ["None"]
      542 SETLIST                          R25 R26 4 [1]
      544 JUMP                             ; [+1]
      545 LOADNIL                          R25
      546 SETTABLEKS                       R25 R24 K109 ["trailing"]
      548 SETTABLEKS                       R24 R23 K73 ["controls"]
      550 RETURN                           R23 1
