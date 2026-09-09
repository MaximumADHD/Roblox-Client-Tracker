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
       10 DUPTABLE                         R4 K6 [{["Body"], ["expectEmptyResponse"] = True}]
       11 GETUPVAL                         R5 4
       12 GETTABLEKS                       R5 R5 K7 ["toRequestBody"]
       14 GETUPVAL                         R6 5
       15 CALL                             R5 1 1
       16 SETTABLEKS                       R5 R4 K3 ["Body"]
       18 NAMECALL                         R0 R0 K8 ["post"]
       20 CALL                             R0 4 1
       21 NAMECALL                         R0 R0 K9 ["await"]
       23 CALL                             R0 1 0
       24 RETURN                           R0 0

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
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 LOADNIL                          R4
        5 LOADK                            R6 K0 ["/v2/groups/"]
        6 MOVE                             R7 R1
        7 LOADK                            R8 K1 ["/roles/permissions/resolved"]
        8 CONCAT                           R5 R6 R8
        9 JUMPIFEQKNIL                     R4 ; [+11]
       11 JUMPIFEQKS                       R4 K2 [""] ; [+9]
       13 MOVE                             R6 R5
       14 LOADK                            R7 K3 ["?cursor="]
       15 GETUPVAL                         R8 0
       16 MOVE                             R10 R4
       17 NAMECALL                         R8 R8 K4 ["UrlEncode"]
       19 CALL                             R8 2 1
       20 CONCAT                           R5 R6 R8
       21 LOADK                            R8 K5 ["groups"]
       22 MOVE                             R9 R5
       23 NAMECALL                         R6 R0 K6 ["get"]
       25 CALL                             R6 3 1
       26 NAMECALL                         R6 R6 K7 ["await"]
       28 CALL                             R6 1 1
       29 GETTABLEKS                       R7 R6 K8 ["responseBody"]
       31 JUMPIF                           R7 ; [+2]
       32 NEWTABLE                         R7 0 0
       34 GETTABLEKS                       R8 R7 K9 ["data"]
       36 JUMPIF                           R8 ; [+2]
       37 NEWTABLE                         R8 0 0
       39 MOVE                             R9 R8
       40 LOADNIL                          R10
       41 LOADNIL                          R11
       42 FORGPREP                         R9
       43 GETTABLEKS                       R14 R13 K10 ["entityId"]
       45 JUMPIFEQKNIL                     R14 ; [+30]
       47 GETTABLEKS                       R15 R13 K11 ["permissions"]
       49 JUMPIF                           R15 ; [+2]
       50 NEWTABLE                         R15 0 0
       52 GETTABLEKS                       R17 R15 K12 ["canEditPermissions"]
       54 JUMPIFEQKB                       R17 TRUE ; [+2]
       56 LOADB                            R16 0 +1
       57 LOADB                            R16 1
       58 LOADB                            R17 1
       59 GETTABLEKS                       R18 R15 K13 ["canEditMetadata"]
       61 JUMPIFEQKB                       R18 TRUE ; [+7]
       63 GETTABLEKS                       R18 R15 K14 ["canAssign"]
       65 JUMPIFEQKB                       R18 TRUE ; [+2]
       67 LOADB                            R17 0 +1
       68 LOADB                            R17 1
       69 FASTCALL1                        TOSTRING R14 ; [+3]
       70 MOVE                             R19 R14
       71 GETIMPORT                        R18 K16 [tostring]
       73 CALL                             R18 1 1
       74 SETTABLE                         R16 R2 R18
       75 SETTABLE                         R17 R3 R18
       76 FORGLOOP                         R9 2 ; [-34]
       78 GETTABLEKS                       R4 R7 K17 ["nextPageCursor"]
       80 JUMPIFEQKNIL                     R4 ; [+4]
       82 JUMPIFEQKS                       R4 K2 [""] ; [+2]
       84 JUMPBACK                         ; [-80]
       85 RETURN                           R2 2

