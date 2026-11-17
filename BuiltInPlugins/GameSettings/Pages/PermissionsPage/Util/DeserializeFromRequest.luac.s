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
       12 JUMPIFNOTEQ                      R0 R1 ; [+5]
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R1 R1 K3 ["EditKey"]
       17 RETURN                           R1 1
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K4 ["AdminAction"]
       21 JUMPIFNOTEQ                      R0 R1 ; [+5]
       23 GETUPVAL                         R1 1
       24 GETTABLEKS                       R1 R1 K3 ["EditKey"]
       26 RETURN                           R1 1
       27 JUMPIFNOTEQKNIL                  R0 ; [+5]
       29 GETUPVAL                         R1 1
       30 GETTABLEKS                       R1 R1 K5 ["NoAccessKey"]
       32 RETURN                           R1 1
       33 GETIMPORT                        R1 K7 [error]
       35 LOADK                            R3 K8 ["Unsupported Action: "]
       36 FASTCALL1                        TOSTRING R0 ; [+3]
       37 MOVE                             R5 R0
       38 GETIMPORT                        R4 K10 [tostring]
       40 CALL                             R4 1 1
       41 CONCAT                           R2 R3 R4
       42 CALL                             R1 1 0
       43 RETURN                           R0 0

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
        0 NEWTABLE                         R2 0 0
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
       17 JUMP                             ; [+35]
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R6 R6 K4 ["EditAction"]
       21 JUMPIFNOTEQ                      R5 R6 ; [+5]
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K5 ["EditKey"]
       26 JUMP                             ; [+26]
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R6 R6 K6 ["AdminAction"]
       30 JUMPIFNOTEQ                      R5 R6 ; [+5]
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R4 R4 K5 ["EditKey"]
       35 JUMP                             ; [+17]
       36 JUMPIFNOTEQKNIL                  R5 ; [+5]
       38 GETUPVAL                         R4 0
       39 GETTABLEKS                       R4 R4 K7 ["NoAccessKey"]
       41 JUMP                             ; [+11]
       42 GETIMPORT                        R6 K9 [error]
       44 LOADK                            R8 K10 ["Unsupported Action: "]
       45 FASTCALL1                        TOSTRING R5 ; [+3]
       46 MOVE                             R10 R5
       47 GETIMPORT                        R9 K12 [tostring]
       49 CALL                             R9 1 1
       50 CONCAT                           R7 R8 R9
       51 CALL                             R6 1 0
       52 LOADNIL                          R4
       53 SETTABLE                         R4 R2 R3
       54 LOADNIL                          R3
       55 LOADNIL                          R4
       56 GETUPVAL                         R5 0
       57 GETTABLEKS                       R5 R5 K13 ["UserSubjectKey"]
       59 JUMPIFNOTEQ                      R1 R5 ; [+10]
       61 GETUPVAL                         R5 1
       62 GETTABLEKS                       R5 R5 K14 ["UserName"]
       64 GETTABLE                         R3 R0 R5
       65 GETUPVAL                         R5 1
       66 GETTABLEKS                       R5 R5 K15 ["UserId"]
       68 GETTABLE                         R4 R0 R5
       69 JUMP                             ; [+27]
       70 GETUPVAL                         R5 0
       71 GETTABLEKS                       R5 R5 K16 ["GroupSubjectKey"]
       73 JUMPIFNOTEQ                      R1 R5 ; [+10]
       75 GETUPVAL                         R5 1
       76 GETTABLEKS                       R5 R5 K17 ["GroupName"]
       78 GETTABLE                         R3 R0 R5
       79 GETUPVAL                         R5 1
       80 GETTABLEKS                       R5 R5 K18 ["GroupId"]
       82 GETTABLE                         R4 R0 R5
       83 JUMP                             ; [+13]
       84 GETUPVAL                         R5 0
       85 GETTABLEKS                       R5 R5 K19 ["RoleSubjectKey"]
       87 JUMPIFNOTEQ                      R1 R5 ; [+9]
       89 GETUPVAL                         R5 1
       90 GETTABLEKS                       R5 R5 K20 ["RoleName"]
       92 GETTABLE                         R3 R0 R5
       93 GETUPVAL                         R5 1
       94 GETTABLEKS                       R5 R5 K21 ["RoleId"]
       96 GETTABLE                         R4 R0 R5
       97 GETUPVAL                         R5 0
       98 GETTABLEKS                       R5 R5 K22 ["SubjectNameKey"]
      100 SETTABLE                         R3 R2 R5
      101 GETUPVAL                         R5 0
      102 GETTABLEKS                       R5 R5 K23 ["SubjectIdKey"]
      104 SETTABLE                         R4 R2 R5
      105 GETUPVAL                         R6 1
      106 GETTABLEKS                       R6 R6 K24 ["AllowedPermissions"]
      108 GETTABLE                         R5 R0 R6
      109 GETUPVAL                         R6 0
      110 GETTABLEKS                       R6 R6 K13 ["UserSubjectKey"]
      112 JUMPIFNOTEQ                      R1 R6 ; [+17]
      114 JUMPIFNOT                        R5 ; [+4]
      115 JUMPIFEQKS                       R5 K25 [""] ; [+3]
      117 JUMPIFNOTEQKS                    R5 K26 ["Play"] ; [+7]
      119 GETUPVAL                         R6 0
      120 GETTABLEKS                       R6 R6 K27 ["IsFriendKey"]
      122 LOADB                            R7 0
      123 SETTABLE                         R7 R2 R6
      124 JUMP                             ; [+5]
      125 GETUPVAL                         R6 0
      126 GETTABLEKS                       R6 R6 K27 ["IsFriendKey"]
      128 LOADB                            R7 1
      129 SETTABLE                         R7 R2 R6
      130 GETUPVAL                         R6 0
      131 GETTABLEKS                       R6 R6 K19 ["RoleSubjectKey"]
      133 JUMPIFNOTEQ                      R1 R6 ; [+17]
      135 GETUPVAL                         R6 0
      136 GETTABLEKS                       R6 R6 K28 ["SubjectRankKey"]
      138 GETUPVAL                         R8 1
      139 GETTABLEKS                       R8 R8 K29 ["RoleRank"]
      141 GETTABLE                         R7 R0 R8
      142 SETTABLE                         R7 R2 R6
      143 GETUPVAL                         R6 0
      144 GETTABLEKS                       R6 R6 K30 ["GroupIdKey"]
      146 GETUPVAL                         R8 1
      147 GETTABLEKS                       R8 R8 K18 ["GroupId"]
      149 GETTABLE                         R7 R0 R8
      150 SETTABLE                         R7 R2 R6
      151 RETURN                           R2 1

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 2 0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K0 ["UserSubjectKey"]
        7 NEWTABLE                         R4 0 0
        9 SETTABLE                         R4 R2 R3
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K1 ["RoleSubjectKey"]
       13 NEWTABLE                         R4 0 0
       15 SETTABLE                         R4 R2 R3
       16 GETIMPORT                        R3 K3 [pairs]
       18 MOVE                             R4 R0
       19 CALL                             R3 1 3
       20 FORGPREP_NEXT                    R3
       21 GETUPVAL                         R10 1
       22 GETTABLEKS                       R10 R10 K4 ["UserId"]
       24 GETTABLE                         R9 R7 R10
       25 JUMPIFNOT                        R9 ; [+4]
       26 GETUPVAL                         R8 0
       27 GETTABLEKS                       R8 R8 K0 ["UserSubjectKey"]
       29 JUMP                             ; [+23]
       30 GETUPVAL                         R10 1
       31 GETTABLEKS                       R10 R10 K5 ["RoleId"]
       33 GETTABLE                         R9 R7 R10
       34 JUMPIFNOT                        R9 ; [+4]
       35 GETUPVAL                         R8 0
       36 GETTABLEKS                       R8 R8 K1 ["RoleSubjectKey"]
       38 JUMP                             ; [+14]
       39 GETUPVAL                         R10 1
       40 GETTABLEKS                       R10 R10 K6 ["GroupId"]
       42 GETTABLE                         R9 R7 R10
       43 JUMPIFNOT                        R9 ; [+4]
       44 GETUPVAL                         R8 0
       45 GETTABLEKS                       R8 R8 K7 ["GroupSubjectKey"]
       47 JUMP                             ; [+5]
       48 GETIMPORT                        R9 K9 [error]
       50 LOADK                            R10 K10 ["Could not determine subject type"]
       51 CALL                             R9 1 0
       52 LOADNIL                          R8
       53 GETUPVAL                         R9 0
       54 GETTABLEKS                       R9 R9 K7 ["GroupSubjectKey"]
       56 JUMPIFNOTEQ                      R8 R9 ; [+23]
       58 GETUPVAL                         R9 2
       59 GETTABLEKS                       R9 R9 K11 ["_deserializeOne"]
       61 MOVE                             R10 R7
       62 MOVE                             R11 R8
       63 CALL                             R9 2 1
       64 GETUPVAL                         R11 0
       65 GETTABLEKS                       R11 R11 K12 ["SubjectIdKey"]
       67 GETTABLE                         R10 R9 R11
       68 GETUPVAL                         R12 0
       69 GETTABLEKS                       R12 R12 K13 ["SubjectNameKey"]
       71 GETTABLE                         R11 R9 R12
       72 GETUPVAL                         R13 0
       73 GETTABLEKS                       R13 R13 K14 ["ActionKey"]
       75 GETTABLE                         R12 R9 R13
       76 DUPTABLE                         R13 K16 [{"Name"}]
       77 SETTABLEKS                       R11 R13 K15 ["Name"]
       79 SETTABLE                         R13 R1 R10
       80 FORGLOOP                         R3 2 ; [-60]
       82 GETIMPORT                        R3 K3 [pairs]
       84 MOVE                             R4 R0
       85 CALL                             R3 1 3
       86 FORGPREP_NEXT                    R3
       87 GETUPVAL                         R10 1
       88 GETTABLEKS                       R10 R10 K4 ["UserId"]
       90 GETTABLE                         R9 R7 R10
       91 JUMPIFNOT                        R9 ; [+4]
       92 GETUPVAL                         R8 0
       93 GETTABLEKS                       R8 R8 K0 ["UserSubjectKey"]
       95 JUMP                             ; [+23]
       96 GETUPVAL                         R10 1
       97 GETTABLEKS                       R10 R10 K5 ["RoleId"]
       99 GETTABLE                         R9 R7 R10
      100 JUMPIFNOT                        R9 ; [+4]
      101 GETUPVAL                         R8 0
      102 GETTABLEKS                       R8 R8 K1 ["RoleSubjectKey"]
      104 JUMP                             ; [+14]
      105 GETUPVAL                         R10 1
      106 GETTABLEKS                       R10 R10 K6 ["GroupId"]
      108 GETTABLE                         R9 R7 R10
      109 JUMPIFNOT                        R9 ; [+4]
      110 GETUPVAL                         R8 0
      111 GETTABLEKS                       R8 R8 K7 ["GroupSubjectKey"]
      113 JUMP                             ; [+5]
      114 GETIMPORT                        R9 K9 [error]
      116 LOADK                            R10 K10 ["Could not determine subject type"]
      117 CALL                             R9 1 0
      118 LOADNIL                          R8
      119 GETUPVAL                         R9 2
      120 GETTABLEKS                       R9 R9 K11 ["_deserializeOne"]
      122 MOVE                             R10 R7
      123 MOVE                             R11 R8
      124 CALL                             R9 2 1
      125 GETUPVAL                         R11 0
      126 GETTABLEKS                       R11 R11 K12 ["SubjectIdKey"]
      128 GETTABLE                         R10 R9 R11
      129 GETUPVAL                         R11 0
      130 GETTABLEKS                       R11 R11 K7 ["GroupSubjectKey"]
      132 JUMPIFEQ                         R8 R11 ; [+18]
      134 GETUPVAL                         R12 0
      135 GETTABLEKS                       R12 R12 K17 ["SubjectRankKey"]
      137 GETTABLE                         R11 R9 R12
      138 JUMPIFNOTEQKN                    R11 K18 [0] ; [+10]
      140 GETUPVAL                         R12 0
      141 GETTABLEKS                       R12 R12 K14 ["ActionKey"]
      143 GETTABLE                         R11 R9 R12
      144 GETUPVAL                         R12 0
      145 GETTABLEKS                       R12 R12 K19 ["NoAccessKey"]
      147 JUMPIFEQ                         R11 R12 ; [+3]
      149 GETTABLE                         R11 R2 R8
      150 SETTABLE                         R9 R11 R10
      151 FORGLOOP                         R3 2 ; [-65]
      153 MOVE                             R3 R2
      154 MOVE                             R4 R1
      155 RETURN                           R3 2

