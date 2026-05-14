PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Children"]
        2 JUMPIF                           R1 ; [+2]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["X"]
        2 GETTABLEKS                       R2 R0 K1 ["Y"]
        4 NEWTABLE                         R3 0 2
        6 MOVE                             R4 R1
        7 MOVE                             R5 R2
        8 SETLIST                          R3 R4 2 [1]
       10 RETURN                           R3 1

PROTO_2:
        0 GETTABLEN                        R4 R0 1
        1 FASTCALL1                        TONUMBER R4 ; [+2]
        2 GETIMPORT                        R3 K1 [tonumber]
        4 CALL                             R3 1 1
        5 MOVE                             R1 R3
        6 GETTABLEN                        R3 R0 2
        7 FASTCALL1                        TONUMBER R3 ; [+2]
        8 GETIMPORT                        R2 K1 [tonumber]
       10 CALL                             R2 1 1
       11 GETIMPORT                        R3 K4 [Vector2.new]
       13 MOVE                             R4 R1
       14 MOVE                             R5 R2
       15 CALL                             R3 2 -1
       16 RETURN                           R3 -1

PROTO_3:
        0 DUPTABLE                         R0 K2 [{"Name", "Value"}]
        1 DUPTABLE                         R1 K4 [{"Schema", "Value"}]
        2 GETUPVAL                         R2 0
        3 SETTABLEKS                       R2 R1 K3 ["Schema"]
        5 LOADK                            R2 K5 [""]
        6 SETTABLEKS                       R2 R1 K1 ["Value"]
        8 SETTABLEKS                       R1 R0 K0 ["Name"]
       10 DUPTABLE                         R1 K4 [{"Schema", "Value"}]
       11 GETUPVAL                         R2 1
       12 SETTABLEKS                       R2 R1 K3 ["Schema"]
       14 LOADK                            R2 K5 [""]
       15 SETTABLEKS                       R2 R1 K1 ["Value"]
       17 SETTABLEKS                       R1 R0 K1 ["Value"]
       19 RETURN                           R0 1

PROTO_4:
        0 DUPTABLE                         R0 K2 [{"Name", "Children"}]
        1 DUPTABLE                         R1 K7 [{"Actions", "FullSpan", "Schema", "Value"}]
        2 GETUPVAL                         R2 0
        3 SETTABLEKS                       R2 R1 K3 ["Actions"]
        5 LOADB                            R2 1
        6 SETTABLEKS                       R2 R1 K4 ["FullSpan"]
        8 GETUPVAL                         R2 1
        9 GETUPVAL                         R3 2
       10 DUPTABLE                         R4 K9 [{"Editing"}]
       11 LOADB                            R5 1
       12 SETTABLEKS                       R5 R4 K8 ["Editing"]
       14 CALL                             R2 2 1
       15 SETTABLEKS                       R2 R1 K5 ["Schema"]
       17 LOADK                            R2 K10 [""]
       18 SETTABLEKS                       R2 R1 K6 ["Value"]
       20 SETTABLEKS                       R1 R0 K0 ["Name"]
       22 NEWTABLE                         R1 0 1
       24 GETUPVAL                         R2 3
       25 CALL                             R2 0 1
       26 SETLIST                          R1 R2 1 [1]
       28 SETTABLEKS                       R1 R0 K1 ["Children"]
       30 RETURN                           R0 1

