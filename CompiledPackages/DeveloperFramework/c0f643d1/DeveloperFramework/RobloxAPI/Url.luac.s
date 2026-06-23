PROTO_0:
        0 LENGTH                           R3 R0
        1 NAMECALL                         R1 R0 K0 ["sub"]
        3 CALL                             R1 2 1
        4 JUMPIFEQKS                       R1 K1 ["/"] ; [+4]
        6 MOVE                             R1 R0
        7 LOADK                            R2 K1 ["/"]
        8 CONCAT                           R0 R1 R2
        9 LOADK                            R3 K2 ["://"]
       10 NAMECALL                         R1 R0 K3 ["find"]
       12 CALL                             R1 2 2
       13 LOADK                            R5 K4 ["%."]
       14 ADDK                             R6 R2 K5 [1]
       15 NAMECALL                         R3 R0 K3 ["find"]
       17 CALL                             R3 3 2
       18 ADDK                             R7 R2 K5 [1]
       19 SUBK                             R8 R3 K5 [1]
       20 NAMECALL                         R5 R0 K0 ["sub"]
       22 CALL                             R5 3 1
       23 ADDK                             R8 R4 K5 [1]
       24 NAMECALL                         R6 R0 K0 ["sub"]
       26 CALL                             R6 2 1
       27 MOVE                             R7 R0
       28 MOVE                             R8 R5
       29 MOVE                             R9 R6
       30 RETURN                           R7 3

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+16]
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [type]
        5 CALL                             R3 1 1
        6 JUMPIFEQKS                       R3 K2 ["string"] ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       12 LOADK                            R3 K3 ["Expected baseUrl to be a string"]
       13 GETIMPORT                        R1 K5 [assert]
       15 CALL                             R1 2 0
       16 JUMP                             ; [+3]
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R0 R1 K6 ["BaseUrl"]
       20 GETUPVAL                         R1 1
       21 MOVE                             R2 R0
       22 CALL                             R1 1 3
       23 DUPTABLE                         R4 K31 [{"BASE_URL", "API_URL", "APIS_URL", "ASSET_GAME_URL", "AUTH_URL", "CATALOG_URL", "CHAT_URL", "CREATOR_HUB_URL", "DATA_URL", "DEVELOP_URL", "GAMES_INTERNATIONALIZATION_URL", "GAME_JOIN_URL", "GAMES_URL", "GROUPS_URL", "INVENTORY_URL", "ITEM_CONFIGURATION_URL", "LOCALE_URL", "LOCALIZATION_TABLES_URL", "NOTIFICATIONS_URL", "PUBLISH_URL", "REALTIME_URL", "THUMBNAILS_URL", "TRANSLATION_ROLES_URL", "WEB_URL"}]
       24 SETTABLEKS                       R1 R4 K7 ["BASE_URL"]
       26 GETIMPORT                        R5 K33 [string.format]
       28 LOADK                            R6 K34 ["https://api.%s"]
       29 MOVE                             R7 R3
       30 CALL                             R5 2 1
       31 SETTABLEKS                       R5 R4 K8 ["API_URL"]
       33 GETIMPORT                        R5 K33 [string.format]
       35 LOADK                            R6 K35 ["https://apis.%s"]
       36 MOVE                             R7 R3
       37 CALL                             R5 2 1
       38 SETTABLEKS                       R5 R4 K9 ["APIS_URL"]
       40 GETIMPORT                        R5 K33 [string.format]
       42 LOADK                            R6 K36 ["https://assetgame.%s"]
       43 MOVE                             R7 R3
       44 CALL                             R5 2 1
       45 SETTABLEKS                       R5 R4 K10 ["ASSET_GAME_URL"]
       47 GETIMPORT                        R5 K33 [string.format]
       49 LOADK                            R6 K37 ["https://auth.%s"]
       50 MOVE                             R7 R3
       51 CALL                             R5 2 1
       52 SETTABLEKS                       R5 R4 K11 ["AUTH_URL"]
       54 GETIMPORT                        R5 K33 [string.format]
       56 LOADK                            R6 K38 ["https://catalog.%s"]
       57 MOVE                             R7 R3
       58 CALL                             R5 2 1
       59 SETTABLEKS                       R5 R4 K12 ["CATALOG_URL"]
       61 GETIMPORT                        R5 K33 [string.format]
       63 LOADK                            R6 K39 ["https://chat.%s"]
       64 MOVE                             R7 R3
       65 CALL                             R5 2 1
       66 SETTABLEKS                       R5 R4 K13 ["CHAT_URL"]
       68 GETIMPORT                        R5 K33 [string.format]
       70 LOADK                            R6 K40 ["https://create.%s"]
       71 MOVE                             R7 R3
       72 CALL                             R5 2 1
       73 SETTABLEKS                       R5 R4 K14 ["CREATOR_HUB_URL"]
       75 GETIMPORT                        R5 K33 [string.format]
       77 LOADK                            R6 K41 ["https://data.%s"]
       78 MOVE                             R7 R3
       79 CALL                             R5 2 1
       80 SETTABLEKS                       R5 R4 K15 ["DATA_URL"]
       82 GETIMPORT                        R5 K33 [string.format]
       84 LOADK                            R6 K42 ["https://develop.%s"]
       85 MOVE                             R7 R3
       86 CALL                             R5 2 1
       87 SETTABLEKS                       R5 R4 K16 ["DEVELOP_URL"]
       89 GETIMPORT                        R5 K33 [string.format]
       91 LOADK                            R6 K43 ["https://gameinternationalization.%s"]
       92 MOVE                             R7 R3
       93 CALL                             R5 2 1
       94 SETTABLEKS                       R5 R4 K17 ["GAMES_INTERNATIONALIZATION_URL"]
       96 GETIMPORT                        R5 K33 [string.format]
       98 LOADK                            R6 K44 ["https://gamejoin.%s"]
       99 MOVE                             R7 R3
      100 CALL                             R5 2 1
      101 SETTABLEKS                       R5 R4 K18 ["GAME_JOIN_URL"]
      103 GETIMPORT                        R5 K33 [string.format]
      105 LOADK                            R6 K45 ["https://games.%s"]
      106 MOVE                             R7 R3
      107 CALL                             R5 2 1
      108 SETTABLEKS                       R5 R4 K19 ["GAMES_URL"]
      110 GETIMPORT                        R5 K33 [string.format]
      112 LOADK                            R6 K46 ["https://groups.%s"]
      113 MOVE                             R7 R3
      114 CALL                             R5 2 1
      115 SETTABLEKS                       R5 R4 K20 ["GROUPS_URL"]
      117 GETIMPORT                        R5 K33 [string.format]
      119 LOADK                            R6 K47 ["https://inventory.%s"]
      120 MOVE                             R7 R3
      121 CALL                             R5 2 1
      122 SETTABLEKS                       R5 R4 K21 ["INVENTORY_URL"]
      124 GETIMPORT                        R5 K33 [string.format]
      126 LOADK                            R6 K48 ["https://itemconfiguration.%s"]
      127 MOVE                             R7 R3
      128 CALL                             R5 2 1
      129 SETTABLEKS                       R5 R4 K22 ["ITEM_CONFIGURATION_URL"]
      131 GETIMPORT                        R5 K33 [string.format]
      133 LOADK                            R6 K49 ["https://locale.%s"]
      134 MOVE                             R7 R3
      135 CALL                             R5 2 1
      136 SETTABLEKS                       R5 R4 K23 ["LOCALE_URL"]
      138 GETIMPORT                        R5 K33 [string.format]
      140 LOADK                            R6 K50 ["https://localizationtables.%s"]
      141 MOVE                             R7 R3
      142 CALL                             R5 2 1
      143 SETTABLEKS                       R5 R4 K24 ["LOCALIZATION_TABLES_URL"]
      145 GETIMPORT                        R5 K33 [string.format]
      147 LOADK                            R6 K51 ["https://notifications.%s"]
      148 MOVE                             R7 R3
      149 CALL                             R5 2 1
      150 SETTABLEKS                       R5 R4 K25 ["NOTIFICATIONS_URL"]
      152 GETIMPORT                        R5 K33 [string.format]
      154 LOADK                            R6 K52 ["https://publish.%s"]
      155 MOVE                             R7 R3
      156 CALL                             R5 2 1
      157 SETTABLEKS                       R5 R4 K26 ["PUBLISH_URL"]
      159 GETIMPORT                        R5 K33 [string.format]
      161 LOADK                            R6 K53 ["https://realtime.%s"]
      162 MOVE                             R7 R3
      163 CALL                             R5 2 1
      164 SETTABLEKS                       R5 R4 K27 ["REALTIME_URL"]
      166 GETIMPORT                        R5 K33 [string.format]
      168 LOADK                            R6 K54 ["https://thumbnails.%s"]
      169 MOVE                             R7 R3
      170 CALL                             R5 2 1
      171 SETTABLEKS                       R5 R4 K28 ["THUMBNAILS_URL"]
      173 GETIMPORT                        R5 K33 [string.format]
      175 LOADK                            R6 K55 ["https://translationroles.%s"]
      176 MOVE                             R7 R3
      177 CALL                             R5 2 1
      178 SETTABLEKS                       R5 R4 K29 ["TRANSLATION_ROLES_URL"]
      180 GETIMPORT                        R5 K33 [string.format]
      182 LOADK                            R6 K56 ["https://web.%s"]
      183 MOVE                             R7 R3
      184 CALL                             R5 2 1
      185 SETTABLEKS                       R5 R4 K30 ["WEB_URL"]
      187 GETUPVAL                         R7 2
      188 FASTCALL2                        SETMETATABLE R4 R7 ; [+4]
      190 MOVE                             R6 R4
      191 GETIMPORT                        R5 K58 [setmetatable]
      193 CALL                             R5 2 0
      194 RETURN                           R4 1

