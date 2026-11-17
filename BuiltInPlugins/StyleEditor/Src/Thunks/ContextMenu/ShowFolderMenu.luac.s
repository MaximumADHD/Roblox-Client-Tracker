PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 CALL                             R2 2 -1
        5 NAMECALL                         R0 R0 K0 ["dispatch"]
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 GETTABLEKS                       R4 R4 K0 ["Name"]
        6 GETUPVAL                         R5 4
        7 CALL                             R2 3 -1
        8 NAMECALL                         R0 R0 K1 ["dispatch"]
       10 CALL                             R0 -1 0
       11 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K4 [{"Id", "Text", "Icon", "OnItemClicked"}]
        1 GETTABLEKS                       R2 R0 K5 ["Name"]
        3 SETTABLEKS                       R2 R1 K0 ["Id"]
        5 GETTABLEKS                       R2 R0 K5 ["Name"]
        7 SETTABLEKS                       R2 R1 K1 ["Text"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K6 ["getClassIcon"]
       12 LOADK                            R3 K7 ["StyleQuery"]
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R2 R1 K2 ["Icon"]
       16 NEWCLOSURE                       R2 P0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U4
       22 SETTABLEKS                       R2 R1 K3 ["OnItemClicked"]
       24 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 CALL                             R2 2 -1
        5 NAMECALL                         R0 R0 K0 ["dispatch"]
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 CALL                             R2 2 -1
        5 NAMECALL                         R0 R0 K0 ["dispatch"]
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 LOADK                            R4 K0 [""]
        4 GETUPVAL                         R5 3
        5 CALL                             R2 3 -1
        6 NAMECALL                         R0 R0 K1 ["dispatch"]
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+16]
        2 GETIMPORT                        R1 K2 [string.find]
        4 GETTABLEKS                       R2 R0 K3 ["Id"]
        6 LOADK                            R3 K4 ["/Folder$"]
        7 CALL                             R1 2 1
        8 JUMPIFNOT                        R1 ; [+9]
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 GETUPVAL                         R4 3
       12 GETUPVAL                         R5 4
       13 CALL                             R3 2 -1
       14 NAMECALL                         R1 R1 K5 ["dispatch"]
       16 CALL                             R1 -1 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R1 5
       19 JUMPIFNOT                        R1 ; [+35]
       20 GETTABLEKS                       R1 R0 K6 ["Data"]
       22 JUMPIFNOT                        R1 ; [+4]
       23 GETTABLEKS                       R1 R0 K6 ["Data"]
       25 GETTABLEKS                       R1 R1 K7 ["BuiltinCategory"]
       27 JUMPIFNOT                        R1 ; [+10]
       28 GETUPVAL                         R2 1
       29 GETUPVAL                         R4 6
       30 GETUPVAL                         R5 3
       31 MOVE                             R6 R1
       32 GETUPVAL                         R7 4
       33 CALL                             R4 3 -1
       34 NAMECALL                         R2 R2 K5 ["dispatch"]
       36 CALL                             R2 -1 0
       37 RETURN                           R0 0
       38 GETIMPORT                        R2 K2 [string.find]
       40 GETTABLEKS                       R3 R0 K3 ["Id"]
       42 LOADK                            R4 K8 ["/StyleQuery/Custom$"]
       43 CALL                             R2 2 1
       44 JUMPIFNOT                        R2 ; [+23]
       45 GETUPVAL                         R2 1
       46 GETUPVAL                         R4 7
       47 GETUPVAL                         R5 3
       48 GETUPVAL                         R6 4
       49 CALL                             R4 2 -1
       50 NAMECALL                         R2 R2 K5 ["dispatch"]
       52 CALL                             R2 -1 0
       53 RETURN                           R0 0
       54 JUMP                             ; [+13]
       55 GETTABLEKS                       R1 R0 K3 ["Id"]
       57 JUMPIFNOTEQKS                    R1 K9 ["Folder/New/StyleQuery"] ; [+10]
       59 GETUPVAL                         R1 1
       60 GETUPVAL                         R3 7
       61 GETUPVAL                         R4 3
       62 GETUPVAL                         R5 4
       63 CALL                             R3 2 -1
       64 NAMECALL                         R1 R1 K5 ["dispatch"]
       66 CALL                             R1 -1 0
       67 RETURN                           R0 0
       68 GETTABLEKS                       R1 R0 K6 ["Data"]
       70 GETTABLEKS                       R1 R1 K10 ["Selector"]
       72 GETUPVAL                         R2 1
       73 GETUPVAL                         R4 8
       74 GETUPVAL                         R5 3
       75 MOVE                             R6 R1
       76 GETUPVAL                         R7 4
       77 CALL                             R4 3 -1
       78 NAMECALL                         R2 R2 K5 ["dispatch"]
       80 CALL                             R2 -1 0
       81 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 CALL                             R2 1 -1
        4 NAMECALL                         R0 R0 K0 ["dispatch"]
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 CALL                             R2 1 -1
        4 NAMECALL                         R0 R0 K0 ["dispatch"]
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 CALL                             R2 1 -1
        4 NAMECALL                         R0 R0 K0 ["dispatch"]
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 CALL                             R2 1 -1
        4 NAMECALL                         R0 R0 K0 ["dispatch"]
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R2 R1 K0 ["Localization"]
        2 NAMECALL                         R3 R0 K1 ["getState"]
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 0
        6 LOADK                            R6 K2 ["StyleBase"]
        7 NAMECALL                         R4 R4 K3 ["FindFirstAncestorWhichIsA"]
        9 CALL                             R4 2 1
       10 LOADB                            R5 0
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R6 R6 K4 ["Name"]
       14 GETUPVAL                         R7 1
       15 GETTABLEKS                       R7 R7 K5 ["FolderName"]
       17 JUMPIFNOTEQ                      R6 R7 ; [+2]
       19 MOVE                             R5 R4
       20 GETUPVAL                         R7 2
       21 JUMPIFNOT                        R7 ; [+11]
       22 GETTABLEKS                       R8 R3 K6 ["Clipboard"]
       24 GETTABLEKS                       R8 R8 K7 ["Instances"]
       26 LENGTH                           R7 R8
       27 LOADN                            R8 0
       28 JUMPIFLT                         R8 R7 ; [+2]
       30 LOADB                            R6 0 +1
       31 LOADB                            R6 1
       32 JUMP                             ; [+8]
       33 GETTABLEKS                       R7 R3 K6 ["Clipboard"]
       35 GETTABLEKS                       R7 R7 K8 ["DEPRECATED_Instance"]
       37 JUMPIFNOTEQKNIL                  R7 ; [+2]
       39 LOADB                            R6 0 +1
       40 LOADB                            R6 1
       41 LOADNIL                          R7
       42 GETUPVAL                         R9 3
       43 JUMPIFNOT                        R9 ; [+16]
       44 DUPTABLE                         R8 K14 [{["Id"] = "Folder", ["Text"] = "Folder", ["Icon"], ["OnItemClicked"]}]
       45 GETUPVAL                         R9 4
       46 GETTABLEKS                       R9 R9 K15 ["getClassIcon"]
       48 LOADK                            R10 K10 ["Folder"]
       49 CALL                             R9 1 1
       50 SETTABLEKS                       R9 R8 K12 ["Icon"]
       52 NEWCLOSURE                       R9 P0
       53 CAPTURE                          VAL R0
       54 CAPTURE                          UPVAL U5
       55 CAPTURE                          UPVAL U0
       56 CAPTURE                          UPVAL U6
       57 SETTABLEKS                       R9 R8 K13 ["OnItemClicked"]
       59 JUMP                             ; [+1]
       60 LOADNIL                          R8
       61 JUMPIFNOT                        R5 ; [+133]
       62 JUMPIFNOT                        R4 ; [+132]
       63 LOADNIL                          R9
       64 GETUPVAL                         R10 7
       65 JUMPIFNOT                        R10 ; [+69]
       66 DUPTABLE                         R10 K18 [{["Id"] = "StyleQuery", ["Text"], ["Icon"], ["Children"]}]
       67 GETUPVAL                         R11 1
       68 GETTABLEKS                       R11 R11 K19 ["ClassName"]
       70 SETTABLEKS                       R11 R10 K11 ["Text"]
       72 GETUPVAL                         R11 4
       73 GETTABLEKS                       R11 R11 K15 ["getClassIcon"]
       75 LOADK                            R12 K16 ["StyleQuery"]
       76 CALL                             R11 1 1
       77 SETTABLEKS                       R11 R10 K12 ["Icon"]
       79 NEWTABLE                         R11 0 2
       81 DUPTABLE                         R12 K21 [{["Id"] = "Builtin", ["Text"], ["Icon"], ["Children"]}]
       82 LOADK                            R15 K22 ["ContextMenu"]
       83 LOADK                            R16 K23 ["New.Query.Builtin"]
       84 NAMECALL                         R13 R2 K24 ["getText"]
       86 CALL                             R13 3 1
       87 SETTABLEKS                       R13 R12 K11 ["Text"]
       89 GETUPVAL                         R13 4
       90 GETTABLEKS                       R13 R13 K15 ["getClassIcon"]
       92 LOADK                            R14 K16 ["StyleQuery"]
       93 CALL                             R13 1 1
       94 SETTABLEKS                       R13 R12 K12 ["Icon"]
       96 GETUPVAL                         R13 8
       97 GETUPVAL                         R14 9
       98 NEWCLOSURE                       R15 P1
       99 CAPTURE                          UPVAL U4
      100 CAPTURE                          VAL R0
      101 CAPTURE                          UPVAL U10
      102 CAPTURE                          UPVAL U0
      103 CAPTURE                          UPVAL U6
      104 CALL                             R13 2 1
      105 SETTABLEKS                       R13 R12 K17 ["Children"]
      107 DUPTABLE                         R13 K26 [{["Id"] = "Custom", ["Text"], ["Icon"], ["OnItemClicked"]}]
      108 LOADK                            R16 K22 ["ContextMenu"]
      109 LOADK                            R17 K27 ["New.Query.Custom"]
      110 NAMECALL                         R14 R2 K24 ["getText"]
      112 CALL                             R14 3 1
      113 SETTABLEKS                       R14 R13 K11 ["Text"]
      115 GETUPVAL                         R14 4
      116 GETTABLEKS                       R14 R14 K15 ["getClassIcon"]
      118 LOADK                            R15 K16 ["StyleQuery"]
      119 CALL                             R14 1 1
      120 SETTABLEKS                       R14 R13 K12 ["Icon"]
      122 NEWCLOSURE                       R14 P2
      123 CAPTURE                          VAL R0
      124 CAPTURE                          UPVAL U11
      125 CAPTURE                          UPVAL U0
      126 CAPTURE                          UPVAL U6
      127 SETTABLEKS                       R14 R13 K13 ["OnItemClicked"]
      129 SETLIST                          R11 R12 2 [1]
      131 SETTABLEKS                       R11 R10 K17 ["Children"]
      133 MOVE                             R9 R10
      134 JUMP                             ; [+21]
      135 DUPTABLE                         R10 K28 [{["Id"] = "StyleQuery", ["Text"], ["Icon"], ["OnItemClicked"]}]
      136 GETUPVAL                         R11 1
      137 GETTABLEKS                       R11 R11 K19 ["ClassName"]
      139 SETTABLEKS                       R11 R10 K11 ["Text"]
      141 GETUPVAL                         R11 4
      142 GETTABLEKS                       R11 R11 K15 ["getClassIcon"]
      144 LOADK                            R12 K16 ["StyleQuery"]
      145 CALL                             R11 1 1
      146 SETTABLEKS                       R11 R10 K12 ["Icon"]
      148 NEWCLOSURE                       R11 P3
      149 CAPTURE                          VAL R0
      150 CAPTURE                          UPVAL U11
      151 CAPTURE                          UPVAL U0
      152 CAPTURE                          UPVAL U6
      153 SETTABLEKS                       R11 R10 K13 ["OnItemClicked"]
      155 MOVE                             R9 R10
      156 DUPTABLE                         R10 K30 [{["Id"] = "New", ["Text"], ["Icon"], ["Children"]}]
      157 LOADK                            R13 K22 ["ContextMenu"]
      158 LOADK                            R14 K29 ["New"]
      159 NAMECALL                         R11 R2 K24 ["getText"]
      161 CALL                             R11 3 1
      162 SETTABLEKS                       R11 R10 K11 ["Text"]
      164 GETUPVAL                         R11 12
      165 GETTABLEKS                       R11 R11 K31 ["new"]
      167 CALL                             R11 0 1
      168 SETTABLEKS                       R11 R10 K12 ["Icon"]
      170 NEWTABLE                         R11 0 3
      172 MOVE                             R12 R9
      173 DUPTABLE                         R13 K33 [{["Id"] = "Empty", ["Text"], ["OnItemClicked"]}]
      174 LOADK                            R16 K22 ["ContextMenu"]
      175 LOADK                            R17 K34 ["New.Empty"]
      176 NAMECALL                         R14 R2 K24 ["getText"]
      178 CALL                             R14 3 1
      179 SETTABLEKS                       R14 R13 K11 ["Text"]
      181 NEWCLOSURE                       R14 P4
      182 CAPTURE                          VAL R0
      183 CAPTURE                          UPVAL U13
      184 CAPTURE                          UPVAL U0
      185 CAPTURE                          UPVAL U6
      186 SETTABLEKS                       R14 R13 K13 ["OnItemClicked"]
      188 MOVE                             R14 R8
      189 SETLIST                          R11 R12 3 [1]
      191 SETTABLEKS                       R11 R10 K17 ["Children"]
      193 MOVE                             R7 R10
      194 JUMP                             ; [+65]
      195 JUMPIFNOT                        R4 ; [+18]
      196 GETUPVAL                         R9 4
      197 GETTABLEKS                       R9 R9 K35 ["getNewSelectorAction"]
      199 MOVE                             R10 R4
      200 NEWCLOSURE                       R11 P5
      201 CAPTURE                          UPVAL U3
      202 CAPTURE                          VAL R0
      203 CAPTURE                          UPVAL U5
      204 CAPTURE                          UPVAL U0
      205 CAPTURE                          UPVAL U6
      206 CAPTURE                          UPVAL U7
      207 CAPTURE                          UPVAL U10
      208 CAPTURE                          UPVAL U11
      209 CAPTURE                          UPVAL U13
      210 MOVE                             R12 R2
      211 CALL                             R9 3 1
      212 MOVE                             R7 R9
      213 JUMP                             ; [+46]
      214 DUPTABLE                         R9 K30 [{["Id"] = "New", ["Text"], ["Icon"], ["Children"]}]
      215 LOADK                            R12 K22 ["ContextMenu"]
      216 LOADK                            R13 K29 ["New"]
      217 NAMECALL                         R10 R2 K24 ["getText"]
      219 CALL                             R10 3 1
      220 SETTABLEKS                       R10 R9 K11 ["Text"]
      222 GETUPVAL                         R10 12
      223 GETTABLEKS                       R10 R10 K31 ["new"]
      225 CALL                             R10 0 1
      226 SETTABLEKS                       R10 R9 K12 ["Icon"]
      228 NEWTABLE                         R10 0 2
      230 DUPTABLE                         R11 K37 [{["Id"] = "NewThemeStyleSheet", ["Text"], ["Icon"], ["OnItemClicked"]}]
      231 LOADK                            R14 K22 ["ContextMenu"]
      232 LOADK                            R15 K36 ["NewThemeStyleSheet"]
      233 NAMECALL                         R12 R2 K24 ["getText"]
      235 CALL                             R12 3 1
      236 SETTABLEKS                       R12 R11 K11 ["Text"]
      238 GETUPVAL                         R12 12
      239 GETTABLEKS                       R12 R12 K31 ["new"]
      241 CALL                             R12 0 1
      242 SETTABLEKS                       R12 R11 K12 ["Icon"]
      244 NEWCLOSURE                       R12 P6
      245 CAPTURE                          VAL R0
      246 CAPTURE                          UPVAL U14
      247 CAPTURE                          UPVAL U0
      248 SETTABLEKS                       R12 R11 K13 ["OnItemClicked"]
      250 GETUPVAL                         R13 15
      251 JUMPIFNOT                        R13 ; [+2]
      252 LOADNIL                          R12
      253 JUMP                             ; [+1]
      254 MOVE                             R12 R8
      255 SETLIST                          R10 R11 2 [1]
      257 SETTABLEKS                       R10 R9 K17 ["Children"]
      259 MOVE                             R7 R9
      260 FASTCALL1                        ASSERT R7 ; [+3]
      261 MOVE                             R10 R7
      262 GETIMPORT                        R9 K39 [assert]
      264 CALL                             R9 1 0
      265 NEWTABLE                         R9 0 1
      267 MOVE                             R10 R7
      268 SETLIST                          R9 R10 1 [1]
      270 GETUPVAL                         R10 16
      271 MOVE                             R11 R9
      272 NEWTABLE                         R12 0 4
      274 DUPTABLE                         R13 K41 [{["Id"] = "ShowInExplorer", ["Text"], ["Icon"], ["OnItemClicked"]}]
      275 LOADK                            R16 K22 ["ContextMenu"]
      276 LOADK                            R17 K40 ["ShowInExplorer"]
      277 NAMECALL                         R14 R2 K24 ["getText"]
      279 CALL                             R14 3 1
      280 SETTABLEKS                       R14 R13 K11 ["Text"]
      282 GETUPVAL                         R14 4
      283 GETTABLEKS                       R14 R14 K15 ["getClassIcon"]
      285 LOADK                            R15 K42 ["ReplicatedStorage"]
      286 CALL                             R14 1 1
      287 SETTABLEKS                       R14 R13 K12 ["Icon"]
      289 NEWCLOSURE                       R14 P7
      290 CAPTURE                          VAL R0
      291 CAPTURE                          UPVAL U17
      292 CAPTURE                          UPVAL U0
      293 SETTABLEKS                       R14 R13 K13 ["OnItemClicked"]
      295 DUPTABLE                         R14 K44 [{["Id"] = "Copy", ["Text"], ["Icon"], ["OnItemClicked"]}]
      296 LOADK                            R17 K22 ["ContextMenu"]
      297 LOADK                            R18 K43 ["Copy"]
      298 NAMECALL                         R15 R2 K24 ["getText"]
      300 CALL                             R15 3 1
      301 SETTABLEKS                       R15 R14 K11 ["Text"]
      303 GETUPVAL                         R15 12
      304 GETTABLEKS                       R15 R15 K45 ["copy"]
      306 CALL                             R15 0 1
      307 SETTABLEKS                       R15 R14 K12 ["Icon"]
      309 NEWCLOSURE                       R15 P8
      310 CAPTURE                          VAL R0
      311 CAPTURE                          UPVAL U18
      312 CAPTURE                          UPVAL U0
      313 SETTABLEKS                       R15 R14 K13 ["OnItemClicked"]
      315 DUPTABLE                         R15 K48 [{["Id"] = "PasteInto", ["Text"], ["Icon"], ["Enabled"], ["OnItemClicked"]}]
      316 LOADK                            R18 K22 ["ContextMenu"]
      317 LOADK                            R19 K46 ["PasteInto"]
      318 NAMECALL                         R16 R2 K24 ["getText"]
      320 CALL                             R16 3 1
      321 SETTABLEKS                       R16 R15 K11 ["Text"]
      323 GETUPVAL                         R16 12
      324 GETTABLEKS                       R16 R16 K49 ["paste"]
      326 CALL                             R16 0 1
      327 SETTABLEKS                       R16 R15 K12 ["Icon"]
      329 SETTABLEKS                       R6 R15 K47 ["Enabled"]
      331 NEWCLOSURE                       R16 P9
      332 CAPTURE                          VAL R0
      333 CAPTURE                          UPVAL U19
      334 CAPTURE                          UPVAL U0
      335 SETTABLEKS                       R16 R15 K13 ["OnItemClicked"]
      337 DUPTABLE                         R16 K51 [{["Id"] = "Delete", ["Text"], ["Icon"], ["OnItemClicked"]}]
      338 LOADK                            R19 K22 ["ContextMenu"]
      339 LOADK                            R20 K50 ["Delete"]
      340 NAMECALL                         R17 R2 K24 ["getText"]
      342 CALL                             R17 3 1
      343 SETTABLEKS                       R17 R16 K11 ["Text"]
      345 GETUPVAL                         R17 12
      346 GETTABLEKS                       R17 R17 K52 ["delete"]
      348 CALL                             R17 0 1
      349 SETTABLEKS                       R17 R16 K12 ["Icon"]
      351 NEWCLOSURE                       R17 P10
      352 CAPTURE                          VAL R0
      353 CAPTURE                          UPVAL U20
      354 CAPTURE                          UPVAL U0
      355 SETTABLEKS                       R17 R16 K13 ["OnItemClicked"]
      357 SETLIST                          R12 R13 4 [1]
      359 CALL                             R10 2 1
      360 MOVE                             R9 R10
      361 DUPTABLE                         R10 K53 [{["Id"] = "Folder", ["Children"]}]
      362 SETTABLEKS                       R9 R10 K17 ["Children"]
      364 GETUPVAL                         R11 7
      365 JUMPIFNOT                        R11 ; [+7]
      366 GETUPVAL                         R11 4
      367 GETTABLEKS                       R11 R11 K54 ["trackClicks"]
      369 MOVE                             R12 R10
      370 GETTABLEKS                       R13 R1 K55 ["Telemetry"]
      372 CALL                             R11 2 0
      373 GETUPVAL                         R11 4
      374 GETTABLEKS                       R11 R11 K56 ["showContextMenu"]
      376 GETTABLEKS                       R12 R1 K57 ["Plugin"]
      378 MOVE                             R13 R10
      379 CALL                             R11 2 0
      380 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R3 0
        1 FASTCALL1                        ASSERT R3 ; [+2]
        2 GETIMPORT                        R2 K1 [assert]
        4 CALL                             R2 1 0
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U5
       14 CAPTURE                          UPVAL U6
       15 CAPTURE                          UPVAL U7
       16 CAPTURE                          UPVAL U8
       17 CAPTURE                          UPVAL U9
       18 CAPTURE                          UPVAL U10
       19 CAPTURE                          UPVAL U11
       20 CAPTURE                          UPVAL U12
       21 CAPTURE                          UPVAL U13
       22 CAPTURE                          UPVAL U14
       23 CAPTURE                          UPVAL U15
       24 CAPTURE                          UPVAL U16
       25 CAPTURE                          UPVAL U17
       26 CAPTURE                          UPVAL U18
       27 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Util"]
       17 GETTABLEKS                       R2 R2 K7 ["MenuHelpers"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K5 ["Src"]
       24 GETTABLEKS                       R3 R3 K8 ["Resources"]
       26 GETTABLEKS                       R3 R3 K9 ["ModernIcons"]
       28 CALL                             R2 1 1
       29 GETTABLEKS                       R3 R0 K5 ["Src"]
       31 GETTABLEKS                       R3 R3 K10 ["Thunks"]
       33 GETIMPORT                        R4 K4 [require]
       35 GETTABLEKS                       R5 R3 K11 ["Change"]
       37 GETTABLEKS                       R5 R5 K12 ["CreateFolder"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K4 [require]
       42 GETTABLEKS                       R6 R3 K11 ["Change"]
       44 GETTABLEKS                       R6 R6 K13 ["CreateThemeSheet"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K4 [require]
       49 GETTABLEKS                       R7 R3 K11 ["Change"]
       51 GETTABLEKS                       R7 R7 K14 ["CreateStyleQuery"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K4 [require]
       56 GETTABLEKS                       R8 R3 K11 ["Change"]
       58 GETTABLEKS                       R8 R8 K15 ["CreateStyleRuleInFolder"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K4 [require]
       63 GETTABLEKS                       R9 R3 K11 ["Change"]
       65 GETTABLEKS                       R9 R9 K16 ["DeleteInstance"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K4 [require]
       70 GETTABLEKS                       R10 R3 K11 ["Change"]
       72 GETTABLEKS                       R10 R10 K17 ["PasteInstanceInto"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K4 [require]
       77 GETTABLEKS                       R11 R3 K11 ["Change"]
       79 GETTABLEKS                       R11 R11 K18 ["ShowInstanceInExplorer"]
       81 CALL                             R10 1 1
       82 GETIMPORT                        R11 K4 [require]
       84 GETTABLEKS                       R12 R0 K5 ["Src"]
       86 GETTABLEKS                       R12 R12 K6 ["Util"]
       88 GETTABLEKS                       R12 R12 K19 ["StyleQueryHelpers"]
       90 CALL                             R11 1 1
       91 GETIMPORT                        R12 K4 [require]
       93 GETTABLEKS                       R13 R0 K20 ["Packages"]
       95 GETTABLEKS                       R13 R13 K21 ["Dash"]
       97 CALL                             R12 1 1
       98 GETTABLEKS                       R13 R12 K22 ["append"]
      100 GETTABLEKS                       R14 R12 K23 ["map"]
      102 GETTABLEKS                       R15 R0 K5 ["Src"]
      104 GETTABLEKS                       R15 R15 K24 ["Actions"]
      106 GETIMPORT                        R16 K4 [require]
      108 GETTABLEKS                       R17 R15 K25 ["Clipboard"]
      110 GETTABLEKS                       R17 R17 K26 ["CopyInstanceToClipboard"]
      112 CALL                             R16 1 1
      113 GETIMPORT                        R17 K4 [require]
      115 GETTABLEKS                       R18 R0 K5 ["Src"]
      117 GETTABLEKS                       R18 R18 K27 ["Types"]
      119 CALL                             R17 1 1
      120 GETIMPORT                        R18 K4 [require]
      122 GETTABLEKS                       R19 R0 K5 ["Src"]
      124 GETTABLEKS                       R19 R19 K10 ["Thunks"]
      126 GETTABLEKS                       R19 R19 K27 ["Types"]
      128 CALL                             R18 1 1
      129 GETIMPORT                        R19 K4 [require]
      131 GETTABLEKS                       R20 R0 K5 ["Src"]
      133 GETTABLEKS                       R20 R20 K28 ["Flags"]
      135 GETTABLEKS                       R20 R20 K29 ["getFFlagStyleQuery"]
      137 CALL                             R19 1 1
      138 CALL                             R19 0 1
      139 GETIMPORT                        R20 K4 [require]
      141 GETTABLEKS                       R21 R0 K5 ["Src"]
      143 GETTABLEKS                       R21 R21 K28 ["Flags"]
      145 GETTABLEKS                       R21 R21 K30 ["getFFlagStyleEditorCreateFolder"]
      147 CALL                             R20 1 1
      148 CALL                             R20 0 1
      149 GETIMPORT                        R21 K4 [require]
      151 GETTABLEKS                       R22 R0 K5 ["Src"]
      153 GETTABLEKS                       R22 R22 K28 ["Flags"]
      155 GETTABLEKS                       R22 R22 K31 ["getFFlagStyleEditorBuiltinStyleQuery"]
      157 CALL                             R21 1 1
      158 CALL                             R21 0 1
      159 GETIMPORT                        R22 K4 [require]
      161 GETTABLEKS                       R23 R0 K5 ["Src"]
      163 GETTABLEKS                       R23 R23 K28 ["Flags"]
      165 GETTABLEKS                       R23 R23 K32 ["getFFlagStyleEditorFixThemeFolderView"]
      167 CALL                             R22 1 1
      168 CALL                             R22 0 1
      169 GETIMPORT                        R23 K4 [require]
      171 GETTABLEKS                       R24 R0 K5 ["Src"]
      173 GETTABLEKS                       R24 R24 K6 ["Util"]
      175 GETTABLEKS                       R24 R24 K33 ["BuiltinStyleQueryCategories"]
      177 CALL                             R23 1 1
      178 GETIMPORT                        R24 K4 [require]
      180 GETTABLEKS                       R25 R3 K11 ["Change"]
      182 GETTABLEKS                       R25 R25 K34 ["CreateBuiltinStyleQuery"]
      184 CALL                             R24 1 1
      185 DUPCLOSURE                       R25 K35 [PROTO_13]
      186 CAPTURE                          VAL R19
      187 CAPTURE                          VAL R11
      188 CAPTURE                          VAL R20
      189 CAPTURE                          VAL R1
      190 CAPTURE                          VAL R4
      191 CAPTURE                          VAL R21
      192 CAPTURE                          VAL R14
      193 CAPTURE                          VAL R23
      194 CAPTURE                          VAL R24
      195 CAPTURE                          VAL R6
      196 CAPTURE                          VAL R2
      197 CAPTURE                          VAL R7
      198 CAPTURE                          VAL R5
      199 CAPTURE                          VAL R22
      200 CAPTURE                          VAL R13
      201 CAPTURE                          VAL R10
      202 CAPTURE                          VAL R16
      203 CAPTURE                          VAL R9
      204 CAPTURE                          VAL R8
      205 RETURN                           R25 1
