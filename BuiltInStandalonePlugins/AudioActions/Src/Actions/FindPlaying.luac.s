PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K1 [game]
        4 NAMECALL                         R1 R1 K2 ["GetDescendants"]
        6 CALL                             R1 1 3
        7 FORGPREP                         R1
        8 LOADK                            R8 K3 ["AudioPlayer"]
        9 NAMECALL                         R6 R5 K4 ["IsA"]
       11 CALL                             R6 2 1
       12 JUMPIFNOT                        R6 ; [+10]
       13 GETTABLEKS                       R6 R5 K5 ["IsPlaying"]
       15 JUMPIFNOT                        R6 ; [+7]
       16 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
       18 MOVE                             R7 R0
       19 MOVE                             R8 R5
       20 GETIMPORT                        R6 K8 [table.insert]
       22 CALL                             R6 2 0
       23 FORGLOOP                         R1 2 ; [-16]
       25 GETUPVAL                         R1 0
       26 MOVE                             R3 R0
       27 NAMECALL                         R1 R1 K9 ["Set"]
       29 CALL                             R1 2 0
       30 RETURN                           R0 1

PROTO_1:
        0 LOADK                            R3 K0 ["Actions"]
        1 NAMECALL                         R1 R0 K1 ["GetPluginComponent"]
        3 CALL                             R1 2 1
        4 DUPTABLE                         R2 K9 [{"Uri", "Enabled", "Visible", "Text", "Tooltip", "Icon", "Shortcuts"}]
        5 DUPTABLE                         R3 K14 [{"DataModel", "PluginId", "Category", "ItemId"}]
        6 LOADK                            R4 K15 ["Standalone"]
        7 SETTABLEKS                       R4 R3 K10 ["DataModel"]
        9 LOADK                            R4 K16 ["Audio"]
       10 SETTABLEKS                       R4 R3 K11 ["PluginId"]
       12 LOADK                            R4 K0 ["Actions"]
       13 SETTABLEKS                       R4 R3 K12 ["Category"]
       15 LOADK                            R4 K17 ["Find Playing"]
       16 SETTABLEKS                       R4 R3 K13 ["ItemId"]
       18 SETTABLEKS                       R3 R2 K2 ["Uri"]
       20 LOADB                            R3 1
       21 SETTABLEKS                       R3 R2 K3 ["Enabled"]
       23 LOADB                            R3 1
       24 SETTABLEKS                       R3 R2 K4 ["Visible"]
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R3 R4 K18 ["action"]
       29 LOADK                            R4 K19 ["FindPlaying"]
       30 CALL                             R3 1 1
       31 SETTABLEKS                       R3 R2 K5 ["Text"]
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R3 R4 K20 ["tooltip"]
       36 LOADK                            R4 K19 ["FindPlaying"]
       37 CALL                             R3 1 1
       38 SETTABLEKS                       R3 R2 K6 ["Tooltip"]
       40 LOADK                            R3 K21 ["Find"]
       41 SETTABLEKS                       R3 R2 K7 ["Icon"]
       43 NEWTABLE                         R3 0 0
       45 SETTABLEKS                       R3 R2 K8 ["Shortcuts"]
       47 GETUPVAL                         R3 1
       48 JUMPIFNOT                        R3 ; [+6]
       49 GETUPVAL                         R3 1
       50 NAMECALL                         R3 R3 K22 ["Disconnect"]
       52 CALL                             R3 1 0
       53 LOADNIL                          R3
       54 SETUPVAL                         R3 1
       55 MOVE                             R6 R2
       56 LOADB                            R7 1
       57 NAMECALL                         R4 R1 K23 ["CreateAsync"]
       59 CALL                             R4 3 1
       60 GETTABLEN                        R3 R4 1
       61 GETUPVAL                         R5 2
       62 NAMECALL                         R3 R3 K24 ["Connect"]
       64 CALL                             R3 2 1
       65 SETUPVAL                         R3 1
       66 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Selection"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AudioActions"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R5 R1 K10 ["Src"]
       17 GETTABLEKS                       R4 R5 K11 ["Util"]
       19 GETTABLEKS                       R3 R4 K12 ["LocalizationUtil"]
       21 CALL                             R2 1 1
       22 DUPCLOSURE                       R3 K13 [PROTO_0]
       23 CAPTURE                          VAL R0
       24 LOADNIL                          R4
       25 NEWTABLE                         R5 2 0
       27 NEWCLOSURE                       R6 P1
       28 CAPTURE                          VAL R2
       29 CAPTURE                          REF R4
       30 CAPTURE                          VAL R3
       31 SETTABLEKS                       R6 R5 K14 ["register"]
       33 NEWCLOSURE                       R6 P2
       34 CAPTURE                          REF R4
       35 SETTABLEKS                       R6 R5 K15 ["deregister"]
       37 CLOSEUPVALS                      R4
       38 RETURN                           R5 1