PROTO_5:
        0 MOVE                             R1 R0
        1 CALL                             R1 0 0
        2 RETURN                           R0 0

PROTO_6:
        0 MOVE                             R1 R0
        1 CALL                             R1 0 0
        2 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R1 K1 [pairs]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 3
        4 FORGPREP_NEXT                    R1
        5 GETUPVAL                         R7 0
        6 GETTABLEKS                       R7 R7 K2 ["RoleId"]
        8 GETTABLE                         R6 R5 R7
        9 JUMPIFNOTEQKN                    R6 K3 [255] ; [+33]
       11 GETUPVAL                         R7 1
       12 GETUPVAL                         R8 2
       13 GETTABLEKS                       R8 R8 K4 ["Dictionary"]
       15 GETTABLEKS                       R8 R8 K5 ["join"]
       17 MOVE                             R9 R5
       18 NEWTABLE                         R10 4 0
       20 GETUPVAL                         R11 0
       21 GETTABLEKS                       R11 R11 K6 ["GroupId"]
       23 GETUPVAL                         R12 3
       24 SETTABLE                         R12 R10 R11
       25 GETUPVAL                         R11 0
       26 GETTABLEKS                       R11 R11 K7 ["GroupName"]
       28 GETUPVAL                         R12 4
       29 SETTABLE                         R12 R10 R11
       30 GETUPVAL                         R11 0
       31 GETTABLEKS                       R11 R11 K8 ["Action"]
       33 GETUPVAL                         R12 0
       34 GETTABLEKS                       R12 R12 K9 ["EditAction"]
       36 SETTABLE                         R12 R10 R11
       37 CALL                             R8 2 -1
       38 FASTCALL                         TABLE_INSERT ; [+2]
       39 GETIMPORT                        R6 K12 [table.insert]
       41 CALL                             R6 -1 0
       42 JUMP                             ; [+29]
       43 GETUPVAL                         R7 1
       44 GETUPVAL                         R8 2
       45 GETTABLEKS                       R8 R8 K4 ["Dictionary"]
       47 GETTABLEKS                       R8 R8 K5 ["join"]
       49 MOVE                             R9 R5
       50 NEWTABLE                         R10 4 0
       52 GETUPVAL                         R11 0
       53 GETTABLEKS                       R11 R11 K6 ["GroupId"]
       55 GETUPVAL                         R12 3
       56 SETTABLE                         R12 R10 R11
       57 GETUPVAL                         R11 0
       58 GETTABLEKS                       R11 R11 K7 ["GroupName"]
       60 GETUPVAL                         R12 4
       61 SETTABLE                         R12 R10 R11
       62 GETUPVAL                         R11 0
       63 GETTABLEKS                       R11 R11 K8 ["Action"]
       65 LOADNIL                          R12
       66 SETTABLE                         R12 R10 R11
       67 CALL                             R8 2 -1
       68 FASTCALL                         TABLE_INSERT ; [+2]
       69 GETIMPORT                        R6 K12 [table.insert]
       71 CALL                             R6 -1 0
       72 FORGLOOP                         R1 2 ; [-68]
       74 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R5 K3 [Enum.CreatorType.User]
        2 JUMPIFNOTEQ                      R3 R5 ; [+5]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K4 ["UserId"]
        7 JUMPIF                           R4 ; [+3]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K5 ["GroupId"]
       11 LOADB                            R5 0
       12 GETIMPORT                        R6 K7 [pairs]
       14 MOVE                             R7 R0
       15 CALL                             R6 1 3
       16 FORGPREP_NEXT                    R6
       17 GETTABLE                         R11 R10 R4
       18 JUMPIFNOTEQ                      R11 R2 ; [+3]
       20 LOADB                            R5 1
       21 JUMP                             ; [+2]
       22 FORGLOOP                         R6 2 ; [-6]
       24 JUMPIFNOT                        R5 ; [+6]
       25 GETUPVAL                         R6 1
       26 GETTABLEKS                       R6 R6 K8 ["new"]
       28 DUPCLOSURE                       R7 K9 [PROTO_5]
       29 CALL                             R6 1 -1
       30 RETURN                           R6 -1
       31 GETIMPORT                        R6 K3 [Enum.CreatorType.User]
       33 JUMPIFNOTEQ                      R3 R6 ; [+30]
       35 NEWTABLE                         R8 4 0
       37 GETUPVAL                         R9 0
       38 GETTABLEKS                       R9 R9 K4 ["UserId"]
       40 SETTABLE                         R2 R8 R9
       41 GETUPVAL                         R9 0
       42 GETTABLEKS                       R9 R9 K10 ["UserName"]
       44 SETTABLE                         R1 R8 R9
       45 GETUPVAL                         R9 0
       46 GETTABLEKS                       R9 R9 K11 ["Action"]
       48 GETUPVAL                         R10 0
       49 GETTABLEKS                       R10 R10 K12 ["EditAction"]
       51 SETTABLE                         R10 R8 R9
       52 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       54 MOVE                             R7 R0
       55 GETIMPORT                        R6 K15 [table.insert]
       57 CALL                             R6 2 0
       58 GETUPVAL                         R6 1
       59 GETTABLEKS                       R6 R6 K8 ["new"]
       61 DUPCLOSURE                       R7 K16 [PROTO_6]
       62 CALL                             R6 1 -1
       63 RETURN                           R6 -1
       64 NEWTABLE                         R8 4 0
       66 GETUPVAL                         R9 0
       67 GETTABLEKS                       R9 R9 K5 ["GroupId"]
       69 SETTABLE                         R2 R8 R9
       70 GETUPVAL                         R9 0
       71 GETTABLEKS                       R9 R9 K17 ["GroupName"]
       73 SETTABLE                         R1 R8 R9
       74 GETUPVAL                         R9 0
       75 GETTABLEKS                       R9 R9 K11 ["Action"]
       77 LOADNIL                          R10
       78 SETTABLE                         R10 R8 R9
       79 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       81 MOVE                             R7 R0
       82 GETIMPORT                        R6 K15 [table.insert]
       84 CALL                             R6 2 0
       85 GETUPVAL                         R6 2
       86 GETTABLEKS                       R6 R6 K18 ["Get"]
       88 MOVE                             R7 R2
       89 CALL                             R6 1 1
       90 NEWCLOSURE                       R8 P2
       91 CAPTURE                          UPVAL U0
       92 CAPTURE                          VAL R0
       93 CAPTURE                          UPVAL U3
       94 CAPTURE                          VAL R2
       95 CAPTURE                          VAL R1
       96 NAMECALL                         R6 R6 K19 ["andThen"]
       98 CALL                             R6 2 -1
       99 RETURN                           R6 -1