PROTO_2:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R6 R0
        2 GETIMPORT                        R5 K1 [type]
        4 CALL                             R5 1 1
        5 JUMPIFEQKS                       R5 K2 ["string"] ; [+2]
        7 LOADB                            R4 0 +1
        8 LOADB                            R4 1
        9 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       11 LOADK                            R5 K3 ["Expected 'base' to be a string."]
       12 GETIMPORT                        R3 K5 [assert]
       14 CALL                             R3 2 0
       15 FASTCALL1                        TYPE R1 ; [+3]
       16 MOVE                             R6 R1
       17 GETIMPORT                        R5 K1 [type]
       19 CALL                             R5 1 1
       20 JUMPIFEQKS                       R5 K2 ["string"] ; [+2]
       22 LOADB                            R4 0 +1
       23 LOADB                            R4 1
       24 FASTCALL2K                       ASSERT R4 K6 ; [+4]
       26 LOADK                            R5 K6 ["Expected 'path' to be a string."]
       27 GETIMPORT                        R3 K5 [assert]
       29 CALL                             R3 2 0
       30 JUMPIFNOT                        R2 ; [+33]
       31 FASTCALL1                        TYPE R2 ; [+3]
       32 MOVE                             R6 R2
       33 GETIMPORT                        R5 K1 [type]
       35 CALL                             R5 1 1
       36 JUMPIFEQKS                       R5 K7 ["table"] ; [+2]
       38 LOADB                            R4 0 +1
       39 LOADB                            R4 1
       40 FASTCALL2K                       ASSERT R4 K8 ; [+4]
       42 LOADK                            R5 K8 ["Expected 'args' to be a map."]
       43 GETIMPORT                        R3 K5 [assert]
       45 CALL                             R3 2 0
       46 GETIMPORT                        R6 K10 [next]
       48 MOVE                             R7 R2
       49 CALL                             R6 1 1
       50 FASTCALL1                        TYPE R6 ; [+2]
       51 GETIMPORT                        R5 K1 [type]
       53 CALL                             R5 1 1
       54 JUMPIFEQKS                       R5 K2 ["string"] ; [+2]
       56 LOADB                            R4 0 +1
       57 LOADB                            R4 1
       58 FASTCALL2K                       ASSERT R4 K11 ; [+4]
       60 LOADK                            R5 K11 ["Expected 'args' to be map, not an array."]
       61 GETIMPORT                        R3 K5 [assert]
       63 CALL                             R3 2 0
       64 LENGTH                           R5 R0
       65 NAMECALL                         R3 R0 K12 ["sub"]
       67 CALL                             R3 2 1
       68 JUMPIFEQKS                       R3 K13 ["/"] ; [+4]
       70 MOVE                             R3 R0
       71 LOADK                            R4 K13 ["/"]
       72 CONCAT                           R0 R3 R4
       73 GETUPVAL                         R3 0
       74 GETTABLEKS                       R3 R3 K14 ["makeQueryString"]
       76 MOVE                             R4 R2
       77 CALL                             R3 1 1
       78 GETIMPORT                        R4 K16 [string.format]
       80 LOADK                            R5 K17 ["%s%s%s"]
       81 MOVE                             R6 R0
       82 MOVE                             R7 R1
       83 MOVE                             R8 R3
       84 CALL                             R4 4 -1
       85 RETURN                           R4 -1

