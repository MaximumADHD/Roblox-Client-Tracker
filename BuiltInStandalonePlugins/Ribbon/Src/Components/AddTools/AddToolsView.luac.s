PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Children"]
        2 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 1
        4 SETTABLEKS                       R0 R1 K3 ["Action"]
        6 GETUPVAL                         R2 1
        7 LOADB                            R4 0
        8 NAMECALL                         R2 R2 K4 ["GenerateGUID"]
       10 CALL                             R2 2 1
       11 SETTABLEKS                       R2 R1 K5 ["Id"]
       13 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+5]
        2 GETIMPORT                        R1 K1 [warn]
        4 LOADK                            R2 K2 ["Unknown active tab, cannot insert Controls"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0
        7 NEWTABLE                         R1 0 0
        9 NEWTABLE                         R2 0 0
       11 GETTABLEKS                       R3 R0 K3 ["Item"]
       13 GETTABLEKS                       R3 R3 K4 ["Children"]
       15 JUMPIFNOT                        R3 ; [+61]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K5 ["isActionGroupPlacedInTab"]
       19 GETUPVAL                         R5 2
       20 MOVE                             R6 R3
       21 CALL                             R4 2 1
       22 JUMPIFNOT                        R4 ; [+2]
       23 JUMPIFNOTEQKS                    R4 K6 ["Indeterminate"] ; [+38]
       25 MOVE                             R5 R3
       26 LOADNIL                          R6
       27 LOADNIL                          R7
       28 FORGPREP                         R5
       29 GETUPVAL                         R10 1
       30 GETTABLEKS                       R10 R10 K7 ["doesUriExistInTab"]
       32 GETUPVAL                         R11 2
       33 GETTABLEKS                       R12 R9 K8 ["Uri"]
       35 CALL                             R10 2 1
       36 JUMPIF                           R10 ; [+22]
       37 GETTABLEKS                       R14 R9 K8 ["Uri"]
       39 GETIMPORT                        R15 K11 [table.clone]
       41 GETUPVAL                         R16 3
       42 CALL                             R15 1 1
       43 SETTABLEKS                       R14 R15 K12 ["Action"]
       45 GETUPVAL                         R16 4
       46 LOADB                            R18 0
       47 NAMECALL                         R16 R16 K13 ["GenerateGUID"]
       49 CALL                             R16 2 1
       50 SETTABLEKS                       R16 R15 K14 ["Id"]
       52 MOVE                             R13 R15
       53 FASTCALL2                        TABLE_INSERT R1 R13 ; [+4]
       55 MOVE                             R12 R1
       56 GETIMPORT                        R11 K16 [table.insert]
       58 CALL                             R11 2 0
       59 FORGLOOP                         R5 2 ; [-31]
       61 JUMP                             ; [+60]
       62 MOVE                             R5 R3
       63 LOADNIL                          R6
       64 LOADNIL                          R7
       65 FORGPREP                         R5
       66 GETTABLEKS                       R12 R9 K8 ["Uri"]
       68 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
       70 MOVE                             R11 R2
       71 GETIMPORT                        R10 K16 [table.insert]
       73 CALL                             R10 2 0
       74 FORGLOOP                         R5 2 ; [-9]
       76 JUMP                             ; [+45]
       77 GETUPVAL                         R4 1
       78 GETTABLEKS                       R4 R4 K7 ["doesUriExistInTab"]
       80 GETUPVAL                         R5 2
       81 GETTABLEKS                       R6 R0 K3 ["Item"]
       83 GETTABLEKS                       R6 R6 K8 ["Uri"]
       85 CALL                             R4 2 1
       86 JUMPIFNOT                        R4 ; [+11]
       87 GETTABLEKS                       R6 R0 K3 ["Item"]
       89 GETTABLEKS                       R6 R6 K8 ["Uri"]
       91 FASTCALL2                        TABLE_INSERT R2 R6 ; [+4]
       93 MOVE                             R5 R2
       94 GETIMPORT                        R4 K16 [table.insert]
       96 CALL                             R4 2 0
       97 JUMP                             ; [+24]
       98 GETTABLEKS                       R7 R0 K3 ["Item"]
      100 GETTABLEKS                       R7 R7 K8 ["Uri"]
      102 GETIMPORT                        R8 K11 [table.clone]
      104 GETUPVAL                         R9 3
      105 CALL                             R8 1 1
      106 SETTABLEKS                       R7 R8 K12 ["Action"]
      108 GETUPVAL                         R9 4
      109 LOADB                            R11 0
      110 NAMECALL                         R9 R9 K13 ["GenerateGUID"]
      112 CALL                             R9 2 1
      113 SETTABLEKS                       R9 R8 K14 ["Id"]
      115 MOVE                             R6 R8
      116 FASTCALL2                        TABLE_INSERT R1 R6 ; [+4]
      118 MOVE                             R5 R1
      119 GETIMPORT                        R4 K16 [table.insert]
      121 CALL                             R4 2 0
      122 GETUPVAL                         R4 5
      123 GETTABLEKS                       R4 R4 K17 ["AddControlsToTab"]
      125 GETUPVAL                         R5 0
      126 MOVE                             R6 R1
      127 CALL                             R4 2 0
      128 GETUPVAL                         R4 5
      129 GETTABLEKS                       R4 R4 K18 ["RemoveControlsFromTab"]
      131 GETUPVAL                         R5 0
      132 MOVE                             R6 R2
      133 CALL                             R4 2 0
      134 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Actions"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 0
        6 LOADK                            R3 K2 ["Tools"]
        7 NAMECALL                         R1 R1 K1 ["GetPluginComponent"]
        9 CALL                             R1 2 1
       10 GETUPVAL                         R2 1
       11 NAMECALL                         R3 R0 K3 ["ListAsync"]
       13 CALL                             R3 1 -1
       14 CALL                             R2 -1 0
       15 GETUPVAL                         R2 2
       16 NAMECALL                         R3 R1 K3 ["ListAsync"]
       18 CALL                             R3 1 -1
       19 CALL                             R2 -1 0
       20 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R2 R0 K0 ["lower"]
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getItems"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 GETUPVAL                         R4 4
        7 GETUPVAL                         R5 5
        8 GETUPVAL                         R6 6
        9 GETTABLEKS                       R6 R6 K1 ["Id"]
       11 GETUPVAL                         R7 7
       12 GETTABLEKS                       R7 R7 K1 ["Id"]
       14 GETUPVAL                         R8 8
       15 GETTABLEKS                       R8 R8 K1 ["Id"]
       17 CALL                             R0 8 -1
       18 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R7 R7 K0 ["toString"]
        9 GETTABLEKS                       R8 R5 K1 ["Uri"]
       11 CALL                             R7 1 1
       12 SETTABLE                         R6 R1 R7
       13 FORGLOOP                         R2 2 ; [-8]
       15 GETUPVAL                         R2 1
       16 NEWCLOSURE                       R3 P0
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          VAL R1
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R5 R5 K0 ["toString"]
        4 GETTABLEKS                       R6 R1 K1 ["Uri"]
        6 CALL                             R5 1 1
        7 GETTABLE                         R3 R4 R5
        8 JUMPIFNOT                        R3 ; [+2]
        9 MOVE                             R2 R1
       10 RETURN                           R2 1
       11 LOADNIL                          R2
       12 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R3 2
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 3
        6 MOVE                             R4 R1
        7 GETTABLEKS                       R5 R0 K0 ["CustomTools"]
        9 CALL                             R3 2 1
       10 GETUPVAL                         R4 4
       11 NAMECALL                         R4 R4 K1 ["use"]
       13 CALL                             R4 1 1
       14 GETUPVAL                         R5 5
       15 GETTABLEKS                       R5 R5 K1 ["use"]
       17 CALL                             R5 0 1
       18 NAMECALL                         R5 R5 K2 ["get"]
       20 CALL                             R5 1 1
       21 GETUPVAL                         R6 6
       22 NEWTABLE                         R7 0 0
       24 CALL                             R6 1 2
       25 GETUPVAL                         R8 6
       26 NEWTABLE                         R9 0 0
       28 CALL                             R8 1 2
       29 GETUPVAL                         R10 6
       30 LOADK                            R11 K3 [""]
       31 CALL                             R10 1 2
       32 GETUPVAL                         R12 6
       33 NEWTABLE                         R13 0 0
       35 CALL                             R12 1 2
       36 GETUPVAL                         R14 7
       37 CALL                             R14 0 1
       38 GETUPVAL                         R15 8
       39 NEWCLOSURE                       R16 P0
       40 CAPTURE                          VAL R1
       41 CAPTURE                          UPVAL U9
       42 CAPTURE                          VAL R3
       43 CAPTURE                          UPVAL U10
       44 CAPTURE                          UPVAL U11
       45 CAPTURE                          VAL R2
       46 NEWTABLE                         R17 0 3
       48 MOVE                             R18 R3
       49 MOVE                             R19 R1
       50 GETTABLEKS                       R20 R2 K4 ["AddControlsToTab"]
       52 SETLIST                          R17 R18 3 [1]
       54 CALL                             R15 2 1
       55 GETUPVAL                         R16 12
       56 NEWCLOSURE                       R17 P1
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R9
       60 NEWTABLE                         R18 0 1
       62 MOVE                             R19 R5
       63 SETLIST                          R18 R19 1 [1]
       65 CALL                             R16 2 0
       66 GETUPVAL                         R16 8
       67 NEWCLOSURE                       R17 P2
       68 CAPTURE                          VAL R11
       69 NEWTABLE                         R18 0 0
       71 CALL                             R16 2 1
       72 GETUPVAL                         R17 13
       73 GETUPVAL                         R18 14
       74 NEWTABLE                         R19 0 5
       76 DUPTABLE                         R20 K7 [{"Id", "Text"}]
       77 LOADK                            R21 K8 ["AllCreators"]
       78 SETTABLEKS                       R21 R20 K5 ["Id"]
       80 LOADK                            R23 K9 ["Plugin"]
       81 LOADK                            R24 K10 ["Filter_AllCreators"]
       82 NAMECALL                         R21 R4 K11 ["getText"]
       84 CALL                             R21 3 1
       85 SETTABLEKS                       R21 R20 K6 ["Text"]
       87 DUPTABLE                         R21 K7 [{"Id", "Text"}]
       88 LOADK                            R22 K12 ["RobloxStudio"]
       89 SETTABLEKS                       R22 R21 K5 ["Id"]
       91 LOADK                            R24 K9 ["Plugin"]
       92 LOADK                            R25 K13 ["Filter_RobloxStudio"]
       93 NAMECALL                         R22 R4 K11 ["getText"]
       95 CALL                             R22 3 1
       96 SETTABLEKS                       R22 R21 K6 ["Text"]
       98 DUPTABLE                         R22 K7 [{"Id", "Text"}]
       99 LOADK                            R23 K14 ["AllPlugins"]
      100 SETTABLEKS                       R23 R22 K5 ["Id"]
      102 LOADK                            R25 K9 ["Plugin"]
      103 LOADK                            R26 K15 ["Filter_AllPlugins"]
      104 NAMECALL                         R23 R4 K11 ["getText"]
      106 CALL                             R23 3 1
      107 SETTABLEKS                       R23 R22 K6 ["Text"]
      109 DUPTABLE                         R23 K7 [{"Id", "Text"}]
      110 LOADK                            R24 K16 ["CloudPlugins"]
      111 SETTABLEKS                       R24 R23 K5 ["Id"]
      113 LOADK                            R26 K9 ["Plugin"]
      114 LOADK                            R27 K17 ["Filter_CloudPlugins"]
      115 NAMECALL                         R24 R4 K11 ["getText"]
      117 CALL                             R24 3 1
      118 SETTABLEKS                       R24 R23 K6 ["Text"]
      120 DUPTABLE                         R24 K7 [{"Id", "Text"}]
      121 LOADK                            R25 K18 ["LocalPlugins"]
      122 SETTABLEKS                       R25 R24 K5 ["Id"]
      124 LOADK                            R27 K9 ["Plugin"]
      125 LOADK                            R28 K19 ["Filter_LocalPlugins"]
      126 NAMECALL                         R25 R4 K11 ["getText"]
      128 CALL                             R25 3 1
      129 SETTABLEKS                       R25 R24 K6 ["Text"]
      131 SETLIST                          R19 R20 5 [1]
      133 CALL                             R17 2 3
      134 GETUPVAL                         R20 13
      135 GETUPVAL                         R21 15
      136 NEWTABLE                         R22 0 2
      138 DUPTABLE                         R23 K7 [{"Id", "Text"}]
      139 LOADK                            R24 K20 ["A-Z"]
      140 SETTABLEKS                       R24 R23 K5 ["Id"]
      142 LOADK                            R26 K9 ["Plugin"]
      143 LOADK                            R27 K21 ["SortBy_AZ"]
      144 NAMECALL                         R24 R4 K11 ["getText"]
      146 CALL                             R24 3 1
      147 SETTABLEKS                       R24 R23 K6 ["Text"]
      149 DUPTABLE                         R24 K7 [{"Id", "Text"}]
      150 LOADK                            R25 K22 ["Z-A"]
      151 SETTABLEKS                       R25 R24 K5 ["Id"]
      153 LOADK                            R27 K9 ["Plugin"]
      154 LOADK                            R28 K23 ["SortBy_ZA"]
      155 NAMECALL                         R25 R4 K11 ["getText"]
      157 CALL                             R25 3 1
      158 SETTABLEKS                       R25 R24 K6 ["Text"]
      160 SETLIST                          R22 R23 2 [1]
      162 CALL                             R20 2 3
      163 GETUPVAL                         R23 13
      164 GETUPVAL                         R24 16
      165 NEWTABLE                         R25 0 4
      167 DUPTABLE                         R26 K7 [{"Id", "Text"}]
      168 LOADK                            R27 K24 ["All"]
      169 SETTABLEKS                       R27 R26 K5 ["Id"]
      171 LOADK                            R29 K9 ["Plugin"]
      172 LOADK                            R30 K25 ["DataModels_All"]
      173 NAMECALL                         R27 R4 K11 ["getText"]
      175 CALL                             R27 3 1
      176 SETTABLEKS                       R27 R26 K6 ["Text"]
      178 DUPTABLE                         R27 K7 [{"Id", "Text"}]
      179 LOADK                            R28 K26 ["Edit"]
      180 SETTABLEKS                       R28 R27 K5 ["Id"]
      182 LOADK                            R30 K9 ["Plugin"]
      183 LOADK                            R31 K27 ["AddTools_Edit"]
      184 NAMECALL                         R28 R4 K11 ["getText"]
      186 CALL                             R28 3 1
      187 SETTABLEKS                       R28 R27 K6 ["Text"]
      189 DUPTABLE                         R28 K7 [{"Id", "Text"}]
      190 LOADK                            R29 K28 ["PlayClient"]
      191 SETTABLEKS                       R29 R28 K5 ["Id"]
      193 LOADK                            R31 K9 ["Plugin"]
      194 LOADK                            R32 K29 ["AddTools_PlayClientOnly"]
      195 NAMECALL                         R29 R4 K11 ["getText"]
      197 CALL                             R29 3 1
      198 SETTABLEKS                       R29 R28 K6 ["Text"]
      200 DUPTABLE                         R29 K7 [{"Id", "Text"}]
      201 LOADK                            R30 K30 ["PlayServer"]
      202 SETTABLEKS                       R30 R29 K5 ["Id"]
      204 LOADK                            R32 K9 ["Plugin"]
      205 LOADK                            R33 K31 ["AddTools_PlayServerOnly"]
      206 NAMECALL                         R30 R4 K11 ["getText"]
      208 CALL                             R30 3 1
      209 SETTABLEKS                       R30 R29 K6 ["Text"]
      211 SETLIST                          R25 R26 4 [1]
      213 CALL                             R23 2 3
      214 GETUPVAL                         R26 17
      215 NEWCLOSURE                       R27 P3
      216 CAPTURE                          UPVAL U9
      217 CAPTURE                          VAL R4
      218 CAPTURE                          VAL R3
      219 CAPTURE                          VAL R6
      220 CAPTURE                          VAL R8
      221 CAPTURE                          VAL R10
      222 CAPTURE                          VAL R17
      223 CAPTURE                          VAL R20
      224 CAPTURE                          VAL R23
      225 NEWTABLE                         R28 0 7
      227 MOVE                             R29 R3
      228 MOVE                             R30 R6
      229 MOVE                             R31 R8
      230 MOVE                             R32 R10
      231 MOVE                             R33 R17
      232 MOVE                             R34 R20
      233 MOVE                             R35 R23
      234 SETLIST                          R28 R29 7 [1]
      236 CALL                             R26 2 1
      237 GETUPVAL                         R27 8
      238 NEWCLOSURE                       R28 P4
      239 CAPTURE                          UPVAL U18
      240 CAPTURE                          VAL R13
      241 CAPTURE                          UPVAL U19
      242 NEWTABLE                         R29 0 0
      244 CALL                             R27 2 1
      245 GETUPVAL                         R28 17
      246 NEWCLOSURE                       R29 P5
      247 CAPTURE                          UPVAL U20
      248 CAPTURE                          VAL R26
      249 CAPTURE                          VAL R12
      250 CAPTURE                          UPVAL U18
      251 NEWTABLE                         R30 0 2
      253 MOVE                             R31 R12
      254 MOVE                             R32 R26
      255 SETLIST                          R30 R31 2 [1]
      257 CALL                             R28 2 1
      258 GETUPVAL                         R29 21
      259 LOADK                            R30 K32 ["Frame"]
      260 NEWTABLE                         R31 1 0
      262 GETUPVAL                         R32 22
      263 GETTABLEKS                       R32 R32 K33 ["Tag"]
      265 LOADK                            R33 K34 ["Role-AddTools X-PadXS X-ColumnS X-Fill Role-Surface100 data-testid=AddTools-Wrapper"]
      266 SETTABLE                         R33 R31 R32
      267 DUPTABLE                         R32 K38 [{"SearchBar", "Row", "Tree"}]
      268 GETUPVAL                         R33 21
      269 GETUPVAL                         R34 23
      270 DUPTABLE                         R35 K47 [{"LayoutOrder", "OnTextChanged", "PlaceholderText", "LeadingComponent", "LeadingComponentProps", "Size", "OverrideTags", "PaneTags"}]
      271 MOVE                             R36 R14
      272 CALL                             R36 0 1
      273 SETTABLEKS                       R36 R35 K39 ["LayoutOrder"]
      275 SETTABLEKS                       R16 R35 K40 ["OnTextChanged"]
      277 LOADK                            R38 K9 ["Plugin"]
      278 LOADK                            R39 K48 ["Search"]
      279 NAMECALL                         R36 R4 K11 ["getText"]
      281 CALL                             R36 3 1
      282 SETTABLEKS                       R36 R35 K41 ["PlaceholderText"]
      284 GETUPVAL                         R36 24
      285 SETTABLEKS                       R36 R35 K42 ["LeadingComponent"]
      287 GETUPVAL                         R36 25
      288 SETTABLEKS                       R36 R35 K43 ["LeadingComponentProps"]
      290 GETUPVAL                         R36 26
      291 SETTABLEKS                       R36 R35 K44 ["Size"]
      293 LOADB                            R36 1
      294 SETTABLEKS                       R36 R35 K45 ["OverrideTags"]
      296 LOADK                            R36 K49 ["Input X-RowS X-Corner X-Left X-PadS X-Middle"]
      297 SETTABLEKS                       R36 R35 K46 ["PaneTags"]
      299 CALL                             R33 2 1
      300 SETTABLEKS                       R33 R32 K35 ["SearchBar"]
      302 GETUPVAL                         R33 21
      303 LOADK                            R34 K32 ["Frame"]
      304 NEWTABLE                         R35 2 0
      306 MOVE                             R36 R14
      307 CALL                             R36 0 1
      308 SETTABLEKS                       R36 R35 K39 ["LayoutOrder"]
      310 GETUPVAL                         R36 22
      311 GETTABLEKS                       R36 R36 K33 ["Tag"]
      313 LOADK                            R37 K50 ["X-Fit Role-Surface X-RowSpace100"]
      314 SETTABLE                         R37 R35 R36
      315 DUPTABLE                         R36 K54 [{"Filter", "SortBy", "DataModels"}]
      316 GETUPVAL                         R37 21
      317 GETUPVAL                         R38 27
      318 NEWTABLE                         R39 8 0
      320 MOVE                             R40 R14
      321 CALL                             R40 0 1
      322 SETTABLEKS                       R40 R39 K39 ["LayoutOrder"]
      324 SETTABLEKS                       R19 R39 K55 ["MenuData"]
      326 SETTABLEKS                       R18 R39 K56 ["OnSelect"]
      328 GETTABLEKS                       R40 R17 K6 ["Text"]
      330 SETTABLEKS                       R40 R39 K6 ["Text"]
      332 GETUPVAL                         R40 14
      333 SETTABLEKS                       R40 R39 K57 ["Uri"]
      335 GETUPVAL                         R40 22
      336 GETTABLEKS                       R40 R40 K33 ["Tag"]
      338 LOADK                            R41 K58 ["Size-Large"]
      339 SETTABLE                         R41 R39 R40
      340 CALL                             R37 2 1
      341 SETTABLEKS                       R37 R36 K51 ["Filter"]
      343 GETUPVAL                         R37 21
      344 GETUPVAL                         R38 27
      345 NEWTABLE                         R39 8 0
      347 MOVE                             R40 R14
      348 CALL                             R40 0 1
      349 SETTABLEKS                       R40 R39 K39 ["LayoutOrder"]
      351 SETTABLEKS                       R22 R39 K55 ["MenuData"]
      353 SETTABLEKS                       R21 R39 K56 ["OnSelect"]
      355 GETTABLEKS                       R40 R20 K6 ["Text"]
      357 SETTABLEKS                       R40 R39 K6 ["Text"]
      359 GETUPVAL                         R40 15
      360 SETTABLEKS                       R40 R39 K57 ["Uri"]
      362 GETUPVAL                         R40 22
      363 GETTABLEKS                       R40 R40 K33 ["Tag"]
      365 LOADK                            R41 K58 ["Size-Large"]
      366 SETTABLE                         R41 R39 R40
      367 CALL                             R37 2 1
      368 SETTABLEKS                       R37 R36 K52 ["SortBy"]
      370 GETUPVAL                         R37 21
      371 GETUPVAL                         R38 27
      372 NEWTABLE                         R39 8 0
      374 MOVE                             R40 R14
      375 CALL                             R40 0 1
      376 SETTABLEKS                       R40 R39 K39 ["LayoutOrder"]
      378 SETTABLEKS                       R25 R39 K55 ["MenuData"]
      380 SETTABLEKS                       R24 R39 K56 ["OnSelect"]
      382 GETTABLEKS                       R40 R23 K6 ["Text"]
      384 SETTABLEKS                       R40 R39 K6 ["Text"]
      386 GETUPVAL                         R40 16
      387 SETTABLEKS                       R40 R39 K57 ["Uri"]
      389 GETUPVAL                         R40 22
      390 GETTABLEKS                       R40 R40 K33 ["Tag"]
      392 LOADK                            R41 K58 ["Size-Large"]
      393 SETTABLE                         R41 R39 R40
      394 CALL                             R37 2 1
      395 SETTABLEKS                       R37 R36 K53 ["DataModels"]
      397 CALL                             R33 3 1
      398 SETTABLEKS                       R33 R32 K36 ["Row"]
      400 GETUPVAL                         R33 21
      401 GETUPVAL                         R34 28
      402 NEWTABLE                         R35 16 0
      404 SETTABLEKS                       R28 R35 K59 ["Expansion"]
      406 SETTABLEKS                       R27 R35 K60 ["OnExpansionChange"]
      408 NEWTABLE                         R36 0 0
      410 SETTABLEKS                       R36 R35 K61 ["Selection"]
      412 GETUPVAL                         R36 29
      413 SETTABLEKS                       R36 R35 K62 ["GetChildren"]
      415 MOVE                             R36 R14
      416 CALL                             R36 0 1
      417 SETTABLEKS                       R36 R35 K39 ["LayoutOrder"]
      419 SETTABLEKS                       R26 R35 K63 ["RootItems"]
      421 GETUPVAL                         R36 30
      422 SETTABLEKS                       R36 R35 K64 ["RowComponent"]
      424 DUPTABLE                         R36 K66 [{"OnCheck"}]
      425 SETTABLEKS                       R15 R36 K65 ["OnCheck"]
      427 SETTABLEKS                       R36 R35 K67 ["RowProps"]
      429 LOADN                            R36 54
      430 SETTABLEKS                       R36 R35 K68 ["RowHeight"]
      432 GETUPVAL                         R36 31
      433 SETTABLEKS                       R36 R35 K44 ["Size"]
      435 GETUPVAL                         R36 22
      436 GETTABLEKS                       R36 R36 K33 ["Tag"]
      438 LOADK                            R37 K3 [""]
      439 SETTABLE                         R37 R35 R36
      440 CALL                             R33 2 1
      441 SETTABLEKS                       R33 R32 K37 ["Tree"]
      443 CALL                             R29 3 -1
      444 RETURN                           R29 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["React"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R3 R2 K12 ["createElement"]
       22 GETIMPORT                        R4 K9 [require]
       24 GETTABLEKS                       R5 R0 K13 ["Src"]
       26 GETTABLEKS                       R5 R5 K14 ["Hooks"]
       28 GETTABLEKS                       R5 R5 K15 ["useActiveTabIdentifier"]
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R5 R2 K16 ["useCallback"]
       33 GETTABLEKS                       R6 R2 K17 ["useContext"]
       35 GETTABLEKS                       R7 R2 K18 ["useEffect"]
       37 GETTABLEKS                       R8 R2 K19 ["useMemo"]
       39 GETTABLEKS                       R9 R2 K20 ["useState"]
       41 GETIMPORT                        R10 K9 [require]
       43 GETTABLEKS                       R11 R0 K10 ["Packages"]
       45 GETTABLEKS                       R11 R11 K21 ["Dash"]
       47 CALL                             R10 1 1
       48 GETTABLEKS                       R11 R10 K22 ["collectSet"]
       50 GETTABLEKS                       R12 R10 K23 ["join"]
       52 GETIMPORT                        R13 K9 [require]
       54 GETTABLEKS                       R14 R0 K13 ["Src"]
       56 GETTABLEKS                       R14 R14 K24 ["Types"]
       58 CALL                             R13 1 1
       59 GETIMPORT                        R14 K9 [require]
       61 GETTABLEKS                       R15 R0 K10 ["Packages"]
       63 GETTABLEKS                       R15 R15 K25 ["Framework"]
       65 CALL                             R14 1 1
       66 GETTABLEKS                       R15 R14 K26 ["UI"]
       68 GETTABLEKS                       R16 R15 K27 ["Image"]
       70 GETTABLEKS                       R17 R15 K28 ["TreeView"]
       72 GETTABLEKS                       R18 R15 K29 ["TextInput"]
       74 GETTABLEKS                       R19 R14 K30 ["Util"]
       76 GETTABLEKS                       R19 R19 K31 ["counter"]
       78 GETIMPORT                        R20 K9 [require]
       80 GETTABLEKS                       R21 R0 K13 ["Src"]
       82 GETTABLEKS                       R21 R21 K32 ["Contexts"]
       84 GETTABLEKS                       R21 R21 K33 ["RibbonDefinition"]
       86 CALL                             R20 1 1
       87 GETIMPORT                        R21 K9 [require]
       89 GETTABLEKS                       R22 R0 K13 ["Src"]
       91 GETTABLEKS                       R22 R22 K34 ["Components"]
       93 GETTABLEKS                       R22 R22 K35 ["RibbonSelectInput"]
       95 CALL                             R21 1 1
       96 GETIMPORT                        R22 K9 [require]
       98 GETTABLEKS                       R23 R0 K13 ["Src"]
      100 GETTABLEKS                       R23 R23 K14 ["Hooks"]
      102 GETTABLEKS                       R23 R23 K36 ["useActiveTabControls"]
      104 CALL                             R22 1 1
      105 GETIMPORT                        R23 K9 [require]
      107 GETTABLEKS                       R24 R0 K13 ["Src"]
      109 GETTABLEKS                       R24 R24 K14 ["Hooks"]
      111 GETTABLEKS                       R24 R24 K37 ["useSelectionMenu"]
      113 CALL                             R23 1 1
      114 GETIMPORT                        R24 K9 [require]
      116 GETIMPORT                        R25 K1 [script]
      118 GETTABLEKS                       R25 R25 K38 ["Parent"]
      120 GETTABLEKS                       R25 R25 K39 ["ToolTreeHelpers"]
      122 CALL                             R24 1 1
      123 GETIMPORT                        R25 K9 [require]
      125 GETIMPORT                        R26 K1 [script]
      127 GETTABLEKS                       R26 R26 K38 ["Parent"]
      129 GETTABLEKS                       R26 R26 K40 ["ToolRow"]
      131 CALL                             R25 1 1
      132 GETIMPORT                        R26 K9 [require]
      134 GETTABLEKS                       R27 R0 K10 ["Packages"]
      136 GETTABLEKS                       R27 R27 K41 ["StudioFoundation"]
      138 CALL                             R26 1 1
      139 GETTABLEKS                       R27 R26 K30 ["Util"]
      141 GETTABLEKS                       R27 R27 K42 ["StudioUri"]
      143 GETTABLEKS                       R28 R14 K43 ["ContextServices"]
      145 GETTABLEKS                       R29 R28 K44 ["Plugin"]
      147 GETTABLEKS                       R30 R28 K45 ["Localization"]
      149 GETIMPORT                        R31 K48 [table.freeze]
      151 DUPTABLE                         R32 K51 [{"Type", "Id"}]
      152 LOADK                            R33 K52 ["IconButton"]
      153 SETTABLEKS                       R33 R32 K49 ["Type"]
      155 LOADK                            R33 K53 ["REPLACEME"]
      156 SETTABLEKS                       R33 R32 K50 ["Id"]
      158 CALL                             R31 1 1
      159 DUPTABLE                         R32 K56 [{"Size", "Style"}]
      160 GETIMPORT                        R33 K59 [UDim2.fromOffset]
      162 LOADN                            R34 16
      163 LOADN                            R35 16
      164 CALL                             R33 2 1
      165 SETTABLEKS                       R33 R32 K54 ["Size"]
      167 DUPTABLE                         R33 K61 [{"Color", "Image"}]
      168 GETIMPORT                        R34 K64 [Color3.new]
      170 LOADK                            R35 K65 [0.6]
      171 LOADK                            R36 K65 [0.6]
      172 LOADK                            R37 K65 [0.6]
      173 CALL                             R34 3 1
      174 SETTABLEKS                       R34 R33 K60 ["Color"]
      176 LOADK                            R34 K66 ["rbxasset://textures/DeveloperFramework/StudioTheme/search_16.png"]
      177 SETTABLEKS                       R34 R33 K27 ["Image"]
      179 SETTABLEKS                       R33 R32 K55 ["Style"]
      181 GETIMPORT                        R33 K67 [UDim2.new]
      183 LOADN                            R34 1
      184 LOADN                            R35 0
      185 LOADN                            R36 0
      186 LOADN                            R37 32
      187 CALL                             R33 4 1
      188 GETIMPORT                        R34 K67 [UDim2.new]
      190 LOADN                            R35 1
      191 LOADN                            R36 0
      192 LOADN                            R37 1
      193 LOADN                            R38 186
      194 CALL                             R34 4 1
      195 GETTABLEKS                       R35 R27 K68 ["fromWidget"]
      197 LOADK                            R36 K2 ["Ribbon"]
      198 LOADK                            R37 K69 ["AddTools/Filter"]
      199 CALL                             R35 2 1
      200 GETTABLEKS                       R36 R27 K68 ["fromWidget"]
      202 LOADK                            R37 K2 ["Ribbon"]
      203 LOADK                            R38 K70 ["AddTools/Sort"]
      204 CALL                             R36 2 1
      205 GETTABLEKS                       R37 R27 K68 ["fromWidget"]
      207 LOADK                            R38 K2 ["Ribbon"]
      208 LOADK                            R39 K71 ["AddTools/DataModels"]
      209 CALL                             R37 2 1
      210 DUPCLOSURE                       R38 K72 [PROTO_0]
      211 DUPCLOSURE                       R39 K73 [PROTO_1]
      212 CAPTURE                          VAL R31
      213 CAPTURE                          VAL R1
      214 DUPCLOSURE                       R40 K74 [PROTO_10]
      215 CAPTURE                          VAL R4
      216 CAPTURE                          VAL R6
      217 CAPTURE                          VAL R20
      218 CAPTURE                          VAL R22
      219 CAPTURE                          VAL R30
      220 CAPTURE                          VAL R29
      221 CAPTURE                          VAL R9
      222 CAPTURE                          VAL R19
      223 CAPTURE                          VAL R5
      224 CAPTURE                          VAL R24
      225 CAPTURE                          VAL R31
      226 CAPTURE                          VAL R1
      227 CAPTURE                          VAL R7
      228 CAPTURE                          VAL R23
      229 CAPTURE                          VAL R35
      230 CAPTURE                          VAL R36
      231 CAPTURE                          VAL R37
      232 CAPTURE                          VAL R8
      233 CAPTURE                          VAL R27
      234 CAPTURE                          VAL R12
      235 CAPTURE                          VAL R11
      236 CAPTURE                          VAL R3
      237 CAPTURE                          VAL R2
      238 CAPTURE                          VAL R18
      239 CAPTURE                          VAL R16
      240 CAPTURE                          VAL R32
      241 CAPTURE                          VAL R33
      242 CAPTURE                          VAL R21
      243 CAPTURE                          VAL R17
      244 CAPTURE                          VAL R38
      245 CAPTURE                          VAL R25
      246 CAPTURE                          VAL R34
      247 RETURN                           R40 1
