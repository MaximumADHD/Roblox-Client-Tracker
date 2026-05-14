PROTO_0:
        0 GETUPVAL                         R0 1
        1 NAMECALL                         R0 R0 K0 ["GetSessionId"]
        3 CALL                             R0 1 1
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_1:
        0 LOADNIL                          R0
        1 GETIMPORT                        R1 K1 [pcall]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U0
        6 CALL                             R1 1 0
        7 CLOSEUPVALS                      R0
        8 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 1
        1 NAMECALL                         R0 R0 K0 ["GetClientId"]
        3 CALL                             R0 1 1
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_3:
        0 LOADNIL                          R0
        1 GETIMPORT                        R1 K1 [pcall]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U0
        6 CALL                             R1 1 0
        7 CLOSEUPVALS                      R0
        8 RETURN                           R0 1

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["print"]
        3 LOADK                            R3 K1 ["reportCounter"]
        4 MOVE                             R4 R0
        5 ORK                              R5 R1 K2 [1]
        6 CALL                             R2 3 0
        7 GETUPVAL                         R2 1
        8 MOVE                             R4 R0
        9 ORK                              R5 R1 K2 [1]
       10 NAMECALL                         R2 R2 K3 ["ReportCounter"]
       12 CALL                             R2 3 0
       13 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["print"]
        3 LOADK                            R3 K1 ["reportStats"]
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 CALL                             R2 3 0
        7 GETUPVAL                         R2 1
        8 MOVE                             R4 R0
        9 MOVE                             R5 R1
       10 NAMECALL                         R2 R2 K2 ["ReportStats"]
       12 CALL                             R2 3 0
       13 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["printTable"]
        3 LOADK                            R3 K1 ["sendEventDeferred"]
        4 MOVE                             R4 R0
        5 GETUPVAL                         R5 1
        6 MOVE                             R7 R1
        7 NAMECALL                         R5 R5 K2 ["JSONEncode"]
        9 CALL                             R5 2 -1
       10 CALL                             R2 -1 0
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K3 ["Dictionary"]
       14 GETTABLEKS                       R2 R2 K4 ["join"]
       16 MOVE                             R3 R1
       17 DUPTABLE                         R4 K8 [{"uid", "sid", "pid"}]
       18 LOADNIL                          R6
       19 GETIMPORT                        R7 K10 [pcall]
       21 NEWCLOSURE                       R8 P0
       22 CAPTURE                          REF R6
       23 CAPTURE                          UPVAL U3
       24 CALL                             R7 1 0
       25 MOVE                             R5 R6
       26 CLOSEUPVALS                      R6
       27 SETTABLEKS                       R5 R4 K5 ["uid"]
       29 LOADNIL                          R6
       30 GETIMPORT                        R7 K10 [pcall]
       32 NEWCLOSURE                       R8 P1
       33 CAPTURE                          REF R6
       34 CAPTURE                          UPVAL U3
       35 CALL                             R7 1 0
       36 MOVE                             R5 R6
       37 CLOSEUPVALS                      R6
       38 SETTABLEKS                       R5 R4 K6 ["sid"]
       40 GETIMPORT                        R5 K12 [game]
       42 GETTABLEKS                       R5 R5 K13 ["PlaceId"]
       44 SETTABLEKS                       R5 R4 K7 ["pid"]
       46 CALL                             R2 2 1
       47 GETUPVAL                         R3 3
       48 LOADK                            R5 K14 ["studio"]
       49 LOADK                            R6 K15 ["gameSettings"]
       50 MOVE                             R7 R0
       51 MOVE                             R8 R2
       52 NAMECALL                         R3 R3 K16 ["SendEventDeferred"]
       54 CALL                             R3 5 0
       55 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["reportCounter"]
        3 GETIMPORT                        R3 K3 [string.format]
        5 LOADK                            R4 K4 ["GameSettings_SettingSaved_%s"]
        6 MOVE                             R5 R0
        7 CALL                             R3 2 -1
        8 CALL                             R2 -1 0
        9 FASTCALL1                        TYPEOF R1 ; [+3]
       10 MOVE                             R3 R1
       11 GETIMPORT                        R2 K6 [typeof]
       13 CALL                             R2 1 1
       14 JUMPIFNOTEQKS                    R2 K7 ["boolean"] ; [+16]
       16 JUMPIFNOT                        R1 ; [+2]
       17 LOADK                            R2 K8 ["Enabled"]
       18 JUMP                             ; [+1]
       19 LOADK                            R2 K9 ["Disabled"]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K0 ["reportCounter"]
       23 GETIMPORT                        R4 K3 [string.format]
       25 LOADK                            R5 K10 ["GameSettings_Setting%s_%s"]
       26 MOVE                             R6 R2
       27 MOVE                             R7 R0
       28 CALL                             R4 3 -1
       29 CALL                             R3 -1 0
       30 RETURN                           R0 0
       31 FASTCALL1                        TYPEOF R1 ; [+3]
       32 MOVE                             R3 R1
       33 GETIMPORT                        R2 K6 [typeof]
       35 CALL                             R2 1 1
       36 JUMPIFNOTEQKS                    R2 K1 ["string"] ; [+13]
       38 GETUPVAL                         R2 0
       39 GETTABLEKS                       R2 R2 K11 ["reportStats"]
       41 GETIMPORT                        R3 K3 [string.format]
       43 LOADK                            R4 K12 ["GameSettings_StringSettingLength_%s"]
       44 MOVE                             R5 R0
       45 CALL                             R3 2 1
       46 NAMECALL                         R4 R1 K13 ["len"]
       48 CALL                             R4 1 -1
       49 CALL                             R2 -1 0
       50 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["reportCounter"]
        3 GETIMPORT                        R2 K3 [string.format]
        5 LOADK                            R3 K4 ["GameSettings_PageLoadAttempt_%s"]
        6 MOVE                             R4 R0
        7 CALL                             R2 2 -1
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["reportCounter"]
        3 GETIMPORT                        R3 K3 [string.format]
        5 LOADK                            R4 K4 ["GameSettings_PageLoadSuccess_%s"]
        6 MOVE                             R5 R0
        7 CALL                             R3 2 -1
        8 CALL                             R2 -1 0
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K5 ["reportStats"]
       12 GETIMPORT                        R3 K3 [string.format]
       14 LOADK                            R4 K6 ["GameSettings_PageLoadTime_Success_%s"]
       15 MOVE                             R5 R0
       16 CALL                             R3 2 1
       17 MOVE                             R4 R1
       18 CALL                             R2 2 0
       19 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["reportCounter"]
        3 GETIMPORT                        R3 K3 [string.format]
        5 LOADK                            R4 K4 ["GameSettings_PageLoadError_%s"]
        6 MOVE                             R5 R0
        7 CALL                             R3 2 -1
        8 CALL                             R2 -1 0
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K5 ["reportStats"]
       12 GETIMPORT                        R3 K3 [string.format]
       14 LOADK                            R4 K6 ["GameSettings_PageLoadTime_Error_%s"]
       15 MOVE                             R5 R0
       16 CALL                             R3 2 1
       17 MOVE                             R4 R1
       18 CALL                             R2 2 0
       19 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["reportCounter"]
        3 LOADK                            R1 K1 ["GameSettings_SaveAttempt"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["reportCounter"]
        3 LOADK                            R2 K1 ["GameSettings_SaveSuccess"]
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K2 ["reportStats"]
        8 LOADK                            R2 K3 ["GameSettings_SaveTime_Success"]
        9 MOVE                             R3 R0
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["reportCounter"]
        3 LOADK                            R2 K1 ["GameSettings_SaveError"]
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K2 ["reportStats"]
        8 LOADK                            R2 K3 ["GameSettings_SaveTime_Error"]
        9 MOVE                             R3 R0
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["reportCounter"]
        3 GETIMPORT                        R2 K3 [string.format]
        5 LOADK                            R3 K4 ["GameSettings_PageSaveError_%s"]
        6 MOVE                             R4 R0
        7 CALL                             R2 2 -1
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["sendEventDeferred"]
        3 LOADK                            R3 K1 ["gameSettingsOpen"]
        4 NEWTABLE                         R4 0 0
        6 CALL                             R2 2 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["sendEventDeferred"]
       10 LOADK                            R3 K2 ["toolOpened"]
       11 DUPTABLE                         R4 K6 [{"method", "uid", "gameId"}]
       12 LOADN                            R5 1
       13 SETTABLEKS                       R5 R4 K3 ["method"]
       15 SETTABLEKS                       R0 R4 K4 ["uid"]
       17 SETTABLEKS                       R1 R4 K5 ["gameId"]
       19 CALL                             R2 2 0
       20 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["sendEventDeferred"]
        3 LOADK                            R3 K1 ["gameSettingsClose"]
        4 NEWTABLE                         R4 2 0
        6 SETTABLEKS                       R0 R4 K2 ["buttonSelected"]
        8 GETIMPORT                        R5 K5 [string.format]
       10 LOADK                            R6 K6 ["%f"]
       11 MOVE                             R7 R1
       12 CALL                             R5 2 1
       13 SETTABLEKS                       R5 R4 K7 ["timeOpen"]
       15 CALL                             R2 2 0
       16 RETURN                           R0 0

PROTO_19:
        0 JUMPIFNOT                        R0 ; [+12]
        1 JUMPIFNOT                        R1 ; [+11]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["sendEventDeferred"]
        5 LOADK                            R3 K1 ["gameSettingsTabChange"]
        6 NEWTABLE                         R4 2 0
        8 SETTABLEKS                       R0 R4 K2 ["oldTab"]
       10 SETTABLEKS                       R1 R4 K3 ["newTab"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["sendEventDeferred"]
        3 GETIMPORT                        R3 K3 [string.format]
        5 LOADK                            R4 K4 ["GameSettings_%s_UserCount"]
        6 MOVE                             R5 R1
        7 CALL                             R3 2 1
        8 DUPTABLE                         R4 K7 [{"uid", "gameId"}]
        9 SETTABLEKS                       R0 R4 K5 ["uid"]
       11 GETIMPORT                        R5 K9 [game]
       13 GETTABLEKS                       R5 R5 K10 ["GameId"]
       15 SETTABLEKS                       R5 R4 K6 ["gameId"]
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["sendEventDeferred"]
        3 GETIMPORT                        R4 K3 [string.format]
        5 LOADK                            R5 K4 ["GameSettings_%s%sGiven"]
        6 MOVE                             R6 R1
        7 MOVE                             R7 R2
        8 CALL                             R4 3 1
        9 DUPTABLE                         R5 K7 [{"uid", "gameId"}]
       10 SETTABLEKS                       R0 R5 K5 ["uid"]
       12 GETIMPORT                        R6 K9 [game]
       14 GETTABLEKS                       R6 R6 K10 ["GameId"]
       16 SETTABLEKS                       R6 R5 K6 ["gameId"]
       18 CALL                             R3 2 0
       19 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["sendEventDeferred"]
        3 GETIMPORT                        R4 K3 [string.format]
        5 LOADK                            R5 K4 ["GameSettings_%s%sRemoved"]
        6 MOVE                             R6 R1
        7 MOVE                             R7 R2
        8 CALL                             R4 3 1
        9 DUPTABLE                         R5 K7 [{"uid", "gameId"}]
       10 SETTABLEKS                       R0 R5 K5 ["uid"]
       12 GETIMPORT                        R6 K9 [game]
       14 GETTABLEKS                       R6 R6 K10 ["GameId"]
       16 SETTABLEKS                       R6 R5 K6 ["gameId"]
       18 CALL                             R3 2 0
       19 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["reportCounter"]
        3 LOADK                            R1 K1 ["GameSettings_AccessPermissions_UserAdded"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["reportCounter"]
        3 LOADK                            R1 K1 ["GameSettings_AccessPermissions_UserRemoved"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["reportCounter"]
        3 LOADK                            R1 K1 ["GameSettings_AccessPermissions_GroupAdded"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["reportCounter"]
        3 LOADK                            R1 K1 ["GameSettings_AccessPermissions_GroupRemoved"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["reportCounter"]
        3 LOADK                            R1 K1 ["GameSettings_AccessPermissions_Failed"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_28:
        0 NEWTABLE                         R1 0 4
        2 LOADN                            R2 1
        3 LOADK                            R3 K0 [0.75]
        4 LOADK                            R4 K1 [0.5]
        5 LOADK                            R5 K2 [0.25]
        6 SETLIST                          R1 R2 4 [1]
        8 GETIMPORT                        R2 K4 [pairs]
       10 MOVE                             R3 R1
       11 CALL                             R2 1 3
       12 FORGPREP_NEXT                    R2
       13 GETUPVAL                         R8 0
       14 MUL                              R7 R6 R8
       15 JUMPIFNOTLE                      R7 R0 ; [+13]
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R7 R7 K5 ["reportCounter"]
       20 LOADK                            R9 K6 ["GameSettings_AccessPermissions_NumCollaboratorThreshold_"]
       21 MULK                             R11 R6 K7 [100]
       22 FASTCALL1                        MATH_FLOOR R11 ; [+2]
       23 GETIMPORT                        R10 K10 [math.floor]
       25 CALL                             R10 1 1
       26 CONCAT                           R8 R9 R10
       27 CALL                             R7 1 0
       28 JUMP                             ; [+2]
       29 FORGLOOP                         R2 2 ; [-17]
       31 GETUPVAL                         R2 1
       32 GETTABLEKS                       R2 R2 K11 ["sendEventDeferred"]
       34 LOADK                            R3 K12 ["GameSettings_AccessPermissions_NumCollaborators"]
       35 DUPTABLE                         R4 K15 [{"gameId", "numCollaborators"}]
       36 GETIMPORT                        R5 K17 [game]
       38 GETTABLEKS                       R5 R5 K18 ["GameId"]
       40 SETTABLEKS                       R5 R4 K13 ["gameId"]
       42 SETTABLEKS                       R0 R4 K14 ["numCollaborators"]
       44 CALL                             R2 2 0
       45 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["sendEventDeferred"]
        3 LOADK                            R3 K1 ["GameSettings_SecuritySettingChange"]
        4 DUPTABLE                         R4 K4 [{"settingName", "settingValue"}]
        5 SETTABLEKS                       R0 R4 K2 ["settingName"]
        7 SETTABLEKS                       R1 R4 K3 ["settingValue"]
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RbxAnalyticsService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["HttpService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 GETTABLEKS                       R2 R2 K7 ["Parent"]
       17 GETTABLEKS                       R2 R2 K7 ["Parent"]
       19 GETTABLEKS                       R2 R2 K7 ["Parent"]
       21 GETIMPORT                        R3 K9 [require]
       23 GETTABLEKS                       R4 R2 K10 ["Packages"]
       25 GETTABLEKS                       R4 R4 K11 ["Cryo"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K1 [game]
       30 LOADK                            R6 K12 ["MaxAccessPermissionsCollaborators"]
       31 LOADN                            R7 200
       32 NAMECALL                         R4 R4 K13 ["DefineFastInt"]
       34 CALL                             R4 3 1
       35 DUPCLOSURE                       R5 K14 [PROTO_1]
       36 CAPTURE                          VAL R0
       37 DUPCLOSURE                       R6 K15 [PROTO_3]
       38 CAPTURE                          VAL R0
       39 NEWTABLE                         R7 32 0
       41 DUPCLOSURE                       R8 K16 [PROTO_4]
       42 SETTABLEKS                       R8 R7 K17 ["print"]
       44 DUPCLOSURE                       R8 K18 [PROTO_5]
       45 SETTABLEKS                       R8 R7 K19 ["printTable"]
       47 DUPCLOSURE                       R8 K20 [PROTO_6]
       48 CAPTURE                          VAL R7
       49 CAPTURE                          VAL R0
       50 SETTABLEKS                       R8 R7 K21 ["reportCounter"]
       52 DUPCLOSURE                       R8 K22 [PROTO_7]
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R0
       55 SETTABLEKS                       R8 R7 K23 ["reportStats"]
       57 DUPCLOSURE                       R8 K24 [PROTO_8]
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R0
       62 SETTABLEKS                       R8 R7 K25 ["sendEventDeferred"]
       64 DUPCLOSURE                       R8 K26 [PROTO_9]
       65 CAPTURE                          VAL R7
       66 SETTABLEKS                       R8 R7 K27 ["onSettingSaved"]
       68 DUPCLOSURE                       R8 K28 [PROTO_10]
       69 CAPTURE                          VAL R7
       70 SETTABLEKS                       R8 R7 K29 ["onPageLoadAttempt"]
       72 DUPCLOSURE                       R8 K30 [PROTO_11]
       73 CAPTURE                          VAL R7
       74 SETTABLEKS                       R8 R7 K31 ["onPageLoadSuccess"]
       76 DUPCLOSURE                       R8 K32 [PROTO_12]
       77 CAPTURE                          VAL R7
       78 SETTABLEKS                       R8 R7 K33 ["onPageLoadError"]
       80 DUPCLOSURE                       R8 K34 [PROTO_13]
       81 CAPTURE                          VAL R7
       82 SETTABLEKS                       R8 R7 K35 ["onSaveAttempt"]
       84 DUPCLOSURE                       R8 K36 [PROTO_14]
       85 CAPTURE                          VAL R7
       86 SETTABLEKS                       R8 R7 K37 ["onSaveSuccess"]
       88 DUPCLOSURE                       R8 K38 [PROTO_15]
       89 CAPTURE                          VAL R7
       90 SETTABLEKS                       R8 R7 K39 ["onSaveError"]
       92 DUPCLOSURE                       R8 K40 [PROTO_16]
       93 CAPTURE                          VAL R7
       94 SETTABLEKS                       R8 R7 K41 ["onPageSaveError"]
       96 DUPCLOSURE                       R8 K42 [PROTO_17]
       97 CAPTURE                          VAL R7
       98 SETTABLEKS                       R8 R7 K43 ["onOpenEvent"]
      100 DUPCLOSURE                       R8 K44 [PROTO_18]
      101 CAPTURE                          VAL R7
      102 SETTABLEKS                       R8 R7 K45 ["onCloseEvent"]
      104 DUPCLOSURE                       R8 K46 [PROTO_19]
      105 CAPTURE                          VAL R7
      106 SETTABLEKS                       R8 R7 K47 ["onTabChangeEvent"]
      108 DUPCLOSURE                       R8 K48 [PROTO_20]
      109 CAPTURE                          VAL R7
      110 SETTABLEKS                       R8 R7 K49 ["numberOfUsers"]
      112 DUPCLOSURE                       R8 K50 [PROTO_21]
      113 CAPTURE                          VAL R7
      114 SETTABLEKS                       R8 R7 K51 ["onPermissionGiven"]
      116 DUPCLOSURE                       R8 K52 [PROTO_22]
      117 CAPTURE                          VAL R7
      118 SETTABLEKS                       R8 R7 K53 ["onPermissionRemoved"]
      120 DUPCLOSURE                       R8 K54 [PROTO_23]
      121 CAPTURE                          VAL R7
      122 SETTABLEKS                       R8 R7 K55 ["onUserAdded"]
      124 DUPCLOSURE                       R8 K56 [PROTO_24]
      125 CAPTURE                          VAL R7
      126 SETTABLEKS                       R8 R7 K57 ["onUserRemoved"]
      128 DUPCLOSURE                       R8 K58 [PROTO_25]
      129 CAPTURE                          VAL R7
      130 SETTABLEKS                       R8 R7 K59 ["onGroupAdded"]
      132 DUPCLOSURE                       R8 K60 [PROTO_26]
      133 CAPTURE                          VAL R7
      134 SETTABLEKS                       R8 R7 K61 ["onGroupRemoved"]
      136 DUPCLOSURE                       R8 K62 [PROTO_27]
      137 CAPTURE                          VAL R7
      138 SETTABLEKS                       R8 R7 K63 ["onPermissionFailed"]
      140 DUPCLOSURE                       R8 K64 [PROTO_28]
      141 CAPTURE                          VAL R4
      142 CAPTURE                          VAL R7
      143 SETTABLEKS                       R8 R7 K65 ["onNumCollaboratorsChanged"]
      145 DUPCLOSURE                       R8 K66 [PROTO_29]
      146 CAPTURE                          VAL R7
      147 SETTABLEKS                       R8 R7 K67 ["onSecuritySettingChange"]
      149 RETURN                           R7 1
