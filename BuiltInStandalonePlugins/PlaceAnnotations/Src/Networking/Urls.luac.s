PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["string"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["Expected 'base' to be a string."]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 FASTCALL1                        TYPE R1 ; [+3]
       16 MOVE                             R5 R1
       17 GETIMPORT                        R4 K1 [type]
       19 CALL                             R4 1 1
       20 JUMPIFEQKS                       R4 K2 ["string"] ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 FASTCALL2K                       ASSERT R3 K6 ; [+4]
       26 LOADK                            R4 K6 ["Expected 'path' to be a string."]
       27 GETIMPORT                        R2 K5 [assert]
       29 CALL                             R2 2 0
       30 LENGTH                           R4 R0
       31 NAMECALL                         R2 R0 K7 ["sub"]
       33 CALL                             R2 2 1
       34 JUMPIFEQKS                       R2 K8 ["/"] ; [+4]
       36 MOVE                             R2 R0
       37 LOADK                            R3 K8 ["/"]
       38 CONCAT                           R0 R2 R3
       39 GETIMPORT                        R2 K10 [string.format]
       41 LOADK                            R3 K11 ["%s%s"]
       42 MOVE                             R4 R0
       43 MOVE                             R5 R1
       44 CALL                             R2 3 -1
       45 RETURN                           R2 -1

PROTO_1:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R6 R0
        2 GETIMPORT                        R5 K1 [type]
        4 CALL                             R5 1 1
        5 JUMPIFEQKS                       R5 K2 ["string"] ; [+2]
        7 LOADB                            R4 0 +1
        8 LOADB                            R4 1
        9 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       11 LOADK                            R5 K3 ["Expected 'base' to be a string."]
       12 GETIMPORT                        R3 K5 [assert]
       14 CALL                             R3 2 0
       15 FASTCALL1                        TYPE R1 ; [+3]
       16 MOVE                             R6 R1
       17 GETIMPORT                        R5 K1 [type]
       19 CALL                             R5 1 1
       20 JUMPIFEQKS                       R5 K2 ["string"] ; [+2]
       22 LOADB                            R4 0 +1
       23 LOADB                            R4 1
       24 FASTCALL2K                       ASSERT R4 K6 ; [+4]
       26 LOADK                            R5 K6 ["Expected 'path' to be a string."]
       27 GETIMPORT                        R3 K5 [assert]
       29 CALL                             R3 2 0
       30 FASTCALL1                        TYPE R2 ; [+3]
       31 MOVE                             R6 R2
       32 GETIMPORT                        R5 K1 [type]
       34 CALL                             R5 1 1
       35 JUMPIFEQKS                       R5 K7 ["table"] ; [+2]
       37 LOADB                            R4 0 +1
       38 LOADB                            R4 1
       39 FASTCALL2K                       ASSERT R4 K8 ; [+4]
       41 LOADK                            R5 K8 ["Expected 'args' to be a map."]
       42 GETIMPORT                        R3 K5 [assert]
       44 CALL                             R3 2 0
       45 LENGTH                           R5 R0
       46 NAMECALL                         R3 R0 K9 ["sub"]
       48 CALL                             R3 2 1
       49 JUMPIFEQKS                       R3 K10 ["/"] ; [+4]
       51 MOVE                             R3 R0
       52 LOADK                            R4 K10 ["/"]
       53 CONCAT                           R0 R3 R4
       54 NEWTABLE                         R3 0 0
       56 GETIMPORT                        R4 K12 [pairs]
       58 MOVE                             R5 R2
       59 CALL                             R4 1 3
       60 FORGPREP_NEXT                    R4
       61 MOVE                             R10 R3
       62 GETIMPORT                        R11 K14 [string.format]
       64 LOADK                            R12 K15 ["%s=%s"]
       65 MOVE                             R13 R7
       66 FASTCALL1                        TOSTRING R8 ; [+3]
       67 MOVE                             R15 R8
       68 GETIMPORT                        R14 K17 [tostring]
       70 CALL                             R14 1 1
       71 CALL                             R11 3 -1
       72 FASTCALL                         TABLE_INSERT ; [+2]
       73 GETIMPORT                        R9 K19 [table.insert]
       75 CALL                             R9 -1 0
       76 FORGLOOP                         R4 2 ; [-16]
       78 LOADK                            R5 K20 ["?"]
       79 GETIMPORT                        R6 K22 [table.concat]
       81 MOVE                             R7 R3
       82 LOADK                            R8 K23 ["&"]
       83 CALL                             R6 2 1
       84 CONCAT                           R4 R5 R6
       85 GETIMPORT                        R5 K14 [string.format]
       87 LOADK                            R6 K24 ["%s%s%s"]
       88 MOVE                             R7 R0
       89 MOVE                             R8 R1
       90 MOVE                             R9 R4
       91 CALL                             R5 4 -1
       92 RETURN                           R5 -1

PROTO_2:
        0 LOADK                            R2 K0 ["v2/universes/%*/permissions"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_3:
        0 LOADK                            R2 K0 ["v1/universes/%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_4:
        0 LOADK                            R3 K0 ["v1/groups/%*/roles/%*/users"]
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 NAMECALL                         R3 R3 K1 ["format"]
        5 CALL                             R3 3 1
        6 MOVE                             R2 R3
        7 RETURN                           R2 1

PROTO_5:
        0 LOADK                            R2 K0 ["v1/groups/%*/roles"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_6:
        0 LOADK                            R2 K0 ["v1/groups/%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_7:
        0 LOADK                            R2 K0 ["v1/users/%*/groups/roles"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_8:
        0 LOADK                            R0 K0 ["v1/users/search"]
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["RobloxAPI"]
       16 GETTABLEKS                       R2 R3 K9 ["Url"]
       18 GETIMPORT                        R3 K11 [game]
       20 LOADK                            R5 K12 ["ContentProvider"]
       21 NAMECALL                         R3 R3 K13 ["GetService"]
       23 CALL                             R3 2 1
       24 GETTABLEKS                       R4 R2 K14 ["new"]
       26 GETTABLEKS                       R5 R3 K15 ["BaseUrl"]
       28 CALL                             R4 1 1
       29 DUPCLOSURE                       R5 K16 [PROTO_0]
       30 DUPCLOSURE                       R6 K17 [PROTO_1]
       31 DUPTABLE                         R7 K25 [{"UNIVERSES_PERMISSIONS_URL", "UNIVERSES_SEARCH_URL", "GROUPS_ROLES_USERS_URL", "GROUPS_ROLES_URL", "GROUPS_INFO_URL", "GROUPS_USERS_ROLES_URL", "USERS_SEARCH_URL"}]
       32 DUPTABLE                         R8 K27 [{"Prefix", "Url"}]
       33 GETTABLEKS                       R9 R4 K28 ["DEVELOP_URL"]
       35 SETTABLEKS                       R9 R8 K26 ["Prefix"]
       37 DUPCLOSURE                       R9 K29 [PROTO_2]
       38 SETTABLEKS                       R9 R8 K9 ["Url"]
       40 SETTABLEKS                       R8 R7 K18 ["UNIVERSES_PERMISSIONS_URL"]
       42 DUPTABLE                         R8 K27 [{"Prefix", "Url"}]
       43 GETTABLEKS                       R9 R4 K28 ["DEVELOP_URL"]
       45 SETTABLEKS                       R9 R8 K26 ["Prefix"]
       47 DUPCLOSURE                       R9 K30 [PROTO_3]
       48 SETTABLEKS                       R9 R8 K9 ["Url"]
       50 SETTABLEKS                       R8 R7 K19 ["UNIVERSES_SEARCH_URL"]
       52 DUPTABLE                         R8 K27 [{"Prefix", "Url"}]
       53 GETTABLEKS                       R9 R4 K31 ["GROUPS_URL"]
       55 SETTABLEKS                       R9 R8 K26 ["Prefix"]
       57 DUPCLOSURE                       R9 K32 [PROTO_4]
       58 SETTABLEKS                       R9 R8 K9 ["Url"]
       60 SETTABLEKS                       R8 R7 K20 ["GROUPS_ROLES_USERS_URL"]
       62 DUPTABLE                         R8 K27 [{"Prefix", "Url"}]
       63 GETTABLEKS                       R9 R4 K31 ["GROUPS_URL"]
       65 SETTABLEKS                       R9 R8 K26 ["Prefix"]
       67 DUPCLOSURE                       R9 K33 [PROTO_5]
       68 SETTABLEKS                       R9 R8 K9 ["Url"]
       70 SETTABLEKS                       R8 R7 K21 ["GROUPS_ROLES_URL"]
       72 DUPTABLE                         R8 K27 [{"Prefix", "Url"}]
       73 GETTABLEKS                       R9 R4 K31 ["GROUPS_URL"]
       75 SETTABLEKS                       R9 R8 K26 ["Prefix"]
       77 DUPCLOSURE                       R9 K34 [PROTO_6]
       78 SETTABLEKS                       R9 R8 K9 ["Url"]
       80 SETTABLEKS                       R8 R7 K22 ["GROUPS_INFO_URL"]
       82 DUPTABLE                         R8 K27 [{"Prefix", "Url"}]
       83 GETTABLEKS                       R9 R4 K31 ["GROUPS_URL"]
       85 SETTABLEKS                       R9 R8 K26 ["Prefix"]
       87 DUPCLOSURE                       R9 K35 [PROTO_7]
       88 SETTABLEKS                       R9 R8 K9 ["Url"]
       90 SETTABLEKS                       R8 R7 K23 ["GROUPS_USERS_ROLES_URL"]
       92 DUPTABLE                         R8 K27 [{"Prefix", "Url"}]
       93 LOADK                            R9 K36 ["https://users.roblox.com/"]
       94 SETTABLEKS                       R9 R8 K26 ["Prefix"]
       96 DUPCLOSURE                       R9 K37 [PROTO_8]
       97 SETTABLEKS                       R9 R8 K9 ["Url"]
       99 SETTABLEKS                       R8 R7 K24 ["USERS_SEARCH_URL"]
      101 GETTABLEKS                       R10 R7 K19 ["UNIVERSES_SEARCH_URL"]
      103 GETTABLEKS                       R9 R10 K26 ["Prefix"]
      105 GETTABLEKS                       R11 R7 K19 ["UNIVERSES_SEARCH_URL"]
      107 GETTABLEKS                       R10 R11 K9 ["Url"]
      109 LOADN                            R11 123
      110 CALL                             R10 1 1
      111 FASTCALL1                        TYPE R9 ; [+3]
      112 MOVE                             R14 R9
      113 GETIMPORT                        R13 K39 [type]
      115 CALL                             R13 1 1
      116 JUMPIFEQKS                       R13 K40 ["string"] ; [+2]
      118 LOADB                            R12 0 +1
      119 LOADB                            R12 1
      120 FASTCALL2K                       ASSERT R12 K41 ; [+4]
      122 LOADK                            R13 K41 ["Expected 'base' to be a string."]
      123 GETIMPORT                        R11 K43 [assert]
      125 CALL                             R11 2 0
      126 FASTCALL1                        TYPE R10 ; [+3]
      127 MOVE                             R14 R10
      128 GETIMPORT                        R13 K39 [type]
      130 CALL                             R13 1 1
      131 JUMPIFEQKS                       R13 K40 ["string"] ; [+2]
      133 LOADB                            R12 0 +1
      134 LOADB                            R12 1
      135 FASTCALL2K                       ASSERT R12 K44 ; [+4]
      137 LOADK                            R13 K44 ["Expected 'path' to be a string."]
      138 GETIMPORT                        R11 K43 [assert]
      140 CALL                             R11 2 0
      141 LENGTH                           R13 R9
      142 NAMECALL                         R11 R9 K45 ["sub"]
      144 CALL                             R11 2 1
      145 JUMPIFEQKS                       R11 K46 ["/"] ; [+4]
      147 MOVE                             R11 R9
      148 LOADK                            R12 K46 ["/"]
      149 CONCAT                           R9 R11 R12
      150 GETIMPORT                        R11 K48 [string.format]
      152 LOADK                            R12 K49 ["%s%s"]
      153 MOVE                             R13 R9
      154 MOVE                             R14 R10
      155 CALL                             R11 3 1
      156 MOVE                             R8 R11
      157 SETTABLEKS                       R8 R7 K50 ["UNIVERSES_SEARCH_TEST_URL"]
      159 GETTABLEKS                       R10 R7 K18 ["UNIVERSES_PERMISSIONS_URL"]
      161 GETTABLEKS                       R9 R10 K26 ["Prefix"]
      163 GETTABLEKS                       R11 R7 K18 ["UNIVERSES_PERMISSIONS_URL"]
      165 GETTABLEKS                       R10 R11 K9 ["Url"]
      167 LOADN                            R11 123
      168 CALL                             R10 1 1
      169 FASTCALL1                        TYPE R9 ; [+3]
      170 MOVE                             R14 R9
      171 GETIMPORT                        R13 K39 [type]
      173 CALL                             R13 1 1
      174 JUMPIFEQKS                       R13 K40 ["string"] ; [+2]
      176 LOADB                            R12 0 +1
      177 LOADB                            R12 1
      178 FASTCALL2K                       ASSERT R12 K41 ; [+4]
      180 LOADK                            R13 K41 ["Expected 'base' to be a string."]
      181 GETIMPORT                        R11 K43 [assert]
      183 CALL                             R11 2 0
      184 FASTCALL1                        TYPE R10 ; [+3]
      185 MOVE                             R14 R10
      186 GETIMPORT                        R13 K39 [type]
      188 CALL                             R13 1 1
      189 JUMPIFEQKS                       R13 K40 ["string"] ; [+2]
      191 LOADB                            R12 0 +1
      192 LOADB                            R12 1
      193 FASTCALL2K                       ASSERT R12 K44 ; [+4]
      195 LOADK                            R13 K44 ["Expected 'path' to be a string."]
      196 GETIMPORT                        R11 K43 [assert]
      198 CALL                             R11 2 0
      199 LENGTH                           R13 R9
      200 NAMECALL                         R11 R9 K45 ["sub"]
      202 CALL                             R11 2 1
      203 JUMPIFEQKS                       R11 K46 ["/"] ; [+4]
      205 MOVE                             R11 R9
      206 LOADK                            R12 K46 ["/"]
      207 CONCAT                           R9 R11 R12
      208 GETIMPORT                        R11 K48 [string.format]
      210 LOADK                            R12 K49 ["%s%s"]
      211 MOVE                             R13 R9
      212 MOVE                             R14 R10
      213 CALL                             R11 3 1
      214 MOVE                             R8 R11
      215 SETTABLEKS                       R8 R7 K51 ["UNIVERSES_PERMISSIONS_TEST_URL"]
      217 GETTABLEKS                       R10 R7 K22 ["GROUPS_INFO_URL"]
      219 GETTABLEKS                       R9 R10 K26 ["Prefix"]
      221 GETTABLEKS                       R11 R7 K22 ["GROUPS_INFO_URL"]
      223 GETTABLEKS                       R10 R11 K9 ["Url"]
      225 LOADN                            R11 57
      226 CALL                             R10 1 1
      227 FASTCALL1                        TYPE R9 ; [+3]
      228 MOVE                             R14 R9
      229 GETIMPORT                        R13 K39 [type]
      231 CALL                             R13 1 1
      232 JUMPIFEQKS                       R13 K40 ["string"] ; [+2]
      234 LOADB                            R12 0 +1
      235 LOADB                            R12 1
      236 FASTCALL2K                       ASSERT R12 K41 ; [+4]
      238 LOADK                            R13 K41 ["Expected 'base' to be a string."]
      239 GETIMPORT                        R11 K43 [assert]
      241 CALL                             R11 2 0
      242 FASTCALL1                        TYPE R10 ; [+3]
      243 MOVE                             R14 R10
      244 GETIMPORT                        R13 K39 [type]
      246 CALL                             R13 1 1
      247 JUMPIFEQKS                       R13 K40 ["string"] ; [+2]
      249 LOADB                            R12 0 +1
      250 LOADB                            R12 1
      251 FASTCALL2K                       ASSERT R12 K44 ; [+4]
      253 LOADK                            R13 K44 ["Expected 'path' to be a string."]
      254 GETIMPORT                        R11 K43 [assert]
      256 CALL                             R11 2 0
      257 LENGTH                           R13 R9
      258 NAMECALL                         R11 R9 K45 ["sub"]
      260 CALL                             R11 2 1
      261 JUMPIFEQKS                       R11 K46 ["/"] ; [+4]
      263 MOVE                             R11 R9
      264 LOADK                            R12 K46 ["/"]
      265 CONCAT                           R9 R11 R12
      266 GETIMPORT                        R11 K48 [string.format]
      268 LOADK                            R12 K49 ["%s%s"]
      269 MOVE                             R13 R9
      270 MOVE                             R14 R10
      271 CALL                             R11 3 1
      272 MOVE                             R8 R11
      273 SETTABLEKS                       R8 R7 K52 ["GROUPS_INFO_TEST_URL"]
      275 DUPTABLE                         R8 K56 [{"Urls", "composeUrl", "composeUrlWithArgs"}]
      276 SETTABLEKS                       R7 R8 K53 ["Urls"]
      278 SETTABLEKS                       R5 R8 K54 ["composeUrl"]
      280 SETTABLEKS                       R6 R8 K55 ["composeUrlWithArgs"]
      282 RETURN                           R8 1
