PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["UserId"]
        3 GETTABLE                         R1 R0 R2
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["UserSubjectKey"]
        8 RETURN                           R1 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K2 ["RoleId"]
       12 GETTABLE                         R1 R0 R2
       13 JUMPIFNOT                        R1 ; [+4]
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R1 R1 K3 ["RoleSubjectKey"]
       17 RETURN                           R1 1
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K4 ["GroupId"]
       21 GETTABLE                         R1 R0 R2
       22 JUMPIFNOT                        R1 ; [+4]
       23 GETUPVAL                         R1 1
       24 GETTABLEKS                       R1 R1 K5 ["GroupSubjectKey"]
       26 RETURN                           R1 1
       27 GETIMPORT                        R1 K7 [error]
       29 LOADK                            R2 K8 ["Could not determine subject type"]
       30 CALL                             R1 1 0
       31 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["PlayAction"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+5]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["PlayKey"]
        8 RETURN                           R1 1
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K2 ["EditAction"]
       12 JUMPIFEQ                         R0 R1 ; [+6]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K3 ["AdminAction"]
       17 JUMPIFNOTEQ                      R0 R1 ; [+5]
       19 GETUPVAL                         R1 1
       20 GETTABLEKS                       R1 R1 K4 ["EditKey"]
       22 RETURN                           R1 1
       23 JUMPIFEQKNIL                     R0 ; [+3]
       25 JUMPIFNOTEQKS                    R0 K5 [""] ; [+5]
       27 GETUPVAL                         R1 1
       28 GETTABLEKS                       R1 R1 K6 ["NoAccessKey"]
       30 RETURN                           R1 1
       31 GETIMPORT                        R1 K8 [error]
       33 LOADK                            R3 K9 ["Unsupported Action: "]
       34 FASTCALL1                        TOSTRING R0 ; [+3]
       35 MOVE                             R5 R0
       36 GETIMPORT                        R4 K11 [tostring]
       38 CALL                             R4 1 1
       39 CONCAT                           R2 R3 R4
       40 CALL                             R1 1 0
       41 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K1 [pairs]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 3
        4 FORGPREP_NEXT                    R1
        5 GETIMPORT                        R6 K1 [pairs]
        7 MOVE                             R7 R5
        8 CALL                             R6 1 3
        9 FORGPREP_NEXT                    R6
       10 GETUPVAL                         R11 0
       11 GETTABLEKS                       R11 R11 K2 ["GroupId"]
       13 JUMPIFEQ                         R9 R11 ; [+16]
       15 GETUPVAL                         R11 0
       16 GETTABLEKS                       R11 R11 K3 ["UserId"]
       18 JUMPIFEQ                         R9 R11 ; [+11]
       20 GETUPVAL                         R11 0
       21 GETTABLEKS                       R11 R11 K4 ["RoleId"]
       23 JUMPIFEQ                         R9 R11 ; [+6]
       25 GETUPVAL                         R11 0
       26 GETTABLEKS                       R11 R11 K5 ["RoleRank"]
       28 JUMPIFNOTEQ                      R9 R11 ; [+7]
       30 FASTCALL1                        TONUMBER R10 ; [+3]
       31 MOVE                             R12 R10
       32 GETIMPORT                        R11 K7 [tonumber]
       34 CALL                             R11 1 1
       35 SETTABLE                         R11 R5 R9
       36 FORGLOOP                         R6 2 ; [-27]
       38 FORGLOOP                         R1 2 ; [-34]
       40 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R2 1 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["ActionKey"]
        5 GETUPVAL                         R6 1
        6 GETTABLEKS                       R6 R6 K1 ["Action"]
        8 GETTABLE                         R5 R0 R6
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R6 R6 K2 ["PlayAction"]
       12 JUMPIFNOTEQ                      R5 R6 ; [+5]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K3 ["PlayKey"]
       17 JUMP                             ; [+33]
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R6 R6 K4 ["EditAction"]
       21 JUMPIFEQ                         R5 R6 ; [+6]
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R6 R6 K5 ["AdminAction"]
       26 JUMPIFNOTEQ                      R5 R6 ; [+5]
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R4 R4 K6 ["EditKey"]
       31 JUMP                             ; [+19]
       32 JUMPIFEQKNIL                     R5 ; [+3]
       34 JUMPIFNOTEQKS                    R5 K7 [""] ; [+5]
       36 GETUPVAL                         R4 0
       37 GETTABLEKS                       R4 R4 K8 ["NoAccessKey"]
       39 JUMP                             ; [+11]
       40 GETIMPORT                        R6 K10 [error]
       42 LOADK                            R8 K11 ["Unsupported Action: "]
       43 FASTCALL1                        TOSTRING R5 ; [+3]
       44 MOVE                             R10 R5
       45 GETIMPORT                        R9 K13 [tostring]
       47 CALL                             R9 1 1
       48 CONCAT                           R7 R8 R9
       49 CALL                             R6 1 0
       50 LOADNIL                          R4
       51 SETTABLE                         R4 R2 R3
       52 LOADNIL                          R3
       53 LOADNIL                          R4
       54 GETUPVAL                         R5 0
       55 GETTABLEKS                       R5 R5 K14 ["UserSubjectKey"]
       57 JUMPIFNOTEQ                      R1 R5 ; [+10]
       59 GETUPVAL                         R5 1
       60 GETTABLEKS                       R5 R5 K15 ["UserName"]
       62 GETTABLE                         R3 R0 R5
       63 GETUPVAL                         R5 1
       64 GETTABLEKS                       R5 R5 K16 ["UserId"]
       66 GETTABLE                         R4 R0 R5
       67 JUMP                             ; [+27]
       68 GETUPVAL                         R5 0
       69 GETTABLEKS                       R5 R5 K17 ["GroupSubjectKey"]
       71 JUMPIFNOTEQ                      R1 R5 ; [+10]
       73 GETUPVAL                         R5 1
       74 GETTABLEKS                       R5 R5 K18 ["GroupName"]
       76 GETTABLE                         R3 R0 R5
       77 GETUPVAL                         R5 1
       78 GETTABLEKS                       R5 R5 K19 ["GroupId"]
       80 GETTABLE                         R4 R0 R5
       81 JUMP                             ; [+13]
       82 GETUPVAL                         R5 0
       83 GETTABLEKS                       R5 R5 K20 ["RoleSubjectKey"]
       85 JUMPIFNOTEQ                      R1 R5 ; [+9]
       87 GETUPVAL                         R5 1
       88 GETTABLEKS                       R5 R5 K21 ["RoleName"]
       90 GETTABLE                         R3 R0 R5
       91 GETUPVAL                         R5 1
       92 GETTABLEKS                       R5 R5 K22 ["RoleId"]
       94 GETTABLE                         R4 R0 R5
       95 GETUPVAL                         R5 0
       96 GETTABLEKS                       R5 R5 K23 ["SubjectNameKey"]
       98 SETTABLE                         R3 R2 R5
       99 GETUPVAL                         R5 0
      100 GETTABLEKS                       R5 R5 K24 ["SubjectIdKey"]
      102 SETTABLE                         R4 R2 R5
      103 GETUPVAL                         R6 1
      104 GETTABLEKS                       R6 R6 K25 ["AllowedPermissions"]
      106 GETTABLE                         R5 R0 R6
      107 GETUPVAL                         R6 0
      108 GETTABLEKS                       R6 R6 K14 ["UserSubjectKey"]
      110 JUMPIFNOTEQ                      R1 R6 ; [+15]
      112 GETUPVAL                         R6 0
      113 GETTABLEKS                       R6 R6 K26 ["IsFriendKey"]
      115 NOT                              R8 R5
      116 JUMPIF                           R8 ; [+7]
      117 LOADB                            R8 1
      118 JUMPIFEQKS                       R5 K7 [""] ; [+5]
      120 JUMPIFEQKS                       R5 K27 ["Play"] ; [+2]
      122 LOADB                            R8 0 +1
      123 LOADB                            R8 1
      124 NOT                              R7 R8
      125 SETTABLE                         R7 R2 R6
      126 GETUPVAL                         R6 0
      127 GETTABLEKS                       R6 R6 K20 ["RoleSubjectKey"]
      129 JUMPIFNOTEQ                      R1 R6 ; [+17]
      131 GETUPVAL                         R6 0
      132 GETTABLEKS                       R6 R6 K28 ["SubjectRankKey"]
      134 GETUPVAL                         R8 1
      135 GETTABLEKS                       R8 R8 K29 ["RoleRank"]
      137 GETTABLE                         R7 R0 R8
      138 SETTABLE                         R7 R2 R6
      139 GETUPVAL                         R6 0
      140 GETTABLEKS                       R6 R6 K30 ["GroupIdKey"]
      142 GETUPVAL                         R8 1
      143 GETTABLEKS                       R8 R8 K19 ["GroupId"]
      145 GETTABLE                         R7 R0 R8
      146 SETTABLE                         R7 R2 R6
      147 RETURN                           R2 1

