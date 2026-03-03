PROTO_0:
        0 GETIMPORT                        R1 K2 [table.create]
        2 LOADN                            R2 5
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R0 K3 ["DataModel"]
        6 JUMPIFNOT                        R2 ; [+13]
        7 LOADK                            R5 K4 ["DataModel:%*"]
        8 GETTABLEKS                       R7 R0 K3 ["DataModel"]
       10 NAMECALL                         R5 R5 K5 ["format"]
       12 CALL                             R5 2 1
       13 MOVE                             R4 R5
       14 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       16 MOVE                             R3 R1
       17 GETIMPORT                        R2 K7 [table.insert]
       19 CALL                             R2 2 0
       20 GETTABLEKS                       R2 R0 K8 ["PluginType"]
       22 JUMPIFNOT                        R2 ; [+13]
       23 LOADK                            R5 K9 ["PluginType:%*"]
       24 GETTABLEKS                       R7 R0 K8 ["PluginType"]
       26 NAMECALL                         R5 R5 K5 ["format"]
       28 CALL                             R5 2 1
       29 MOVE                             R4 R5
       30 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       32 MOVE                             R3 R1
       33 GETIMPORT                        R2 K7 [table.insert]
       35 CALL                             R2 2 0
       36 GETTABLEKS                       R2 R0 K10 ["PluginId"]
       38 JUMPIFNOT                        R2 ; [+13]
       39 LOADK                            R5 K11 ["PluginId:%*"]
       40 GETTABLEKS                       R7 R0 K10 ["PluginId"]
       42 NAMECALL                         R5 R5 K5 ["format"]
       44 CALL                             R5 2 1
       45 MOVE                             R4 R5
       46 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       48 MOVE                             R3 R1
       49 GETIMPORT                        R2 K7 [table.insert]
       51 CALL                             R2 2 0
       52 GETTABLEKS                       R2 R0 K12 ["Category"]
       54 JUMPIFNOT                        R2 ; [+13]
       55 LOADK                            R5 K13 ["Category:%*"]
       56 GETTABLEKS                       R7 R0 K12 ["Category"]
       58 NAMECALL                         R5 R5 K5 ["format"]
       60 CALL                             R5 2 1
       61 MOVE                             R4 R5
       62 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       64 MOVE                             R3 R1
       65 GETIMPORT                        R2 K7 [table.insert]
       67 CALL                             R2 2 0
       68 GETTABLEKS                       R2 R0 K14 ["ItemId"]
       70 JUMPIFNOT                        R2 ; [+13]
       71 LOADK                            R5 K15 ["ItemId:%*"]
       72 GETTABLEKS                       R7 R0 K14 ["ItemId"]
       74 NAMECALL                         R5 R5 K5 ["format"]
       76 CALL                             R5 2 1
       77 MOVE                             R4 R5
       78 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       80 MOVE                             R3 R1
       81 GETIMPORT                        R2 K7 [table.insert]
       83 CALL                             R2 2 0
       84 GETIMPORT                        R2 K17 [table.concat]
       86 MOVE                             R3 R1
       87 LOADK                            R4 K18 [", "]
       88 CALL                             R2 2 -1
       89 RETURN                           R2 -1