PROTO_7:
        0 NEWTABLE                         R1 1 0
        2 SETTABLEKS                       R0 R1 K0 ["_networking"]
        4 GETUPVAL                         R4 0
        5 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
        7 MOVE                             R3 R1
        8 GETIMPORT                        R2 K2 [setmetatable]
       10 CALL                             R2 2 1
       11 RETURN                           R2 1

PROTO_8:
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["groups"]
        2 LOADK                            R4 K1 ["/v2/groups/"]
        3 GETUPVAL                         R5 1
        4 LOADK                            R6 K2 ["/roles/"]
        5 GETUPVAL                         R7 2
        6 LOADK                            R8 K3 ["/permissions/universes/"]
        7 GETUPVAL                         R9 3
        8 CONCAT                           R3 R4 R9
        9 NAMECALL                         R0 R0 K4 ["get"]
       11 CALL                             R0 3 1
       12 NAMECALL                         R0 R0 K5 ["await"]
       14 CALL                             R0 1 1
       15 GETUPVAL                         R1 4
       16 GETTABLEKS                       R1 R1 K6 ["fromResponseBody"]
       18 GETTABLEKS                       R2 R0 K7 ["responseBody"]
       20 GETUPVAL                         R3 5
       21 GETUPVAL                         R4 6
       22 LOADNIL                          R5
       23 GETUPVAL                         R7 7
       24 GETUPVAL                         R8 8
       25 GETTABLE                         R6 R7 R8
       26 CALL                             R1 5 -1
       27 RETURN                           R1 -1