PROTO_4:
        0 NEWTABLE                         R1 2 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["UserSubjectKey"]
        5 NEWTABLE                         R3 0 0
        7 SETTABLE                         R3 R1 R2
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K1 ["RoleSubjectKey"]
       11 NEWTABLE                         R3 0 0
       13 SETTABLE                         R3 R1 R2
       14 GETIMPORT                        R2 K3 [pairs]
       16 MOVE                             R3 R0
       17 CALL                             R2 1 3
       18 FORGPREP_NEXT                    R2
       19 GETUPVAL                         R9 1
       20 GETTABLEKS                       R9 R9 K4 ["UserId"]
       22 GETTABLE                         R8 R6 R9
       23 JUMPIFNOT                        R8 ; [+4]
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R7 R7 K0 ["UserSubjectKey"]
       27 JUMP                             ; [+23]
       28 GETUPVAL                         R9 1
       29 GETTABLEKS                       R9 R9 K5 ["RoleId"]
       31 GETTABLE                         R8 R6 R9
       32 JUMPIFNOT                        R8 ; [+4]
       33 GETUPVAL                         R7 0
       34 GETTABLEKS                       R7 R7 K1 ["RoleSubjectKey"]
       36 JUMP                             ; [+14]
       37 GETUPVAL                         R9 1
       38 GETTABLEKS                       R9 R9 K6 ["GroupId"]
       40 GETTABLE                         R8 R6 R9
       41 JUMPIFNOT                        R8 ; [+4]
       42 GETUPVAL                         R7 0
       43 GETTABLEKS                       R7 R7 K7 ["GroupSubjectKey"]
       45 JUMP                             ; [+5]
       46 GETIMPORT                        R8 K9 [error]
       48 LOADK                            R9 K10 ["Could not determine subject type"]
       49 CALL                             R8 1 0
       50 LOADNIL                          R7
       51 GETUPVAL                         R8 2
       52 GETTABLEKS                       R8 R8 K11 ["_deserializeOne"]
       54 MOVE                             R9 R6
       55 MOVE                             R10 R7
       56 CALL                             R8 2 1
       57 GETUPVAL                         R10 0
       58 GETTABLEKS                       R10 R10 K12 ["SubjectIdKey"]
       60 GETTABLE                         R9 R8 R10
       61 GETUPVAL                         R10 0
       62 GETTABLEKS                       R10 R10 K7 ["GroupSubjectKey"]
       64 JUMPIFEQ                         R7 R10 ; [+18]
       66 GETUPVAL                         R11 0
       67 GETTABLEKS                       R11 R11 K13 ["SubjectRankKey"]
       69 GETTABLE                         R10 R8 R11
       70 JUMPIFNOTEQKN                    R10 K14 [0] ; [+10]
       72 GETUPVAL                         R11 0
       73 GETTABLEKS                       R11 R11 K15 ["ActionKey"]
       75 GETTABLE                         R10 R8 R11
       76 GETUPVAL                         R11 0
       77 GETTABLEKS                       R11 R11 K16 ["NoAccessKey"]
       79 JUMPIFEQ                         R10 R11 ; [+3]
       81 GETTABLE                         R10 R1 R7
       82 SETTABLE                         R8 R10 R9
       83 FORGLOOP                         R2 2 ; [-65]
       85 RETURN                           R1 1

