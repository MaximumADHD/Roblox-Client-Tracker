PROTO_0:
        0 LOADK                            R2 K0 ["rbxthumb://type=GameIcon&id=%*&w=50&h=50"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R2 K0 ["rbxthumb://type=Asset&id=%*&w=150&h=150"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_2:
        0 LOADK                            R2 K0 ["rbxthumb://type=AvatarHeadShot&id=%*&w=48&h=48"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_3:
        0 LOADK                            R2 K0 ["rbxthumb://type=BadgeIcon&id=%*&w=150&h=150"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_4:
        0 LOADK                            R1 K0 [""]
        1 RETURN                           R1 1

PROTO_5:
        0 LOADK                            R2 K0 ["rbxthumb://type=GamePass&id=%*&w=150&h=150"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_6:
        0 LOADK                            R2 K0 ["rbxthumb://type=GroupIcon&id=%*&w=150&h=150"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_7:
        0 LOADK                            R2 K0 ["rbxthumb://type=Asset&id=%*&w=150&h=150"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_8:
        0 LOADK                            R1 K0 [""]
        1 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R3 R7 K0 ["createPath"]
        3 LOADK                            R4 K1 ["dashboard/creations/experiences/"]
        4 FASTCALL1                        TOSTRING R1 ; [+3]
        5 MOVE                             R8 R1
        6 GETIMPORT                        R7 K3 [tostring]
        8 CALL                             R7 1 1
        9 MOVE                             R5 R7
       10 LOADK                            R6 K4 ["/overview"]
       11 CONCAT                           R2 R3 R6
       12 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R3 R6 K0 ["wwwPath"]
        3 LOADK                            R4 K1 ["games/"]
        4 FASTCALL1                        TOSTRING R1 ; [+3]
        5 MOVE                             R6 R1
        6 GETIMPORT                        R5 K3 [tostring]
        8 CALL                             R5 1 1
        9 CONCAT                           R2 R3 R5
       10 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R3 R7 K0 ["wwwPath"]
        3 LOADK                            R4 K1 ["users/"]
        4 FASTCALL1                        TOSTRING R1 ; [+3]
        5 MOVE                             R8 R1
        6 GETIMPORT                        R7 K3 [tostring]
        8 CALL                             R7 1 1
        9 MOVE                             R5 R7
       10 LOADK                            R6 K4 ["/profile"]
       11 CONCAT                           R2 R3 R6
       12 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R9 0
        1 GETTABLEKS                       R3 R9 K0 ["createPath"]
        3 LOADK                            R4 K1 ["dashboard/creations/experiences/"]
        4 FASTCALL1                        TOSTRING R1 ; [+3]
        5 MOVE                             R10 R1
        6 GETIMPORT                        R9 K3 [tostring]
        8 CALL                             R9 1 1
        9 MOVE                             R5 R9
       10 LOADK                            R6 K4 ["/badges/"]
       11 FASTCALL1                        TOSTRING R1 ; [+3]
       12 MOVE                             R10 R1
       13 GETIMPORT                        R9 K3 [tostring]
       15 CALL                             R9 1 1
       16 MOVE                             R7 R9
       17 LOADK                            R8 K5 ["/overview"]
       18 CONCAT                           R2 R3 R8
       19 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R9 0
        1 GETTABLEKS                       R3 R9 K0 ["createPath"]
        3 LOADK                            R4 K1 ["dashboard/creations/experiences/"]
        4 FASTCALL1                        TOSTRING R1 ; [+3]
        5 MOVE                             R10 R1
        6 GETIMPORT                        R9 K3 [tostring]
        8 CALL                             R9 1 1
        9 MOVE                             R5 R9
       10 LOADK                            R6 K4 ["/developer-products/"]
       11 FASTCALL1                        TOSTRING R1 ; [+3]
       12 MOVE                             R10 R1
       13 GETIMPORT                        R9 K3 [tostring]
       15 CALL                             R9 1 1
       16 MOVE                             R7 R9
       17 LOADK                            R8 K5 ["/configure"]
       18 CONCAT                           R2 R3 R8
       19 RETURN                           R2 1

PROTO_14:
        0 GETUPVAL                         R9 0
        1 GETTABLEKS                       R3 R9 K0 ["createPath"]
        3 LOADK                            R4 K1 ["dashboard/creations/experiences/"]
        4 FASTCALL1                        TOSTRING R1 ; [+3]
        5 MOVE                             R10 R1
        6 GETIMPORT                        R9 K3 [tostring]
        8 CALL                             R9 1 1
        9 MOVE                             R5 R9
       10 LOADK                            R6 K4 ["/passes/"]
       11 FASTCALL1                        TOSTRING R1 ; [+3]
       12 MOVE                             R10 R1
       13 GETIMPORT                        R9 K3 [tostring]
       15 CALL                             R9 1 1
       16 MOVE                             R7 R9
       17 LOADK                            R8 K5 ["/configure"]
       18 CONCAT                           R2 R3 R8
       19 RETURN                           R2 1

PROTO_15:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R3 R6 K0 ["wwwPath"]
        3 LOADK                            R4 K1 ["groups/"]
        4 FASTCALL1                        TOSTRING R1 ; [+3]
        5 MOVE                             R6 R1
        6 GETIMPORT                        R5 K3 [tostring]
        8 CALL                             R5 1 1
        9 CONCAT                           R2 R3 R5
       10 RETURN                           R2 1

PROTO_16:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R3 R6 K0 ["createPath"]
        3 LOADK                            R4 K1 ["store/asset/"]
        4 FASTCALL1                        TOSTRING R1 ; [+3]
        5 MOVE                             R6 R1
        6 GETIMPORT                        R5 K3 [tostring]
        8 CALL                             R5 1 1
        9 CONCAT                           R2 R3 R5
       10 RETURN                           R2 1

PROTO_17:
        0 FASTCALL1                        TOSTRING R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [tostring]
        4 CALL                             R2 1 1
        5 GETUPVAL                         R4 0
        6 GETTABLE                         R3 R4 R0
        7 JUMPIFNOT                        R3 ; [+5]
        8 GETUPVAL                         R4 0
        9 GETTABLE                         R3 R4 R0
       10 MOVE                             R4 R2
       11 CALL                             R3 1 -1
       12 RETURN                           R3 -1
       13 LOADK                            R3 K2 [""]
       14 RETURN                           R3 1

PROTO_18:
        0 LOADK                            R1 K0 [""]
        1 JUMPIFNOTEQKS                    R0 K1 ["User"] ; [+7]
        3 GETUPVAL                         R2 0
        4 MOVE                             R3 R1
        5 LOADK                            R4 K2 ["RoundIcon"]
        6 CALL                             R2 2 1
        7 MOVE                             R1 R2
        8 JUMP                             ; [+5]
        9 GETUPVAL                         R2 0
       10 MOVE                             R3 R1
       11 LOADK                            R4 K3 ["SquareIcon"]
       12 CALL                             R2 2 1
       13 MOVE                             R1 R2
       14 JUMPIFNOTEQKS                    R0 K4 ["Script"] ; [+6]
       16 GETUPVAL                         R2 0
       17 MOVE                             R3 R1
       18 LOADK                            R4 K5 ["ScriptIcon"]
       19 CALL                             R2 2 1
       20 MOVE                             R1 R2
       21 RETURN                           R1 1

PROTO_19:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["Bubble"]
        5 GETTABLEKS                       R1 R2 K1 ["viewBasicSettingsLink"]
        7 JUMPIFNOT                        R1 ; [+11]
        8 MOVE                             R2 R0
        9 GETUPVAL                         R3 1
       10 LOADK                            R5 K0 ["Bubble"]
       11 LOADK                            R6 K2 ["ViewOnCreatorDashboard"]
       12 NAMECALL                         R3 R3 K3 ["getText"]
       14 CALL                             R3 3 -1
       15 FASTCALL                         TABLE_INSERT ; [+2]
       16 GETIMPORT                        R1 K6 [table.insert]
       18 CALL                             R1 -1 0
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R2 R3 K0 ["Bubble"]
       22 GETTABLEKS                       R1 R2 K7 ["viewOnRobloxLink"]
       24 JUMPIFNOT                        R1 ; [+11]
       25 MOVE                             R2 R0
       26 GETUPVAL                         R3 1
       27 LOADK                            R5 K0 ["Bubble"]
       28 LOADK                            R6 K8 ["ViewOnRoblox"]
       29 NAMECALL                         R3 R3 K3 ["getText"]
       31 CALL                             R3 3 -1
       32 FASTCALL                         TABLE_INSERT ; [+2]
       33 GETIMPORT                        R1 K6 [table.insert]
       35 CALL                             R1 -1 0
       36 RETURN                           R0 1

PROTO_20:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["Bubble"]
        5 GETTABLEKS                       R1 R2 K1 ["viewBasicSettingsLink"]
        7 JUMPIFNOT                        R1 ; [+31]
        8 DUPTABLE                         R3 K6 [{"type", "link", "errorHeader", "errorMsg"}]
        9 LOADK                            R4 K7 ["viewBasicSetting"]
       10 SETTABLEKS                       R4 R3 K2 ["type"]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K0 ["Bubble"]
       15 GETTABLEKS                       R4 R5 K1 ["viewBasicSettingsLink"]
       17 SETTABLEKS                       R4 R3 K3 ["link"]
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R5 R6 K0 ["Bubble"]
       22 GETTABLEKS                       R4 R5 K8 ["linkErrorHeader"]
       24 SETTABLEKS                       R4 R3 K4 ["errorHeader"]
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R5 R6 K0 ["Bubble"]
       29 GETTABLEKS                       R4 R5 K9 ["linkErrorBody"]
       31 SETTABLEKS                       R4 R3 K5 ["errorMsg"]
       33 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       35 MOVE                             R2 R0
       36 GETIMPORT                        R1 K12 [table.insert]
       38 CALL                             R1 2 0
       39 GETUPVAL                         R3 0
       40 GETTABLEKS                       R2 R3 K0 ["Bubble"]
       42 GETTABLEKS                       R1 R2 K13 ["viewOnRobloxLink"]
       44 JUMPIFNOT                        R1 ; [+31]
       45 DUPTABLE                         R3 K6 [{"type", "link", "errorHeader", "errorMsg"}]
       46 LOADK                            R4 K14 ["viewOnRoblox"]
       47 SETTABLEKS                       R4 R3 K2 ["type"]
       49 GETUPVAL                         R6 0
       50 GETTABLEKS                       R5 R6 K0 ["Bubble"]
       52 GETTABLEKS                       R4 R5 K13 ["viewOnRobloxLink"]
       54 SETTABLEKS                       R4 R3 K3 ["link"]
       56 GETUPVAL                         R6 0
       57 GETTABLEKS                       R5 R6 K0 ["Bubble"]
       59 GETTABLEKS                       R4 R5 K8 ["linkErrorHeader"]
       61 SETTABLEKS                       R4 R3 K4 ["errorHeader"]
       63 GETUPVAL                         R6 0
       64 GETTABLEKS                       R5 R6 K0 ["Bubble"]
       66 GETTABLEKS                       R4 R5 K9 ["linkErrorBody"]
       68 SETTABLEKS                       R4 R3 K5 ["errorMsg"]
       70 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       72 MOVE                             R2 R0
       73 GETIMPORT                        R1 K12 [table.insert]
       75 CALL                             R1 2 0
       76 RETURN                           R0 1

PROTO_21:
        0 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R5 0
        1 LOADK                            R7 K0 ["deeplink"]
        2 MOVE                             R8 R0
        3 MOVE                             R9 R1
        4 GETUPVAL                         R10 1
        5 GETUPVAL                         R11 2
        6 NAMECALL                         R5 R5 K1 ["report"]
        8 CALL                             R5 6 0
        9 JUMPIFNOT                        R3 ; [+9]
       10 JUMPIFNOT                        R4 ; [+8]
       11 GETUPVAL                         R6 3
       12 GETTABLEKS                       R5 R6 K2 ["openLink"]
       14 MOVE                             R6 R2
       15 MOVE                             R7 R3
       16 MOVE                             R8 R4
       17 CALL                             R5 3 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R6 3
       20 GETTABLEKS                       R5 R6 K3 ["DEPRECATED_openBrowserLink"]
       22 MOVE                             R6 R2
       23 CALL                             R5 1 0
       24 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R2 0
        1 LOADB                            R3 0
        2 CALL                             R2 1 0
        3 GETUPVAL                         R3 1
        4 GETTABLE                         R2 R3 R1
        5 JUMPIFNOT                        R2 ; [+23]
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R5 3
        8 GETTABLEKS                       R4 R5 K0 ["Bubble"]
       10 GETTABLEKS                       R3 R4 K1 ["eventType"]
       12 GETUPVAL                         R6 1
       13 GETTABLE                         R5 R6 R1
       14 GETTABLEKS                       R4 R5 K2 ["type"]
       16 GETUPVAL                         R7 1
       17 GETTABLE                         R6 R7 R1
       18 GETTABLEKS                       R5 R6 K3 ["link"]
       20 GETUPVAL                         R8 1
       21 GETTABLE                         R7 R8 R1
       22 GETTABLEKS                       R6 R7 K4 ["errorHeader"]
       24 GETUPVAL                         R9 1
       25 GETTABLE                         R8 R9 R1
       26 GETTABLEKS                       R7 R8 K5 ["errorMsg"]
       28 CALL                             R2 5 0
       29 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["enabled"]
        3 JUMPIF                           R0 ; [+3]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["Bubble"]
        4 GETTABLEKS                       R1 R2 K1 ["eventType"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K0 ["Bubble"]
        9 GETTABLEKS                       R2 R3 K2 ["iconType"]
       11 GETUPVAL                         R3 2
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R5 R6 K0 ["Bubble"]
       15 GETTABLEKS                       R4 R5 K3 ["universeId"]
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R6 R7 K0 ["Bubble"]
       20 GETTABLEKS                       R5 R6 K4 ["iconId"]
       22 CALL                             R3 2 1
       23 LOADNIL                          R4
       24 LOADNIL                          R5
       25 CALL                             R0 5 0
       26 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["Bubble"]
        4 GETTABLEKS                       R1 R2 K1 ["eventType"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K0 ["Bubble"]
        9 GETTABLEKS                       R2 R3 K2 ["iconType"]
       11 GETUPVAL                         R3 2
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R5 R6 K0 ["Bubble"]
       15 GETTABLEKS                       R4 R5 K3 ["universeId"]
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R6 R7 K0 ["Bubble"]
       20 GETTABLEKS                       R5 R6 K4 ["iconId"]
       22 CALL                             R3 2 1
       23 LOADNIL                          R4
       24 LOADNIL                          R5
       25 CALL                             R0 5 0
       26 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["Bubble"]
        4 GETTABLEKS                       R1 R2 K1 ["eventType"]
        6 LOADK                            R2 K2 ["actorProfile"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R3 R4 K3 ["User"]
       10 GETUPVAL                         R7 1
       11 GETTABLEKS                       R6 R7 K0 ["Bubble"]
       13 GETTABLEKS                       R5 R6 K4 ["universeId"]
       15 FASTCALL1                        TOSTRING R5 ; [+2]
       16 GETIMPORT                        R4 K6 [tostring]
       18 CALL                             R4 1 1
       19 GETUPVAL                         R8 1
       20 GETTABLEKS                       R7 R8 K0 ["Bubble"]
       22 GETTABLEKS                       R6 R7 K7 ["actorId"]
       24 FASTCALL1                        TOSTRING R6 ; [+2]
       25 GETIMPORT                        R5 K6 [tostring]
       27 CALL                             R5 1 1
       28 CALL                             R3 2 1
       29 LOADNIL                          R4
       30 LOADNIL                          R5
       31 CALL                             R0 5 0
       32 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Bubble"]
        3 GETTABLEKS                       R1 R2 K1 ["translationFunc"]
        5 JUMPIFNOT                        R1 ; [+8]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K0 ["Bubble"]
        9 GETTABLEKS                       R1 R2 K1 ["translationFunc"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 -1
       13 RETURN                           R1 -1
       14 NEWTABLE                         R1 0 1
       16 NEWTABLE                         R2 0 2
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R4 R5 K0 ["Bubble"]
       21 GETTABLEKS                       R3 R4 K2 ["translation"]
       23 LOADK                            R4 K3 ["TextLabel"]
       24 SETLIST                          R2 R3 2 [1]
       26 SETLIST                          R1 R2 1 [1]
       28 RETURN                           R1 1

PROTO_31:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["enabled"]
        3 JUMPIFNOT                        R1 ; [+9]
        4 JUMPIFNOTEQKS                    R0 K1 ["scripts"] ; [+8]
        6 GETUPVAL                         R1 1
        7 DUPTABLE                         R2 K3 [{"showMoreScripts"}]
        8 LOADB                            R3 1
        9 SETTABLEKS                       R3 R2 K2 ["showMoreScripts"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R1 R2 K0 ["enabled"]
       16 JUMPIFNOT                        R1 ; [+23]
       17 GETUPVAL                         R1 2
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R3 R4 K4 ["Bubble"]
       21 GETTABLEKS                       R2 R3 K5 ["eventType"]
       23 GETUPVAL                         R5 3
       24 GETTABLEKS                       R4 R5 K4 ["Bubble"]
       26 GETTABLEKS                       R3 R4 K6 ["iconType"]
       28 MOVE                             R4 R0
       29 GETUPVAL                         R7 3
       30 GETTABLEKS                       R6 R7 K4 ["Bubble"]
       32 GETTABLEKS                       R5 R6 K7 ["linkErrorHeader"]
       34 GETUPVAL                         R8 3
       35 GETTABLEKS                       R7 R8 K4 ["Bubble"]
       37 GETTABLEKS                       R6 R7 K8 ["linkErrorBody"]
       39 CALL                             R1 5 0
       40 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["use"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K1 ["useContext"]
       11 GETUPVAL                         R4 3
       12 CALL                             R3 1 1
       13 GETTABLEKS                       R4 R3 K2 ["usePlaceAndUniverseId"]
       15 CALL                             R4 0 2
       16 GETUPVAL                         R7 2
       17 GETTABLEKS                       R6 R7 K3 ["useState"]
       19 LOADB                            R7 0
       20 CALL                             R6 1 2
       21 GETUPVAL                         R8 4
       22 LOADB                            R9 0
       23 CALL                             R8 1 1
       24 LOADB                            R9 1
       25 GETTABLEKS                       R11 R0 K4 ["Bubble"]
       27 GETTABLEKS                       R10 R11 K5 ["viewBasicSettingsLink"]
       29 JUMPIFNOTEQKNIL                  R10 ; [+9]
       31 GETTABLEKS                       R11 R0 K4 ["Bubble"]
       33 GETTABLEKS                       R10 R11 K6 ["viewOnRobloxLink"]
       35 JUMPIFNOTEQKNIL                  R10 ; [+2]
       37 LOADB                            R9 0 +1
       38 LOADB                            R9 1
       39 GETUPVAL                         R11 2
       40 GETTABLEKS                       R10 R11 K7 ["useMemo"]
       42 NEWCLOSURE                       R11 P0
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R1
       45 NEWTABLE                         R12 0 3
       47 GETTABLEKS                       R14 R0 K4 ["Bubble"]
       49 GETTABLEKS                       R13 R14 K5 ["viewBasicSettingsLink"]
       51 GETTABLEKS                       R15 R0 K4 ["Bubble"]
       53 GETTABLEKS                       R14 R15 K8 ["viewBasicSettingsLinkText"]
       55 GETTABLEKS                       R16 R0 K4 ["Bubble"]
       57 GETTABLEKS                       R15 R16 K6 ["viewOnRobloxLink"]
       59 SETLIST                          R12 R13 3 [1]
       61 CALL                             R10 2 1
       62 GETUPVAL                         R12 2
       63 GETTABLEKS                       R11 R12 K7 ["useMemo"]
       65 NEWCLOSURE                       R12 P1
       66 CAPTURE                          VAL R0
       67 NEWTABLE                         R13 0 4
       69 GETTABLEKS                       R15 R0 K4 ["Bubble"]
       71 GETTABLEKS                       R14 R15 K5 ["viewBasicSettingsLink"]
       73 GETTABLEKS                       R16 R0 K4 ["Bubble"]
       75 GETTABLEKS                       R15 R16 K6 ["viewOnRobloxLink"]
       77 GETTABLEKS                       R17 R0 K4 ["Bubble"]
       79 GETTABLEKS                       R16 R17 K9 ["linkErrorHeader"]
       81 GETTABLEKS                       R18 R0 K4 ["Bubble"]
       83 GETTABLEKS                       R17 R18 K10 ["linkErrorBody"]
       85 SETLIST                          R13 R14 4 [1]
       87 CALL                             R11 2 1
       88 DUPCLOSURE                       R12 K11 [PROTO_21]
       89 GETUPVAL                         R14 2
       90 GETTABLEKS                       R13 R14 K12 ["useCallback"]
       92 NEWCLOSURE                       R14 P3
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R5
       96 CAPTURE                          VAL R3
       97 NEWTABLE                         R15 0 5
       99 GETTABLEKS                       R16 R3 K13 ["openLink"]
      101 GETTABLEKS                       R17 R3 K14 ["DEPRECATED_openBrowserLink"]
      103 MOVE                             R18 R2
      104 MOVE                             R19 R4
      105 MOVE                             R20 R5
      106 SETLIST                          R15 R16 5 [1]
      108 CALL                             R13 2 1
      109 MOVE                             R12 R13
      110 NEWCLOSURE                       R13 P4
      111 CAPTURE                          VAL R7
      112 CAPTURE                          VAL R11
      113 CAPTURE                          REF R12
      114 CAPTURE                          VAL R0
      115 NEWCLOSURE                       R14 P5
      116 CAPTURE                          VAL R7
      117 NEWCLOSURE                       R15 P6
      118 CAPTURE                          VAL R7
      119 GETUPVAL                         R17 2
      120 GETTABLEKS                       R16 R17 K15 ["useEffect"]
      122 NEWCLOSURE                       R17 P7
      123 CAPTURE                          VAL R8
      124 CAPTURE                          VAL R7
      125 NEWTABLE                         R18 0 1
      127 GETTABLEKS                       R19 R8 K16 ["enabled"]
      129 SETLIST                          R18 R19 1 [1]
      131 CALL                             R16 2 0
      132 GETUPVAL                         R17 5
      133 GETTABLEKS                       R19 R0 K4 ["Bubble"]
      135 GETTABLEKS                       R18 R19 K17 ["iconType"]
      137 GETTABLE                         R16 R17 R18
      138 GETTABLEKS                       R19 R0 K4 ["Bubble"]
      140 GETTABLEKS                       R18 R19 K17 ["iconType"]
      142 GETTABLEKS                       R20 R0 K4 ["Bubble"]
      144 GETTABLEKS                       R19 R20 K18 ["iconId"]
      146 FASTCALL1                        TOSTRING R19 ; [+3]
      147 MOVE                             R21 R19
      148 GETIMPORT                        R20 K20 [tostring]
      150 CALL                             R20 1 1
      151 GETUPVAL                         R22 6
      152 GETTABLE                         R21 R22 R18
      153 JUMPIFNOT                        R21 ; [+6]
      154 GETUPVAL                         R22 6
      155 GETTABLE                         R21 R22 R18
      156 MOVE                             R22 R20
      157 CALL                             R21 1 1
      158 MOVE                             R17 R21
      159 JUMP                             ; [+1]
      160 LOADK                            R17 K21 [""]
      161 LOADNIL                          R18
      162 JUMPIFNOT                        R16 ; [+114]
      163 JUMPIFEQKS                       R17 K21 [""] ; [+58]
      165 GETUPVAL                         R20 2
      166 GETTABLEKS                       R19 R20 K22 ["createElement"]
      168 LOADK                            R20 K23 ["ImageButton"]
      169 NEWTABLE                         R21 4 0
      171 GETUPVAL                         R23 2
      172 GETTABLEKS                       R22 R23 K24 ["Tag"]
      174 GETTABLEKS                       R25 R0 K4 ["Bubble"]
      176 GETTABLEKS                       R24 R25 K17 ["iconType"]
      178 LOADK                            R25 K21 [""]
      179 JUMPIFNOTEQKS                    R24 K25 ["User"] ; [+7]
      181 GETUPVAL                         R26 7
      182 MOVE                             R27 R25
      183 LOADK                            R28 K26 ["RoundIcon"]
      184 CALL                             R26 2 1
      185 MOVE                             R25 R26
      186 JUMP                             ; [+5]
      187 GETUPVAL                         R26 7
      188 MOVE                             R27 R25
      189 LOADK                            R28 K27 ["SquareIcon"]
      190 CALL                             R26 2 1
      191 MOVE                             R25 R26
      192 JUMPIFNOTEQKS                    R24 K28 ["Script"] ; [+6]
      194 GETUPVAL                         R26 7
      195 MOVE                             R27 R25
      196 LOADK                            R28 K29 ["ScriptIcon"]
      197 CALL                             R26 2 1
      198 MOVE                             R25 R26
      199 MOVE                             R23 R25
      200 SETTABLE                         R23 R21 R22
      201 SETTABLEKS                       R17 R21 K30 ["Image"]
      203 GETUPVAL                         R22 8
      204 NAMECALL                         R22 R22 K31 ["getNextOrder"]
      206 CALL                             R22 1 1
      207 SETTABLEKS                       R22 R21 K32 ["LayoutOrder"]
      209 GETUPVAL                         R24 2
      210 GETTABLEKS                       R23 R24 K33 ["Event"]
      212 GETTABLEKS                       R22 R23 K34 ["Activated"]
      214 NEWCLOSURE                       R23 P8
      215 CAPTURE                          REF R12
      216 CAPTURE                          VAL R0
      217 CAPTURE                          VAL R16
      218 SETTABLE                         R23 R21 R22
      219 CALL                             R19 2 1
      220 MOVE                             R18 R19
      221 JUMP                             ; [+148]
      222 GETUPVAL                         R20 2
      223 GETTABLEKS                       R19 R20 K22 ["createElement"]
      225 LOADK                            R20 K23 ["ImageButton"]
      226 NEWTABLE                         R21 4 0
      228 GETUPVAL                         R23 2
      229 GETTABLEKS                       R22 R23 K24 ["Tag"]
      231 GETTABLEKS                       R25 R0 K4 ["Bubble"]
      233 GETTABLEKS                       R24 R25 K17 ["iconType"]
      235 LOADK                            R25 K21 [""]
      236 JUMPIFNOTEQKS                    R24 K25 ["User"] ; [+7]
      238 GETUPVAL                         R26 7
      239 MOVE                             R27 R25
      240 LOADK                            R28 K26 ["RoundIcon"]
      241 CALL                             R26 2 1
      242 MOVE                             R25 R26
      243 JUMP                             ; [+5]
      244 GETUPVAL                         R26 7
      245 MOVE                             R27 R25
      246 LOADK                            R28 K27 ["SquareIcon"]
      247 CALL                             R26 2 1
      248 MOVE                             R25 R26
      249 JUMPIFNOTEQKS                    R24 K28 ["Script"] ; [+6]
      251 GETUPVAL                         R26 7
      252 MOVE                             R27 R25
      253 LOADK                            R28 K29 ["ScriptIcon"]
      254 CALL                             R26 2 1
      255 MOVE                             R25 R26
      256 MOVE                             R23 R25
      257 SETTABLE                         R23 R21 R22
      258 GETUPVAL                         R22 8
      259 NAMECALL                         R22 R22 K31 ["getNextOrder"]
      261 CALL                             R22 1 1
      262 SETTABLEKS                       R22 R21 K32 ["LayoutOrder"]
      264 GETUPVAL                         R24 2
      265 GETTABLEKS                       R23 R24 K33 ["Event"]
      267 GETTABLEKS                       R22 R23 K34 ["Activated"]
      269 NEWCLOSURE                       R23 P9
      270 CAPTURE                          REF R12
      271 CAPTURE                          VAL R0
      272 CAPTURE                          VAL R16
      273 SETTABLE                         R23 R21 R22
      274 CALL                             R19 2 1
      275 MOVE                             R18 R19
      276 JUMP                             ; [+93]
      277 JUMPIFEQKS                       R17 K21 [""] ; [+48]
      279 GETUPVAL                         R20 2
      280 GETTABLEKS                       R19 R20 K22 ["createElement"]
      282 LOADK                            R20 K35 ["ImageLabel"]
      283 NEWTABLE                         R21 4 0
      285 GETUPVAL                         R23 2
      286 GETTABLEKS                       R22 R23 K24 ["Tag"]
      288 GETTABLEKS                       R25 R0 K4 ["Bubble"]
      290 GETTABLEKS                       R24 R25 K17 ["iconType"]
      292 LOADK                            R25 K21 [""]
      293 JUMPIFNOTEQKS                    R24 K25 ["User"] ; [+7]
      295 GETUPVAL                         R26 7
      296 MOVE                             R27 R25
      297 LOADK                            R28 K26 ["RoundIcon"]
      298 CALL                             R26 2 1
      299 MOVE                             R25 R26
      300 JUMP                             ; [+5]
      301 GETUPVAL                         R26 7
      302 MOVE                             R27 R25
      303 LOADK                            R28 K27 ["SquareIcon"]
      304 CALL                             R26 2 1
      305 MOVE                             R25 R26
      306 JUMPIFNOTEQKS                    R24 K28 ["Script"] ; [+6]
      308 GETUPVAL                         R26 7
      309 MOVE                             R27 R25
      310 LOADK                            R28 K29 ["ScriptIcon"]
      311 CALL                             R26 2 1
      312 MOVE                             R25 R26
      313 MOVE                             R23 R25
      314 SETTABLE                         R23 R21 R22
      315 SETTABLEKS                       R17 R21 K30 ["Image"]
      317 GETUPVAL                         R22 8
      318 NAMECALL                         R22 R22 K31 ["getNextOrder"]
      320 CALL                             R22 1 1
      321 SETTABLEKS                       R22 R21 K32 ["LayoutOrder"]
      323 CALL                             R19 2 1
      324 MOVE                             R18 R19
      325 JUMP                             ; [+44]
      326 GETUPVAL                         R20 2
      327 GETTABLEKS                       R19 R20 K22 ["createElement"]
      329 LOADK                            R20 K35 ["ImageLabel"]
      330 NEWTABLE                         R21 2 0
      332 GETUPVAL                         R23 2
      333 GETTABLEKS                       R22 R23 K24 ["Tag"]
      335 GETTABLEKS                       R25 R0 K4 ["Bubble"]
      337 GETTABLEKS                       R24 R25 K17 ["iconType"]
      339 LOADK                            R25 K21 [""]
      340 JUMPIFNOTEQKS                    R24 K25 ["User"] ; [+7]
      342 GETUPVAL                         R26 7
      343 MOVE                             R27 R25
      344 LOADK                            R28 K26 ["RoundIcon"]
      345 CALL                             R26 2 1
      346 MOVE                             R25 R26
      347 JUMP                             ; [+5]
      348 GETUPVAL                         R26 7
      349 MOVE                             R27 R25
      350 LOADK                            R28 K27 ["SquareIcon"]
      351 CALL                             R26 2 1
      352 MOVE                             R25 R26
      353 JUMPIFNOTEQKS                    R24 K28 ["Script"] ; [+6]
      355 GETUPVAL                         R26 7
      356 MOVE                             R27 R25
      357 LOADK                            R28 K29 ["ScriptIcon"]
      358 CALL                             R26 2 1
      359 MOVE                             R25 R26
      360 MOVE                             R23 R25
      361 SETTABLE                         R23 R21 R22
      362 GETUPVAL                         R22 8
      363 NAMECALL                         R22 R22 K31 ["getNextOrder"]
      365 CALL                             R22 1 1
      366 SETTABLEKS                       R22 R21 K32 ["LayoutOrder"]
      368 CALL                             R19 2 1
      369 MOVE                             R18 R19
      370 NEWCLOSURE                       R19 P10
      371 CAPTURE                          REF R12
      372 CAPTURE                          VAL R0
      373 CAPTURE                          UPVAL U5
      374 GETUPVAL                         R21 2
      375 GETTABLEKS                       R20 R21 K3 ["useState"]
      377 DUPTABLE                         R21 K37 [{"showMoreScripts"}]
      378 LOADB                            R22 0
      379 SETTABLEKS                       R22 R21 K36 ["showMoreScripts"]
      381 CALL                             R20 1 2
      382 NEWCLOSURE                       R22 P11
      383 CAPTURE                          VAL R0
      384 NEWCLOSURE                       R23 P12
      385 CAPTURE                          VAL R8
      386 CAPTURE                          VAL R21
      387 CAPTURE                          REF R12
      388 CAPTURE                          VAL R0
      389 NEWTABLE                         R24 0 1
      391 GETUPVAL                         R26 2
      392 GETTABLEKS                       R25 R26 K22 ["createElement"]
      394 LOADK                            R26 K38 ["UIListLayout"]
      395 NEWTABLE                         R27 4 0
      397 GETUPVAL                         R29 2
      398 GETTABLEKS                       R28 R29 K24 ["Tag"]
      400 GETUPVAL                         R29 7
      401 LOADK                            R30 K39 ["X-Fit"]
      402 CALL                             R29 1 1
      403 SETTABLE                         R29 R27 R28
      404 GETIMPORT                        R28 K43 [Enum.FillDirection.Vertical]
      406 SETTABLEKS                       R28 R27 K41 ["FillDirection"]
      408 GETIMPORT                        R28 K45 [Enum.SortOrder.LayoutOrder]
      410 SETTABLEKS                       R28 R27 K44 ["SortOrder"]
      412 CALL                             R25 2 -1
      413 SETLIST                          R24 R25 -1 [1]
      415 GETIMPORT                        R25 K47 [ipairs]
      417 MOVE                             R26 R22
      418 MOVE                             R27 R20
      419 CALL                             R26 1 -1
      420 CALL                             R25 -1 3
      421 FORGPREP_INEXT                   R25
      422 FASTCALL1                        TABLE_UNPACK R29 ; [+3]
      423 MOVE                             R31 R29
      424 GETIMPORT                        R30 K49 [unpack]
      426 CALL                             R30 1 5
      427 JUMPIFNOTEQKS                    R31 K50 ["TextLabel"] ; [+33]
      429 MOVE                             R36 R24
      430 GETUPVAL                         R38 2
      431 GETTABLEKS                       R37 R38 K22 ["createElement"]
      433 LOADK                            R38 K50 ["TextLabel"]
      434 NEWTABLE                         R39 4 0
      436 GETUPVAL                         R41 2
      437 GETTABLEKS                       R40 R41 K24 ["Tag"]
      439 GETUPVAL                         R41 7
      440 LOADK                            R42 K39 ["X-Fit"]
      441 MOVE                             R43 R32
      442 CALL                             R41 2 1
      443 SETTABLE                         R41 R39 R40
      444 SETTABLEKS                       R30 R39 K51 ["Text"]
      446 LOADB                            R40 1
      447 SETTABLEKS                       R40 R39 K52 ["TextWrapped"]
      449 GETUPVAL                         R40 8
      450 NAMECALL                         R40 R40 K31 ["getNextOrder"]
      452 CALL                             R40 1 1
      453 SETTABLEKS                       R40 R39 K32 ["LayoutOrder"]
      455 CALL                             R37 2 -1
      456 FASTCALL                         TABLE_INSERT ; [+2]
      457 GETIMPORT                        R35 K55 [table.insert]
      459 CALL                             R35 -1 0
      460 JUMP                             ; [+191]
      461 GETUPVAL                         R36 2
      462 GETTABLEKS                       R35 R36 K22 ["createElement"]
      464 LOADK                            R36 K56 ["TextButton"]
      465 NEWTABLE                         R37 8 0
      467 GETUPVAL                         R39 2
      468 GETTABLEKS                       R38 R39 K24 ["Tag"]
      470 LOADK                            R39 K39 ["X-Fit"]
      471 SETTABLE                         R39 R37 R38
      472 SETTABLEKS                       R30 R37 K51 ["Text"]
      474 LOADN                            R38 1
      475 SETTABLEKS                       R38 R37 K57 ["BackgroundTransparency"]
      477 GETUPVAL                         R38 8
      478 NAMECALL                         R38 R38 K31 ["getNextOrder"]
      480 CALL                             R38 1 1
      481 SETTABLEKS                       R38 R37 K32 ["LayoutOrder"]
      483 GETUPVAL                         R40 2
      484 GETTABLEKS                       R39 R40 K33 ["Event"]
      486 GETTABLEKS                       R38 R39 K34 ["Activated"]
      488 NEWCLOSURE                       R39 P13
      489 CAPTURE                          VAL R23
      490 CAPTURE                          VAL R33
      491 SETTABLE                         R39 R37 R38
      492 CALL                             R35 2 1
      493 LOADNIL                          R36
      494 JUMPIFNOT                        R34 ; [+38]
      495 FASTCALL1                        TABLE_UNPACK R34 ; [+3]
      496 MOVE                             R38 R34
      497 GETIMPORT                        R37 K49 [unpack]
      499 CALL                             R37 1 3
      500 GETUPVAL                         R41 2
      501 GETTABLEKS                       R40 R41 K22 ["createElement"]
      503 LOADK                            R41 K56 ["TextButton"]
      504 NEWTABLE                         R42 8 0
      506 GETUPVAL                         R44 2
      507 GETTABLEKS                       R43 R44 K24 ["Tag"]
      509 LOADK                            R44 K39 ["X-Fit"]
      510 SETTABLE                         R44 R42 R43
      511 SETTABLEKS                       R37 R42 K51 ["Text"]
      513 LOADN                            R43 1
      514 SETTABLEKS                       R43 R42 K57 ["BackgroundTransparency"]
      516 GETUPVAL                         R43 8
      517 NAMECALL                         R43 R43 K31 ["getNextOrder"]
      519 CALL                             R43 1 1
      520 SETTABLEKS                       R43 R42 K32 ["LayoutOrder"]
      522 GETUPVAL                         R45 2
      523 GETTABLEKS                       R44 R45 K33 ["Event"]
      525 GETTABLEKS                       R43 R44 K34 ["Activated"]
      527 NEWCLOSURE                       R44 P14
      528 CAPTURE                          VAL R23
      529 CAPTURE                          VAL R39
      530 SETTABLE                         R44 R42 R43
      531 CALL                             R40 2 1
      532 MOVE                             R36 R40
      533 MOVE                             R38 R24
      534 GETUPVAL                         R40 2
      535 GETTABLEKS                       R39 R40 K22 ["createElement"]
      537 LOADK                            R40 K58 ["Frame"]
      538 NEWTABLE                         R41 2 0
      540 GETUPVAL                         R43 2
      541 GETTABLEKS                       R42 R43 K24 ["Tag"]
      543 GETUPVAL                         R43 7
      544 LOADK                            R44 K59 ["X-FitY"]
      545 LOADK                            R45 K60 ["CX-Invisible"]
      546 MOVE                             R46 R32
      547 CALL                             R43 3 1
      548 SETTABLE                         R43 R41 R42
      549 GETUPVAL                         R42 8
      550 NAMECALL                         R42 R42 K31 ["getNextOrder"]
      552 CALL                             R42 1 1
      553 SETTABLEKS                       R42 R41 K32 ["LayoutOrder"]
      555 NEWTABLE                         R42 0 3
      557 GETUPVAL                         R44 2
      558 GETTABLEKS                       R43 R44 K22 ["createElement"]
      560 LOADK                            R44 K38 ["UIListLayout"]
      561 NEWTABLE                         R45 4 0
      563 GETUPVAL                         R47 2
      564 GETTABLEKS                       R46 R47 K24 ["Tag"]
      566 GETUPVAL                         R47 7
      567 LOADK                            R48 K39 ["X-Fit"]
      568 CALL                             R47 1 1
      569 SETTABLE                         R47 R45 R46
      570 GETIMPORT                        R46 K62 [Enum.FillDirection.Horizontal]
      572 SETTABLEKS                       R46 R45 K41 ["FillDirection"]
      574 GETIMPORT                        R46 K45 [Enum.SortOrder.LayoutOrder]
      576 SETTABLEKS                       R46 R45 K44 ["SortOrder"]
      578 CALL                             R43 2 1
      579 GETUPVAL                         R45 2
      580 GETTABLEKS                       R44 R45 K22 ["createElement"]
      582 LOADK                            R45 K50 ["TextLabel"]
      583 NEWTABLE                         R46 2 0
      585 GETUPVAL                         R48 2
      586 GETTABLEKS                       R47 R48 K24 ["Tag"]
      588 LOADK                            R48 K39 ["X-Fit"]
      589 SETTABLE                         R48 R46 R47
      590 LOADK                            R47 K63 ["• "]
      591 SETTABLEKS                       R47 R46 K51 ["Text"]
      593 CALL                             R44 2 1
      594 GETUPVAL                         R46 2
      595 GETTABLEKS                       R45 R46 K22 ["createElement"]
      597 LOADK                            R46 K58 ["Frame"]
      598 NEWTABLE                         R47 2 0
      600 GETUPVAL                         R49 2
      601 GETTABLEKS                       R48 R49 K24 ["Tag"]
      603 GETUPVAL                         R49 7
      604 LOADK                            R50 K39 ["X-Fit"]
      605 LOADK                            R51 K60 ["CX-Invisible"]
      606 CALL                             R49 2 1
      607 SETTABLE                         R49 R47 R48
      608 GETUPVAL                         R48 8
      609 NAMECALL                         R48 R48 K31 ["getNextOrder"]
      611 CALL                             R48 1 1
      612 SETTABLEKS                       R48 R47 K32 ["LayoutOrder"]
      614 NEWTABLE                         R48 2 1
      616 GETUPVAL                         R50 2
      617 GETTABLEKS                       R49 R50 K22 ["createElement"]
      619 LOADK                            R50 K38 ["UIListLayout"]
      620 NEWTABLE                         R51 4 0
      622 GETUPVAL                         R53 2
      623 GETTABLEKS                       R52 R53 K24 ["Tag"]
      625 GETUPVAL                         R53 7
      626 LOADK                            R54 K39 ["X-Fit"]
      627 CALL                             R53 1 1
      628 SETTABLE                         R53 R51 R52
      629 GETIMPORT                        R52 K62 [Enum.FillDirection.Horizontal]
      631 SETTABLEKS                       R52 R51 K41 ["FillDirection"]
      633 GETIMPORT                        R52 K45 [Enum.SortOrder.LayoutOrder]
      635 SETTABLEKS                       R52 R51 K44 ["SortOrder"]
      637 CALL                             R49 2 1
      638 SETLIST                          R48 R49 1 [1]
      640 SETTABLEKS                       R35 R48 K64 ["LinkButton"]
      642 SETTABLEKS                       R36 R48 K65 ["ShowMore"]
      644 CALL                             R45 3 -1
      645 SETLIST                          R42 R43 -1 [1]
      647 CALL                             R39 3 -1
      648 FASTCALL                         TABLE_INSERT ; [+2]
      649 GETIMPORT                        R37 K55 [table.insert]
      651 CALL                             R37 -1 0
      652 FORGLOOP                         R25 2 [inext] ; [-231]
      654 GETUPVAL                         R26 2
      655 GETTABLEKS                       R25 R26 K22 ["createElement"]
      657 LOADK                            R26 K58 ["Frame"]
      658 NEWTABLE                         R27 2 0
      660 GETUPVAL                         R29 2
      661 GETTABLEKS                       R28 R29 K24 ["Tag"]
      663 GETUPVAL                         R29 7
      664 LOADK                            R30 K66 ["X-Fill"]
      665 LOADK                            R31 K60 ["CX-Invisible"]
      666 CALL                             R29 2 1
      667 SETTABLE                         R29 R27 R28
      668 GETUPVAL                         R28 8
      669 NAMECALL                         R28 R28 K31 ["getNextOrder"]
      671 CALL                             R28 1 1
      672 SETTABLEKS                       R28 R27 K32 ["LayoutOrder"]
      674 MOVE                             R28 R24
      675 CALL                             R25 3 1
      676 GETUPVAL                         R27 2
      677 GETTABLEKS                       R26 R27 K22 ["createElement"]
      679 LOADK                            R27 K58 ["Frame"]
      680 NEWTABLE                         R28 4 0
      682 GETUPVAL                         R30 2
      683 GETTABLEKS                       R29 R30 K24 ["Tag"]
      685 GETUPVAL                         R30 7
      686 LOADK                            R31 K67 ["Component-ActivityHistoryBubble"]
      687 LOADK                            R32 K68 ["X-Row"]
      688 CALL                             R30 2 1
      689 SETTABLE                         R30 R28 R29
      690 GETUPVAL                         R31 2
      691 GETTABLEKS                       R30 R31 K33 ["Event"]
      693 GETTABLEKS                       R29 R30 K69 ["MouseEnter"]
      695 GETTABLEKS                       R30 R8 K70 ["enable"]
      697 SETTABLE                         R30 R28 R29
      698 GETUPVAL                         R31 2
      699 GETTABLEKS                       R30 R31 K33 ["Event"]
      701 GETTABLEKS                       R29 R30 K71 ["MouseLeave"]
      703 GETTABLEKS                       R30 R8 K72 ["disable"]
      705 SETTABLE                         R30 R28 R29
      706 GETTABLEKS                       R29 R0 K32 ["LayoutOrder"]
      708 SETTABLEKS                       R29 R28 K32 ["LayoutOrder"]
      710 DUPTABLE                         R29 K75 [{"Left", "Right"}]
      711 GETUPVAL                         R31 2
      712 GETTABLEKS                       R30 R31 K22 ["createElement"]
      714 LOADK                            R31 K58 ["Frame"]
      715 NEWTABLE                         R32 2 0
      717 GETUPVAL                         R34 2
      718 GETTABLEKS                       R33 R34 K24 ["Tag"]
      720 GETUPVAL                         R34 7
      721 LOADK                            R35 K60 ["CX-Invisible"]
      722 CALL                             R34 1 1
      723 SETTABLE                         R34 R32 R33
      724 GETUPVAL                         R33 8
      725 NAMECALL                         R33 R33 K31 ["getNextOrder"]
      727 CALL                             R33 1 1
      728 SETTABLEKS                       R33 R32 K32 ["LayoutOrder"]
      730 DUPTABLE                         R33 K77 [{"Icon"}]
      731 SETTABLEKS                       R18 R33 K76 ["Icon"]
      733 CALL                             R30 3 1
      734 SETTABLEKS                       R30 R29 K73 ["Left"]
      736 GETUPVAL                         R31 2
      737 GETTABLEKS                       R30 R31 K22 ["createElement"]
      739 LOADK                            R31 K58 ["Frame"]
      740 NEWTABLE                         R32 2 0
      742 GETUPVAL                         R34 2
      743 GETTABLEKS                       R33 R34 K24 ["Tag"]
      745 GETUPVAL                         R34 7
      746 LOADK                            R35 K78 ["X-Column"]
      747 LOADK                            R36 K60 ["CX-Invisible"]
      748 CALL                             R34 2 1
      749 SETTABLE                         R34 R32 R33
      750 GETUPVAL                         R33 8
      751 NAMECALL                         R33 R33 K31 ["getNextOrder"]
      753 CALL                             R33 1 1
      754 SETTABLEKS                       R33 R32 K32 ["LayoutOrder"]
      756 DUPTABLE                         R33 K82 [{"Top", "Middle", "Bottom"}]
      757 GETUPVAL                         R35 2
      758 GETTABLEKS                       R34 R35 K22 ["createElement"]
      760 LOADK                            R35 K58 ["Frame"]
      761 NEWTABLE                         R36 2 0
      763 GETUPVAL                         R38 2
      764 GETTABLEKS                       R37 R38 K24 ["Tag"]
      766 GETUPVAL                         R38 7
      767 LOADK                            R39 K68 ["X-Row"]
      768 LOADK                            R40 K60 ["CX-Invisible"]
      769 CALL                             R38 2 1
      770 SETTABLE                         R38 R36 R37
      771 GETUPVAL                         R37 8
      772 NAMECALL                         R37 R37 K31 ["getNextOrder"]
      774 CALL                             R37 1 1
      775 SETTABLEKS                       R37 R36 K32 ["LayoutOrder"]
      777 DUPTABLE                         R37 K86 [{"Date", "Info", "DotDotDot"}]
      778 GETUPVAL                         R39 9
      779 JUMPIF                           R39 ; [+19]
      780 GETUPVAL                         R39 2
      781 GETTABLEKS                       R38 R39 K22 ["createElement"]
      783 LOADK                            R39 K50 ["TextLabel"]
      784 DUPTABLE                         R40 K87 [{"LayoutOrder", "Text"}]
      785 GETUPVAL                         R41 8
      786 NAMECALL                         R41 R41 K31 ["getNextOrder"]
      788 CALL                             R41 1 1
      789 SETTABLEKS                       R41 R40 K32 ["LayoutOrder"]
      791 GETTABLEKS                       R42 R0 K4 ["Bubble"]
      793 GETTABLEKS                       R41 R42 K88 ["date"]
      795 SETTABLEKS                       R41 R40 K51 ["Text"]
      797 CALL                             R38 2 1
      798 JUMPIF                           R38 ; [+1]
      799 LOADNIL                          R38
      800 SETTABLEKS                       R38 R37 K83 ["Date"]
      802 GETUPVAL                         R39 9
      803 JUMPIFNOT                        R39 ; [+141]
      804 GETUPVAL                         R39 2
      805 GETTABLEKS                       R38 R39 K22 ["createElement"]
      807 LOADK                            R39 K58 ["Frame"]
      808 NEWTABLE                         R40 2 0
      810 GETUPVAL                         R42 2
      811 GETTABLEKS                       R41 R42 K24 ["Tag"]
      813 GETUPVAL                         R42 7
      814 LOADK                            R43 K68 ["X-Row"]
      815 LOADK                            R44 K60 ["CX-Invisible"]
      816 CALL                             R42 2 1
      817 SETTABLE                         R42 R40 R41
      818 GETUPVAL                         R41 8
      819 NAMECALL                         R41 R41 K31 ["getNextOrder"]
      821 CALL                             R41 1 1
      822 SETTABLEKS                       R41 R40 K32 ["LayoutOrder"]
      824 DUPTABLE                         R41 K91 [{"Date", "Spacer", "TargetNameContainer"}]
      825 GETUPVAL                         R43 2
      826 GETTABLEKS                       R42 R43 K22 ["createElement"]
      828 LOADK                            R43 K50 ["TextLabel"]
      829 DUPTABLE                         R44 K87 [{"LayoutOrder", "Text"}]
      830 GETUPVAL                         R45 8
      831 NAMECALL                         R45 R45 K31 ["getNextOrder"]
      833 CALL                             R45 1 1
      834 SETTABLEKS                       R45 R44 K32 ["LayoutOrder"]
      836 GETTABLEKS                       R46 R0 K4 ["Bubble"]
      838 GETTABLEKS                       R45 R46 K88 ["date"]
      840 SETTABLEKS                       R45 R44 K51 ["Text"]
      842 CALL                             R42 2 1
      843 SETTABLEKS                       R42 R41 K83 ["Date"]
      845 GETUPVAL                         R43 2
      846 GETTABLEKS                       R42 R43 K22 ["createElement"]
      848 LOADK                            R43 K50 ["TextLabel"]
      849 DUPTABLE                         R44 K87 [{"LayoutOrder", "Text"}]
      850 GETUPVAL                         R45 8
      851 NAMECALL                         R45 R45 K31 ["getNextOrder"]
      853 CALL                             R45 1 1
      854 SETTABLEKS                       R45 R44 K32 ["LayoutOrder"]
      856 LOADK                            R45 K92 ["•"]
      857 SETTABLEKS                       R45 R44 K51 ["Text"]
      859 CALL                             R42 2 1
      860 SETTABLEKS                       R42 R41 K89 ["Spacer"]
      862 GETUPVAL                         R43 2
      863 GETTABLEKS                       R42 R43 K22 ["createElement"]
      865 LOADK                            R43 K58 ["Frame"]
      866 NEWTABLE                         R44 2 0
      868 GETUPVAL                         R46 2
      869 GETTABLEKS                       R45 R46 K24 ["Tag"]
      871 GETUPVAL                         R46 7
      872 LOADK                            R47 K60 ["CX-Invisible"]
      873 LOADK                            R48 K68 ["X-Row"]
      874 CALL                             R46 2 1
      875 SETTABLE                         R46 R44 R45
      876 GETUPVAL                         R45 8
      877 NAMECALL                         R45 R45 K31 ["getNextOrder"]
      879 CALL                             R45 1 1
      880 SETTABLEKS                       R45 R44 K32 ["LayoutOrder"]
      882 DUPTABLE                         R45 K95 [{"MiniUserIconContainer", "TargetName"}]
      883 GETUPVAL                         R47 2
      884 GETTABLEKS                       R46 R47 K22 ["createElement"]
      886 LOADK                            R47 K58 ["Frame"]
      887 NEWTABLE                         R48 2 0
      889 GETUPVAL                         R50 2
      890 GETTABLEKS                       R49 R50 K24 ["Tag"]
      892 GETUPVAL                         R50 7
      893 LOADK                            R51 K60 ["CX-Invisible"]
      894 CALL                             R50 1 1
      895 SETTABLE                         R50 R48 R49
      896 GETUPVAL                         R49 8
      897 NAMECALL                         R49 R49 K31 ["getNextOrder"]
      899 CALL                             R49 1 1
      900 SETTABLEKS                       R49 R48 K32 ["LayoutOrder"]
      902 DUPTABLE                         R49 K97 [{"MiniUserIcon"}]
      903 GETUPVAL                         R51 2
      904 GETTABLEKS                       R50 R51 K22 ["createElement"]
      906 LOADK                            R51 K35 ["ImageLabel"]
      907 DUPTABLE                         R52 K98 [{"LayoutOrder"}]
      908 GETUPVAL                         R53 8
      909 NAMECALL                         R53 R53 K31 ["getNextOrder"]
      911 CALL                             R53 1 1
      912 SETTABLEKS                       R53 R52 K32 ["LayoutOrder"]
      914 CALL                             R50 2 1
      915 SETTABLEKS                       R50 R49 K96 ["MiniUserIcon"]
      917 CALL                             R46 3 1
      918 SETTABLEKS                       R46 R45 K93 ["MiniUserIconContainer"]
      920 GETUPVAL                         R47 2
      921 GETTABLEKS                       R46 R47 K22 ["createElement"]
      923 LOADK                            R47 K50 ["TextLabel"]
      924 DUPTABLE                         R48 K99 [{"Text", "LayoutOrder"}]
      925 GETTABLEKS                       R50 R0 K4 ["Bubble"]
      927 GETTABLEKS                       R49 R50 K100 ["actorName"]
      929 SETTABLEKS                       R49 R48 K51 ["Text"]
      931 GETUPVAL                         R49 8
      932 NAMECALL                         R49 R49 K31 ["getNextOrder"]
      934 CALL                             R49 1 1
      935 SETTABLEKS                       R49 R48 K32 ["LayoutOrder"]
      937 CALL                             R46 2 1
      938 SETTABLEKS                       R46 R45 K94 ["TargetName"]
      940 CALL                             R42 3 1
      941 SETTABLEKS                       R42 R41 K90 ["TargetNameContainer"]
      943 CALL                             R38 3 1
      944 JUMPIF                           R38 ; [+1]
      945 LOADNIL                          R38
      946 SETTABLEKS                       R38 R37 K84 ["Info"]
      948 JUMPIFNOT                        R9 ; [+3]
      949 GETTABLEKS                       R39 R8 K16 ["enabled"]
      951 JUMPIF                           R39 ; [+2]
      952 LOADNIL                          R38
      953 JUMP                             ; [+72]
      954 GETUPVAL                         R39 2
      955 GETTABLEKS                       R38 R39 K22 ["createElement"]
      957 LOADK                            R39 K58 ["Frame"]
      958 NEWTABLE                         R40 2 0
      960 GETUPVAL                         R42 2
      961 GETTABLEKS                       R41 R42 K24 ["Tag"]
      963 GETUPVAL                         R42 7
      964 LOADK                            R43 K60 ["CX-Invisible"]
      965 CALL                             R42 1 1
      966 SETTABLE                         R42 R40 R41
      967 GETUPVAL                         R41 8
      968 NAMECALL                         R41 R41 K31 ["getNextOrder"]
      970 CALL                             R41 1 1
      971 SETTABLEKS                       R41 R40 K32 ["LayoutOrder"]
      973 DUPTABLE                         R41 K103 [{"Dropdown", "Button"}]
      974 GETUPVAL                         R43 2
      975 GETTABLEKS                       R42 R43 K22 ["createElement"]
      977 GETUPVAL                         R43 10
      978 DUPTABLE                         R44 K109 [{"Items", "Hide", "OnItemActivated", "OnFocusLost", "Width"}]
      979 SETTABLEKS                       R10 R44 K104 ["Items"]
      981 NOT                              R45 R6
      982 SETTABLEKS                       R45 R44 K105 ["Hide"]
      984 SETTABLEKS                       R13 R44 K106 ["OnItemActivated"]
      986 SETTABLEKS                       R14 R44 K107 ["OnFocusLost"]
      988 LOADN                            R45 240
      989 SETTABLEKS                       R45 R44 K108 ["Width"]
      991 CALL                             R42 2 1
      992 SETTABLEKS                       R42 R41 K101 ["Dropdown"]
      994 GETUPVAL                         R43 2
      995 GETTABLEKS                       R42 R43 K22 ["createElement"]
      997 LOADK                            R43 K23 ["ImageButton"]
      998 NEWTABLE                         R44 4 0
     1000 GETUPVAL                         R46 2
     1001 GETTABLEKS                       R45 R46 K24 ["Tag"]
     1003 GETUPVAL                         R46 7
     1004 LOADK                            R47 K66 ["X-Fill"]
     1005 CALL                             R46 1 1
     1006 SETTABLE                         R46 R44 R45
     1007 GETUPVAL                         R45 8
     1008 NAMECALL                         R45 R45 K31 ["getNextOrder"]
     1010 CALL                             R45 1 1
     1011 SETTABLEKS                       R45 R44 K32 ["LayoutOrder"]
     1013 LOADB                            R45 1
     1014 SETTABLEKS                       R45 R44 K110 ["AutoButtonColor"]
     1016 GETUPVAL                         R47 2
     1017 GETTABLEKS                       R46 R47 K33 ["Event"]
     1019 GETTABLEKS                       R45 R46 K34 ["Activated"]
     1021 SETTABLE                         R15 R44 R45
     1022 CALL                             R42 2 1
     1023 SETTABLEKS                       R42 R41 K102 ["Button"]
     1025 CALL                             R38 3 1
     1026 SETTABLEKS                       R38 R37 K85 ["DotDotDot"]
     1028 CALL                             R34 3 1
     1029 SETTABLEKS                       R34 R33 K79 ["Top"]
     1031 GETUPVAL                         R35 2
     1032 GETTABLEKS                       R34 R35 K22 ["createElement"]
     1034 LOADK                            R35 K58 ["Frame"]
     1035 NEWTABLE                         R36 2 0
     1037 GETUPVAL                         R38 2
     1038 GETTABLEKS                       R37 R38 K24 ["Tag"]
     1040 GETUPVAL                         R38 7
     1041 LOADK                            R39 K60 ["CX-Invisible"]
     1042 CALL                             R38 1 1
     1043 SETTABLE                         R38 R36 R37
     1044 GETUPVAL                         R37 8
     1045 NAMECALL                         R37 R37 K31 ["getNextOrder"]
     1047 CALL                             R37 1 1
     1048 SETTABLEKS                       R37 R36 K32 ["LayoutOrder"]
     1050 DUPTABLE                         R37 K112 [{"Description"}]
     1051 SETTABLEKS                       R25 R37 K111 ["Description"]
     1053 CALL                             R34 3 1
     1054 SETTABLEKS                       R34 R33 K80 ["Middle"]
     1056 GETUPVAL                         R35 9
     1057 JUMPIF                           R35 ; [+118]
     1058 GETUPVAL                         R35 2
     1059 GETTABLEKS                       R34 R35 K22 ["createElement"]
     1061 LOADK                            R35 K56 ["TextButton"]
     1062 NEWTABLE                         R36 4 0
     1064 GETUPVAL                         R38 2
     1065 GETTABLEKS                       R37 R38 K24 ["Tag"]
     1067 GETUPVAL                         R38 7
     1068 LOADK                            R39 K68 ["X-Row"]
     1069 LOADK                            R40 K60 ["CX-Invisible"]
     1070 CALL                             R38 2 1
     1071 SETTABLE                         R38 R36 R37
     1072 LOADK                            R37 K21 [""]
     1073 SETTABLEKS                       R37 R36 K51 ["Text"]
     1075 GETUPVAL                         R39 2
     1076 GETTABLEKS                       R38 R39 K33 ["Event"]
     1078 GETTABLEKS                       R37 R38 K34 ["Activated"]
     1080 SETTABLE                         R19 R36 R37
     1081 GETUPVAL                         R37 8
     1082 NAMECALL                         R37 R37 K31 ["getNextOrder"]
     1084 CALL                             R37 1 1
     1085 SETTABLEKS                       R37 R36 K32 ["LayoutOrder"]
     1087 DUPTABLE                         R37 K114 [{"IconFrame", "TargetName"}]
     1088 GETUPVAL                         R39 2
     1089 GETTABLEKS                       R38 R39 K22 ["createElement"]
     1091 LOADK                            R39 K58 ["Frame"]
     1092 NEWTABLE                         R40 2 0
     1094 GETUPVAL                         R42 2
     1095 GETTABLEKS                       R41 R42 K24 ["Tag"]
     1097 GETUPVAL                         R42 7
     1098 LOADK                            R43 K60 ["CX-Invisible"]
     1099 CALL                             R42 1 1
     1100 SETTABLE                         R42 R40 R41
     1101 GETUPVAL                         R41 8
     1102 NAMECALL                         R41 R41 K31 ["getNextOrder"]
     1104 CALL                             R41 1 1
     1105 SETTABLEKS                       R41 R40 K32 ["LayoutOrder"]
     1107 DUPTABLE                         R41 K77 [{"Icon"}]
     1108 GETUPVAL                         R43 2
     1109 GETTABLEKS                       R42 R43 K22 ["createElement"]
     1111 LOADK                            R43 K35 ["ImageLabel"]
     1112 DUPTABLE                         R44 K115 [{"Image", "LayoutOrder"}]
     1113 GETTABLEKS                       R47 R0 K4 ["Bubble"]
     1115 GETTABLEKS                       R46 R47 K116 ["actorId"]
     1117 FASTCALL1                        TOSTRING R46 ; [+3]
     1118 MOVE                             R48 R46
     1119 GETIMPORT                        R47 K20 [tostring]
     1121 CALL                             R47 1 1
     1122 GETUPVAL                         R49 6
     1123 GETTABLEKS                       R48 R49 K25 ["User"]
     1125 JUMPIFNOT                        R48 ; [+7]
     1126 GETUPVAL                         R49 6
     1127 GETTABLEKS                       R48 R49 K25 ["User"]
     1129 MOVE                             R49 R47
     1130 CALL                             R48 1 1
     1131 MOVE                             R45 R48
     1132 JUMP                             ; [+1]
     1133 LOADK                            R45 K21 [""]
     1134 SETTABLEKS                       R45 R44 K30 ["Image"]
     1136 GETUPVAL                         R45 8
     1137 NAMECALL                         R45 R45 K31 ["getNextOrder"]
     1139 CALL                             R45 1 1
     1140 SETTABLEKS                       R45 R44 K32 ["LayoutOrder"]
     1142 CALL                             R42 2 1
     1143 SETTABLEKS                       R42 R41 K76 ["Icon"]
     1145 CALL                             R38 3 1
     1146 SETTABLEKS                       R38 R37 K113 ["IconFrame"]
     1148 GETUPVAL                         R39 2
     1149 GETTABLEKS                       R38 R39 K22 ["createElement"]
     1151 LOADK                            R39 K50 ["TextLabel"]
     1152 DUPTABLE                         R40 K118 [{"Text", "RichText", "LayoutOrder"}]
     1153 LOADK                            R42 K119 ["<u>"]
     1154 GETTABLEKS                       R45 R0 K4 ["Bubble"]
     1156 GETTABLEKS                       R43 R45 K100 ["actorName"]
     1158 LOADK                            R44 K120 ["</u>"]
     1159 CONCAT                           R41 R42 R44
     1160 SETTABLEKS                       R41 R40 K51 ["Text"]
     1162 LOADB                            R41 1
     1163 SETTABLEKS                       R41 R40 K117 ["RichText"]
     1165 GETUPVAL                         R41 8
     1166 NAMECALL                         R41 R41 K31 ["getNextOrder"]
     1168 CALL                             R41 1 1
     1169 SETTABLEKS                       R41 R40 K32 ["LayoutOrder"]
     1171 CALL                             R38 2 1
     1172 SETTABLEKS                       R38 R37 K94 ["TargetName"]
     1174 CALL                             R34 3 1
     1175 JUMPIF                           R34 ; [+1]
     1176 LOADNIL                          R34
     1177 SETTABLEKS                       R34 R33 K81 ["Bottom"]
     1179 CALL                             R30 3 1
     1180 SETTABLEKS                       R30 R29 K74 ["Right"]
     1182 CALL                             R26 3 -1
     1183 CLOSEUPVALS                      R12
     1184 RETURN                           R26 -1

PROTO_35:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R3 R0 K1 ["props"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R5 K8 ["ReactUtils"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R7 R0 K9 ["Src"]
       34 GETTABLEKS                       R6 R7 K10 ["Util"]
       36 GETTABLEKS                       R5 R6 K11 ["ActivityHistoryEventTranslated"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K4 [require]
       41 GETTABLEKS                       R8 R0 K9 ["Src"]
       43 GETTABLEKS                       R7 R8 K12 ["Contexts"]
       45 GETTABLEKS                       R6 R7 K13 ["ActivityHistoryContext"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K4 [require]
       50 GETTABLEKS                       R9 R0 K9 ["Src"]
       52 GETTABLEKS                       R8 R9 K10 ["Util"]
       54 GETTABLEKS                       R7 R8 K14 ["BaseUrls"]
       56 CALL                             R6 1 1
       57 GETTABLEKS                       R7 R2 K15 ["UI"]
       59 GETTABLEKS                       R9 R2 K16 ["ContextServices"]
       61 GETTABLEKS                       R8 R9 K17 ["Localization"]
       63 GETTABLEKS                       R10 R2 K16 ["ContextServices"]
       65 GETTABLEKS                       R9 R10 K18 ["Analytics"]
       67 GETTABLEKS                       R10 R7 K19 ["DropdownMenu"]
       69 GETTABLEKS                       R12 R2 K20 ["Styling"]
       71 GETTABLEKS                       R11 R12 K21 ["joinTags"]
       73 GETTABLEKS                       R13 R2 K10 ["Util"]
       75 GETTABLEKS                       R12 R13 K22 ["LayoutOrderIterator"]
       77 GETTABLEKS                       R13 R12 K23 ["new"]
       79 CALL                             R13 0 1
       80 GETTABLEKS                       R14 R3 K24 ["useToggleState"]
       82 GETIMPORT                        R15 K26 [game]
       84 LOADK                            R17 K27 ["ActivityHistoryCompactUI"]
       85 NAMECALL                         R15 R15 K28 ["GetFastFlag"]
       87 CALL                             R15 2 1
       88 DUPTABLE                         R16 K38 [{"Universe", "Place", "User", "Badge", "DeveloperProduct", "GamePass", "Group", "Package", "Script"}]
       89 DUPCLOSURE                       R17 K39 [PROTO_0]
       90 SETTABLEKS                       R17 R16 K29 ["Universe"]
       92 DUPCLOSURE                       R17 K40 [PROTO_1]
       93 SETTABLEKS                       R17 R16 K30 ["Place"]
       95 DUPCLOSURE                       R17 K41 [PROTO_2]
       96 SETTABLEKS                       R17 R16 K31 ["User"]
       98 DUPCLOSURE                       R17 K42 [PROTO_3]
       99 SETTABLEKS                       R17 R16 K32 ["Badge"]
      101 DUPCLOSURE                       R17 K43 [PROTO_4]
      102 SETTABLEKS                       R17 R16 K33 ["DeveloperProduct"]
      104 DUPCLOSURE                       R17 K44 [PROTO_5]
      105 SETTABLEKS                       R17 R16 K34 ["GamePass"]
      107 DUPCLOSURE                       R17 K45 [PROTO_6]
      108 SETTABLEKS                       R17 R16 K35 ["Group"]
      110 DUPCLOSURE                       R17 K46 [PROTO_7]
      111 SETTABLEKS                       R17 R16 K36 ["Package"]
      113 DUPCLOSURE                       R17 K47 [PROTO_8]
      114 SETTABLEKS                       R17 R16 K37 ["Script"]
      116 DUPTABLE                         R17 K48 [{"Universe", "Place", "User", "Badge", "DeveloperProduct", "GamePass", "Group", "Package"}]
      117 DUPCLOSURE                       R18 K49 [PROTO_9]
      118 CAPTURE                          VAL R6
      119 SETTABLEKS                       R18 R17 K29 ["Universe"]
      121 DUPCLOSURE                       R18 K50 [PROTO_10]
      122 CAPTURE                          VAL R6
      123 SETTABLEKS                       R18 R17 K30 ["Place"]
      125 DUPCLOSURE                       R18 K51 [PROTO_11]
      126 CAPTURE                          VAL R6
      127 SETTABLEKS                       R18 R17 K31 ["User"]
      129 DUPCLOSURE                       R18 K52 [PROTO_12]
      130 CAPTURE                          VAL R6
      131 SETTABLEKS                       R18 R17 K32 ["Badge"]
      133 DUPCLOSURE                       R18 K53 [PROTO_13]
      134 CAPTURE                          VAL R6
      135 SETTABLEKS                       R18 R17 K33 ["DeveloperProduct"]
      137 DUPCLOSURE                       R18 K54 [PROTO_14]
      138 CAPTURE                          VAL R6
      139 SETTABLEKS                       R18 R17 K34 ["GamePass"]
      141 DUPCLOSURE                       R18 K55 [PROTO_15]
      142 CAPTURE                          VAL R6
      143 SETTABLEKS                       R18 R17 K35 ["Group"]
      145 DUPCLOSURE                       R18 K56 [PROTO_16]
      146 CAPTURE                          VAL R6
      147 SETTABLEKS                       R18 R17 K36 ["Package"]
      149 DUPCLOSURE                       R18 K57 [PROTO_17]
      150 CAPTURE                          VAL R16
      151 DUPCLOSURE                       R19 K58 [PROTO_18]
      152 CAPTURE                          VAL R11
      153 DUPCLOSURE                       R20 K59 [PROTO_34]
      154 CAPTURE                          VAL R8
      155 CAPTURE                          VAL R9
      156 CAPTURE                          VAL R1
      157 CAPTURE                          VAL R5
      158 CAPTURE                          VAL R14
      159 CAPTURE                          VAL R17
      160 CAPTURE                          VAL R16
      161 CAPTURE                          VAL R11
      162 CAPTURE                          VAL R13
      163 CAPTURE                          VAL R15
      164 CAPTURE                          VAL R10
      165 GETTABLEKS                       R21 R1 K60 ["PureComponent"]
      167 LOADK                            R23 K61 ["ActivityHistoryBubble"]
      168 NAMECALL                         R21 R21 K62 ["extend"]
      170 CALL                             R21 2 1
      171 DUPCLOSURE                       R22 K63 [PROTO_35]
      172 CAPTURE                          VAL R1
      173 CAPTURE                          VAL R20
      174 SETTABLEKS                       R22 R21 K64 ["render"]
      176 RETURN                           R21 1
