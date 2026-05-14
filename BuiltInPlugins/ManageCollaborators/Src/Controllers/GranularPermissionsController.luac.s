PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 JUMPIFNOT                        R2 ; [+3]
        3 GETUPVAL                         R3 0
        4 GETTABLE                         R2 R3 R1
        5 RETURN                           R2 1
        6 LOADK                            R4 K0 ["apis"]
        7 LOADK                            R6 K1 ["/orgs/v1/organizations?groupId=%*"]
        8 MOVE                             R8 R1
        9 NAMECALL                         R6 R6 K2 ["format"]
       11 CALL                             R6 2 1
       12 MOVE                             R5 R6
       13 NAMECALL                         R2 R0 K3 ["get"]
       15 CALL                             R2 3 1
       16 NAMECALL                         R2 R2 K4 ["await"]
       18 CALL                             R2 1 1
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R4 R2 K5 ["responseBody"]
       22 GETTABLEKS                       R4 R4 K6 ["id"]
       24 SETTABLE                         R4 R3 R1
       25 GETUPVAL                         R4 0
       26 GETTABLE                         R3 R4 R1
       27 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["apis"]
        2 LOADK                            R4 K1 ["/orgs/v2/universes/%*/permissions/organizations/%*/roles/%*"]
        3 GETUPVAL                         R6 1
        4 GETUPVAL                         R7 2
        5 GETUPVAL                         R8 3
        6 GETTABLEKS                       R8 R8 K2 ["id"]
        8 NAMECALL                         R4 R4 K3 ["format"]
       10 CALL                             R4 4 1
       11 MOVE                             R3 R4
       12 NAMECALL                         R0 R0 K4 ["get"]
       14 CALL                             R0 3 1
       15 NAMECALL                         R0 R0 K5 ["await"]
       17 CALL                             R0 1 1
       18 GETUPVAL                         R1 4
       19 GETTABLEKS                       R1 R1 K6 ["fromResponseBody"]
       21 GETTABLEKS                       R2 R0 K7 ["responseBody"]
       23 GETUPVAL                         R3 3
       24 GETUPVAL                         R4 5
       25 GETUPVAL                         R5 6
       26 CALL                             R1 4 -1
       27 RETURN                           R1 -1

PROTO_2:
        0 GETIMPORT                        R6 K1 [pcall]
        2 NEWCLOSURE                       R7 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R2
        6 CAPTURE                          VAL R3
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R4
        9 CAPTURE                          VAL R5
       10 CALL                             R6 1 -1
       11 RETURN                           R6 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["apis"]
        2 LOADK                            R4 K1 ["/orgs/v2/universes/%*/permissions/organizations/%*/roles/%*"]
        3 GETUPVAL                         R6 1
        4 GETUPVAL                         R7 2
        5 GETUPVAL                         R8 3
        6 NAMECALL                         R4 R4 K2 ["format"]
        8 CALL                             R4 4 1
        9 MOVE                             R3 R4
       10 DUPTABLE                         R4 K5 [{"Body", "expectEmptyResponse"}]
       11 GETUPVAL                         R5 4
       12 GETTABLEKS                       R5 R5 K6 ["toRequestBody"]
       14 GETUPVAL                         R6 5
       15 CALL                             R5 1 1
       16 SETTABLEKS                       R5 R4 K3 ["Body"]
       18 LOADB                            R5 1
       19 SETTABLEKS                       R5 R4 K4 ["expectEmptyResponse"]
       21 NAMECALL                         R0 R0 K7 ["post"]
       23 CALL                             R0 4 1
       24 NAMECALL                         R0 R0 K8 ["await"]
       26 CALL                             R0 1 0
       27 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R5 K1 [pcall]
        2 NEWCLOSURE                       R6 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R2
        6 CAPTURE                          VAL R3
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R4
        9 CALL                             R5 1 -1
       10 RETURN                           R5 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["GetUserId"]
        3 CALL                             R2 1 1
        4 LOADK                            R5 K1 ["apis"]
        5 LOADK                            R7 K2 ["/orgs/v1/organizations/%*/users/%*/permissions"]
        6 MOVE                             R9 R1
        7 MOVE                             R10 R2
        8 NAMECALL                         R7 R7 K3 ["format"]
       10 CALL                             R7 3 1
       11 MOVE                             R6 R7
       12 NAMECALL                         R3 R0 K4 ["get"]
       14 CALL                             R3 3 1
       15 NAMECALL                         R3 R3 K5 ["await"]
       17 CALL                             R3 1 1
       18 NEWTABLE                         R4 0 0
       20 NEWTABLE                         R5 0 0
       22 GETTABLEKS                       R6 R3 K6 ["responseBody"]
       24 GETTABLEKS                       R6 R6 K7 ["permissionEditableRoleIds"]
       26 LOADNIL                          R7
       27 LOADNIL                          R8
       28 FORGPREP                         R6
       29 LOADB                            R11 1
       30 SETTABLE                         R11 R4 R10
       31 FORGLOOP                         R6 2 ; [-3]
       33 GETTABLEKS                       R6 R3 K6 ["responseBody"]
       35 GETTABLEKS                       R6 R6 K8 ["metadataEditableRoleIds"]
       37 LOADNIL                          R7
       38 LOADNIL                          R8
       39 FORGPREP                         R6
       40 LOADB                            R11 1
       41 SETTABLE                         R11 R5 R10
       42 FORGLOOP                         R6 2 ; [-3]
       44 GETTABLEKS                       R6 R3 K6 ["responseBody"]
       46 GETTABLEKS                       R6 R6 K9 ["assignableRoleIds"]
       48 LOADNIL                          R7
       49 LOADNIL                          R8
       50 FORGPREP                         R6
       51 LOADB                            R11 1
       52 SETTABLE                         R11 R5 R10
       53 FORGLOOP                         R6 2 ; [-3]
       55 RETURN                           R4 2

