PROTO_0:
        0 NEWTABLE                         R1 1 0
        2 SETTABLEKS                       R0 R1 K0 ["__networking"]
        4 GETUPVAL                         R4 0
        5 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
        7 MOVE                             R3 R1
        8 GETIMPORT                        R2 K2 [setmetatable]
       10 CALL                             R2 2 1
       11 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["__networking"]
        2 LOADK                            R5 K1 ["apis"]
        3 LOADK                            R6 K2 ["/likely-collaborator-service/v1/get-likely-collaborators"]
        4 DUPTABLE                         R7 K4 [{"Params"}]
        5 DUPTABLE                         R8 K6 [{"userId"}]
        6 SETTABLEKS                       R1 R8 K5 ["userId"]
        8 SETTABLEKS                       R8 R7 K3 ["Params"]
       10 NAMECALL                         R3 R2 K7 ["get"]
       12 CALL                             R3 4 -1
       13 RETURN                           R3 -1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["__networking"]
        2 LOADK                            R5 K1 ["friends"]
        3 LOADK                            R7 K2 ["/v1/users/"]
        4 MOVE                             R8 R1
        5 LOADK                            R9 K3 ["/friends"]
        6 CONCAT                           R6 R7 R9
        7 NAMECALL                         R3 R2 K4 ["get"]
        9 CALL                             R3 3 -1
       10 RETURN                           R3 -1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["__networking"]
        2 LOADK                            R5 K1 ["users"]
        3 LOADK                            R6 K2 ["/v1/users"]
        4 DUPTABLE                         R7 K4 [{"Body"}]
        5 DUPTABLE                         R8 K8 [{["userIds"], ["excludeBannedUsers"] = False}]
        6 SETTABLEKS                       R1 R8 K5 ["userIds"]
        8 SETTABLEKS                       R8 R7 K3 ["Body"]
       10 NAMECALL                         R3 R2 K9 ["post"]
       12 CALL                             R3 4 -1
       13 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["friendsV1GET"]
        4 CALL                             R0 2 1
        5 NAMECALL                         R0 R0 K1 ["await"]
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["multiGetUsersV1POST"]
        4 CALL                             R0 2 1
        5 NAMECALL                         R0 R0 K1 ["await"]
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["fintLikelyCollaboratorsMaxFriends"]
        3 LOADN                            R3 0
        4 JUMPIFNOTLE                      R2 R3 ; [+4]
        6 NEWTABLE                         R3 0 0
        8 RETURN                           R3 1
        9 GETIMPORT                        R3 K2 [pcall]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R1
       14 CALL                             R3 1 2
       15 JUMPIFNOT                        R3 ; [+9]
       16 JUMPIFNOT                        R4 ; [+8]
       17 GETTABLEKS                       R5 R4 K3 ["responseBody"]
       19 JUMPIFNOT                        R5 ; [+5]
       20 GETTABLEKS                       R5 R4 K3 ["responseBody"]
       22 GETTABLEKS                       R5 R5 K4 ["data"]
       24 JUMPIF                           R5 ; [+3]
       25 NEWTABLE                         R5 0 0
       27 RETURN                           R5 1
       28 GETTABLEKS                       R5 R4 K3 ["responseBody"]
       30 GETTABLEKS                       R5 R5 K4 ["data"]
       32 NEWTABLE                         R6 0 0
       34 NEWTABLE                         R7 0 0
       36 GETIMPORT                        R8 K6 [ipairs]
       38 MOVE                             R9 R5
       39 CALL                             R8 1 3
       40 FORGPREP_INEXT                   R8
       41 LENGTH                           R13 R6
       42 JUMPIFLE                         R2 R13 ; [+14]
       44 GETTABLEKS                       R15 R12 K7 ["id"]
       46 FASTCALL2                        TABLE_INSERT R6 R15 ; [+4]
       48 MOVE                             R14 R6
       49 GETIMPORT                        R13 K10 [table.insert]
       51 CALL                             R13 2 0
       52 GETTABLEKS                       R13 R12 K7 ["id"]
       54 SETTABLE                         R12 R7 R13
       55 FORGLOOP                         R8 2 [inext] ; [-15]
       57 LENGTH                           R8 R6
       58 JUMPIFNOTEQKN                    R8 K11 [0] ; [+4]
       60 NEWTABLE                         R8 0 0
       62 RETURN                           R8 1
       63 NEWTABLE                         R8 0 0
       65 NEWTABLE                         R9 0 0
       67 LOADN                            R12 1
       68 LENGTH                           R10 R6
       69 LOADN                            R11 100
       70 FORNPREP                         R10
       71 ADDK                             R15 R12 K13 [100]
       72 SUBK                             R14 R15 K12 [1]
       73 LENGTH                           R15 R6
       74 FASTCALL2                        MATH_MIN R14 R15 ; [+3]
       76 GETIMPORT                        R13 K16 [math.min]
       78 CALL                             R13 2 1
       79 GETIMPORT                        R14 K18 [table.move]
       81 MOVE                             R15 R6
       82 MOVE                             R16 R12
       83 MOVE                             R17 R13
       84 LOADN                            R18 1
       85 NEWTABLE                         R19 0 0
       87 CALL                             R14 5 1
       88 GETIMPORT                        R15 K2 [pcall]
       90 NEWCLOSURE                       R16 P1
       91 CAPTURE                          VAL R0
       92 CAPTURE                          VAL R14
       93 CALL                             R15 1 2
       94 JUMPIFNOT                        R15 ; [+23]
       95 JUMPIFNOT                        R16 ; [+22]
       96 GETTABLEKS                       R17 R16 K3 ["responseBody"]
       98 JUMPIFNOT                        R17 ; [+19]
       99 GETTABLEKS                       R17 R16 K3 ["responseBody"]
      101 GETTABLEKS                       R17 R17 K4 ["data"]
      103 JUMPIFNOT                        R17 ; [+14]
      104 GETIMPORT                        R17 K6 [ipairs]
      106 GETTABLEKS                       R18 R16 K3 ["responseBody"]
      108 GETTABLEKS                       R18 R18 K4 ["data"]
      110 CALL                             R17 1 3
      111 FORGPREP_INEXT                   R17
      112 GETTABLEKS                       R22 R21 K7 ["id"]
      114 SETTABLE                         R21 R8 R22
      115 FORGLOOP                         R17 2 [inext] ; [-4]
      117 JUMP                             ; [+8]
      118 MOVE                             R19 R12
      119 MOVE                             R17 R13
      120 LOADN                            R18 1
      121 FORNPREP                         R17
      122 GETTABLE                         R20 R6 R19
      123 LOADB                            R21 1
      124 SETTABLE                         R21 R9 R20
      125 FORNLOOP                         R17
      126 FORNLOOP                         R10
      127 NEWTABLE                         R10 0 0
      129 GETIMPORT                        R11 K6 [ipairs]
      131 MOVE                             R12 R6
      132 CALL                             R11 1 3
      133 FORGPREP_INEXT                   R11
      134 GETTABLE                         R16 R8 R15
      135 GETTABLE                         R17 R7 R15
      136 JUMPIFNOT                        R16 ; [+20]
      137 DUPTABLE                         R20 K21 [{"id", "name", "displayName"}]
      138 GETTABLEKS                       R21 R16 K7 ["id"]
      140 SETTABLEKS                       R21 R20 K7 ["id"]
      142 GETTABLEKS                       R21 R16 K19 ["name"]
      144 SETTABLEKS                       R21 R20 K19 ["name"]
      146 GETTABLEKS                       R21 R16 K20 ["displayName"]
      148 SETTABLEKS                       R21 R20 K20 ["displayName"]
      150 FASTCALL2                        TABLE_INSERT R10 R20 ; [+4]
      152 MOVE                             R19 R10
      153 GETIMPORT                        R18 K10 [table.insert]
      155 CALL                             R18 2 0
      156 JUMP                             ; [+29]
      157 GETTABLE                         R18 R9 R15
      158 JUMPIFNOT                        R18 ; [+27]
      159 JUMPIFNOT                        R17 ; [+26]
      160 GETTABLEKS                       R18 R17 K19 ["name"]
      162 JUMPIFNOT                        R18 ; [+23]
      163 GETTABLEKS                       R18 R17 K19 ["name"]
      165 JUMPIFEQKS                       R18 K22 [""] ; [+20]
      167 DUPTABLE                         R20 K21 [{"id", "name", "displayName"}]
      168 GETTABLEKS                       R21 R17 K7 ["id"]
      170 SETTABLEKS                       R21 R20 K7 ["id"]
      172 GETTABLEKS                       R21 R17 K19 ["name"]
      174 SETTABLEKS                       R21 R20 K19 ["name"]
      176 GETTABLEKS                       R21 R17 K20 ["displayName"]
      178 SETTABLEKS                       R21 R20 K20 ["displayName"]
      180 FASTCALL2                        TABLE_INSERT R10 R20 ; [+4]
      182 MOVE                             R19 R10
      183 GETIMPORT                        R18 K10 [table.insert]
      185 CALL                             R18 2 0
      186 FORGLOOP                         R11 2 [inext] ; [-53]
      188 RETURN                           R10 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["getFriendsAsLikelyCollaborators"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["getLikelyCollaboratorsV1GET"]
        4 CALL                             R0 2 1
        5 NAMECALL                         R0 R0 K1 ["await"]
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["fflagLikelyCollaboratorsFromFriendsApi"]
        3 JUMPIFNOT                        R2 ; [+12]
        4 GETIMPORT                        R2 K2 [pcall]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R1
        9 CALL                             R2 1 2
       10 JUMPIFNOT                        R2 ; [+1]
       11 JUMPIF                           R3 ; [+3]
       12 NEWTABLE                         R4 0 0
       14 RETURN                           R4 1
       15 RETURN                           R3 1
       16 GETIMPORT                        R2 K2 [pcall]
       18 NEWCLOSURE                       R3 P1
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R1
       21 CALL                             R2 1 2
       22 JUMPIFNOT                        R2 ; [+9]
       23 JUMPIFNOT                        R3 ; [+8]
       24 GETTABLEKS                       R4 R3 K3 ["responseBody"]
       26 JUMPIFNOT                        R4 ; [+5]
       27 GETTABLEKS                       R4 R3 K3 ["responseBody"]
       29 GETTABLEKS                       R4 R4 K4 ["likelyCollaborators"]
       31 JUMPIF                           R4 ; [+3]
       32 NEWTABLE                         R4 0 0
       34 RETURN                           R4 1
       35 GETTABLEKS                       R4 R3 K3 ["responseBody"]
       37 GETTABLEKS                       R4 R4 K4 ["likelyCollaborators"]
       39 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ManageCollaborators"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["IsLikelyCollaboratorPrefetchEnabled"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Bin"]
       20 GETTABLEKS                       R3 R3 K10 ["defineLuaFlags"]
       22 CALL                             R2 1 1
       23 MOVE                             R3 R1
       24 CALL                             R3 0 1
       25 JUMPIFNOT                        R3 ; [+26]
       26 NEWTABLE                         R3 8 0
       28 SETTABLEKS                       R3 R3 K11 ["__index"]
       30 DUPCLOSURE                       R4 K12 [PROTO_0]
       31 CAPTURE                          VAL R3
       32 SETTABLEKS                       R4 R3 K13 ["new"]
       34 DUPCLOSURE                       R4 K14 [PROTO_1]
       35 SETTABLEKS                       R4 R3 K15 ["getLikelyCollaboratorsV1GET"]
       37 DUPCLOSURE                       R4 K16 [PROTO_2]
       38 SETTABLEKS                       R4 R3 K17 ["friendsV1GET"]
       40 DUPCLOSURE                       R4 K18 [PROTO_3]
       41 SETTABLEKS                       R4 R3 K19 ["multiGetUsersV1POST"]
       43 DUPCLOSURE                       R4 K20 [PROTO_6]
       44 CAPTURE                          VAL R2
       45 SETTABLEKS                       R4 R3 K21 ["getFriendsAsLikelyCollaborators"]
       47 DUPCLOSURE                       R4 K22 [PROTO_9]
       48 CAPTURE                          VAL R2
       49 SETTABLEKS                       R4 R3 K23 ["getLikelyCollaborators"]
       51 RETURN                           R3 1
       52 RETURN                           R0 0
