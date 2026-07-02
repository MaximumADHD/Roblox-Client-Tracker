PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K5 [{["icon"], ["text"] = "To Party with friends, turn on Party in your privacy settings.", ["button"]}]
        5 DUPTABLE                         R3 K9 [{["name"] = "rbxasset://textures/ui/LuaChat/icons/ic-friends.png", ["size"]}]
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R4 R4 K10 ["XLarge"]
        9 SETTABLEKS                       R4 R3 K8 ["size"]
       11 SETTABLEKS                       R3 R2 K1 ["icon"]
       13 DUPTABLE                         R3 K14 [{["text"] = "Privacy Settings", ["icon"] = "icons/navigation/externallink_medium", ["onActivated"]}]
       14 DUPCLOSURE                       R4 K15 [PROTO_2]
       15 SETTABLEKS                       R4 R3 K13 ["onActivated"]
       17 SETTABLEKS                       R3 R2 K4 ["button"]
       19 CALL                             R0 2 -1
       20 RETURN                           R0 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Enums"]
       18 GETTABLEKS                       R4 R4 K9 ["IconSize"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Components"]
       25 GETTABLEKS                       R5 R5 K11 ["Empty"]
       27 CALL                             R4 1 1
       28 DUPCLOSURE                       R5 K12 [PROTO_1]
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R4
       31 DUPTABLE                         R6 K17 [{["summary"] = "Empty component for displaying emptys", ["stories"], ["controls"]}]
       32 NEWTABLE                         R7 0 2
       34 DUPTABLE                         R8 K21 [{["name"] = "Default", ["story"]}]
       35 SETTABLEKS                       R5 R8 K20 ["story"]
       37 DUPTABLE                         R9 K23 [{["name"] = "With Button", ["story"]}]
       38 DUPCLOSURE                       R10 K24 [PROTO_3]
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R3
       42 SETTABLEKS                       R10 R9 K20 ["story"]
       44 SETLIST                          R7 R8 2 [1]
       46 SETTABLEKS                       R7 R6 K15 ["stories"]
       48 DUPTABLE                         R7 K29 [{["showButton"] = False, ["iconName"], ["iconSize"]}]
       49 NEWTABLE                         R8 0 2
       51 LOADK                            R9 K30 ["icons/status/oof_xlarge"]
       52 LOADK                            R10 K31 ["icons/status/noconnection_large"]
       53 SETLIST                          R8 R9 2 [1]
       55 SETTABLEKS                       R8 R7 K27 ["iconName"]
       57 NEWTABLE                         R8 0 2
       59 GETTABLEKS                       R9 R3 K32 ["XLarge"]
       61 GETTABLEKS                       R10 R3 K33 ["Large"]
       63 SETLIST                          R8 R9 2 [1]
       65 SETTABLEKS                       R8 R7 K28 ["iconSize"]
       67 SETTABLEKS                       R7 R6 K16 ["controls"]
       69 RETURN                           R6 1