PROTO_6:
        0 NEWTABLE                         R1 1 0
        2 SETTABLEKS                       R0 R1 K0 ["_networking"]
        4 GETUPVAL                         R4 0
        5 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
        7 MOVE                             R3 R1
        8 GETIMPORT                        R2 K2 [setmetatable]
       10 CALL                             R2 2 1
       11 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETUPVAL                         R5 3
        4 GETUPVAL                         R6 4
        5 GETIMPORT                        R7 K1 [pcall]
        7 NEWCLOSURE                       R8 P0
        8 CAPTURE                          VAL R2
        9 CAPTURE                          VAL R3
       10 CAPTURE                          VAL R4
       11 CAPTURE                          VAL R5
       12 CAPTURE                          UPVAL U5
       13 CAPTURE                          VAL R6
       14 CALL                             R7 1 2
       15 MOVE                             R0 R7
       16 MOVE                             R1 R8
       17 GETUPVAL                         R3 6
       18 ADDK                             R2 R3 K2 [1]
       19 SETUPVAL                         R2 6
       20 GETUPVAL                         R2 6
       21 GETUPVAL                         R3 7
       22 JUMPIFNOTEQ                      R2 R3 ; [+5]
       24 GETIMPORT                        R2 K5 [coroutine.resume]
       26 GETUPVAL                         R3 8
       27 CALL                             R2 1 0
       28 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R4 K1 [next]
        2 MOVE                             R5 R3
        3 CALL                             R4 1 1
        4 JUMPIFNOTEQKNIL                  R4 ; [+2]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R4 R0 K2 ["_networking"]
        9 GETUPVAL                         R7 0
       10 GETTABLE                         R6 R7 R2
       11 JUMPIFNOT                        R6 ; [+3]
       12 GETUPVAL                         R6 0
       13 GETTABLE                         R5 R6 R2
       14 JUMP                             ; [+21]
       15 LOADK                            R8 K3 ["apis"]
       16 LOADK                            R10 K4 ["/orgs/v1/organizations?groupId=%*"]
       17 MOVE                             R12 R2
       18 NAMECALL                         R10 R10 K5 ["format"]
       20 CALL                             R10 2 1
       21 MOVE                             R9 R10
       22 NAMECALL                         R6 R4 K6 ["get"]
       24 CALL                             R6 3 1
       25 NAMECALL                         R6 R6 K7 ["await"]
       27 CALL                             R6 1 1
       28 GETUPVAL                         R7 0
       29 GETTABLEKS                       R8 R6 K8 ["responseBody"]
       31 GETTABLEKS                       R8 R8 K9 ["id"]
       33 SETTABLE                         R8 R7 R2
       34 GETUPVAL                         R7 0
       35 GETTABLE                         R5 R7 R2
       36 GETIMPORT                        R6 K12 [coroutine.running]
       38 CALL                             R6 0 1
       39 LOADN                            R7 0
       40 LOADN                            R8 0
       41 MOVE                             R9 R3
       42 LOADNIL                          R10
       43 LOADNIL                          R11
       44 FORGPREP                         R9
       45 ADDK                             R8 R8 K13 [1]
       46 GETIMPORT                        R14 K15 [coroutine.wrap]
       48 NEWCLOSURE                       R15 P0
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R12
       53 CAPTURE                          VAL R13
       54 CAPTURE                          UPVAL U1
       55 CAPTURE                          REF R7
       56 CAPTURE                          REF R8
       57 CAPTURE                          VAL R6
       58 CALL                             R14 1 1
       59 MOVE                             R15 R14
       60 CALL                             R15 0 0
       61 FORGLOOP                         R9 2 ; [-17]
       63 GETIMPORT                        R9 K17 [coroutine.yield]
       65 CALL                             R9 0 0
       66 CLOSEUPVALS                      R7
       67 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETUPVAL                         R5 3
        4 GETUPVAL                         R6 4
        5 GETUPVAL                         R9 5
        6 GETUPVAL                         R10 3
        7 GETTABLEKS                       R10 R10 K1 ["id"]
        9 GETTABLE                         R8 R9 R10
       10 ORK                              R7 R8 K0 [False]
       11 GETIMPORT                        R8 K3 [pcall]
       13 NEWCLOSURE                       R9 P0
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R3
       16 CAPTURE                          VAL R4
       17 CAPTURE                          VAL R5
       18 CAPTURE                          UPVAL U6
       19 CAPTURE                          VAL R6
       20 CAPTURE                          VAL R7
       21 CALL                             R8 1 2
       22 MOVE                             R0 R8
       23 MOVE                             R1 R9
       24 JUMPIFNOT                        R0 ; [+10]
       25 GETUPVAL                         R3 7
       26 GETUPVAL                         R4 8
       27 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
       29 GETIMPORT                        R2 K6 [table.insert]
       31 CALL                             R2 2 0
       32 GETUPVAL                         R2 9
       33 GETUPVAL                         R3 8
       34 SETTABLE                         R1 R2 R3
       35 GETUPVAL                         R3 10
       36 ADDK                             R2 R3 K7 [1]
       37 SETUPVAL                         R2 10
       38 GETUPVAL                         R2 10
       39 GETUPVAL                         R3 11
       40 JUMPIFNOTEQ                      R2 R3 ; [+5]
       42 GETIMPORT                        R2 K10 [coroutine.resume]
       44 GETUPVAL                         R3 12
       45 CALL                             R2 1 0
       46 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R4 R0 K0 ["_networking"]
        2 GETUPVAL                         R7 0
        3 GETTABLE                         R6 R7 R2
        4 JUMPIFNOT                        R6 ; [+3]
        5 GETUPVAL                         R6 0
        6 GETTABLE                         R5 R6 R2
        7 JUMP                             ; [+21]
        8 LOADK                            R8 K1 ["apis"]
        9 LOADK                            R10 K2 ["/orgs/v1/organizations?groupId=%*"]
       10 MOVE                             R12 R2
       11 NAMECALL                         R10 R10 K3 ["format"]
       13 CALL                             R10 2 1
       14 MOVE                             R9 R10
       15 NAMECALL                         R6 R4 K4 ["get"]
       17 CALL                             R6 3 1
       18 NAMECALL                         R6 R6 K5 ["await"]
       20 CALL                             R6 1 1
       21 GETUPVAL                         R7 0
       22 GETTABLEKS                       R8 R6 K6 ["responseBody"]
       24 GETTABLEKS                       R8 R8 K7 ["id"]
       26 SETTABLE                         R8 R7 R2
       27 GETUPVAL                         R7 0
       28 GETTABLE                         R5 R7 R2
       29 LOADK                            R8 K1 ["apis"]
       30 LOADK                            R10 K8 ["/orgs/v1/organizations/%*/roles"]
       31 MOVE                             R12 R5
       32 NAMECALL                         R10 R10 K3 ["format"]
       34 CALL                             R10 2 1
       35 MOVE                             R9 R10
       36 NAMECALL                         R6 R4 K4 ["get"]
       38 CALL                             R6 3 1
       39 NAMECALL                         R6 R6 K5 ["await"]
       41 CALL                             R6 1 1
       42 GETTABLEKS                       R7 R6 K6 ["responseBody"]
       44 GETTABLEKS                       R7 R7 K9 ["roles"]
       46 GETUPVAL                         R8 1
       47 MOVE                             R9 R4
       48 MOVE                             R10 R5
       49 CALL                             R8 2 2
       50 NEWTABLE                         R10 0 0
       52 NEWTABLE                         R11 0 0
       54 GETIMPORT                        R12 K12 [coroutine.running]
       56 CALL                             R12 0 1
       57 LOADN                            R13 0
       58 LOADN                            R14 0
       59 MOVE                             R15 R7
       60 LOADNIL                          R16
       61 LOADNIL                          R17
       62 FORGPREP                         R15
       63 GETTABLEKS                       R20 R19 K13 ["name"]
       65 JUMPIFEQKS                       R20 K14 ["Member"] ; [+31]
       67 GETTABLEKS                       R21 R19 K7 ["id"]
       69 GETTABLE                         R20 R8 R21
       70 JUMPIF                           R20 ; [+4]
       71 GETTABLEKS                       R21 R19 K7 ["id"]
       73 GETTABLE                         R20 R9 R21
       74 JUMPIFNOT                        R20 ; [+22]
       75 ADDK                             R14 R14 K15 [1]
       76 GETTABLEKS                       R20 R19 K7 ["id"]
       78 GETIMPORT                        R21 K17 [coroutine.wrap]
       80 NEWCLOSURE                       R22 P0
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R19
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R8
       87 CAPTURE                          UPVAL U2
       88 CAPTURE                          VAL R10
       89 CAPTURE                          VAL R20
       90 CAPTURE                          VAL R11
       91 CAPTURE                          REF R13
       92 CAPTURE                          REF R14
       93 CAPTURE                          VAL R12
       94 CALL                             R21 1 1
       95 MOVE                             R22 R21
       96 CALL                             R22 0 0
       97 FORGLOOP                         R15 2 ; [-35]
       99 JUMPIFEQKN                       R14 K18 [0] ; [+4]
      101 GETIMPORT                        R15 K20 [coroutine.yield]
      103 CALL                             R15 0 0
      104 CLOSEUPVALS                      R13
      105 RETURN                           R10 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Networking"]
       15 GETTABLEKS                       R2 R2 K7 ["Requests"]
       17 GETTABLEKS                       R2 R2 K8 ["GranularPermissionsDataHandler"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K10 [game]
       22 LOADK                            R4 K11 ["StudioService"]
       23 NAMECALL                         R2 R2 K12 ["GetService"]
       25 CALL                             R2 2 1
       26 NEWTABLE                         R3 4 0
       28 SETTABLEKS                       R3 R3 K13 ["__index"]
       30 NEWTABLE                         R4 0 0
       32 DUPCLOSURE                       R5 K14 [PROTO_0]
       33 CAPTURE                          VAL R4
       34 DUPCLOSURE                       R6 K15 [PROTO_2]
       35 CAPTURE                          VAL R1
       36 DUPCLOSURE                       R7 K16 [PROTO_4]
       37 CAPTURE                          VAL R1
       38 DUPCLOSURE                       R8 K17 [PROTO_5]
       39 CAPTURE                          VAL R2
       40 DUPCLOSURE                       R9 K18 [PROTO_6]
       41 CAPTURE                          VAL R3
       42 SETTABLEKS                       R9 R3 K19 ["new"]
       44 DUPCLOSURE                       R9 K20 [PROTO_8]
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R1
       47 SETTABLEKS                       R9 R3 K21 ["setGranularPermissions"]
       49 DUPCLOSURE                       R9 K22 [PROTO_10]
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R8
       52 CAPTURE                          VAL R1
       53 SETTABLEKS                       R9 R3 K23 ["getGranularPermissions"]
       55 RETURN                           R3 1
