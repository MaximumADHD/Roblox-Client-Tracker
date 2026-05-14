PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["BaseUrl"]
        3 LENGTH                           R3 R0
        4 NAMECALL                         R1 R0 K1 ["sub"]
        6 CALL                             R1 2 1
        7 JUMPIFEQKS                       R1 K2 ["/"] ; [+4]
        9 MOVE                             R1 R0
       10 LOADK                            R2 K2 ["/"]
       11 CONCAT                           R0 R1 R2
       12 LOADK                            R3 K3 ["://"]
       13 NAMECALL                         R1 R0 K4 ["find"]
       15 CALL                             R1 2 2
       16 LOADK                            R5 K5 ["%."]
       17 ADDK                             R6 R2 K6 [1]
       18 NAMECALL                         R3 R0 K4 ["find"]
       20 CALL                             R3 3 2
       21 ADDK                             R7 R2 K6 [1]
       22 SUBK                             R8 R3 K6 [1]
       23 NAMECALL                         R5 R0 K1 ["sub"]
       25 CALL                             R5 3 1
       26 ADDK                             R8 R4 K6 [1]
       27 NAMECALL                         R6 R0 K1 ["sub"]
       29 CALL                             R6 2 1
       30 MOVE                             R7 R0
       31 MOVE                             R8 R5
       32 MOVE                             R9 R6
       33 RETURN                           R7 3

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["PREFIX"]
        2 JUMPIFNOTEQKS                    R2 K1 ["www"] ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_NEXT                    R2
        7 JUMPIFEQKNIL                     R6 ; [+38]
        9 FASTCALL1                        TYPE R6 ; [+3]
       10 MOVE                             R8 R6
       11 GETIMPORT                        R7 K3 [type]
       13 CALL                             R7 1 1
       14 JUMPIFNOTEQKS                    R7 K4 ["table"] ; [+17]
       16 LOADN                            R9 1
       17 LENGTH                           R7 R6
       18 LOADN                            R8 1
       19 FORNPREP                         R7
       20 MOVE                             R13 R5
       21 LOADK                            R14 K5 ["="]
       22 GETTABLE                         R15 R6 R9
       23 CONCAT                           R12 R13 R15
       24 FASTCALL2                        TABLE_INSERT R1 R12 ; [+4]
       26 MOVE                             R11 R1
       27 GETIMPORT                        R10 K7 [table.insert]
       29 CALL                             R10 2 0
       30 FORNLOOP                         R7
       31 JUMP                             ; [+14]
       32 MOVE                             R10 R5
       33 LOADK                            R11 K5 ["="]
       34 FASTCALL1                        TOSTRING R6 ; [+3]
       35 MOVE                             R13 R6
       36 GETIMPORT                        R12 K9 [tostring]
       38 CALL                             R12 1 1
       39 CONCAT                           R9 R10 R12
       40 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       42 MOVE                             R8 R1
       43 GETIMPORT                        R7 K7 [table.insert]
       45 CALL                             R7 2 0
       46 FORGLOOP                         R2 2 ; [-40]
       48 GETIMPORT                        R2 K11 [table.concat]
       50 MOVE                             R3 R1
       51 LOADK                            R4 K12 ["&"]
       52 CALL                             R2 2 -1
       53 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ContentProvider"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 MOVE                             R2 R1
       10 CALL                             R2 0 3
       11 GETIMPORT                        R5 K7 [string.format]
       13 LOADK                            R6 K8 ["https://api.%s"]
       14 MOVE                             R7 R4
       15 CALL                             R5 2 1
       16 GETIMPORT                        R6 K7 [string.format]
       18 LOADK                            R7 K9 ["https://auth.%s"]
       19 MOVE                             R8 R4
       20 CALL                             R6 2 1
       21 GETIMPORT                        R7 K7 [string.format]
       23 LOADK                            R8 K10 ["https://chat.%sv2"]
       24 MOVE                             R9 R4
       25 CALL                             R7 2 1
       26 GETIMPORT                        R8 K7 [string.format]
       28 LOADK                            R9 K11 ["https://assetgame.%s"]
       29 MOVE                             R10 R4
       30 CALL                             R8 2 1
       31 GETIMPORT                        R9 K7 [string.format]
       33 LOADK                            R10 K12 ["https://games.%s"]
       34 MOVE                             R11 R4
       35 CALL                             R9 2 1
       36 GETIMPORT                        R10 K7 [string.format]
       38 LOADK                            R11 K13 ["https://notifications.%s"]
       39 MOVE                             R12 R4
       40 CALL                             R10 2 1
       41 GETIMPORT                        R11 K7 [string.format]
       43 LOADK                            R12 K14 ["https://realtime.%s"]
       44 MOVE                             R13 R4
       45 CALL                             R11 2 1
       46 GETIMPORT                        R12 K7 [string.format]
       48 LOADK                            R13 K15 ["https://web.%s"]
       49 MOVE                             R14 R4
       50 CALL                             R12 2 1
       51 GETIMPORT                        R13 K7 [string.format]
       53 LOADK                            R14 K16 ["https://catalog.%s"]
       54 MOVE                             R15 R4
       55 CALL                             R13 2 1
       56 GETIMPORT                        R14 K7 [string.format]
       58 LOADK                            R15 K17 ["https://develop.%s"]
       59 MOVE                             R16 R4
       60 CALL                             R14 2 1
       61 GETIMPORT                        R15 K7 [string.format]
       63 LOADK                            R16 K18 ["https://itemconfiguration.%s"]
       64 MOVE                             R17 R4
       65 CALL                             R15 2 1
       66 GETIMPORT                        R16 K7 [string.format]
       68 LOADK                            R17 K19 ["https://publish.%s"]
       69 MOVE                             R18 R4
       70 CALL                             R16 2 1
       71 GETIMPORT                        R17 K7 [string.format]
       73 LOADK                            R18 K20 ["https://data.%s"]
       74 MOVE                             R19 R4
       75 CALL                             R17 2 1
       76 GETIMPORT                        R18 K7 [string.format]
       78 LOADK                            R19 K21 ["https://groups.%s"]
       79 MOVE                             R20 R4
       80 CALL                             R18 2 1
       81 DUPTABLE                         R19 K39 [{"DOMAIN", "PREFIX", "BASE_URL", "API_URL", "AUTH_URL", "GAME_URL", "GAME_ASSET_URL", "CHAT_URL", "NOTIFICATION_URL", "REALTIME_URL", "WEB_URL", "CATALOG_URL", "DEVELOP_URL", "ITEM_CONFIGURATION_URL", "PUBLISH_URL", "DATA_URL", "GROUP_URL"}]
       82 SETTABLEKS                       R4 R19 K22 ["DOMAIN"]
       84 SETTABLEKS                       R3 R19 K23 ["PREFIX"]
       86 SETTABLEKS                       R2 R19 K24 ["BASE_URL"]
       88 SETTABLEKS                       R5 R19 K25 ["API_URL"]
       90 SETTABLEKS                       R6 R19 K26 ["AUTH_URL"]
       92 SETTABLEKS                       R9 R19 K27 ["GAME_URL"]
       94 SETTABLEKS                       R8 R19 K28 ["GAME_ASSET_URL"]
       96 SETTABLEKS                       R7 R19 K29 ["CHAT_URL"]
       98 SETTABLEKS                       R10 R19 K30 ["NOTIFICATION_URL"]
      100 SETTABLEKS                       R11 R19 K31 ["REALTIME_URL"]
      102 SETTABLEKS                       R12 R19 K32 ["WEB_URL"]
      104 SETTABLEKS                       R13 R19 K33 ["CATALOG_URL"]
      106 SETTABLEKS                       R14 R19 K34 ["DEVELOP_URL"]
      108 SETTABLEKS                       R15 R19 K35 ["ITEM_CONFIGURATION_URL"]
      110 SETTABLEKS                       R16 R19 K36 ["PUBLISH_URL"]
      112 SETTABLEKS                       R17 R19 K37 ["DATA_URL"]
      114 SETTABLEKS                       R18 R19 K38 ["GROUP_URL"]
      116 DUPCLOSURE                       R20 K40 [PROTO_1]
      117 SETTABLEKS                       R20 R19 K41 ["isVanitySite"]
      119 DUPCLOSURE                       R20 K42 [PROTO_2]
      120 SETTABLEKS                       R20 R19 K43 ["makeQueryString"]
      122 RETURN                           R19 1