PROTO_5:
        0 NEWTABLE                         R0 0 3
        2 DUPTABLE                         R1 K2 [{"Name", "Children"}]
        3 DUPTABLE                         R2 K7 [{"Actions", "FullSpan", "Schema", "Value"}]
        4 GETUPVAL                         R3 0
        5 SETTABLEKS                       R3 R2 K3 ["Actions"]
        7 LOADB                            R3 1
        8 SETTABLEKS                       R3 R2 K4 ["FullSpan"]
       10 GETUPVAL                         R3 1
       11 SETTABLEKS                       R3 R2 K5 ["Schema"]
       13 LOADK                            R3 K8 ["TextLabel"]
       14 SETTABLEKS                       R3 R2 K6 ["Value"]
       16 SETTABLEKS                       R2 R1 K0 ["Name"]
       18 NEWTABLE                         R2 0 5
       20 DUPTABLE                         R3 K9 [{"Name", "Value"}]
       21 DUPTABLE                         R4 K10 [{"Actions", "Schema", "Value"}]
       22 GETUPVAL                         R5 2
       23 SETTABLEKS                       R5 R4 K3 ["Actions"]
       25 GETUPVAL                         R5 3
       26 SETTABLEKS                       R5 R4 K5 ["Schema"]
       28 LOADK                            R5 K11 ["BackgroundColor3"]
       29 SETTABLEKS                       R5 R4 K6 ["Value"]
       31 SETTABLEKS                       R4 R3 K0 ["Name"]
       33 DUPTABLE                         R4 K12 [{"Schema", "Value"}]
       34 GETUPVAL                         R5 4
       35 SETTABLEKS                       R5 R4 K5 ["Schema"]
       37 GETIMPORT                        R5 K15 [Color3.fromRGB]
       39 LOADN                            R6 200
       40 LOADN                            R7 30
       41 LOADN                            R8 120
       42 CALL                             R5 3 1
       43 SETTABLEKS                       R5 R4 K6 ["Value"]
       45 SETTABLEKS                       R4 R3 K6 ["Value"]
       47 DUPTABLE                         R4 K9 [{"Name", "Value"}]
       48 DUPTABLE                         R5 K10 [{"Actions", "Schema", "Value"}]
       49 GETUPVAL                         R6 2
       50 SETTABLEKS                       R6 R5 K3 ["Actions"]
       52 GETUPVAL                         R6 3
       53 SETTABLEKS                       R6 R5 K5 ["Schema"]
       55 LOADK                            R6 K16 ["Font"]
       56 SETTABLEKS                       R6 R5 K6 ["Value"]
       58 SETTABLEKS                       R5 R4 K0 ["Name"]
       60 DUPTABLE                         R5 K12 [{"Schema", "Value"}]
       61 GETUPVAL                         R6 5
       62 SETTABLEKS                       R6 R5 K5 ["Schema"]
       64 LOADK                            R6 K17 ["Gotham"]
       65 SETTABLEKS                       R6 R5 K6 ["Value"]
       67 SETTABLEKS                       R5 R4 K6 ["Value"]
       69 DUPTABLE                         R5 K9 [{"Name", "Value"}]
       70 DUPTABLE                         R6 K10 [{"Actions", "Schema", "Value"}]
       71 GETUPVAL                         R7 2
       72 SETTABLEKS                       R7 R6 K3 ["Actions"]
       74 GETUPVAL                         R7 3
       75 SETTABLEKS                       R7 R6 K5 ["Schema"]
       77 LOADK                            R7 K18 ["AnchorPoint"]
       78 SETTABLEKS                       R7 R6 K6 ["Value"]
       80 SETTABLEKS                       R6 R5 K0 ["Name"]
       82 DUPTABLE                         R6 K12 [{"Schema", "Value"}]
       83 GETUPVAL                         R7 6
       84 SETTABLEKS                       R7 R6 K5 ["Schema"]
       86 GETIMPORT                        R7 K21 [Vector2.new]
       88 LOADN                            R8 0
       89 LOADN                            R9 0
       90 CALL                             R7 2 1
       91 SETTABLEKS                       R7 R6 K6 ["Value"]
       93 SETTABLEKS                       R6 R5 K6 ["Value"]
       95 DUPTABLE                         R6 K9 [{"Name", "Value"}]
       96 DUPTABLE                         R7 K10 [{"Actions", "Schema", "Value"}]
       97 GETUPVAL                         R8 2
       98 SETTABLEKS                       R8 R7 K3 ["Actions"]
      100 GETUPVAL                         R8 3
      101 SETTABLEKS                       R8 R7 K5 ["Schema"]
      103 LOADK                            R8 K22 ["TextTransparency"]
      104 SETTABLEKS                       R8 R7 K6 ["Value"]
      106 SETTABLEKS                       R7 R6 K0 ["Name"]
      108 DUPTABLE                         R7 K12 [{"Schema", "Value"}]
      109 GETUPVAL                         R8 7
      110 SETTABLEKS                       R8 R7 K5 ["Schema"]
      112 LOADK                            R8 K23 [0.5]
      113 SETTABLEKS                       R8 R7 K6 ["Value"]
      115 SETTABLEKS                       R7 R6 K6 ["Value"]
      117 GETUPVAL                         R7 8
      118 CALL                             R7 0 1
      119 SETLIST                          R2 R3 5 [1]
      121 SETTABLEKS                       R2 R1 K1 ["Children"]
      123 DUPTABLE                         R2 K2 [{"Name", "Children"}]
      124 DUPTABLE                         R3 K25 [{"Actions", "FullSpan", "Schema", "Value", "ErrorMessage"}]
      125 GETUPVAL                         R4 0
      126 SETTABLEKS                       R4 R3 K3 ["Actions"]
      128 LOADB                            R4 1
      129 SETTABLEKS                       R4 R3 K4 ["FullSpan"]
      131 GETUPVAL                         R4 1
      132 SETTABLEKS                       R4 R3 K5 ["Schema"]
      134 LOADK                            R4 K26 ["Error"]
      135 SETTABLEKS                       R4 R3 K6 ["Value"]
      137 LOADK                            R4 K27 ["This is an error"]
      138 SETTABLEKS                       R4 R3 K24 ["ErrorMessage"]
      140 SETTABLEKS                       R3 R2 K0 ["Name"]
      142 NEWTABLE                         R3 0 3
      144 GETUPVAL                         R4 8
      145 CALL                             R4 0 1
      146 DUPTABLE                         R5 K2 [{"Name", "Children"}]
      147 DUPTABLE                         R6 K25 [{"Actions", "FullSpan", "Schema", "Value", "ErrorMessage"}]
      148 GETUPVAL                         R7 0
      149 SETTABLEKS                       R7 R6 K3 ["Actions"]
      151 LOADB                            R7 1
      152 SETTABLEKS                       R7 R6 K4 ["FullSpan"]
      154 GETUPVAL                         R7 1
      155 SETTABLEKS                       R7 R6 K5 ["Schema"]
      157 LOADK                            R7 K26 ["Error"]
      158 SETTABLEKS                       R7 R6 K6 ["Value"]
      160 LOADK                            R7 K27 ["This is an error"]
      161 SETTABLEKS                       R7 R6 K24 ["ErrorMessage"]
      163 SETTABLEKS                       R6 R5 K0 ["Name"]
      165 NEWTABLE                         R6 0 2
      167 DUPTABLE                         R7 K9 [{"Name", "Value"}]
      168 DUPTABLE                         R8 K28 [{"Value", "Actions", "Schema"}]
      169 LOADK                            R9 K29 ["ImageTransparency"]
      170 SETTABLEKS                       R9 R8 K6 ["Value"]
      172 GETUPVAL                         R9 2
      173 SETTABLEKS                       R9 R8 K3 ["Actions"]
      175 GETUPVAL                         R9 3
      176 SETTABLEKS                       R9 R8 K5 ["Schema"]
      178 SETTABLEKS                       R8 R7 K0 ["Name"]
      180 DUPTABLE                         R8 K30 [{"Value", "Schema"}]
      181 LOADK                            R9 K23 [0.5]
      182 SETTABLEKS                       R9 R8 K6 ["Value"]
      184 GETUPVAL                         R9 7
      185 SETTABLEKS                       R9 R8 K5 ["Schema"]
      187 SETTABLEKS                       R8 R7 K6 ["Value"]
      189 GETUPVAL                         R8 8
      190 CALL                             R8 0 1
      191 SETLIST                          R6 R7 2 [1]
      193 SETTABLEKS                       R6 R5 K1 ["Children"]
      195 DUPTABLE                         R6 K2 [{"Name", "Children"}]
      196 DUPTABLE                         R7 K7 [{"Actions", "FullSpan", "Schema", "Value"}]
      197 GETUPVAL                         R8 0
      198 SETTABLEKS                       R8 R7 K3 ["Actions"]
      200 LOADB                            R8 1
      201 SETTABLEKS                       R8 R7 K4 ["FullSpan"]
      203 GETUPVAL                         R8 1
      204 SETTABLEKS                       R8 R7 K5 ["Schema"]
      206 LOADK                            R8 K31 [":Hover.ImageLabel"]
      207 SETTABLEKS                       R8 R7 K6 ["Value"]
      209 SETTABLEKS                       R7 R6 K0 ["Name"]
      211 NEWTABLE                         R7 0 2
      213 DUPTABLE                         R8 K9 [{"Name", "Value"}]
      214 DUPTABLE                         R9 K10 [{"Actions", "Schema", "Value"}]
      215 GETUPVAL                         R10 2
      216 SETTABLEKS                       R10 R9 K3 ["Actions"]
      218 GETUPVAL                         R10 3
      219 SETTABLEKS                       R10 R9 K5 ["Schema"]
      221 LOADK                            R10 K29 ["ImageTransparency"]
      222 SETTABLEKS                       R10 R9 K6 ["Value"]
      224 SETTABLEKS                       R9 R8 K0 ["Name"]
      226 DUPTABLE                         R9 K12 [{"Schema", "Value"}]
      227 GETUPVAL                         R10 7
      228 SETTABLEKS                       R10 R9 K5 ["Schema"]
      230 LOADK                            R10 K32 [0.8]
      231 SETTABLEKS                       R10 R9 K6 ["Value"]
      233 SETTABLEKS                       R9 R8 K6 ["Value"]
      235 GETUPVAL                         R9 8
      236 CALL                             R9 0 1
      237 SETLIST                          R7 R8 2 [1]
      239 SETTABLEKS                       R7 R6 K1 ["Children"]
      241 SETLIST                          R3 R4 3 [1]
      243 SETTABLEKS                       R3 R2 K1 ["Children"]
      245 DUPTABLE                         R3 K2 [{"Name", "Children"}]
      246 DUPTABLE                         R4 K7 [{"Actions", "FullSpan", "Schema", "Value"}]
      247 GETUPVAL                         R5 0
      248 SETTABLEKS                       R5 R4 K3 ["Actions"]
      250 LOADB                            R5 1
      251 SETTABLEKS                       R5 R4 K4 ["FullSpan"]
      253 GETUPVAL                         R5 1
      254 SETTABLEKS                       R5 R4 K5 ["Schema"]
      256 LOADK                            R5 K33 ["Frame $Dialog"]
      257 SETTABLEKS                       R5 R4 K6 ["Value"]
      259 SETTABLEKS                       R4 R3 K0 ["Name"]
      261 NEWTABLE                         R4 0 2
      263 DUPTABLE                         R5 K2 [{"Name", "Children"}]
      264 DUPTABLE                         R6 K7 [{"Actions", "FullSpan", "Schema", "Value"}]
      265 GETUPVAL                         R7 0
      266 SETTABLEKS                       R7 R6 K3 ["Actions"]
      268 LOADB                            R7 1
      269 SETTABLEKS                       R7 R6 K4 ["FullSpan"]
      271 GETUPVAL                         R7 1
      272 SETTABLEKS                       R7 R6 K5 ["Schema"]
      274 LOADK                            R7 K34 ["Frame $Alert"]
      275 SETTABLEKS                       R7 R6 K6 ["Value"]
      277 SETTABLEKS                       R6 R5 K0 ["Name"]
      279 NEWTABLE                         R6 0 2
      281 DUPTABLE                         R7 K9 [{"Name", "Value"}]
      282 DUPTABLE                         R8 K28 [{"Value", "Actions", "Schema"}]
      283 LOADK                            R9 K35 ["Image"]
      284 SETTABLEKS                       R9 R8 K6 ["Value"]
      286 GETUPVAL                         R9 2
      287 SETTABLEKS                       R9 R8 K3 ["Actions"]
      289 GETUPVAL                         R9 3
      290 SETTABLEKS                       R9 R8 K5 ["Schema"]
      292 SETTABLEKS                       R8 R7 K0 ["Name"]
      294 DUPTABLE                         R8 K30 [{"Value", "Schema"}]
      295 LOADK                            R9 K36 ["rbxassetid://textures/alert"]
      296 SETTABLEKS                       R9 R8 K6 ["Value"]
      298 GETUPVAL                         R9 9
      299 SETTABLEKS                       R9 R8 K5 ["Schema"]
      301 SETTABLEKS                       R8 R7 K6 ["Value"]
      303 GETUPVAL                         R8 8
      304 CALL                             R8 0 1
      305 SETLIST                          R6 R7 2 [1]
      307 SETTABLEKS                       R6 R5 K1 ["Children"]
      309 DUPTABLE                         R6 K2 [{"Name", "Children"}]
      310 DUPTABLE                         R7 K7 [{"Actions", "FullSpan", "Schema", "Value"}]
      311 GETUPVAL                         R8 0
      312 SETTABLEKS                       R8 R7 K3 ["Actions"]
      314 LOADB                            R8 1
      315 SETTABLEKS                       R8 R7 K4 ["FullSpan"]
      317 GETUPVAL                         R8 1
      318 SETTABLEKS                       R8 R7 K5 ["Schema"]
      320 LOADK                            R8 K37 [".. Frame $ButtonRow ::UIListLayout"]
      321 SETTABLEKS                       R8 R7 K6 ["Value"]
      323 SETTABLEKS                       R7 R6 K0 ["Name"]
      325 NEWTABLE                         R7 0 2
      327 DUPTABLE                         R8 K9 [{"Name", "Value"}]
      328 DUPTABLE                         R9 K28 [{"Value", "Actions", "Schema"}]
      329 LOADK                            R10 K38 ["FillDirection"]
      330 SETTABLEKS                       R10 R9 K6 ["Value"]
      332 GETUPVAL                         R10 2
      333 SETTABLEKS                       R10 R9 K3 ["Actions"]
      335 GETUPVAL                         R10 3
      336 SETTABLEKS                       R10 R9 K5 ["Schema"]
      338 SETTABLEKS                       R9 R8 K0 ["Name"]
      340 DUPTABLE                         R9 K30 [{"Value", "Schema"}]
      341 LOADK                            R10 K39 [""]
      342 SETTABLEKS                       R10 R9 K6 ["Value"]
      344 GETUPVAL                         R10 10
      345 SETTABLEKS                       R10 R9 K5 ["Schema"]
      347 SETTABLEKS                       R9 R8 K6 ["Value"]
      349 GETUPVAL                         R9 8
      350 CALL                             R9 0 1
      351 SETLIST                          R7 R8 2 [1]
      353 SETTABLEKS                       R7 R6 K1 ["Children"]
      355 SETLIST                          R4 R5 2 [1]
      357 SETTABLEKS                       R4 R3 K1 ["Children"]
      359 SETLIST                          R0 R1 3 [1]
      361 RETURN                           R0 1

