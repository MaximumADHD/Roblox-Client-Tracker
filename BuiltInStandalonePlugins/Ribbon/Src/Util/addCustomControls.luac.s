PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Uri"]
        2 GETTABLEKS                       R2 R2 K1 ["PluginId"]
        4 GETTABLEKS                       R3 R1 K0 ["Uri"]
        6 GETTABLEKS                       R3 R3 K1 ["PluginId"]
        8 JUMPIFNOTEQ                      R2 R3 ; [+14]
       10 GETTABLEKS                       R3 R0 K0 ["Uri"]
       12 GETTABLEKS                       R3 R3 K2 ["ItemId"]
       14 GETTABLEKS                       R4 R1 K0 ["Uri"]
       16 GETTABLEKS                       R4 R4 K2 ["ItemId"]
       18 JUMPIFLT                         R3 R4 ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 RETURN                           R2 1
       23 GETTABLEKS                       R3 R0 K0 ["Uri"]
       25 GETTABLEKS                       R3 R3 K1 ["PluginId"]
       27 GETTABLEKS                       R4 R1 K0 ["Uri"]
       29 GETTABLEKS                       R4 R4 K1 ["PluginId"]
       31 JUMPIFLT                         R3 R4 ; [+2]
       33 LOADB                            R2 0 +1
       34 LOADB                            R2 1
       35 RETURN                           R2 1

PROTO_1:
        0 JUMPIFEQKNIL                     R3 ; [+4]
        2 LENGTH                           R4 R3
        3 JUMPIFNOTEQKN                    R4 K0 [0] ; [+2]
        5 RETURN                           R0 0
        6 GETIMPORT                        R4 K3 [table.sort]
        8 MOVE                             R5 R3
        9 DUPCLOSURE                       R6 K4 [PROTO_0]
       10 CALL                             R4 2 0
       11 LOADB                            R4 0
       12 MOVE                             R5 R3
       13 LOADNIL                          R6
       14 LOADNIL                          R7
       15 FORGPREP                         R5
       16 GETTABLEKS                       R10 R9 K5 ["PreferredToolbarUri"]
       18 GETTABLEKS                       R10 R10 K6 ["PluginId"]
       20 GETTABLEKS                       R11 R0 K6 ["PluginId"]
       22 JUMPIFNOTEQ                      R10 R11 ; [+48]
       24 GETTABLEKS                       R10 R9 K5 ["PreferredToolbarUri"]
       26 GETTABLEKS                       R10 R10 K7 ["DataModel"]
       28 GETTABLEKS                       R11 R0 K7 ["DataModel"]
       30 JUMPIFNOTEQ                      R10 R11 ; [+40]
       32 GETTABLEKS                       R10 R9 K5 ["PreferredToolbarUri"]
       34 GETTABLEKS                       R10 R10 K8 ["PluginType"]
       36 GETTABLEKS                       R11 R0 K8 ["PluginType"]
       38 JUMPIFNOTEQ                      R10 R11 ; [+32]
       40 GETTABLEKS                       R10 R9 K5 ["PreferredToolbarUri"]
       42 GETTABLEKS                       R10 R10 K9 ["ItemId"]
       44 LOADK                            R12 K10 ["Tabs/%*"]
       45 MOVE                             R14 R1
       46 NAMECALL                         R12 R12 K11 ["format"]
       48 CALL                             R12 2 1
       49 MOVE                             R11 R12
       50 JUMPIFNOTEQ                      R10 R11 ; [+20]
       52 GETTABLEKS                       R11 R9 K12 ["Controls"]
       54 LENGTH                           R10 R11
       55 LOADN                            R11 0
       56 JUMPIFNOTLT                      R11 R10 ; [+14]
       58 LOADB                            R4 1
       59 GETUPVAL                         R10 0
       60 MOVE                             R11 R2
       61 GETTABLEKS                       R12 R9 K12 ["Controls"]
       63 CALL                             R10 2 0
       64 GETUPVAL                         R12 1
       65 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
       67 MOVE                             R11 R2
       68 GETIMPORT                        R10 K14 [table.insert]
       70 CALL                             R10 2 0
       71 FORGLOOP                         R5 2 ; [-56]
       73 JUMPIFNOT                        R4 ; [+4]
       74 GETIMPORT                        R5 K16 [table.remove]
       76 MOVE                             R6 R2
       77 CALL                             R5 1 0
       78 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R3 K9 ["Dash"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K10 ["append"]
       23 DUPTABLE                         R4 K15 [{["Type"] = "Separator", ["Size"] = "Large"}]
       24 DUPCLOSURE                       R5 K16 [PROTO_1]
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R4
       27 SETGLOBAL                        R5 K17 ["addCustomControls"]
       29 GETGLOBAL                        R5 K17 ["addCustomControls"]
       31 RETURN                           R5 1
