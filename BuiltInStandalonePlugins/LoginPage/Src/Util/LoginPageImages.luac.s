PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["AssetService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 DUPTABLE                         R3 K5 [{"Size"}]
        7 GETIMPORT                        R4 K8 [Vector2.new]
        9 LOADN                            R5 1
       10 LOADN                            R6 1
       11 CALL                             R4 2 1
       12 SETTABLEKS                       R4 R3 K4 ["Size"]
       14 NAMECALL                         R1 R0 K9 ["CreateEditableImage"]
       16 CALL                             R1 2 1
       17 GETIMPORT                        R2 K12 [Content.fromObject]
       19 MOVE                             R3 R1
       20 CALL                             R2 1 -1
       21 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 RETURN                           R0 1
        4 LOADB                            R0 1
        5 SETUPVAL                         R0 0
        6 GETIMPORT                        R0 K1 [pcall]
        8 DUPCLOSURE                       R1 K2 [PROTO_0]
        9 CALL                             R0 1 2
       10 JUMPIFNOT                        R0 ; [+8]
       11 FASTCALL1                        TYPEOF R1 ; [+3]
       12 MOVE                             R3 R1
       13 GETIMPORT                        R2 K4 [typeof]
       15 CALL                             R2 1 1
       16 JUMPIFNOTEQKS                    R2 K5 ["Content"] ; [+2]
       18 SETUPVAL                         R1 1
       19 GETUPVAL                         R2 1
       20 RETURN                           R2 1

PROTO_2:
        0 GETIMPORT                        R2 K1 [game]
        2 LOADK                            R4 K2 ["ContentProvider"]
        3 NAMECALL                         R2 R2 K3 ["GetService"]
        5 CALL                             R2 2 1
        6 NEWTABLE                         R4 0 1
        8 MOVE                             R5 R0
        9 SETLIST                          R4 R5 1 [1]
       11 MOVE                             R5 R1
       12 NAMECALL                         R2 R2 K4 ["PreloadAsync"]
       14 CALL                             R2 3 0
       15 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 0
        5 LOADB                            R2 1
        6 SETTABLE                         R2 R1 R0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K0 ["reportLoginPageAssetMissing"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K2 [table.clear]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 GETIMPORT                        R0 K2 [table.clear]
        6 GETUPVAL                         R1 1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_5:
        0 SETUPVAL                         R1 0
        1 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["preload"]
        3 GETUPVAL                         R1 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_7:
        0 LOADNIL                          R0
        1 GETIMPORT                        R1 K1 [pcall]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          REF R0
        7 CALL                             R1 1 1
        8 MOVE                             R2 R1
        9 JUMPIFNOT                        R2 ; [+6]
       10 GETIMPORT                        R3 K5 [Enum.AssetFetchStatus.Success]
       12 JUMPIFEQ                         R0 R3 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 JUMPIFNOT                        R2 ; [+5]
       17 GETUPVAL                         R3 2
       18 GETUPVAL                         R4 1
       19 LOADB                            R5 1
       20 SETTABLE                         R5 R3 R4
       21 JUMP                             ; [+5]
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K6 ["reportMissing"]
       25 GETUPVAL                         R4 1
       26 CALL                             R3 1 0
       27 GETUPVAL                         R3 3
       28 JUMPIFNOT                        R3 ; [+2]
       29 CLOSEUPVALS                      R0
       30 RETURN                           R0 0
       31 JUMPIFNOT                        R2 ; [+3]
       32 GETUPVAL                         R3 4
       33 LOADB                            R4 1
       34 CALL                             R3 1 0
       35 CLOSEUPVALS                      R0
       36 RETURN                           R0 0

PROTO_8:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 0
        4 GETIMPORT                        R1 K2 [task.spawn]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          REF R0
       11 CAPTURE                          UPVAL U4
       12 CALL                             R1 1 0
       13 NEWCLOSURE                       R1 P1
       14 CAPTURE                          REF R0
       15 CLOSEUPVALS                      R0
       16 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getFFlagLoginPageEnableBlankImageFallback"]
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["useState"]
        7 NOT                              R4 R2
        8 JUMPIF                           R4 ; [+6]
        9 GETUPVAL                         R6 2
       10 GETTABLE                         R5 R6 R0
       11 JUMPIFEQKB                       R5 TRUE ; [+2]
       13 LOADB                            R4 0 +1
       14 LOADB                            R4 1
       15 CALL                             R3 1 2
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K2 ["useEffect"]
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          VAL R2
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R4
       25 NEWTABLE                         R7 0 2
       27 MOVE                             R8 R0
       28 MOVE                             R9 R2
       29 SETLIST                          R7 R8 2 [1]
       31 CALL                             R5 2 0
       32 JUMPIFNOT                        R2 ; [+1]
       33 JUMPIFNOT                        R3 ; [+6]
       34 DUPTABLE                         R5 K7 [{["Image"], ["ImageContent"] = , ["ScaleType"]}]
       35 SETTABLEKS                       R0 R5 K3 ["Image"]
       37 SETTABLEKS                       R1 R5 K6 ["ScaleType"]
       39 RETURN                           R5 1
       40 DUPTABLE                         R5 K9 [{["Image"] = "", ["ImageContent"], ["ScaleType"]}]
       41 GETUPVAL                         R6 3
       42 GETTABLEKS                       R6 R6 K10 ["getBlankImageContent"]
       44 CALL                             R6 0 1
       45 SETTABLEKS                       R6 R5 K4 ["ImageContent"]
       47 GETIMPORT                        R6 K13 [Enum.ScaleType.Stretch]
       49 SETTABLEKS                       R6 R5 K6 ["ScaleType"]
       51 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LoginPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["Analytics"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Bin"]
       27 GETTABLEKS                       R4 R4 K12 ["Common"]
       29 GETTABLEKS                       R4 R4 K13 ["defineLuaFlags"]
       31 CALL                             R3 1 1
       32 NEWTABLE                         R4 8 0
       34 LOADK                            R5 K14 ["rbxasset://textures/LoginPage/Background.png"]
       35 SETTABLEKS                       R5 R4 K15 ["BACKGROUND_IMAGE"]
       37 LOADK                            R5 K16 ["rbxasset://textures/LoginPage/RobloxStudioLockupLoginPage.png"]
       38 SETTABLEKS                       R5 R4 K17 ["STUDIO_LOCKUP_IMAGE"]
       40 LOADNIL                          R5
       41 LOADB                            R6 0
       42 NEWTABLE                         R7 0 0
       44 NEWTABLE                         R8 0 0
       46 NEWCLOSURE                       R9 P0
       47 CAPTURE                          REF R6
       48 CAPTURE                          REF R5
       49 SETTABLEKS                       R9 R4 K18 ["getBlankImageContent"]
       51 DUPCLOSURE                       R9 K19 [PROTO_2]
       52 SETTABLEKS                       R9 R4 K20 ["preload"]
       54 DUPCLOSURE                       R9 K21 [PROTO_3]
       55 CAPTURE                          VAL R7
       56 CAPTURE                          VAL R2
       57 SETTABLEKS                       R9 R4 K22 ["reportMissing"]
       59 DUPCLOSURE                       R9 K23 [PROTO_4]
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R8
       62 SETTABLEKS                       R9 R4 K24 ["resetForTests"]
       64 DUPCLOSURE                       R9 K25 [PROTO_10]
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R4
       69 SETTABLEKS                       R9 R4 K26 ["useImage"]
       71 CLOSEUPVALS                      R5
       72 RETURN                           R4 1
