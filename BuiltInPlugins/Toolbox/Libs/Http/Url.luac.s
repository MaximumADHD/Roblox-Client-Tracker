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
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+6]
        8 LENGTH                           R2 R0
        9 JUMPIFEQKN                       R2 K3 [0] ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 RETURN                           R1 1

PROTO_3:
        0 JUMPIFEQKNIL                     R2 ; [+53]
        2 LENGTH                           R4 R2
        3 LOADN                            R5 0
        4 JUMPIFNOTLT                      R5 R4 ; [+49]
        6 JUMPIFNOT                        R3 ; [+16]
        7 GETUPVAL                         R4 0
        8 MOVE                             R6 R1
        9 NAMECALL                         R4 R4 K0 ["UrlEncode"]
       11 CALL                             R4 2 1
       12 GETUPVAL                         R5 0
       13 GETIMPORT                        R7 K3 [table.concat]
       15 MOVE                             R8 R2
       16 LOADK                            R9 K4 [","]
       17 CALL                             R7 2 -1
       18 NAMECALL                         R5 R5 K0 ["UrlEncode"]
       20 CALL                             R5 -1 1
       21 SETTABLE                         R5 R0 R4
       22 RETURN                           R0 0
       23 GETUPVAL                         R4 0
       24 GETTABLEN                        R6 R2 1
       25 NAMECALL                         R4 R4 K0 ["UrlEncode"]
       27 CALL                             R4 2 1
       28 LOADN                            R7 2
       29 LENGTH                           R5 R2
       30 LOADN                            R6 1
       31 FORNPREP                         R5
       32 MOVE                             R8 R4
       33 LOADK                            R9 K5 ["&"]
       34 GETUPVAL                         R13 0
       35 MOVE                             R15 R1
       36 NAMECALL                         R13 R13 K0 ["UrlEncode"]
       38 CALL                             R13 2 1
       39 MOVE                             R10 R13
       40 LOADK                            R11 K6 ["="]
       41 GETUPVAL                         R12 0
       42 GETTABLE                         R14 R2 R7
       43 NAMECALL                         R12 R12 K0 ["UrlEncode"]
       45 CALL                             R12 2 1
       46 CONCAT                           R4 R8 R12
       47 FORNLOOP                         R5
       48 GETUPVAL                         R5 0
       49 MOVE                             R7 R1
       50 NAMECALL                         R5 R5 K0 ["UrlEncode"]
       52 CALL                             R5 2 1
       53 SETTABLE                         R4 R0 R5
       54 RETURN                           R0 0