PROTO_5:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETIMPORT                        R1 K1 [pairs]
        4 MOVE                             R2 R0
        5 CALL                             R1 1 3
        6 FORGPREP_NEXT                    R1
        7 GETUPVAL                         R8 0
        8 GETTABLEKS                       R8 R8 K2 ["RoleId"]
       10 GETTABLE                         R7 R5 R8
       11 JUMPIFNOTEQKN                    R7 K3 [255] ; [+5]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K4 ["EditAction"]
       16 JUMPIF                           R6 ; [+1]
       17 LOADK                            R6 K5 [""]
       18 GETUPVAL                         R8 1
       19 GETUPVAL                         R9 2
       20 GETTABLEKS                       R9 R9 K6 ["Dictionary"]
       22 GETTABLEKS                       R9 R9 K7 ["join"]
       24 MOVE                             R10 R5
       25 NEWTABLE                         R11 4 0
       27 GETUPVAL                         R12 0
       28 GETTABLEKS                       R12 R12 K8 ["GroupId"]
       30 GETUPVAL                         R13 3
       31 SETTABLE                         R13 R11 R12
       32 GETUPVAL                         R12 0
       33 GETTABLEKS                       R12 R12 K9 ["GroupName"]
       35 GETUPVAL                         R13 4
       36 SETTABLE                         R13 R11 R12
       37 GETUPVAL                         R12 0
       38 GETTABLEKS                       R12 R12 K10 ["Action"]
       40 SETTABLE                         R6 R11 R12
       41 CALL                             R9 2 -1
       42 FASTCALL                         TABLE_INSERT ; [+2]
       43 GETIMPORT                        R7 K13 [table.insert]
       45 CALL                             R7 -1 0
       46 FORGLOOP                         R1 2 ; [-40]
       48 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["UserSubject"]
        3 JUMPIFNOTEQ                      R3 R5 ; [+5]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K1 ["UserId"]
        8 JUMPIF                           R4 ; [+3]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K2 ["GroupId"]
       12 LOADB                            R5 0
       13 GETIMPORT                        R6 K4 [pairs]
       15 MOVE                             R7 R0
       16 CALL                             R6 1 3
       17 FORGPREP_NEXT                    R6
       18 GETTABLE                         R12 R10 R4
       19 FASTCALL1                        TONUMBER R12 ; [+2]
       20 GETIMPORT                        R11 K6 [tonumber]
       22 CALL                             R11 1 1
       23 FASTCALL1                        TONUMBER R2 ; [+3]
       24 MOVE                             R13 R2
       25 GETIMPORT                        R12 K6 [tonumber]
       27 CALL                             R12 1 1
       28 JUMPIFNOTEQ                      R11 R12 ; [+3]
       30 LOADB                            R5 1
       31 JUMP                             ; [+2]
       32 FORGLOOP                         R6 2 ; [-15]
       34 JUMPIFNOT                        R5 ; [+5]
       35 GETUPVAL                         R6 2
       36 GETTABLEKS                       R6 R6 K7 ["resolve"]
       38 CALL                             R6 0 -1
       39 RETURN                           R6 -1
       40 GETUPVAL                         R6 0
       41 GETTABLEKS                       R6 R6 K0 ["UserSubject"]
       43 JUMPIFNOTEQ                      R3 R6 ; [+29]
       45 NEWTABLE                         R8 4 0
       47 GETUPVAL                         R9 1
       48 GETTABLEKS                       R9 R9 K1 ["UserId"]
       50 SETTABLE                         R2 R8 R9
       51 GETUPVAL                         R9 1
       52 GETTABLEKS                       R9 R9 K8 ["UserName"]
       54 SETTABLE                         R1 R8 R9
       55 GETUPVAL                         R9 1
       56 GETTABLEKS                       R9 R9 K9 ["Action"]
       58 GETUPVAL                         R10 1
       59 GETTABLEKS                       R10 R10 K10 ["EditAction"]
       61 SETTABLE                         R10 R8 R9
       62 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       64 MOVE                             R7 R0
       65 GETIMPORT                        R6 K13 [table.insert]
       67 CALL                             R6 2 0
       68 GETUPVAL                         R6 2
       69 GETTABLEKS                       R6 R6 K7 ["resolve"]
       71 CALL                             R6 0 -1
       72 RETURN                           R6 -1
       73 NEWTABLE                         R8 4 0
       75 GETUPVAL                         R9 1
       76 GETTABLEKS                       R9 R9 K2 ["GroupId"]
       78 SETTABLE                         R2 R8 R9
       79 GETUPVAL                         R9 1
       80 GETTABLEKS                       R9 R9 K14 ["GroupName"]
       82 SETTABLE                         R1 R8 R9
       83 GETUPVAL                         R9 1
       84 GETTABLEKS                       R9 R9 K9 ["Action"]
       86 LOADK                            R10 K15 [""]
       87 SETTABLE                         R10 R8 R9
       88 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       90 MOVE                             R7 R0
       91 GETIMPORT                        R6 K13 [table.insert]
       93 CALL                             R6 2 0
       94 GETUPVAL                         R6 3
       95 GETUPVAL                         R7 4
       96 MOVE                             R8 R2
       97 CALL                             R7 1 1
       98 NEWCLOSURE                       R9 P0
       99 CAPTURE                          UPVAL U1
      100 CAPTURE                          VAL R0
      101 CAPTURE                          UPVAL U5
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R1
      104 NAMECALL                         R7 R7 K16 ["andThen"]
      106 CALL                             R7 2 -1
      107 CALL                             R6 -1 -1
      108 RETURN                           R6 -1