PROTO_13:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          UPVAL U8
       12 CALL                             R0 1 2
       13 JUMPIFNOT                        R0 ; [+39]
       14 GETUPVAL                         R3 5
       15 GETTABLEKS                       R3 R3 K2 ["rank"]
       17 JUMPIFEQKN                       R3 K3 [0] ; [+2]
       19 LOADB                            R2 0 +1
       20 LOADB                            R2 1
       21 GETUPVAL                         R5 9
       22 GETTABLEKS                       R5 R5 K4 ["ActionKey"]
       24 GETTABLE                         R4 R1 R5
       25 GETUPVAL                         R5 4
       26 GETTABLEKS                       R5 R5 K5 ["NONE_KEY"]
       28 JUMPIFEQ                         R4 R5 ; [+2]
       30 LOADB                            R3 0 +1
       31 LOADB                            R3 1
       32 JUMPIFNOT                        R2 ; [+1]
       33 JUMPIF                           R3 ; [+19]
       34 GETUPVAL                         R4 9
       35 GETTABLEKS                       R4 R4 K6 ["IsVisibleOnlyKey"]
       37 GETUPVAL                         R6 10
       38 GETUPVAL                         R7 8
       39 GETTABLE                         R5 R6 R7
       40 JUMPIFNOT                        R5 ; [+4]
       41 GETUPVAL                         R7 7
       42 GETUPVAL                         R8 8
       43 GETTABLE                         R6 R7 R8
       44 NOT                              R5 R6
       45 SETTABLE                         R5 R1 R4
       46 GETUPVAL                         R4 11
       47 GETUPVAL                         R5 2
       48 LOADB                            R6 1
       49 SETTABLE                         R6 R4 R5
       50 GETUPVAL                         R4 12
       51 GETUPVAL                         R5 2
       52 SETTABLE                         R1 R4 R5
       53 GETUPVAL                         R2 13
       54 ADDK                             R2 R2 K7 [1]
       55 SETUPVAL                         R2 13
       56 GETUPVAL                         R2 13
       57 GETUPVAL                         R3 14
       58 JUMPIFNOTEQ                      R2 R3 ; [+5]
       60 GETIMPORT                        R2 K10 [coroutine.resume]
       62 GETUPVAL                         R3 15
       63 CALL                             R2 1 0
       64 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R4 R0 K0 ["_networking"]
        2 LOADK                            R6 K1 ["/v1/groups/"]
        3 MOVE                             R7 R2
        4 LOADK                            R8 K2 ["/roles"]
        5 CONCAT                           R5 R6 R8
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R6 R6 K3 ["fflagIncludePrivateRoles"]
        9 JUMPIFNOT                        R6 ; [+3]
       10 MOVE                             R6 R5
       11 LOADK                            R7 K4 ["?includePrivate=true"]
       12 CONCAT                           R5 R6 R7
       13 LOADK                            R8 K5 ["groups"]
       14 MOVE                             R9 R5
       15 NAMECALL                         R6 R4 K6 ["get"]
       17 CALL                             R6 3 1
       18 NAMECALL                         R6 R6 K7 ["await"]
       20 CALL                             R6 1 1
       21 GETTABLEKS                       R7 R6 K8 ["responseBody"]
       23 GETTABLEKS                       R7 R7 K9 ["roles"]
       25 GETUPVAL                         R8 1
       26 MOVE                             R9 R4
       27 MOVE                             R10 R2
       28 CALL                             R8 2 2
       29 NEWTABLE                         R10 0 0
       31 MOVE                             R11 R7
       32 LOADNIL                          R12
       33 LOADNIL                          R13
       34 FORGPREP                         R11
       35 GETTABLEKS                       R16 R15 K10 ["id"]
       37 FASTCALL1                        TOSTRING R16 ; [+3]
       38 MOVE                             R18 R16
       39 GETIMPORT                        R17 K12 [tostring]
       41 CALL                             R17 1 1
       42 GETUPVAL                         R18 2
       43 JUMPIFEQ                         R16 R18 ; [+12]
       45 GETTABLE                         R18 R8 R17
       46 JUMPIF                           R18 ; [+2]
       47 GETTABLE                         R18 R9 R17
       48 JUMPIFNOT                        R18 ; [+7]
       49 FASTCALL2                        TABLE_INSERT R10 R15 ; [+5]
       51 MOVE                             R19 R10
       52 MOVE                             R20 R15
       53 GETIMPORT                        R18 K15 [table.insert]
       55 CALL                             R18 2 0
       56 FORGLOOP                         R11 2 ; [-22]
       58 NEWTABLE                         R11 0 0
       60 NEWTABLE                         R12 0 0
       62 GETIMPORT                        R13 K18 [coroutine.running]
       64 CALL                             R13 0 1
       65 LOADN                            R14 0
       66 LOADN                            R15 0
       67 MOVE                             R16 R10
       68 LOADNIL                          R17
       69 LOADNIL                          R18
       70 FORGPREP                         R16
       71 GETTABLEKS                       R21 R20 K10 ["id"]
       73 FASTCALL1                        TOSTRING R21 ; [+3]
       74 MOVE                             R23 R21
       75 GETIMPORT                        R22 K12 [tostring]
       77 CALL                             R22 1 1
       78 ADDK                             R15 R15 K19 [1]
       79 GETIMPORT                        R23 K21 [coroutine.wrap]
       81 NEWCLOSURE                       R24 P0
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R21
       85 CAPTURE                          VAL R1
       86 CAPTURE                          UPVAL U3
       87 CAPTURE                          VAL R20
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R22
       91 CAPTURE                          UPVAL U4
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R11
       94 CAPTURE                          VAL R12
       95 CAPTURE                          REF R14
       96 CAPTURE                          REF R15
       97 CAPTURE                          VAL R13
       98 CALL                             R23 1 1
       99 MOVE                             R24 R23
      100 CALL                             R24 0 0
      101 FORGLOOP                         R16 2 ; [-31]
      103 JUMPIFEQKN                       R15 K22 [0] ; [+4]
      105 GETIMPORT                        R16 K24 [coroutine.yield]
      107 CALL                             R16 0 0
      108 LOADN                            R16 1
      109 LENGTH                           R17 R10
      110 LOADN                            R18 1
      111 GETUPVAL                         R19 0
      112 GETTABLEKS                       R19 R19 K25 ["fflagReverseGroupRoleOrder"]
      114 JUMPIFNOT                        R19 ; [+3]
      115 LENGTH                           R16 R10
      116 LOADN                            R17 1
      117 LOADN                            R18 -1
      118 NEWTABLE                         R19 0 0
      120 MOVE                             R22 R16
      121 MOVE                             R20 R17
      122 MOVE                             R21 R18
      123 FORNPREP                         R20
      124 GETTABLE                         R23 R10 R22
      125 GETTABLEKS                       R25 R23 K10 ["id"]
      127 GETTABLE                         R24 R11 R25
      128 JUMPIFNOT                        R24 ; [+8]
      129 GETTABLEKS                       R26 R23 K10 ["id"]
      131 FASTCALL2                        TABLE_INSERT R19 R26 ; [+4]
      133 MOVE                             R25 R19
      134 GETIMPORT                        R24 K15 [table.insert]
      136 CALL                             R24 2 0
      137 FORNLOOP                         R20
      138 MOVE                             R20 R19
      139 MOVE                             R21 R12
      140 CLOSEUPVALS                      R14
      141 RETURN                           R20 2

