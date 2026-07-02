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
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["RobloxAPI"]
       16 GETTABLEKS                       R2 R2 K9 ["Url"]
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
       92 DUPTABLE                         R8 K37 [{["Prefix"] = "https://users.roblox.com/", ["Url"]}]
       93 DUPCLOSURE                       R9 K38 [PROTO_8]
       94 SETTABLEKS                       R9 R8 K9 ["Url"]
       96 SETTABLEKS                       R8 R7 K24 ["USERS_SEARCH_URL"]
       98 GETTABLEKS                       R9 R7 K19 ["UNIVERSES_SEARCH_URL"]
      100 GETTABLEKS                       R9 R9 K26 ["Prefix"]
      102 GETTABLEKS                       R10 R7 K19 ["UNIVERSES_SEARCH_URL"]
      104 GETTABLEKS                       R10 R10 K9 ["Url"]
      106 LOADN                            R11 123
      107 CALL                             R10 1 1
      108 FASTCALL1                        TYPE R9 ; [+3]
      109 MOVE                             R14 R9
      110 GETIMPORT                        R13 K40 [type]
      112 CALL                             R13 1 1
      113 JUMPIFEQKS                       R13 K41 ["string"] ; [+2]
      115 LOADB                            R12 0 +1
      116 LOADB                            R12 1
      117 FASTCALL2K                       ASSERT R12 K42 ; [+4]
      119 LOADK                            R13 K42 ["Expected 'base' to be a string."]
      120 GETIMPORT                        R11 K44 [assert]
      122 CALL                             R11 2 0
      123 FASTCALL1                        TYPE R10 ; [+3]
      124 MOVE                             R14 R10
      125 GETIMPORT                        R13 K40 [type]
      127 CALL                             R13 1 1
      128 JUMPIFEQKS                       R13 K41 ["string"] ; [+2]
      130 LOADB                            R12 0 +1
      131 LOADB                            R12 1
      132 FASTCALL2K                       ASSERT R12 K45 ; [+4]
      134 LOADK                            R13 K45 ["Expected 'path' to be a string."]
      135 GETIMPORT                        R11 K44 [assert]
      137 CALL                             R11 2 0
      138 LENGTH                           R13 R9
      139 NAMECALL                         R11 R9 K46 ["sub"]
      141 CALL                             R11 2 1
      142 JUMPIFEQKS                       R11 K47 ["/"] ; [+4]
      144 MOVE                             R11 R9
      145 LOADK                            R12 K47 ["/"]
      146 CONCAT                           R9 R11 R12
      147 GETIMPORT                        R11 K49 [string.format]
      149 LOADK                            R12 K50 ["%s%s"]
      150 MOVE                             R13 R9
      151 MOVE                             R14 R10
      152 CALL                             R11 3 1
      153 MOVE                             R8 R11
      154 SETTABLEKS                       R8 R7 K51 ["UNIVERSES_SEARCH_TEST_URL"]
      156 GETTABLEKS                       R9 R7 K18 ["UNIVERSES_PERMISSIONS_URL"]
      158 GETTABLEKS                       R9 R9 K26 ["Prefix"]
      160 GETTABLEKS                       R10 R7 K18 ["UNIVERSES_PERMISSIONS_URL"]
      162 GETTABLEKS                       R10 R10 K9 ["Url"]
      164 LOADN                            R11 123
      165 CALL                             R10 1 1
      166 FASTCALL1                        TYPE R9 ; [+3]
      167 MOVE                             R14 R9
      168 GETIMPORT                        R13 K40 [type]
      170 CALL                             R13 1 1
      171 JUMPIFEQKS                       R13 K41 ["string"] ; [+2]
      173 LOADB                            R12 0 +1
      174 LOADB                            R12 1
      175 FASTCALL2K                       ASSERT R12 K42 ; [+4]
      177 LOADK                            R13 K42 ["Expected 'base' to be a string."]
      178 GETIMPORT                        R11 K44 [assert]
      180 CALL                             R11 2 0
      181 FASTCALL1                        TYPE R10 ; [+3]
      182 MOVE                             R14 R10
      183 GETIMPORT                        R13 K40 [type]
      185 CALL                             R13 1 1
      186 JUMPIFEQKS                       R13 K41 ["string"] ; [+2]
      188 LOADB                            R12 0 +1
      189 LOADB                            R12 1
      190 FASTCALL2K                       ASSERT R12 K45 ; [+4]
      192 LOADK                            R13 K45 ["Expected 'path' to be a string."]
      193 GETIMPORT                        R11 K44 [assert]
      195 CALL                             R11 2 0
      196 LENGTH                           R13 R9
      197 NAMECALL                         R11 R9 K46 ["sub"]
      199 CALL                             R11 2 1
      200 JUMPIFEQKS                       R11 K47 ["/"] ; [+4]
      202 MOVE                             R11 R9
      203 LOADK                            R12 K47 ["/"]
      204 CONCAT                           R9 R11 R12
      205 GETIMPORT                        R11 K49 [string.format]
      207 LOADK                            R12 K50 ["%s%s"]
      208 MOVE                             R13 R9
      209 MOVE                             R14 R10
      210 CALL                             R11 3 1
      211 MOVE                             R8 R11
      212 SETTABLEKS                       R8 R7 K52 ["UNIVERSES_PERMISSIONS_TEST_URL"]
      214 GETTABLEKS                       R9 R7 K22 ["GROUPS_INFO_URL"]
      216 GETTABLEKS                       R9 R9 K26 ["Prefix"]
      218 GETTABLEKS                       R10 R7 K22 ["GROUPS_INFO_URL"]
      220 GETTABLEKS                       R10 R10 K9 ["Url"]
      222 LOADN                            R11 12345
      223 CALL                             R10 1 1
      224 FASTCALL1                        TYPE R9 ; [+3]
      225 MOVE                             R14 R9
      226 GETIMPORT                        R13 K40 [type]
      228 CALL                             R13 1 1
      229 JUMPIFEQKS                       R13 K41 ["string"] ; [+2]
      231 LOADB                            R12 0 +1
      232 LOADB                            R12 1
      233 FASTCALL2K                       ASSERT R12 K42 ; [+4]
      235 LOADK                            R13 K42 ["Expected 'base' to be a string."]
      236 GETIMPORT                        R11 K44 [assert]
      238 CALL                             R11 2 0
      239 FASTCALL1                        TYPE R10 ; [+3]
      240 MOVE                             R14 R10
      241 GETIMPORT                        R13 K40 [type]
      243 CALL                             R13 1 1
      244 JUMPIFEQKS                       R13 K41 ["string"] ; [+2]
      246 LOADB                            R12 0 +1
      247 LOADB                            R12 1
      248 FASTCALL2K                       ASSERT R12 K45 ; [+4]
      250 LOADK                            R13 K45 ["Expected 'path' to be a string."]
      251 GETIMPORT                        R11 K44 [assert]
      253 CALL                             R11 2 0
      254 LENGTH                           R13 R9
      255 NAMECALL                         R11 R9 K46 ["sub"]
      257 CALL                             R11 2 1
      258 JUMPIFEQKS                       R11 K47 ["/"] ; [+4]
      260 MOVE                             R11 R9
      261 LOADK                            R12 K47 ["/"]
      262 CONCAT                           R9 R11 R12
      263 GETIMPORT                        R11 K49 [string.format]
      265 LOADK                            R12 K50 ["%s%s"]
      266 MOVE                             R13 R9
      267 MOVE                             R14 R10
      268 CALL                             R11 3 1
      269 MOVE                             R8 R11
      270 SETTABLEKS                       R8 R7 K53 ["GROUPS_INFO_TEST_URL"]
      272 DUPTABLE                         R8 K57 [{"Urls", "composeUrl", "composeUrlWithArgs"}]
      273 SETTABLEKS                       R7 R8 K54 ["Urls"]
      275 SETTABLEKS                       R5 R8 K55 ["composeUrl"]
      277 SETTABLEKS                       R6 R8 K56 ["composeUrlWithArgs"]
      279 RETURN                           R8 1
