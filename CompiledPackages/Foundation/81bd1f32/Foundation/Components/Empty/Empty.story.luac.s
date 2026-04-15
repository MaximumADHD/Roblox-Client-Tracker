PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K4 [{"icon", "button"}]
        7 DUPTABLE                         R5 K7 [{"name", "size"}]
        8 GETTABLEKS                       R6 R1 K8 ["iconName"]
       10 SETTABLEKS                       R6 R5 K5 ["name"]
       12 GETTABLEKS                       R6 R1 K9 ["iconSize"]
       14 SETTABLEKS                       R6 R5 K6 ["size"]
       16 SETTABLEKS                       R5 R4 K2 ["icon"]
       18 GETTABLEKS                       R6 R1 K10 ["showButton"]
       20 JUMPIFNOT                        R6 ; [+5]
       21 DUPTABLE                         R5 K12 [{"onActivated"}]
       22 DUPCLOSURE                       R6 K13 [PROTO_0]
       23 SETTABLEKS                       R6 R5 K11 ["onActivated"]
       25 JUMP                             ; [+1]
       26 LOADNIL                          R5
       27 SETTABLEKS                       R5 R4 K3 ["button"]
       29 CALL                             R2 2 -1
       30 RETURN                           R2 -1

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K4 [{"icon", "text", "button"}]
        5 DUPTABLE                         R3 K7 [{"name", "size"}]
        6 LOADK                            R4 K8 ["rbxasset://textures/ui/LuaChat/icons/ic-friends.png"]
        7 SETTABLEKS                       R4 R3 K5 ["name"]
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R4 R5 K9 ["XLarge"]
       12 SETTABLEKS                       R4 R3 K6 ["size"]
       14 SETTABLEKS                       R3 R2 K1 ["icon"]
       16 LOADK                            R3 K10 ["To Party with friends, turn on Party in your privacy settings."]
       17 SETTABLEKS                       R3 R2 K2 ["text"]
       19 DUPTABLE                         R3 K12 [{"text", "icon", "onActivated"}]
       20 LOADK                            R4 K13 ["Privacy Settings"]
       21 SETTABLEKS                       R4 R3 K2 ["text"]
       23 LOADK                            R4 K14 ["icons/navigation/externallink_medium"]
       24 SETTABLEKS                       R4 R3 K1 ["icon"]
       26 DUPCLOSURE                       R4 K15 [PROTO_2]
       27 SETTABLEKS                       R4 R3 K11 ["onActivated"]
       29 SETTABLEKS                       R3 R2 K3 ["button"]
       31 CALL                             R0 2 -1
       32 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Enums"]
       18 GETTABLEKS                       R4 R5 K9 ["IconSize"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R6 R0 K10 ["Components"]
       25 GETTABLEKS                       R5 R6 K11 ["Empty"]
       27 CALL                             R4 1 1
       28 DUPCLOSURE                       R5 K12 [PROTO_1]
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R4
       31 DUPTABLE                         R6 K16 [{"summary", "stories", "controls"}]
       32 LOADK                            R7 K17 ["Empty component for displaying emptys"]
       33 SETTABLEKS                       R7 R6 K13 ["summary"]
       35 NEWTABLE                         R7 0 2
       37 DUPTABLE                         R8 K20 [{"name", "story"}]
       38 LOADK                            R9 K21 ["Default"]
       39 SETTABLEKS                       R9 R8 K18 ["name"]
       41 SETTABLEKS                       R5 R8 K19 ["story"]
       43 DUPTABLE                         R9 K20 [{"name", "story"}]
       44 LOADK                            R10 K22 ["With Button"]
       45 SETTABLEKS                       R10 R9 K18 ["name"]
       47 DUPCLOSURE                       R10 K23 [PROTO_3]
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R3
       51 SETTABLEKS                       R10 R9 K19 ["story"]
       53 SETLIST                          R7 R8 2 [1]
       55 SETTABLEKS                       R7 R6 K14 ["stories"]
       57 DUPTABLE                         R7 K27 [{"showButton", "iconName", "iconSize"}]
       58 LOADB                            R8 0
       59 SETTABLEKS                       R8 R7 K24 ["showButton"]
       61 NEWTABLE                         R8 0 2
       63 LOADK                            R9 K28 ["icons/status/oof_xlarge"]
       64 LOADK                            R10 K29 ["icons/status/noconnection_large"]
       65 SETLIST                          R8 R9 2 [1]
       67 SETTABLEKS                       R8 R7 K25 ["iconName"]
       69 NEWTABLE                         R8 0 2
       71 GETTABLEKS                       R9 R3 K30 ["XLarge"]
       73 GETTABLEKS                       R10 R3 K31 ["Large"]
       75 SETLIST                          R8 R9 2 [1]
       77 SETTABLEKS                       R8 R7 K26 ["iconSize"]
       79 SETTABLEKS                       R7 R6 K15 ["controls"]
       81 RETURN                           R6 1