PROTO_15:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["groups"]
        2 LOADK                            R4 K1 ["/v2/groups/"]
        3 GETUPVAL                         R5 1
        4 LOADK                            R6 K2 ["/roles/"]
        5 GETUPVAL                         R7 2
        6 LOADK                            R8 K3 ["/permissions/universes/"]
        7 GETUPVAL                         R9 3
        8 CONCAT                           R3 R4 R9
        9 DUPTABLE                         R4 K5 [{"Body"}]
       10 GETUPVAL                         R5 4
       11 GETTABLEKS                       R5 R5 K6 ["toRequestBody"]
       13 GETUPVAL                         R6 5
       14 GETUPVAL                         R7 6
       15 CALL                             R5 2 1
       16 SETTABLEKS                       R5 R4 K4 ["Body"]
       18 NAMECALL                         R0 R0 K7 ["patch"]
       20 CALL                             R0 4 1
       21 NAMECALL                         R0 R0 K8 ["await"]
       23 CALL                             R0 1 0
       24 RETURN                           R0 0

PROTO_16:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 7
       12 ADDK                             R0 R0 K2 [1]
       13 SETUPVAL                         R0 7
       14 GETUPVAL                         R0 7
       15 GETUPVAL                         R1 8
       16 JUMPIFNOTEQ                      R0 R1 ; [+5]
       18 GETIMPORT                        R0 K5 [coroutine.resume]
       20 GETUPVAL                         R1 9
       21 CALL                             R0 1 0
       22 RETURN                           R0 0