PROTO_6:
        0 NEWTABLE                         R1 0 4
        2 DUPTABLE                         R2 K3 [{"Id", "Label", "Value"}]
        3 LOADK                            R3 K4 ["Text"]
        4 SETTABLEKS                       R3 R2 K0 ["Id"]
        6 LOADK                            R3 K4 ["Text"]
        7 SETTABLEKS                       R3 R2 K1 ["Label"]
        9 LOADK                            R3 K4 ["Text"]
       10 SETTABLEKS                       R3 R2 K2 ["Value"]
       12 DUPTABLE                         R3 K3 [{"Id", "Label", "Value"}]
       13 LOADK                            R4 K5 ["Color"]
       14 SETTABLEKS                       R4 R3 K0 ["Id"]
       16 LOADK                            R4 K5 ["Color"]
       17 SETTABLEKS                       R4 R3 K1 ["Label"]
       19 LOADK                            R4 K5 ["Color"]
       20 SETTABLEKS                       R4 R3 K2 ["Value"]
       22 DUPTABLE                         R4 K3 [{"Id", "Label", "Value"}]
       23 LOADK                            R5 K6 ["Frame"]
       24 SETTABLEKS                       R5 R4 K0 ["Id"]
       26 LOADK                            R5 K6 ["Frame"]
       27 SETTABLEKS                       R5 R4 K1 ["Label"]
       29 LOADK                            R5 K6 ["Frame"]
       30 SETTABLEKS                       R5 R4 K2 ["Value"]
       32 DUPTABLE                         R5 K3 [{"Id", "Label", "Value"}]
       33 LOADK                            R6 K7 ["Image"]
       34 SETTABLEKS                       R6 R5 K0 ["Id"]
       36 LOADK                            R6 K7 ["Image"]
       37 SETTABLEKS                       R6 R5 K1 ["Label"]
       39 LOADK                            R6 K7 ["Image"]
       40 SETTABLEKS                       R6 R5 K2 ["Value"]
       42 SETLIST                          R1 R2 4 [1]
       44 NEWTABLE                         R2 0 0
       46 GETIMPORT                        R3 K9 [ipairs]
       48 MOVE                             R4 R1
       49 CALL                             R3 1 3
       50 FORGPREP_INEXT                   R3
       51 GETIMPORT                        R9 K12 [string.lower]
       53 GETTABLEKS                       R10 R7 K0 ["Id"]
       55 CALL                             R9 1 1
       56 LOADN                            R10 1
       57 FASTCALL1                        STRING_LEN R0 ; [+3]
       58 MOVE                             R12 R0
       59 GETIMPORT                        R11 K14 [string.len]
       61 CALL                             R11 1 1
       62 FASTCALL                         STRING_SUB ; [+2]
       63 GETIMPORT                        R8 K16 [string.sub]
       65 CALL                             R8 3 1
       66 GETIMPORT                        R9 K12 [string.lower]
       68 MOVE                             R10 R0
       69 CALL                             R9 1 1
       70 JUMPIFNOTEQ                      R8 R9 ; [+8]
       72 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       74 MOVE                             R9 R2
       75 MOVE                             R10 R7
       76 GETIMPORT                        R8 K19 [table.insert]
       78 CALL                             R8 2 0
       79 FORGLOOP                         R3 2 [inext] ; [-29]
       81 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"Sizes"}]
        2 SETTABLEKS                       R0 R3 K0 ["Sizes"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R5 2
        4 GETUPVAL                         R6 3
        5 NAMECALL                         R1 R1 K0 ["updateCell"]
        7 CALL                             R1 5 -1
        8 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 NAMECALL                         R1 R1 K0 ["removeItem"]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R4 R0 K0 ["Items"]
        5 GETUPVAL                         R5 2
        6 NAMECALL                         R2 R2 K1 ["getChild"]
        8 CALL                             R2 3 1
        9 GETUPVAL                         R3 1
       10 MOVE                             R5 R0
       11 GETUPVAL                         R6 2
       12 MOVE                             R7 R1
       13 GETTABLEKS                       R10 R2 K3 ["Children"]
       15 LENGTH                           R9 R10
       16 ADDK                             R8 R9 K2 [1]
       17 NAMECALL                         R3 R3 K4 ["insertRow"]
       19 CALL                             R3 5 1
       20 GETUPVAL                         R4 3
       21 MOVE                             R5 R3
       22 GETUPVAL                         R6 1
       23 MOVE                             R8 R3
       24 GETUPVAL                         R9 2
       25 LOADB                            R10 1
       26 NAMECALL                         R6 R6 K5 ["togglePath"]
       28 CALL                             R6 4 -1
       29 CALL                             R4 -1 1
       30 GETTABLEKS                       R5 R4 K6 ["Expansion"]
       32 LOADB                            R6 1
       33 SETTABLE                         R6 R5 R1
       34 RETURN                           R4 1

PROTO_11:
        0 JUMPIFNOTEQKS                    R0 K0 ["Edit"] ; [+21]
        2 DUPTABLE                         R3 K2 [{"Schema"}]
        3 GETUPVAL                         R4 0
        4 GETUPVAL                         R5 1
        5 DUPTABLE                         R6 K4 [{"Editing"}]
        6 LOADB                            R7 1
        7 SETTABLEKS                       R7 R6 K3 ["Editing"]
        9 CALL                             R4 2 1
       10 SETTABLEKS                       R4 R3 K1 ["Schema"]
       12 GETUPVAL                         R4 2
       13 NEWCLOSURE                       R6 P0
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          VAL R3
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R2
       18 NAMECALL                         R4 R4 K5 ["setState"]
       20 CALL                             R4 2 0
       21 RETURN                           R0 0
       22 JUMPIFNOTEQKS                    R0 K6 ["Delete"] ; [+9]
       24 GETUPVAL                         R3 2
       25 NEWCLOSURE                       R5 P1
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          VAL R1
       28 NAMECALL                         R3 R3 K5 ["setState"]
       30 CALL                             R3 2 0
       31 RETURN                           R0 0
       32 JUMPIFNOTEQKS                    R0 K7 ["Add"] ; [+11]
       34 GETUPVAL                         R3 2
       35 NEWCLOSURE                       R5 P2
       36 CAPTURE                          UPVAL U4
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          VAL R1
       39 CAPTURE                          UPVAL U0
       40 NAMECALL                         R3 R3 K5 ["setState"]
       42 CALL                             R3 2 0
       43 RETURN                           R0 0
       44 JUMPIFNOTEQKS                    R0 K8 ["Variable"] ; [+5]
       46 GETIMPORT                        R3 K10 [print]
       48 LOADK                            R4 K11 ["Switch to Variable schema!"]
       49 CALL                             R3 1 0
       50 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 NAMECALL                         R1 R1 K0 ["removeItem"]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K2 [{"Value", "Schema"}]
        3 LOADN                            R5 0
        4 SETTABLEKS                       R5 R4 K0 ["Value"]
        6 GETUPVAL                         R5 1
        7 SETTABLEKS                       R5 R4 K1 ["Schema"]
        9 GETUPVAL                         R5 2
       10 LOADN                            R6 2
       11 NAMECALL                         R1 R1 K3 ["updateCell"]
       13 CALL                             R1 5 1
       14 GETUPVAL                         R2 3
       15 GETUPVAL                         R3 2
       16 LOADN                            R4 1
       17 LOADN                            R5 255
       18 CALL                             R2 3 1
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R5 R1 K4 ["Items"]
       22 MOVE                             R6 R2
       23 NAMECALL                         R3 R3 K5 ["getChild"]
       25 CALL                             R3 3 1
       26 GETTABLEKS                       R6 R3 K7 ["Children"]
       28 LENGTH                           R5 R6
       29 ADDK                             R4 R5 K6 [1]
       30 LOADN                            R7 1
       31 GETTABLEKS                       R8 R3 K7 ["Children"]
       33 LENGTH                           R5 R8
       34 LOADN                            R6 1
       35 FORNPREP                         R5
       36 GETTABLEKS                       R9 R3 K7 ["Children"]
       38 GETTABLE                         R8 R9 R7
       39 GETTABLEKS                       R8 R8 K8 ["Name"]
       41 GETTABLEKS                       R8 R8 K9 ["FullSpan"]
       43 JUMPIFNOT                        R8 ; [+2]
       44 MOVE                             R4 R7
       45 JUMP                             ; [+1]
       46 FORNLOOP                         R5
       47 GETUPVAL                         R5 0
       48 MOVE                             R7 R1
       49 MOVE                             R8 R2
       50 GETUPVAL                         R9 4
       51 CALL                             R9 0 1
       52 MOVE                             R10 R4
       53 NAMECALL                         R5 R5 K10 ["insertRow"]
       55 CALL                             R5 5 -1
       56 RETURN                           R5 -1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R5 2
        4 GETUPVAL                         R6 3
        5 NAMECALL                         R1 R1 K0 ["updateCell"]
        7 CALL                             R1 5 -1
        8 RETURN                           R1 -1

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R5 R5 K0 ["state"]
        4 GETTABLEKS                       R5 R5 K1 ["Items"]
        6 MOVE                             R6 R1
        7 NAMECALL                         R3 R3 K2 ["getChild"]
        9 CALL                             R3 3 1
       10 JUMPIF                           R3 ; [+1]
       11 RETURN                           R0 0
       12 JUMPIFNOTEQKN                    R2 K3 [1] ; [+17]
       14 JUMPIFNOTEQKS                    R0 K4 [""] ; [+15]
       16 GETTABLEKS                       R4 R3 K5 ["Name"]
       18 GETTABLEKS                       R4 R4 K6 ["Value"]
       20 JUMPIFEQKS                       R4 K4 [""] ; [+9]
       22 GETUPVAL                         R4 1
       23 NEWCLOSURE                       R6 P0
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          VAL R1
       26 NAMECALL                         R4 R4 K7 ["setState"]
       28 CALL                             R4 2 0
       29 RETURN                           R0 0
       30 DUPTABLE                         R4 K8 [{"Value"}]
       31 SETTABLEKS                       R0 R4 K6 ["Value"]
       33 JUMPIFNOTEQKS                    R0 K9 ["Error"] ; [+5]
       35 LOADK                            R5 K10 ["Error tooltip"]
       36 SETTABLEKS                       R5 R4 K11 ["ErrorMessage"]
       38 JUMP                             ; [+3]
       39 LOADK                            R5 K4 [""]
       40 SETTABLEKS                       R5 R4 K11 ["ErrorMessage"]
       42 JUMPIFNOTEQKN                    R2 K3 [1] ; [+40]
       44 GETTABLEKS                       R5 R3 K5 ["Name"]
       46 GETTABLEKS                       R5 R5 K12 ["FullSpan"]
       48 JUMPIFNOT                        R5 ; [+10]
       49 GETUPVAL                         R5 2
       50 GETUPVAL                         R6 3
       51 DUPTABLE                         R7 K14 [{"Editing"}]
       52 LOADB                            R8 0
       53 SETTABLEKS                       R8 R7 K13 ["Editing"]
       55 CALL                             R5 2 1
       56 SETTABLEKS                       R5 R4 K15 ["Schema"]
       58 JUMP                             ; [+24]
       59 GETTABLEKS                       R5 R3 K5 ["Name"]
       61 GETTABLEKS                       R5 R5 K6 ["Value"]
       63 JUMPIFNOTEQKS                    R5 K4 [""] ; [+19]
       65 JUMPIFEQKS                       R0 K4 [""] ; [+17]
       67 GETUPVAL                         R5 4
       68 SETTABLEKS                       R5 R4 K16 ["Actions"]
       70 GETUPVAL                         R5 5
       71 SETTABLEKS                       R5 R4 K15 ["Schema"]
       73 GETUPVAL                         R5 1
       74 NEWCLOSURE                       R7 P1
       75 CAPTURE                          UPVAL U0
       76 CAPTURE                          UPVAL U6
       77 CAPTURE                          VAL R1
       78 CAPTURE                          UPVAL U7
       79 CAPTURE                          UPVAL U8
       80 NAMECALL                         R5 R5 K7 ["setState"]
       82 CALL                             R5 2 0
       83 GETUPVAL                         R5 1
       84 NEWCLOSURE                       R7 P2
       85 CAPTURE                          UPVAL U0
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R1
       88 CAPTURE                          VAL R2
       89 NAMECALL                         R5 R5 K7 ["setState"]
       91 CALL                             R5 2 0
       92 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 NAMECALL                         R1 R1 K0 ["togglePath"]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 NAMECALL                         R1 R1 K0 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_18:
        0 DUPTABLE                         R1 K6 [{"Columns", "Sizes", "Expansion", "Hidden", "Selection", "Items"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["Columns"]
        4 NEWTABLE                         R2 0 2
        6 GETIMPORT                        R3 K9 [UDim.new]
        8 LOADK                            R4 K10 [0.4]
        9 LOADN                            R5 0
       10 CALL                             R3 2 1
       11 GETIMPORT                        R4 K9 [UDim.new]
       13 LOADK                            R5 K11 [0.6]
       14 LOADN                            R6 0
       15 CALL                             R4 2 -1
       16 SETLIST                          R2 R3 -1 [1]
       18 SETTABLEKS                       R2 R1 K1 ["Sizes"]
       20 NEWTABLE                         R2 0 0
       22 SETTABLEKS                       R2 R1 K2 ["Expansion"]
       24 NEWTABLE                         R2 0 0
       26 SETTABLEKS                       R2 R1 K3 ["Hidden"]
       28 NEWTABLE                         R2 0 0
       30 SETTABLEKS                       R2 R1 K4 ["Selection"]
       32 GETUPVAL                         R2 1
       33 GETUPVAL                         R4 2
       34 CALL                             R4 0 1
       35 NAMECALL                         R2 R2 K12 ["updatePaths"]
       37 CALL                             R2 2 1
       38 SETTABLEKS                       R2 R1 K5 ["Items"]
       40 SETTABLEKS                       R1 R0 K13 ["state"]
       42 DUPCLOSURE                       R1 K14 [PROTO_6]
       43 SETTABLEKS                       R1 R0 K15 ["GetCellAutocomplete"]
       45 NEWCLOSURE                       R1 P1
       46 CAPTURE                          VAL R0
       47 SETTABLEKS                       R1 R0 K16 ["onSizesChange"]
       49 NEWCLOSURE                       R1 P2
       50 CAPTURE                          UPVAL U3
       51 CAPTURE                          UPVAL U4
       52 CAPTURE                          VAL R0
       53 CAPTURE                          UPVAL U1
       54 CAPTURE                          UPVAL U5
       55 SETTABLEKS                       R1 R0 K17 ["onAction"]
       57 NEWCLOSURE                       R1 P3
       58 CAPTURE                          UPVAL U1
       59 CAPTURE                          VAL R0
       60 CAPTURE                          UPVAL U3
       61 CAPTURE                          UPVAL U4
       62 CAPTURE                          UPVAL U6
       63 CAPTURE                          UPVAL U7
       64 CAPTURE                          UPVAL U8
       65 CAPTURE                          UPVAL U9
       66 CAPTURE                          UPVAL U10
       67 SETTABLEKS                       R1 R0 K18 ["onEdited"]
       69 NEWCLOSURE                       R1 P4
       70 CAPTURE                          VAL R0
       71 CAPTURE                          UPVAL U1
       72 SETTABLEKS                       R1 R0 K19 ["onPressed"]
       74 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"Width"}]
        3 GETUPVAL                         R6 1
        4 GETTABLEKS                       R6 R6 K2 ["Sizes"]
        6 GETTABLE                         R5 R6 R1
        7 SETTABLEKS                       R5 R4 K0 ["Width"]
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

PROTO_20:
        0 DUPTABLE                         R1 K1 [{"Expansion"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R3 R0 K0 ["Expansion"]
        4 GETUPVAL                         R4 1
        5 CALL                             R2 2 1
        6 SETTABLEKS                       R2 R1 K0 ["Expansion"]
        8 RETURN                           R1 1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 NAMECALL                         R1 R1 K0 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_22:
        0 DUPTABLE                         R1 K1 [{"Selection"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R3 R0 K0 ["Selection"]
        4 GETUPVAL                         R4 1
        5 CALL                             R2 2 1
        6 SETTABLEKS                       R2 R1 K0 ["Selection"]
        8 RETURN                           R1 1

PROTO_23:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 NAMECALL                         R1 R1 K0 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["Children"]
        2 JUMPIF                           R1 ; [+2]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1

PROTO_25:
        0 GETIMPORT                        R1 K2 [table.concat]
        2 GETTABLEKS                       R2 R0 K3 ["Path"]
        4 LOADK                            R3 K4 [","]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R3 R1 K1 ["Columns"]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R1
        8 CALL                             R2 2 1
        9 GETTABLEKS                       R3 R0 K2 ["onSizesChange"]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K3 ["createElement"]
       14 GETUPVAL                         R5 3
       15 DUPTABLE                         R6 K21 [{"Size", "FullSpanEmphasis", "Columns", "ClampSize", "GetCellAutocomplete", "OnExpansionChange", "OnSelectionChange", "OnColumnSizesChange", "OnCellAction", "OnCellEdited", "OnCellPressed", "Expansion", "RootItems", "RowHeight", "GetChildren", "GetItemId", "Scroll", "UseScale"}]
       16 GETIMPORT                        R7 K24 [UDim2.new]
       18 LOADN                            R8 1
       19 LOADN                            R9 0
       20 LOADN                            R10 0
       21 LOADN                            R11 144
       22 CALL                             R7 4 1
       23 SETTABLEKS                       R7 R6 K4 ["Size"]
       25 LOADB                            R7 1
       26 SETTABLEKS                       R7 R6 K5 ["FullSpanEmphasis"]
       28 SETTABLEKS                       R2 R6 K1 ["Columns"]
       30 LOADB                            R7 1
       31 SETTABLEKS                       R7 R6 K6 ["ClampSize"]
       33 GETTABLEKS                       R7 R0 K7 ["GetCellAutocomplete"]
       35 SETTABLEKS                       R7 R6 K7 ["GetCellAutocomplete"]
       37 NEWCLOSURE                       R7 P1
       38 CAPTURE                          VAL R0
       39 CAPTURE                          UPVAL U1
       40 SETTABLEKS                       R7 R6 K8 ["OnExpansionChange"]
       42 NEWCLOSURE                       R7 P2
       43 CAPTURE                          VAL R0
       44 CAPTURE                          UPVAL U1
       45 SETTABLEKS                       R7 R6 K9 ["OnSelectionChange"]
       47 SETTABLEKS                       R3 R6 K10 ["OnColumnSizesChange"]
       49 GETTABLEKS                       R7 R0 K25 ["onAction"]
       51 SETTABLEKS                       R7 R6 K11 ["OnCellAction"]
       53 GETTABLEKS                       R7 R0 K26 ["onEdited"]
       55 SETTABLEKS                       R7 R6 K12 ["OnCellEdited"]
       57 GETTABLEKS                       R7 R0 K27 ["onPressed"]
       59 SETTABLEKS                       R7 R6 K13 ["OnCellPressed"]
       61 GETTABLEKS                       R7 R1 K14 ["Expansion"]
       63 SETTABLEKS                       R7 R6 K14 ["Expansion"]
       65 GETTABLEKS                       R7 R1 K28 ["Items"]
       67 SETTABLEKS                       R7 R6 K15 ["RootItems"]
       69 LOADN                            R7 32
       70 SETTABLEKS                       R7 R6 K16 ["RowHeight"]
       72 DUPCLOSURE                       R7 K29 [PROTO_24]
       73 SETTABLEKS                       R7 R6 K17 ["GetChildren"]
       75 DUPCLOSURE                       R7 K30 [PROTO_25]
       76 SETTABLEKS                       R7 R6 K18 ["GetItemId"]
       78 LOADB                            R7 1
       79 SETTABLEKS                       R7 R6 K19 ["Scroll"]
       81 LOADB                            R7 1
       82 SETTABLEKS                       R7 R6 K20 ["UseScale"]
       84 CALL                             R4 2 -1
       85 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K4 ["Parent"]
       20 GETTABLEKS                       R3 R3 K8 ["Dash"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["join"]
       25 GETTABLEKS                       R4 R2 K10 ["map"]
       27 GETTABLEKS                       R5 R2 K11 ["slice"]
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R0 K2 ["UI"]
       33 GETTABLEKS                       R7 R7 K12 ["Components"]
       35 GETTABLEKS                       R7 R7 K13 ["Breadcrumb"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R0 K2 ["UI"]
       42 GETTABLEKS                       R8 R8 K12 ["Components"]
       44 GETTABLEKS                       R8 R8 K14 ["TreeTable"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K15 ["Util"]
       51 GETTABLEKS                       R9 R9 K16 ["EditTree"]
       53 CALL                             R8 1 1
       54 NEWTABLE                         R9 0 2
       56 DUPTABLE                         R10 K19 [{"Name", "Key"}]
       57 LOADK                            R11 K17 ["Name"]
       58 SETTABLEKS                       R11 R10 K17 ["Name"]
       60 LOADK                            R11 K17 ["Name"]
       61 SETTABLEKS                       R11 R10 K18 ["Key"]
       63 DUPTABLE                         R11 K19 [{"Name", "Key"}]
       64 LOADK                            R12 K20 ["Value"]
       65 SETTABLEKS                       R12 R11 K17 ["Name"]
       67 LOADK                            R12 K20 ["Value"]
       68 SETTABLEKS                       R12 R11 K18 ["Key"]
       70 SETLIST                          R9 R10 2 [1]
       72 JUMPIFNOT                        R8 ; [+2]
       73 MOVE                             R10 R8
       74 JUMP                             ; [+2]
       75 GETTABLEKS                       R10 R7 K16 ["EditTree"]
       77 GETTABLEKS                       R10 R10 K21 ["new"]
       79 DUPTABLE                         R11 K23 [{"getChildren"}]
       80 DUPCLOSURE                       R12 K24 [PROTO_0]
       81 SETTABLEKS                       R12 R11 K22 ["getChildren"]
       83 CALL                             R10 1 1
       84 DUPTABLE                         R11 K26 [{"Type"}]
       85 LOADK                            R12 K27 ["Color"]
       86 SETTABLEKS                       R12 R11 K25 ["Type"]
       88 DUPTABLE                         R12 K26 [{"Type"}]
       89 LOADK                            R13 K28 ["Empty"]
       90 SETTABLEKS                       R13 R12 K25 ["Type"]
       92 DUPTABLE                         R13 K30 [{"Type", "Items"}]
       93 LOADK                            R14 K31 ["Select"]
       94 SETTABLEKS                       R14 R13 K25 ["Type"]
       96 NEWTABLE                         R14 0 3
       98 DUPTABLE                         R15 K34 [{"Id", "Label"}]
       99 LOADK                            R16 K35 ["Gotham"]
      100 SETTABLEKS                       R16 R15 K32 ["Id"]
      102 LOADK                            R16 K35 ["Gotham"]
      103 SETTABLEKS                       R16 R15 K33 ["Label"]
      105 DUPTABLE                         R16 K34 [{"Id", "Label"}]
      106 LOADK                            R17 K36 ["SourceSans"]
      107 SETTABLEKS                       R17 R16 K32 ["Id"]
      109 LOADK                            R17 K36 ["SourceSans"]
      110 SETTABLEKS                       R17 R16 K33 ["Label"]
      112 DUPTABLE                         R17 K34 [{"Id", "Label"}]
      113 LOADK                            R18 K37 ["SourceSansBold"]
      114 SETTABLEKS                       R18 R17 K32 ["Id"]
      116 LOADK                            R18 K37 ["SourceSansBold"]
      117 SETTABLEKS                       R18 R17 K33 ["Label"]
      119 SETLIST                          R14 R15 3 [1]
      121 SETTABLEKS                       R14 R13 K29 ["Items"]
      123 DUPTABLE                         R14 K40 [{"Type", "Components", "GetComponents", "GetValue"}]
      124 LOADK                            R15 K41 ["Vector"]
      125 SETTABLEKS                       R15 R14 K25 ["Type"]
      127 NEWTABLE                         R15 0 2
      129 LOADK                            R16 K42 ["X"]
      130 LOADK                            R17 K43 ["Y"]
      131 SETLIST                          R15 R16 2 [1]
      133 SETTABLEKS                       R15 R14 K12 ["Components"]
      135 DUPCLOSURE                       R15 K44 [PROTO_1]
      136 SETTABLEKS                       R15 R14 K38 ["GetComponents"]
      138 DUPCLOSURE                       R15 K45 [PROTO_2]
      139 SETTABLEKS                       R15 R14 K39 ["GetValue"]
      141 DUPTABLE                         R15 K48 [{"Type", "ErrorStyle", "PlaceholderText"}]
      142 LOADK                            R16 K49 ["Text"]
      143 SETTABLEKS                       R16 R15 K25 ["Type"]
      145 LOADK                            R16 K50 ["PropertyCellError"]
      146 SETTABLEKS                       R16 R15 K46 ["ErrorStyle"]
      148 LOADK                            R16 K51 ["Add Property..."]
      149 SETTABLEKS                       R16 R15 K47 ["PlaceholderText"]
      151 NEWTABLE                         R16 0 1
      153 DUPTABLE                         R17 K54 [{"Id", "Icon", "Tooltip"}]
      154 LOADK                            R18 K55 ["Variable"]
      155 SETTABLEKS                       R18 R17 K32 ["Id"]
      157 DUPTABLE                         R18 K58 [{"Image", "Size"}]
      158 LOADK                            R19 K59 ["rbxasset://textures/StyleEditor/style-variable.png"]
      159 SETTABLEKS                       R19 R18 K56 ["Image"]
      161 GETIMPORT                        R19 K62 [UDim2.fromOffset]
      163 LOADN                            R20 16
      164 LOADN                            R21 16
      165 CALL                             R19 2 1
      166 SETTABLEKS                       R19 R18 K57 ["Size"]
      168 SETTABLEKS                       R18 R17 K52 ["Icon"]
      170 LOADK                            R18 K63 ["Assign this property from a variable"]
      171 SETTABLEKS                       R18 R17 K53 ["Tooltip"]
      173 SETLIST                          R16 R17 1 [1]
      175 DUPTABLE                         R17 K66 [{"Type", "Delimiters", "ErrorStyle", "GetImageProps"}]
      176 LOADK                            R18 K13 ["Breadcrumb"]
      177 SETTABLEKS                       R18 R17 K25 ["Type"]
      179 NEWTABLE                         R18 0 3
      181 LOADK                            R19 K67 ["%.%."]
      182 LOADK                            R20 K68 ["%."]
      183 LOADK                            R21 K69 ["::"]
      184 SETLIST                          R18 R19 3 [1]
      186 SETTABLEKS                       R18 R17 K64 ["Delimiters"]
      188 LOADK                            R18 K50 ["PropertyCellError"]
      189 SETTABLEKS                       R18 R17 K46 ["ErrorStyle"]
      191 GETTABLEKS                       R18 R6 K70 ["GetSelectorIcon"]
      193 SETTABLEKS                       R18 R17 K65 ["GetImageProps"]
      195 NEWTABLE                         R18 0 3
      197 DUPTABLE                         R19 K54 [{"Id", "Icon", "Tooltip"}]
      198 LOADK                            R20 K71 ["Edit"]
      199 SETTABLEKS                       R20 R19 K32 ["Id"]
      201 DUPTABLE                         R20 K58 [{"Image", "Size"}]
      202 LOADK                            R21 K72 ["rbxasset://textures/StyleEditor/style-edit.png"]
      203 SETTABLEKS                       R21 R20 K56 ["Image"]
      205 GETIMPORT                        R21 K62 [UDim2.fromOffset]
      207 LOADN                            R22 16
      208 LOADN                            R23 16
      209 CALL                             R21 2 1
      210 SETTABLEKS                       R21 R20 K57 ["Size"]
      212 SETTABLEKS                       R20 R19 K52 ["Icon"]
      214 LOADK                            R20 K73 ["Edit the style selector"]
      215 SETTABLEKS                       R20 R19 K53 ["Tooltip"]
      217 DUPTABLE                         R20 K54 [{"Id", "Icon", "Tooltip"}]
      218 LOADK                            R21 K74 ["Add"]
      219 SETTABLEKS                       R21 R20 K32 ["Id"]
      221 DUPTABLE                         R21 K58 [{"Image", "Size"}]
      222 LOADK                            R22 K75 ["rbxasset://textures/StyleEditor/style-add.png"]
      223 SETTABLEKS                       R22 R21 K56 ["Image"]
      225 GETIMPORT                        R22 K62 [UDim2.fromOffset]
      227 LOADN                            R23 16
      228 LOADN                            R24 16
      229 CALL                             R22 2 1
      230 SETTABLEKS                       R22 R21 K57 ["Size"]
      232 SETTABLEKS                       R21 R20 K52 ["Icon"]
      234 LOADK                            R21 K76 ["Add a child style"]
      235 SETTABLEKS                       R21 R20 K53 ["Tooltip"]
      237 DUPTABLE                         R21 K54 [{"Id", "Icon", "Tooltip"}]
      238 LOADK                            R22 K77 ["Delete"]
      239 SETTABLEKS                       R22 R21 K32 ["Id"]
      241 DUPTABLE                         R22 K58 [{"Image", "Size"}]
      242 LOADK                            R23 K78 ["rbxasset://textures/StyleEditor/style-bin.png"]
      243 SETTABLEKS                       R23 R22 K56 ["Image"]
      245 GETIMPORT                        R23 K62 [UDim2.fromOffset]
      247 LOADN                            R24 16
      248 LOADN                            R25 16
      249 CALL                             R23 2 1
      250 SETTABLEKS                       R23 R22 K57 ["Size"]
      252 SETTABLEKS                       R22 R21 K52 ["Icon"]
      254 LOADK                            R22 K79 ["Delete the style"]
      255 SETTABLEKS                       R22 R21 K53 ["Tooltip"]
      257 SETLIST                          R18 R19 3 [1]
      259 DUPTABLE                         R19 K26 [{"Type"}]
      260 LOADK                            R20 K49 ["Text"]
      261 SETTABLEKS                       R20 R19 K25 ["Type"]
      263 DUPTABLE                         R20 K85 [{"Type", "Min", "Max", "ShowInput", "InputPrecision", "SnapIncrement"}]
      264 LOADK                            R21 K86 ["Slider"]
      265 SETTABLEKS                       R21 R20 K25 ["Type"]
      267 LOADN                            R21 0
      268 SETTABLEKS                       R21 R20 K80 ["Min"]
      270 LOADN                            R21 1
      271 SETTABLEKS                       R21 R20 K81 ["Max"]
      273 LOADB                            R21 1
      274 SETTABLEKS                       R21 R20 K82 ["ShowInput"]
      276 LOADN                            R21 3
      277 SETTABLEKS                       R21 R20 K83 ["InputPrecision"]
      279 LOADK                            R21 K87 [0.05]
      280 SETTABLEKS                       R21 R20 K84 ["SnapIncrement"]
      282 DUPTABLE                         R21 K30 [{"Type", "Items"}]
      283 LOADK                            R22 K31 ["Select"]
      284 SETTABLEKS                       R22 R21 K25 ["Type"]
      286 NEWTABLE                         R22 0 2
      288 DUPTABLE                         R23 K34 [{"Id", "Label"}]
      289 LOADK                            R24 K88 ["Row"]
      290 SETTABLEKS                       R24 R23 K32 ["Id"]
      292 LOADK                            R24 K88 ["Row"]
      293 SETTABLEKS                       R24 R23 K33 ["Label"]
      295 DUPTABLE                         R24 K34 [{"Id", "Label"}]
      296 LOADK                            R25 K89 ["Column"]
      297 SETTABLEKS                       R25 R24 K32 ["Id"]
      299 LOADK                            R25 K89 ["Column"]
      300 SETTABLEKS                       R25 R24 K33 ["Label"]
      302 SETLIST                          R22 R23 2 [1]
      304 SETTABLEKS                       R22 R21 K29 ["Items"]
      306 DUPCLOSURE                       R22 K90 [PROTO_3]
      307 CAPTURE                          VAL R15
      308 CAPTURE                          VAL R12
      309 DUPCLOSURE                       R23 K91 [PROTO_4]
      310 CAPTURE                          VAL R18
      311 CAPTURE                          VAL R3
      312 CAPTURE                          VAL R17
      313 CAPTURE                          VAL R22
      314 DUPCLOSURE                       R24 K92 [PROTO_5]
      315 CAPTURE                          VAL R18
      316 CAPTURE                          VAL R17
      317 CAPTURE                          VAL R16
      318 CAPTURE                          VAL R15
      319 CAPTURE                          VAL R11
      320 CAPTURE                          VAL R13
      321 CAPTURE                          VAL R14
      322 CAPTURE                          VAL R20
      323 CAPTURE                          VAL R22
      324 CAPTURE                          VAL R19
      325 CAPTURE                          VAL R21
      326 GETTABLEKS                       R25 R1 K93 ["PureComponent"]
      328 LOADK                            R27 K94 ["Story"]
      329 NAMECALL                         R25 R25 K95 ["extend"]
      331 CALL                             R25 2 1
      332 DUPCLOSURE                       R26 K96 [PROTO_18]
      333 CAPTURE                          VAL R9
      334 CAPTURE                          VAL R10
      335 CAPTURE                          VAL R24
      336 CAPTURE                          VAL R3
      337 CAPTURE                          VAL R17
      338 CAPTURE                          VAL R23
      339 CAPTURE                          VAL R16
      340 CAPTURE                          VAL R15
      341 CAPTURE                          VAL R20
      342 CAPTURE                          VAL R5
      343 CAPTURE                          VAL R22
      344 SETTABLEKS                       R26 R25 K97 ["init"]
      346 DUPCLOSURE                       R26 K98 [PROTO_26]
      347 CAPTURE                          VAL R4
      348 CAPTURE                          VAL R3
      349 CAPTURE                          VAL R1
      350 CAPTURE                          VAL R7
      351 SETTABLEKS                       R26 R25 K99 ["render"]
      353 RETURN                           R25 1
