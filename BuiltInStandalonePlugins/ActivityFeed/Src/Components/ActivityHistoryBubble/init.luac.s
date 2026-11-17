PROTO_0:
        0 LOADK                            R1 K0 ["rbxthumb://type=GameIcon&id=%*&w=50&h=50"]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R1 K0 ["rbxthumb://type=Asset&id=%*&w=150&h=150"]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_2:
        0 LOADK                            R1 K0 ["rbxthumb://type=AvatarHeadShot&id=%*&w=48&h=48"]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_3:
        0 LOADK                            R1 K0 ["rbxthumb://type=BadgeIcon&id=%*&w=150&h=150"]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_4:
        0 LOADK                            R1 K0 [""]
        1 RETURN                           R1 1

PROTO_5:
        0 LOADK                            R1 K0 ["rbxthumb://type=GamePass&id=%*&w=150&h=150"]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_6:
        0 LOADK                            R1 K0 ["rbxthumb://type=GroupIcon&id=%*&w=150&h=150"]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_7:
        0 LOADK                            R1 K0 ["rbxthumb://type=Asset&id=%*&w=150&h=150"]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_8:
        0 LOADK                            R1 K0 [""]
        1 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["createPath"]
        3 LOADK                            R4 K1 ["dashboard/creations/experiences/"]
        4 FASTCALL1                        TOSTRING R1 ; [+3]
        5 MOVE                             R6 R1
        6 GETIMPORT                        R5 K3 [tostring]
        8 CALL                             R5 1 1
        9 LOADK                            R6 K4 ["/overview"]
       10 CONCAT                           R2 R3 R6
       11 RETURN                           R2 1

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
        5 MOVE                             R6 R1
        6 GETIMPORT                        R5 K3 [tostring]
        8 CALL                             R5 1 1
        9 LOADK                            R6 K4 ["/profile"]
       10 CONCAT                           R2 R3 R6
       11 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["createPath"]
        3 LOADK                            R4 K1 ["dashboard/creations/experiences/"]
        4 FASTCALL1                        TOSTRING R1 ; [+3]
        5 MOVE                             R6 R1
        6 GETIMPORT                        R5 K3 [tostring]
        8 CALL                             R5 1 1
        9 LOADK                            R6 K4 ["/badges/"]
       10 FASTCALL1                        TOSTRING R1 ; [+3]
       11 MOVE                             R8 R1
       12 GETIMPORT                        R7 K3 [tostring]
       14 CALL                             R7 1 1
       15 LOADK                            R8 K5 ["/overview"]
       16 CONCAT                           R2 R3 R8
       17 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["createPath"]
        3 LOADK                            R4 K1 ["dashboard/creations/experiences/"]
        4 FASTCALL1                        TOSTRING R1 ; [+3]
        5 MOVE                             R6 R1
        6 GETIMPORT                        R5 K3 [tostring]
        8 CALL                             R5 1 1
        9 LOADK                            R6 K4 ["/developer-products/"]
       10 FASTCALL1                        TOSTRING R1 ; [+3]
       11 MOVE                             R8 R1
       12 GETIMPORT                        R7 K3 [tostring]
       14 CALL                             R7 1 1
       15 LOADK                            R8 K5 ["/configure"]
       16 CONCAT                           R2 R3 R8
       17 RETURN                           R2 1

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["createPath"]
        3 LOADK                            R4 K1 ["dashboard/creations/experiences/"]
        4 FASTCALL1                        TOSTRING R1 ; [+3]
        5 MOVE                             R6 R1
        6 GETIMPORT                        R5 K3 [tostring]
        8 CALL                             R5 1 1
        9 LOADK                            R6 K4 ["/passes/"]
       10 FASTCALL1                        TOSTRING R1 ; [+3]
       11 MOVE                             R8 R1
       12 GETIMPORT                        R7 K3 [tostring]
       14 CALL                             R7 1 1
       15 LOADK                            R8 K5 ["/configure"]
       16 CONCAT                           R2 R3 R8
       17 RETURN                           R2 1

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
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R5 R5 K0 ["Bubble"]
       10 GETTABLEKS                       R5 R5 K3 ["universeId"]
       12 FASTCALL1                        TOSTRING R5 ; [+2]
       13 GETIMPORT                        R4 K5 [tostring]
       15 CALL                             R4 1 1
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R6 R6 K0 ["Bubble"]
       19 GETTABLEKS                       R6 R6 K6 ["actorId"]
       21 FASTCALL1                        TOSTRING R6 ; [+2]
       22 GETIMPORT                        R5 K5 [tostring]
       24 CALL                             R5 1 1
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R6 R6 K7 ["wwwPath"]
       28 LOADK                            R7 K8 ["users/"]
       29 FASTCALL1                        TOSTRING R5 ; [+3]
       30 MOVE                             R9 R5
       31 GETIMPORT                        R8 K5 [tostring]
       33 CALL                             R8 1 1
       34 LOADK                            R9 K9 ["/profile"]
       35 CONCAT                           R3 R6 R9
       36 LOADNIL                          R4
       37 LOADNIL                          R5
       38 CALL                             R0 5 0
       39 RETURN                           R0 0

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
      162 JUMPIFNOT                        R16 ; [+112]
      163 JUMPIFEQKS                       R17 K21 [""] ; [+57]
      165 GETUPVAL                         R19 2
      166 GETTABLEKS                       R19 R19 K22 ["createElement"]
      168 LOADK                            R20 K23 ["ImageButton"]
      169 NEWTABLE                         R21 4 0
      171 GETUPVAL                         R22 2
      172 GETTABLEKS                       R22 R22 K24 ["Tag"]
      174 GETTABLEKS                       R24 R0 K4 ["Bubble"]
      176 GETTABLEKS                       R24 R24 K17 ["iconType"]
      178 LOADK                            R23 K21 [""]
      179 JUMPIFNOTEQKS                    R24 K25 ["User"] ; [+7]
      181 GETUPVAL                         R25 7
      182 MOVE                             R26 R23
      183 LOADK                            R27 K26 ["RoundIcon"]
      184 CALL                             R25 2 1
      185 MOVE                             R23 R25
      186 JUMP                             ; [+5]
      187 GETUPVAL                         R25 7
      188 MOVE                             R26 R23
      189 LOADK                            R27 K27 ["SquareIcon"]
      190 CALL                             R25 2 1
      191 MOVE                             R23 R25
      192 JUMPIFNOTEQKS                    R24 K28 ["Script"] ; [+6]
      194 GETUPVAL                         R25 7
      195 MOVE                             R26 R23
      196 LOADK                            R27 K29 ["ScriptIcon"]
      197 CALL                             R25 2 1
      198 MOVE                             R23 R25
      199 SETTABLE                         R23 R21 R22
      200 SETTABLEKS                       R17 R21 K30 ["Image"]
      202 GETUPVAL                         R22 8
      203 NAMECALL                         R22 R22 K31 ["getNextOrder"]
      205 CALL                             R22 1 1
      206 SETTABLEKS                       R22 R21 K32 ["LayoutOrder"]
      208 GETUPVAL                         R22 2
      209 GETTABLEKS                       R22 R22 K33 ["Event"]
      211 GETTABLEKS                       R22 R22 K34 ["Activated"]
      213 NEWCLOSURE                       R23 P8
      214 CAPTURE                          REF R12
      215 CAPTURE                          VAL R0
      216 CAPTURE                          VAL R16
      217 SETTABLE                         R23 R21 R22
      218 CALL                             R19 2 1
      219 MOVE                             R18 R19
      220 JUMP                             ; [+145]
      221 GETUPVAL                         R19 2
      222 GETTABLEKS                       R19 R19 K22 ["createElement"]
      224 LOADK                            R20 K23 ["ImageButton"]
      225 NEWTABLE                         R21 4 0
      227 GETUPVAL                         R22 2
      228 GETTABLEKS                       R22 R22 K24 ["Tag"]
      230 GETTABLEKS                       R24 R0 K4 ["Bubble"]
      232 GETTABLEKS                       R24 R24 K17 ["iconType"]
      234 LOADK                            R23 K21 [""]
      235 JUMPIFNOTEQKS                    R24 K25 ["User"] ; [+7]
      237 GETUPVAL                         R25 7
      238 MOVE                             R26 R23
      239 LOADK                            R27 K26 ["RoundIcon"]
      240 CALL                             R25 2 1
      241 MOVE                             R23 R25
      242 JUMP                             ; [+5]
      243 GETUPVAL                         R25 7
      244 MOVE                             R26 R23
      245 LOADK                            R27 K27 ["SquareIcon"]
      246 CALL                             R25 2 1
      247 MOVE                             R23 R25
      248 JUMPIFNOTEQKS                    R24 K28 ["Script"] ; [+6]
      250 GETUPVAL                         R25 7
      251 MOVE                             R26 R23
      252 LOADK                            R27 K29 ["ScriptIcon"]
      253 CALL                             R25 2 1
      254 MOVE                             R23 R25
      255 SETTABLE                         R23 R21 R22
      256 GETUPVAL                         R22 8
      257 NAMECALL                         R22 R22 K31 ["getNextOrder"]
      259 CALL                             R22 1 1
      260 SETTABLEKS                       R22 R21 K32 ["LayoutOrder"]
      262 GETUPVAL                         R22 2
      263 GETTABLEKS                       R22 R22 K33 ["Event"]
      265 GETTABLEKS                       R22 R22 K34 ["Activated"]
      267 NEWCLOSURE                       R23 P9
      268 CAPTURE                          REF R12
      269 CAPTURE                          VAL R0
      270 CAPTURE                          VAL R16
      271 SETTABLE                         R23 R21 R22
      272 CALL                             R19 2 1
      273 MOVE                             R18 R19
      274 JUMP                             ; [+91]
      275 JUMPIFEQKS                       R17 K21 [""] ; [+47]
      277 GETUPVAL                         R19 2
      278 GETTABLEKS                       R19 R19 K22 ["createElement"]
      280 LOADK                            R20 K35 ["ImageLabel"]
      281 NEWTABLE                         R21 4 0
      283 GETUPVAL                         R22 2
      284 GETTABLEKS                       R22 R22 K24 ["Tag"]
      286 GETTABLEKS                       R24 R0 K4 ["Bubble"]
      288 GETTABLEKS                       R24 R24 K17 ["iconType"]
      290 LOADK                            R23 K21 [""]
      291 JUMPIFNOTEQKS                    R24 K25 ["User"] ; [+7]
      293 GETUPVAL                         R25 7
      294 MOVE                             R26 R23
      295 LOADK                            R27 K26 ["RoundIcon"]
      296 CALL                             R25 2 1
      297 MOVE                             R23 R25
      298 JUMP                             ; [+5]
      299 GETUPVAL                         R25 7
      300 MOVE                             R26 R23
      301 LOADK                            R27 K27 ["SquareIcon"]
      302 CALL                             R25 2 1
      303 MOVE                             R23 R25
      304 JUMPIFNOTEQKS                    R24 K28 ["Script"] ; [+6]
      306 GETUPVAL                         R25 7
      307 MOVE                             R26 R23
      308 LOADK                            R27 K29 ["ScriptIcon"]
      309 CALL                             R25 2 1
      310 MOVE                             R23 R25
      311 SETTABLE                         R23 R21 R22
      312 SETTABLEKS                       R17 R21 K30 ["Image"]
      314 GETUPVAL                         R22 8
      315 NAMECALL                         R22 R22 K31 ["getNextOrder"]
      317 CALL                             R22 1 1
      318 SETTABLEKS                       R22 R21 K32 ["LayoutOrder"]
      320 CALL                             R19 2 1
      321 MOVE                             R18 R19
      322 JUMP                             ; [+43]
      323 GETUPVAL                         R19 2
      324 GETTABLEKS                       R19 R19 K22 ["createElement"]
      326 LOADK                            R20 K35 ["ImageLabel"]
      327 NEWTABLE                         R21 2 0
      329 GETUPVAL                         R22 2
      330 GETTABLEKS                       R22 R22 K24 ["Tag"]
      332 GETTABLEKS                       R24 R0 K4 ["Bubble"]
      334 GETTABLEKS                       R24 R24 K17 ["iconType"]
      336 LOADK                            R23 K21 [""]
      337 JUMPIFNOTEQKS                    R24 K25 ["User"] ; [+7]
      339 GETUPVAL                         R25 7
      340 MOVE                             R26 R23
      341 LOADK                            R27 K26 ["RoundIcon"]
      342 CALL                             R25 2 1
      343 MOVE                             R23 R25
      344 JUMP                             ; [+5]
      345 GETUPVAL                         R25 7
      346 MOVE                             R26 R23
      347 LOADK                            R27 K27 ["SquareIcon"]
      348 CALL                             R25 2 1
      349 MOVE                             R23 R25
      350 JUMPIFNOTEQKS                    R24 K28 ["Script"] ; [+6]
      352 GETUPVAL                         R25 7
      353 MOVE                             R26 R23
      354 LOADK                            R27 K29 ["ScriptIcon"]
      355 CALL                             R25 2 1
      356 MOVE                             R23 R25
      357 SETTABLE                         R23 R21 R22
      358 GETUPVAL                         R22 8
      359 NAMECALL                         R22 R22 K31 ["getNextOrder"]
      361 CALL                             R22 1 1
      362 SETTABLEKS                       R22 R21 K32 ["LayoutOrder"]
      364 CALL                             R19 2 1
      365 MOVE                             R18 R19
      366 NEWCLOSURE                       R19 P10
      367 CAPTURE                          REF R12
      368 CAPTURE                          VAL R0
      369 CAPTURE                          UPVAL U9
      370 GETUPVAL                         R20 2
      371 GETTABLEKS                       R20 R20 K3 ["useState"]
      373 DUPTABLE                         R21 K38 [{["showMoreScripts"] = False}]
      374 CALL                             R20 1 2
      375 NEWCLOSURE                       R22 P11
      376 CAPTURE                          VAL R0
      377 NEWCLOSURE                       R23 P12
      378 CAPTURE                          VAL R8
      379 CAPTURE                          VAL R21
      380 CAPTURE                          REF R12
      381 CAPTURE                          VAL R0
      382 NEWTABLE                         R24 0 1
      384 GETUPVAL                         R25 2
      385 GETTABLEKS                       R25 R25 K22 ["createElement"]
      387 LOADK                            R26 K39 ["UIListLayout"]
      388 NEWTABLE                         R27 4 0
      390 GETUPVAL                         R28 2
      391 GETTABLEKS                       R28 R28 K24 ["Tag"]
      393 GETUPVAL                         R29 7
      394 LOADK                            R30 K40 ["X-Fit"]
      395 CALL                             R29 1 1
      396 SETTABLE                         R29 R27 R28
      397 GETIMPORT                        R28 K44 [Enum.FillDirection.Vertical]
      399 SETTABLEKS                       R28 R27 K42 ["FillDirection"]
      401 GETIMPORT                        R28 K46 [Enum.SortOrder.LayoutOrder]
      403 SETTABLEKS                       R28 R27 K45 ["SortOrder"]
      405 CALL                             R25 2 -1
      406 SETLIST                          R24 R25 -1 [1]
      408 GETIMPORT                        R25 K48 [ipairs]
      410 MOVE                             R26 R22
      411 MOVE                             R27 R20
      412 CALL                             R26 1 -1
      413 CALL                             R25 -1 3
      414 FORGPREP_INEXT                   R25
      415 FASTCALL1                        TABLE_UNPACK R29 ; [+3]
      416 MOVE                             R31 R29
      417 GETIMPORT                        R30 K50 [unpack]
      419 CALL                             R30 1 5
      420 JUMPIFNOTEQKS                    R31 K51 ["TextLabel"] ; [+33]
      422 MOVE                             R36 R24
      423 GETUPVAL                         R37 2
      424 GETTABLEKS                       R37 R37 K22 ["createElement"]
      426 LOADK                            R38 K51 ["TextLabel"]
      427 NEWTABLE                         R39 4 0
      429 GETUPVAL                         R40 2
      430 GETTABLEKS                       R40 R40 K24 ["Tag"]
      432 GETUPVAL                         R41 7
      433 LOADK                            R42 K40 ["X-Fit"]
      434 MOVE                             R43 R32
      435 CALL                             R41 2 1
      436 SETTABLE                         R41 R39 R40
      437 SETTABLEKS                       R30 R39 K52 ["Text"]
      439 LOADB                            R40 1
      440 SETTABLEKS                       R40 R39 K53 ["TextWrapped"]
      442 GETUPVAL                         R40 8
      443 NAMECALL                         R40 R40 K31 ["getNextOrder"]
      445 CALL                             R40 1 1
      446 SETTABLEKS                       R40 R39 K32 ["LayoutOrder"]
      448 CALL                             R37 2 -1
      449 FASTCALL                         TABLE_INSERT ; [+2]
      450 GETIMPORT                        R35 K56 [table.insert]
      452 CALL                             R35 -1 0
      453 JUMP                             ; [+191]
      454 GETUPVAL                         R35 2
      455 GETTABLEKS                       R35 R35 K22 ["createElement"]
      457 LOADK                            R36 K57 ["TextButton"]
      458 NEWTABLE                         R37 8 0
      460 GETUPVAL                         R38 2
      461 GETTABLEKS                       R38 R38 K24 ["Tag"]
      463 LOADK                            R39 K40 ["X-Fit"]
      464 SETTABLE                         R39 R37 R38
      465 SETTABLEKS                       R30 R37 K52 ["Text"]
      467 LOADN                            R38 1
      468 SETTABLEKS                       R38 R37 K58 ["BackgroundTransparency"]
      470 GETUPVAL                         R38 8
      471 NAMECALL                         R38 R38 K31 ["getNextOrder"]
      473 CALL                             R38 1 1
      474 SETTABLEKS                       R38 R37 K32 ["LayoutOrder"]
      476 GETUPVAL                         R38 2
      477 GETTABLEKS                       R38 R38 K33 ["Event"]
      479 GETTABLEKS                       R38 R38 K34 ["Activated"]
      481 NEWCLOSURE                       R39 P13
      482 CAPTURE                          VAL R23
      483 CAPTURE                          VAL R33
      484 SETTABLE                         R39 R37 R38
      485 CALL                             R35 2 1
      486 LOADNIL                          R36
      487 JUMPIFNOT                        R34 ; [+38]
      488 FASTCALL1                        TABLE_UNPACK R34 ; [+3]
      489 MOVE                             R38 R34
      490 GETIMPORT                        R37 K50 [unpack]
      492 CALL                             R37 1 3
      493 GETUPVAL                         R40 2
      494 GETTABLEKS                       R40 R40 K22 ["createElement"]
      496 LOADK                            R41 K57 ["TextButton"]
      497 NEWTABLE                         R42 8 0
      499 GETUPVAL                         R43 2
      500 GETTABLEKS                       R43 R43 K24 ["Tag"]
      502 LOADK                            R44 K40 ["X-Fit"]
      503 SETTABLE                         R44 R42 R43
      504 SETTABLEKS                       R37 R42 K52 ["Text"]
      506 LOADN                            R43 1
      507 SETTABLEKS                       R43 R42 K58 ["BackgroundTransparency"]
      509 GETUPVAL                         R43 8
      510 NAMECALL                         R43 R43 K31 ["getNextOrder"]
      512 CALL                             R43 1 1
      513 SETTABLEKS                       R43 R42 K32 ["LayoutOrder"]
      515 GETUPVAL                         R43 2
      516 GETTABLEKS                       R43 R43 K33 ["Event"]
      518 GETTABLEKS                       R43 R43 K34 ["Activated"]
      520 NEWCLOSURE                       R44 P14
      521 CAPTURE                          VAL R23
      522 CAPTURE                          VAL R39
      523 SETTABLE                         R44 R42 R43
      524 CALL                             R40 2 1
      525 MOVE                             R36 R40
      526 MOVE                             R38 R24
      527 GETUPVAL                         R39 2
      528 GETTABLEKS                       R39 R39 K22 ["createElement"]
      530 LOADK                            R40 K59 ["Frame"]
      531 NEWTABLE                         R41 2 0
      533 GETUPVAL                         R42 2
      534 GETTABLEKS                       R42 R42 K24 ["Tag"]
      536 GETUPVAL                         R43 7
      537 LOADK                            R44 K60 ["X-FitY"]
      538 LOADK                            R45 K61 ["CX-Invisible"]
      539 MOVE                             R46 R32
      540 CALL                             R43 3 1
      541 SETTABLE                         R43 R41 R42
      542 GETUPVAL                         R42 8
      543 NAMECALL                         R42 R42 K31 ["getNextOrder"]
      545 CALL                             R42 1 1
      546 SETTABLEKS                       R42 R41 K32 ["LayoutOrder"]
      548 NEWTABLE                         R42 0 3
      550 GETUPVAL                         R43 2
      551 GETTABLEKS                       R43 R43 K22 ["createElement"]
      553 LOADK                            R44 K39 ["UIListLayout"]
      554 NEWTABLE                         R45 4 0
      556 GETUPVAL                         R46 2
      557 GETTABLEKS                       R46 R46 K24 ["Tag"]
      559 GETUPVAL                         R47 7
      560 LOADK                            R48 K40 ["X-Fit"]
      561 CALL                             R47 1 1
      562 SETTABLE                         R47 R45 R46
      563 GETIMPORT                        R46 K63 [Enum.FillDirection.Horizontal]
      565 SETTABLEKS                       R46 R45 K42 ["FillDirection"]
      567 GETIMPORT                        R46 K46 [Enum.SortOrder.LayoutOrder]
      569 SETTABLEKS                       R46 R45 K45 ["SortOrder"]
      571 CALL                             R43 2 1
      572 GETUPVAL                         R44 2
      573 GETTABLEKS                       R44 R44 K22 ["createElement"]
      575 LOADK                            R45 K51 ["TextLabel"]
      576 NEWTABLE                         R46 2 0
      578 GETUPVAL                         R47 2
      579 GETTABLEKS                       R47 R47 K24 ["Tag"]
      581 LOADK                            R48 K40 ["X-Fit"]
      582 SETTABLE                         R48 R46 R47
      583 LOADK                            R47 K64 ["• "]
      584 SETTABLEKS                       R47 R46 K52 ["Text"]
      586 CALL                             R44 2 1
      587 GETUPVAL                         R45 2
      588 GETTABLEKS                       R45 R45 K22 ["createElement"]
      590 LOADK                            R46 K59 ["Frame"]
      591 NEWTABLE                         R47 2 0
      593 GETUPVAL                         R48 2
      594 GETTABLEKS                       R48 R48 K24 ["Tag"]
      596 GETUPVAL                         R49 7
      597 LOADK                            R50 K40 ["X-Fit"]
      598 LOADK                            R51 K61 ["CX-Invisible"]
      599 CALL                             R49 2 1
      600 SETTABLE                         R49 R47 R48
      601 GETUPVAL                         R48 8
      602 NAMECALL                         R48 R48 K31 ["getNextOrder"]
      604 CALL                             R48 1 1
      605 SETTABLEKS                       R48 R47 K32 ["LayoutOrder"]
      607 NEWTABLE                         R48 2 1
      609 GETUPVAL                         R49 2
      610 GETTABLEKS                       R49 R49 K22 ["createElement"]
      612 LOADK                            R50 K39 ["UIListLayout"]
      613 NEWTABLE                         R51 4 0
      615 GETUPVAL                         R52 2
      616 GETTABLEKS                       R52 R52 K24 ["Tag"]
      618 GETUPVAL                         R53 7
      619 LOADK                            R54 K40 ["X-Fit"]
      620 CALL                             R53 1 1
      621 SETTABLE                         R53 R51 R52
      622 GETIMPORT                        R52 K63 [Enum.FillDirection.Horizontal]
      624 SETTABLEKS                       R52 R51 K42 ["FillDirection"]
      626 GETIMPORT                        R52 K46 [Enum.SortOrder.LayoutOrder]
      628 SETTABLEKS                       R52 R51 K45 ["SortOrder"]
      630 CALL                             R49 2 1
      631 SETLIST                          R48 R49 1 [1]
      633 SETTABLEKS                       R35 R48 K65 ["LinkButton"]
      635 SETTABLEKS                       R36 R48 K66 ["ShowMore"]
      637 CALL                             R45 3 -1
      638 SETLIST                          R42 R43 -1 [1]
      640 CALL                             R39 3 -1
      641 FASTCALL                         TABLE_INSERT ; [+2]
      642 GETIMPORT                        R37 K56 [table.insert]
      644 CALL                             R37 -1 0
      645 FORGLOOP                         R25 2 [inext] ; [-231]
      647 GETUPVAL                         R25 2
      648 GETTABLEKS                       R25 R25 K22 ["createElement"]
      650 LOADK                            R26 K59 ["Frame"]
      651 NEWTABLE                         R27 2 0
      653 GETUPVAL                         R28 2
      654 GETTABLEKS                       R28 R28 K24 ["Tag"]
      656 GETUPVAL                         R29 7
      657 LOADK                            R30 K67 ["X-Fill"]
      658 LOADK                            R31 K61 ["CX-Invisible"]
      659 CALL                             R29 2 1
      660 SETTABLE                         R29 R27 R28
      661 GETUPVAL                         R28 8
      662 NAMECALL                         R28 R28 K31 ["getNextOrder"]
      664 CALL                             R28 1 1
      665 SETTABLEKS                       R28 R27 K32 ["LayoutOrder"]
      667 MOVE                             R28 R24
      668 CALL                             R25 3 1
      669 GETUPVAL                         R26 2
      670 GETTABLEKS                       R26 R26 K22 ["createElement"]
      672 LOADK                            R27 K59 ["Frame"]
      673 NEWTABLE                         R28 4 0
      675 GETUPVAL                         R29 2
      676 GETTABLEKS                       R29 R29 K24 ["Tag"]
      678 GETUPVAL                         R30 7
      679 LOADK                            R31 K68 ["Component-ActivityHistoryBubble"]
      680 LOADK                            R32 K69 ["X-Row"]
      681 CALL                             R30 2 1
      682 SETTABLE                         R30 R28 R29
      683 GETUPVAL                         R29 2
      684 GETTABLEKS                       R29 R29 K33 ["Event"]
      686 GETTABLEKS                       R29 R29 K70 ["MouseEnter"]
      688 GETTABLEKS                       R30 R8 K71 ["enable"]
      690 SETTABLE                         R30 R28 R29
      691 GETUPVAL                         R29 2
      692 GETTABLEKS                       R29 R29 K33 ["Event"]
      694 GETTABLEKS                       R29 R29 K72 ["MouseLeave"]
      696 GETTABLEKS                       R30 R8 K73 ["disable"]
      698 SETTABLE                         R30 R28 R29
      699 GETTABLEKS                       R29 R0 K32 ["LayoutOrder"]
      701 SETTABLEKS                       R29 R28 K32 ["LayoutOrder"]
      703 DUPTABLE                         R29 K76 [{"Left", "Right"}]
      704 GETUPVAL                         R30 2
      705 GETTABLEKS                       R30 R30 K22 ["createElement"]
      707 LOADK                            R31 K59 ["Frame"]
      708 NEWTABLE                         R32 2 0
      710 GETUPVAL                         R33 2
      711 GETTABLEKS                       R33 R33 K24 ["Tag"]
      713 GETUPVAL                         R34 7
      714 LOADK                            R35 K61 ["CX-Invisible"]
      715 CALL                             R34 1 1
      716 SETTABLE                         R34 R32 R33
      717 GETUPVAL                         R33 8
      718 NAMECALL                         R33 R33 K31 ["getNextOrder"]
      720 CALL                             R33 1 1
      721 SETTABLEKS                       R33 R32 K32 ["LayoutOrder"]
      723 DUPTABLE                         R33 K78 [{"Icon"}]
      724 SETTABLEKS                       R18 R33 K77 ["Icon"]
      726 CALL                             R30 3 1
      727 SETTABLEKS                       R30 R29 K74 ["Left"]
      729 GETUPVAL                         R30 2
      730 GETTABLEKS                       R30 R30 K22 ["createElement"]
      732 LOADK                            R31 K59 ["Frame"]
      733 NEWTABLE                         R32 2 0
      735 GETUPVAL                         R33 2
      736 GETTABLEKS                       R33 R33 K24 ["Tag"]
      738 GETUPVAL                         R34 7
      739 LOADK                            R35 K79 ["X-Column"]
      740 LOADK                            R36 K61 ["CX-Invisible"]
      741 CALL                             R34 2 1
      742 SETTABLE                         R34 R32 R33
      743 GETUPVAL                         R33 8
      744 NAMECALL                         R33 R33 K31 ["getNextOrder"]
      746 CALL                             R33 1 1
      747 SETTABLEKS                       R33 R32 K32 ["LayoutOrder"]
      749 DUPTABLE                         R33 K83 [{"Top", "Middle", "Bottom"}]
      750 GETUPVAL                         R34 2
      751 GETTABLEKS                       R34 R34 K22 ["createElement"]
      753 LOADK                            R35 K59 ["Frame"]
      754 NEWTABLE                         R36 2 0
      756 GETUPVAL                         R37 2
      757 GETTABLEKS                       R37 R37 K24 ["Tag"]
      759 GETUPVAL                         R38 7
      760 LOADK                            R39 K69 ["X-Row"]
      761 LOADK                            R40 K61 ["CX-Invisible"]
      762 CALL                             R38 2 1
      763 SETTABLE                         R38 R36 R37
      764 GETUPVAL                         R37 8
      765 NAMECALL                         R37 R37 K31 ["getNextOrder"]
      767 CALL                             R37 1 1
      768 SETTABLEKS                       R37 R36 K32 ["LayoutOrder"]
      770 DUPTABLE                         R37 K87 [{"Date", "Info", "DotDotDot"}]
      771 GETUPVAL                         R39 10
      772 JUMPIF                           R39 ; [+19]
      773 GETUPVAL                         R38 2
      774 GETTABLEKS                       R38 R38 K22 ["createElement"]
      776 LOADK                            R39 K51 ["TextLabel"]
      777 DUPTABLE                         R40 K88 [{"LayoutOrder", "Text"}]
      778 GETUPVAL                         R41 8
      779 NAMECALL                         R41 R41 K31 ["getNextOrder"]
      781 CALL                             R41 1 1
      782 SETTABLEKS                       R41 R40 K32 ["LayoutOrder"]
      784 GETTABLEKS                       R41 R0 K4 ["Bubble"]
      786 GETTABLEKS                       R41 R41 K89 ["date"]
      788 SETTABLEKS                       R41 R40 K52 ["Text"]
      790 CALL                             R38 2 1
      791 JUMPIF                           R38 ; [+1]
      792 LOADNIL                          R38
      793 SETTABLEKS                       R38 R37 K84 ["Date"]
      795 GETUPVAL                         R39 10
      796 JUMPIFNOT                        R39 ; [+138]
      797 GETUPVAL                         R38 2
      798 GETTABLEKS                       R38 R38 K22 ["createElement"]
      800 LOADK                            R39 K59 ["Frame"]
      801 NEWTABLE                         R40 2 0
      803 GETUPVAL                         R41 2
      804 GETTABLEKS                       R41 R41 K24 ["Tag"]
      806 GETUPVAL                         R42 7
      807 LOADK                            R43 K69 ["X-Row"]
      808 LOADK                            R44 K61 ["CX-Invisible"]
      809 CALL                             R42 2 1
      810 SETTABLE                         R42 R40 R41
      811 GETUPVAL                         R41 8
      812 NAMECALL                         R41 R41 K31 ["getNextOrder"]
      814 CALL                             R41 1 1
      815 SETTABLEKS                       R41 R40 K32 ["LayoutOrder"]
      817 DUPTABLE                         R41 K92 [{"Date", "Spacer", "TargetNameContainer"}]
      818 GETUPVAL                         R42 2
      819 GETTABLEKS                       R42 R42 K22 ["createElement"]
      821 LOADK                            R43 K51 ["TextLabel"]
      822 DUPTABLE                         R44 K88 [{"LayoutOrder", "Text"}]
      823 GETUPVAL                         R45 8
      824 NAMECALL                         R45 R45 K31 ["getNextOrder"]
      826 CALL                             R45 1 1
      827 SETTABLEKS                       R45 R44 K32 ["LayoutOrder"]
      829 GETTABLEKS                       R45 R0 K4 ["Bubble"]
      831 GETTABLEKS                       R45 R45 K89 ["date"]
      833 SETTABLEKS                       R45 R44 K52 ["Text"]
      835 CALL                             R42 2 1
      836 SETTABLEKS                       R42 R41 K84 ["Date"]
      838 GETUPVAL                         R42 2
      839 GETTABLEKS                       R42 R42 K22 ["createElement"]
      841 LOADK                            R43 K51 ["TextLabel"]
      842 DUPTABLE                         R44 K94 [{["LayoutOrder"], ["Text"] = "•"}]
      843 GETUPVAL                         R45 8
      844 NAMECALL                         R45 R45 K31 ["getNextOrder"]
      846 CALL                             R45 1 1
      847 SETTABLEKS                       R45 R44 K32 ["LayoutOrder"]
      849 CALL                             R42 2 1
      850 SETTABLEKS                       R42 R41 K90 ["Spacer"]
      852 GETUPVAL                         R42 2
      853 GETTABLEKS                       R42 R42 K22 ["createElement"]
      855 LOADK                            R43 K59 ["Frame"]
      856 NEWTABLE                         R44 2 0
      858 GETUPVAL                         R45 2
      859 GETTABLEKS                       R45 R45 K24 ["Tag"]
      861 GETUPVAL                         R46 7
      862 LOADK                            R47 K61 ["CX-Invisible"]
      863 LOADK                            R48 K69 ["X-Row"]
      864 CALL                             R46 2 1
      865 SETTABLE                         R46 R44 R45
      866 GETUPVAL                         R45 8
      867 NAMECALL                         R45 R45 K31 ["getNextOrder"]
      869 CALL                             R45 1 1
      870 SETTABLEKS                       R45 R44 K32 ["LayoutOrder"]
      872 DUPTABLE                         R45 K97 [{"MiniUserIconContainer", "TargetName"}]
      873 GETUPVAL                         R46 2
      874 GETTABLEKS                       R46 R46 K22 ["createElement"]
      876 LOADK                            R47 K59 ["Frame"]
      877 NEWTABLE                         R48 2 0
      879 GETUPVAL                         R49 2
      880 GETTABLEKS                       R49 R49 K24 ["Tag"]
      882 GETUPVAL                         R50 7
      883 LOADK                            R51 K61 ["CX-Invisible"]
      884 CALL                             R50 1 1
      885 SETTABLE                         R50 R48 R49
      886 GETUPVAL                         R49 8
      887 NAMECALL                         R49 R49 K31 ["getNextOrder"]
      889 CALL                             R49 1 1
      890 SETTABLEKS                       R49 R48 K32 ["LayoutOrder"]
      892 DUPTABLE                         R49 K99 [{"MiniUserIcon"}]
      893 GETUPVAL                         R50 2
      894 GETTABLEKS                       R50 R50 K22 ["createElement"]
      896 LOADK                            R51 K35 ["ImageLabel"]
      897 DUPTABLE                         R52 K100 [{"LayoutOrder"}]
      898 GETUPVAL                         R53 8
      899 NAMECALL                         R53 R53 K31 ["getNextOrder"]
      901 CALL                             R53 1 1
      902 SETTABLEKS                       R53 R52 K32 ["LayoutOrder"]
      904 CALL                             R50 2 1
      905 SETTABLEKS                       R50 R49 K98 ["MiniUserIcon"]
      907 CALL                             R46 3 1
      908 SETTABLEKS                       R46 R45 K95 ["MiniUserIconContainer"]
      910 GETUPVAL                         R46 2
      911 GETTABLEKS                       R46 R46 K22 ["createElement"]
      913 LOADK                            R47 K51 ["TextLabel"]
      914 DUPTABLE                         R48 K101 [{"Text", "LayoutOrder"}]
      915 GETTABLEKS                       R49 R0 K4 ["Bubble"]
      917 GETTABLEKS                       R49 R49 K102 ["actorName"]
      919 SETTABLEKS                       R49 R48 K52 ["Text"]
      921 GETUPVAL                         R49 8
      922 NAMECALL                         R49 R49 K31 ["getNextOrder"]
      924 CALL                             R49 1 1
      925 SETTABLEKS                       R49 R48 K32 ["LayoutOrder"]
      927 CALL                             R46 2 1
      928 SETTABLEKS                       R46 R45 K96 ["TargetName"]
      930 CALL                             R42 3 1
      931 SETTABLEKS                       R42 R41 K91 ["TargetNameContainer"]
      933 CALL                             R38 3 1
      934 JUMPIF                           R38 ; [+1]
      935 LOADNIL                          R38
      936 SETTABLEKS                       R38 R37 K85 ["Info"]
      938 JUMPIFNOT                        R9 ; [+3]
      939 GETTABLEKS                       R39 R8 K16 ["enabled"]
      941 JUMPIF                           R39 ; [+2]
      942 LOADNIL                          R38
      943 JUMP                             ; [+69]
      944 GETUPVAL                         R38 2
      945 GETTABLEKS                       R38 R38 K22 ["createElement"]
      947 LOADK                            R39 K59 ["Frame"]
      948 NEWTABLE                         R40 2 0
      950 GETUPVAL                         R41 2
      951 GETTABLEKS                       R41 R41 K24 ["Tag"]
      953 GETUPVAL                         R42 7
      954 LOADK                            R43 K61 ["CX-Invisible"]
      955 CALL                             R42 1 1
      956 SETTABLE                         R42 R40 R41
      957 GETUPVAL                         R41 8
      958 NAMECALL                         R41 R41 K31 ["getNextOrder"]
      960 CALL                             R41 1 1
      961 SETTABLEKS                       R41 R40 K32 ["LayoutOrder"]
      963 DUPTABLE                         R41 K105 [{"Dropdown", "Button"}]
      964 GETUPVAL                         R42 2
      965 GETTABLEKS                       R42 R42 K22 ["createElement"]
      967 GETUPVAL                         R43 11
      968 DUPTABLE                         R44 K112 [{["Items"], ["Hide"], ["OnItemActivated"], ["OnFocusLost"], ["Width"] = 240}]
      969 SETTABLEKS                       R10 R44 K106 ["Items"]
      971 NOT                              R45 R6
      972 SETTABLEKS                       R45 R44 K107 ["Hide"]
      974 SETTABLEKS                       R13 R44 K108 ["OnItemActivated"]
      976 SETTABLEKS                       R14 R44 K109 ["OnFocusLost"]
      978 CALL                             R42 2 1
      979 SETTABLEKS                       R42 R41 K103 ["Dropdown"]
      981 GETUPVAL                         R42 2
      982 GETTABLEKS                       R42 R42 K22 ["createElement"]
      984 LOADK                            R43 K23 ["ImageButton"]
      985 NEWTABLE                         R44 4 0
      987 GETUPVAL                         R45 2
      988 GETTABLEKS                       R45 R45 K24 ["Tag"]
      990 GETUPVAL                         R46 7
      991 LOADK                            R47 K67 ["X-Fill"]
      992 CALL                             R46 1 1
      993 SETTABLE                         R46 R44 R45
      994 GETUPVAL                         R45 8
      995 NAMECALL                         R45 R45 K31 ["getNextOrder"]
      997 CALL                             R45 1 1
      998 SETTABLEKS                       R45 R44 K32 ["LayoutOrder"]
     1000 LOADB                            R45 1
     1001 SETTABLEKS                       R45 R44 K113 ["AutoButtonColor"]
     1003 GETUPVAL                         R45 2
     1004 GETTABLEKS                       R45 R45 K33 ["Event"]
     1006 GETTABLEKS                       R45 R45 K34 ["Activated"]
     1008 SETTABLE                         R15 R44 R45
     1009 CALL                             R42 2 1
     1010 SETTABLEKS                       R42 R41 K104 ["Button"]
     1012 CALL                             R38 3 1
     1013 SETTABLEKS                       R38 R37 K86 ["DotDotDot"]
     1015 CALL                             R34 3 1
     1016 SETTABLEKS                       R34 R33 K80 ["Top"]
     1018 GETUPVAL                         R34 2
     1019 GETTABLEKS                       R34 R34 K22 ["createElement"]
     1021 LOADK                            R35 K59 ["Frame"]
     1022 NEWTABLE                         R36 2 0
     1024 GETUPVAL                         R37 2
     1025 GETTABLEKS                       R37 R37 K24 ["Tag"]
     1027 GETUPVAL                         R38 7
     1028 LOADK                            R39 K61 ["CX-Invisible"]
     1029 CALL                             R38 1 1
     1030 SETTABLE                         R38 R36 R37
     1031 GETUPVAL                         R37 8
     1032 NAMECALL                         R37 R37 K31 ["getNextOrder"]
     1034 CALL                             R37 1 1
     1035 SETTABLEKS                       R37 R36 K32 ["LayoutOrder"]
     1037 DUPTABLE                         R37 K115 [{"Description"}]
     1038 SETTABLEKS                       R25 R37 K114 ["Description"]
     1040 CALL                             R34 3 1
     1041 SETTABLEKS                       R34 R33 K81 ["Middle"]
     1043 GETUPVAL                         R35 10
     1044 JUMPIF                           R35 ; [+115]
     1045 GETUPVAL                         R34 2
     1046 GETTABLEKS                       R34 R34 K22 ["createElement"]
     1048 LOADK                            R35 K57 ["TextButton"]
     1049 NEWTABLE                         R36 4 0
     1051 GETUPVAL                         R37 2
     1052 GETTABLEKS                       R37 R37 K24 ["Tag"]
     1054 GETUPVAL                         R38 7
     1055 LOADK                            R39 K69 ["X-Row"]
     1056 LOADK                            R40 K61 ["CX-Invisible"]
     1057 CALL                             R38 2 1
     1058 SETTABLE                         R38 R36 R37
     1059 LOADK                            R37 K21 [""]
     1060 SETTABLEKS                       R37 R36 K52 ["Text"]
     1062 GETUPVAL                         R37 2
     1063 GETTABLEKS                       R37 R37 K33 ["Event"]
     1065 GETTABLEKS                       R37 R37 K34 ["Activated"]
     1067 SETTABLE                         R19 R36 R37
     1068 GETUPVAL                         R37 8
     1069 NAMECALL                         R37 R37 K31 ["getNextOrder"]
     1071 CALL                             R37 1 1
     1072 SETTABLEKS                       R37 R36 K32 ["LayoutOrder"]
     1074 DUPTABLE                         R37 K117 [{"IconFrame", "TargetName"}]
     1075 GETUPVAL                         R38 2
     1076 GETTABLEKS                       R38 R38 K22 ["createElement"]
     1078 LOADK                            R39 K59 ["Frame"]
     1079 NEWTABLE                         R40 2 0
     1081 GETUPVAL                         R41 2
     1082 GETTABLEKS                       R41 R41 K24 ["Tag"]
     1084 GETUPVAL                         R42 7
     1085 LOADK                            R43 K61 ["CX-Invisible"]
     1086 CALL                             R42 1 1
     1087 SETTABLE                         R42 R40 R41
     1088 GETUPVAL                         R41 8
     1089 NAMECALL                         R41 R41 K31 ["getNextOrder"]
     1091 CALL                             R41 1 1
     1092 SETTABLEKS                       R41 R40 K32 ["LayoutOrder"]
     1094 DUPTABLE                         R41 K78 [{"Icon"}]
     1095 GETUPVAL                         R42 2
     1096 GETTABLEKS                       R42 R42 K22 ["createElement"]
     1098 LOADK                            R43 K35 ["ImageLabel"]
     1099 DUPTABLE                         R44 K118 [{"Image", "LayoutOrder"}]
     1100 GETTABLEKS                       R46 R0 K4 ["Bubble"]
     1102 GETTABLEKS                       R46 R46 K119 ["actorId"]
     1104 FASTCALL1                        TOSTRING R46 ; [+3]
     1105 MOVE                             R48 R46
     1106 GETIMPORT                        R47 K20 [tostring]
     1108 CALL                             R47 1 1
     1109 GETUPVAL                         R49 6
     1110 GETTABLEKS                       R48 R49 K25 ["User"]
     1112 JUMPIFNOT                        R48 ; [+7]
     1113 GETUPVAL                         R49 6
     1114 GETTABLEKS                       R48 R49 K25 ["User"]
     1116 MOVE                             R49 R47
     1117 CALL                             R48 1 1
     1118 MOVE                             R45 R48
     1119 JUMP                             ; [+1]
     1120 LOADK                            R45 K21 [""]
     1121 SETTABLEKS                       R45 R44 K30 ["Image"]
     1123 GETUPVAL                         R45 8
     1124 NAMECALL                         R45 R45 K31 ["getNextOrder"]
     1126 CALL                             R45 1 1
     1127 SETTABLEKS                       R45 R44 K32 ["LayoutOrder"]
     1129 CALL                             R42 2 1
     1130 SETTABLEKS                       R42 R41 K77 ["Icon"]
     1132 CALL                             R38 3 1
     1133 SETTABLEKS                       R38 R37 K116 ["IconFrame"]
     1135 GETUPVAL                         R38 2
     1136 GETTABLEKS                       R38 R38 K22 ["createElement"]
     1138 LOADK                            R39 K51 ["TextLabel"]
     1139 DUPTABLE                         R40 K122 [{["Text"], ["RichText"] = True, ["LayoutOrder"]}]
     1140 LOADK                            R42 K123 ["<u>"]
     1141 GETTABLEKS                       R43 R0 K4 ["Bubble"]
     1143 GETTABLEKS                       R43 R43 K102 ["actorName"]
     1145 LOADK                            R44 K124 ["</u>"]
     1146 CONCAT                           R41 R42 R44
     1147 SETTABLEKS                       R41 R40 K52 ["Text"]
     1149 GETUPVAL                         R41 8
     1150 NAMECALL                         R41 R41 K31 ["getNextOrder"]
     1152 CALL                             R41 1 1
     1153 SETTABLEKS                       R41 R40 K32 ["LayoutOrder"]
     1155 CALL                             R38 2 1
     1156 SETTABLEKS                       R38 R37 K96 ["TargetName"]
     1158 CALL                             R34 3 1
     1159 JUMPIF                           R34 ; [+1]
     1160 LOADNIL                          R34
     1161 SETTABLEKS                       R34 R33 K82 ["Bottom"]
     1163 CALL                             R30 3 1
     1164 SETTABLEKS                       R30 R29 K75 ["Right"]
     1166 CALL                             R26 3 -1
     1167 CLOSEUPVALS                      R12
     1168 RETURN                           R26 -1

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
      163 CAPTURE                          VAL R6
      164 CAPTURE                          VAL R15
      165 CAPTURE                          VAL R10
      166 GETTABLEKS                       R21 R1 K60 ["PureComponent"]
      168 LOADK                            R23 K61 ["ActivityHistoryBubble"]
      169 NAMECALL                         R21 R21 K62 ["extend"]
      171 CALL                             R21 2 1
      172 DUPCLOSURE                       R22 K63 [PROTO_35]
      173 CAPTURE                          VAL R1
      174 CAPTURE                          VAL R20
      175 SETTABLEKS                       R22 R21 K64 ["render"]
      177 RETURN                           R21 1
