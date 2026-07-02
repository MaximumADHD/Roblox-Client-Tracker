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
       76 DUPTABLE                         R20 K8 [{["Id"] = "AllCreators", ["Text"]}]
       77 LOADK                            R23 K9 ["Plugin"]
       78 LOADK                            R24 K10 ["Filter_AllCreators"]
       79 NAMECALL                         R21 R4 K11 ["getText"]
       81 CALL                             R21 3 1
       82 SETTABLEKS                       R21 R20 K7 ["Text"]
       84 DUPTABLE                         R21 K13 [{["Id"] = "RobloxStudio", ["Text"]}]
       85 LOADK                            R24 K9 ["Plugin"]
       86 LOADK                            R25 K14 ["Filter_RobloxStudio"]
       87 NAMECALL                         R22 R4 K11 ["getText"]
       89 CALL                             R22 3 1
       90 SETTABLEKS                       R22 R21 K7 ["Text"]
       92 DUPTABLE                         R22 K16 [{["Id"] = "AllPlugins", ["Text"]}]
       93 LOADK                            R25 K9 ["Plugin"]
       94 LOADK                            R26 K17 ["Filter_AllPlugins"]
       95 NAMECALL                         R23 R4 K11 ["getText"]
       97 CALL                             R23 3 1
       98 SETTABLEKS                       R23 R22 K7 ["Text"]
      100 DUPTABLE                         R23 K19 [{["Id"] = "CloudPlugins", ["Text"]}]
      101 LOADK                            R26 K9 ["Plugin"]
      102 LOADK                            R27 K20 ["Filter_CloudPlugins"]
      103 NAMECALL                         R24 R4 K11 ["getText"]
      105 CALL                             R24 3 1
      106 SETTABLEKS                       R24 R23 K7 ["Text"]
      108 DUPTABLE                         R24 K22 [{["Id"] = "LocalPlugins", ["Text"]}]
      109 LOADK                            R27 K9 ["Plugin"]
      110 LOADK                            R28 K23 ["Filter_LocalPlugins"]
      111 NAMECALL                         R25 R4 K11 ["getText"]
      113 CALL                             R25 3 1
      114 SETTABLEKS                       R25 R24 K7 ["Text"]
      116 SETLIST                          R19 R20 5 [1]
      118 CALL                             R17 2 3
      119 GETUPVAL                         R20 13
      120 GETUPVAL                         R21 15
      121 NEWTABLE                         R22 0 2
      123 DUPTABLE                         R23 K25 [{["Id"] = "A-Z", ["Text"]}]
      124 LOADK                            R26 K9 ["Plugin"]
      125 LOADK                            R27 K26 ["SortBy_AZ"]
      126 NAMECALL                         R24 R4 K11 ["getText"]
      128 CALL                             R24 3 1
      129 SETTABLEKS                       R24 R23 K7 ["Text"]
      131 DUPTABLE                         R24 K28 [{["Id"] = "Z-A", ["Text"]}]
      132 LOADK                            R27 K9 ["Plugin"]
      133 LOADK                            R28 K29 ["SortBy_ZA"]
      134 NAMECALL                         R25 R4 K11 ["getText"]
      136 CALL                             R25 3 1
      137 SETTABLEKS                       R25 R24 K7 ["Text"]
      139 SETLIST                          R22 R23 2 [1]
      141 CALL                             R20 2 3
      142 GETUPVAL                         R23 13
      143 GETUPVAL                         R24 16
      144 NEWTABLE                         R25 0 4
      146 DUPTABLE                         R26 K31 [{["Id"] = "All", ["Text"]}]
      147 LOADK                            R29 K9 ["Plugin"]
      148 LOADK                            R30 K32 ["DataModels_All"]
      149 NAMECALL                         R27 R4 K11 ["getText"]
      151 CALL                             R27 3 1
      152 SETTABLEKS                       R27 R26 K7 ["Text"]
      154 DUPTABLE                         R27 K34 [{["Id"] = "Edit", ["Text"]}]
      155 LOADK                            R30 K9 ["Plugin"]
      156 LOADK                            R31 K35 ["AddTools_Edit"]
      157 NAMECALL                         R28 R4 K11 ["getText"]
      159 CALL                             R28 3 1
      160 SETTABLEKS                       R28 R27 K7 ["Text"]
      162 DUPTABLE                         R28 K37 [{["Id"] = "PlayClient", ["Text"]}]
      163 LOADK                            R31 K9 ["Plugin"]
      164 LOADK                            R32 K38 ["AddTools_PlayClientOnly"]
      165 NAMECALL                         R29 R4 K11 ["getText"]
      167 CALL                             R29 3 1
      168 SETTABLEKS                       R29 R28 K7 ["Text"]
      170 DUPTABLE                         R29 K40 [{["Id"] = "PlayServer", ["Text"]}]
      171 LOADK                            R32 K9 ["Plugin"]
      172 LOADK                            R33 K41 ["AddTools_PlayServerOnly"]
      173 NAMECALL                         R30 R4 K11 ["getText"]
      175 CALL                             R30 3 1
      176 SETTABLEKS                       R30 R29 K7 ["Text"]
      178 SETLIST                          R25 R26 4 [1]
      180 CALL                             R23 2 3
      181 GETUPVAL                         R26 17
      182 NEWCLOSURE                       R27 P3
      183 CAPTURE                          UPVAL U9
      184 CAPTURE                          VAL R4
      185 CAPTURE                          VAL R3
      186 CAPTURE                          VAL R6
      187 CAPTURE                          VAL R8
      188 CAPTURE                          VAL R10
      189 CAPTURE                          VAL R17
      190 CAPTURE                          VAL R20
      191 CAPTURE                          VAL R23
      192 NEWTABLE                         R28 0 7
      194 MOVE                             R29 R3
      195 MOVE                             R30 R6
      196 MOVE                             R31 R8
      197 MOVE                             R32 R10
      198 MOVE                             R33 R17
      199 MOVE                             R34 R20
      200 MOVE                             R35 R23
      201 SETLIST                          R28 R29 7 [1]
      203 CALL                             R26 2 1
      204 GETUPVAL                         R27 8
      205 NEWCLOSURE                       R28 P4
      206 CAPTURE                          UPVAL U18
      207 CAPTURE                          VAL R13
      208 CAPTURE                          UPVAL U19
      209 NEWTABLE                         R29 0 0
      211 CALL                             R27 2 1
      212 GETUPVAL                         R28 17
      213 NEWCLOSURE                       R29 P5
      214 CAPTURE                          UPVAL U20
      215 CAPTURE                          VAL R26
      216 CAPTURE                          VAL R12
      217 CAPTURE                          UPVAL U18
      218 NEWTABLE                         R30 0 2
      220 MOVE                             R31 R12
      221 MOVE                             R32 R26
      222 SETLIST                          R30 R31 2 [1]
      224 CALL                             R28 2 1
      225 GETUPVAL                         R29 21
      226 LOADK                            R30 K42 ["Frame"]
      227 NEWTABLE                         R31 1 0
      229 GETUPVAL                         R32 22
      230 GETTABLEKS                       R32 R32 K43 ["Tag"]
      232 LOADK                            R33 K44 ["Role-AddTools X-PadXS X-ColumnS X-Fill Role-Surface100 data-testid=AddTools-Wrapper"]
      233 SETTABLE                         R33 R31 R32
      234 DUPTABLE                         R32 K48 [{"SearchBar", "Row", "Tree"}]
      235 GETUPVAL                         R33 21
      236 GETUPVAL                         R34 23
      237 DUPTABLE                         R35 K59 [{["LayoutOrder"], ["OnTextChanged"], ["PlaceholderText"], ["LeadingComponent"], ["LeadingComponentProps"], ["Size"], ["OverrideTags"] = True, ["PaneTags"] = "Input X-RowS X-Corner X-Left X-PadS X-Middle"}]
      238 MOVE                             R36 R14
      239 CALL                             R36 0 1
      240 SETTABLEKS                       R36 R35 K49 ["LayoutOrder"]
      242 SETTABLEKS                       R16 R35 K50 ["OnTextChanged"]
      244 LOADK                            R38 K9 ["Plugin"]
      245 LOADK                            R39 K60 ["Search"]
      246 NAMECALL                         R36 R4 K11 ["getText"]
      248 CALL                             R36 3 1
      249 SETTABLEKS                       R36 R35 K51 ["PlaceholderText"]
      251 GETUPVAL                         R36 24
      252 SETTABLEKS                       R36 R35 K52 ["LeadingComponent"]
      254 GETUPVAL                         R36 25
      255 SETTABLEKS                       R36 R35 K53 ["LeadingComponentProps"]
      257 GETUPVAL                         R36 26
      258 SETTABLEKS                       R36 R35 K54 ["Size"]
      260 CALL                             R33 2 1
      261 SETTABLEKS                       R33 R32 K45 ["SearchBar"]
      263 GETUPVAL                         R33 21
      264 LOADK                            R34 K42 ["Frame"]
      265 NEWTABLE                         R35 2 0
      267 MOVE                             R36 R14
      268 CALL                             R36 0 1
      269 SETTABLEKS                       R36 R35 K49 ["LayoutOrder"]
      271 GETUPVAL                         R36 22
      272 GETTABLEKS                       R36 R36 K43 ["Tag"]
      274 LOADK                            R37 K61 ["X-Fit Role-Surface X-RowSpace100"]
      275 SETTABLE                         R37 R35 R36
      276 DUPTABLE                         R36 K65 [{"Filter", "SortBy", "DataModels"}]
      277 GETUPVAL                         R37 21
      278 GETUPVAL                         R38 27
      279 NEWTABLE                         R39 8 0
      281 MOVE                             R40 R14
      282 CALL                             R40 0 1
      283 SETTABLEKS                       R40 R39 K49 ["LayoutOrder"]
      285 SETTABLEKS                       R19 R39 K66 ["MenuData"]
      287 SETTABLEKS                       R18 R39 K67 ["OnSelect"]
      289 GETTABLEKS                       R40 R17 K7 ["Text"]
      291 SETTABLEKS                       R40 R39 K7 ["Text"]
      293 GETUPVAL                         R40 14
      294 SETTABLEKS                       R40 R39 K68 ["Uri"]
      296 GETUPVAL                         R40 22
      297 GETTABLEKS                       R40 R40 K43 ["Tag"]
      299 LOADK                            R41 K69 ["Size-Large"]
      300 SETTABLE                         R41 R39 R40
      301 CALL                             R37 2 1
      302 SETTABLEKS                       R37 R36 K62 ["Filter"]
      304 GETUPVAL                         R37 21
      305 GETUPVAL                         R38 27
      306 NEWTABLE                         R39 8 0
      308 MOVE                             R40 R14
      309 CALL                             R40 0 1
      310 SETTABLEKS                       R40 R39 K49 ["LayoutOrder"]
      312 SETTABLEKS                       R22 R39 K66 ["MenuData"]
      314 SETTABLEKS                       R21 R39 K67 ["OnSelect"]
      316 GETTABLEKS                       R40 R20 K7 ["Text"]
      318 SETTABLEKS                       R40 R39 K7 ["Text"]
      320 GETUPVAL                         R40 15
      321 SETTABLEKS                       R40 R39 K68 ["Uri"]
      323 GETUPVAL                         R40 22
      324 GETTABLEKS                       R40 R40 K43 ["Tag"]
      326 LOADK                            R41 K69 ["Size-Large"]
      327 SETTABLE                         R41 R39 R40
      328 CALL                             R37 2 1
      329 SETTABLEKS                       R37 R36 K63 ["SortBy"]
      331 GETUPVAL                         R37 21
      332 GETUPVAL                         R38 27
      333 NEWTABLE                         R39 8 0
      335 MOVE                             R40 R14
      336 CALL                             R40 0 1
      337 SETTABLEKS                       R40 R39 K49 ["LayoutOrder"]
      339 SETTABLEKS                       R25 R39 K66 ["MenuData"]
      341 SETTABLEKS                       R24 R39 K67 ["OnSelect"]
      343 GETTABLEKS                       R40 R23 K7 ["Text"]
      345 SETTABLEKS                       R40 R39 K7 ["Text"]
      347 GETUPVAL                         R40 16
      348 SETTABLEKS                       R40 R39 K68 ["Uri"]
      350 GETUPVAL                         R40 22
      351 GETTABLEKS                       R40 R40 K43 ["Tag"]
      353 LOADK                            R41 K69 ["Size-Large"]
      354 SETTABLE                         R41 R39 R40
      355 CALL                             R37 2 1
      356 SETTABLEKS                       R37 R36 K64 ["DataModels"]
      358 CALL                             R33 3 1
      359 SETTABLEKS                       R33 R32 K46 ["Row"]
      361 GETUPVAL                         R33 21
      362 GETUPVAL                         R34 28
      363 NEWTABLE                         R35 16 0
      365 SETTABLEKS                       R28 R35 K70 ["Expansion"]
      367 SETTABLEKS                       R27 R35 K71 ["OnExpansionChange"]
      369 NEWTABLE                         R36 0 0
      371 SETTABLEKS                       R36 R35 K72 ["Selection"]
      373 GETUPVAL                         R36 29
      374 SETTABLEKS                       R36 R35 K73 ["GetChildren"]
      376 MOVE                             R36 R14
      377 CALL                             R36 0 1
      378 SETTABLEKS                       R36 R35 K49 ["LayoutOrder"]
      380 SETTABLEKS                       R26 R35 K74 ["RootItems"]
      382 GETUPVAL                         R36 30
      383 SETTABLEKS                       R36 R35 K75 ["RowComponent"]
      385 DUPTABLE                         R36 K77 [{"OnCheck"}]
      386 SETTABLEKS                       R15 R36 K76 ["OnCheck"]
      388 SETTABLEKS                       R36 R35 K78 ["RowProps"]
      390 LOADN                            R36 54
      391 SETTABLEKS                       R36 R35 K79 ["RowHeight"]
      393 GETUPVAL                         R36 31
      394 SETTABLEKS                       R36 R35 K54 ["Size"]
      396 GETUPVAL                         R36 22
      397 GETTABLEKS                       R36 R36 K43 ["Tag"]
      399 LOADK                            R37 K3 [""]
      400 SETTABLE                         R37 R35 R36
      401 CALL                             R33 2 1
      402 SETTABLEKS                       R33 R32 K47 ["Tree"]
      404 CALL                             R29 3 -1
      405 RETURN                           R29 -1

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
      151 DUPTABLE                         R32 K53 [{["Type"] = "IconButton", ["Id"] = "REPLACEME"}]
      152 CALL                             R31 1 1
      153 DUPTABLE                         R32 K56 [{"Size", "Style"}]
      154 GETIMPORT                        R33 K59 [UDim2.fromOffset]
      156 LOADN                            R34 16
      157 LOADN                            R35 16
      158 CALL                             R33 2 1
      159 SETTABLEKS                       R33 R32 K54 ["Size"]
      161 DUPTABLE                         R33 K62 [{["Color"], ["Image"] = "rbxasset://textures/DeveloperFramework/StudioTheme/search_16.png"}]
      162 GETIMPORT                        R34 K65 [Color3.new]
      164 LOADK                            R35 K66 [0.6]
      165 LOADK                            R36 K66 [0.6]
      166 LOADK                            R37 K66 [0.6]
      167 CALL                             R34 3 1
      168 SETTABLEKS                       R34 R33 K60 ["Color"]
      170 SETTABLEKS                       R33 R32 K55 ["Style"]
      172 GETIMPORT                        R33 K67 [UDim2.new]
      174 LOADN                            R34 1
      175 LOADN                            R35 0
      176 LOADN                            R36 0
      177 LOADN                            R37 32
      178 CALL                             R33 4 1
      179 GETIMPORT                        R34 K67 [UDim2.new]
      181 LOADN                            R35 1
      182 LOADN                            R36 0
      183 LOADN                            R37 1
      184 LOADN                            R38 -70
      185 CALL                             R34 4 1
      186 GETTABLEKS                       R35 R27 K68 ["fromWidget"]
      188 LOADK                            R36 K2 ["Ribbon"]
      189 LOADK                            R37 K69 ["AddTools/Filter"]
      190 CALL                             R35 2 1
      191 GETTABLEKS                       R36 R27 K68 ["fromWidget"]
      193 LOADK                            R37 K2 ["Ribbon"]
      194 LOADK                            R38 K70 ["AddTools/Sort"]
      195 CALL                             R36 2 1
      196 GETTABLEKS                       R37 R27 K68 ["fromWidget"]
      198 LOADK                            R38 K2 ["Ribbon"]
      199 LOADK                            R39 K71 ["AddTools/DataModels"]
      200 CALL                             R37 2 1
      201 DUPCLOSURE                       R38 K72 [PROTO_0]
      202 DUPCLOSURE                       R39 K73 [PROTO_1]
      203 CAPTURE                          VAL R31
      204 CAPTURE                          VAL R1
      205 DUPCLOSURE                       R40 K74 [PROTO_10]
      206 CAPTURE                          VAL R4
      207 CAPTURE                          VAL R6
      208 CAPTURE                          VAL R20
      209 CAPTURE                          VAL R22
      210 CAPTURE                          VAL R30
      211 CAPTURE                          VAL R29
      212 CAPTURE                          VAL R9
      213 CAPTURE                          VAL R19
      214 CAPTURE                          VAL R5
      215 CAPTURE                          VAL R24
      216 CAPTURE                          VAL R31
      217 CAPTURE                          VAL R1
      218 CAPTURE                          VAL R7
      219 CAPTURE                          VAL R23
      220 CAPTURE                          VAL R35
      221 CAPTURE                          VAL R36
      222 CAPTURE                          VAL R37
      223 CAPTURE                          VAL R8
      224 CAPTURE                          VAL R27
      225 CAPTURE                          VAL R12
      226 CAPTURE                          VAL R11
      227 CAPTURE                          VAL R3
      228 CAPTURE                          VAL R2
      229 CAPTURE                          VAL R18
      230 CAPTURE                          VAL R16
      231 CAPTURE                          VAL R32
      232 CAPTURE                          VAL R33
      233 CAPTURE                          VAL R21
      234 CAPTURE                          VAL R17
      235 CAPTURE                          VAL R38
      236 CAPTURE                          VAL R25
      237 CAPTURE                          VAL R34
      238 RETURN                           R40 1