PROTO_17:
        0 GETIMPORT                        R5 K1 [next]
        2 MOVE                             R6 R3
        3 CALL                             R5 1 1
        4 JUMPIFNOTEQKNIL                  R5 ; [+2]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R5 R0 K2 ["_networking"]
        9 GETIMPORT                        R6 K5 [coroutine.running]
       11 CALL                             R6 0 1
       12 LOADN                            R7 0
       13 LOADN                            R8 0
       14 MOVE                             R9 R3
       15 LOADNIL                          R10
       16 LOADNIL                          R11
       17 FORGPREP                         R9
       18 ADDK                             R8 R8 K6 [1]
       19 JUMPIFNOTEQKNIL                  R4 ; [+3]
       21 LOADNIL                          R14
       22 JUMP                             ; [+1]
       23 GETTABLE                         R14 R4 R12
       24 GETIMPORT                        R15 K8 [coroutine.wrap]
       26 NEWCLOSURE                       R16 P0
       27 CAPTURE                          VAL R5
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R12
       30 CAPTURE                          VAL R1
       31 CAPTURE                          UPVAL U0
       32 CAPTURE                          VAL R13
       33 CAPTURE                          VAL R14
       34 CAPTURE                          REF R7
       35 CAPTURE                          REF R8
       36 CAPTURE                          VAL R6
       37 CALL                             R15 1 1
       38 MOVE                             R16 R15
       39 CALL                             R16 0 0
       40 FORGLOOP                         R9 2 ; [-23]
       42 GETIMPORT                        R9 K10 [coroutine.yield]
       44 CALL                             R9 0 0
       45 CLOSEUPVALS                      R7
       46 RETURN                           R0 0

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
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K5 ["Src"]
       24 GETTABLEKS                       R3 R3 K6 ["Networking"]
       26 GETTABLEKS                       R3 R3 K7 ["Requests"]
       28 GETTABLEKS                       R3 R3 K9 ["GroupsPermissionsDataHandler"]
       30 CALL                             R2 1 1
       31 GETIMPORT                        R3 K4 [require]
       33 GETTABLEKS                       R4 R0 K5 ["Src"]
       35 GETTABLEKS                       R4 R4 K10 ["Util"]
       37 GETTABLEKS                       R4 R4 K11 ["PermissionsConstants"]
       39 CALL                             R3 1 1
       40 GETIMPORT                        R4 K4 [require]
       42 GETTABLEKS                       R5 R0 K12 ["Bin"]
       44 GETTABLEKS                       R5 R5 K13 ["defineLuaFlags"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K15 [game]
       49 LOADK                            R7 K16 ["StudioService"]
       50 NAMECALL                         R5 R5 K17 ["GetService"]
       52 CALL                             R5 2 1
       53 GETIMPORT                        R6 K15 [game]
       55 LOADK                            R8 K18 ["HttpService"]
       56 NAMECALL                         R6 R6 K17 ["GetService"]
       58 CALL                             R6 2 1
       59 NEWTABLE                         R7 8 0
       61 SETTABLEKS                       R7 R7 K19 ["__index"]
       63 GETTABLEKS                       R8 R3 K20 ["GroupDefaultMemberRolesetId"]
       65 NEWTABLE                         R9 0 0
       67 DUPCLOSURE                       R10 K21 [PROTO_0]
       68 CAPTURE                          VAL R9
       69 DUPCLOSURE                       R11 K22 [PROTO_2]
       70 CAPTURE                          VAL R1
       71 DUPCLOSURE                       R12 K23 [PROTO_4]
       72 CAPTURE                          VAL R1
       73 DUPCLOSURE                       R13 K24 [PROTO_5]
       74 CAPTURE                          VAL R5
       75 DUPCLOSURE                       R14 K25 [PROTO_6]
       76 CAPTURE                          VAL R6
       77 DUPCLOSURE                       R15 K26 [PROTO_7]
       78 CAPTURE                          VAL R7
       79 SETTABLEKS                       R15 R7 K27 ["new"]
       81 DUPCLOSURE                       R15 K28 [PROTO_9]
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R1
       84 SETTABLEKS                       R15 R7 K29 ["setGranularPermissions"]
       86 DUPCLOSURE                       R15 K30 [PROTO_11]
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R13
       89 CAPTURE                          VAL R1
       90 SETTABLEKS                       R15 R7 K31 ["getGranularPermissions"]
       92 DUPCLOSURE                       R15 K32 [PROTO_14]
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R14
       95 CAPTURE                          VAL R8
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R3
       98 SETTABLEKS                       R15 R7 K33 ["getGranularPermissionsFromGroupsAPI"]
      100 DUPCLOSURE                       R15 K34 [PROTO_17]
      101 CAPTURE                          VAL R2
      102 SETTABLEKS                       R15 R7 K35 ["setGranularPermissionsViaGroupsAPI"]
      104 RETURN                           R7 1