PROTO_3:
        0 LOADK                            R2 K0 [""]
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R2 1
        3 NEWTABLE                         R3 0 0
        5 GETIMPORT                        R4 K2 [pairs]
        7 MOVE                             R5 R0
        8 CALL                             R4 1 3
        9 FORGPREP_NEXT                    R4
       10 FASTCALL1                        TYPE R8 ; [+3]
       11 MOVE                             R10 R8
       12 GETIMPORT                        R9 K4 [type]
       14 CALL                             R9 1 1
       15 JUMPIFNOTEQKS                    R9 K5 ["userdata"] ; [+10]
       17 GETIMPORT                        R9 K7 [error]
       19 GETIMPORT                        R10 K10 [string.format]
       21 LOADK                            R11 K11 ["Userdata values are not supported as arguments. Please update argument : %s"]
       22 MOVE                             R12 R7
       23 CALL                             R10 2 -1
       24 CALL                             R9 -1 0
       25 JUMP                             ; [+162]
       26 FASTCALL1                        TYPE R8 ; [+3]
       27 MOVE                             R10 R8
       28 GETIMPORT                        R9 K4 [type]
       30 CALL                             R9 1 1
       31 JUMPIFNOTEQKS                    R9 K12 ["table"] ; [+83]
       33 LENGTH                           R9 R8
       34 JUMPIFNOTEQKN                    R9 K13 [0] ; [+16]
       36 GETIMPORT                        R9 K15 [next]
       38 MOVE                             R10 R8
       39 CALL                             R9 1 1
       40 JUMPIFEQKNIL                     R9 ; [+10]
       42 GETIMPORT                        R9 K7 [error]
       44 GETIMPORT                        R10 K10 [string.format]
       46 LOADK                            R11 K16 ["Nested maps as arguments are not supported. Please update argument : %s"]
       47 MOVE                             R12 R7
       48 CALL                             R10 2 -1
       49 CALL                             R9 -1 0
       50 JUMP                             ; [+137]
       51 LENGTH                           R9 R8
       52 JUMPIFNOTEQKN                    R9 K13 [0] ; [+10]
       54 GETIMPORT                        R9 K7 [error]
       56 GETIMPORT                        R10 K10 [string.format]
       58 LOADK                            R11 K17 ["Empty arrays are not supported. Please update argument : %s"]
       59 MOVE                             R12 R7
       60 CALL                             R10 2 -1
       61 CALL                             R9 -1 0
       62 JUMP                             ; [+125]
       63 NEWTABLE                         R9 0 0
       65 GETIMPORT                        R10 K19 [ipairs]
       67 MOVE                             R11 R8
       68 CALL                             R10 1 3
       69 FORGPREP_INEXT                   R10
       70 GETUPVAL                         R15 0
       71 JUMPIFNOT                        R15 ; [+15]
       72 MOVE                             R16 R9
       73 GETUPVAL                         R17 1
       74 FASTCALL1                        TOSTRING R14 ; [+3]
       75 MOVE                             R20 R14
       76 GETIMPORT                        R19 K21 [tostring]
       78 CALL                             R19 1 1
       79 NAMECALL                         R17 R17 K22 ["UrlEncode"]
       81 CALL                             R17 2 -1
       82 FASTCALL                         TABLE_INSERT ; [+2]
       83 GETIMPORT                        R15 K24 [table.insert]
       85 CALL                             R15 -1 0
       86 JUMP                             ; [+10]
       87 MOVE                             R16 R9
       88 GETUPVAL                         R17 1
       89 MOVE                             R19 R14
       90 NAMECALL                         R17 R17 K22 ["UrlEncode"]
       92 CALL                             R17 2 -1
       93 FASTCALL                         TABLE_INSERT ; [+2]
       94 GETIMPORT                        R15 K24 [table.insert]
       96 CALL                             R15 -1 0
       97 FORGLOOP                         R10 2 [inext] ; [-28]
       99 MOVE                             R11 R3
      100 GETIMPORT                        R12 K10 [string.format]
      102 LOADK                            R13 K25 ["%s=%s"]
      103 MOVE                             R14 R7
      104 GETIMPORT                        R15 K27 [table.concat]
      106 MOVE                             R16 R9
      107 LOADK                            R17 K28 [","]
      108 CALL                             R15 2 -1
      109 CALL                             R12 -1 -1
      110 FASTCALL                         TABLE_INSERT ; [+2]
      111 GETIMPORT                        R10 K24 [table.insert]
      113 CALL                             R10 -1 0
      114 JUMP                             ; [+73]
      115 FASTCALL1                        TYPE R8 ; [+3]
      116 MOVE                             R10 R8
      117 GETIMPORT                        R9 K4 [type]
      119 CALL                             R9 1 1
      120 JUMPIFNOTEQKS                    R9 K29 ["boolean"] ; [+18]
      122 FASTCALL1                        TOSTRING R8 ; [+3]
      123 MOVE                             R10 R8
      124 GETIMPORT                        R9 K21 [tostring]
      126 CALL                             R9 1 1
      127 MOVE                             R11 R3
      128 GETIMPORT                        R12 K10 [string.format]
      130 LOADK                            R13 K25 ["%s=%s"]
      131 MOVE                             R14 R7
      132 MOVE                             R15 R9
      133 CALL                             R12 3 -1
      134 FASTCALL                         TABLE_INSERT ; [+2]
      135 GETIMPORT                        R10 K24 [table.insert]
      137 CALL                             R10 -1 0
      138 JUMP                             ; [+49]
      139 FASTCALL1                        TYPE R8 ; [+3]
      140 MOVE                             R10 R8
      141 GETIMPORT                        R9 K4 [type]
      143 CALL                             R9 1 1
      144 JUMPIFNOTEQKS                    R9 K30 ["number"] ; [+22]
      146 GETUPVAL                         R9 1
      147 FASTCALL1                        TOSTRING R8 ; [+3]
      148 MOVE                             R12 R8
      149 GETIMPORT                        R11 K21 [tostring]
      151 CALL                             R11 1 1
      152 NAMECALL                         R9 R9 K22 ["UrlEncode"]
      154 CALL                             R9 2 1
      155 MOVE                             R11 R3
      156 GETIMPORT                        R12 K10 [string.format]
      158 LOADK                            R13 K25 ["%s=%s"]
      159 MOVE                             R14 R7
      160 MOVE                             R15 R9
      161 CALL                             R12 3 -1
      162 FASTCALL                         TABLE_INSERT ; [+2]
      163 GETIMPORT                        R10 K24 [table.insert]
      165 CALL                             R10 -1 0
      166 JUMP                             ; [+21]
      167 GETUPVAL                         R9 1
      168 MOVE                             R11 R8
      169 NAMECALL                         R9 R9 K22 ["UrlEncode"]
      171 CALL                             R9 2 1
      172 MOVE                             R8 R9
      173 MOVE                             R10 R3
      174 GETIMPORT                        R11 K10 [string.format]
      176 LOADK                            R12 K25 ["%s=%s"]
      177 MOVE                             R13 R7
      178 FASTCALL1                        TOSTRING R8 ; [+3]
      179 MOVE                             R15 R8
      180 GETIMPORT                        R14 K21 [tostring]
      182 CALL                             R14 1 1
      183 CALL                             R11 3 -1
      184 FASTCALL                         TABLE_INSERT ; [+2]
      185 GETIMPORT                        R9 K24 [table.insert]
      187 CALL                             R9 -1 0
      188 FORGLOOP                         R4 2 ; [-179]
      190 LENGTH                           R4 R3
      191 LOADN                            R5 0
      192 JUMPIFNOTLT                      R5 R4 ; [+8]
      194 ORK                              R4 R1 K31 ["?"]
      195 GETIMPORT                        R5 K27 [table.concat]
      197 MOVE                             R6 R3
      198 LOADK                            R7 K32 ["&"]
      199 CALL                             R5 2 1
      200 CONCAT                           R2 R4 R5
      201 RETURN                           R2 1