PROTO_9:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["_DEPRECATEDFixEndpointKeyTypes"]
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
       20 CALL                             R4 1 2
       21 RETURN                           R4 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K1 [script]
        9 GETTABLEKS                       R1 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R1 K2 ["Parent"]
       13 GETTABLEKS                       R1 R1 K2 ["Parent"]
       15 GETTABLEKS                       R1 R1 K2 ["Parent"]
       17 GETIMPORT                        R2 K4 [require]
       19 GETTABLEKS                       R3 R1 K5 ["Packages"]
       21 GETTABLEKS                       R3 R3 K6 ["Framework"]
       23 CALL                             R2 1 1
       24 GETTABLEKS                       R2 R2 K7 ["Util"]
       26 GETTABLEKS                       R3 R2 K8 ["Promise"]
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R5 R1 K5 ["Packages"]
       32 GETTABLEKS                       R5 R5 K9 ["Cryo"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K4 [require]
       37 GETTABLEKS                       R6 R1 K10 ["Src"]
       39 GETTABLEKS                       R6 R6 K11 ["Networking"]
       41 GETTABLEKS                       R6 R6 K12 ["Requests"]
       43 GETTABLEKS                       R6 R6 K13 ["Permissions"]
       45 GETTABLEKS                       R6 R6 K14 ["GroupRoles"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K4 [require]
       50 GETTABLEKS                       R7 R0 K7 ["Util"]
       52 GETTABLEKS                       R7 R7 K15 ["PermissionsConstants"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K4 [require]
       57 GETTABLEKS                       R8 R0 K7 ["Util"]
       59 GETTABLEKS                       R8 R8 K16 ["WebKeyConstants"]
       61 CALL                             R7 1 1
       62 DUPCLOSURE                       R8 K17 [PROTO_0]
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R6
       65 DUPCLOSURE                       R9 K18 [PROTO_1]
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R6
       68 NEWTABLE                         R10 8 0
       70 DUPCLOSURE                       R11 K19 [PROTO_2]
       71 CAPTURE                          VAL R7
       72 SETTABLEKS                       R11 R10 K20 ["_DEPRECATEDFixEndpointKeyTypes"]
       74 DUPCLOSURE                       R11 K21 [PROTO_3]
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R7
       77 SETTABLEKS                       R11 R10 K22 ["_deserializeOne"]
       79 DUPCLOSURE                       R11 K23 [PROTO_4]
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R10
       83 SETTABLEKS                       R11 R10 K24 ["_deserializeAll"]
       85 DUPCLOSURE                       R11 K25 [PROTO_8]
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R4
       90 SETTABLEKS                       R11 R10 K26 ["_addOwnerIfMissing"]
       92 DUPCLOSURE                       R11 K27 [PROTO_9]
       93 CAPTURE                          VAL R10
       94 SETTABLEKS                       R11 R10 K28 ["DeserializePermissions"]
       96 RETURN                           R10 1