PROTO_7:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["_fixEndpointKeyTypes"]
        3 MOVE                             R5 R0
        4 CALL                             R4 1 0
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K1 ["_addOwnerIfMissing"]
        8 MOVE                             R5 R0
        9 MOVE                             R6 R1
       10 MOVE                             R7 R2
       11 MOVE                             R8 R3
       12 CALL                             R4 4 1
       13 NAMECALL                         R4 R4 K2 ["await"]
       15 CALL                             R4 1 0
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K3 ["_deserializeAll"]
       19 MOVE                             R5 R0
       20 CALL                             R4 1 -1
       21 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["TypedPromise"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R1 R1 K9 ["PromiseFactory"]
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Src"]
       22 GETTABLEKS                       R3 R3 K7 ["Util"]
       24 GETTABLEKS                       R3 R3 K8 ["TypedPromise"]
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R2 R2 K10 ["castToPromise"]
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R4 R0 K11 ["Packages"]
       33 GETTABLEKS                       R4 R4 K12 ["Cryo"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K6 ["Src"]
       40 GETTABLEKS                       R5 R5 K13 ["Networking"]
       42 GETTABLEKS                       R5 R5 K14 ["Requests"]
       44 GETTABLEKS                       R5 R5 K15 ["GetGroupRoles"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K5 [require]
       49 GETTABLEKS                       R6 R0 K6 ["Src"]
       51 GETTABLEKS                       R6 R6 K7 ["Util"]
       53 GETTABLEKS                       R6 R6 K16 ["PermissionsConstants"]
       55 CALL                             R5 1 1
       56 GETIMPORT                        R6 K5 [require]
       58 GETTABLEKS                       R7 R0 K6 ["Src"]
       60 GETTABLEKS                       R7 R7 K13 ["Networking"]
       62 GETTABLEKS                       R7 R7 K17 ["WebKeyConstants"]
       64 CALL                             R6 1 1
       65 DUPCLOSURE                       R7 K18 [PROTO_0]
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R5
       68 DUPCLOSURE                       R8 K19 [PROTO_1]
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R5
       71 NEWTABLE                         R9 8 0
       73 DUPCLOSURE                       R10 K20 [PROTO_2]
       74 CAPTURE                          VAL R6
       75 SETTABLEKS                       R10 R9 K21 ["_fixEndpointKeyTypes"]
       77 DUPCLOSURE                       R10 K22 [PROTO_3]
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R6
       80 SETTABLEKS                       R10 R9 K23 ["_deserializeOne"]
       82 DUPCLOSURE                       R10 K24 [PROTO_4]
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R9
       86 SETTABLEKS                       R10 R9 K25 ["_deserializeAll"]
       88 DUPCLOSURE                       R10 K26 [PROTO_6]
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R3
       95 SETTABLEKS                       R10 R9 K27 ["_addOwnerIfMissing"]
       97 DUPCLOSURE                       R10 K28 [PROTO_7]
       98 CAPTURE                          VAL R9
       99 SETTABLEKS                       R10 R9 K29 ["DeserializePermissions"]
      101 DUPTABLE                         R10 K33 [{"Deserialize", "getSubjectType", "getInternalAction"}]
      102 SETTABLEKS                       R9 R10 K30 ["Deserialize"]
      104 SETTABLEKS                       R7 R10 K31 ["getSubjectType"]
      106 SETTABLEKS                       R8 R10 K32 ["getInternalAction"]
      108 RETURN                           R10 1
