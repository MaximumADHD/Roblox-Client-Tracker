PROTO_0:
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

PROTO_1:
        0 NEWTABLE                         R1 1 0
        2 SETTABLEKS                       R0 R1 K0 ["_networking"]
        4 GETUPVAL                         R4 0
        5 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
        7 MOVE                             R3 R1
        8 GETIMPORT                        R2 K2 [setmetatable]
       10 CALL                             R2 2 1
       11 RETURN                           R2 1

PROTO_2:
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

PROTO_3:
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

PROTO_4:
        0 GETTABLEKS                       R4 R0 K0 ["_networking"]
        2 LOADK                            R6 K1 ["/v1/groups/"]
        3 MOVE                             R7 R2
        4 LOADK                            R8 K2 ["/roles?includePrivate=true"]
        5 CONCAT                           R5 R6 R8
        6 LOADK                            R8 K3 ["groups"]
        7 MOVE                             R9 R5
        8 NAMECALL                         R6 R4 K4 ["get"]
       10 CALL                             R6 3 1
       11 NAMECALL                         R6 R6 K5 ["await"]
       13 CALL                             R6 1 1
       14 GETTABLEKS                       R7 R6 K6 ["responseBody"]
       16 GETTABLEKS                       R7 R7 K7 ["roles"]
       18 GETUPVAL                         R8 0
       19 MOVE                             R9 R4
       20 MOVE                             R10 R2
       21 CALL                             R8 2 2
       22 NEWTABLE                         R10 0 0
       24 MOVE                             R11 R7
       25 LOADNIL                          R12
       26 LOADNIL                          R13
       27 FORGPREP                         R11
       28 GETTABLEKS                       R16 R15 K8 ["id"]
       30 FASTCALL1                        TOSTRING R16 ; [+3]
       31 MOVE                             R18 R16
       32 GETIMPORT                        R17 K10 [tostring]
       34 CALL                             R17 1 1
       35 GETUPVAL                         R18 1
       36 JUMPIFEQ                         R16 R18 ; [+12]
       38 GETTABLE                         R18 R8 R17
       39 JUMPIF                           R18 ; [+2]
       40 GETTABLE                         R18 R9 R17
       41 JUMPIFNOT                        R18 ; [+7]
       42 FASTCALL2                        TABLE_INSERT R10 R15 ; [+5]
       44 MOVE                             R19 R10
       45 MOVE                             R20 R15
       46 GETIMPORT                        R18 K13 [table.insert]
       48 CALL                             R18 2 0
       49 FORGLOOP                         R11 2 ; [-22]
       51 NEWTABLE                         R11 0 0
       53 NEWTABLE                         R12 0 0
       55 GETIMPORT                        R13 K16 [coroutine.running]
       57 CALL                             R13 0 1
       58 LOADN                            R14 0
       59 LOADN                            R15 0
       60 MOVE                             R16 R10
       61 LOADNIL                          R17
       62 LOADNIL                          R18
       63 FORGPREP                         R16
       64 GETTABLEKS                       R21 R20 K8 ["id"]
       66 FASTCALL1                        TOSTRING R21 ; [+3]
       67 MOVE                             R23 R21
       68 GETIMPORT                        R22 K10 [tostring]
       70 CALL                             R22 1 1
       71 ADDK                             R15 R15 K17 [1]
       72 GETIMPORT                        R23 K19 [coroutine.wrap]
       74 NEWCLOSURE                       R24 P0
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R21
       78 CAPTURE                          VAL R1
       79 CAPTURE                          UPVAL U2
       80 CAPTURE                          VAL R20
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R22
       84 CAPTURE                          UPVAL U3
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R11
       87 CAPTURE                          VAL R12
       88 CAPTURE                          REF R14
       89 CAPTURE                          REF R15
       90 CAPTURE                          VAL R13
       91 CALL                             R23 1 1
       92 MOVE                             R24 R23
       93 CALL                             R24 0 0
       94 FORGLOOP                         R16 2 ; [-31]
       96 JUMPIFEQKN                       R15 K20 [0] ; [+4]
       98 GETIMPORT                        R16 K22 [coroutine.yield]
      100 CALL                             R16 0 0
      101 NEWTABLE                         R16 0 0
      103 LENGTH                           R19 R10
      104 LOADN                            R17 1
      105 LOADN                            R18 -1
      106 FORNPREP                         R17
      107 GETTABLE                         R20 R10 R19
      108 GETTABLEKS                       R22 R20 K8 ["id"]
      110 GETTABLE                         R21 R11 R22
      111 JUMPIFNOT                        R21 ; [+8]
      112 GETTABLEKS                       R23 R20 K8 ["id"]
      114 FASTCALL2                        TABLE_INSERT R16 R23 ; [+4]
      116 MOVE                             R22 R16
      117 GETIMPORT                        R21 K13 [table.insert]
      119 CALL                             R21 2 0
      120 FORNLOOP                         R17
      121 MOVE                             R17 R16
      122 MOVE                             R18 R12
      123 CLOSEUPVALS                      R14
      124 RETURN                           R17 2

PROTO_5:
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

PROTO_6:
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

PROTO_7:
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
       17 GETTABLEKS                       R2 R2 K8 ["GroupsPermissionsDataHandler"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K5 ["Src"]
       24 GETTABLEKS                       R3 R3 K9 ["Util"]
       26 GETTABLEKS                       R3 R3 K10 ["PermissionsConstants"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K12 [game]
       31 LOADK                            R5 K13 ["HttpService"]
       32 NAMECALL                         R3 R3 K14 ["GetService"]
       34 CALL                             R3 2 1
       35 NEWTABLE                         R4 4 0
       37 SETTABLEKS                       R4 R4 K15 ["__index"]
       39 GETTABLEKS                       R5 R2 K16 ["GroupDefaultMemberRolesetId"]
       41 DUPCLOSURE                       R6 K17 [PROTO_0]
       42 CAPTURE                          VAL R3
       43 DUPCLOSURE                       R7 K18 [PROTO_1]
       44 CAPTURE                          VAL R4
       45 SETTABLEKS                       R7 R4 K19 ["new"]
       47 DUPCLOSURE                       R7 K20 [PROTO_4]
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R2
       52 SETTABLEKS                       R7 R4 K21 ["getGranularPermissionsFromGroupsAPI"]
       54 DUPCLOSURE                       R7 K22 [PROTO_7]
       55 CAPTURE                          VAL R1
       56 SETTABLEKS                       R7 R4 K23 ["setGranularPermissionsViaGroupsAPI"]
       58 RETURN                           R4 1
