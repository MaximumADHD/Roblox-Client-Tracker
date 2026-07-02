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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["createPath"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["wwwPath"]
        3 LOADK                            R4 K1 ["games/"]
        4 FASTCALL1                        TOSTRING R1 ; [+3]
        5 MOVE                             R6 R1
        6 GETIMPORT                        R5 K3 [tostring]
        8 CALL                             R5 1 1
        9 CONCAT                           R2 R3 R5
       10 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["wwwPath"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["createPath"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["createPath"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["createPath"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["wwwPath"]
        3 LOADK                            R4 K1 ["groups/"]
        4 FASTCALL1                        TOSTRING R1 ; [+3]
        5 MOVE                             R6 R1
        6 GETIMPORT                        R5 K3 [tostring]
        8 CALL                             R5 1 1
        9 CONCAT                           R2 R3 R5
       10 RETURN                           R2 1

PROTO_16:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["createPath"]
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
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["Bubble"]
        5 GETTABLEKS                       R1 R1 K1 ["viewBasicSettingsLink"]
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
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K0 ["Bubble"]
       22 GETTABLEKS                       R1 R1 K7 ["viewOnRobloxLink"]
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
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["Bubble"]
        5 GETTABLEKS                       R1 R1 K1 ["viewBasicSettingsLink"]
        7 JUMPIFNOT                        R1 ; [+28]
        8 DUPTABLE                         R3 K7 [{["type"] = "viewBasicSetting", ["link"], ["errorHeader"], ["errorMsg"]}]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K0 ["Bubble"]
       12 GETTABLEKS                       R4 R4 K1 ["viewBasicSettingsLink"]
       14 SETTABLEKS                       R4 R3 K4 ["link"]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K0 ["Bubble"]
       19 GETTABLEKS                       R4 R4 K8 ["linkErrorHeader"]
       21 SETTABLEKS                       R4 R3 K5 ["errorHeader"]
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K0 ["Bubble"]
       26 GETTABLEKS                       R4 R4 K9 ["linkErrorBody"]
       28 SETTABLEKS                       R4 R3 K6 ["errorMsg"]
       30 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       32 MOVE                             R2 R0
       33 GETIMPORT                        R1 K12 [table.insert]
       35 CALL                             R1 2 0
       36 GETUPVAL                         R1 0
       37 GETTABLEKS                       R1 R1 K0 ["Bubble"]
       39 GETTABLEKS                       R1 R1 K13 ["viewOnRobloxLink"]
       41 JUMPIFNOT                        R1 ; [+28]
       42 DUPTABLE                         R3 K15 [{["type"] = "viewOnRoblox", ["link"], ["errorHeader"], ["errorMsg"]}]
       43 GETUPVAL                         R4 0
       44 GETTABLEKS                       R4 R4 K0 ["Bubble"]
       46 GETTABLEKS                       R4 R4 K13 ["viewOnRobloxLink"]
       48 SETTABLEKS                       R4 R3 K4 ["link"]
       50 GETUPVAL                         R4 0
       51 GETTABLEKS                       R4 R4 K0 ["Bubble"]
       53 GETTABLEKS                       R4 R4 K8 ["linkErrorHeader"]
       55 SETTABLEKS                       R4 R3 K5 ["errorHeader"]
       57 GETUPVAL                         R4 0
       58 GETTABLEKS                       R4 R4 K0 ["Bubble"]
       60 GETTABLEKS                       R4 R4 K9 ["linkErrorBody"]
       62 SETTABLEKS                       R4 R3 K6 ["errorMsg"]
       64 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       66 MOVE                             R2 R0
       67 GETIMPORT                        R1 K12 [table.insert]
       69 CALL                             R1 2 0
       70 RETURN                           R0 1

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
       11 GETUPVAL                         R5 3
       12 GETTABLEKS                       R5 R5 K2 ["openLink"]
       14 MOVE                             R6 R2
       15 MOVE                             R7 R3
       16 MOVE                             R8 R4
       17 CALL                             R5 3 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R5 3
       20 GETTABLEKS                       R5 R5 K3 ["DEPRECATED_openBrowserLink"]
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
        7 GETUPVAL                         R3 3
        8 GETTABLEKS                       R3 R3 K0 ["Bubble"]
       10 GETTABLEKS                       R3 R3 K1 ["eventType"]
       12 GETUPVAL                         R5 1
       13 GETTABLE                         R4 R5 R1
       14 GETTABLEKS                       R4 R4 K2 ["type"]
       16 GETUPVAL                         R6 1
       17 GETTABLE                         R5 R6 R1
       18 GETTABLEKS                       R5 R5 K3 ["link"]
       20 GETUPVAL                         R7 1
       21 GETTABLE                         R6 R7 R1
       22 GETTABLEKS                       R6 R6 K4 ["errorHeader"]
       24 GETUPVAL                         R8 1
       25 GETTABLE                         R7 R8 R1
       26 GETTABLEKS                       R7 R7 K5 ["errorMsg"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["enabled"]
        3 JUMPIF                           R0 ; [+3]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Bubble"]
        4 GETTABLEKS                       R1 R1 K1 ["eventType"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K0 ["Bubble"]
        9 GETTABLEKS                       R2 R2 K2 ["iconType"]
       11 GETUPVAL                         R3 2
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K0 ["Bubble"]
       15 GETTABLEKS                       R4 R4 K3 ["universeId"]
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R5 R5 K0 ["Bubble"]
       20 GETTABLEKS                       R5 R5 K4 ["iconId"]
       22 CALL                             R3 2 1
       23 LOADNIL                          R4
       24 LOADNIL                          R5
       25 CALL                             R0 5 0
       26 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Bubble"]
        4 GETTABLEKS                       R1 R1 K1 ["eventType"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K0 ["Bubble"]
        9 GETTABLEKS                       R2 R2 K2 ["iconType"]
       11 GETUPVAL                         R3 2
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K0 ["Bubble"]
       15 GETTABLEKS                       R4 R4 K3 ["universeId"]
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R5 R5 K0 ["Bubble"]
       20 GETTABLEKS                       R5 R5 K4 ["iconId"]
       22 CALL                             R3 2 1
       23 LOADNIL                          R4
       24 LOADNIL                          R5
       25 CALL                             R0 5 0
       26 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Bubble"]
        4 GETTABLEKS                       R1 R1 K1 ["eventType"]
        6 LOADK                            R2 K2 ["actorProfile"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K3 ["User"]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K0 ["Bubble"]
       13 GETTABLEKS                       R5 R5 K4 ["universeId"]
       15 FASTCALL1                        TOSTRING R5 ; [+2]
       16 GETIMPORT                        R4 K6 [tostring]
       18 CALL                             R4 1 1
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R6 R6 K0 ["Bubble"]
       22 GETTABLEKS                       R6 R6 K7 ["actorId"]
       24 FASTCALL1                        TOSTRING R6 ; [+2]
       25 GETIMPORT                        R5 K6 [tostring]
       27 CALL                             R5 1 1
       28 CALL                             R3 2 1
       29 LOADNIL                          R4
       30 LOADNIL                          R5
       31 CALL                             R0 5 0
       32 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Bubble"]
        3 GETTABLEKS                       R1 R1 K1 ["translationFunc"]
        5 JUMPIFNOT                        R1 ; [+8]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["Bubble"]
        9 GETTABLEKS                       R1 R1 K1 ["translationFunc"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 -1
       13 RETURN                           R1 -1
       14 NEWTABLE                         R1 0 1
       16 NEWTABLE                         R2 0 2
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K0 ["Bubble"]
       21 GETTABLEKS                       R3 R3 K2 ["translation"]
       23 LOADK                            R4 K3 ["TextLabel"]
       24 SETLIST                          R2 R3 2 [1]
       26 SETLIST                          R1 R2 1 [1]
       28 RETURN                           R1 1

PROTO_31:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["enabled"]
        3 JUMPIFNOT                        R1 ; [+6]
        4 JUMPIFNOTEQKS                    R0 K1 ["scripts"] ; [+5]
        6 GETUPVAL                         R1 1
        7 DUPTABLE                         R2 K4 [{["showMoreScripts"] = True}]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K0 ["enabled"]
       13 JUMPIFNOT                        R1 ; [+23]
       14 GETUPVAL                         R1 2
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R2 R2 K5 ["Bubble"]
       18 GETTABLEKS                       R2 R2 K6 ["eventType"]
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R3 R3 K5 ["Bubble"]
       23 GETTABLEKS                       R3 R3 K7 ["iconType"]
       25 MOVE                             R4 R0
       26 GETUPVAL                         R5 3
       27 GETTABLEKS                       R5 R5 K5 ["Bubble"]
       29 GETTABLEKS                       R5 R5 K8 ["linkErrorHeader"]
       31 GETUPVAL                         R6 3
       32 GETTABLEKS                       R6 R6 K5 ["Bubble"]
       34 GETTABLEKS                       R6 R6 K9 ["linkErrorBody"]
       36 CALL                             R1 5 0
       37 RETURN                           R0 0

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
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K1 ["useContext"]
       11 GETUPVAL                         R4 3
       12 CALL                             R3 1 1
       13 GETTABLEKS                       R4 R3 K2 ["usePlaceAndUniverseId"]
       15 CALL                             R4 0 2
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R6 R6 K3 ["useState"]
       19 LOADB                            R7 0
       20 CALL                             R6 1 2
       21 GETUPVAL                         R8 4
       22 LOADB                            R9 0
       23 CALL                             R8 1 1
       24 LOADB                            R9 1
       25 GETTABLEKS                       R10 R0 K4 ["Bubble"]
       27 GETTABLEKS                       R10 R10 K5 ["viewBasicSettingsLink"]
       29 JUMPIFNOTEQKNIL                  R10 ; [+9]
       31 GETTABLEKS                       R10 R0 K4 ["Bubble"]
       33 GETTABLEKS                       R10 R10 K6 ["viewOnRobloxLink"]
       35 JUMPIFNOTEQKNIL                  R10 ; [+2]
       37 LOADB                            R9 0 +1
       38 LOADB                            R9 1
       39 GETUPVAL                         R10 2
       40 GETTABLEKS                       R10 R10 K7 ["useMemo"]
       42 NEWCLOSURE                       R11 P0
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R1
       45 NEWTABLE                         R12 0 3
       47 GETTABLEKS                       R13 R0 K4 ["Bubble"]
       49 GETTABLEKS                       R13 R13 K5 ["viewBasicSettingsLink"]
       51 GETTABLEKS                       R14 R0 K4 ["Bubble"]
       53 GETTABLEKS                       R14 R14 K8 ["viewBasicSettingsLinkText"]
       55 GETTABLEKS                       R15 R0 K4 ["Bubble"]
       57 GETTABLEKS                       R15 R15 K6 ["viewOnRobloxLink"]
       59 SETLIST                          R12 R13 3 [1]
       61 CALL                             R10 2 1
       62 GETUPVAL                         R11 2
       63 GETTABLEKS                       R11 R11 K7 ["useMemo"]
       65 NEWCLOSURE                       R12 P1
       66 CAPTURE                          VAL R0
       67 NEWTABLE                         R13 0 4
       69 GETTABLEKS                       R14 R0 K4 ["Bubble"]
       71 GETTABLEKS                       R14 R14 K5 ["viewBasicSettingsLink"]
       73 GETTABLEKS                       R15 R0 K4 ["Bubble"]
       75 GETTABLEKS                       R15 R15 K6 ["viewOnRobloxLink"]
       77 GETTABLEKS                       R16 R0 K4 ["Bubble"]
       79 GETTABLEKS                       R16 R16 K9 ["linkErrorHeader"]
       81 GETTABLEKS                       R17 R0 K4 ["Bubble"]
       83 GETTABLEKS                       R17 R17 K10 ["linkErrorBody"]
       85 SETLIST                          R13 R14 4 [1]
       87 CALL                             R11 2 1
       88 DUPCLOSURE                       R12 K11 [PROTO_21]
       89 GETUPVAL                         R13 2
       90 GETTABLEKS                       R13 R13 K12 ["useCallback"]
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
      119 GETUPVAL                         R16 2
      120 GETTABLEKS                       R16 R16 K15 ["useEffect"]
      122 NEWCLOSURE                       R17 P7
      123 CAPTURE                          VAL R8
      124 CAPTURE                          VAL R7
      125 NEWTABLE                         R18 0 1
      127 GETTABLEKS                       R19 R8 K16 ["enabled"]
      129 SETLIST                          R18 R19 1 [1]
      131 CALL                             R16 2 0
      132 GETUPVAL                         R17 5
      133 GETTABLEKS                       R18 R0 K4 ["Bubble"]
      135 GETTABLEKS                       R18 R18 K17 ["iconType"]
      137 GETTABLE                         R16 R17 R18
      138 GETTABLEKS                       R18 R0 K4 ["Bubble"]
      140 GETTABLEKS                       R18 R18 K17 ["iconType"]
      142 GETTABLEKS                       R19 R0 K4 ["Bubble"]
      144 GETTABLEKS                       R19 R19 K18 ["iconId"]
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
      165 GETUPVAL                         R19 2
      166 GETTABLEKS                       R19 R19 K22 ["createElement"]
      168 LOADK                            R20 K23 ["ImageButton"]
      169 NEWTABLE                         R21 4 0
      171 GETUPVAL                         R22 2
      172 GETTABLEKS                       R22 R22 K24 ["Tag"]
      174 GETTABLEKS                       R24 R0 K4 ["Bubble"]
      176 GETTABLEKS                       R24 R24 K17 ["iconType"]
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
      209 GETUPVAL                         R22 2
      210 GETTABLEKS                       R22 R22 K33 ["Event"]
      212 GETTABLEKS                       R22 R22 K34 ["Activated"]
      214 NEWCLOSURE                       R23 P8
      215 CAPTURE                          REF R12
      216 CAPTURE                          VAL R0
      217 CAPTURE                          VAL R16
      218 SETTABLE                         R23 R21 R22
      219 CALL                             R19 2 1
      220 MOVE                             R18 R19
      221 JUMP                             ; [+148]
      222 GETUPVAL                         R19 2
      223 GETTABLEKS                       R19 R19 K22 ["createElement"]
      225 LOADK                            R20 K23 ["ImageButton"]
      226 NEWTABLE                         R21 4 0
      228 GETUPVAL                         R22 2
      229 GETTABLEKS                       R22 R22 K24 ["Tag"]
      231 GETTABLEKS                       R24 R0 K4 ["Bubble"]
      233 GETTABLEKS                       R24 R24 K17 ["iconType"]
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
      264 GETUPVAL                         R22 2
      265 GETTABLEKS                       R22 R22 K33 ["Event"]
      267 GETTABLEKS                       R22 R22 K34 ["Activated"]
      269 NEWCLOSURE                       R23 P9
      270 CAPTURE                          REF R12
      271 CAPTURE                          VAL R0
      272 CAPTURE                          VAL R16
      273 SETTABLE                         R23 R21 R22
      274 CALL                             R19 2 1
      275 MOVE                             R18 R19
      276 JUMP                             ; [+93]
      277 JUMPIFEQKS                       R17 K21 [""] ; [+48]
      279 GETUPVAL                         R19 2
      280 GETTABLEKS                       R19 R19 K22 ["createElement"]
      282 LOADK                            R20 K35 ["ImageLabel"]
      283 NEWTABLE                         R21 4 0
      285 GETUPVAL                         R22 2
      286 GETTABLEKS                       R22 R22 K24 ["Tag"]
      288 GETTABLEKS                       R24 R0 K4 ["Bubble"]
      290 GETTABLEKS                       R24 R24 K17 ["iconType"]
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
      326 GETUPVAL                         R19 2
      327 GETTABLEKS                       R19 R19 K22 ["createElement"]
      329 LOADK                            R20 K35 ["ImageLabel"]
      330 NEWTABLE                         R21 2 0
      332 GETUPVAL                         R22 2
      333 GETTABLEKS                       R22 R22 K24 ["Tag"]
      335 GETTABLEKS                       R24 R0 K4 ["Bubble"]
      337 GETTABLEKS                       R24 R24 K17 ["iconType"]
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
      374 GETUPVAL                         R20 2
      375 GETTABLEKS                       R20 R20 K3 ["useState"]
      377 DUPTABLE                         R21 K38 [{["showMoreScripts"] = False}]
      378 CALL                             R20 1 2
      379 NEWCLOSURE                       R22 P11
      380 CAPTURE                          VAL R0
      381 NEWCLOSURE                       R23 P12
      382 CAPTURE                          VAL R8
      383 CAPTURE                          VAL R21
      384 CAPTURE                          REF R12
      385 CAPTURE                          VAL R0
      386 NEWTABLE                         R24 0 1
      388 GETUPVAL                         R25 2
      389 GETTABLEKS                       R25 R25 K22 ["createElement"]
      391 LOADK                            R26 K39 ["UIListLayout"]
      392 NEWTABLE                         R27 4 0
      394 GETUPVAL                         R28 2
      395 GETTABLEKS                       R28 R28 K24 ["Tag"]
      397 GETUPVAL                         R29 7
      398 LOADK                            R30 K40 ["X-Fit"]
      399 CALL                             R29 1 1
      400 SETTABLE                         R29 R27 R28
      401 GETIMPORT                        R28 K44 [Enum.FillDirection.Vertical]
      403 SETTABLEKS                       R28 R27 K42 ["FillDirection"]
      405 GETIMPORT                        R28 K46 [Enum.SortOrder.LayoutOrder]
      407 SETTABLEKS                       R28 R27 K45 ["SortOrder"]
      409 CALL                             R25 2 -1
      410 SETLIST                          R24 R25 -1 [1]
      412 GETIMPORT                        R25 K48 [ipairs]
      414 MOVE                             R26 R22
      415 MOVE                             R27 R20
      416 CALL                             R26 1 -1
      417 CALL                             R25 -1 3
      418 FORGPREP_INEXT                   R25
      419 FASTCALL1                        TABLE_UNPACK R29 ; [+3]
      420 MOVE                             R31 R29
      421 GETIMPORT                        R30 K50 [unpack]
      423 CALL                             R30 1 5
      424 JUMPIFNOTEQKS                    R31 K51 ["TextLabel"] ; [+33]
      426 MOVE                             R36 R24
      427 GETUPVAL                         R37 2
      428 GETTABLEKS                       R37 R37 K22 ["createElement"]
      430 LOADK                            R38 K51 ["TextLabel"]
      431 NEWTABLE                         R39 4 0
      433 GETUPVAL                         R40 2
      434 GETTABLEKS                       R40 R40 K24 ["Tag"]
      436 GETUPVAL                         R41 7
      437 LOADK                            R42 K40 ["X-Fit"]
      438 MOVE                             R43 R32
      439 CALL                             R41 2 1
      440 SETTABLE                         R41 R39 R40
      441 SETTABLEKS                       R30 R39 K52 ["Text"]
      443 LOADB                            R40 1
      444 SETTABLEKS                       R40 R39 K53 ["TextWrapped"]
      446 GETUPVAL                         R40 8
      447 NAMECALL                         R40 R40 K31 ["getNextOrder"]
      449 CALL                             R40 1 1
      450 SETTABLEKS                       R40 R39 K32 ["LayoutOrder"]
      452 CALL                             R37 2 -1
      453 FASTCALL                         TABLE_INSERT ; [+2]
      454 GETIMPORT                        R35 K56 [table.insert]
      456 CALL                             R35 -1 0
      457 JUMP                             ; [+191]
      458 GETUPVAL                         R35 2
      459 GETTABLEKS                       R35 R35 K22 ["createElement"]
      461 LOADK                            R36 K57 ["TextButton"]
      462 NEWTABLE                         R37 8 0
      464 GETUPVAL                         R38 2
      465 GETTABLEKS                       R38 R38 K24 ["Tag"]
      467 LOADK                            R39 K40 ["X-Fit"]
      468 SETTABLE                         R39 R37 R38
      469 SETTABLEKS                       R30 R37 K52 ["Text"]
      471 LOADN                            R38 1
      472 SETTABLEKS                       R38 R37 K58 ["BackgroundTransparency"]
      474 GETUPVAL                         R38 8
      475 NAMECALL                         R38 R38 K31 ["getNextOrder"]
      477 CALL                             R38 1 1
      478 SETTABLEKS                       R38 R37 K32 ["LayoutOrder"]
      480 GETUPVAL                         R38 2
      481 GETTABLEKS                       R38 R38 K33 ["Event"]
      483 GETTABLEKS                       R38 R38 K34 ["Activated"]
      485 NEWCLOSURE                       R39 P13
      486 CAPTURE                          VAL R23
      487 CAPTURE                          VAL R33
      488 SETTABLE                         R39 R37 R38
      489 CALL                             R35 2 1
      490 LOADNIL                          R36
      491 JUMPIFNOT                        R34 ; [+38]
      492 FASTCALL1                        TABLE_UNPACK R34 ; [+3]
      493 MOVE                             R38 R34
      494 GETIMPORT                        R37 K50 [unpack]
      496 CALL                             R37 1 3
      497 GETUPVAL                         R40 2
      498 GETTABLEKS                       R40 R40 K22 ["createElement"]
      500 LOADK                            R41 K57 ["TextButton"]
      501 NEWTABLE                         R42 8 0
      503 GETUPVAL                         R43 2
      504 GETTABLEKS                       R43 R43 K24 ["Tag"]
      506 LOADK                            R44 K40 ["X-Fit"]
      507 SETTABLE                         R44 R42 R43
      508 SETTABLEKS                       R37 R42 K52 ["Text"]
      510 LOADN                            R43 1
      511 SETTABLEKS                       R43 R42 K58 ["BackgroundTransparency"]
      513 GETUPVAL                         R43 8
      514 NAMECALL                         R43 R43 K31 ["getNextOrder"]
      516 CALL                             R43 1 1
      517 SETTABLEKS                       R43 R42 K32 ["LayoutOrder"]
      519 GETUPVAL                         R43 2
      520 GETTABLEKS                       R43 R43 K33 ["Event"]
      522 GETTABLEKS                       R43 R43 K34 ["Activated"]
      524 NEWCLOSURE                       R44 P14
      525 CAPTURE                          VAL R23
      526 CAPTURE                          VAL R39
      527 SETTABLE                         R44 R42 R43
      528 CALL                             R40 2 1
      529 MOVE                             R36 R40
      530 MOVE                             R38 R24
      531 GETUPVAL                         R39 2
      532 GETTABLEKS                       R39 R39 K22 ["createElement"]
      534 LOADK                            R40 K59 ["Frame"]
      535 NEWTABLE                         R41 2 0
      537 GETUPVAL                         R42 2
      538 GETTABLEKS                       R42 R42 K24 ["Tag"]
      540 GETUPVAL                         R43 7
      541 LOADK                            R44 K60 ["X-FitY"]
      542 LOADK                            R45 K61 ["CX-Invisible"]
      543 MOVE                             R46 R32
      544 CALL                             R43 3 1
      545 SETTABLE                         R43 R41 R42
      546 GETUPVAL                         R42 8
      547 NAMECALL                         R42 R42 K31 ["getNextOrder"]
      549 CALL                             R42 1 1
      550 SETTABLEKS                       R42 R41 K32 ["LayoutOrder"]
      552 NEWTABLE                         R42 0 3
      554 GETUPVAL                         R43 2
      555 GETTABLEKS                       R43 R43 K22 ["createElement"]
      557 LOADK                            R44 K39 ["UIListLayout"]
      558 NEWTABLE                         R45 4 0
      560 GETUPVAL                         R46 2
      561 GETTABLEKS                       R46 R46 K24 ["Tag"]
      563 GETUPVAL                         R47 7
      564 LOADK                            R48 K40 ["X-Fit"]
      565 CALL                             R47 1 1
      566 SETTABLE                         R47 R45 R46
      567 GETIMPORT                        R46 K63 [Enum.FillDirection.Horizontal]
      569 SETTABLEKS                       R46 R45 K42 ["FillDirection"]
      571 GETIMPORT                        R46 K46 [Enum.SortOrder.LayoutOrder]
      573 SETTABLEKS                       R46 R45 K45 ["SortOrder"]
      575 CALL                             R43 2 1
      576 GETUPVAL                         R44 2
      577 GETTABLEKS                       R44 R44 K22 ["createElement"]
      579 LOADK                            R45 K51 ["TextLabel"]
      580 NEWTABLE                         R46 2 0
      582 GETUPVAL                         R47 2
      583 GETTABLEKS                       R47 R47 K24 ["Tag"]
      585 LOADK                            R48 K40 ["X-Fit"]
      586 SETTABLE                         R48 R46 R47
      587 LOADK                            R47 K64 ["• "]
      588 SETTABLEKS                       R47 R46 K52 ["Text"]
      590 CALL                             R44 2 1
      591 GETUPVAL                         R45 2
      592 GETTABLEKS                       R45 R45 K22 ["createElement"]
      594 LOADK                            R46 K59 ["Frame"]
      595 NEWTABLE                         R47 2 0
      597 GETUPVAL                         R48 2
      598 GETTABLEKS                       R48 R48 K24 ["Tag"]
      600 GETUPVAL                         R49 7
      601 LOADK                            R50 K40 ["X-Fit"]
      602 LOADK                            R51 K61 ["CX-Invisible"]
      603 CALL                             R49 2 1
      604 SETTABLE                         R49 R47 R48
      605 GETUPVAL                         R48 8
      606 NAMECALL                         R48 R48 K31 ["getNextOrder"]
      608 CALL                             R48 1 1
      609 SETTABLEKS                       R48 R47 K32 ["LayoutOrder"]
      611 NEWTABLE                         R48 2 1
      613 GETUPVAL                         R49 2
      614 GETTABLEKS                       R49 R49 K22 ["createElement"]
      616 LOADK                            R50 K39 ["UIListLayout"]
      617 NEWTABLE                         R51 4 0
      619 GETUPVAL                         R52 2
      620 GETTABLEKS                       R52 R52 K24 ["Tag"]
      622 GETUPVAL                         R53 7
      623 LOADK                            R54 K40 ["X-Fit"]
      624 CALL                             R53 1 1
      625 SETTABLE                         R53 R51 R52
      626 GETIMPORT                        R52 K63 [Enum.FillDirection.Horizontal]
      628 SETTABLEKS                       R52 R51 K42 ["FillDirection"]
      630 GETIMPORT                        R52 K46 [Enum.SortOrder.LayoutOrder]
      632 SETTABLEKS                       R52 R51 K45 ["SortOrder"]
      634 CALL                             R49 2 1
      635 SETLIST                          R48 R49 1 [1]
      637 SETTABLEKS                       R35 R48 K65 ["LinkButton"]
      639 SETTABLEKS                       R36 R48 K66 ["ShowMore"]
      641 CALL                             R45 3 -1
      642 SETLIST                          R42 R43 -1 [1]
      644 CALL                             R39 3 -1
      645 FASTCALL                         TABLE_INSERT ; [+2]
      646 GETIMPORT                        R37 K56 [table.insert]
      648 CALL                             R37 -1 0
      649 FORGLOOP                         R25 2 [inext] ; [-231]
      651 GETUPVAL                         R25 2
      652 GETTABLEKS                       R25 R25 K22 ["createElement"]
      654 LOADK                            R26 K59 ["Frame"]
      655 NEWTABLE                         R27 2 0
      657 GETUPVAL                         R28 2
      658 GETTABLEKS                       R28 R28 K24 ["Tag"]
      660 GETUPVAL                         R29 7
      661 LOADK                            R30 K67 ["X-Fill"]
      662 LOADK                            R31 K61 ["CX-Invisible"]
      663 CALL                             R29 2 1
      664 SETTABLE                         R29 R27 R28
      665 GETUPVAL                         R28 8
      666 NAMECALL                         R28 R28 K31 ["getNextOrder"]
      668 CALL                             R28 1 1
      669 SETTABLEKS                       R28 R27 K32 ["LayoutOrder"]
      671 MOVE                             R28 R24
      672 CALL                             R25 3 1
      673 GETUPVAL                         R26 2
      674 GETTABLEKS                       R26 R26 K22 ["createElement"]
      676 LOADK                            R27 K59 ["Frame"]
      677 NEWTABLE                         R28 4 0
      679 GETUPVAL                         R29 2
      680 GETTABLEKS                       R29 R29 K24 ["Tag"]
      682 GETUPVAL                         R30 7
      683 LOADK                            R31 K68 ["Component-ActivityHistoryBubble"]
      684 LOADK                            R32 K69 ["X-Row"]
      685 CALL                             R30 2 1
      686 SETTABLE                         R30 R28 R29
      687 GETUPVAL                         R29 2
      688 GETTABLEKS                       R29 R29 K33 ["Event"]
      690 GETTABLEKS                       R29 R29 K70 ["MouseEnter"]
      692 GETTABLEKS                       R30 R8 K71 ["enable"]
      694 SETTABLE                         R30 R28 R29
      695 GETUPVAL                         R29 2
      696 GETTABLEKS                       R29 R29 K33 ["Event"]
      698 GETTABLEKS                       R29 R29 K72 ["MouseLeave"]
      700 GETTABLEKS                       R30 R8 K73 ["disable"]
      702 SETTABLE                         R30 R28 R29
      703 GETTABLEKS                       R29 R0 K32 ["LayoutOrder"]
      705 SETTABLEKS                       R29 R28 K32 ["LayoutOrder"]
      707 DUPTABLE                         R29 K76 [{"Left", "Right"}]
      708 GETUPVAL                         R30 2
      709 GETTABLEKS                       R30 R30 K22 ["createElement"]
      711 LOADK                            R31 K59 ["Frame"]
      712 NEWTABLE                         R32 2 0
      714 GETUPVAL                         R33 2
      715 GETTABLEKS                       R33 R33 K24 ["Tag"]
      717 GETUPVAL                         R34 7
      718 LOADK                            R35 K61 ["CX-Invisible"]
      719 CALL                             R34 1 1
      720 SETTABLE                         R34 R32 R33
      721 GETUPVAL                         R33 8
      722 NAMECALL                         R33 R33 K31 ["getNextOrder"]
      724 CALL                             R33 1 1
      725 SETTABLEKS                       R33 R32 K32 ["LayoutOrder"]
      727 DUPTABLE                         R33 K78 [{"Icon"}]
      728 SETTABLEKS                       R18 R33 K77 ["Icon"]
      730 CALL                             R30 3 1
      731 SETTABLEKS                       R30 R29 K74 ["Left"]
      733 GETUPVAL                         R30 2
      734 GETTABLEKS                       R30 R30 K22 ["createElement"]
      736 LOADK                            R31 K59 ["Frame"]
      737 NEWTABLE                         R32 2 0
      739 GETUPVAL                         R33 2
      740 GETTABLEKS                       R33 R33 K24 ["Tag"]
      742 GETUPVAL                         R34 7
      743 LOADK                            R35 K79 ["X-Column"]
      744 LOADK                            R36 K61 ["CX-Invisible"]
      745 CALL                             R34 2 1
      746 SETTABLE                         R34 R32 R33
      747 GETUPVAL                         R33 8
      748 NAMECALL                         R33 R33 K31 ["getNextOrder"]
      750 CALL                             R33 1 1
      751 SETTABLEKS                       R33 R32 K32 ["LayoutOrder"]
      753 DUPTABLE                         R33 K83 [{"Top", "Middle", "Bottom"}]
      754 GETUPVAL                         R34 2
      755 GETTABLEKS                       R34 R34 K22 ["createElement"]
      757 LOADK                            R35 K59 ["Frame"]
      758 NEWTABLE                         R36 2 0
      760 GETUPVAL                         R37 2
      761 GETTABLEKS                       R37 R37 K24 ["Tag"]
      763 GETUPVAL                         R38 7
      764 LOADK                            R39 K69 ["X-Row"]
      765 LOADK                            R40 K61 ["CX-Invisible"]
      766 CALL                             R38 2 1
      767 SETTABLE                         R38 R36 R37
      768 GETUPVAL                         R37 8
      769 NAMECALL                         R37 R37 K31 ["getNextOrder"]
      771 CALL                             R37 1 1
      772 SETTABLEKS                       R37 R36 K32 ["LayoutOrder"]
      774 DUPTABLE                         R37 K87 [{"Date", "Info", "DotDotDot"}]
      775 GETUPVAL                         R39 9
      776 JUMPIF                           R39 ; [+19]
      777 GETUPVAL                         R38 2
      778 GETTABLEKS                       R38 R38 K22 ["createElement"]
      780 LOADK                            R39 K51 ["TextLabel"]
      781 DUPTABLE                         R40 K88 [{"LayoutOrder", "Text"}]
      782 GETUPVAL                         R41 8
      783 NAMECALL                         R41 R41 K31 ["getNextOrder"]
      785 CALL                             R41 1 1
      786 SETTABLEKS                       R41 R40 K32 ["LayoutOrder"]
      788 GETTABLEKS                       R41 R0 K4 ["Bubble"]
      790 GETTABLEKS                       R41 R41 K89 ["date"]
      792 SETTABLEKS                       R41 R40 K52 ["Text"]
      794 CALL                             R38 2 1
      795 JUMPIF                           R38 ; [+1]
      796 LOADNIL                          R38
      797 SETTABLEKS                       R38 R37 K84 ["Date"]
      799 GETUPVAL                         R39 9
      800 JUMPIFNOT                        R39 ; [+138]
      801 GETUPVAL                         R38 2
      802 GETTABLEKS                       R38 R38 K22 ["createElement"]
      804 LOADK                            R39 K59 ["Frame"]
      805 NEWTABLE                         R40 2 0
      807 GETUPVAL                         R41 2
      808 GETTABLEKS                       R41 R41 K24 ["Tag"]
      810 GETUPVAL                         R42 7
      811 LOADK                            R43 K69 ["X-Row"]
      812 LOADK                            R44 K61 ["CX-Invisible"]
      813 CALL                             R42 2 1
      814 SETTABLE                         R42 R40 R41
      815 GETUPVAL                         R41 8
      816 NAMECALL                         R41 R41 K31 ["getNextOrder"]
      818 CALL                             R41 1 1
      819 SETTABLEKS                       R41 R40 K32 ["LayoutOrder"]
      821 DUPTABLE                         R41 K92 [{"Date", "Spacer", "TargetNameContainer"}]
      822 GETUPVAL                         R42 2
      823 GETTABLEKS                       R42 R42 K22 ["createElement"]
      825 LOADK                            R43 K51 ["TextLabel"]
      826 DUPTABLE                         R44 K88 [{"LayoutOrder", "Text"}]
      827 GETUPVAL                         R45 8
      828 NAMECALL                         R45 R45 K31 ["getNextOrder"]
      830 CALL                             R45 1 1
      831 SETTABLEKS                       R45 R44 K32 ["LayoutOrder"]
      833 GETTABLEKS                       R45 R0 K4 ["Bubble"]
      835 GETTABLEKS                       R45 R45 K89 ["date"]
      837 SETTABLEKS                       R45 R44 K52 ["Text"]
      839 CALL                             R42 2 1
      840 SETTABLEKS                       R42 R41 K84 ["Date"]
      842 GETUPVAL                         R42 2
      843 GETTABLEKS                       R42 R42 K22 ["createElement"]
      845 LOADK                            R43 K51 ["TextLabel"]
      846 DUPTABLE                         R44 K94 [{["LayoutOrder"], ["Text"] = "•"}]
      847 GETUPVAL                         R45 8
      848 NAMECALL                         R45 R45 K31 ["getNextOrder"]
      850 CALL                             R45 1 1
      851 SETTABLEKS                       R45 R44 K32 ["LayoutOrder"]
      853 CALL                             R42 2 1
      854 SETTABLEKS                       R42 R41 K90 ["Spacer"]
      856 GETUPVAL                         R42 2
      857 GETTABLEKS                       R42 R42 K22 ["createElement"]
      859 LOADK                            R43 K59 ["Frame"]
      860 NEWTABLE                         R44 2 0
      862 GETUPVAL                         R45 2
      863 GETTABLEKS                       R45 R45 K24 ["Tag"]
      865 GETUPVAL                         R46 7
      866 LOADK                            R47 K61 ["CX-Invisible"]
      867 LOADK                            R48 K69 ["X-Row"]
      868 CALL                             R46 2 1
      869 SETTABLE                         R46 R44 R45
      870 GETUPVAL                         R45 8
      871 NAMECALL                         R45 R45 K31 ["getNextOrder"]
      873 CALL                             R45 1 1
      874 SETTABLEKS                       R45 R44 K32 ["LayoutOrder"]
      876 DUPTABLE                         R45 K97 [{"MiniUserIconContainer", "TargetName"}]
      877 GETUPVAL                         R46 2
      878 GETTABLEKS                       R46 R46 K22 ["createElement"]
      880 LOADK                            R47 K59 ["Frame"]
      881 NEWTABLE                         R48 2 0
      883 GETUPVAL                         R49 2
      884 GETTABLEKS                       R49 R49 K24 ["Tag"]
      886 GETUPVAL                         R50 7
      887 LOADK                            R51 K61 ["CX-Invisible"]
      888 CALL                             R50 1 1
      889 SETTABLE                         R50 R48 R49
      890 GETUPVAL                         R49 8
      891 NAMECALL                         R49 R49 K31 ["getNextOrder"]
      893 CALL                             R49 1 1
      894 SETTABLEKS                       R49 R48 K32 ["LayoutOrder"]
      896 DUPTABLE                         R49 K99 [{"MiniUserIcon"}]
      897 GETUPVAL                         R50 2
      898 GETTABLEKS                       R50 R50 K22 ["createElement"]
      900 LOADK                            R51 K35 ["ImageLabel"]
      901 DUPTABLE                         R52 K100 [{"LayoutOrder"}]
      902 GETUPVAL                         R53 8
      903 NAMECALL                         R53 R53 K31 ["getNextOrder"]
      905 CALL                             R53 1 1
      906 SETTABLEKS                       R53 R52 K32 ["LayoutOrder"]
      908 CALL                             R50 2 1
      909 SETTABLEKS                       R50 R49 K98 ["MiniUserIcon"]
      911 CALL                             R46 3 1
      912 SETTABLEKS                       R46 R45 K95 ["MiniUserIconContainer"]
      914 GETUPVAL                         R46 2
      915 GETTABLEKS                       R46 R46 K22 ["createElement"]
      917 LOADK                            R47 K51 ["TextLabel"]
      918 DUPTABLE                         R48 K101 [{"Text", "LayoutOrder"}]
      919 GETTABLEKS                       R49 R0 K4 ["Bubble"]
      921 GETTABLEKS                       R49 R49 K102 ["actorName"]
      923 SETTABLEKS                       R49 R48 K52 ["Text"]
      925 GETUPVAL                         R49 8
      926 NAMECALL                         R49 R49 K31 ["getNextOrder"]
      928 CALL                             R49 1 1
      929 SETTABLEKS                       R49 R48 K32 ["LayoutOrder"]
      931 CALL                             R46 2 1
      932 SETTABLEKS                       R46 R45 K96 ["TargetName"]
      934 CALL                             R42 3 1
      935 SETTABLEKS                       R42 R41 K91 ["TargetNameContainer"]
      937 CALL                             R38 3 1
      938 JUMPIF                           R38 ; [+1]
      939 LOADNIL                          R38
      940 SETTABLEKS                       R38 R37 K85 ["Info"]
      942 JUMPIFNOT                        R9 ; [+3]
      943 GETTABLEKS                       R39 R8 K16 ["enabled"]
      945 JUMPIF                           R39 ; [+2]
      946 LOADNIL                          R38
      947 JUMP                             ; [+69]
      948 GETUPVAL                         R38 2
      949 GETTABLEKS                       R38 R38 K22 ["createElement"]
      951 LOADK                            R39 K59 ["Frame"]
      952 NEWTABLE                         R40 2 0
      954 GETUPVAL                         R41 2
      955 GETTABLEKS                       R41 R41 K24 ["Tag"]
      957 GETUPVAL                         R42 7
      958 LOADK                            R43 K61 ["CX-Invisible"]
      959 CALL                             R42 1 1
      960 SETTABLE                         R42 R40 R41
      961 GETUPVAL                         R41 8
      962 NAMECALL                         R41 R41 K31 ["getNextOrder"]
      964 CALL                             R41 1 1
      965 SETTABLEKS                       R41 R40 K32 ["LayoutOrder"]
      967 DUPTABLE                         R41 K105 [{"Dropdown", "Button"}]
      968 GETUPVAL                         R42 2
      969 GETTABLEKS                       R42 R42 K22 ["createElement"]
      971 GETUPVAL                         R43 10
      972 DUPTABLE                         R44 K112 [{["Items"], ["Hide"], ["OnItemActivated"], ["OnFocusLost"], ["Width"] = 240}]
      973 SETTABLEKS                       R10 R44 K106 ["Items"]
      975 NOT                              R45 R6
      976 SETTABLEKS                       R45 R44 K107 ["Hide"]
      978 SETTABLEKS                       R13 R44 K108 ["OnItemActivated"]
      980 SETTABLEKS                       R14 R44 K109 ["OnFocusLost"]
      982 CALL                             R42 2 1
      983 SETTABLEKS                       R42 R41 K103 ["Dropdown"]
      985 GETUPVAL                         R42 2
      986 GETTABLEKS                       R42 R42 K22 ["createElement"]
      988 LOADK                            R43 K23 ["ImageButton"]
      989 NEWTABLE                         R44 4 0
      991 GETUPVAL                         R45 2
      992 GETTABLEKS                       R45 R45 K24 ["Tag"]
      994 GETUPVAL                         R46 7
      995 LOADK                            R47 K67 ["X-Fill"]
      996 CALL                             R46 1 1
      997 SETTABLE                         R46 R44 R45
      998 GETUPVAL                         R45 8
      999 NAMECALL                         R45 R45 K31 ["getNextOrder"]
     1001 CALL                             R45 1 1
     1002 SETTABLEKS                       R45 R44 K32 ["LayoutOrder"]
     1004 LOADB                            R45 1
     1005 SETTABLEKS                       R45 R44 K113 ["AutoButtonColor"]
     1007 GETUPVAL                         R45 2
     1008 GETTABLEKS                       R45 R45 K33 ["Event"]
     1010 GETTABLEKS                       R45 R45 K34 ["Activated"]
     1012 SETTABLE                         R15 R44 R45
     1013 CALL                             R42 2 1
     1014 SETTABLEKS                       R42 R41 K104 ["Button"]
     1016 CALL                             R38 3 1
     1017 SETTABLEKS                       R38 R37 K86 ["DotDotDot"]
     1019 CALL                             R34 3 1
     1020 SETTABLEKS                       R34 R33 K80 ["Top"]
     1022 GETUPVAL                         R34 2
     1023 GETTABLEKS                       R34 R34 K22 ["createElement"]
     1025 LOADK                            R35 K59 ["Frame"]
     1026 NEWTABLE                         R36 2 0
     1028 GETUPVAL                         R37 2
     1029 GETTABLEKS                       R37 R37 K24 ["Tag"]
     1031 GETUPVAL                         R38 7
     1032 LOADK                            R39 K61 ["CX-Invisible"]
     1033 CALL                             R38 1 1
     1034 SETTABLE                         R38 R36 R37
     1035 GETUPVAL                         R37 8
     1036 NAMECALL                         R37 R37 K31 ["getNextOrder"]
     1038 CALL                             R37 1 1
     1039 SETTABLEKS                       R37 R36 K32 ["LayoutOrder"]
     1041 DUPTABLE                         R37 K115 [{"Description"}]
     1042 SETTABLEKS                       R25 R37 K114 ["Description"]
     1044 CALL                             R34 3 1
     1045 SETTABLEKS                       R34 R33 K81 ["Middle"]
     1047 GETUPVAL                         R35 9
     1048 JUMPIF                           R35 ; [+115]
     1049 GETUPVAL                         R34 2
     1050 GETTABLEKS                       R34 R34 K22 ["createElement"]
     1052 LOADK                            R35 K57 ["TextButton"]
     1053 NEWTABLE                         R36 4 0
     1055 GETUPVAL                         R37 2
     1056 GETTABLEKS                       R37 R37 K24 ["Tag"]
     1058 GETUPVAL                         R38 7
     1059 LOADK                            R39 K69 ["X-Row"]
     1060 LOADK                            R40 K61 ["CX-Invisible"]
     1061 CALL                             R38 2 1
     1062 SETTABLE                         R38 R36 R37
     1063 LOADK                            R37 K21 [""]
     1064 SETTABLEKS                       R37 R36 K52 ["Text"]
     1066 GETUPVAL                         R37 2
     1067 GETTABLEKS                       R37 R37 K33 ["Event"]
     1069 GETTABLEKS                       R37 R37 K34 ["Activated"]
     1071 SETTABLE                         R19 R36 R37
     1072 GETUPVAL                         R37 8
     1073 NAMECALL                         R37 R37 K31 ["getNextOrder"]
     1075 CALL                             R37 1 1
     1076 SETTABLEKS                       R37 R36 K32 ["LayoutOrder"]
     1078 DUPTABLE                         R37 K117 [{"IconFrame", "TargetName"}]
     1079 GETUPVAL                         R38 2
     1080 GETTABLEKS                       R38 R38 K22 ["createElement"]
     1082 LOADK                            R39 K59 ["Frame"]
     1083 NEWTABLE                         R40 2 0
     1085 GETUPVAL                         R41 2
     1086 GETTABLEKS                       R41 R41 K24 ["Tag"]
     1088 GETUPVAL                         R42 7
     1089 LOADK                            R43 K61 ["CX-Invisible"]
     1090 CALL                             R42 1 1
     1091 SETTABLE                         R42 R40 R41
     1092 GETUPVAL                         R41 8
     1093 NAMECALL                         R41 R41 K31 ["getNextOrder"]
     1095 CALL                             R41 1 1
     1096 SETTABLEKS                       R41 R40 K32 ["LayoutOrder"]
     1098 DUPTABLE                         R41 K78 [{"Icon"}]
     1099 GETUPVAL                         R42 2
     1100 GETTABLEKS                       R42 R42 K22 ["createElement"]
     1102 LOADK                            R43 K35 ["ImageLabel"]
     1103 DUPTABLE                         R44 K118 [{"Image", "LayoutOrder"}]
     1104 GETTABLEKS                       R46 R0 K4 ["Bubble"]
     1106 GETTABLEKS                       R46 R46 K119 ["actorId"]
     1108 FASTCALL1                        TOSTRING R46 ; [+3]
     1109 MOVE                             R48 R46
     1110 GETIMPORT                        R47 K20 [tostring]
     1112 CALL                             R47 1 1
     1113 GETUPVAL                         R49 6
     1114 GETTABLEKS                       R48 R49 K25 ["User"]
     1116 JUMPIFNOT                        R48 ; [+7]
     1117 GETUPVAL                         R49 6
     1118 GETTABLEKS                       R48 R49 K25 ["User"]
     1120 MOVE                             R49 R47
     1121 CALL                             R48 1 1
     1122 MOVE                             R45 R48
     1123 JUMP                             ; [+1]
     1124 LOADK                            R45 K21 [""]
     1125 SETTABLEKS                       R45 R44 K30 ["Image"]
     1127 GETUPVAL                         R45 8
     1128 NAMECALL                         R45 R45 K31 ["getNextOrder"]
     1130 CALL                             R45 1 1
     1131 SETTABLEKS                       R45 R44 K32 ["LayoutOrder"]
     1133 CALL                             R42 2 1
     1134 SETTABLEKS                       R42 R41 K77 ["Icon"]
     1136 CALL                             R38 3 1
     1137 SETTABLEKS                       R38 R37 K116 ["IconFrame"]
     1139 GETUPVAL                         R38 2
     1140 GETTABLEKS                       R38 R38 K22 ["createElement"]
     1142 LOADK                            R39 K51 ["TextLabel"]
     1143 DUPTABLE                         R40 K122 [{["Text"], ["RichText"] = True, ["LayoutOrder"]}]
     1144 LOADK                            R42 K123 ["<u>"]
     1145 GETTABLEKS                       R43 R0 K4 ["Bubble"]
     1147 GETTABLEKS                       R43 R43 K102 ["actorName"]
     1149 LOADK                            R44 K124 ["</u>"]
     1150 CONCAT                           R41 R42 R44
     1151 SETTABLEKS                       R41 R40 K52 ["Text"]
     1153 GETUPVAL                         R41 8
     1154 NAMECALL                         R41 R41 K31 ["getNextOrder"]
     1156 CALL                             R41 1 1
     1157 SETTABLEKS                       R41 R40 K32 ["LayoutOrder"]
     1159 CALL                             R38 2 1
     1160 SETTABLEKS                       R38 R37 K96 ["TargetName"]
     1162 CALL                             R34 3 1
     1163 JUMPIF                           R34 ; [+1]
     1164 LOADNIL                          R34
     1165 SETTABLEKS                       R34 R33 K82 ["Bottom"]
     1167 CALL                             R30 3 1
     1168 SETTABLEKS                       R30 R29 K75 ["Right"]
     1170 CALL                             R26 3 -1
     1171 CLOSEUPVALS                      R12
     1172 RETURN                           R26 -1

PROTO_35:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R3 R0 K1 ["props"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["ReactUtils"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Util"]
       36 GETTABLEKS                       R5 R5 K11 ["ActivityHistoryEventTranslated"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K4 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Src"]
       43 GETTABLEKS                       R6 R6 K12 ["Contexts"]
       45 GETTABLEKS                       R6 R6 K13 ["ActivityHistoryContext"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K4 [require]
       50 GETTABLEKS                       R7 R0 K9 ["Src"]
       52 GETTABLEKS                       R7 R7 K10 ["Util"]
       54 GETTABLEKS                       R7 R7 K14 ["BaseUrls"]
       56 CALL                             R6 1 1
       57 GETTABLEKS                       R7 R2 K15 ["UI"]
       59 GETTABLEKS                       R8 R2 K16 ["ContextServices"]
       61 GETTABLEKS                       R8 R8 K17 ["Localization"]
       63 GETTABLEKS                       R9 R2 K16 ["ContextServices"]
       65 GETTABLEKS                       R9 R9 K18 ["Analytics"]
       67 GETTABLEKS                       R10 R7 K19 ["DropdownMenu"]
       69 GETTABLEKS                       R11 R2 K20 ["Styling"]
       71 GETTABLEKS                       R11 R11 K21 ["joinTags"]
       73 GETTABLEKS                       R12 R2 K10 ["Util"]
       75 GETTABLEKS                       R12 R12 K22 ["LayoutOrderIterator"]
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