PROTO_1:
        0 LOADB                            R2 0
        1 GETTABLEKS                       R3 R0 K0 ["DataModel"]
        3 GETTABLEKS                       R4 R1 K0 ["DataModel"]
        5 JUMPIFNOTEQ                      R3 R4 ; [+30]
        7 LOADB                            R2 0
        8 GETTABLEKS                       R3 R0 K1 ["PluginType"]
       10 GETTABLEKS                       R4 R1 K1 ["PluginType"]
       12 JUMPIFNOTEQ                      R3 R4 ; [+23]
       14 LOADB                            R2 0
       15 GETTABLEKS                       R3 R0 K2 ["PluginId"]
       17 GETTABLEKS                       R4 R1 K2 ["PluginId"]
       19 JUMPIFNOTEQ                      R3 R4 ; [+16]
       21 LOADB                            R2 0
       22 GETTABLEKS                       R3 R0 K3 ["Category"]
       24 GETTABLEKS                       R4 R1 K3 ["Category"]
       26 JUMPIFNOTEQ                      R3 R4 ; [+9]
       28 GETTABLEKS                       R3 R0 K4 ["ItemId"]
       30 GETTABLEKS                       R4 R1 K4 ["ItemId"]
       32 JUMPIFEQ                         R3 R4 ; [+2]
       34 LOADB                            R2 0 +1
       35 LOADB                            R2 1
       36 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"ItemId"}]
        3 GETTABLEKS                       R6 R0 K0 ["ItemId"]
        5 JUMPIFNOT                        R6 ; [+9]
        6 LOADK                            R6 K2 ["%*/%*"]
        7 GETTABLEKS                       R8 R0 K0 ["ItemId"]
        9 MOVE                             R9 R1
       10 NAMECALL                         R6 R6 K3 ["format"]
       12 CALL                             R6 3 1
       13 MOVE                             R5 R6
       14 JUMP                             ; [+1]
       15 MOVE                             R5 R1
       16 SETTABLEKS                       R5 R4 K0 ["ItemId"]
       18 CALL                             R2 2 -1
       19 RETURN                           R2 -1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["DataModel"]
        2 JUMPIFEQKS                       R2 K1 ["Null"] ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_4:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["table"] ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_5:
        0 DUPTABLE                         R2 K4 [{"DataModel", "PluginId", "Category", "ItemId"}]
        1 LOADK                            R3 K5 ["Standalone"]
        2 SETTABLEKS                       R3 R2 K0 ["DataModel"]
        4 SETTABLEKS                       R0 R2 K1 ["PluginId"]
        6 LOADK                            R3 K6 ["Actions"]
        7 SETTABLEKS                       R3 R2 K2 ["Category"]
        9 SETTABLEKS                       R1 R2 K3 ["ItemId"]
       11 RETURN                           R2 1

PROTO_6:
        0 DUPTABLE                         R2 K4 [{"DataModel", "PluginId", "Category", "ItemId"}]
        1 LOADK                            R3 K5 ["Standalone"]
        2 SETTABLEKS                       R3 R2 K0 ["DataModel"]
        4 SETTABLEKS                       R0 R2 K1 ["PluginId"]
        6 LOADK                            R3 K6 ["Settings"]
        7 SETTABLEKS                       R3 R2 K2 ["Category"]
        9 SETTABLEKS                       R1 R2 K3 ["ItemId"]
       11 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K2 ["Parent"]
       11 GETTABLEKS                       R2 R3 K5 ["Dash"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K6 ["join"]
       16 GETIMPORT                        R3 K4 [require]
       18 GETTABLEKS                       R4 R0 K7 ["Types"]
       20 CALL                             R3 1 1
       21 NEWTABLE                         R4 8 0
       23 DUPCLOSURE                       R5 K8 [PROTO_0]
       24 SETTABLEKS                       R5 R4 K9 ["toString"]
       26 DUPCLOSURE                       R5 K10 [PROTO_1]
       27 SETTABLEKS                       R5 R4 K11 ["equals"]
       29 DUPCLOSURE                       R5 K12 [PROTO_2]
       30 CAPTURE                          VAL R2
       31 SETTABLEKS                       R5 R4 K13 ["child"]
       33 DUPCLOSURE                       R5 K14 [PROTO_3]
       34 SETTABLEKS                       R5 R4 K15 ["isNull"]
       36 DUPCLOSURE                       R5 K16 [PROTO_4]
       37 SETTABLEKS                       R5 R4 K17 ["isValid"]
       39 DUPCLOSURE                       R5 K18 [PROTO_5]
       40 SETTABLEKS                       R5 R4 K19 ["fromAction"]
       42 DUPCLOSURE                       R5 K20 [PROTO_6]
       43 SETTABLEKS                       R5 R4 K21 ["fromSetting"]
       45 RETURN                           R4 1
