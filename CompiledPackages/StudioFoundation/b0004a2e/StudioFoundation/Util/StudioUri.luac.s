PROTO_0:
        0 FASTCALL2                        RAWEQUAL R0 R1 ; [+5]
        2 MOVE                             R3 R0
        3 MOVE                             R4 R1
        4 GETIMPORT                        R2 K1 [rawequal]
        6 CALL                             R2 2 1
        7 JUMPIFNOT                        R2 ; [+2]
        8 LOADB                            R2 1
        9 RETURN                           R2 1
       10 LOADB                            R2 0
       11 GETTABLEKS                       R3 R0 K2 ["DataModel"]
       13 GETTABLEKS                       R4 R1 K2 ["DataModel"]
       15 JUMPIFNOTEQ                      R3 R4 ; [+30]
       17 LOADB                            R2 0
       18 GETTABLEKS                       R3 R0 K3 ["PluginType"]
       20 GETTABLEKS                       R4 R1 K3 ["PluginType"]
       22 JUMPIFNOTEQ                      R3 R4 ; [+23]
       24 LOADB                            R2 0
       25 GETTABLEKS                       R3 R0 K4 ["PluginId"]
       27 GETTABLEKS                       R4 R1 K4 ["PluginId"]
       29 JUMPIFNOTEQ                      R3 R4 ; [+16]
       31 LOADB                            R2 0
       32 GETTABLEKS                       R3 R0 K5 ["Category"]
       34 GETTABLEKS                       R4 R1 K5 ["Category"]
       36 JUMPIFNOTEQ                      R3 R4 ; [+9]
       38 GETTABLEKS                       R3 R0 K6 ["ItemId"]
       40 GETTABLEKS                       R4 R1 K6 ["ItemId"]
       42 JUMPIFEQ                         R3 R4 ; [+2]
       44 LOADB                            R2 0 +1
       45 LOADB                            R2 1
       46 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["equals"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_2:
        0 GETIMPORT                        R1 K2 [table.isfrozen]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 JUMPIFNOT                        R1 ; [+11]
        5 FASTCALL1                        GETMETATABLE R0 ; [+3]
        6 MOVE                             R2 R0
        7 GETIMPORT                        R1 K4 [getmetatable]
        9 CALL                             R1 1 1
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K5 ["RESTRICTED_Mt"]
       13 JUMPIFNOTEQ                      R1 R2 ; [+2]
       15 RETURN                           R0 1
       16 GETIMPORT                        R1 K2 [table.isfrozen]
       18 MOVE                             R2 R0
       19 CALL                             R1 1 1
       20 JUMPIFNOT                        R1 ; [+5]
       21 GETIMPORT                        R1 K7 [table.clone]
       23 MOVE                             R2 R0
       24 CALL                             R1 1 1
       25 MOVE                             R0 R1
       26 GETIMPORT                        R1 K9 [table.freeze]
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R4 R4 K5 ["RESTRICTED_Mt"]
       31 FASTCALL2                        SETMETATABLE R0 R4 ; [+4]
       33 MOVE                             R3 R0
       34 GETIMPORT                        R2 K11 [setmetatable]
       36 CALL                             R2 2 1
       37 CALL                             R1 1 -1
       38 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["wrap"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 CALL                             R3 2 -1
        7 CALL                             R2 -1 -1
        8 RETURN                           R2 -1

PROTO_4:
        0 GETIMPORT                        R1 K2 [table.create]
        2 LOADN                            R2 5
        3 CALL                             R1 1 1
        4 MOVE                             R2 R0
        5 JUMPIF                           R2 ; [+1]
        6 GETUPVAL                         R2 0
        7 JUMPIF                           R2 ; [+2]
        8 LOADK                            R3 K3 [""]
        9 RETURN                           R3 1
       10 GETTABLEKS                       R3 R2 K4 ["DataModel"]
       12 JUMPIFNOT                        R3 ; [+13]
       13 LOADK                            R6 K5 ["DataModel:%*"]
       14 GETTABLEKS                       R8 R2 K4 ["DataModel"]
       16 NAMECALL                         R6 R6 K6 ["format"]
       18 CALL                             R6 2 1
       19 MOVE                             R5 R6
       20 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       22 MOVE                             R4 R1
       23 GETIMPORT                        R3 K8 [table.insert]
       25 CALL                             R3 2 0
       26 GETTABLEKS                       R3 R2 K9 ["PluginType"]
       28 JUMPIFNOT                        R3 ; [+13]
       29 LOADK                            R6 K10 ["PluginType:%*"]
       30 GETTABLEKS                       R8 R2 K9 ["PluginType"]
       32 NAMECALL                         R6 R6 K6 ["format"]
       34 CALL                             R6 2 1
       35 MOVE                             R5 R6
       36 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       38 MOVE                             R4 R1
       39 GETIMPORT                        R3 K8 [table.insert]
       41 CALL                             R3 2 0
       42 GETTABLEKS                       R3 R2 K11 ["PluginId"]
       44 JUMPIFNOT                        R3 ; [+13]
       45 LOADK                            R6 K12 ["PluginId:%*"]
       46 GETTABLEKS                       R8 R2 K11 ["PluginId"]
       48 NAMECALL                         R6 R6 K6 ["format"]
       50 CALL                             R6 2 1
       51 MOVE                             R5 R6
       52 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       54 MOVE                             R4 R1
       55 GETIMPORT                        R3 K8 [table.insert]
       57 CALL                             R3 2 0
       58 GETTABLEKS                       R3 R2 K13 ["Category"]
       60 JUMPIFNOT                        R3 ; [+13]
       61 LOADK                            R6 K14 ["Category:%*"]
       62 GETTABLEKS                       R8 R2 K13 ["Category"]
       64 NAMECALL                         R6 R6 K6 ["format"]
       66 CALL                             R6 2 1
       67 MOVE                             R5 R6
       68 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       70 MOVE                             R4 R1
       71 GETIMPORT                        R3 K8 [table.insert]
       73 CALL                             R3 2 0
       74 GETTABLEKS                       R3 R2 K15 ["ItemId"]
       76 JUMPIFNOT                        R3 ; [+13]
       77 LOADK                            R6 K16 ["ItemId:%*"]
       78 GETTABLEKS                       R8 R2 K15 ["ItemId"]
       80 NAMECALL                         R6 R6 K6 ["format"]
       82 CALL                             R6 2 1
       83 MOVE                             R5 R6
       84 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       86 MOVE                             R4 R1
       87 GETIMPORT                        R3 K8 [table.insert]
       89 CALL                             R3 2 0
       90 GETIMPORT                        R3 K18 [table.concat]
       92 MOVE                             R4 R1
       93 LOADK                            R5 K19 [", "]
       94 CALL                             R3 2 -1
       95 RETURN                           R3 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["join"]
        3 MOVE                             R3 R0
        4 DUPTABLE                         R4 K2 [{"ItemId"}]
        5 GETTABLEKS                       R6 R0 K1 ["ItemId"]
        7 JUMPIFNOT                        R6 ; [+9]
        8 LOADK                            R6 K3 ["%*/%*"]
        9 GETTABLEKS                       R8 R0 K1 ["ItemId"]
       11 MOVE                             R9 R1
       12 NAMECALL                         R6 R6 K4 ["format"]
       14 CALL                             R6 3 1
       15 MOVE                             R5 R6
       16 JUMP                             ; [+1]
       17 MOVE                             R5 R1
       18 SETTABLEKS                       R5 R4 K1 ["ItemId"]
       20 CALL                             R2 2 -1
       21 RETURN                           R2 -1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["DataModel"]
        2 JUMPIFEQKS                       R2 K1 ["Null"] ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_7:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["table"] ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["wrap"]
        3 DUPTABLE                         R3 K7 [{["DataModel"] = "Standalone", ["PluginId"], ["Category"] = "Actions", ["ItemId"]}]
        4 SETTABLEKS                       R0 R3 K3 ["PluginId"]
        6 SETTABLEKS                       R1 R3 K6 ["ItemId"]
        8 CALL                             R2 1 -1
        9 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["wrap"]
        3 DUPTABLE                         R3 K7 [{["DataModel"] = "Standalone", ["PluginId"], ["Category"] = "Settings", ["ItemId"]}]
        4 SETTABLEKS                       R0 R3 K3 ["PluginId"]
        6 SETTABLEKS                       R1 R3 K6 ["ItemId"]
        8 CALL                             R2 1 -1
        9 RETURN                           R2 -1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["wrap"]
        3 DUPTABLE                         R3 K7 [{["DataModel"] = "Standalone", ["PluginId"], ["Category"] = "Widgets", ["ItemId"]}]
        4 SETTABLEKS                       R0 R3 K3 ["PluginId"]
        6 SETTABLEKS                       R1 R3 K6 ["ItemId"]
        8 CALL                             R2 1 -1
        9 RETURN                           R2 -1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["wrap"]
        3 DUPTABLE                         R3 K7 [{["DataModel"] = "Standalone", ["PluginId"], ["Category"] = "Panels", ["ItemId"]}]
        4 SETTABLEKS                       R0 R3 K3 ["PluginId"]
        6 SETTABLEKS                       R1 R3 K6 ["ItemId"]
        8 CALL                             R2 1 -1
        9 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioFoundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K8 ["join"]
       16 NEWTABLE                         R4 0 0
       18 NEWTABLE                         R5 16 0
       20 DUPCLOSURE                       R6 K9 [PROTO_0]
       21 SETTABLEKS                       R6 R5 K10 ["equals"]
       23 GETIMPORT                        R6 K13 [table.freeze]
       25 DUPTABLE                         R7 K15 [{"__eq"}]
       26 DUPCLOSURE                       R8 K16 [PROTO_1]
       27 CAPTURE                          VAL R5
       28 SETTABLEKS                       R8 R7 K14 ["__eq"]
       30 CALL                             R6 1 1
       31 SETTABLEKS                       R6 R5 K17 ["RESTRICTED_Mt"]
       33 DUPCLOSURE                       R6 K18 [PROTO_2]
       34 CAPTURE                          VAL R5
       35 SETTABLEKS                       R6 R5 K19 ["wrap"]
       37 DUPCLOSURE                       R6 K20 [PROTO_3]
       38 CAPTURE                          VAL R5
       39 CAPTURE                          VAL R3
       40 SETTABLEKS                       R6 R5 K8 ["join"]
       42 DUPCLOSURE                       R6 K21 [PROTO_4]
       43 CAPTURE                          VAL R4
       44 SETTABLEKS                       R6 R5 K22 ["toString"]
       46 DUPCLOSURE                       R6 K23 [PROTO_5]
       47 CAPTURE                          VAL R5
       48 SETTABLEKS                       R6 R5 K24 ["child"]
       50 DUPCLOSURE                       R6 K25 [PROTO_6]
       51 SETTABLEKS                       R6 R5 K26 ["isNull"]
       53 DUPCLOSURE                       R6 K27 [PROTO_7]
       54 SETTABLEKS                       R6 R5 K28 ["isValid"]
       56 DUPCLOSURE                       R6 K29 [PROTO_8]
       57 CAPTURE                          VAL R5
       58 SETTABLEKS                       R6 R5 K30 ["fromAction"]
       60 DUPCLOSURE                       R6 K31 [PROTO_9]
       61 CAPTURE                          VAL R5
       62 SETTABLEKS                       R6 R5 K32 ["fromSetting"]
       64 DUPCLOSURE                       R6 K33 [PROTO_10]
       65 CAPTURE                          VAL R5
       66 SETTABLEKS                       R6 R5 K34 ["fromWidget"]
       68 DUPCLOSURE                       R6 K35 [PROTO_11]
       69 CAPTURE                          VAL R5
       70 SETTABLEKS                       R6 R5 K36 ["fromPanel"]
       72 RETURN                           R5 1