PROTO_4:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["number"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["Expected 'userId' to be a number."]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K6 ["new"]
       18 CALL                             R2 0 1
       19 GETTABLEKS                       R2 R2 K7 ["BASE_URL"]
       21 JUMPIFNOTEQKN                    R1 K8 [2] ; [+9]
       23 LOADK                            R4 K9 ["groups/"]
       24 FASTCALL1                        TOSTRING R0 ; [+3]
       25 MOVE                             R6 R0
       26 GETIMPORT                        R5 K11 [tostring]
       28 CALL                             R5 1 1
       29 CONCAT                           R3 R4 R5
       30 JUMP                             ; [+9]
       31 LOADK                            R4 K12 ["users/"]
       32 FASTCALL1                        TOSTRING R0 ; [+3]
       33 MOVE                             R8 R0
       34 GETIMPORT                        R7 K11 [tostring]
       36 CALL                             R7 1 1
       37 MOVE                             R5 R7
       38 LOADK                            R6 K13 ["/profile"]
       39 CONCAT                           R3 R4 R6
       40 GETUPVAL                         R4 0
       41 GETTABLEKS                       R4 R4 K14 ["composeUrl"]
       43 MOVE                             R5 R2
       44 MOVE                             R6 R3
       45 CALL                             R4 2 -1
       46 RETURN                           R4 -1

PROTO_5:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["number"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Expected 'universeId' to be a number."]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K6 ["new"]
       18 CALL                             R1 0 1
       19 GETTABLEKS                       R1 R1 K7 ["BASE_URL"]
       21 LOADK                            R3 K8 ["games/"]
       22 FASTCALL1                        TOSTRING R0 ; [+3]
       23 MOVE                             R5 R0
       24 GETIMPORT                        R4 K10 [tostring]
       26 CALL                             R4 1 1
       27 CONCAT                           R2 R3 R4
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R3 R3 K11 ["composeUrl"]
       31 MOVE                             R4 R1
       32 MOVE                             R5 R2
       33 CALL                             R3 2 -1
       34 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ContentProvider"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["HttpService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["DevFrameworkTostringQueryParams"]
       16 LOADB                            R5 0
       17 NAMECALL                         R2 R2 K6 ["DefineFastFlag"]
       19 CALL                             R2 3 1
       20 DUPCLOSURE                       R3 K7 [PROTO_0]
       21 NEWTABLE                         R4 8 0
       23 SETTABLEKS                       R4 R4 K8 ["__index"]
       25 DUPCLOSURE                       R5 K9 [PROTO_1]
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R4
       29 SETTABLEKS                       R5 R4 K10 ["new"]
       31 DUPCLOSURE                       R5 K11 [PROTO_2]
       32 CAPTURE                          VAL R4
       33 SETTABLEKS                       R5 R4 K12 ["composeUrl"]
       35 DUPCLOSURE                       R5 K13 [PROTO_3]
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R1
       38 SETTABLEKS                       R5 R4 K14 ["makeQueryString"]
       40 DUPCLOSURE                       R5 K15 [PROTO_4]
       41 CAPTURE                          VAL R4
       42 SETTABLEKS                       R5 R4 K16 ["composeUrlToUserProfile"]
       44 DUPCLOSURE                       R5 K17 [PROTO_5]
       45 CAPTURE                          VAL R4
       46 SETTABLEKS                       R5 R4 K18 ["composeUrlToUniverse"]
       48 RETURN                           R4 1
