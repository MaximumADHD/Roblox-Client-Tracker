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
        0 JUMPIF                           R0 ; [+3]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R0 R1 K0 ["BaseUrl"]
        4 GETUPVAL                         R1 1
        5 MOVE                             R2 R0
        6 CALL                             R1 1 3
        7 DUPTABLE                         R4 K19 [{"PREFIX", "DOMAIN", "BASE_URL", "APIS_URL", "ASSET_GAME_URL", "AUTH_URL", "CATALOG_URL", "CHAT_URL", "DATA_URL", "DEVELOP_URL", "GAME_URL", "GROUP_URL", "INVENTORY_URL", "ITEM_CONFIGURATION_URL", "NOTIFICATION_URL", "PUBLISH_URL", "REALTIME_URL", "WEB_URL"}]
        8 SETTABLEKS                       R2 R4 K1 ["PREFIX"]
       10 SETTABLEKS                       R3 R4 K2 ["DOMAIN"]
       12 SETTABLEKS                       R1 R4 K3 ["BASE_URL"]
       14 GETIMPORT                        R5 K22 [string.format]
       16 LOADK                            R6 K23 ["https://apis.%s"]
       17 MOVE                             R7 R3
       18 CALL                             R5 2 1
       19 SETTABLEKS                       R5 R4 K4 ["APIS_URL"]
       21 GETIMPORT                        R5 K22 [string.format]
       23 LOADK                            R6 K24 ["https://assetgame.%s"]
       24 MOVE                             R7 R3
       25 CALL                             R5 2 1
       26 SETTABLEKS                       R5 R4 K5 ["ASSET_GAME_URL"]
       28 GETIMPORT                        R5 K22 [string.format]
       30 LOADK                            R6 K25 ["https://auth.%s"]
       31 MOVE                             R7 R3
       32 CALL                             R5 2 1
       33 SETTABLEKS                       R5 R4 K6 ["AUTH_URL"]
       35 GETIMPORT                        R5 K22 [string.format]
       37 LOADK                            R6 K26 ["https://catalog.%s"]
       38 MOVE                             R7 R3
       39 CALL                             R5 2 1
       40 SETTABLEKS                       R5 R4 K7 ["CATALOG_URL"]
       42 GETIMPORT                        R5 K22 [string.format]
       44 LOADK                            R6 K27 ["https://chat.%s"]
       45 MOVE                             R7 R3
       46 CALL                             R5 2 1
       47 SETTABLEKS                       R5 R4 K8 ["CHAT_URL"]
       49 GETIMPORT                        R5 K22 [string.format]
       51 LOADK                            R6 K28 ["https://data.%s"]
       52 MOVE                             R7 R3
       53 CALL                             R5 2 1
       54 SETTABLEKS                       R5 R4 K9 ["DATA_URL"]
       56 GETIMPORT                        R5 K22 [string.format]
       58 LOADK                            R6 K29 ["https://develop.%s"]
       59 MOVE                             R7 R3
       60 CALL                             R5 2 1
       61 SETTABLEKS                       R5 R4 K10 ["DEVELOP_URL"]
       63 GETIMPORT                        R5 K22 [string.format]
       65 LOADK                            R6 K30 ["https://games.%s"]
       66 MOVE                             R7 R3
       67 CALL                             R5 2 1
       68 SETTABLEKS                       R5 R4 K11 ["GAME_URL"]
       70 GETIMPORT                        R5 K22 [string.format]
       72 LOADK                            R6 K31 ["https://groups.%s"]
       73 MOVE                             R7 R3
       74 CALL                             R5 2 1
       75 SETTABLEKS                       R5 R4 K12 ["GROUP_URL"]
       77 GETIMPORT                        R5 K22 [string.format]
       79 LOADK                            R6 K32 ["https://inventory.%s"]
       80 MOVE                             R7 R3
       81 CALL                             R5 2 1
       82 SETTABLEKS                       R5 R4 K13 ["INVENTORY_URL"]
       84 GETIMPORT                        R5 K22 [string.format]
       86 LOADK                            R6 K33 ["https://itemconfiguration.%s"]
       87 MOVE                             R7 R3
       88 CALL                             R5 2 1
       89 SETTABLEKS                       R5 R4 K14 ["ITEM_CONFIGURATION_URL"]
       91 GETIMPORT                        R5 K22 [string.format]
       93 LOADK                            R6 K34 ["https://notifications.%s"]
       94 MOVE                             R7 R3
       95 CALL                             R5 2 1
       96 SETTABLEKS                       R5 R4 K15 ["NOTIFICATION_URL"]
       98 GETIMPORT                        R5 K22 [string.format]
      100 LOADK                            R6 K35 ["https://publish.%s"]
      101 MOVE                             R7 R3
      102 CALL                             R5 2 1
      103 SETTABLEKS                       R5 R4 K16 ["PUBLISH_URL"]
      105 GETIMPORT                        R5 K22 [string.format]
      107 LOADK                            R6 K36 ["https://realtime.%s"]
      108 MOVE                             R7 R3
      109 CALL                             R5 2 1
      110 SETTABLEKS                       R5 R4 K17 ["REALTIME_URL"]
      112 GETIMPORT                        R5 K22 [string.format]
      114 LOADK                            R6 K37 ["https://web.%s"]
      115 MOVE                             R7 R3
      116 CALL                             R5 2 1
      117 SETTABLEKS                       R5 R4 K18 ["WEB_URL"]
      119 GETUPVAL                         R7 2
      120 FASTCALL2                        SETMETATABLE R4 R7 ; [+4]
      122 MOVE                             R6 R4
      123 GETIMPORT                        R5 K39 [setmetatable]
      125 CALL                             R5 2 0
      126 RETURN                           R4 1

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
        8 NEWTABLE                         R2 4 0
       10 SETTABLEKS                       R2 R2 K5 ["__index"]
       12 DUPCLOSURE                       R3 K6 [PROTO_1]
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R1
       15 CAPTURE                          VAL R2
       16 SETTABLEKS                       R3 R2 K7 ["new"]
       18 DUPCLOSURE                       R3 K8 [PROTO_2]
       19 SETTABLEKS                       R3 R2 K9 ["makeQueryString"]
       21 GETTABLEKS                       R3 R2 K7 ["new"]
       23 CALL                             R3 0 1
       24 RETURN                           R3 1
