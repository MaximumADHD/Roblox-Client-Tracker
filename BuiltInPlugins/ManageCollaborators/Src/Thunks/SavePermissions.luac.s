PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Permissions"]
        3 GETTABLEKS                       R0 R1 K1 ["CurrentPermissions"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["Permissions"]
        8 GETTABLEKS                       R1 R2 K2 ["NewPermissions"]
       10 JUMPIFEQKNIL                     R1 ; [+15]
       12 GETUPVAL                         R2 1
       13 GETUPVAL                         R4 2
       14 MOVE                             R5 R0
       15 MOVE                             R6 R1
       16 NAMECALL                         R2 R2 K3 ["setPermissions"]
       18 CALL                             R2 4 2
       19 GETUPVAL                         R5 3
       20 GETTABLEKS                       R4 R5 K4 ["reportSaveCollaboratorsPressed"]
       22 GETUPVAL                         R5 4
       23 MOVE                             R6 R2
       24 MOVE                             R7 R3
       25 CALL                             R4 3 0
       26 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+12]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["GranularPermissions"]
        5 GETTABLEKS                       R0 R1 K1 ["UpdatedPermissionValues"]
        7 GETUPVAL                         R1 2
        8 GETUPVAL                         R3 3
        9 GETUPVAL                         R4 4
       10 MOVE                             R5 R0
       11 NAMECALL                         R1 R1 K2 ["setGranularPermissions"]
       13 CALL                             R1 4 0
       14 RETURN                           R0 0

PROTO_2:
        0 NAMECALL                         R4 R0 K0 ["getState"]
        2 CALL                             R4 1 1
        3 GETIMPORT                        R6 K2 [game]
        5 GETTABLEKS                       R5 R6 K3 ["GameId"]
        7 GETTABLEKS                       R6 R1 K4 ["gamePermissionsController"]
        9 GETTABLEKS                       R7 R1 K5 ["granularPermissionsController"]
       11 NEWTABLE                         R8 0 2
       13 NEWCLOSURE                       R9 P0
       14 CAPTURE                          VAL R4
       15 CAPTURE                          VAL R6
       16 CAPTURE                          VAL R5
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          VAL R2
       19 NEWCLOSURE                       R10 P1
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R4
       22 CAPTURE                          VAL R7
       23 CAPTURE                          VAL R5
       24 CAPTURE                          VAL R3
       25 SETLIST                          R8 R9 2 [1]
       27 RETURN                           R8 1

PROTO_3:
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
       16 GETUPVAL                         R6 4
       17 GETTABLEKS                       R5 R6 K5 ["SaveFailed"]
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
       35 GETUPVAL                         R6 4
       36 GETTABLEKS                       R5 R6 K8 ["Saved"]
       38 CALL                             R4 1 -1
       39 NAMECALL                         R2 R2 K6 ["dispatch"]
       41 CALL                             R2 -1 0
       42 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 GETUPVAL                         R5 1
        4 GETUPVAL                         R6 2
        5 CALL                             R2 4 1
        6 GETUPVAL                         R5 3
        7 GETUPVAL                         R7 4
        8 GETTABLEKS                       R6 R7 K0 ["Saving"]
       10 CALL                             R5 1 -1
       11 NAMECALL                         R3 R0 K1 ["dispatch"]
       13 CALL                             R3 -1 0
       14 LOADN                            R3 0
       15 LOADB                            R4 0
       16 GETIMPORT                        R5 K3 [ipairs]
       18 MOVE                             R6 R2
       19 CALL                             R5 1 3
       20 FORGPREP_INEXT                   R5
       21 GETIMPORT                        R10 K6 [coroutine.wrap]
       23 NEWCLOSURE                       R11 P0
       24 CAPTURE                          VAL R9
       25 CAPTURE                          REF R4
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          REF R3
       30 CAPTURE                          VAL R2
       31 CALL                             R10 1 1
       32 MOVE                             R11 R10
       33 CALL                             R11 0 0
       34 FORGLOOP                         R5 2 [inext] ; [-14]
       36 CLOSEUPVALS                      R3
       37 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R3 R4 K6 ["Actions"]
       15 GETTABLEKS                       R2 R3 K7 ["SetSaveState"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R5 R0 K5 ["Src"]
       22 GETTABLEKS                       R4 R5 K8 ["Util"]
       24 GETTABLEKS                       R3 R4 K9 ["SaveState"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R6 R0 K5 ["Src"]
       31 GETTABLEKS                       R5 R6 K8 ["Util"]
       33 GETTABLEKS                       R4 R5 K10 ["Analytics"]
       35 CALL                             R3 1 1
       36 DUPCLOSURE                       R4 K11 [PROTO_2]
       37 CAPTURE                          VAL R3
       38 DUPCLOSURE                       R5 K12 [PROTO_5]
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R2
       42 RETURN                           R5 1
