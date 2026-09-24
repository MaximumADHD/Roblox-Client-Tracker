PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Permissions"]
        3 GETTABLEKS                       R0 R0 K1 ["CurrentPermissions"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["Permissions"]
        8 GETTABLEKS                       R2 R2 K2 ["NewPermissions"]
       10 OR                               R1 R2 R0
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K3 ["PendingPlayTesters"]
       14 GETTABLEKS                       R3 R2 K4 ["CurrentPlayTesters"]
       16 GETTABLEKS                       R5 R2 K5 ["NewPlayTesters"]
       18 OR                               R4 R5 R3
       19 GETUPVAL                         R5 1
       20 GETUPVAL                         R6 2
       21 GETUPVAL                         R7 3
       22 GETUPVAL                         R8 4
       23 MOVE                             R9 R0
       24 MOVE                             R10 R1
       25 MOVE                             R11 R3
       26 MOVE                             R12 R4
       27 CALL                             R5 7 2
       28 GETUPVAL                         R7 5
       29 GETTABLEKS                       R7 R7 K6 ["reportSaveCollaboratorsPressed"]
       31 GETUPVAL                         R8 6
       32 MOVE                             R9 R5
       33 MOVE                             R10 R6
       34 CALL                             R7 3 0
       35 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Permissions"]
        3 GETTABLEKS                       R0 R0 K1 ["CurrentPermissions"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["Permissions"]
        8 GETTABLEKS                       R1 R1 K2 ["NewPermissions"]
       10 JUMPIFEQKNIL                     R1 ; [+15]
       12 GETUPVAL                         R2 1
       13 GETUPVAL                         R4 2
       14 MOVE                             R5 R0
       15 MOVE                             R6 R1
       16 NAMECALL                         R2 R2 K3 ["setPermissions"]
       18 CALL                             R2 4 2
       19 GETUPVAL                         R4 3
       20 GETTABLEKS                       R4 R4 K4 ["reportSaveCollaboratorsPressed"]
       22 GETUPVAL                         R5 4
       23 MOVE                             R6 R2
       24 MOVE                             R7 R3
       25 CALL                             R4 3 0
       26 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["GranularPermissions"]
        3 GETTABLEKS                       R0 R0 K1 ["UpdatedPermissionValues"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["GranularPermissions"]
        8 GETTABLEKS                       R1 R1 K2 ["PermissionsMap"]
       10 JUMPIF                           R1 ; [+2]
       11 NEWTABLE                         R1 0 0
       13 NEWTABLE                         R2 0 0
       15 MOVE                             R3 R0
       16 LOADNIL                          R4
       17 LOADNIL                          R5
       18 FORGPREP                         R3
       19 GETTABLE                         R8 R1 R6
       20 JUMPIFEQKNIL                     R8 ; [+6]
       22 GETUPVAL                         R10 1
       23 GETTABLEKS                       R10 R10 K3 ["ActionKey"]
       25 GETTABLE                         R9 R8 R10
       26 SETTABLE                         R9 R2 R6
       27 FORGLOOP                         R3 2 ; [-9]
       29 GETUPVAL                         R3 2
       30 GETUPVAL                         R5 3
       31 GETUPVAL                         R6 4
       32 MOVE                             R7 R0
       33 MOVE                             R8 R2
       34 NAMECALL                         R3 R3 K4 ["setGranularPermissionsViaGroupsAPI"]
       36 CALL                             R3 5 0
       37 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Permissions"]
        3 GETTABLEKS                       R0 R0 K1 ["CurrentPermissions"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["Permissions"]
        8 GETTABLEKS                       R1 R1 K2 ["NewPermissions"]
       10 JUMPIFEQKNIL                     R1 ; [+15]
       12 GETUPVAL                         R2 1
       13 GETUPVAL                         R4 2
       14 MOVE                             R5 R0
       15 MOVE                             R6 R1
       16 NAMECALL                         R2 R2 K3 ["setPermissions"]
       18 CALL                             R2 4 2
       19 GETUPVAL                         R4 3
       20 GETTABLEKS                       R4 R4 K4 ["reportSaveCollaboratorsPressed"]
       22 GETUPVAL                         R5 4
       23 MOVE                             R6 R2
       24 MOVE                             R7 R3
       25 CALL                             R4 3 0
       26 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+12]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["GranularPermissions"]
        5 GETTABLEKS                       R0 R0 K1 ["UpdatedPermissionValues"]
        7 GETUPVAL                         R1 2
        8 GETUPVAL                         R3 3
        9 GETUPVAL                         R4 4
       10 MOVE                             R5 R0
       11 NAMECALL                         R1 R1 K2 ["setGranularPermissions"]
       13 CALL                             R1 4 0
       14 RETURN                           R0 0

PROTO_5:
        0 NAMECALL                         R4 R0 K0 ["getState"]
        2 CALL                             R4 1 1
        3 GETIMPORT                        R5 K2 [game]
        5 GETTABLEKS                       R5 R5 K3 ["GameId"]
        7 GETTABLEKS                       R6 R1 K4 ["gamePermissionsController"]
        9 GETTABLEKS                       R7 R1 K5 ["granularPermissionsController"]
       11 GETTABLEKS                       R8 R1 K6 ["playTestersController"]
       13 GETUPVAL                         R10 0
       14 GETTABLEKS                       R10 R10 K7 ["fflagCollabPV2GroupMigration"]
       16 JUMPIFNOT                        R10 ; [+4]
       17 GETUPVAL                         R9 1
       18 MOVE                             R10 R4
       19 CALL                             R9 1 1
       20 JUMP                             ; [+3]
       21 GETUPVAL                         R9 2
       22 GETTABLEKS                       R9 R9 K8 ["NOT_MIGRATED"]
       24 GETUPVAL                         R10 0
       25 GETTABLEKS                       R10 R10 K7 ["fflagCollabPV2GroupMigration"]
       27 JUMPIFNOT                        R10 ; [+8]
       28 GETUPVAL                         R10 2
       29 GETTABLEKS                       R10 R10 K9 ["MIGRATING"]
       31 JUMPIFNOTEQ                      R9 R10 ; [+4]
       33 NEWTABLE                         R10 0 0
       35 RETURN                           R10 1
       36 GETUPVAL                         R10 0
       37 GETTABLEKS                       R10 R10 K10 ["fflagAddPlayTesterPermission"]
       39 JUMPIFNOT                        R10 ; [+14]
       40 JUMPIF                           R2 ; [+13]
       41 NEWTABLE                         R10 0 1
       43 NEWCLOSURE                       R11 P0
       44 CAPTURE                          VAL R4
       45 CAPTURE                          UPVAL U3
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R8
       49 CAPTURE                          UPVAL U4
       50 CAPTURE                          VAL R2
       51 SETLIST                          R10 R11 1 [1]
       53 RETURN                           R10 1
       54 GETUPVAL                         R10 0
       55 GETTABLEKS                       R10 R10 K7 ["fflagCollabPV2GroupMigration"]
       57 JUMPIFNOT                        R10 ; [+33]
       58 GETUPVAL                         R10 2
       59 GETTABLEKS                       R10 R10 K11 ["MIGRATED"]
       61 JUMPIFNOTEQ                      R9 R10 ; [+29]
       63 NEWTABLE                         R10 0 0
       65 NEWCLOSURE                       R13 P1
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R5
       69 CAPTURE                          UPVAL U4
       70 CAPTURE                          VAL R2
       71 FASTCALL2                        TABLE_INSERT R10 R13 ; [+4]
       73 MOVE                             R12 R10
       74 GETIMPORT                        R11 K14 [table.insert]
       76 CALL                             R11 2 0
       77 JUMPIFNOT                        R2 ; [+12]
       78 NEWCLOSURE                       R13 P2
       79 CAPTURE                          VAL R4
       80 CAPTURE                          UPVAL U5
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R3
       84 FASTCALL2                        TABLE_INSERT R10 R13 ; [+4]
       86 MOVE                             R12 R10
       87 GETIMPORT                        R11 K14 [table.insert]
       89 CALL                             R11 2 0
       90 RETURN                           R10 1
       91 NEWTABLE                         R10 0 2
       93 NEWCLOSURE                       R11 P3
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R5
       97 CAPTURE                          UPVAL U4
       98 CAPTURE                          VAL R2
       99 NEWCLOSURE                       R12 P4
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R7
      103 CAPTURE                          VAL R5
      104 CAPTURE                          VAL R3
      105 SETLIST                          R10 R11 2 [1]
      107 RETURN                           R10 1

PROTO_6:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 2
        4 JUMPIF                           R0 ; [+18]
        5 GETUPVAL                         R2 1
        6 JUMPIF                           R2 ; [+16]
        7 GETIMPORT                        R2 K3 [warn]
        9 LOADK                            R3 K4 ["Failed"]
       10 MOVE                             R4 R1
       11 CALL                             R2 2 0
       12 LOADB                            R2 1
       13 SETUPVAL                         R2 1
       14 GETUPVAL                         R2 2
       15 GETUPVAL                         R4 3
       16 GETUPVAL                         R5 4
       17 GETTABLEKS                       R5 R5 K5 ["SaveFailed"]
       19 CALL                             R4 1 -1
       20 NAMECALL                         R2 R2 K6 ["dispatch"]
       22 CALL                             R2 -1 0
       23 GETUPVAL                         R3 5
       24 ADDK                             R2 R3 K7 [1]
       25 SETUPVAL                         R2 5
       26 GETUPVAL                         R2 5
       27 GETUPVAL                         R4 6
       28 LENGTH                           R3 R4
       29 JUMPIFNOTEQ                      R2 R3 ; [+12]
       31 GETUPVAL                         R2 1
       32 JUMPIF                           R2 ; [+9]
       33 GETUPVAL                         R2 2
       34 GETUPVAL                         R4 3
       35 GETUPVAL                         R5 4
       36 GETTABLEKS                       R5 R5 K8 ["Saved"]
       38 CALL                             R4 1 -1
       39 NAMECALL                         R2 R2 K6 ["dispatch"]
       41 CALL                             R2 -1 0
       42 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 GETUPVAL                         R5 1
        4 GETUPVAL                         R6 2
        5 CALL                             R2 4 1
        6 GETUPVAL                         R5 3
        7 GETUPVAL                         R6 4
        8 GETTABLEKS                       R6 R6 K0 ["Saving"]
       10 CALL                             R5 1 -1
       11 NAMECALL                         R3 R0 K1 ["dispatch"]
       13 CALL                             R3 -1 0
       14 GETUPVAL                         R3 5
       15 GETTABLEKS                       R3 R3 K2 ["fflagCollabPV2GroupMigration"]
       17 JUMPIFNOT                        R3 ; [+12]
       18 LENGTH                           R3 R2
       19 JUMPIFNOTEQKN                    R3 K3 [0] ; [+10]
       21 GETUPVAL                         R5 3
       22 GETUPVAL                         R6 4
       23 GETTABLEKS                       R6 R6 K4 ["Saved"]
       25 CALL                             R5 1 -1
       26 NAMECALL                         R3 R0 K1 ["dispatch"]
       28 CALL                             R3 -1 0
       29 RETURN                           R0 0
       30 LOADN                            R3 0
       31 LOADB                            R4 0
       32 GETIMPORT                        R5 K6 [ipairs]
       34 MOVE                             R6 R2
       35 CALL                             R5 1 3
       36 FORGPREP_INEXT                   R5
       37 GETIMPORT                        R10 K9 [coroutine.wrap]
       39 NEWCLOSURE                       R11 P0
       40 CAPTURE                          VAL R9
       41 CAPTURE                          REF R4
       42 CAPTURE                          VAL R0
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          UPVAL U4
       45 CAPTURE                          REF R3
       46 CAPTURE                          VAL R2
       47 CALL                             R10 1 1
       48 MOVE                             R11 R10
       49 CALL                             R11 0 0
       50 FORGLOOP                         R5 2 [inext] ; [-14]
       52 CLOSEUPVALS                      R3
       53 RETURN                           R0 0

PROTO_8:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Bin"]
       13 GETTABLEKS                       R2 R2 K6 ["defineLuaFlags"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["Actions"]
       22 GETTABLEKS                       R3 R3 K9 ["SetSaveState"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K7 ["Src"]
       29 GETTABLEKS                       R4 R4 K10 ["Util"]
       31 GETTABLEKS                       R4 R4 K11 ["SaveState"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R5 R0 K7 ["Src"]
       38 GETTABLEKS                       R5 R5 K10 ["Util"]
       40 GETTABLEKS                       R5 R5 K12 ["PermissionsConstants"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K4 [require]
       45 GETTABLEKS                       R6 R0 K7 ["Src"]
       47 GETTABLEKS                       R6 R6 K10 ["Util"]
       49 GETTABLEKS                       R6 R6 K13 ["Analytics"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K4 [require]
       54 GETTABLEKS                       R7 R0 K7 ["Src"]
       56 GETTABLEKS                       R7 R7 K10 ["Util"]
       58 GETTABLEKS                       R7 R7 K14 ["MigrationStatus"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K4 [require]
       63 GETTABLEKS                       R8 R0 K7 ["Src"]
       65 GETTABLEKS                       R8 R8 K15 ["Selectors"]
       67 GETTABLEKS                       R8 R8 K16 ["GetMigrationStatus"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K4 [require]
       72 GETTABLEKS                       R9 R0 K7 ["Src"]
       74 GETTABLEKS                       R9 R9 K10 ["Util"]
       76 GETTABLEKS                       R9 R9 K17 ["SaveAudiencePermissions"]
       78 CALL                             R8 1 1
       79 DUPCLOSURE                       R9 K18 [PROTO_5]
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R4
       86 DUPCLOSURE                       R10 K19 [PROTO_8]
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R1
       91 RETURN                           R10 1
