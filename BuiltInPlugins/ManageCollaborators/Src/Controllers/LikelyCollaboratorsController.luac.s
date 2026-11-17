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
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R1
       12 FASTPCALL                        pcall 1 ; [+2]
       13 GETIMPORT                        R3 K2 [pcall]
       15 CALL                             R3 1 2
       16 JUMPIFNOT                        R3 ; [+9]
       17 JUMPIFNOT                        R4 ; [+8]
       18 GETTABLEKS                       R5 R4 K3 ["responseBody"]
       20 JUMPIFNOT                        R5 ; [+5]
       21 GETTABLEKS                       R5 R4 K3 ["responseBody"]
       23 GETTABLEKS                       R5 R5 K4 ["data"]
       25 JUMPIF                           R5 ; [+3]
       26 NEWTABLE                         R5 0 0
       28 RETURN                           R5 1
       29 GETTABLEKS                       R5 R4 K3 ["responseBody"]
       31 GETTABLEKS                       R5 R5 K4 ["data"]
       33 NEWTABLE                         R6 0 0
       35 NEWTABLE                         R7 0 0
       37 GETIMPORT                        R8 K6 [ipairs]
       39 MOVE                             R9 R5
       40 CALL                             R8 1 3
       41 FORGPREP_INEXT                   R8
       42 LENGTH                           R13 R6
       43 JUMPIFLE                         R2 R13 ; [+14]
       45 GETTABLEKS                       R15 R12 K7 ["id"]
       47 FASTCALL2                        TABLE_INSERT R6 R15 ; [+4]
       49 MOVE                             R14 R6
       50 GETIMPORT                        R13 K10 [table.insert]
       52 CALL                             R13 2 0
       53 GETTABLEKS                       R13 R12 K7 ["id"]
       55 SETTABLE                         R12 R7 R13
       56 FORGLOOP                         R8 2 [inext] ; [-15]
       58 LENGTH                           R8 R6
       59 JUMPIFNOTEQKN                    R8 K11 [0] ; [+4]
       61 NEWTABLE                         R8 0 0
       63 RETURN                           R8 1
       64 NEWTABLE                         R8 0 0
       66 NEWTABLE                         R9 0 0
       68 LOADN                            R12 1
       69 LENGTH                           R10 R6
       70 LOADN                            R11 100
       71 FORNPREP                         R10
       72 ADDK                             R15 R12 K13 [100]
       73 SUBK                             R14 R15 K12 [1]
       74 LENGTH                           R15 R6
       75 FASTCALL2                        MATH_MIN R14 R15 ; [+3]
       77 GETIMPORT                        R13 K16 [math.min]
       79 CALL                             R13 2 1
       80 GETIMPORT                        R14 K18 [table.move]
       82 MOVE                             R15 R6
       83 MOVE                             R16 R12
       84 MOVE                             R17 R13
       85 LOADN                            R18 1
       86 NEWTABLE                         R19 0 0
       88 CALL                             R14 5 1
       89 NEWCLOSURE                       R16 P1
       90 CAPTURE                          VAL R0
       91 CAPTURE                          VAL R14
       92 FASTPCALL                        pcall 1 ; [+2]
       93 GETIMPORT                        R15 K2 [pcall]
       95 CALL                             R15 1 2
       96 JUMPIFNOT                        R15 ; [+23]
       97 JUMPIFNOT                        R16 ; [+22]
       98 GETTABLEKS                       R17 R16 K3 ["responseBody"]
      100 JUMPIFNOT                        R17 ; [+19]
      101 GETTABLEKS                       R17 R16 K3 ["responseBody"]
      103 GETTABLEKS                       R17 R17 K4 ["data"]
      105 JUMPIFNOT                        R17 ; [+14]
      106 GETIMPORT                        R17 K6 [ipairs]
      108 GETTABLEKS                       R18 R16 K3 ["responseBody"]
      110 GETTABLEKS                       R18 R18 K4 ["data"]
      112 CALL                             R17 1 3
      113 FORGPREP_INEXT                   R17
      114 GETTABLEKS                       R22 R21 K7 ["id"]
      116 SETTABLE                         R21 R8 R22
      117 FORGLOOP                         R17 2 [inext] ; [-4]
      119 JUMP                             ; [+8]
      120 MOVE                             R19 R12
      121 MOVE                             R17 R13
      122 LOADN                            R18 1
      123 FORNPREP                         R17
      124 GETTABLE                         R20 R6 R19
      125 LOADB                            R21 1
      126 SETTABLE                         R21 R9 R20
      127 FORNLOOP                         R17
      128 FORNLOOP                         R10
      129 NEWTABLE                         R10 0 0
      131 GETIMPORT                        R11 K6 [ipairs]
      133 MOVE                             R12 R6
      134 CALL                             R11 1 3
      135 FORGPREP_INEXT                   R11
      136 GETTABLE                         R16 R8 R15
      137 GETTABLE                         R17 R7 R15
      138 JUMPIFNOT                        R16 ; [+20]
      139 DUPTABLE                         R20 K21 [{"id", "name", "displayName"}]
      140 GETTABLEKS                       R21 R16 K7 ["id"]
      142 SETTABLEKS                       R21 R20 K7 ["id"]
      144 GETTABLEKS                       R21 R16 K19 ["name"]
      146 SETTABLEKS                       R21 R20 K19 ["name"]
      148 GETTABLEKS                       R21 R16 K20 ["displayName"]
      150 SETTABLEKS                       R21 R20 K20 ["displayName"]
      152 FASTCALL2                        TABLE_INSERT R10 R20 ; [+4]
      154 MOVE                             R19 R10
      155 GETIMPORT                        R18 K10 [table.insert]
      157 CALL                             R18 2 0
      158 JUMP                             ; [+29]
      159 GETTABLE                         R18 R9 R15
      160 JUMPIFNOT                        R18 ; [+27]
      161 JUMPIFNOT                        R17 ; [+26]
      162 GETTABLEKS                       R18 R17 K19 ["name"]
      164 JUMPIFNOT                        R18 ; [+23]
      165 GETTABLEKS                       R18 R17 K19 ["name"]
      167 JUMPIFEQKS                       R18 K22 [""] ; [+20]
      169 DUPTABLE                         R20 K21 [{"id", "name", "displayName"}]
      170 GETTABLEKS                       R21 R17 K7 ["id"]
      172 SETTABLEKS                       R21 R20 K7 ["id"]
      174 GETTABLEKS                       R21 R17 K19 ["name"]
      176 SETTABLEKS                       R21 R20 K19 ["name"]
      178 GETTABLEKS                       R21 R17 K20 ["displayName"]
      180 SETTABLEKS                       R21 R20 K20 ["displayName"]
      182 FASTCALL2                        TABLE_INSERT R10 R20 ; [+4]
      184 MOVE                             R19 R10
      185 GETIMPORT                        R18 K10 [table.insert]
      187 CALL                             R18 2 0
      188 FORGLOOP                         R11 2 [inext] ; [-53]
      190 RETURN                           R10 1

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
        3 JUMPIFNOT                        R2 ; [+13]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 FASTPCALL                        pcall 1 ; [+2]
        8 GETIMPORT                        R2 K2 [pcall]
       10 CALL                             R2 1 2
       11 JUMPIFNOT                        R2 ; [+1]
       12 JUMPIF                           R3 ; [+3]
       13 NEWTABLE                         R4 0 0
       15 RETURN                           R4 1
       16 RETURN                           R3 1
       17 NEWCLOSURE                       R3 P1
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R1
       20 FASTPCALL                        pcall 1 ; [+2]
       21 GETIMPORT                        R2 K2 [pcall]
       23 CALL                             R2 1 2
       24 JUMPIFNOT                        R2 ; [+9]
       25 JUMPIFNOT                        R3 ; [+8]
       26 GETTABLEKS                       R4 R3 K3 ["responseBody"]
       28 JUMPIFNOT                        R4 ; [+5]
       29 GETTABLEKS                       R4 R3 K3 ["responseBody"]
       31 GETTABLEKS                       R4 R4 K4 ["likelyCollaborators"]
       33 JUMPIF                           R4 ; [+3]
       34 NEWTABLE                         R4 0 0
       36 RETURN                           R4 1
       37 GETTABLEKS                       R4 R3 K3 ["responseBody"]
       39 GETTABLEKS                       R4 R4 K4 ["likelyCollaborators"]
       41 RETURN                           R4 1

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
