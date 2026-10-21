PROTO_0:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+14]
        8 GETIMPORT                        R2 K4 [string.find]
       10 MOVE                             R3 R0
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K5 ["fstringChallengeRequiredMessage"]
       14 LOADN                            R5 1
       15 LOADB                            R6 1
       16 CALL                             R2 4 1
       17 JUMPIFNOTEQKNIL                  R2 ; [+2]
       19 LOADB                            R1 0 +1
       20 LOADB                            R1 1
       21 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 NAMECALL                         R0 R0 K0 ["revokePermission"]
        6 CALL                             R0 4 0
        7 RETURN                           R0 0

PROTO_2:
        0 JUMPIFEQKNIL                     R0 ; [+38]
        2 JUMPIFNOT                        R1 ; [+32]
        3 LOADB                            R3 0
        4 FASTCALL1                        TYPEOF R0 ; [+3]
        5 MOVE                             R5 R0
        6 GETIMPORT                        R4 K1 [typeof]
        8 CALL                             R4 1 1
        9 JUMPIFNOTEQKS                    R4 K2 ["string"] ; [+14]
       11 GETIMPORT                        R4 K4 [string.find]
       13 MOVE                             R5 R0
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R6 R6 K5 ["fstringChallengeRequiredMessage"]
       17 LOADN                            R7 1
       18 LOADB                            R8 1
       19 CALL                             R4 4 1
       20 JUMPIFNOTEQKNIL                  R4 ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 JUMPIFNOT                        R3 ; [+10]
       25 JUMPIFEQKNIL                     R2 ; [+4]
       27 GETUPVAL                         R3 1
       28 LOADB                            R4 1
       29 SETTABLE                         R4 R3 R2
       30 GETUPVAL                         R3 2
       31 JUMPIFNOTEQKNIL                  R3 ; [+7]
       33 SETUPVAL                         R0 2
       34 JUMP                             ; [+4]
       35 GETUPVAL                         R3 3
       36 JUMPIFNOTEQKNIL                  R3 ; [+2]
       38 SETUPVAL                         R0 3
       39 GETUPVAL                         R3 4
       40 ADDK                             R3 R3 K6 [1]
       41 SETUPVAL                         R3 4
       42 GETUPVAL                         R3 4
       43 GETUPVAL                         R4 5
       44 JUMPIFNOTEQ                      R3 R4 ; [+5]
       46 GETIMPORT                        R3 K9 [coroutine.resume]
       48 GETUPVAL                         R4 6
       49 CALL                             R3 1 0
       50 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 NAMECALL                         R0 R0 K0 ["addMember"]
        6 CALL                             R0 4 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 2
        8 JUMPIFNOT                        R0 ; [+2]
        9 LOADNIL                          R2
       10 JUMP                             ; [+1]
       11 MOVE                             R2 R1
       12 GETUPVAL                         R3 3
       13 JUMPIFEQKNIL                     R2 ; [+37]
       15 LOADB                            R4 0
       16 FASTCALL1                        TYPEOF R2 ; [+3]
       17 MOVE                             R6 R2
       18 GETIMPORT                        R5 K3 [typeof]
       20 CALL                             R5 1 1
       21 JUMPIFNOTEQKS                    R5 K4 ["string"] ; [+14]
       23 GETIMPORT                        R5 K6 [string.find]
       25 MOVE                             R6 R2
       26 GETUPVAL                         R7 4
       27 GETTABLEKS                       R7 R7 K7 ["fstringChallengeRequiredMessage"]
       29 LOADN                            R8 1
       30 LOADB                            R9 1
       31 CALL                             R5 4 1
       32 JUMPIFNOTEQKNIL                  R5 ; [+2]
       34 LOADB                            R4 0 +1
       35 LOADB                            R4 1
       36 JUMPIFNOT                        R4 ; [+10]
       37 JUMPIFEQKNIL                     R3 ; [+4]
       39 GETUPVAL                         R4 5
       40 LOADB                            R5 1
       41 SETTABLE                         R5 R4 R3
       42 GETUPVAL                         R4 6
       43 JUMPIFNOTEQKNIL                  R4 ; [+7]
       45 SETUPVAL                         R2 6
       46 JUMP                             ; [+4]
       47 GETUPVAL                         R4 7
       48 JUMPIFNOTEQKNIL                  R4 ; [+2]
       50 SETUPVAL                         R2 7
       51 GETUPVAL                         R4 8
       52 ADDK                             R4 R4 K8 [1]
       53 SETUPVAL                         R4 8
       54 GETUPVAL                         R4 8
       55 GETUPVAL                         R5 9
       56 JUMPIFNOTEQ                      R4 R5 ; [+5]
       58 GETIMPORT                        R4 K11 [coroutine.resume]
       60 GETUPVAL                         R5 10
       61 CALL                             R4 1 0
       62 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 NAMECALL                         R0 R0 K0 ["removeMember"]
        6 CALL                             R0 4 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 2
        8 JUMPIFNOT                        R0 ; [+2]
        9 LOADNIL                          R2
       10 JUMP                             ; [+1]
       11 MOVE                             R2 R1
       12 JUMPIFEQKNIL                     R2 ; [+32]
       14 LOADB                            R3 0
       15 FASTCALL1                        TYPEOF R2 ; [+3]
       16 MOVE                             R5 R2
       17 GETIMPORT                        R4 K3 [typeof]
       19 CALL                             R4 1 1
       20 JUMPIFNOTEQKS                    R4 K4 ["string"] ; [+14]
       22 GETIMPORT                        R4 K6 [string.find]
       24 MOVE                             R5 R2
       25 GETUPVAL                         R6 4
       26 GETTABLEKS                       R6 R6 K7 ["fstringChallengeRequiredMessage"]
       28 LOADN                            R7 1
       29 LOADB                            R8 1
       30 CALL                             R4 4 1
       31 JUMPIFNOTEQKNIL                  R4 ; [+2]
       33 LOADB                            R3 0 +1
       34 LOADB                            R3 1
       35 JUMPIFNOT                        R3 ; [+5]
       36 GETUPVAL                         R3 5
       37 JUMPIFNOTEQKNIL                  R3 ; [+7]
       39 SETUPVAL                         R2 5
       40 JUMP                             ; [+4]
       41 GETUPVAL                         R3 6
       42 JUMPIFNOTEQKNIL                  R3 ; [+2]
       44 SETUPVAL                         R2 6
       45 GETUPVAL                         R3 7
       46 ADDK                             R3 R3 K8 [1]
       47 SETUPVAL                         R3 7
       48 GETUPVAL                         R3 7
       49 GETUPVAL                         R4 8
       50 JUMPIFNOTEQ                      R3 R4 ; [+5]
       52 GETIMPORT                        R3 K11 [coroutine.resume]
       54 GETUPVAL                         R4 9
       55 CALL                             R3 1 0
       56 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 NAMECALL                         R0 R0 K0 ["grantPermission"]
        6 CALL                             R0 4 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 2
        8 JUMPIFNOT                        R0 ; [+2]
        9 LOADNIL                          R2
       10 JUMP                             ; [+1]
       11 MOVE                             R2 R1
       12 JUMPIFEQKNIL                     R2 ; [+5]
       14 GETUPVAL                         R3 4
       15 JUMPIFNOTEQKNIL                  R3 ; [+2]
       17 SETUPVAL                         R2 4
       18 GETUPVAL                         R3 5
       19 ADDK                             R3 R3 K2 [1]
       20 SETUPVAL                         R3 5
       21 GETUPVAL                         R3 5
       22 GETUPVAL                         R4 6
       23 JUMPIFNOTEQ                      R3 R4 ; [+5]
       25 GETIMPORT                        R3 K5 [coroutine.resume]
       27 GETUPVAL                         R4 7
       28 CALL                             R3 1 0
       29 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["earlyTesterController"]
        3 GETIMPORT                        R1 K2 [game]
        5 GETTABLEKS                       R1 R1 K3 ["GameId"]
        7 GETUPVAL                         R2 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K4 ["Mode"]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K5 ["PendingRoleId"]
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R5 R5 K6 ["PendingRoleName"]
       17 GETUPVAL                         R6 3
       18 GETTABLEKS                       R6 R6 K7 ["CreatingNew"]
       20 JUMPIFNOTEQ                      R3 R6 ; [+22]
       22 JUMPIFNOTEQKNIL                  R4 ; [+20]
       24 MOVE                             R8 R2
       25 MOVE                             R9 R5
       26 NAMECALL                         R6 R0 K8 ["createRole"]
       28 CALL                             R6 3 1
       29 GETTABLEKS                       R4 R6 K9 ["id"]
       31 GETTABLEKS                       R5 R6 K10 ["name"]
       33 GETUPVAL                         R7 4
       34 GETUPVAL                         R9 5
       35 MOVE                             R10 R4
       36 MOVE                             R11 R5
       37 GETTABLEKS                       R12 R6 K11 ["isPrivate"]
       39 CALL                             R9 3 -1
       40 NAMECALL                         R7 R7 K12 ["dispatch"]
       42 CALL                             R7 -1 0
       43 GETUPVAL                         R7 2
       44 GETTABLEKS                       R7 R7 K13 ["ExistingRole"]
       46 JUMPIFEQKNIL                     R7 ; [+14]
       48 GETUPVAL                         R7 2
       49 GETTABLEKS                       R7 R7 K13 ["ExistingRole"]
       51 GETTABLEKS                       R7 R7 K9 ["id"]
       53 JUMPIFEQ                         R7 R4 ; [+7]
       55 GETUPVAL                         R6 2
       56 GETTABLEKS                       R6 R6 K13 ["ExistingRole"]
       58 GETTABLEKS                       R6 R6 K9 ["id"]
       60 JUMP                             ; [+1]
       61 LOADNIL                          R6
       62 JUMPIFEQKNIL                     R6 ; [+21]
       64 GETIMPORT                        R7 K15 [pcall]
       66 NEWCLOSURE                       R8 P0
       67 CAPTURE                          VAL R0
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R1
       71 CALL                             R7 1 2
       72 JUMPIF                           R7 ; [+11]
       73 GETUPVAL                         R9 4
       74 GETUPVAL                         R11 6
       75 LOADK                            R12 K16 ["Error.SavingEarlyTesters"]
       76 CALL                             R11 1 -1
       77 NAMECALL                         R9 R9 K12 ["dispatch"]
       79 CALL                             R9 -1 0
       80 GETIMPORT                        R9 K18 [error]
       82 MOVE                             R10 R8
       83 CALL                             R9 1 0
       84 NEWTABLE                         R7 0 0
       86 NEWTABLE                         R8 0 0
       88 GETUPVAL                         R9 2
       89 GETTABLEKS                       R9 R9 K19 ["PendingMembers"]
       91 LOADNIL                          R10
       92 LOADNIL                          R11
       93 FORGPREP                         R9
       94 GETUPVAL                         R14 3
       95 GETTABLEKS                       R14 R14 K7 ["CreatingNew"]
       97 JUMPIFEQ                         R3 R14 ; [+6]
       99 GETUPVAL                         R15 2
      100 GETTABLEKS                       R15 R15 K20 ["ExistingMemberIds"]
      102 GETTABLE                         R14 R15 R12
      103 JUMPIF                           R14 ; [+7]
      104 FASTCALL2                        TABLE_INSERT R7 R12 ; [+5]
      106 MOVE                             R15 R7
      107 MOVE                             R16 R12
      108 GETIMPORT                        R14 K23 [table.insert]
      110 CALL                             R14 2 0
      111 FORGLOOP                         R9 1 ; [-18]
      113 GETUPVAL                         R9 3
      114 GETTABLEKS                       R9 R9 K7 ["CreatingNew"]
      116 JUMPIFEQ                         R3 R9 ; [+22]
      118 GETUPVAL                         R9 2
      119 GETTABLEKS                       R9 R9 K20 ["ExistingMemberIds"]
      121 LOADNIL                          R10
      122 LOADNIL                          R11
      123 FORGPREP                         R9
      124 GETUPVAL                         R15 2
      125 GETTABLEKS                       R15 R15 K19 ["PendingMembers"]
      127 GETTABLE                         R14 R15 R12
      128 JUMPIFNOTEQKNIL                  R14 ; [+8]
      130 FASTCALL2                        TABLE_INSERT R8 R12 ; [+5]
      132 MOVE                             R15 R8
      133 MOVE                             R16 R12
      134 GETIMPORT                        R14 K23 [table.insert]
      136 CALL                             R14 2 0
      137 FORGLOOP                         R9 1 ; [-14]
      139 LENGTH                           R11 R7
      140 LENGTH                           R12 R8
      141 ADD                              R10 R11 R12
      142 GETUPVAL                         R12 3
      143 GETTABLEKS                       R12 R12 K24 ["EditingAssigned"]
      145 JUMPIFEQ                         R3 R12 ; [+3]
      147 LOADN                            R11 1
      148 JUMP                             ; [+1]
      149 LOADN                            R11 0
      150 ADD                              R9 R10 R11
      151 LOADNIL                          R10
      152 NEWTABLE                         R11 0 0
      154 LOADN                            R12 0
      155 JUMPIFNOTLT                      R12 R9 ; [+94]
      157 GETIMPORT                        R12 K27 [coroutine.running]
      159 CALL                             R12 0 1
      160 LOADN                            R13 0
      161 LOADNIL                          R14
      162 NEWCLOSURE                       R15 P1
      163 CAPTURE                          UPVAL U7
      164 CAPTURE                          VAL R11
      165 CAPTURE                          REF R10
      166 CAPTURE                          REF R14
      167 CAPTURE                          REF R13
      168 CAPTURE                          VAL R9
      169 CAPTURE                          VAL R12
      170 MOVE                             R16 R7
      171 LOADNIL                          R17
      172 LOADNIL                          R18
      173 FORGPREP                         R16
      174 GETIMPORT                        R21 K29 [coroutine.wrap]
      176 NEWCLOSURE                       R22 P2
      177 CAPTURE                          VAL R0
      178 CAPTURE                          VAL R2
      179 CAPTURE                          REF R4
      180 CAPTURE                          VAL R20
      181 CAPTURE                          UPVAL U7
      182 CAPTURE                          VAL R11
      183 CAPTURE                          REF R10
      184 CAPTURE                          REF R14
      185 CAPTURE                          REF R13
      186 CAPTURE                          VAL R9
      187 CAPTURE                          VAL R12
      188 CALL                             R21 1 1
      189 CALL                             R21 0 0
      190 FORGLOOP                         R16 2 ; [-17]
      192 MOVE                             R16 R8
      193 LOADNIL                          R17
      194 LOADNIL                          R18
      195 FORGPREP                         R16
      196 GETIMPORT                        R21 K29 [coroutine.wrap]
      198 NEWCLOSURE                       R22 P3
      199 CAPTURE                          VAL R0
      200 CAPTURE                          VAL R2
      201 CAPTURE                          REF R4
      202 CAPTURE                          VAL R20
      203 CAPTURE                          UPVAL U7
      204 CAPTURE                          REF R10
      205 CAPTURE                          REF R14
      206 CAPTURE                          REF R13
      207 CAPTURE                          VAL R9
      208 CAPTURE                          VAL R12
      209 CALL                             R21 1 1
      210 CALL                             R21 0 0
      211 FORGLOOP                         R16 2 ; [-16]
      213 GETUPVAL                         R16 3
      214 GETTABLEKS                       R16 R16 K24 ["EditingAssigned"]
      216 JUMPIFEQ                         R3 R16 ; [+14]
      218 GETIMPORT                        R16 K29 [coroutine.wrap]
      220 NEWCLOSURE                       R17 P4
      221 CAPTURE                          VAL R0
      222 CAPTURE                          VAL R2
      223 CAPTURE                          REF R4
      224 CAPTURE                          VAL R1
      225 CAPTURE                          REF R14
      226 CAPTURE                          REF R13
      227 CAPTURE                          VAL R9
      228 CAPTURE                          VAL R12
      229 CALL                             R16 1 1
      230 CALL                             R16 0 0
      231 JUMPIFNOTLT                      R13 R9 ; [+4]
      233 GETIMPORT                        R16 K31 [coroutine.yield]
      235 CALL                             R16 0 0
      236 JUMPIFEQKNIL                     R14 ; [+12]
      238 GETUPVAL                         R16 4
      239 GETUPVAL                         R18 6
      240 LOADK                            R19 K16 ["Error.SavingEarlyTesters"]
      241 CALL                             R18 1 -1
      242 NAMECALL                         R16 R16 K12 ["dispatch"]
      244 CALL                             R16 -1 0
      245 GETIMPORT                        R16 K18 [error]
      247 MOVE                             R17 R14
      248 CALL                             R16 1 0
      249 CLOSEUPVALS                      R13
      250 NEWTABLE                         R12 0 0
      252 GETUPVAL                         R13 2
      253 GETTABLEKS                       R13 R13 K19 ["PendingMembers"]
      255 LOADNIL                          R14
      256 LOADNIL                          R15
      257 FORGPREP                         R13
      258 GETTABLE                         R18 R11 R16
      259 JUMPIF                           R18 ; [+7]
      260 FASTCALL2                        TABLE_INSERT R12 R17 ; [+5]
      262 MOVE                             R19 R12
      263 MOVE                             R20 R17
      264 GETIMPORT                        R18 K23 [table.insert]
      266 CALL                             R18 2 0
      267 FORGLOOP                         R13 2 ; [-10]
      269 GETUPVAL                         R13 4
      270 GETUPVAL                         R15 8
      271 DUPTABLE                         R16 K33 [{"id", "name", "isPrivate", "color"}]
      272 SETTABLEKS                       R4 R16 K9 ["id"]
      274 SETTABLEKS                       R5 R16 K10 ["name"]
      276 GETUPVAL                         R17 2
      277 GETTABLEKS                       R17 R17 K34 ["PendingRoleIsPrivate"]
      279 SETTABLEKS                       R17 R16 K11 ["isPrivate"]
      281 GETUPVAL                         R17 2
      282 GETTABLEKS                       R17 R17 K35 ["PendingRoleColor"]
      284 SETTABLEKS                       R17 R16 K32 ["color"]
      286 MOVE                             R17 R12
      287 CALL                             R15 2 -1
      288 NAMECALL                         R13 R13 K12 ["dispatch"]
      290 CALL                             R13 -1 0
      291 JUMPIFEQKNIL                     R10 ; [+17]
      293 GETUPVAL                         R13 4
      294 GETUPVAL                         R15 6
      295 LOADK                            R16 K36 ["FailureMessage.RoleSensitivePermissions"]
      296 CALL                             R15 1 -1
      297 NAMECALL                         R13 R13 K12 ["dispatch"]
      299 CALL                             R13 -1 0
      300 GETUPVAL                         R13 4
      301 GETUPVAL                         R15 9
      302 GETUPVAL                         R16 10
      303 GETTABLEKS                       R16 R16 K37 ["SavedWithWarning"]
      305 CALL                             R15 1 -1
      306 NAMECALL                         R13 R13 K12 ["dispatch"]
      308 CALL                             R13 -1 0
      309 CLOSEUPVALS                      R4
      310 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["fflagGroupGameEarlyTesters"]
        3 JUMPIFNOT                        R4 ; [+1]
        4 JUMPIF                           R2 ; [+2]
        5 LOADNIL                          R4
        6 RETURN                           R4 1
        7 NAMECALL                         R4 R0 K1 ["getState"]
        9 CALL                             R4 1 1
       10 GETTABLEKS                       R4 R4 K2 ["EarlyTesters"]
       12 JUMPIFEQKNIL                     R4 ; [+8]
       14 GETTABLEKS                       R5 R4 K3 ["Mode"]
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R6 R6 K4 ["Unset"]
       19 JUMPIFNOTEQ                      R5 R6 ; [+3]
       21 LOADNIL                          R5
       22 RETURN                           R5 1
       23 GETTABLEKS                       R5 R4 K3 ["Mode"]
       25 GETUPVAL                         R6 1
       26 GETTABLEKS                       R6 R6 K5 ["CreatingNew"]
       28 JUMPIFNOTEQ                      R5 R6 ; [+10]
       30 GETIMPORT                        R5 K7 [next]
       32 GETTABLEKS                       R6 R4 K8 ["PendingMembers"]
       34 CALL                             R5 1 1
       35 JUMPIFNOTEQKNIL                  R5 ; [+3]
       37 LOADNIL                          R5
       38 RETURN                           R5 1
       39 NEWCLOSURE                       R5 P0
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R4
       43 CAPTURE                          UPVAL U1
       44 CAPTURE                          VAL R0
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          UPVAL U3
       47 CAPTURE                          UPVAL U0
       48 CAPTURE                          UPVAL U4
       49 CAPTURE                          UPVAL U5
       50 CAPTURE                          UPVAL U6
       51 RETURN                           R5 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Permissions"]
        3 GETTABLEKS                       R0 R0 K1 ["CurrentPermissions"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["Permissions"]
        8 GETTABLEKS                       R2 R2 K2 ["NewPermissions"]
       10 OR                               R1 R2 R0
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K3 ["PendingPlayTesters"]
       14 GETTABLEKS                       R3 R2 K4 ["CurrentPlayTesters"]
       16 GETTABLEKS                       R5 R2 K5 ["NewPlayTesters"]
       18 OR                               R4 R5 R3
       19 GETUPVAL                         R5 1
       20 GETUPVAL                         R6 2
       21 GETUPVAL                         R7 3
       22 GETUPVAL                         R8 4
       23 MOVE                             R9 R0
       24 MOVE                             R10 R1
       25 MOVE                             R11 R3
       26 MOVE                             R12 R4
       27 CALL                             R5 7 2
       28 GETUPVAL                         R7 5
       29 GETTABLEKS                       R7 R7 K6 ["reportSaveCollaboratorsPressed"]
       31 GETUPVAL                         R8 6
       32 MOVE                             R9 R5
       33 MOVE                             R10 R6
       34 CALL                             R7 3 0
       35 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Permissions"]
        3 GETTABLEKS                       R0 R0 K1 ["CurrentPermissions"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["Permissions"]
        8 GETTABLEKS                       R1 R1 K2 ["NewPermissions"]
       10 JUMPIFEQKNIL                     R1 ; [+15]
       12 GETUPVAL                         R2 1
       13 GETUPVAL                         R4 2
       14 MOVE                             R5 R0
       15 MOVE                             R6 R1
       16 NAMECALL                         R2 R2 K3 ["setPermissions"]
       18 CALL                             R2 4 2
       19 GETUPVAL                         R4 3
       20 GETTABLEKS                       R4 R4 K4 ["reportSaveCollaboratorsPressed"]
       22 GETUPVAL                         R5 4
       23 MOVE                             R6 R2
       24 MOVE                             R7 R3
       25 CALL                             R4 3 0
       26 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["GranularPermissions"]
        3 GETTABLEKS                       R0 R0 K1 ["UpdatedPermissionValues"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["GranularPermissions"]
        8 GETTABLEKS                       R1 R1 K2 ["PermissionsMap"]
       10 JUMPIF                           R1 ; [+2]
       11 NEWTABLE                         R1 0 0
       13 NEWTABLE                         R2 0 0
       15 MOVE                             R3 R0
       16 LOADNIL                          R4
       17 LOADNIL                          R5
       18 FORGPREP                         R3
       19 GETTABLE                         R8 R1 R6
       20 JUMPIFEQKNIL                     R8 ; [+6]
       22 GETUPVAL                         R10 1
       23 GETTABLEKS                       R10 R10 K3 ["ActionKey"]
       25 GETTABLE                         R9 R8 R10
       26 SETTABLE                         R9 R2 R6
       27 FORGLOOP                         R3 2 ; [-9]
       29 GETUPVAL                         R3 2
       30 GETUPVAL                         R5 3
       31 GETUPVAL                         R6 4
       32 MOVE                             R7 R0
       33 MOVE                             R8 R2
       34 NAMECALL                         R3 R3 K4 ["setGranularPermissionsViaGroupsAPI"]
       36 CALL                             R3 5 0
       37 RETURN                           R0 0

PROTO_14:
        0 NAMECALL                         R4 R0 K0 ["getState"]
        2 CALL                             R4 1 1
        3 GETIMPORT                        R5 K2 [game]
        5 GETTABLEKS                       R5 R5 K3 ["GameId"]
        7 GETTABLEKS                       R6 R1 K4 ["gamePermissionsController"]
        9 GETTABLEKS                       R7 R1 K5 ["granularPermissionsController"]
       11 GETTABLEKS                       R8 R1 K6 ["playTestersController"]
       13 GETUPVAL                         R9 0
       14 GETTABLEKS                       R9 R9 K7 ["fflagAddPlayTesterPermission"]
       16 JUMPIFNOT                        R9 ; [+14]
       17 JUMPIF                           R2 ; [+13]
       18 NEWTABLE                         R9 0 1
       20 NEWCLOSURE                       R10 P0
       21 CAPTURE                          VAL R4
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          VAL R5
       24 CAPTURE                          VAL R6
       25 CAPTURE                          VAL R8
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          VAL R2
       28 SETLIST                          R9 R10 1 [1]
       30 RETURN                           R9 1
       31 NEWTABLE                         R9 0 0
       33 NEWCLOSURE                       R12 P1
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R6
       36 CAPTURE                          VAL R5
       37 CAPTURE                          UPVAL U2
       38 CAPTURE                          VAL R2
       39 FASTCALL2                        TABLE_INSERT R9 R12 ; [+4]
       41 MOVE                             R11 R9
       42 GETIMPORT                        R10 K10 [table.insert]
       44 CALL                             R10 2 0
       45 JUMPIFNOT                        R2 ; [+12]
       46 NEWCLOSURE                       R12 P2
       47 CAPTURE                          VAL R4
       48 CAPTURE                          UPVAL U3
       49 CAPTURE                          VAL R7
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R3
       52 FASTCALL2                        TABLE_INSERT R9 R12 ; [+4]
       54 MOVE                             R11 R9
       55 GETIMPORT                        R10 K10 [table.insert]
       57 CALL                             R10 2 0
       58 GETUPVAL                         R10 4
       59 MOVE                             R11 R0
       60 MOVE                             R12 R1
       61 MOVE                             R13 R2
       62 MOVE                             R14 R3
       63 CALL                             R10 4 1
       64 JUMPIFEQKNIL                     R10 ; [+8]
       66 FASTCALL2                        TABLE_INSERT R9 R10 ; [+5]
       68 MOVE                             R12 R9
       69 MOVE                             R13 R10
       70 GETIMPORT                        R11 K10 [table.insert]
       72 CALL                             R11 2 0
       73 RETURN                           R9 1

PROTO_15:
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
       16 GETUPVAL                         R5 4
       17 GETTABLEKS                       R5 R5 K5 ["SaveFailed"]
       19 CALL                             R4 1 -1
       20 NAMECALL                         R2 R2 K6 ["dispatch"]
       22 CALL                             R2 -1 0
       23 GETUPVAL                         R3 5
       24 ADDK                             R2 R3 K7 [1]
       25 SETUPVAL                         R2 5
       26 GETUPVAL                         R2 5
       27 GETUPVAL                         R4 6
       28 LENGTH                           R3 R4
       29 JUMPIFNOTEQ                      R2 R3 ; [+25]
       31 GETUPVAL                         R2 1
       32 JUMPIF                           R2 ; [+22]
       33 GETUPVAL                         R2 2
       34 NAMECALL                         R2 R2 K8 ["getState"]
       36 CALL                             R2 1 1
       37 GETTABLEKS                       R2 R2 K9 ["SaveState"]
       39 GETTABLEKS                       R2 R2 K10 ["CurrentSaveState"]
       41 GETUPVAL                         R3 4
       42 GETTABLEKS                       R3 R3 K11 ["SavedWithWarning"]
       44 JUMPIFEQ                         R2 R3 ; [+10]
       46 GETUPVAL                         R2 2
       47 GETUPVAL                         R4 3
       48 GETUPVAL                         R5 4
       49 GETTABLEKS                       R5 R5 K12 ["Saved"]
       51 CALL                             R4 1 -1
       52 NAMECALL                         R2 R2 K6 ["dispatch"]
       54 CALL                             R2 -1 0
       55 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 GETUPVAL                         R5 1
        4 GETUPVAL                         R6 2
        5 CALL                             R2 4 1
        6 GETUPVAL                         R5 3
        7 GETUPVAL                         R6 4
        8 GETTABLEKS                       R6 R6 K0 ["Saving"]
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

PROTO_17:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Bin"]
       13 GETTABLEKS                       R2 R2 K6 ["defineLuaFlags"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["Actions"]
       22 GETTABLEKS                       R3 R3 K9 ["SetSaveState"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K7 ["Src"]
       29 GETTABLEKS                       R4 R4 K10 ["Util"]
       31 GETTABLEKS                       R4 R4 K11 ["SaveState"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R5 R0 K7 ["Src"]
       38 GETTABLEKS                       R5 R5 K10 ["Util"]
       40 GETTABLEKS                       R5 R5 K12 ["PermissionsConstants"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K4 [require]
       45 GETTABLEKS                       R6 R0 K7 ["Src"]
       47 GETTABLEKS                       R6 R6 K10 ["Util"]
       49 GETTABLEKS                       R6 R6 K13 ["Analytics"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K4 [require]
       54 GETTABLEKS                       R7 R0 K7 ["Src"]
       56 GETTABLEKS                       R7 R7 K10 ["Util"]
       58 GETTABLEKS                       R7 R7 K14 ["SaveAudiencePermissions"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K4 [require]
       63 GETTABLEKS                       R8 R0 K7 ["Src"]
       65 GETTABLEKS                       R8 R8 K8 ["Actions"]
       67 GETTABLEKS                       R8 R8 K15 ["SetEarlyTesterLoadedData"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K4 [require]
       72 GETTABLEKS                       R9 R0 K7 ["Src"]
       74 GETTABLEKS                       R9 R9 K8 ["Actions"]
       76 GETTABLEKS                       R9 R9 K16 ["SetEarlyTesterSaveError"]
       78 CALL                             R8 1 1
       79 GETIMPORT                        R9 K4 [require]
       81 GETTABLEKS                       R10 R0 K7 ["Src"]
       83 GETTABLEKS                       R10 R10 K8 ["Actions"]
       85 GETTABLEKS                       R10 R10 K17 ["SetEarlyTesterCreatedRole"]
       87 CALL                             R9 1 1
       88 GETIMPORT                        R10 K4 [require]
       90 GETTABLEKS                       R11 R0 K7 ["Src"]
       92 GETTABLEKS                       R11 R11 K10 ["Util"]
       94 GETTABLEKS                       R11 R11 K18 ["EarlyTesterMode"]
       96 CALL                             R10 1 1
       97 DUPCLOSURE                       R11 K19 [PROTO_0]
       98 CAPTURE                          VAL R1
       99 DUPCLOSURE                       R12 K20 [PROTO_10]
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R9
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R3
      107 DUPCLOSURE                       R13 K21 [PROTO_14]
      108 CAPTURE                          VAL R1
      109 CAPTURE                          VAL R6
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R12
      113 DUPCLOSURE                       R14 K22 [PROTO_17]
      114 CAPTURE                          VAL R13
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R3
      117 RETURN                           R14 1