PROTO_4:
        0 JUMPIFEQKNIL                     R2 ; [+36]
        2 GETGLOBAL                        R4 K0 ["isMap"]
        4 MOVE                             R5 R2
        5 CALL                             R4 1 1
        6 JUMPIF                           R4 ; [+30]
        7 FASTCALL1                        TYPE R2 ; [+3]
        8 MOVE                             R5 R2
        9 GETIMPORT                        R4 K2 [type]
       11 CALL                             R4 1 1
       12 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+9]
       14 GETGLOBAL                        R4 K4 ["addArrayToParams"]
       16 MOVE                             R5 R0
       17 MOVE                             R6 R1
       18 MOVE                             R7 R2
       19 MOVE                             R8 R3
       20 CALL                             R4 4 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R4 0
       23 MOVE                             R6 R1
       24 NAMECALL                         R4 R4 K5 ["UrlEncode"]
       26 CALL                             R4 2 1
       27 GETUPVAL                         R5 0
       28 FASTCALL1                        TOSTRING R2 ; [+3]
       29 MOVE                             R8 R2
       30 GETIMPORT                        R7 K7 [tostring]
       32 CALL                             R7 1 1
       33 NAMECALL                         R5 R5 K5 ["UrlEncode"]
       35 CALL                             R5 2 1
       36 SETTABLE                         R5 R0 R4
       37 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R3 0 0
        2 GETIMPORT                        R4 K1 [pairs]
        4 MOVE                             R5 R0
        5 CALL                             R4 1 3
        6 FORGPREP_NEXT                    R4
        7 GETGLOBAL                        R9 K2 ["isMap"]
        9 MOVE                             R10 R8
       10 CALL                             R9 1 1
       11 JUMPIF                           R9 ; [+8]
       12 GETGLOBAL                        R10 K3 ["addNonMapValueToParams"]
       14 MOVE                             R11 R3
       15 MOVE                             R12 R7
       16 MOVE                             R13 R8
       17 MOVE                             R14 R2
       18 CALL                             R10 4 0
       19 JUMP                             ; [+27]
       20 JUMPIFNOT                        R9 ; [+26]
       21 JUMPIFNOT                        R1 ; [+25]
       22 GETIMPORT                        R10 K1 [pairs]
       24 MOVE                             R11 R8
       25 CALL                             R10 1 3
       26 FORGPREP_NEXT                    R10
       27 GETGLOBAL                        R17 K2 ["isMap"]
       29 MOVE                             R18 R14
       30 CALL                             R17 1 1
       31 NOT                              R16 R17
       32 FASTCALL2K                       ASSERT R16 K4 ; [+4]
       34 LOADK                            R17 K4 ["Nested maps are not currently supported"]
       35 GETIMPORT                        R15 K6 [assert]
       37 CALL                             R15 2 0
       38 GETGLOBAL                        R15 K3 ["addNonMapValueToParams"]
       40 MOVE                             R16 R3
       41 MOVE                             R17 R13
       42 MOVE                             R18 R14
       43 MOVE                             R19 R2
       44 CALL                             R15 4 0
       45 FORGLOOP                         R10 2 ; [-19]
       47 FORGLOOP                         R4 2 ; [-41]
       49 NEWTABLE                         R4 0 0
       51 GETIMPORT                        R5 K1 [pairs]
       53 MOVE                             R6 R3
       54 CALL                             R5 1 3
       55 FORGPREP_NEXT                    R5
       56 MOVE                             R13 R8
       57 LOADK                            R14 K7 ["="]
       58 MOVE                             R15 R9
       59 CONCAT                           R12 R13 R15
       60 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       62 MOVE                             R11 R4
       63 GETIMPORT                        R10 K10 [table.insert]
       65 CALL                             R10 2 0
       66 FORGLOOP                         R5 2 ; [-11]
       68 GETIMPORT                        R5 K12 [table.concat]
       70 MOVE                             R6 R4
       71 LOADK                            R7 K13 ["&"]
       72 CALL                             R5 2 -1
       73 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["ContentProvider"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 DUPCLOSURE                       R2 K5 [PROTO_0]
       14 CAPTURE                          VAL R1
       15 MOVE                             R3 R2
       16 CALL                             R3 0 3
       17 GETIMPORT                        R6 K8 [string.format]
       19 LOADK                            R7 K9 ["https://apis.%s"]
       20 MOVE                             R8 R5
       21 CALL                             R6 2 1
       22 GETIMPORT                        R7 K8 [string.format]
       24 LOADK                            R8 K10 ["https://auth.%s"]
       25 MOVE                             R9 R5
       26 CALL                             R7 2 1
       27 GETIMPORT                        R8 K8 [string.format]
       29 LOADK                            R9 K11 ["https://chat.%sv2"]
       30 MOVE                             R10 R5
       31 CALL                             R8 2 1
       32 GETIMPORT                        R9 K8 [string.format]
       34 LOADK                            R10 K12 ["https://create.%s"]
       35 MOVE                             R11 R5
       36 CALL                             R9 2 1
       37 GETIMPORT                        R10 K8 [string.format]
       39 LOADK                            R11 K13 ["https://assetgame.%s"]
       40 MOVE                             R12 R5
       41 CALL                             R10 2 1
       42 GETIMPORT                        R11 K8 [string.format]
       44 LOADK                            R12 K14 ["https://games.%s"]
       45 MOVE                             R13 R5
       46 CALL                             R11 2 1
       47 GETIMPORT                        R12 K8 [string.format]
       49 LOADK                            R13 K15 ["https://notifications.%s"]
       50 MOVE                             R14 R5
       51 CALL                             R12 2 1
       52 GETIMPORT                        R13 K8 [string.format]
       54 LOADK                            R14 K16 ["https://realtime.%s"]
       55 MOVE                             R15 R5
       56 CALL                             R13 2 1
       57 GETIMPORT                        R14 K8 [string.format]
       59 LOADK                            R15 K17 ["https://web.%s"]
       60 MOVE                             R16 R5
       61 CALL                             R14 2 1
       62 GETIMPORT                        R15 K8 [string.format]
       64 LOADK                            R16 K18 ["https://catalog.%s"]
       65 MOVE                             R17 R5
       66 CALL                             R15 2 1
       67 GETIMPORT                        R16 K8 [string.format]
       69 LOADK                            R17 K19 ["https://develop.%s"]
       70 MOVE                             R18 R5
       71 CALL                             R16 2 1
       72 GETIMPORT                        R17 K8 [string.format]
       74 LOADK                            R18 K20 ["https://itemconfiguration.%s"]
       75 MOVE                             R19 R5
       76 CALL                             R17 2 1
       77 GETIMPORT                        R18 K8 [string.format]
       79 LOADK                            R19 K21 ["https://publish.%s"]
       80 MOVE                             R20 R5
       81 CALL                             R18 2 1
       82 GETIMPORT                        R19 K8 [string.format]
       84 LOADK                            R20 K22 ["https://data.%s"]
       85 MOVE                             R21 R5
       86 CALL                             R19 2 1
       87 GETIMPORT                        R20 K8 [string.format]
       89 LOADK                            R21 K23 ["https://groups.%s"]
       90 MOVE                             R22 R5
       91 CALL                             R20 2 1
       92 GETIMPORT                        R21 K8 [string.format]
       94 LOADK                            R22 K24 ["https://thumbnails.%s"]
       95 MOVE                             R23 R5
       96 CALL                             R21 2 1
       97 GETIMPORT                        R22 K8 [string.format]
       99 LOADK                            R23 K25 ["https://economy.%s"]
      100 MOVE                             R24 R5
      101 CALL                             R22 2 1
      102 GETIMPORT                        R23 K8 [string.format]
      104 LOADK                            R24 K26 ["https://friends.%s"]
      105 MOVE                             R25 R5
      106 CALL                             R23 2 1
      107 GETIMPORT                        R24 K8 [string.format]
      109 LOADK                            R25 K27 ["https://users.%s"]
      110 MOVE                             R26 R5
      111 CALL                             R24 2 1
      112 GETIMPORT                        R25 K8 [string.format]
      114 LOADK                            R26 K28 ["https://inventory.%s"]
      115 MOVE                             R27 R5
      116 CALL                             R25 2 1
      117 GETIMPORT                        R26 K8 [string.format]
      119 LOADK                            R27 K29 ["https://assetdelivery.%s"]
      120 MOVE                             R28 R5
      121 CALL                             R26 2 1
      122 DUPTABLE                         R27 K54 [{"DOMAIN", "PREFIX", "BASE_URL", "APIS_URL", "AUTH_URL", "CREATE_URL", "GAME_URL", "GAME_ASSET_URL", "CHAT_URL", "NOTIFICATION_URL", "REALTIME_URL", "WEB_URL", "CATALOG_URL", "DEVELOP_URL", "ITEM_CONFIGURATION_URL", "PUBLISH_URL", "DATA_URL", "GROUP_URL", "THUMBNAIL_URL", "ECONOMY_URL", "FRIENDS_URL", "USERS_URL", "INVENTORY_URL", "ASSET_DELIVERY_URL"}]
      123 SETTABLEKS                       R5 R27 K30 ["DOMAIN"]
      125 SETTABLEKS                       R4 R27 K31 ["PREFIX"]
      127 SETTABLEKS                       R3 R27 K32 ["BASE_URL"]
      129 SETTABLEKS                       R6 R27 K33 ["APIS_URL"]
      131 SETTABLEKS                       R7 R27 K34 ["AUTH_URL"]
      133 SETTABLEKS                       R9 R27 K35 ["CREATE_URL"]
      135 SETTABLEKS                       R11 R27 K36 ["GAME_URL"]
      137 SETTABLEKS                       R10 R27 K37 ["GAME_ASSET_URL"]
      139 SETTABLEKS                       R8 R27 K38 ["CHAT_URL"]
      141 SETTABLEKS                       R12 R27 K39 ["NOTIFICATION_URL"]
      143 SETTABLEKS                       R13 R27 K40 ["REALTIME_URL"]
      145 SETTABLEKS                       R14 R27 K41 ["WEB_URL"]
      147 SETTABLEKS                       R15 R27 K42 ["CATALOG_URL"]
      149 SETTABLEKS                       R16 R27 K43 ["DEVELOP_URL"]
      151 SETTABLEKS                       R17 R27 K44 ["ITEM_CONFIGURATION_URL"]
      153 SETTABLEKS                       R18 R27 K45 ["PUBLISH_URL"]
      155 SETTABLEKS                       R19 R27 K46 ["DATA_URL"]
      157 SETTABLEKS                       R20 R27 K47 ["GROUP_URL"]
      159 SETTABLEKS                       R21 R27 K48 ["THUMBNAIL_URL"]
      161 SETTABLEKS                       R22 R27 K49 ["ECONOMY_URL"]
      163 SETTABLEKS                       R23 R27 K50 ["FRIENDS_URL"]
      165 SETTABLEKS                       R24 R27 K51 ["USERS_URL"]
      167 SETTABLEKS                       R25 R27 K52 ["INVENTORY_URL"]
      169 SETTABLEKS                       R26 R27 K53 ["ASSET_DELIVERY_URL"]
      171 DUPCLOSURE                       R28 K55 [PROTO_1]
      172 SETTABLEKS                       R28 R27 K56 ["isVanitySite"]
      174 DUPCLOSURE                       R28 K57 [PROTO_2]
      175 SETGLOBAL                        R28 K58 ["isMap"]
      177 DUPCLOSURE                       R28 K59 [PROTO_3]
      178 CAPTURE                          VAL R0
      179 SETGLOBAL                        R28 K60 ["addArrayToParams"]
      181 DUPCLOSURE                       R28 K61 [PROTO_4]
      182 CAPTURE                          VAL R0
      183 SETGLOBAL                        R28 K62 ["addNonMapValueToParams"]
      185 DUPCLOSURE                       R28 K63 [PROTO_5]
      186 SETTABLEKS                       R28 R27 K64 ["makeQueryString"]
      188 RETURN                           R27 1
